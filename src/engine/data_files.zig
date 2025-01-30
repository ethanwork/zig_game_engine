const std = @import("std");

pub const DataFile = struct {
    file_name: []const u8,
    file_contents: []u8,
    allocator: std.mem.Allocator,

    pub fn new(allocator: std.mem.Allocator, name: []const u8, size: usize) !DataFile {
        return DataFile{
            .file_name = name,
            .file_contents = try allocator.alloc(u8, size),
            .allocator = allocator,
        };
    }

    pub fn deinit(self: *DataFile) void {
        self.allocator.free(self.file_contents);
    }
};