const std = @import("std");
const Allocator = std.mem.Allocator;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, world!\n", .{});
    std.debug.print("Debug test\n", .{});

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer _ = gpa.deinit();

    ifElseExpressionBlockTest();
    try deferredExample();
    controlFlowTest();
    try pointerExample(allocator);
}

fn divide(a: i32, b: i32) !i32 {
    if (b == 0) {
        return error.DivisionByZero;
    }
    return @divTrunc(a, b);
}

fn ifElseExpressionBlockTest() void {
    const x: i32 = 42;
    const y: i32 = if (x == 42) blk: {
        const z: i32 = 43;
        break :blk z * 2;
    } else blk2: {
        const w: i32 = 44;
        w + 1; // semicolon needed here
        break :blk2 w + 1;
    };
    std.debug.print("y = {d}\n", .{y});
}

fn deferredExample() !void {
    std.debug.print("divide results {d}\n", .{try divide(42, 3)});
    defer std.debug.print("this should be deferred after 'before deferred'\n", .{});

    // this string is split across multiple lines, NOTE: if you put the ++
    // at the start of the second line, then zig fmt will automatically put
    // both lines on one line, but if you put the ++ at the end of the first line
    // then it lets the second line be on its own line

    defer std.debug.print("deferred happens like a stack, this deferred was put" ++
        " onto the deferred stack second so it happens first since it is on top\n", .{});
    std.debug.print("before deferred\n", .{});
}

// todo: check why commenting the else out doesn't cause an exhaustive compile
// check error
fn controlFlowTest() void {
    var counter: i32 = 0;
    while (counter < 5) : (counter += 1) {
        std.debug.print("counter = {d}\n", .{counter});
    }

    const numbers = [_]i32{ 1, 2, 3, 4, 5 };
    for (numbers) |number| {
        std.debug.print("number = {d}\n", .{number});
    }

    const number = 3;
    switch (number) {
        1 => {
            std.debug.print("number is 1\n", .{});
        },
        2 => {
            std.debug.print("number is 2\n", .{});
        },
        else => {
            std.debug.print("number is not 1 or 2\n", .{});
        },
    }
}

fn pointerExample(allocator: Allocator) !void {
    // create a nullable pointer
    var opt_ptr: ?*i32 = null;
    // check with an if else expression if the opt_ptr has a value,
    // if so, then dereference it. else use 0
    std.debug.print("x = {d}\n", .{if (opt_ptr) |ptr| ptr.* else 0});

    // try out using the optional value check for a nullable value
    // and if it has a value, it is put into ptr as a non-null pointer.
    // it is null here
    if (opt_ptr) |ptr| {
        std.debug.print("opt_ptr = {d}\n", .{ptr.*});
    }

    // now create a heap allocated i32 and assign it to the pointer
    opt_ptr = try allocator.create(i32);
    // I tried to do the defer allocator.destroy, but for an optional pointer
    // you have to check first if the pointer has a value before you can free it
    defer if (opt_ptr) |ptr| allocator.destroy(ptr);
    // same with assigning a value to an optional pointer, you have to verify
    // it is pointing to an integer object before you can assign a value to it
    // this is the safe way of verifying the opt_ptr points to an object first
    if (opt_ptr) |ptr| {
        ptr.* = 10;
    }
    // this way is allowed and is shorter, but is unsafe, if opt_ptr is null
    // then this code will trigger a crash
    opt_ptr.?.* = 11;

    // remember, you deference the pointer's value by doing ptr.*, not *ptr
    if (opt_ptr) |ptr| {
        std.debug.print("opt_ptr = {d}\n", .{ptr.*});
    }

    var number: i32 = 42;
    // the pointer is const because while we use the pointer to change the
    // value of number later, we don't change which address the pointer points to
    const pointer: *i32 = &number;
    // change value of number to 43 using the pointer
    pointer.* = 43;
    std.debug.print("pointer value = {d}\n", .{pointer.*});

    // create an array using the allocator
    const array = try allocator.alloc(i32, 10);
    defer allocator.free(array);
    array[0] = 50;
    // set the value of the third element of the array to 52
    array[2] = 52;
    // iterate over the array and print the values, and show the index
    // you'll notice the array indices that aren't assigned values print this
    // -1431655766 (which is 0xAAAAAAAA in hex), this is used in debug builds
    // as it helps you identify uninitialized memory, and is better for this
    // purpose than using 0, as often the value 0 is a valid value in many cases
    for (array, 0..) |element, index| {
        std.debug.print("index = {d}, element = {d}\n", .{ index, element });
    }
    const minInt = std.math.minInt(i32);
    std.debug.print("min int value = {d}\n", .{minInt});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
