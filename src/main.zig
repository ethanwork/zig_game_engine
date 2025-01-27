// const std = @import("std");
// const examples = @import("zig_examples/examples.zig");
// const globals = @import("globals.zig");
// const dx11 = @import("directx11/directx11.zig");
// const win32 = struct {
//     usingnamespace @import("win32").foundation;
//     usingnamespace @import("win32").system.system_services;
//     usingnamespace @import("win32").ui.windows_and_messaging;
// };

// pub fn main() !void {
//     globals.init();
//     defer globals.deinit();

//     std.debug.print("data file name = {s}\n", .{globals.data_file.file_name});

//     // Change ID3D11Device to IDevice
//     var device: ?*dx11.IDevice = null;
//     var context: ?*dx11.IDeviceContext = null;

//     const create_flags = @intFromEnum(dx11.CreateDeviceFlag.Debug);
//     const result = dx11.D3D11CreateDevice(
//         null, // Use default adapter
//         .D3D_DRIVER_TYPE_HARDWARE,
//         null, // No software driver
//         create_flags,
//         null, // Default feature level array
//         0,    // Default feature levels
//         dx11.D3D11_SDK_VERSION,
//         &device,
//         null,  // Don't need the actual feature level
//         &context
//     );

//     if (result != .S_OK) {
//         return error.DirectXInitFailed;
//     }
//     defer _ = device.?.Release();
//     defer _ = context.?.Release();

//     // Setup render targets
//     var swapchain_desc = dx11.SwapChainDesc{
//         .BufferDesc = .{
//             .Width = 800,
//             .Height = 600,
//             .RefreshRate = .{ .Numerator = 60, .Denominator = 1 },
//             .Format = .R8G8B8A8_UNORM,
//             .ScanlineOrdering = .UNSPECIFIED,
//             .Scaling = .UNSPECIFIED,
//         },
//         .SampleDesc = .{ .Count = 1, .Quality = 0 },
//         .BufferUsage = .RENDER_TARGET_OUTPUT,
//         .BufferCount = 2,
//         .OutputWindow = window,  // You'll need to create this window handle
//         .Windowed = win32.TRUE,
//         .SwapEffect = .DISCARD,
//         .Flags = 0,
//     };

//     // Main rendering loop
//     var running = true;
//     while (running) {
//         // Process Windows messages here

//         // Clear render target
//         // Draw frame
//         // Present frame

//         running = false; // Temporary early exit
//     }
// }

const std = @import("std");
const win32 = @import("win32").everything;
const allocator = std.mem.Allocator;

const Logger = struct {
    pub fn init(path: []const u8) void {
        // Implement XML logging
        std.debug.print("logger path = {s}\n", .{path});
    }

    pub fn destroy() void {
        // Cleanup logging
    }
};

const GameApp = struct {
    allocator: Allocator,
    //options: GameOptions,
    exit_code: u32,

    pub fn init(hInstance: win32.HINSTANCE, cmdLine: []const u16) !*GameApp {
        var self = try allocator.create(GameApp);
        self.* = .{
            .allocator = allocator,
            .options = try GameOptions.init(cmdLine),
            .exit_code = 0,
        };
        return self;
    }

    pub fn deinit(self: *GameApp) void {
        self.allocator.destroy(self);
    }
};

var g_pApp: *GameApp = undefined;
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn main() !void {
    _ = win32.CoInitializeEx(null, win32.COINIT_APARTMENTTHREADED);
    defer win32.CoUninitialize();

    const allocator = gpa.allocator();

    // Memory leak detection
    defer {
        const leaks = gpa.deinit();
        if (leaks) std.log.err("Memory leaks detected!", .{});
    }

    Logger.init("logging.xml");
    defer Logger.destroy();

    g_pApp = try GameApp.init(win32.GetModuleHandleW(null), try std.process.getCmdLineArgs());
    defer g_pApp.deinit();

    try initWindow();
    mainLoop();
}

fn initWindow() !void {
    const wc = win32.WNDCLASSEXW{
        .cbSize = @sizeOf(win32.WNDCLASSEXW),
        .style = win32.CS_HREDRAW | win32.CS_VREDRAW,
        .lpfnWndProc = windowProc,
        .hInstance = win32.GetModuleHandleW(null),
        .hCursor = win32.LoadCursorW(null, win32.IDC_ARROW),
        .lpszClassName = "GameWindowClass",
    };

    _ = win32.RegisterClassExW(&wc);

    const hwnd = win32.CreateWindowExW(0, "GameWindowClass", "Game Window", win32.WS_OVERLAPPEDWINDOW, win32.CW_USEDEFAULT, win32.CW_USEDEFAULT, 800, 600, null, null, win32.GetModuleHandleW(null), null);

    _ = win32.ShowWindow(hwnd, win32.SW_SHOW);
}

fn windowProc(hwnd: win32.HWND, msg: u32, wParam: win32.WPARAM, lParam: win32.LPARAM) callconv(.Stdcall) win32.LRESULT {
    switch (msg) {
        win32.WM_DESTROY => {
            win32.PostQuitMessage(0);
            return 0;
        },
        else => return win32.DefWindowProcW(hwnd, msg, wParam, lParam),
    }
}

fn mainLoop() void {
    var msg: win32.MSG = undefined;
    while (win32.GetMessageW(&msg, null, 0, 0) > 0) {
        _ = win32.TranslateMessage(&msg);
        _ = win32.DispatchMessageW(&msg);

        // Add render code here
    }
}
