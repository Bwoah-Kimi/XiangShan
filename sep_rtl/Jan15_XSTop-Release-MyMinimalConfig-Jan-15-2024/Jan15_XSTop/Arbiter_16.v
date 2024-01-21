module Arbiter_16(
  input         io_in_0_valid,
  input  [5:0]  io_in_0_bits_idx,
  input  [7:0]  io_in_0_bits_way_en,
  input  [23:0] io_in_0_bits_tag,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [5:0]  io_in_1_bits_idx,
  input  [7:0]  io_in_1_bits_way_en,
  input  [23:0] io_in_1_bits_tag,
  output        io_out_valid,
  output [5:0]  io_out_bits_idx,
  output [7:0]  io_out_bits_way_en,
  output [23:0] io_out_bits_tag
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_idx = io_in_0_valid ? io_in_0_bits_idx : io_in_1_bits_idx; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en : io_in_1_bits_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_tag = io_in_0_valid ? io_in_0_bits_tag : io_in_1_bits_tag; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

