const std = @import("std");
const win32 = @import("win32").everything;

const Logger = struct {
    pub fn init(path: []const u8) void {
        std.debug.print("Initialized logger with path: {s}\n", .{path});
    }

    pub fn destroy() void {
        std.debug.print("Logger destroyed\n", .{});
    }
};

const GameApp = struct {
    options: GameOptions,
    exit_code: u32,

    pub fn init(self: *GameApp, hInstance: win32.HINSTANCE, cmd_line: []const u16) !void {
        self.options = try GameOptions.init(cmd_line);
        self.exit_code = 0;
    }

    pub fn getExitCode(self: *GameApp) u32 {
        return self.exit_code;
    }
};

const GameOptions = struct {
    m_ScreenSize: struct { x: i32, y: i32 },

    pub fn init(cmd_line: []const u16) !GameOptions {
        return GameOptions{
            .m_ScreenSize = .{ .x = 800, .y = 600 },
        };
    }
};

const GameCodeApp = struct {
    pub fn isD3D11DeviceAcceptable() bool {
        return true;
    }

    pub fn onD3D11CreateDevice() void {
        std.debug.print("D3D11 device created\n", .{});
    }
};

fn GameCode4(hInstance: win32.HINSTANCE, cmd_line: []const u16) !u32 {
    Logger.init("logging.xml");
    defer Logger.destroy();

    var game_app = GameApp{};
    try game_app.init(hInstance, cmd_line);

    DXUTSetCallbackD3D11DeviceAcceptable(&GameCodeApp.isD3D11DeviceAcceptable);
    DXUTSetCallbackD3D11DeviceCreated(&GameCodeApp.onD3D11CreateDevice);

    while (!shouldQuit()) {
        // Render frame
    }

    return game_app.getExitCode();
}

pub fn main() !void {
    const hInstance = win32.GetModuleHandleW(null);
    const cmd_line = std.mem.span(win32.GetCommandLineW());

    const exit_code = try GameCode4(hInstance, cmd_line);
    std.process.exit(exit_code);
}
