module Arbiter_34(
  input         io_in_0_valid,
  input  [35:0] io_in_0_bits_addr,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [35:0] io_in_1_bits_addr,
  input  [2:0]  io_in_1_bits_id,
  input         io_out_ready,
  output        io_out_valid,
  output [35:0] io_out_bits_addr,
  output [2:0]  io_out_bits_id
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : io_in_1_bits_addr; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_id = io_in_0_valid ? 3'h6 : io_in_1_bits_id; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

