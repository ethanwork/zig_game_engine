const std = @import("std");

const Color = enum {
    Red,
    Green,
    Blue,
};

pub fn enum_examples() void {
    const color = Color.Red;
    std.debug.print("color = {}\n", .{color});
}