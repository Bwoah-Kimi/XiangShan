module Arbiter_7(
  input        io_in_0_valid,
  input        io_in_0_bits_uop_ctrl_rfWen,
  input        io_in_0_bits_uop_ctrl_fpWen,
  input  [5:0] io_in_0_bits_uop_pdest,
  input        io_in_0_bits_uop_robIdx_flag,
  input  [4:0] io_in_0_bits_uop_robIdx_value,
  input        io_in_0_bits_uop_lqIdx_flag,
  input  [3:0] io_in_0_bits_uop_lqIdx_value,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input        io_in_1_bits_uop_cf_exceptionVec_2,
  input        io_in_1_bits_uop_cf_exceptionVec_3,
  input        io_in_1_bits_uop_cf_exceptionVec_8,
  input        io_in_1_bits_uop_cf_exceptionVec_9,
  input        io_in_1_bits_uop_cf_exceptionVec_11,
  input        io_in_1_bits_uop_ctrl_rfWen,
  input        io_in_1_bits_uop_ctrl_fpWen,
  input        io_in_1_bits_uop_ctrl_flushPipe,
  input  [5:0] io_in_1_bits_uop_pdest,
  input        io_in_1_bits_uop_robIdx_flag,
  input  [4:0] io_in_1_bits_uop_robIdx_value,
  input        io_in_1_bits_uop_lqIdx_flag,
  input  [3:0] io_in_1_bits_uop_lqIdx_value,
  output       io_out_valid,
  output       io_out_bits_uop_cf_exceptionVec_2,
  output       io_out_bits_uop_cf_exceptionVec_3,
  output       io_out_bits_uop_cf_exceptionVec_8,
  output       io_out_bits_uop_cf_exceptionVec_9,
  output       io_out_bits_uop_cf_exceptionVec_11,
  output       io_out_bits_uop_ctrl_rfWen,
  output       io_out_bits_uop_ctrl_fpWen,
  output       io_out_bits_uop_ctrl_flushPipe,
  output [5:0] io_out_bits_uop_pdest,
  output       io_out_bits_uop_robIdx_flag,
  output [4:0] io_out_bits_uop_robIdx_value,
  output       io_out_bits_uop_lqIdx_flag,
  output [3:0] io_out_bits_uop_lqIdx_value
);
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_1 | io_in_1_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_uop_cf_exceptionVec_2 = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_cf_exceptionVec_2; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_cf_exceptionVec_3; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_8 = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_cf_exceptionVec_8; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_9 = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_cf_exceptionVec_9; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_11 = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_cf_exceptionVec_11; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_rfWen : io_in_1_bits_uop_ctrl_rfWen; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_fpWen : io_in_1_bits_uop_ctrl_fpWen; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_ctrl_flushPipe = io_in_0_valid ? 1'h0 : io_in_1_bits_uop_ctrl_flushPipe; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_pdest = io_in_0_valid ? io_in_0_bits_uop_pdest : io_in_1_bits_uop_pdest; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_robIdx_flag = io_in_0_valid ? io_in_0_bits_uop_robIdx_flag : io_in_1_bits_uop_robIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_robIdx_value = io_in_0_valid ? io_in_0_bits_uop_robIdx_value : io_in_1_bits_uop_robIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_0_valid ? io_in_0_bits_uop_lqIdx_flag : io_in_1_bits_uop_lqIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  assign io_out_bits_uop_lqIdx_value = io_in_0_valid ? io_in_0_bits_uop_lqIdx_value : io_in_1_bits_uop_lqIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
endmodule

