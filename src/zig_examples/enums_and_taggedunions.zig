const std = @import("std");

const Color = enum {
    Red,
    Green,
    Blue,
};

// assign custom integer values to an enum
const HttpStatusCodes = enum(u16) {
    OK = 200,
    NotFound = 404,
    InternalServerError = 500,
};

const Shape = union(enum) {
    Circle: f64,
    Rectangle: struct {
        width: f64,
        height: f64,
    },
};

pub fn enum_examples() void {
    const color = Color.Blue;
    std.debug.print("color = {}\n", .{color});
    std.debug.print("color int value = {}\n", .{@intFromEnum(color)});

    const circle = Shape{ .Circle = 3.0 };
    const rectangle = Shape{ .Rectangle = .{ .width = 2.0, .height = 3.0 } };
    switch (circle) {
        .Circle => |radius| {
            std.debug.print("circle radius = {}\n", .{radius});
        },
        .Rectangle => |rect| {
            std.debug.print("rectangle width = {}, height = {}\n", .{rect.width, rect.height});
        },
    }
    switch (rectangle) {
        .Circle => |radius| {
            std.debug.print("circle radius = {}\n", .{radius});
        },
        .Rectangle => |rect| {
            std.debug.print("rectangle width = {}, height = {}\n", .{rect.width, rect.height});
        },
    }
}