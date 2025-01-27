const std = @import("std");
const df = @import("data_files.zig");

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
pub const allocator = gpa.allocator();

pub var data_file: df.DataFile = undefined;

pub fn init() !void {
    data_file = try df.DataFile.new(allocator, "data.txt", 100);
}

pub fn deinit() void {
    data_file.deinit();
    _ = gpa.deinit();
}