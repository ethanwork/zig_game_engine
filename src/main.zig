const std = @import("std");
const examples = @import("zig_examples/examples.zig");
const globals = @import("globals.zig");

pub fn main() !void {
    //try examples.examples_main();
    globals.init();
    defer globals.deinit();

    std.debug.print("data file name = {s}\n", .{globals.data_file.file_name});

    var done = false;
    while (!done) {
        // infinite loop
        done = true;
    }
    return;
}
