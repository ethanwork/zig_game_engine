const std = @import("std");

const Point = struct {
    x: i32,
    y: i32,
};

// you can also specify default values
// for a struct
const PointWithDefault = struct {
    x: i32 = 0,
    y: i32 = 0,

    // there are methods for structs in Zig, but you can define
    // utility functions that operate on a struct, you can pass
    // the struct as a parameter to these functions.
    // you could then call it like my_point.move(1, 1)
    // but it is really just a function with a little bit of syntactic sugar
    pub fn move(self: *PointWithDefault, dx: i32, dy: i32) void {
        self.x += dx;
        self.y += dy;
    }
};

const Rectangle = struct {
    topLeft: Point, 
    bottomRight: Point,
};

const DynamicArray = struct {
    values: []i32,

    pub fn new(allocator: *const std.mem.Allocator, size: usize) !DynamicArray {
        return DynamicArray{
            .values = try allocator.alloc(i32, size),
        };
    }

    pub fn deinit(self: *DynamicArray, allocator: *const std.mem.Allocator) void {
        allocator.free(self.values);
    }
};

pub fn struct_examples_main() !void {
    const allocator = std.heap.page_allocator;
    var arr = try DynamicArray.new(&allocator, 10);
    defer arr.deinit(&allocator);

    @memcpy(arr.values, &[_]i32{1, 2, 3, 4, 5, 6, 7, 8, 9, 10});
    for (arr.values, 0..) |value, index| {
        std.debug.print("dyn array struct[{}] = {}\n", .{value, index});
    }

    var defPoint = PointWithDefault{ .x = 1, .y = 2 };
    defPoint.move(3, 4);
}