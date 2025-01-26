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

const Result = union(enum) {
    Success: i32,
    // the []const u8 type is a slice of bytes, which is a string in Zig
    Error: []const u8,
};

fn divideWithResult(a: i32, b: i32) Result {
    if (b == 0) {
        return Result{ .Error = "division by zero" };
    }
    return Result{ .Success = @divTrunc(a, b) };
}

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
            std.debug.print("rectangle width = {}, height = {}\n", .{ rect.width, rect.height });
        },
    }
    switch (rectangle) {
        .Circle => |radius| {
            std.debug.print("circle radius = {}\n", .{radius});
        },
        .Rectangle => |rect| {
            std.debug.print("rectangle width = {}, height = {}\n", .{ rect.width, rect.height });
        },
    }

    const result1 = divideWithResult(10, 2);
    const result2 = divideWithResult(10, 0);
    switch (result1) {
        .Success => |value| {
            std.debug.print("result1 = {d}\n", .{value});
        },
        .Error => |err| {
            std.debug.print("result1 error = {s}\n", .{err});
        },
    }
    switch (result2) {
        .Success => |value| {
            std.debug.print("result2 = {d}\n", .{value});
        },
        .Error => |err| {
            std.debug.print("result2 error = {s}\n", .{err});
        },
    }
}
