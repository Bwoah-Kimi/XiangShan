module Arbiter_18(
  input         io_in_0_valid,
  input  [7:0]  io_in_0_bits_way_en,
  input  [35:0] io_in_0_bits_addr,
  input         io_in_1_valid,
  input  [7:0]  io_in_1_bits_way_en,
  input  [35:0] io_in_1_bits_addr,
  output        io_out_valid,
  output [7:0]  io_out_bits_way_en,
  output [35:0] io_out_bits_addr
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en : io_in_1_bits_way_en; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : io_in_1_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

