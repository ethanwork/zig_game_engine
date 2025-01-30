const std = @import("std");
const df = @import("data_files.zig");

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
pub const allocator = gpa.allocator();

pub var data_file: df.DataFile = undefined;

pub fn init() void {
    data_file = df.DataFile.new(allocator, "data.txt", 100) catch |err| {
        std.debug.print("Error: The data files are somehow screwed. {}\n", .{err});
        return;
    };
}

pub fn deinit() void {
    data_file.deinit();
    _ = gpa.deinit();
}