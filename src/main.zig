const std = @import("std");

// The original code had this snippet below for making a wide UTF-16 string, but
// the compiler didn't recognize std.mem.wcsZ, so googling it I saw this example
// of std.unicode.utf8ToUtf16LeStringLiteral, and it works, so I replaced it with this
// with a shorthand alias of W being used in their code example which I also copied.
//     Convert a Zig string to wide UTF-16
//     const text = try std.mem.wcsZ("Hello from Zig!");
//     const caption = try std.mem.wcsZ("Zig MessageBox");
const W = std.unicode.utf8ToUtf16LeStringLiteral;

// notes:
// hWnd change: originally this code was using ?usize for hWnd, but it gave the error saying that a parameter of type ?usize is
// not allowed in a function with calling conventione "Stdcall" (later changed to ".C" call, but this is also true for ".C" calls.
// and this occurs because ?usize is not a pointer type, and Zig only allows pointer-like optionals in extern function declarations.
// gpt originally suggested making it ?*anyopaque, which worked, but I thought if it is just that usize needs to be a pointer type
// to be optional, switch it to ?*usize, and this worked. It sounds like a nullable window handle (HWND in windows api terms) is needed
// hence we needed a nullable data type here, and for external calls they don't work with nullable regular data types, just nullable
// pointer types which it sounds like can be used to externally work with C libraries, but C libraries don't understand the concept
// of a Zig 'optional' regular data type I guess, but a optional pointer can just be set to null is my guess as to why this works.
// callConv(.C) change: the code also originally had "callConv(.Stdcall)", but it gave this error when using it
//    error: callconv 'Stdcall' is only available on x86, not x86_64
// Switching it to ".C" fixed this error, because Stdcall is a 32-bit x86 calling convention, and modern windows apps running on
// x86_64 use the "System V" or "Windows Fastcall" convention.
extern "user32" fn MessageBoxW(hWnd: ?*usize, lpText: [*:0]const u16, lpCaption: [*:0]const u16, uType: u32) callconv(.C) c_int;

// Minimal subset of D3D11 definitions you need:
pub const D3D_FEATURE_LEVEL_11_0 = 0xb000;
pub const D3D_DRIVER_TYPE_HARDWARE = 1;
pub const D3D11_SDK_VERSION = 7;

// notes:
// switched c_void to 'anyopaque' as it sounds like zig doesn't have a c_void type
// and to use 'anyopaque' instead.
extern "d3d11" fn D3D11CreateDevice(
    pAdapter: ?*anyopaque,
    DriverType: c_int,
    Software: ?*anyopaque,
    Flags: u32,
    pFeatureLevels: ?*u32,
    FeatureLevels: u32,
    SDKVersion: u32,
    ppDevice: ?*?*anyopaque,
    pFeatureLevel: ?*u32,
    ppImmediateContext: ?*?*anyopaque,
) callconv(.C) c_int;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Attempting to create a D3D11 device...\n", .{});

    var device: ?*anyopaque = null;
    var context: ?*anyopaque = null;
    var feature_level: u32 = 0;

    const result = D3D11CreateDevice(
        null,
        D3D_DRIVER_TYPE_HARDWARE,
        null,
        0,
        null,
        0,
        D3D11_SDK_VERSION,
        &device,
        &feature_level,
        &context,
    );

    if (result != 0) {
        // Typically you'd handle specific errors, but let's just print
        try stdout.print("Failed to create D3D11 device. HRESULT = {any}\n", .{result});
    } else {
        try stdout.print("Success! Created D3D11 device at {any}\n", .{device});
    }
}
