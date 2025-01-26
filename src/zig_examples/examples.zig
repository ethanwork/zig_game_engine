const ze = @import("zig_examples.zig");
const se = @import("struct_examples.zig");
const ee = @import("enums_and_taggedunions.zig");

pub fn examples_main() !void {
    try ze.zig_examples_main();
    try se.struct_examples_main();
    ee.enum_examples();
}
