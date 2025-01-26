const std = @import("std");
const ze = @import("zig_examples/zig_examples.zig");
const se = @import("zig_examples/struct_examples.zig");
const ee = @import("zig_examples/enums_and_taggedunions.zig");

pub fn main() !void {
    try ze.zig_examples_main();
    try se.struct_examples_main();
    ee.enum_examples();
}
