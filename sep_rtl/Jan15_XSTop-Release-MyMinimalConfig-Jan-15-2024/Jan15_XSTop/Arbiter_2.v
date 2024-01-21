module Arbiter_2(
  output         io_in_0_ready,
  input          io_in_0_valid,
  input  [5:0]   io_in_0_bits_virIdx,
  input  [511:0] io_in_0_bits_data,
  input  [3:0]   io_in_0_bits_waymask,
  input          io_in_0_bits_bankIdx,
  output         io_in_1_ready,
  input          io_in_1_valid,
  input  [5:0]   io_in_1_bits_virIdx,
  input  [511:0] io_in_1_bits_data,
  input  [3:0]   io_in_1_bits_waymask,
  input          io_in_1_bits_bankIdx,
  input          io_out_ready,
  output         io_out_valid,
  output [5:0]   io_out_bits_virIdx,
  output [511:0] io_out_bits_data,
  output [3:0]   io_out_bits_waymask,
  output         io_out_bits_bankIdx
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_virIdx = io_in_0_valid ? io_in_0_bits_virIdx : io_in_1_bits_virIdx; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data = io_in_0_valid ? io_in_0_bits_data : io_in_1_bits_data; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_waymask = io_in_0_valid ? io_in_0_bits_waymask : io_in_1_bits_waymask; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_bankIdx = io_in_0_valid ? io_in_0_bits_bankIdx : io_in_1_bits_bankIdx; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

