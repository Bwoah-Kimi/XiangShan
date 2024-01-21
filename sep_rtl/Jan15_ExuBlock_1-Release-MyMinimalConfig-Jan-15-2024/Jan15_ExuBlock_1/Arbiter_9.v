module Arbiter_9(
  output       io_in_0_ready,
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
  input        io_in_1_bits_uop_ctrl_rfWen,
  input        io_in_1_bits_uop_ctrl_fpWen,
  input  [5:0] io_in_1_bits_uop_pdest,
  input        io_in_1_bits_uop_robIdx_flag,
  input  [4:0] io_in_1_bits_uop_robIdx_value,
  input        io_in_1_bits_uop_lqIdx_flag,
  input  [3:0] io_in_1_bits_uop_lqIdx_value,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input        io_in_2_bits_uop_ctrl_rfWen,
  input        io_in_2_bits_uop_ctrl_fpWen,
  input  [5:0] io_in_2_bits_uop_pdest,
  input        io_in_2_bits_uop_robIdx_flag,
  input  [4:0] io_in_2_bits_uop_robIdx_value,
  input        io_in_2_bits_uop_lqIdx_flag,
  input  [3:0] io_in_2_bits_uop_lqIdx_value,
  input        io_out_ready,
  output       io_out_valid,
  output       io_out_bits_uop_ctrl_rfWen,
  output       io_out_bits_uop_ctrl_fpWen,
  output [5:0] io_out_bits_uop_pdest,
  output       io_out_bits_uop_robIdx_flag,
  output [4:0] io_out_bits_uop_robIdx_value,
  output       io_out_bits_uop_lqIdx_flag,
  output [3:0] io_out_bits_uop_lqIdx_value
);
  wire  _GEN_58 = io_in_1_valid ? io_in_1_bits_uop_ctrl_rfWen : io_in_2_bits_uop_ctrl_rfWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_59 = io_in_1_valid ? io_in_1_bits_uop_ctrl_fpWen : io_in_2_bits_uop_ctrl_fpWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [5:0] _GEN_90 = io_in_1_valid ? io_in_1_bits_uop_pdest : io_in_2_bits_uop_pdest; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_91 = io_in_1_valid ? io_in_1_bits_uop_robIdx_flag : io_in_2_bits_uop_robIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [4:0] _GEN_92 = io_in_1_valid ? io_in_1_bits_uop_robIdx_value : io_in_2_bits_uop_robIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_93 = io_in_1_valid ? io_in_1_bits_uop_lqIdx_flag : io_in_2_bits_uop_lqIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [3:0] _GEN_94 = io_in_1_valid ? io_in_1_bits_uop_lqIdx_value : io_in_2_bits_uop_lqIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_2_ready = grant_2 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_2 | io_in_2_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_uop_ctrl_rfWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_rfWen : _GEN_58; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_fpWen : _GEN_59; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_pdest = io_in_0_valid ? io_in_0_bits_uop_pdest : _GEN_90; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_flag = io_in_0_valid ? io_in_0_bits_uop_robIdx_flag : _GEN_91; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_value = io_in_0_valid ? io_in_0_bits_uop_robIdx_value : _GEN_92; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_0_valid ? io_in_0_bits_uop_lqIdx_flag : _GEN_93; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_lqIdx_value = io_in_0_valid ? io_in_0_bits_uop_lqIdx_value : _GEN_94; // @[Arbiter.scala 141:26 143:19]
endmodule

