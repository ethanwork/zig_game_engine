const std = @import("std");
const examples = @import("zig_examples/examples.zig");
const globals = @import("globals.zig");
const dx11 = @import("directx11/directx11.zig");
const win32 = struct {
    usingnamespace @import("win32").foundation;
    usingnamespace @import("win32").system.system_services;
    usingnamespace @import("win32").ui.windows_and_messaging;
};

pub fn main() !void {
    globals.init();
    defer globals.deinit();

    std.debug.print("data file name = {s}\n", .{globals.data_file.file_name});

    // Change ID3D11Device to IDevice
    var device: ?*dx11.IDevice = null;
    var context: ?*dx11.IDeviceContext = null;

    const create_flags = @intFromEnum(dx11.CreateDeviceFlag.Debug);
    const result = dx11.D3D11CreateDevice(
        null, // Use default adapter
        .D3D_DRIVER_TYPE_HARDWARE,
        null, // No software driver
        create_flags,
        null, // Default feature level array 
        0,    // Default feature levels
        dx11.D3D11_SDK_VERSION,
        &device,
        null,  // Don't need the actual feature level
        &context
    );

    if (result != .S_OK) {
        return error.DirectXInitFailed;
    }
    defer _ = device.?.Release();
    defer _ = context.?.Release();

    // Setup render targets
    var swapchain_desc = dx11.SwapChainDesc{
        .BufferDesc = .{
            .Width = 800,
            .Height = 600,
            .RefreshRate = .{ .Numerator = 60, .Denominator = 1 },
            .Format = .R8G8B8A8_UNORM,
            .ScanlineOrdering = .UNSPECIFIED,
            .Scaling = .UNSPECIFIED,
        },
        .SampleDesc = .{ .Count = 1, .Quality = 0 },
        .BufferUsage = .RENDER_TARGET_OUTPUT,
        .BufferCount = 2,
        .OutputWindow = window,  // You'll need to create this window handle
        .Windowed = win32.TRUE,
        .SwapEffect = .DISCARD,
        .Flags = 0,
    };

    // Main rendering loop
    var running = true;
    while (running) {
        // Process Windows messages here
        
        // Clear render target
        // Draw frame
        // Present frame
        
        running = false; // Temporary early exit
    }
}
