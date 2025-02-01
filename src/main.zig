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

pub const HRESULT = i32;
pub const S_OK: HRESULT = 0;
pub const E_FAIL: HRESULT = @bitCast(@as(i32, 0x80004005));
pub const E_INVALIDARG: HRESULT = @bitCast(@as(i32, 0x80070057));
pub const E_OUTOFMEMORY: HRESULT = @bitCast(@as(i32, 0x8007000E));

pub fn SUCCEEDED(hr: HRESULT) bool {
    return hr >= 0;
}

pub fn FAILED(hr: HRESULT) bool {
    return hr < 0;
}

pub const GUID = extern struct {
    Data1: u32,
    Data2: u16,
    Data3: u16,
    Data4: [8]u8,

    pub fn parse(guid_string: []const u8) GUID {
        // Example GUID string format: "{7B7166EC-21C7-44AE-B21A-C9AE321AE369}"
        var result: GUID = undefined;

        // Parse first 8 chars after '{' as Data1
        result.Data1 = std.fmt.parseInt(u32, guid_string[1..9], 16) catch unreachable;
        // Parse next 4 chars after '-' as Data2
        result.Data2 = std.fmt.parseInt(u16, guid_string[10..14], 16) catch unreachable;
        // Parse next 4 chars after '-' as Data3
        result.Data3 = std.fmt.parseInt(u16, guid_string[15..19], 16) catch unreachable;

        // Parse remaining bytes pair by pair into Data4
        var i: usize = 0;
        while (i < 2) : (i += 1) {
            result.Data4[i] = std.fmt.parseInt(u8, guid_string[20 + i * 2 .. 22 + i * 2], 16) catch unreachable;
        }
        while (i < 8) : (i += 1) {
            result.Data4[i] = std.fmt.parseInt(u8, guid_string[21 + i * 2 .. 23 + i * 2], 16) catch unreachable;
        }

        return result;
    }
};

extern "dxgi" fn CreateDXGIFactory1(
    riid: *const GUID,
    ppFactory: *?*anyopaque,
) callconv(.C) HRESULT;

// Add these interface function declarations
extern "dxgi" fn CreateSwapChain(
    This: *anyopaque,
    pDevice: *anyopaque,
    pDesc: *const DXGI_SWAP_CHAIN_DESC,
    ppSwapChain: *?*anyopaque,
) callconv(.C) HRESULT;

pub const HWND = *anyopaque;
pub const BOOL = i32;
pub const TRUE = 1;
pub const FALSE = 0;

pub const DXGI_FORMAT = u32;
pub const DXGI_FORMAT_R8G8B8A8_UNORM: DXGI_FORMAT = 28;

pub const DXGI_MODE_DESC = extern struct {
    Width: u32,
    Height: u32,
    RefreshRate: DXGI_RATIONAL,
    Format: DXGI_FORMAT,
    ScanlineOrdering: u32,
    Scaling: u32,
};

pub const DXGI_RATIONAL = extern struct {
    Numerator: u32,
    Denominator: u32,
};

pub const DXGI_SAMPLE_DESC = extern struct {
    Count: u32,
    Quality: u32,
};

const DXGI_SWAP_CHAIN_DESC = extern struct {
    BufferDesc: DXGI_MODE_DESC,
    SampleDesc: DXGI_SAMPLE_DESC,
    BufferUsage: u32,
    BufferCount: u32,
    OutputWindow: HWND,
    Windowed: BOOL,
    SwapEffect: u32,
    Flags: u32,
};

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

extern "user32" fn CreateWindowExW(
    dwExStyle: u32,
    lpClassName: [*:0]const u16,
    lpWindowName: [*:0]const u16,
    dwStyle: u32,
    x: c_int,
    y: c_int,
    nWidth: c_int,
    nHeight: c_int,
    hWndParent: ?HWND, // Changed from ?usize to ?HWND
    hMenu: ?*anyopaque, // Changed from ?usize to ?*anyopaque
    hInstance: ?*anyopaque, // Changed from ?usize to ?*anyopaque
    lpParam: ?*anyopaque,
) callconv(.C) ?HWND; // Return type changed to ?HWND

