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
    //try examples.examples_main();
    globals.init();
    defer globals.deinit();

    std.debug.print("data file name = {s}\n", .{globals.data_file.file_name});

    var device: ?*dx11.ID3D11Device = null;
    var context: ?*dx11.ID3D11DeviceContext = null;

    const create_flags = dx11.D3D11_CREATE_DEVICE_FLAG.D3D11_CREATE_DEVICE_DEBUG;
    const result = dx11.D3D11CreateDevice(
        null,
        .D3D_DRIVER_TYPE_HARDWARE,
        null,
        create_flags,
        null,
        0,
        dx11.D3D11_SDK_VERSION,
        &device,
        null,
        &context
    );

    if (result != .S_OK) {
        return error.DirectXInitFailed;
    }
    defer _ = device.?.Release();
    defer _ = context.?.Release();

    var done = false;
    while (!done) {
        // infinite loop
        done = true;
    }
    return;
}
