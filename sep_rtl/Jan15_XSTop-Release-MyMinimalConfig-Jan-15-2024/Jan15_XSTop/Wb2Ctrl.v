module Wb2Ctrl(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  input        io_in_3_ready,
  input        io_in_3_valid,
  input        io_in_3_bits_uop_cf_exceptionVec_2,
  input        io_in_3_bits_uop_cf_exceptionVec_3,
  input        io_in_3_bits_uop_cf_exceptionVec_8,
  input        io_in_3_bits_uop_cf_exceptionVec_9,
  input        io_in_3_bits_uop_cf_exceptionVec_11,
  input        io_in_3_bits_uop_ctrl_flushPipe,
  input        io_in_3_bits_uop_robIdx_flag,
  input  [4:0] io_in_3_bits_uop_robIdx_value,
  input  [4:0] io_in_3_bits_fflags,
  input        io_in_4_ready,
  input        io_in_4_valid,
  input        io_in_4_bits_uop_robIdx_flag,
  input  [4:0] io_in_4_bits_uop_robIdx_value,
  input  [4:0] io_in_4_bits_fflags,
  input        io_in_5_ready,
  input        io_in_5_valid,
  input        io_in_5_bits_uop_robIdx_flag,
  input  [4:0] io_in_5_bits_uop_robIdx_value,
  input  [4:0] io_in_5_bits_fflags,
  input        io_in_6_ready,
  input        io_in_6_valid,
  input        io_in_6_bits_uop_cf_exceptionVec_4,
  input        io_in_6_bits_uop_cf_exceptionVec_5,
  input        io_in_6_bits_uop_cf_exceptionVec_13,
  input        io_in_6_bits_uop_cf_trigger_backendHit_0,
  input        io_in_6_bits_uop_cf_trigger_backendHit_1,
  input        io_in_6_bits_uop_cf_trigger_backendHit_2,
  input        io_in_6_bits_uop_cf_trigger_backendHit_3,
  input        io_in_6_bits_uop_cf_trigger_backendHit_4,
  input        io_in_6_bits_uop_cf_trigger_backendHit_5,
  input        io_in_6_bits_uop_ctrl_replayInst,
  input        io_in_6_bits_uop_robIdx_flag,
  input  [4:0] io_in_6_bits_uop_robIdx_value,
  input        io_in_7_ready,
  input        io_in_7_valid,
  input        io_in_7_bits_uop_cf_exceptionVec_4,
  input        io_in_7_bits_uop_cf_exceptionVec_5,
  input        io_in_7_bits_uop_cf_exceptionVec_13,
  input        io_in_7_bits_uop_cf_trigger_backendHit_0,
  input        io_in_7_bits_uop_cf_trigger_backendHit_1,
  input        io_in_7_bits_uop_cf_trigger_backendHit_2,
  input        io_in_7_bits_uop_cf_trigger_backendHit_3,
  input        io_in_7_bits_uop_cf_trigger_backendHit_4,
  input        io_in_7_bits_uop_cf_trigger_backendHit_5,
  input        io_in_7_bits_uop_ctrl_replayInst,
  input        io_in_7_bits_uop_robIdx_flag,
  input  [4:0] io_in_7_bits_uop_robIdx_value,
  input        io_in_8_ready,
  input        io_in_8_valid,
  input        io_in_8_bits_uop_cf_exceptionVec_4,
  input        io_in_8_bits_uop_cf_exceptionVec_5,
  input        io_in_8_bits_uop_cf_exceptionVec_6,
  input        io_in_8_bits_uop_cf_exceptionVec_7,
  input        io_in_8_bits_uop_cf_exceptionVec_13,
  input        io_in_8_bits_uop_cf_exceptionVec_15,
  input        io_in_8_bits_uop_cf_trigger_backendHit_0,
  input        io_in_8_bits_uop_cf_trigger_backendHit_1,
  input        io_in_8_bits_uop_cf_trigger_backendHit_2,
  input        io_in_8_bits_uop_cf_trigger_backendHit_3,
  input        io_in_8_bits_uop_cf_trigger_backendHit_4,
  input        io_in_8_bits_uop_cf_trigger_backendHit_5,
  input        io_in_8_bits_uop_robIdx_flag,
  input  [4:0] io_in_8_bits_uop_robIdx_value,
  input        io_in_9_ready,
  input        io_in_9_valid,
  input        io_in_9_bits_uop_cf_exceptionVec_6,
  input        io_in_9_bits_uop_cf_exceptionVec_7,
  input        io_in_9_bits_uop_cf_exceptionVec_15,
  input        io_in_9_bits_uop_cf_trigger_backendHit_0,
  input        io_in_9_bits_uop_cf_trigger_backendHit_1,
  input        io_in_9_bits_uop_cf_trigger_backendHit_4,
  input        io_in_9_bits_uop_robIdx_flag,
  input  [4:0] io_in_9_bits_uop_robIdx_value,
  output       io_out_3_valid,
  output       io_out_3_bits_uop_cf_exceptionVec_2,
  output       io_out_3_bits_uop_cf_exceptionVec_3,
  output       io_out_3_bits_uop_cf_exceptionVec_8,
  output       io_out_3_bits_uop_cf_exceptionVec_9,
  output       io_out_3_bits_uop_cf_exceptionVec_11,
  output       io_out_3_bits_uop_ctrl_flushPipe,
  output       io_out_3_bits_uop_robIdx_flag,
  output [4:0] io_out_3_bits_uop_robIdx_value,
  output [4:0] io_out_3_bits_fflags,
  output       io_out_4_valid,
  output       io_out_4_bits_uop_robIdx_flag,
  output [4:0] io_out_4_bits_uop_robIdx_value,
  output [4:0] io_out_4_bits_fflags,
  output       io_out_5_valid,
  output       io_out_5_bits_uop_robIdx_flag,
  output [4:0] io_out_5_bits_uop_robIdx_value,
  output [4:0] io_out_5_bits_fflags,
  output       io_out_6_valid,
  output       io_out_6_bits_uop_cf_exceptionVec_4,
  output       io_out_6_bits_uop_cf_exceptionVec_5,
  output       io_out_6_bits_uop_cf_exceptionVec_13,
  output       io_out_6_bits_uop_cf_trigger_backendHit_0,
  output       io_out_6_bits_uop_cf_trigger_backendHit_1,
  output       io_out_6_bits_uop_cf_trigger_backendHit_2,
  output       io_out_6_bits_uop_cf_trigger_backendHit_3,
  output       io_out_6_bits_uop_cf_trigger_backendHit_4,
  output       io_out_6_bits_uop_cf_trigger_backendHit_5,
  output       io_out_6_bits_uop_ctrl_replayInst,
  output       io_out_6_bits_uop_robIdx_flag,
  output [4:0] io_out_6_bits_uop_robIdx_value,
  output       io_out_7_valid,
  output       io_out_7_bits_uop_cf_exceptionVec_4,
  output       io_out_7_bits_uop_cf_exceptionVec_5,
  output       io_out_7_bits_uop_cf_exceptionVec_13,
  output       io_out_7_bits_uop_cf_trigger_backendHit_0,
  output       io_out_7_bits_uop_cf_trigger_backendHit_1,
  output       io_out_7_bits_uop_cf_trigger_backendHit_2,
  output       io_out_7_bits_uop_cf_trigger_backendHit_3,
  output       io_out_7_bits_uop_cf_trigger_backendHit_4,
  output       io_out_7_bits_uop_cf_trigger_backendHit_5,
  output       io_out_7_bits_uop_ctrl_replayInst,
  output       io_out_7_bits_uop_robIdx_flag,
  output [4:0] io_out_7_bits_uop_robIdx_value,
  output       io_out_8_valid,
  output       io_out_8_bits_uop_cf_exceptionVec_4,
  output       io_out_8_bits_uop_cf_exceptionVec_5,
  output       io_out_8_bits_uop_cf_exceptionVec_6,
  output       io_out_8_bits_uop_cf_exceptionVec_7,
  output       io_out_8_bits_uop_cf_exceptionVec_13,
  output       io_out_8_bits_uop_cf_exceptionVec_15,
  output       io_out_8_bits_uop_cf_trigger_backendHit_0,
  output       io_out_8_bits_uop_cf_trigger_backendHit_1,
  output       io_out_8_bits_uop_cf_trigger_backendHit_2,
  output       io_out_8_bits_uop_cf_trigger_backendHit_3,
  output       io_out_8_bits_uop_cf_trigger_backendHit_4,
  output       io_out_8_bits_uop_cf_trigger_backendHit_5,
  output       io_out_8_bits_uop_robIdx_flag,
  output [4:0] io_out_8_bits_uop_robIdx_value,
  output       io_out_9_valid,
  output       io_out_9_bits_uop_cf_exceptionVec_6,
  output       io_out_9_bits_uop_cf_exceptionVec_7,
  output       io_out_9_bits_uop_cf_exceptionVec_15,
  output       io_out_9_bits_uop_cf_trigger_backendHit_0,
  output       io_out_9_bits_uop_cf_trigger_backendHit_1,
  output       io_out_9_bits_uop_cf_trigger_backendHit_4,
  output       io_out_9_bits_uop_robIdx_flag,
  output [4:0] io_out_9_bits_uop_robIdx_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  reg  redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  wire [5:0] _io_out_2_valid_flushItself_T_2 = {redirect_next_bits_rrobIdx_flag,redirect_next_bits_rrobIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_out_3_valid_T = io_in_3_ready & io_in_3_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_out_3_valid_flushItself_T_1 = {io_in_3_bits_uop_robIdx_flag,io_in_3_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_3_valid_flushItself_T_3 = _io_out_3_valid_flushItself_T_1 == _io_out_2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_3_valid_flushItself = redirect_next_bits_rlevel & _io_out_3_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_3_valid_differentFlag = io_in_3_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_3_valid_compare = io_in_3_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_3_valid_T_2 = io_out_3_valid_differentFlag ^ io_out_3_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_3_valid_T_4 = redirect_next_valid_REG & (io_out_3_valid_flushItself | _io_out_3_valid_T_2); // @[Rob.scala 143:20]
  reg  io_out_3_valid_REG; // @[WbArbiter.scala 369:29]
  reg  io_out_3_bits_uop_rcf_exceptionVec_2; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rcf_exceptionVec_3; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rcf_exceptionVec_8; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rcf_exceptionVec_9; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rcf_exceptionVec_11; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rctrl_flushPipe; // @[Reg.scala 16:16]
  reg  io_out_3_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_3_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  wire  _io_out_4_valid_T = io_in_4_ready & io_in_4_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_out_4_valid_flushItself_T_1 = {io_in_4_bits_uop_robIdx_flag,io_in_4_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_4_valid_flushItself_T_3 = _io_out_4_valid_flushItself_T_1 == _io_out_2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_4_valid_flushItself = redirect_next_bits_rlevel & _io_out_4_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_4_valid_differentFlag = io_in_4_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_4_valid_compare = io_in_4_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_4_valid_T_2 = io_out_4_valid_differentFlag ^ io_out_4_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_4_valid_T_4 = redirect_next_valid_REG & (io_out_4_valid_flushItself | _io_out_4_valid_T_2); // @[Rob.scala 143:20]
  reg  io_out_4_valid_REG; // @[WbArbiter.scala 369:29]
  reg  io_out_4_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_4_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  wire  _io_out_5_valid_T = io_in_5_ready & io_in_5_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_out_5_valid_flushItself_T_1 = {io_in_5_bits_uop_robIdx_flag,io_in_5_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_5_valid_flushItself_T_3 = _io_out_5_valid_flushItself_T_1 == _io_out_2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_5_valid_flushItself = redirect_next_bits_rlevel & _io_out_5_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_5_valid_differentFlag = io_in_5_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_5_valid_compare = io_in_5_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_5_valid_T_2 = io_out_5_valid_differentFlag ^ io_out_5_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_5_valid_T_4 = redirect_next_valid_REG & (io_out_5_valid_flushItself | _io_out_5_valid_T_2); // @[Rob.scala 143:20]
  reg  io_out_5_valid_REG; // @[WbArbiter.scala 369:29]
  reg  io_out_5_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_5_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  wire  _io_out_6_valid_T = io_in_6_ready & io_in_6_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_out_6_valid_flushItself_T_1 = {io_in_6_bits_uop_robIdx_flag,io_in_6_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_6_valid_flushItself_T_3 = _io_out_6_valid_flushItself_T_1 == _io_out_2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_6_valid_flushItself = redirect_next_bits_rlevel & _io_out_6_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_6_valid_differentFlag = io_in_6_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_6_valid_compare = io_in_6_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_6_valid_T_2 = io_out_6_valid_differentFlag ^ io_out_6_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_6_valid_T_4 = redirect_next_valid_REG & (io_out_6_valid_flushItself | _io_out_6_valid_T_2); // @[Rob.scala 143:20]
  reg  io_out_6_valid_REG; // @[WbArbiter.scala 369:29]
  reg  io_out_6_bits_uop_rcf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rcf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rctrl_replayInst; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_6_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  wire  _io_out_7_valid_T = io_in_7_ready & io_in_7_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _io_out_7_valid_flushItself_T_1 = {io_in_7_bits_uop_robIdx_flag,io_in_7_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_7_valid_flushItself_T_3 = _io_out_7_valid_flushItself_T_1 == _io_out_2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_7_valid_flushItself = redirect_next_bits_rlevel & _io_out_7_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_7_valid_differentFlag = io_in_7_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_7_valid_compare = io_in_7_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_7_valid_T_2 = io_out_7_valid_differentFlag ^ io_out_7_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_7_valid_T_4 = redirect_next_valid_REG & (io_out_7_valid_flushItself | _io_out_7_valid_T_2); // @[Rob.scala 143:20]
  reg  io_out_7_valid_REG; // @[WbArbiter.scala 369:29]
  reg  io_out_7_bits_uop_rcf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rcf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rctrl_replayInst; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_7_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_out_6_bits_uop_cf_exceptionVec_5_r; // @[Reg.scala 16:16]
  reg  io_out_7_bits_uop_cf_exceptionVec_5_r; // @[Reg.scala 16:16]
  assign io_out_3_valid = io_out_3_valid_REG; // @[WbArbiter.scala 369:19]
  assign io_out_3_bits_uop_cf_exceptionVec_2 = io_out_3_bits_uop_rcf_exceptionVec_2; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_cf_exceptionVec_3 = io_out_3_bits_uop_rcf_exceptionVec_3; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_cf_exceptionVec_8 = io_out_3_bits_uop_rcf_exceptionVec_8; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_cf_exceptionVec_9 = io_out_3_bits_uop_rcf_exceptionVec_9; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_cf_exceptionVec_11 = io_out_3_bits_uop_rcf_exceptionVec_11; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_ctrl_flushPipe = io_out_3_bits_uop_rctrl_flushPipe; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_robIdx_flag = io_out_3_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_uop_robIdx_value = io_out_3_bits_uop_rrobIdx_value; // @[WbArbiter.scala 370:22]
  assign io_out_3_bits_fflags = io_in_3_bits_fflags; // @[WbArbiter.scala 367:16]
  assign io_out_4_valid = io_out_4_valid_REG; // @[WbArbiter.scala 369:19]
  assign io_out_4_bits_uop_robIdx_flag = io_out_4_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 370:22]
  assign io_out_4_bits_uop_robIdx_value = io_out_4_bits_uop_rrobIdx_value; // @[WbArbiter.scala 370:22]
  assign io_out_4_bits_fflags = io_in_4_bits_fflags; // @[WbArbiter.scala 367:16]
  assign io_out_5_valid = io_out_5_valid_REG; // @[WbArbiter.scala 369:19]
  assign io_out_5_bits_uop_robIdx_flag = io_out_5_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 370:22]
  assign io_out_5_bits_uop_robIdx_value = io_out_5_bits_uop_rrobIdx_value; // @[WbArbiter.scala 370:22]
  assign io_out_5_bits_fflags = io_in_5_bits_fflags; // @[WbArbiter.scala 367:16]
  assign io_out_6_valid = io_out_6_valid_REG; // @[WbArbiter.scala 369:19]
  assign io_out_6_bits_uop_cf_exceptionVec_4 = io_out_6_bits_uop_rcf_exceptionVec_4; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_exceptionVec_5 = io_out_6_bits_uop_cf_exceptionVec_5_r; // @[WbArbiter.scala 380:72]
  assign io_out_6_bits_uop_cf_exceptionVec_13 = io_out_6_bits_uop_rcf_exceptionVec_13; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_0 = io_out_6_bits_uop_rcf_trigger_backendHit_0; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_1 = io_out_6_bits_uop_rcf_trigger_backendHit_1; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_2 = io_out_6_bits_uop_rcf_trigger_backendHit_2; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_3 = io_out_6_bits_uop_rcf_trigger_backendHit_3; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_4 = io_out_6_bits_uop_rcf_trigger_backendHit_4; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_cf_trigger_backendHit_5 = io_out_6_bits_uop_rcf_trigger_backendHit_5; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_ctrl_replayInst = io_out_6_bits_uop_rctrl_replayInst; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_robIdx_flag = io_out_6_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 370:22]
  assign io_out_6_bits_uop_robIdx_value = io_out_6_bits_uop_rrobIdx_value; // @[WbArbiter.scala 370:22]
  assign io_out_7_valid = io_out_7_valid_REG; // @[WbArbiter.scala 369:19]
  assign io_out_7_bits_uop_cf_exceptionVec_4 = io_out_7_bits_uop_rcf_exceptionVec_4; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_exceptionVec_5 = io_out_7_bits_uop_cf_exceptionVec_5_r; // @[WbArbiter.scala 380:72]
  assign io_out_7_bits_uop_cf_exceptionVec_13 = io_out_7_bits_uop_rcf_exceptionVec_13; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_0 = io_out_7_bits_uop_rcf_trigger_backendHit_0; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_1 = io_out_7_bits_uop_rcf_trigger_backendHit_1; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_2 = io_out_7_bits_uop_rcf_trigger_backendHit_2; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_3 = io_out_7_bits_uop_rcf_trigger_backendHit_3; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_4 = io_out_7_bits_uop_rcf_trigger_backendHit_4; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_cf_trigger_backendHit_5 = io_out_7_bits_uop_rcf_trigger_backendHit_5; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_ctrl_replayInst = io_out_7_bits_uop_rctrl_replayInst; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_robIdx_flag = io_out_7_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 370:22]
  assign io_out_7_bits_uop_robIdx_value = io_out_7_bits_uop_rrobIdx_value; // @[WbArbiter.scala 370:22]
  assign io_out_8_valid = io_in_8_ready & io_in_8_valid; // @[Decoupled.scala 50:35]
  assign io_out_8_bits_uop_cf_exceptionVec_4 = io_in_8_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_exceptionVec_5 = io_in_8_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_exceptionVec_6 = io_in_8_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_exceptionVec_7 = io_in_8_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_exceptionVec_13 = io_in_8_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_exceptionVec_15 = io_in_8_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_0 = io_in_8_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_1 = io_in_8_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_2 = io_in_8_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_3 = io_in_8_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_4 = io_in_8_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_cf_trigger_backendHit_5 = io_in_8_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_robIdx_flag = io_in_8_bits_uop_robIdx_flag; // @[WbArbiter.scala 367:16]
  assign io_out_8_bits_uop_robIdx_value = io_in_8_bits_uop_robIdx_value; // @[WbArbiter.scala 367:16]
  assign io_out_9_valid = io_in_9_ready & io_in_9_valid; // @[Decoupled.scala 50:35]
  assign io_out_9_bits_uop_cf_exceptionVec_6 = io_in_9_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_cf_exceptionVec_7 = io_in_9_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_cf_exceptionVec_15 = io_in_9_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_0 = io_in_9_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_1 = io_in_9_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_4 = io_in_9_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_robIdx_flag = io_in_9_bits_uop_robIdx_flag; // @[WbArbiter.scala 367:16]
  assign io_out_9_bits_uop_robIdx_value = io_in_9_bits_uop_robIdx_value; // @[WbArbiter.scala 367:16]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_out_3_valid_REG <= _io_out_3_valid_T & ~_io_out_3_valid_T_4; // @[WbArbiter.scala 369:38]
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rcf_exceptionVec_2 <= io_in_3_bits_uop_cf_exceptionVec_2; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rcf_exceptionVec_3 <= io_in_3_bits_uop_cf_exceptionVec_3; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rcf_exceptionVec_8 <= io_in_3_bits_uop_cf_exceptionVec_8; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rcf_exceptionVec_9 <= io_in_3_bits_uop_cf_exceptionVec_9; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rcf_exceptionVec_11 <= io_in_3_bits_uop_cf_exceptionVec_11; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rctrl_flushPipe <= io_in_3_bits_uop_ctrl_flushPipe; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rrobIdx_flag <= io_in_3_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_io_out_3_valid_T) begin // @[Reg.scala 17:18]
      io_out_3_bits_uop_rrobIdx_value <= io_in_3_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    io_out_4_valid_REG <= _io_out_4_valid_T & ~_io_out_4_valid_T_4; // @[WbArbiter.scala 369:38]
    if (_io_out_4_valid_T) begin // @[Reg.scala 17:18]
      io_out_4_bits_uop_rrobIdx_flag <= io_in_4_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_io_out_4_valid_T) begin // @[Reg.scala 17:18]
      io_out_4_bits_uop_rrobIdx_value <= io_in_4_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    io_out_5_valid_REG <= _io_out_5_valid_T & ~_io_out_5_valid_T_4; // @[WbArbiter.scala 369:38]
    if (_io_out_5_valid_T) begin // @[Reg.scala 17:18]
      io_out_5_bits_uop_rrobIdx_flag <= io_in_5_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_io_out_5_valid_T) begin // @[Reg.scala 17:18]
      io_out_5_bits_uop_rrobIdx_value <= io_in_5_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    io_out_6_valid_REG <= _io_out_6_valid_T & ~_io_out_6_valid_T_4; // @[WbArbiter.scala 369:38]
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_exceptionVec_4 <= io_in_6_bits_uop_cf_exceptionVec_4; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_exceptionVec_13 <= io_in_6_bits_uop_cf_exceptionVec_13; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_0 <= io_in_6_bits_uop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_1 <= io_in_6_bits_uop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_2 <= io_in_6_bits_uop_cf_trigger_backendHit_2; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_3 <= io_in_6_bits_uop_cf_trigger_backendHit_3; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_4 <= io_in_6_bits_uop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rcf_trigger_backendHit_5 <= io_in_6_bits_uop_cf_trigger_backendHit_5; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rctrl_replayInst <= io_in_6_bits_uop_ctrl_replayInst; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rrobIdx_flag <= io_in_6_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_io_out_6_valid_T) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_rrobIdx_value <= io_in_6_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    io_out_7_valid_REG <= _io_out_7_valid_T & ~_io_out_7_valid_T_4; // @[WbArbiter.scala 369:38]
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_exceptionVec_4 <= io_in_7_bits_uop_cf_exceptionVec_4; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_exceptionVec_13 <= io_in_7_bits_uop_cf_exceptionVec_13; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_0 <= io_in_7_bits_uop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_1 <= io_in_7_bits_uop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_2 <= io_in_7_bits_uop_cf_trigger_backendHit_2; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_3 <= io_in_7_bits_uop_cf_trigger_backendHit_3; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_4 <= io_in_7_bits_uop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rcf_trigger_backendHit_5 <= io_in_7_bits_uop_cf_trigger_backendHit_5; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rctrl_replayInst <= io_in_7_bits_uop_ctrl_replayInst; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rrobIdx_flag <= io_in_7_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_io_out_7_valid_T) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_rrobIdx_value <= io_in_7_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_in_6_valid) begin // @[Reg.scala 17:18]
      io_out_6_bits_uop_cf_exceptionVec_5_r <= io_in_6_bits_uop_cf_exceptionVec_5; // @[Reg.scala 17:22]
    end
    if (io_in_7_valid) begin // @[Reg.scala 17:18]
      io_out_7_bits_uop_cf_exceptionVec_5_r <= io_in_7_bits_uop_cf_exceptionVec_5; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  redirect_next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  redirect_next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  redirect_next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_3_valid_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_3_bits_uop_rcf_exceptionVec_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_3_bits_uop_rcf_exceptionVec_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_3_bits_uop_rcf_exceptionVec_8 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_3_bits_uop_rcf_exceptionVec_9 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_3_bits_uop_rcf_exceptionVec_11 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_3_bits_uop_rctrl_flushPipe = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_3_bits_uop_rrobIdx_flag = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_3_bits_uop_rrobIdx_value = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_4_valid_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_4_bits_uop_rrobIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_4_bits_uop_rrobIdx_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_5_valid_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_5_bits_uop_rrobIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_5_bits_uop_rrobIdx_value = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_6_valid_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_exceptionVec_4 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_exceptionVec_13 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_3 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_6_bits_uop_rcf_trigger_backendHit_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_out_6_bits_uop_rctrl_replayInst = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_6_bits_uop_rrobIdx_flag = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_6_bits_uop_rrobIdx_value = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_7_valid_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_exceptionVec_4 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_exceptionVec_13 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_2 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_3 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_4 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_out_7_bits_uop_rcf_trigger_backendHit_5 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_out_7_bits_uop_rctrl_replayInst = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_out_7_bits_uop_rrobIdx_flag = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_out_7_bits_uop_rrobIdx_value = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  io_out_6_bits_uop_cf_exceptionVec_5_r = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_out_7_bits_uop_cf_exceptionVec_5_r = _RAND_44[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