pub fn initLogger(config_file: []const u8) !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Initializing logger with config: {s}\n", .{config_file});
}

pub fn destroyLogger() void {
    // flug logs, close files, etc
}

pub const GameOptions = struct {
    screen_size_x: u32 = 1280,
    screen_size_y: u32 = 720,

    pub fn initGameOptions(options_file: []const u8) !GameOptions {
        const stdout = std.io.getStdOut().writer();
        try stdout.print("Loading game options from {s}\n", .{options_file});
        return GameOptions{
            .screen_size_x = 1920,
            .screen_size_y = 1080,
        };
    }

    pub fn destroy(self: *const GameOptions) void {
        std.debug.print("Game Options with screen size {}x{} destroyed\n", .{ self.screen_size_x, self.screen_size_y });
        // free memory, close files, etc
    }
};

const DXGI_USAGE_RENDER_TARGET_OUTPUT = 0x20;
const DXGI_SWAP_EFFECT_FLIP_DISCARD = 4;
const DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 2;

pub fn main() !void {
    try initLogger("logger_config.json");
    defer destroyLogger();

    const game_options = try GameOptions.initGameOptions("game_options.json");
    defer game_options.destroy();

    const stdout = std.io.getStdOut().writer();
    try stdout.print("Attempting to create a D3D11 device...\n", .{});

    var device: ?*anyopaque = null;
    var context: ?*anyopaque = null;
    var feature_level: u32 = 0;

    var factory: ?*anyopaque = null;
    const factory_guid = GUID.parse("{7B7166EC-21C7-44AE-B21A-C9AE321AE369}");
    _ = CreateDXGIFactory1(&factory_guid, &factory);

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

    const window_handle = CreateWindowExW(
        0, // dwExStyle
        W("MyWindowClass"), // lpClassName
        W("My Game Window"), // lpWindowName
        0x00CF0000, // WS_OVERLAPPEDWINDOW
        100, // X
        100, // Y
        @intCast(game_options.screen_size_x), // nWidth
        @intCast(game_options.screen_size_y), // nHeight
        null, // hWndParent
        null, // hMenu
        null, // hInstance
        null, // lpParam
    ) orelse {
        try stdout.print("Failed to create window\n", .{});
        return error.WindowCreationFailed;
    };

    var swap_chain_desc = DXGI_SWAP_CHAIN_DESC{
        .BufferDesc = .{
            .Width = game_options.screen_size_x,
            .Height = game_options.screen_size_y,
            .RefreshRate = .{ .Numerator = 60, .Denominator = 1 },
            .Format = DXGI_FORMAT_R8G8B8A8_UNORM,
            .ScanlineOrdering = 0,
            .Scaling = 0,
        },
        .SampleDesc = .{ .Count = 1, .Quality = 0 },
        .BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT,
        .BufferCount = 2,
        .OutputWindow = window_handle, // You'll need a window handle
        .Windowed = TRUE,
        .SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD,
        .Flags = DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH,
    };

    // Create Swap Chain immediately after device
    var swap_chain: ?*anyopaque = null;
    const swap_chain_result = CreateSwapChain(
        factory.?,
        device.?,
        &swap_chain_desc,
        &swap_chain,
    );
    if (FAILED(swap_chain_result)) {
        try stdout.print("Failed to create swap chain. HRESULT = {any}\n", .{swap_chain_result});
        return error.SwapChainCreationFailed;
    }

    if (result != 0) {
        // Typically you'd handle specific errors, but let's just print
        try stdout.print("Failed to create D3D11 device. HRESULT = {any}\n", .{result});
    } else {
        try stdout.print("Success! Created D3D11 device at {any}\n", .{device});
    }
}
