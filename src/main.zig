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
    try slicesExamples(&allocator);
    constExample();
    errorExample1();
    errorExample2();
    errorExample3();
    errorExample4() catch |err| {
        std.debug.print("errorExample4() error occurred: {}\n", .{err});
    };
    errorExample5() catch |err| {
        switch (err) {
            customErrors.MyCustomErrorMessage2 => {
                std.debug.print("errorExample5() specifically caught MyCustomErrorMessage2: {}\n", .{err});
            },
            else => {
                std.debug.print("errorExample5() error occurred: {}\n", .{err});
            },
        }
    };
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

// in this example, instead of passing Allocator as a struct, where it will
// be copied (although Allocator it sounds like is mostly a struct just filled
// with function pointers, so them being copied doesn't really change much), I
// instead passed it by pointer, so that it is not copied, using an example
// of passing it this way. Also of note, since in the main function where
// we create the allocator, we declare the allocator as a const, which makes
// sense because we aren't re-assigning the allocator's fields or anything.
// but since the allocator in main is declared as const, we need to pass it
// as a const pointer also.
fn slicesExamples(allocator: *const Allocator) !void {
    // array with slices
    var array = [_]i32{ 1, 2, 3, 4, 5 };
    // it looks like this line if I don't specify the type, it makes it
    // a pointer instead of an array slice?
    const full_slice: []i32 = &array;
    const partial_slice: []i32 = array[1..4];

    for (full_slice, 0..) |element, index| {
        std.debug.print("full_slice element[{d}] = {d}\n", .{ index, element });
    }
    for (partial_slice, 0..) |element, index| {
        std.debug.print("partial_slice element[{d}] = {d}\n", .{ index, element });
    }

    // heap allocated array with slice
    const heap_array = try allocator.alloc(i32, 5);
    defer allocator.free(heap_array);

    for (heap_array, 0..) |*value, index| {
        value.* = @intCast(index + 1);
    }

    const middle_items = heap_array[1..4];
    // you could do either "value" here to have the iterator give you the
    // deferenced value of that index, or you could have it do "*value" to
    // give you that index element's address, and then you can either assign
    // a value to it, or deference it to get a value I believe
    for (middle_items, 0..) |*value, index| {
        std.debug.print("middle_items element[{d}] = {d}\n", .{ index, value.* });
    }
}

// we almost always declare structs using 'const' instead of 'var' because
// otherwise you could re-assign what type of struct is assigned to Point, such
// as you could re-assign Point later in your code to have a 'z' field also,
// which would break any code that uses Point, so declaring it as const makes sense
const Point = struct {
    x: i32,
    y: i32, // note, if you leave off a trailing comma on the last field,
    // zig will format all fields on one line, but if you put a trailing comma
    // then it will format each field on its own line
};

fn constExample() void {
    const p1 = Point{ .x = 1, .y = 2 };
    const p1_ptr: *const Point = &p1;
    std.debug.print("const p1_ptr.x = {d}\n", .{p1_ptr.x});
    // uncommenting this line will cause a compile error because p1 is const
    //p1.x = 3;
    // uncommenting this line will also cause a compile error
    //p1_ptr.x = 3;
    std.debug.print("const p1.x = {d}\n", .{p1.x});

    var p2 = Point{ .x = 3, .y = 4 };
    p2.x = 5;
    std.debug.print("var p2.x = {d}\n", .{p2.x});

    var p3 = Point{ .x = 6, .y = 7 };
    // doing p3_ptr.x = 8 is allowed, because the type of pointer we are
    // creating is a regular pointer, which is allowed because p3 itself
    // is not const, so we don't have to create a const pointer. So declaring
    // a variable as const that has a *Point type, means we simply can't change
    // what address the pointer points to, but we can change the value of the
    // the object since it is a regular pointer
    const p3_ptr: *Point = &p3;
    p3_ptr.x = 8;
    const p3_ptr2_const: *const Point = &p3;
    // this line however is not allowed, because in addition to declaring
    // the variable as const, we also specifically say we want this pointer
    // type to be a *const Point pointer type, saying we don't want this pointer
    // type to be able to change the fields of the object it points to.
    // so it sounds like if you declare a struct as const, then you can't change
    // what is assigned to it, or the fields. If you declare a pointer to a struct
    // as const, you just can't change the address of that pointer, and if you
    // declare the type of the pointer itself to be a const pointer, then you
    // can't change the address of the pointer or the fields of the object it points to
    //p3_ptr2_const.x = 9;
    std.debug.print("p3_ptr2_const.x = {d}\n", .{p3_ptr2_const.x});
    std.debug.print("p3.x = {d}\n", .{p3.x});
}

// !void isn't needed because we handle the error case of the 'divide' function
fn errorExample1() void {
    const x = divide(42, 0) catch -1;
    std.debug.print("x with divide by zero but 'catch -1' = {d}\n", .{x});
}

fn errorExample2() void {
    // when we do the 'return' here in the catch block, it means it just returns
    // from the function, as if we called 'return' normally in the function, and
    // since this function is a void it is okay
    const result = divide(42, 0) catch |err| {
        std.debug.print("error occurred: {}\n", .{err});
        return;
    };
    std.debug.print("result when 'divide' function errors = {d}\n", .{result});
}

fn errorExample3() void {
    // if we want to catch the error and then have it return a specialized value
    // we can label the catch block, and then break on that block label to
    // return a value.
    const result = divide(42, 0) catch |err| blk: {
        std.debug.print("error occurred: {}\n", .{err});
        break :blk -5;
    };
    std.debug.print("result when 'divide' function errors = {d}\n", .{result});
}

fn errorExample4() !void {
    const result = divide(42, 0) catch {
        // you can also define custom error messages any time you want
        return error.MyCustomErrorMessage;
    };
    std.debug.print("this line will not be hit because an error occurred {}\n", .{result});
}

// you can define custom strongly typed errors creating an 'error' type like this
// that you can then in your catches specifically try to catch 'customErrors.MyCustomErrorMessage2'
// for example.
const customErrors = error{ MyCustomErrorMessage2, MyCustomErrorMessage3 };

fn errorExample5() !void {
    const result = divide(42, 0) catch {
        return customErrors.MyCustomErrorMessage2;
    };
    std.debug.print("this line will not be hit because an error occurred {}\n", .{result});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
