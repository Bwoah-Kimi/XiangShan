module Arbiter_35(
  input         io_in_0_valid,
  input  [3:0]  io_in_0_bits_uop_ctrl_fuType,
  input  [6:0]  io_in_0_bits_uop_ctrl_fuOpType,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [4:0]  io_in_0_bits_uop_robIdx_value,
  input         io_in_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_in_0_bits_uop_sqIdx_value,
  input  [63:0] io_in_0_bits_data,
  input         io_in_1_valid,
  input  [3:0]  io_in_1_bits_uop_ctrl_fuType,
  input  [6:0]  io_in_1_bits_uop_ctrl_fuOpType,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [4:0]  io_in_1_bits_uop_robIdx_value,
  input         io_in_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_in_1_bits_uop_sqIdx_value,
  input  [63:0] io_in_1_bits_data,
  output        io_out_valid,
  output [3:0]  io_out_bits_uop_ctrl_fuType,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_sqIdx_flag,
  output [3:0]  io_out_bits_uop_sqIdx_value,
  output [63:0] io_out_bits_data
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_uop_ctrl_fuType = io_in_0_valid ? io_in_0_bits_uop_ctrl_fuType : io_in_1_bits_uop_ctrl_fuType; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_ctrl_fuOpType = io_in_0_valid ? io_in_0_bits_uop_ctrl_fuOpType : io_in_1_bits_uop_ctrl_fuOpType
    ; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_robIdx_flag = io_in_0_valid ? io_in_0_bits_uop_robIdx_flag : io_in_1_bits_uop_robIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_robIdx_value = io_in_0_valid ? io_in_0_bits_uop_robIdx_value : io_in_1_bits_uop_robIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_sqIdx_flag = io_in_0_valid ? io_in_0_bits_uop_sqIdx_flag : io_in_1_bits_uop_sqIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_sqIdx_value = io_in_0_valid ? io_in_0_bits_uop_sqIdx_value : io_in_1_bits_uop_sqIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_data = io_in_0_valid ? io_in_0_bits_data : io_in_1_bits_data; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

