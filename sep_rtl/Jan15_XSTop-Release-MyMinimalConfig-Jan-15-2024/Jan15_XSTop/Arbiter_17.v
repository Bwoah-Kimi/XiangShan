module Arbiter_17(
  input         io_in_0_valid,
  input  [7:0]  io_in_0_bits_wmask,
  input  [63:0] io_in_0_bits_data_0,
  input  [63:0] io_in_0_bits_data_1,
  input  [63:0] io_in_0_bits_data_2,
  input  [63:0] io_in_0_bits_data_3,
  input  [63:0] io_in_0_bits_data_4,
  input  [63:0] io_in_0_bits_data_5,
  input  [63:0] io_in_0_bits_data_6,
  input  [63:0] io_in_0_bits_data_7,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [7:0]  io_in_1_bits_wmask,
  input  [63:0] io_in_1_bits_data_0,
  input  [63:0] io_in_1_bits_data_1,
  input  [63:0] io_in_1_bits_data_2,
  input  [63:0] io_in_1_bits_data_3,
  input  [63:0] io_in_1_bits_data_4,
  input  [63:0] io_in_1_bits_data_5,
  input  [63:0] io_in_1_bits_data_6,
  input  [63:0] io_in_1_bits_data_7,
  output        io_out_valid,
  output [7:0]  io_out_bits_wmask,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_wmask = io_in_0_valid ? io_in_0_bits_wmask : io_in_1_bits_wmask; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_0 = io_in_0_valid ? io_in_0_bits_data_0 : io_in_1_bits_data_0; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_1 = io_in_0_valid ? io_in_0_bits_data_1 : io_in_1_bits_data_1; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_2 = io_in_0_valid ? io_in_0_bits_data_2 : io_in_1_bits_data_2; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_3 = io_in_0_valid ? io_in_0_bits_data_3 : io_in_1_bits_data_3; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_4 = io_in_0_valid ? io_in_0_bits_data_4 : io_in_1_bits_data_4; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_5 = io_in_0_valid ? io_in_0_bits_data_5 : io_in_1_bits_data_5; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_6 = io_in_0_valid ? io_in_0_bits_data_6 : io_in_1_bits_data_6; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data_7 = io_in_0_valid ? io_in_0_bits_data_7 : io_in_1_bits_data_7; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

