module WbArbiterWrapper(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input  [5:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [4:0]  io_in_0_bits_uop_robIdx_value,
  input         io_in_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_0_bits_uop_lqIdx_value,
  input  [63:0] io_in_0_bits_data,
  input         io_in_0_bits_redirectValid,
  input         io_in_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input  [5:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [4:0]  io_in_1_bits_uop_robIdx_value,
  input         io_in_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_1_bits_uop_lqIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_1_bits_redirectValid,
  input         io_in_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_2_valid,
  input         io_in_2_bits_uop_ctrl_rfWen,
  input         io_in_2_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_2_bits_uop_pdest,
  input         io_in_2_bits_uop_robIdx_flag,
  input  [4:0]  io_in_2_bits_uop_robIdx_value,
  input         io_in_2_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_2_bits_uop_lqIdx_value,
  input  [63:0] io_in_2_bits_data,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input         io_in_3_bits_uop_cf_exceptionVec_2,
  input         io_in_3_bits_uop_cf_exceptionVec_3,
  input         io_in_3_bits_uop_cf_exceptionVec_8,
  input         io_in_3_bits_uop_cf_exceptionVec_9,
  input         io_in_3_bits_uop_cf_exceptionVec_11,
  input         io_in_3_bits_uop_ctrl_rfWen,
  input         io_in_3_bits_uop_ctrl_fpWen,
  input         io_in_3_bits_uop_ctrl_flushPipe,
  input  [5:0]  io_in_3_bits_uop_pdest,
  input         io_in_3_bits_uop_robIdx_flag,
  input  [4:0]  io_in_3_bits_uop_robIdx_value,
  input         io_in_3_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_3_bits_uop_lqIdx_value,
  input  [63:0] io_in_3_bits_data,
  input         io_in_3_bits_redirectValid,
  input         io_in_3_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_3_bits_debug_isPerfCnt,
  input         io_in_4_valid,
  input         io_in_4_bits_uop_cf_trigger_backendHit_0,
  input         io_in_4_bits_uop_cf_trigger_backendHit_1,
  input         io_in_4_bits_uop_cf_trigger_backendHit_2,
  input         io_in_4_bits_uop_cf_trigger_backendHit_3,
  input         io_in_4_bits_uop_cf_trigger_backendHit_4,
  input         io_in_4_bits_uop_cf_trigger_backendHit_5,
  input         io_in_4_bits_uop_ctrl_rfWen,
  input         io_in_4_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_4_bits_uop_pdest,
  input         io_in_4_bits_uop_robIdx_flag,
  input  [4:0]  io_in_4_bits_uop_robIdx_value,
  input         io_in_4_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_4_bits_uop_lqIdx_value,
  input  [63:0] io_in_4_bits_data,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input         io_in_5_bits_uop_ctrl_rfWen,
  input         io_in_5_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_5_bits_uop_pdest,
  input         io_in_5_bits_uop_robIdx_flag,
  input  [4:0]  io_in_5_bits_uop_robIdx_value,
  input         io_in_5_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_5_bits_uop_lqIdx_value,
  input  [63:0] io_in_5_bits_data,
  input         io_in_6_valid,
  input         io_in_6_bits_uop_cf_exceptionVec_4,
  input         io_in_6_bits_uop_cf_exceptionVec_5,
  input         io_in_6_bits_uop_cf_exceptionVec_13,
  input         io_in_6_bits_uop_cf_trigger_backendHit_0,
  input         io_in_6_bits_uop_cf_trigger_backendHit_1,
  input         io_in_6_bits_uop_cf_trigger_backendHit_2,
  input         io_in_6_bits_uop_cf_trigger_backendHit_3,
  input         io_in_6_bits_uop_cf_trigger_backendHit_4,
  input         io_in_6_bits_uop_cf_trigger_backendHit_5,
  input         io_in_6_bits_uop_ctrl_rfWen,
  input         io_in_6_bits_uop_ctrl_fpWen,
  input         io_in_6_bits_uop_ctrl_replayInst,
  input  [5:0]  io_in_6_bits_uop_pdest,
  input         io_in_6_bits_uop_robIdx_flag,
  input  [4:0]  io_in_6_bits_uop_robIdx_value,
  input         io_in_6_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_6_bits_uop_lqIdx_value,
  input  [63:0] io_in_6_bits_data,
  input         io_in_6_bits_debug_isMMIO,
  input         io_in_7_valid,
  input         io_in_7_bits_uop_cf_exceptionVec_4,
  input         io_in_7_bits_uop_cf_exceptionVec_5,
  input         io_in_7_bits_uop_cf_exceptionVec_13,
  input         io_in_7_bits_uop_cf_trigger_backendHit_0,
  input         io_in_7_bits_uop_cf_trigger_backendHit_1,
  input         io_in_7_bits_uop_cf_trigger_backendHit_2,
  input         io_in_7_bits_uop_cf_trigger_backendHit_3,
  input         io_in_7_bits_uop_cf_trigger_backendHit_4,
  input         io_in_7_bits_uop_cf_trigger_backendHit_5,
  input         io_in_7_bits_uop_ctrl_rfWen,
  input         io_in_7_bits_uop_ctrl_fpWen,
  input         io_in_7_bits_uop_ctrl_replayInst,
  input  [5:0]  io_in_7_bits_uop_pdest,
  input         io_in_7_bits_uop_robIdx_flag,
  input  [4:0]  io_in_7_bits_uop_robIdx_value,
  input         io_in_7_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_7_bits_uop_lqIdx_value,
  input  [63:0] io_in_7_bits_data,
  input         io_in_7_bits_debug_isMMIO,
  input         io_in_8_valid,
  input         io_in_8_bits_uop_cf_exceptionVec_4,
  input         io_in_8_bits_uop_cf_exceptionVec_5,
  input         io_in_8_bits_uop_cf_exceptionVec_6,
  input         io_in_8_bits_uop_cf_exceptionVec_7,
  input         io_in_8_bits_uop_cf_exceptionVec_13,
  input         io_in_8_bits_uop_cf_exceptionVec_15,
  input         io_in_8_bits_uop_cf_trigger_backendHit_0,
  input         io_in_8_bits_uop_cf_trigger_backendHit_1,
  input         io_in_8_bits_uop_cf_trigger_backendHit_2,
  input         io_in_8_bits_uop_cf_trigger_backendHit_3,
  input         io_in_8_bits_uop_cf_trigger_backendHit_4,
  input         io_in_8_bits_uop_cf_trigger_backendHit_5,
  input         io_in_8_bits_uop_robIdx_flag,
  input  [4:0]  io_in_8_bits_uop_robIdx_value,
  input         io_in_8_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_8_bits_uop_lqIdx_value,
  input         io_in_8_bits_redirectValid,
  input         io_in_8_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_8_bits_debug_isMMIO,
  input         io_in_8_bits_debug_isPerfCnt,
  input         io_in_9_valid,
  input         io_in_9_bits_uop_cf_exceptionVec_4,
  input         io_in_9_bits_uop_cf_exceptionVec_5,
  input         io_in_9_bits_uop_cf_exceptionVec_6,
  input         io_in_9_bits_uop_cf_exceptionVec_7,
  input         io_in_9_bits_uop_cf_exceptionVec_13,
  input         io_in_9_bits_uop_cf_exceptionVec_15,
  input         io_in_9_bits_uop_cf_trigger_backendHit_0,
  input         io_in_9_bits_uop_cf_trigger_backendHit_1,
  input         io_in_9_bits_uop_cf_trigger_backendHit_2,
  input         io_in_9_bits_uop_cf_trigger_backendHit_3,
  input         io_in_9_bits_uop_cf_trigger_backendHit_4,
  input         io_in_9_bits_uop_cf_trigger_backendHit_5,
  input         io_in_9_bits_uop_robIdx_flag,
  input  [4:0]  io_in_9_bits_uop_robIdx_value,
  input         io_in_9_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_9_bits_uop_lqIdx_value,
  input         io_in_9_bits_redirectValid,
  input         io_in_9_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_9_bits_debug_isMMIO,
  input         io_in_9_bits_debug_isPerfCnt,
  input         io_in_10_valid,
  input         io_in_10_bits_uop_robIdx_flag,
  input  [4:0]  io_in_10_bits_uop_robIdx_value,
  input         io_in_11_valid,
  input         io_in_11_bits_uop_robIdx_flag,
  input  [4:0]  io_in_11_bits_uop_robIdx_value,
  output        io_out_0_valid,
  output        io_out_0_bits_uop_robIdx_flag,
  output [4:0]  io_out_0_bits_uop_robIdx_value,
  output        io_out_0_bits_uop_lqIdx_flag,
  output [3:0]  io_out_0_bits_uop_lqIdx_value,
  output        io_out_0_bits_redirectValid,
  output        io_out_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_1_valid,
  output        io_out_1_bits_uop_robIdx_flag,
  output [4:0]  io_out_1_bits_uop_robIdx_value,
  output        io_out_1_bits_uop_lqIdx_flag,
  output [3:0]  io_out_1_bits_uop_lqIdx_value,
  output        io_out_1_bits_redirectValid,
  output        io_out_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_2_valid,
  output        io_out_2_bits_uop_cf_exceptionVec_4,
  output        io_out_2_bits_uop_cf_exceptionVec_5,
  output        io_out_2_bits_uop_cf_exceptionVec_13,
  output        io_out_2_bits_uop_cf_trigger_backendHit_0,
  output        io_out_2_bits_uop_cf_trigger_backendHit_1,
  output        io_out_2_bits_uop_cf_trigger_backendHit_2,
  output        io_out_2_bits_uop_cf_trigger_backendHit_3,
  output        io_out_2_bits_uop_cf_trigger_backendHit_4,
  output        io_out_2_bits_uop_cf_trigger_backendHit_5,
  output        io_out_2_bits_uop_ctrl_rfWen,
  output        io_out_2_bits_uop_ctrl_fpWen,
  output        io_out_2_bits_uop_ctrl_replayInst,
  output [5:0]  io_out_2_bits_uop_pdest,
  output        io_out_2_bits_uop_robIdx_flag,
  output [4:0]  io_out_2_bits_uop_robIdx_value,
  output        io_out_2_bits_uop_lqIdx_flag,
  output [3:0]  io_out_2_bits_uop_lqIdx_value,
  output [63:0] io_out_2_bits_data,
  output        io_out_2_bits_debug_isMMIO,
  output        io_out_3_valid,
  output        io_out_3_bits_uop_cf_exceptionVec_4,
  output        io_out_3_bits_uop_cf_exceptionVec_5,
  output        io_out_3_bits_uop_cf_exceptionVec_13,
  output        io_out_3_bits_uop_cf_trigger_backendHit_0,
  output        io_out_3_bits_uop_cf_trigger_backendHit_1,
  output        io_out_3_bits_uop_cf_trigger_backendHit_2,
  output        io_out_3_bits_uop_cf_trigger_backendHit_3,
  output        io_out_3_bits_uop_cf_trigger_backendHit_4,
  output        io_out_3_bits_uop_cf_trigger_backendHit_5,
  output        io_out_3_bits_uop_ctrl_rfWen,
  output        io_out_3_bits_uop_ctrl_fpWen,
  output        io_out_3_bits_uop_ctrl_replayInst,
  output [5:0]  io_out_3_bits_uop_pdest,
  output        io_out_3_bits_uop_robIdx_flag,
  output [4:0]  io_out_3_bits_uop_robIdx_value,
  output        io_out_3_bits_uop_lqIdx_flag,
  output [3:0]  io_out_3_bits_uop_lqIdx_value,
  output [63:0] io_out_3_bits_data,
  output        io_out_3_bits_debug_isMMIO,
  output        io_out_4_valid,
  output        io_out_4_bits_uop_cf_exceptionVec_2,
  output        io_out_4_bits_uop_cf_exceptionVec_3,
  output        io_out_4_bits_uop_cf_exceptionVec_8,
  output        io_out_4_bits_uop_cf_exceptionVec_9,
  output        io_out_4_bits_uop_cf_exceptionVec_11,
  output        io_out_4_bits_uop_ctrl_rfWen,
  output        io_out_4_bits_uop_ctrl_fpWen,
  output        io_out_4_bits_uop_ctrl_flushPipe,
  output [5:0]  io_out_4_bits_uop_pdest,
  output        io_out_4_bits_uop_robIdx_flag,
  output [4:0]  io_out_4_bits_uop_robIdx_value,
  output        io_out_4_bits_uop_lqIdx_flag,
  output [3:0]  io_out_4_bits_uop_lqIdx_value,
  output [63:0] io_out_4_bits_data,
  output        io_out_4_bits_redirectValid,
  output        io_out_4_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_4_bits_debug_isPerfCnt,
  output        io_out_5_valid,
  output        io_out_5_bits_uop_cf_trigger_backendHit_0,
  output        io_out_5_bits_uop_cf_trigger_backendHit_1,
  output        io_out_5_bits_uop_cf_trigger_backendHit_2,
  output        io_out_5_bits_uop_cf_trigger_backendHit_3,
  output        io_out_5_bits_uop_cf_trigger_backendHit_4,
  output        io_out_5_bits_uop_cf_trigger_backendHit_5,
  output        io_out_5_bits_uop_ctrl_rfWen,
  output        io_out_5_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_5_bits_uop_pdest,
  output        io_out_5_bits_uop_robIdx_flag,
  output [4:0]  io_out_5_bits_uop_robIdx_value,
  output        io_out_5_bits_uop_lqIdx_flag,
  output [3:0]  io_out_5_bits_uop_lqIdx_value,
  output [63:0] io_out_5_bits_data,
  output        io_out_6_valid,
  output        io_out_6_bits_uop_ctrl_rfWen,
  output        io_out_6_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_6_bits_uop_pdest,
  output [63:0] io_out_6_bits_data,
  output        io_out_7_valid,
  output        io_out_7_bits_uop_ctrl_rfWen,
  output        io_out_7_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_7_bits_uop_pdest,
  output [63:0] io_out_7_bits_data,
  output        io_out_8_valid,
  output        io_out_8_bits_uop_cf_exceptionVec_2,
  output        io_out_8_bits_uop_cf_exceptionVec_3,
  output        io_out_8_bits_uop_cf_exceptionVec_8,
  output        io_out_8_bits_uop_cf_exceptionVec_9,
  output        io_out_8_bits_uop_cf_exceptionVec_11,
  output        io_out_8_bits_uop_ctrl_rfWen,
  output        io_out_8_bits_uop_ctrl_fpWen,
  output        io_out_8_bits_uop_ctrl_flushPipe,
  output [5:0]  io_out_8_bits_uop_pdest,
  output        io_out_8_bits_uop_robIdx_flag,
  output [4:0]  io_out_8_bits_uop_robIdx_value,
  output        io_out_8_bits_uop_lqIdx_flag,
  output [3:0]  io_out_8_bits_uop_lqIdx_value,
  output [63:0] io_out_8_bits_data,
  output        io_out_8_bits_redirectValid,
  output        io_out_8_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_8_bits_debug_isPerfCnt
);
  wire  intArbiter_clock; // @[WbArbiter.scala 237:30]
  wire  intArbiter_reset; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_redirect_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_redirect_bits_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_redirect_bits_level; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_0_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_1_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_2_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_2_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_2_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_ready; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_3_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_3_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_3_bits_debug_isPerfCnt; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_ready; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_4_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_4_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_4_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_4_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_4_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_5_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_5_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_5_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_5_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_5_bits_debug_isMMIO; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_in_6_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_in_6_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_in_6_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_in_6_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_in_6_bits_debug_isMMIO; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_out_0_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_out_0_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_out_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_out_0_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_out_1_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_out_1_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_out_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_out_1_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_out_2_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_out_2_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_out_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_out_2_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_2_bits_debug_isMMIO; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_out_3_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_out_3_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_out_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_out_3_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_3_bits_debug_isMMIO; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_valid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 237:30]
  wire [5:0] intArbiter_io_out_4_bits_uop_pdest; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 237:30]
  wire [4:0] intArbiter_io_out_4_bits_uop_robIdx_value; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_uop_lqIdx_flag; // @[WbArbiter.scala 237:30]
  wire [3:0] intArbiter_io_out_4_bits_uop_lqIdx_value; // @[WbArbiter.scala 237:30]
  wire [63:0] intArbiter_io_out_4_bits_data; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_redirectValid; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 237:30]
  wire  intArbiter_io_out_4_bits_debug_isPerfCnt; // @[WbArbiter.scala 237:30]
  wire  fpArbiter_clock; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_reset; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_redirect_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_redirect_bits_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_redirect_bits_level; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_ready; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 243:29]
  wire [3:0] fpArbiter_io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_in_0_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_redirectValid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_0_bits_debug_isPerfCnt; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 243:29]
  wire [3:0] fpArbiter_io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_in_1_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_2_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_in_2_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 243:29]
  wire [3:0] fpArbiter_io_in_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_in_2_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_3_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_in_3_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_in_3_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_4_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_in_4_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_in_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_in_4_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_in_4_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_out_0_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_out_0_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 243:29]
  wire [3:0] fpArbiter_io_out_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_out_0_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_1_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_out_1_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_out_1_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_2_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_out_2_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_out_2_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_valid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 243:29]
  wire [5:0] fpArbiter_io_out_3_bits_uop_pdest; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 243:29]
  wire [4:0] fpArbiter_io_out_3_bits_uop_robIdx_value; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 243:29]
  wire [3:0] fpArbiter_io_out_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 243:29]
  wire [63:0] fpArbiter_io_out_3_bits_data; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_redirectValid; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 243:29]
  wire  fpArbiter_io_out_3_bits_debug_isPerfCnt; // @[WbArbiter.scala 243:29]
  wire  difftest_io_clock; // @[WbArbiter.scala 307:30]
  wire [7:0] difftest_io_coreid; // @[WbArbiter.scala 307:30]
  wire  difftest_io_valid; // @[WbArbiter.scala 307:30]
  wire [31:0] difftest_io_dest; // @[WbArbiter.scala 307:30]
  wire [63:0] difftest_io_data; // @[WbArbiter.scala 307:30]
  wire  difftest_1_io_clock; // @[WbArbiter.scala 307:30]
  wire [7:0] difftest_1_io_coreid; // @[WbArbiter.scala 307:30]
  wire  difftest_1_io_valid; // @[WbArbiter.scala 307:30]
  wire [31:0] difftest_1_io_dest; // @[WbArbiter.scala 307:30]
  wire [63:0] difftest_1_io_data; // @[WbArbiter.scala 307:30]
  wire  difftest_2_io_clock; // @[WbArbiter.scala 307:30]
  wire [7:0] difftest_2_io_coreid; // @[WbArbiter.scala 307:30]
  wire  difftest_2_io_valid; // @[WbArbiter.scala 307:30]
  wire [31:0] difftest_2_io_dest; // @[WbArbiter.scala 307:30]
  wire [63:0] difftest_2_io_data; // @[WbArbiter.scala 307:30]
  wire  difftest_3_io_clock; // @[WbArbiter.scala 307:30]
  wire [7:0] difftest_3_io_coreid; // @[WbArbiter.scala 307:30]
  wire  difftest_3_io_valid; // @[WbArbiter.scala 307:30]
  wire [31:0] difftest_3_io_dest; // @[WbArbiter.scala 307:30]
  wire [63:0] difftest_3_io_data; // @[WbArbiter.scala 307:30]
  wire  difftest_4_io_clock; // @[WbArbiter.scala 307:30]
  wire [7:0] difftest_4_io_coreid; // @[WbArbiter.scala 307:30]
  wire  difftest_4_io_valid; // @[WbArbiter.scala 307:30]
  wire [31:0] difftest_4_io_dest; // @[WbArbiter.scala 307:30]
  wire [63:0] difftest_4_io_data; // @[WbArbiter.scala 307:30]
  wire  difftest_5_io_clock; // @[WbArbiter.scala 328:30]
  wire [7:0] difftest_5_io_coreid; // @[WbArbiter.scala 328:30]
  wire  difftest_5_io_valid; // @[WbArbiter.scala 328:30]
  wire [31:0] difftest_5_io_dest; // @[WbArbiter.scala 328:30]
  wire [63:0] difftest_5_io_data; // @[WbArbiter.scala 328:30]
  wire  difftest_6_io_clock; // @[WbArbiter.scala 328:30]
  wire [7:0] difftest_6_io_coreid; // @[WbArbiter.scala 328:30]
  wire  difftest_6_io_valid; // @[WbArbiter.scala 328:30]
  wire [31:0] difftest_6_io_dest; // @[WbArbiter.scala 328:30]
  wire [63:0] difftest_6_io_data; // @[WbArbiter.scala 328:30]
  wire  difftest_7_io_clock; // @[WbArbiter.scala 328:30]
  wire [7:0] difftest_7_io_coreid; // @[WbArbiter.scala 328:30]
  wire  difftest_7_io_valid; // @[WbArbiter.scala 328:30]
  wire [31:0] difftest_7_io_dest; // @[WbArbiter.scala 328:30]
  wire [63:0] difftest_7_io_data; // @[WbArbiter.scala 328:30]
  wire  difftest_8_io_clock; // @[WbArbiter.scala 328:30]
  wire [7:0] difftest_8_io_coreid; // @[WbArbiter.scala 328:30]
  wire  difftest_8_io_valid; // @[WbArbiter.scala 328:30]
  wire [31:0] difftest_8_io_dest; // @[WbArbiter.scala 328:30]
  wire [63:0] difftest_8_io_data; // @[WbArbiter.scala 328:30]
  wire  _GEN_3 = intArbiter_io_in_3_valid ? intArbiter_io_in_3_ready : 1'h1; // @[WbArbiter.scala 301:24 302:18 293:27]
  wire  _GEN_4 = intArbiter_io_in_4_valid ? intArbiter_io_in_4_ready : 1'h1; // @[WbArbiter.scala 301:24 302:18 293:27]
  WbArbiter intArbiter ( // @[WbArbiter.scala 237:30]
    .clock(intArbiter_clock),
    .reset(intArbiter_reset),
    .io_redirect_valid(intArbiter_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(intArbiter_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(intArbiter_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(intArbiter_io_redirect_bits_level),
    .io_in_0_valid(intArbiter_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_rfWen(intArbiter_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_pdest(intArbiter_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(intArbiter_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(intArbiter_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(intArbiter_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(intArbiter_io_in_0_bits_uop_lqIdx_value),
    .io_in_0_bits_data(intArbiter_io_in_0_bits_data),
    .io_in_0_bits_redirectValid(intArbiter_io_in_0_bits_redirectValid),
    .io_in_0_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred),
    .io_in_1_valid(intArbiter_io_in_1_valid),
    .io_in_1_bits_uop_ctrl_rfWen(intArbiter_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_pdest(intArbiter_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(intArbiter_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(intArbiter_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(intArbiter_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(intArbiter_io_in_1_bits_uop_lqIdx_value),
    .io_in_1_bits_data(intArbiter_io_in_1_bits_data),
    .io_in_1_bits_redirectValid(intArbiter_io_in_1_bits_redirectValid),
    .io_in_1_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred),
    .io_in_2_valid(intArbiter_io_in_2_valid),
    .io_in_2_bits_uop_ctrl_rfWen(intArbiter_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(intArbiter_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(intArbiter_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(intArbiter_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(intArbiter_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_uop_lqIdx_flag(intArbiter_io_in_2_bits_uop_lqIdx_flag),
    .io_in_2_bits_uop_lqIdx_value(intArbiter_io_in_2_bits_uop_lqIdx_value),
    .io_in_2_bits_data(intArbiter_io_in_2_bits_data),
    .io_in_3_ready(intArbiter_io_in_3_ready),
    .io_in_3_valid(intArbiter_io_in_3_valid),
    .io_in_3_bits_uop_cf_exceptionVec_2(intArbiter_io_in_3_bits_uop_cf_exceptionVec_2),
    .io_in_3_bits_uop_cf_exceptionVec_3(intArbiter_io_in_3_bits_uop_cf_exceptionVec_3),
    .io_in_3_bits_uop_cf_exceptionVec_8(intArbiter_io_in_3_bits_uop_cf_exceptionVec_8),
    .io_in_3_bits_uop_cf_exceptionVec_9(intArbiter_io_in_3_bits_uop_cf_exceptionVec_9),
    .io_in_3_bits_uop_cf_exceptionVec_11(intArbiter_io_in_3_bits_uop_cf_exceptionVec_11),
    .io_in_3_bits_uop_ctrl_rfWen(intArbiter_io_in_3_bits_uop_ctrl_rfWen),
    .io_in_3_bits_uop_ctrl_fpWen(intArbiter_io_in_3_bits_uop_ctrl_fpWen),
    .io_in_3_bits_uop_ctrl_flushPipe(intArbiter_io_in_3_bits_uop_ctrl_flushPipe),
    .io_in_3_bits_uop_pdest(intArbiter_io_in_3_bits_uop_pdest),
    .io_in_3_bits_uop_robIdx_flag(intArbiter_io_in_3_bits_uop_robIdx_flag),
    .io_in_3_bits_uop_robIdx_value(intArbiter_io_in_3_bits_uop_robIdx_value),
    .io_in_3_bits_uop_lqIdx_flag(intArbiter_io_in_3_bits_uop_lqIdx_flag),
    .io_in_3_bits_uop_lqIdx_value(intArbiter_io_in_3_bits_uop_lqIdx_value),
    .io_in_3_bits_data(intArbiter_io_in_3_bits_data),
    .io_in_3_bits_redirectValid(intArbiter_io_in_3_bits_redirectValid),
    .io_in_3_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred),
    .io_in_3_bits_debug_isPerfCnt(intArbiter_io_in_3_bits_debug_isPerfCnt),
    .io_in_4_ready(intArbiter_io_in_4_ready),
    .io_in_4_valid(intArbiter_io_in_4_valid),
    .io_in_4_bits_uop_ctrl_rfWen(intArbiter_io_in_4_bits_uop_ctrl_rfWen),
    .io_in_4_bits_uop_ctrl_fpWen(intArbiter_io_in_4_bits_uop_ctrl_fpWen),
    .io_in_4_bits_uop_pdest(intArbiter_io_in_4_bits_uop_pdest),
    .io_in_4_bits_uop_robIdx_flag(intArbiter_io_in_4_bits_uop_robIdx_flag),
    .io_in_4_bits_uop_robIdx_value(intArbiter_io_in_4_bits_uop_robIdx_value),
    .io_in_4_bits_uop_lqIdx_flag(intArbiter_io_in_4_bits_uop_lqIdx_flag),
    .io_in_4_bits_uop_lqIdx_value(intArbiter_io_in_4_bits_uop_lqIdx_value),
    .io_in_4_bits_data(intArbiter_io_in_4_bits_data),
    .io_in_5_valid(intArbiter_io_in_5_valid),
    .io_in_5_bits_uop_cf_exceptionVec_4(intArbiter_io_in_5_bits_uop_cf_exceptionVec_4),
    .io_in_5_bits_uop_cf_exceptionVec_5(intArbiter_io_in_5_bits_uop_cf_exceptionVec_5),
    .io_in_5_bits_uop_cf_exceptionVec_13(intArbiter_io_in_5_bits_uop_cf_exceptionVec_13),
    .io_in_5_bits_uop_cf_trigger_backendHit_0(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_0),
    .io_in_5_bits_uop_cf_trigger_backendHit_1(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_1),
    .io_in_5_bits_uop_cf_trigger_backendHit_2(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_2),
    .io_in_5_bits_uop_cf_trigger_backendHit_3(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_3),
    .io_in_5_bits_uop_cf_trigger_backendHit_4(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_4),
    .io_in_5_bits_uop_cf_trigger_backendHit_5(intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_5),
    .io_in_5_bits_uop_ctrl_rfWen(intArbiter_io_in_5_bits_uop_ctrl_rfWen),
    .io_in_5_bits_uop_ctrl_fpWen(intArbiter_io_in_5_bits_uop_ctrl_fpWen),
    .io_in_5_bits_uop_ctrl_replayInst(intArbiter_io_in_5_bits_uop_ctrl_replayInst),
    .io_in_5_bits_uop_pdest(intArbiter_io_in_5_bits_uop_pdest),
    .io_in_5_bits_uop_robIdx_flag(intArbiter_io_in_5_bits_uop_robIdx_flag),
    .io_in_5_bits_uop_robIdx_value(intArbiter_io_in_5_bits_uop_robIdx_value),
    .io_in_5_bits_uop_lqIdx_flag(intArbiter_io_in_5_bits_uop_lqIdx_flag),
    .io_in_5_bits_uop_lqIdx_value(intArbiter_io_in_5_bits_uop_lqIdx_value),
    .io_in_5_bits_data(intArbiter_io_in_5_bits_data),
    .io_in_5_bits_debug_isMMIO(intArbiter_io_in_5_bits_debug_isMMIO),
    .io_in_6_valid(intArbiter_io_in_6_valid),
    .io_in_6_bits_uop_cf_exceptionVec_4(intArbiter_io_in_6_bits_uop_cf_exceptionVec_4),
    .io_in_6_bits_uop_cf_exceptionVec_5(intArbiter_io_in_6_bits_uop_cf_exceptionVec_5),
    .io_in_6_bits_uop_cf_exceptionVec_13(intArbiter_io_in_6_bits_uop_cf_exceptionVec_13),
    .io_in_6_bits_uop_cf_trigger_backendHit_0(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0),
    .io_in_6_bits_uop_cf_trigger_backendHit_1(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1),
    .io_in_6_bits_uop_cf_trigger_backendHit_2(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2),
    .io_in_6_bits_uop_cf_trigger_backendHit_3(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3),
    .io_in_6_bits_uop_cf_trigger_backendHit_4(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4),
    .io_in_6_bits_uop_cf_trigger_backendHit_5(intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5),
    .io_in_6_bits_uop_ctrl_rfWen(intArbiter_io_in_6_bits_uop_ctrl_rfWen),
    .io_in_6_bits_uop_ctrl_fpWen(intArbiter_io_in_6_bits_uop_ctrl_fpWen),
    .io_in_6_bits_uop_ctrl_replayInst(intArbiter_io_in_6_bits_uop_ctrl_replayInst),
    .io_in_6_bits_uop_pdest(intArbiter_io_in_6_bits_uop_pdest),
    .io_in_6_bits_uop_robIdx_flag(intArbiter_io_in_6_bits_uop_robIdx_flag),
    .io_in_6_bits_uop_robIdx_value(intArbiter_io_in_6_bits_uop_robIdx_value),
    .io_in_6_bits_uop_lqIdx_flag(intArbiter_io_in_6_bits_uop_lqIdx_flag),
    .io_in_6_bits_uop_lqIdx_value(intArbiter_io_in_6_bits_uop_lqIdx_value),
    .io_in_6_bits_data(intArbiter_io_in_6_bits_data),
    .io_in_6_bits_debug_isMMIO(intArbiter_io_in_6_bits_debug_isMMIO),
    .io_out_0_valid(intArbiter_io_out_0_valid),
    .io_out_0_bits_uop_ctrl_rfWen(intArbiter_io_out_0_bits_uop_ctrl_rfWen),
    .io_out_0_bits_uop_pdest(intArbiter_io_out_0_bits_uop_pdest),
    .io_out_0_bits_uop_robIdx_flag(intArbiter_io_out_0_bits_uop_robIdx_flag),
    .io_out_0_bits_uop_robIdx_value(intArbiter_io_out_0_bits_uop_robIdx_value),
    .io_out_0_bits_uop_lqIdx_flag(intArbiter_io_out_0_bits_uop_lqIdx_flag),
    .io_out_0_bits_uop_lqIdx_value(intArbiter_io_out_0_bits_uop_lqIdx_value),
    .io_out_0_bits_data(intArbiter_io_out_0_bits_data),
    .io_out_0_bits_redirectValid(intArbiter_io_out_0_bits_redirectValid),
    .io_out_0_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred),
    .io_out_1_valid(intArbiter_io_out_1_valid),
    .io_out_1_bits_uop_ctrl_rfWen(intArbiter_io_out_1_bits_uop_ctrl_rfWen),
    .io_out_1_bits_uop_pdest(intArbiter_io_out_1_bits_uop_pdest),
    .io_out_1_bits_uop_robIdx_flag(intArbiter_io_out_1_bits_uop_robIdx_flag),
    .io_out_1_bits_uop_robIdx_value(intArbiter_io_out_1_bits_uop_robIdx_value),
    .io_out_1_bits_uop_lqIdx_flag(intArbiter_io_out_1_bits_uop_lqIdx_flag),
    .io_out_1_bits_uop_lqIdx_value(intArbiter_io_out_1_bits_uop_lqIdx_value),
    .io_out_1_bits_data(intArbiter_io_out_1_bits_data),
    .io_out_1_bits_redirectValid(intArbiter_io_out_1_bits_redirectValid),
    .io_out_1_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred),
    .io_out_2_valid(intArbiter_io_out_2_valid),
    .io_out_2_bits_uop_cf_exceptionVec_4(intArbiter_io_out_2_bits_uop_cf_exceptionVec_4),
    .io_out_2_bits_uop_cf_exceptionVec_5(intArbiter_io_out_2_bits_uop_cf_exceptionVec_5),
    .io_out_2_bits_uop_cf_exceptionVec_13(intArbiter_io_out_2_bits_uop_cf_exceptionVec_13),
    .io_out_2_bits_uop_cf_trigger_backendHit_0(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0),
    .io_out_2_bits_uop_cf_trigger_backendHit_1(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1),
    .io_out_2_bits_uop_cf_trigger_backendHit_2(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2),
    .io_out_2_bits_uop_cf_trigger_backendHit_3(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3),
    .io_out_2_bits_uop_cf_trigger_backendHit_4(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4),
    .io_out_2_bits_uop_cf_trigger_backendHit_5(intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5),
    .io_out_2_bits_uop_ctrl_rfWen(intArbiter_io_out_2_bits_uop_ctrl_rfWen),
    .io_out_2_bits_uop_ctrl_fpWen(intArbiter_io_out_2_bits_uop_ctrl_fpWen),
    .io_out_2_bits_uop_ctrl_replayInst(intArbiter_io_out_2_bits_uop_ctrl_replayInst),
    .io_out_2_bits_uop_pdest(intArbiter_io_out_2_bits_uop_pdest),
    .io_out_2_bits_uop_robIdx_flag(intArbiter_io_out_2_bits_uop_robIdx_flag),
    .io_out_2_bits_uop_robIdx_value(intArbiter_io_out_2_bits_uop_robIdx_value),
    .io_out_2_bits_uop_lqIdx_flag(intArbiter_io_out_2_bits_uop_lqIdx_flag),
    .io_out_2_bits_uop_lqIdx_value(intArbiter_io_out_2_bits_uop_lqIdx_value),
    .io_out_2_bits_data(intArbiter_io_out_2_bits_data),
    .io_out_2_bits_debug_isMMIO(intArbiter_io_out_2_bits_debug_isMMIO),
    .io_out_3_valid(intArbiter_io_out_3_valid),
    .io_out_3_bits_uop_cf_exceptionVec_4(intArbiter_io_out_3_bits_uop_cf_exceptionVec_4),
    .io_out_3_bits_uop_cf_exceptionVec_5(intArbiter_io_out_3_bits_uop_cf_exceptionVec_5),
    .io_out_3_bits_uop_cf_exceptionVec_13(intArbiter_io_out_3_bits_uop_cf_exceptionVec_13),
    .io_out_3_bits_uop_cf_trigger_backendHit_0(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0),
    .io_out_3_bits_uop_cf_trigger_backendHit_1(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1),
    .io_out_3_bits_uop_cf_trigger_backendHit_2(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2),
    .io_out_3_bits_uop_cf_trigger_backendHit_3(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3),
    .io_out_3_bits_uop_cf_trigger_backendHit_4(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4),
    .io_out_3_bits_uop_cf_trigger_backendHit_5(intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5),
    .io_out_3_bits_uop_ctrl_rfWen(intArbiter_io_out_3_bits_uop_ctrl_rfWen),
    .io_out_3_bits_uop_ctrl_fpWen(intArbiter_io_out_3_bits_uop_ctrl_fpWen),
    .io_out_3_bits_uop_ctrl_replayInst(intArbiter_io_out_3_bits_uop_ctrl_replayInst),
    .io_out_3_bits_uop_pdest(intArbiter_io_out_3_bits_uop_pdest),
    .io_out_3_bits_uop_robIdx_flag(intArbiter_io_out_3_bits_uop_robIdx_flag),
    .io_out_3_bits_uop_robIdx_value(intArbiter_io_out_3_bits_uop_robIdx_value),
    .io_out_3_bits_uop_lqIdx_flag(intArbiter_io_out_3_bits_uop_lqIdx_flag),
    .io_out_3_bits_uop_lqIdx_value(intArbiter_io_out_3_bits_uop_lqIdx_value),
    .io_out_3_bits_data(intArbiter_io_out_3_bits_data),
    .io_out_3_bits_debug_isMMIO(intArbiter_io_out_3_bits_debug_isMMIO),
    .io_out_4_valid(intArbiter_io_out_4_valid),
    .io_out_4_bits_uop_cf_exceptionVec_2(intArbiter_io_out_4_bits_uop_cf_exceptionVec_2),
    .io_out_4_bits_uop_cf_exceptionVec_3(intArbiter_io_out_4_bits_uop_cf_exceptionVec_3),
    .io_out_4_bits_uop_cf_exceptionVec_8(intArbiter_io_out_4_bits_uop_cf_exceptionVec_8),
    .io_out_4_bits_uop_cf_exceptionVec_9(intArbiter_io_out_4_bits_uop_cf_exceptionVec_9),
    .io_out_4_bits_uop_cf_exceptionVec_11(intArbiter_io_out_4_bits_uop_cf_exceptionVec_11),
    .io_out_4_bits_uop_ctrl_rfWen(intArbiter_io_out_4_bits_uop_ctrl_rfWen),
    .io_out_4_bits_uop_ctrl_fpWen(intArbiter_io_out_4_bits_uop_ctrl_fpWen),
    .io_out_4_bits_uop_ctrl_flushPipe(intArbiter_io_out_4_bits_uop_ctrl_flushPipe),
    .io_out_4_bits_uop_pdest(intArbiter_io_out_4_bits_uop_pdest),
    .io_out_4_bits_uop_robIdx_flag(intArbiter_io_out_4_bits_uop_robIdx_flag),
    .io_out_4_bits_uop_robIdx_value(intArbiter_io_out_4_bits_uop_robIdx_value),
    .io_out_4_bits_uop_lqIdx_flag(intArbiter_io_out_4_bits_uop_lqIdx_flag),
    .io_out_4_bits_uop_lqIdx_value(intArbiter_io_out_4_bits_uop_lqIdx_value),
    .io_out_4_bits_data(intArbiter_io_out_4_bits_data),
    .io_out_4_bits_redirectValid(intArbiter_io_out_4_bits_redirectValid),
    .io_out_4_bits_redirect_cfiUpdate_isMisPred(intArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred),
    .io_out_4_bits_debug_isPerfCnt(intArbiter_io_out_4_bits_debug_isPerfCnt)
  );
  WbArbiter_1 fpArbiter ( // @[WbArbiter.scala 243:29]
    .clock(fpArbiter_clock),
    .reset(fpArbiter_reset),
    .io_redirect_valid(fpArbiter_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(fpArbiter_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(fpArbiter_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(fpArbiter_io_redirect_bits_level),
    .io_in_0_ready(fpArbiter_io_in_0_ready),
    .io_in_0_valid(fpArbiter_io_in_0_valid),
    .io_in_0_bits_uop_cf_exceptionVec_2(fpArbiter_io_in_0_bits_uop_cf_exceptionVec_2),
    .io_in_0_bits_uop_cf_exceptionVec_3(fpArbiter_io_in_0_bits_uop_cf_exceptionVec_3),
    .io_in_0_bits_uop_cf_exceptionVec_8(fpArbiter_io_in_0_bits_uop_cf_exceptionVec_8),
    .io_in_0_bits_uop_cf_exceptionVec_9(fpArbiter_io_in_0_bits_uop_cf_exceptionVec_9),
    .io_in_0_bits_uop_cf_exceptionVec_11(fpArbiter_io_in_0_bits_uop_cf_exceptionVec_11),
    .io_in_0_bits_uop_ctrl_rfWen(fpArbiter_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(fpArbiter_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_ctrl_flushPipe(fpArbiter_io_in_0_bits_uop_ctrl_flushPipe),
    .io_in_0_bits_uop_pdest(fpArbiter_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(fpArbiter_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(fpArbiter_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(fpArbiter_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(fpArbiter_io_in_0_bits_uop_lqIdx_value),
    .io_in_0_bits_data(fpArbiter_io_in_0_bits_data),
    .io_in_0_bits_redirectValid(fpArbiter_io_in_0_bits_redirectValid),
    .io_in_0_bits_redirect_cfiUpdate_isMisPred(fpArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred),
    .io_in_0_bits_debug_isPerfCnt(fpArbiter_io_in_0_bits_debug_isPerfCnt),
    .io_in_1_valid(fpArbiter_io_in_1_valid),
    .io_in_1_bits_uop_cf_trigger_backendHit_0(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_0),
    .io_in_1_bits_uop_cf_trigger_backendHit_1(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_1),
    .io_in_1_bits_uop_cf_trigger_backendHit_2(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_2),
    .io_in_1_bits_uop_cf_trigger_backendHit_3(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_3),
    .io_in_1_bits_uop_cf_trigger_backendHit_4(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_4),
    .io_in_1_bits_uop_cf_trigger_backendHit_5(fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_5),
    .io_in_1_bits_uop_ctrl_rfWen(fpArbiter_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(fpArbiter_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_pdest(fpArbiter_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(fpArbiter_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(fpArbiter_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(fpArbiter_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(fpArbiter_io_in_1_bits_uop_lqIdx_value),
    .io_in_1_bits_data(fpArbiter_io_in_1_bits_data),
    .io_in_2_valid(fpArbiter_io_in_2_valid),
    .io_in_2_bits_uop_ctrl_rfWen(fpArbiter_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(fpArbiter_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(fpArbiter_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(fpArbiter_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(fpArbiter_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_uop_lqIdx_flag(fpArbiter_io_in_2_bits_uop_lqIdx_flag),
    .io_in_2_bits_uop_lqIdx_value(fpArbiter_io_in_2_bits_uop_lqIdx_value),
    .io_in_2_bits_data(fpArbiter_io_in_2_bits_data),
    .io_in_3_valid(fpArbiter_io_in_3_valid),
    .io_in_3_bits_uop_ctrl_rfWen(fpArbiter_io_in_3_bits_uop_ctrl_rfWen),
    .io_in_3_bits_uop_ctrl_fpWen(fpArbiter_io_in_3_bits_uop_ctrl_fpWen),
    .io_in_3_bits_uop_pdest(fpArbiter_io_in_3_bits_uop_pdest),
    .io_in_3_bits_uop_robIdx_flag(fpArbiter_io_in_3_bits_uop_robIdx_flag),
    .io_in_3_bits_uop_robIdx_value(fpArbiter_io_in_3_bits_uop_robIdx_value),
    .io_in_3_bits_data(fpArbiter_io_in_3_bits_data),
    .io_in_4_valid(fpArbiter_io_in_4_valid),
    .io_in_4_bits_uop_ctrl_rfWen(fpArbiter_io_in_4_bits_uop_ctrl_rfWen),
    .io_in_4_bits_uop_ctrl_fpWen(fpArbiter_io_in_4_bits_uop_ctrl_fpWen),
    .io_in_4_bits_uop_pdest(fpArbiter_io_in_4_bits_uop_pdest),
    .io_in_4_bits_uop_robIdx_flag(fpArbiter_io_in_4_bits_uop_robIdx_flag),
    .io_in_4_bits_uop_robIdx_value(fpArbiter_io_in_4_bits_uop_robIdx_value),
    .io_in_4_bits_data(fpArbiter_io_in_4_bits_data),
    .io_out_0_valid(fpArbiter_io_out_0_valid),
    .io_out_0_bits_uop_cf_trigger_backendHit_0(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_0),
    .io_out_0_bits_uop_cf_trigger_backendHit_1(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_1),
    .io_out_0_bits_uop_cf_trigger_backendHit_2(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_2),
    .io_out_0_bits_uop_cf_trigger_backendHit_3(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_3),
    .io_out_0_bits_uop_cf_trigger_backendHit_4(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_4),
    .io_out_0_bits_uop_cf_trigger_backendHit_5(fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_5),
    .io_out_0_bits_uop_ctrl_rfWen(fpArbiter_io_out_0_bits_uop_ctrl_rfWen),
    .io_out_0_bits_uop_ctrl_fpWen(fpArbiter_io_out_0_bits_uop_ctrl_fpWen),
    .io_out_0_bits_uop_pdest(fpArbiter_io_out_0_bits_uop_pdest),
    .io_out_0_bits_uop_robIdx_flag(fpArbiter_io_out_0_bits_uop_robIdx_flag),
    .io_out_0_bits_uop_robIdx_value(fpArbiter_io_out_0_bits_uop_robIdx_value),
    .io_out_0_bits_uop_lqIdx_flag(fpArbiter_io_out_0_bits_uop_lqIdx_flag),
    .io_out_0_bits_uop_lqIdx_value(fpArbiter_io_out_0_bits_uop_lqIdx_value),
    .io_out_0_bits_data(fpArbiter_io_out_0_bits_data),
    .io_out_1_valid(fpArbiter_io_out_1_valid),
    .io_out_1_bits_uop_ctrl_rfWen(fpArbiter_io_out_1_bits_uop_ctrl_rfWen),
    .io_out_1_bits_uop_ctrl_fpWen(fpArbiter_io_out_1_bits_uop_ctrl_fpWen),
    .io_out_1_bits_uop_pdest(fpArbiter_io_out_1_bits_uop_pdest),
    .io_out_1_bits_data(fpArbiter_io_out_1_bits_data),
    .io_out_2_valid(fpArbiter_io_out_2_valid),
    .io_out_2_bits_uop_ctrl_rfWen(fpArbiter_io_out_2_bits_uop_ctrl_rfWen),
    .io_out_2_bits_uop_ctrl_fpWen(fpArbiter_io_out_2_bits_uop_ctrl_fpWen),
    .io_out_2_bits_uop_pdest(fpArbiter_io_out_2_bits_uop_pdest),
    .io_out_2_bits_data(fpArbiter_io_out_2_bits_data),
    .io_out_3_valid(fpArbiter_io_out_3_valid),
    .io_out_3_bits_uop_cf_exceptionVec_2(fpArbiter_io_out_3_bits_uop_cf_exceptionVec_2),
    .io_out_3_bits_uop_cf_exceptionVec_3(fpArbiter_io_out_3_bits_uop_cf_exceptionVec_3),
    .io_out_3_bits_uop_cf_exceptionVec_8(fpArbiter_io_out_3_bits_uop_cf_exceptionVec_8),
    .io_out_3_bits_uop_cf_exceptionVec_9(fpArbiter_io_out_3_bits_uop_cf_exceptionVec_9),
    .io_out_3_bits_uop_cf_exceptionVec_11(fpArbiter_io_out_3_bits_uop_cf_exceptionVec_11),
    .io_out_3_bits_uop_ctrl_rfWen(fpArbiter_io_out_3_bits_uop_ctrl_rfWen),
    .io_out_3_bits_uop_ctrl_fpWen(fpArbiter_io_out_3_bits_uop_ctrl_fpWen),
    .io_out_3_bits_uop_ctrl_flushPipe(fpArbiter_io_out_3_bits_uop_ctrl_flushPipe),
    .io_out_3_bits_uop_pdest(fpArbiter_io_out_3_bits_uop_pdest),
    .io_out_3_bits_uop_robIdx_flag(fpArbiter_io_out_3_bits_uop_robIdx_flag),
    .io_out_3_bits_uop_robIdx_value(fpArbiter_io_out_3_bits_uop_robIdx_value),
    .io_out_3_bits_uop_lqIdx_flag(fpArbiter_io_out_3_bits_uop_lqIdx_flag),
    .io_out_3_bits_uop_lqIdx_value(fpArbiter_io_out_3_bits_uop_lqIdx_value),
    .io_out_3_bits_data(fpArbiter_io_out_3_bits_data),
    .io_out_3_bits_redirectValid(fpArbiter_io_out_3_bits_redirectValid),
    .io_out_3_bits_redirect_cfiUpdate_isMisPred(fpArbiter_io_out_3_bits_redirect_cfiUpdate_isMisPred),
    .io_out_3_bits_debug_isPerfCnt(fpArbiter_io_out_3_bits_debug_isPerfCnt)
  );
`ifndef SYNTHESIS
  DifftestIntWriteback difftest ( // @[WbArbiter.scala 307:30]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_valid(difftest_io_valid),
    .io_dest(difftest_io_dest),
    .io_data(difftest_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestIntWriteback difftest_1 ( // @[WbArbiter.scala 307:30]
    .io_clock(difftest_1_io_clock),
    .io_coreid(difftest_1_io_coreid),
    .io_valid(difftest_1_io_valid),
    .io_dest(difftest_1_io_dest),
    .io_data(difftest_1_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestIntWriteback difftest_2 ( // @[WbArbiter.scala 307:30]
    .io_clock(difftest_2_io_clock),
    .io_coreid(difftest_2_io_coreid),
    .io_valid(difftest_2_io_valid),
    .io_dest(difftest_2_io_dest),
    .io_data(difftest_2_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestIntWriteback difftest_3 ( // @[WbArbiter.scala 307:30]
    .io_clock(difftest_3_io_clock),
    .io_coreid(difftest_3_io_coreid),
    .io_valid(difftest_3_io_valid),
    .io_dest(difftest_3_io_dest),
    .io_data(difftest_3_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestIntWriteback difftest_4 ( // @[WbArbiter.scala 307:30]
    .io_clock(difftest_4_io_clock),
    .io_coreid(difftest_4_io_coreid),
    .io_valid(difftest_4_io_valid),
    .io_dest(difftest_4_io_dest),
    .io_data(difftest_4_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestFpWriteback difftest_5 ( // @[WbArbiter.scala 328:30]
    .io_clock(difftest_5_io_clock),
    .io_coreid(difftest_5_io_coreid),
    .io_valid(difftest_5_io_valid),
    .io_dest(difftest_5_io_dest),
    .io_data(difftest_5_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestFpWriteback difftest_6 ( // @[WbArbiter.scala 328:30]
    .io_clock(difftest_6_io_clock),
    .io_coreid(difftest_6_io_coreid),
    .io_valid(difftest_6_io_valid),
    .io_dest(difftest_6_io_dest),
    .io_data(difftest_6_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestFpWriteback difftest_7 ( // @[WbArbiter.scala 328:30]
    .io_clock(difftest_7_io_clock),
    .io_coreid(difftest_7_io_coreid),
    .io_valid(difftest_7_io_valid),
    .io_dest(difftest_7_io_dest),
    .io_data(difftest_7_io_data)
  );
`endif
`ifndef SYNTHESIS
  DifftestFpWriteback difftest_8 ( // @[WbArbiter.scala 328:30]
    .io_clock(difftest_8_io_clock),
    .io_coreid(difftest_8_io_coreid),
    .io_valid(difftest_8_io_valid),
    .io_dest(difftest_8_io_dest),
    .io_data(difftest_8_io_data)
  );
`endif
  assign io_in_3_ready = fpArbiter_io_in_0_valid ? fpArbiter_io_in_0_ready : _GEN_3; // @[WbArbiter.scala 322:24 323:18]
  assign io_in_5_ready = fpArbiter_io_in_2_valid | _GEN_4; // @[WbArbiter.scala 322:24 323:18]
  assign io_out_0_valid = intArbiter_io_out_0_valid; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_uop_robIdx_flag = intArbiter_io_out_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_uop_robIdx_value = intArbiter_io_out_0_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_uop_lqIdx_flag = intArbiter_io_out_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_uop_lqIdx_value = intArbiter_io_out_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_redirectValid = intArbiter_io_out_0_bits_redirectValid; // @[WbArbiter.scala 337:12]
  assign io_out_0_bits_redirect_cfiUpdate_isMisPred = intArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 337:12]
  assign io_out_1_valid = intArbiter_io_out_1_valid; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_uop_robIdx_flag = intArbiter_io_out_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_uop_robIdx_value = intArbiter_io_out_1_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_uop_lqIdx_flag = intArbiter_io_out_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_uop_lqIdx_value = intArbiter_io_out_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_redirectValid = intArbiter_io_out_1_bits_redirectValid; // @[WbArbiter.scala 337:12]
  assign io_out_1_bits_redirect_cfiUpdate_isMisPred = intArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 337:12]
  assign io_out_2_valid = intArbiter_io_out_2_valid; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_exceptionVec_4 = intArbiter_io_out_2_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_exceptionVec_5 = intArbiter_io_out_2_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_exceptionVec_13 = intArbiter_io_out_2_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_0 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_1 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_2 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_3 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_4 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_cf_trigger_backendHit_5 = intArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_ctrl_rfWen = intArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_ctrl_fpWen = intArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_ctrl_replayInst = intArbiter_io_out_2_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_pdest = intArbiter_io_out_2_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_robIdx_flag = intArbiter_io_out_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_robIdx_value = intArbiter_io_out_2_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_lqIdx_flag = intArbiter_io_out_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_uop_lqIdx_value = intArbiter_io_out_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_data = intArbiter_io_out_2_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_2_bits_debug_isMMIO = intArbiter_io_out_2_bits_debug_isMMIO; // @[WbArbiter.scala 337:12]
  assign io_out_3_valid = intArbiter_io_out_3_valid; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_exceptionVec_4 = intArbiter_io_out_3_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_exceptionVec_5 = intArbiter_io_out_3_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_exceptionVec_13 = intArbiter_io_out_3_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_0 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_1 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_2 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_3 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_4 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_cf_trigger_backendHit_5 = intArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_ctrl_rfWen = intArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_ctrl_fpWen = intArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_ctrl_replayInst = intArbiter_io_out_3_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_pdest = intArbiter_io_out_3_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_robIdx_flag = intArbiter_io_out_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_robIdx_value = intArbiter_io_out_3_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_lqIdx_flag = intArbiter_io_out_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_uop_lqIdx_value = intArbiter_io_out_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_data = intArbiter_io_out_3_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_3_bits_debug_isMMIO = intArbiter_io_out_3_bits_debug_isMMIO; // @[WbArbiter.scala 337:12]
  assign io_out_4_valid = intArbiter_io_out_4_valid; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_cf_exceptionVec_2 = intArbiter_io_out_4_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_cf_exceptionVec_3 = intArbiter_io_out_4_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_cf_exceptionVec_8 = intArbiter_io_out_4_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_cf_exceptionVec_9 = intArbiter_io_out_4_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_cf_exceptionVec_11 = intArbiter_io_out_4_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_ctrl_rfWen = intArbiter_io_out_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_ctrl_fpWen = intArbiter_io_out_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_ctrl_flushPipe = intArbiter_io_out_4_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_pdest = intArbiter_io_out_4_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_robIdx_flag = intArbiter_io_out_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_robIdx_value = intArbiter_io_out_4_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_lqIdx_flag = intArbiter_io_out_4_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_uop_lqIdx_value = intArbiter_io_out_4_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_data = intArbiter_io_out_4_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_redirectValid = intArbiter_io_out_4_bits_redirectValid; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_redirect_cfiUpdate_isMisPred = intArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 337:12]
  assign io_out_4_bits_debug_isPerfCnt = intArbiter_io_out_4_bits_debug_isPerfCnt; // @[WbArbiter.scala 337:12]
  assign io_out_5_valid = fpArbiter_io_out_0_valid; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_0 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_1 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_2 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_3 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_4 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_cf_trigger_backendHit_5 = fpArbiter_io_out_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_ctrl_rfWen = fpArbiter_io_out_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_ctrl_fpWen = fpArbiter_io_out_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_pdest = fpArbiter_io_out_0_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_robIdx_flag = fpArbiter_io_out_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_robIdx_value = fpArbiter_io_out_0_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_lqIdx_flag = fpArbiter_io_out_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_uop_lqIdx_value = fpArbiter_io_out_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_5_bits_data = fpArbiter_io_out_0_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_6_valid = fpArbiter_io_out_1_valid; // @[WbArbiter.scala 337:12]
  assign io_out_6_bits_uop_ctrl_rfWen = fpArbiter_io_out_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_6_bits_uop_ctrl_fpWen = fpArbiter_io_out_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_6_bits_uop_pdest = fpArbiter_io_out_1_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_6_bits_data = fpArbiter_io_out_1_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_7_valid = fpArbiter_io_out_2_valid; // @[WbArbiter.scala 337:12]
  assign io_out_7_bits_uop_ctrl_rfWen = fpArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_7_bits_uop_ctrl_fpWen = fpArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_7_bits_uop_pdest = fpArbiter_io_out_2_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_7_bits_data = fpArbiter_io_out_2_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_8_valid = fpArbiter_io_out_3_valid; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_cf_exceptionVec_2 = fpArbiter_io_out_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_cf_exceptionVec_3 = fpArbiter_io_out_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_cf_exceptionVec_8 = fpArbiter_io_out_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_cf_exceptionVec_9 = fpArbiter_io_out_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_cf_exceptionVec_11 = fpArbiter_io_out_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_ctrl_rfWen = fpArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_ctrl_fpWen = fpArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_ctrl_flushPipe = fpArbiter_io_out_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_pdest = fpArbiter_io_out_3_bits_uop_pdest; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_robIdx_flag = fpArbiter_io_out_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_robIdx_value = fpArbiter_io_out_3_bits_uop_robIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_lqIdx_flag = fpArbiter_io_out_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_uop_lqIdx_value = fpArbiter_io_out_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_data = fpArbiter_io_out_3_bits_data; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_redirectValid = fpArbiter_io_out_3_bits_redirectValid; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_redirect_cfiUpdate_isMisPred = fpArbiter_io_out_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 337:12]
  assign io_out_8_bits_debug_isPerfCnt = fpArbiter_io_out_3_bits_debug_isPerfCnt; // @[WbArbiter.scala 337:12]
  assign intArbiter_clock = clock;
  assign intArbiter_reset = reset;
  assign intArbiter_io_redirect_valid = io_redirect_valid; // @[WbArbiter.scala 295:35]
  assign intArbiter_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 295:35]
  assign intArbiter_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[WbArbiter.scala 295:35]
  assign intArbiter_io_redirect_bits_level = io_redirect_bits_level; // @[WbArbiter.scala 295:35]
  assign intArbiter_io_in_0_valid = io_in_0_valid; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_0_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_uop_lqIdx_flag = io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_uop_lqIdx_value = io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_data = io_in_0_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_redirectValid = io_in_0_bits_redirectValid; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred = io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_valid = io_in_1_valid; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_1_bits_uop_ctrl_rfWen = io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_uop_pdest = io_in_1_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_uop_robIdx_flag = io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_uop_robIdx_value = io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_uop_lqIdx_flag = io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_uop_lqIdx_value = io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_data = io_in_1_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_redirectValid = io_in_1_bits_redirectValid; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred = io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_valid = io_in_2_valid; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_2_bits_uop_ctrl_rfWen = io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_ctrl_fpWen = io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_pdest = io_in_2_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_robIdx_flag = io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_robIdx_value = io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_lqIdx_flag = io_in_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_uop_lqIdx_value = io_in_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_2_bits_data = io_in_2_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_valid = io_in_3_valid & ~io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_3_bits_uop_cf_exceptionVec_2 = io_in_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_cf_exceptionVec_3 = io_in_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_cf_exceptionVec_8 = io_in_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_cf_exceptionVec_9 = io_in_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_cf_exceptionVec_11 = io_in_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_ctrl_rfWen = io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_ctrl_fpWen = io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_ctrl_flushPipe = io_in_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_pdest = io_in_3_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_robIdx_flag = io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_robIdx_value = io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_lqIdx_flag = io_in_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_uop_lqIdx_value = io_in_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_data = io_in_3_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_redirectValid = io_in_3_bits_redirectValid; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred = io_in_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_3_bits_debug_isPerfCnt = io_in_3_bits_debug_isPerfCnt; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_valid = io_in_5_valid & ~io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_4_bits_uop_ctrl_rfWen = io_in_5_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_ctrl_fpWen = io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_pdest = io_in_5_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_robIdx_flag = io_in_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_robIdx_value = io_in_5_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_lqIdx_flag = io_in_5_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_uop_lqIdx_value = io_in_5_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_4_bits_data = io_in_5_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_valid = io_in_6_valid & ~io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_5_bits_uop_cf_exceptionVec_4 = io_in_6_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_exceptionVec_5 = io_in_6_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_exceptionVec_13 = io_in_6_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_0 = io_in_6_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_1 = io_in_6_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_2 = io_in_6_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_3 = io_in_6_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_4 = io_in_6_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_cf_trigger_backendHit_5 = io_in_6_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_ctrl_rfWen = io_in_6_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_ctrl_fpWen = io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_ctrl_replayInst = io_in_6_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_pdest = io_in_6_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_robIdx_flag = io_in_6_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_robIdx_value = io_in_6_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_lqIdx_flag = io_in_6_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_uop_lqIdx_value = io_in_6_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_data = io_in_6_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_5_bits_debug_isMMIO = io_in_6_bits_debug_isMMIO; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_valid = io_in_7_valid & ~io_in_7_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 299:29]
  assign intArbiter_io_in_6_bits_uop_cf_exceptionVec_4 = io_in_7_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_exceptionVec_5 = io_in_7_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_exceptionVec_13 = io_in_7_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0 = io_in_7_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1 = io_in_7_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2 = io_in_7_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3 = io_in_7_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4 = io_in_7_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5 = io_in_7_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_ctrl_rfWen = io_in_7_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_ctrl_fpWen = io_in_7_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_ctrl_replayInst = io_in_7_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_pdest = io_in_7_bits_uop_pdest; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_robIdx_flag = io_in_7_bits_uop_robIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_robIdx_value = io_in_7_bits_uop_robIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_lqIdx_flag = io_in_7_bits_uop_lqIdx_flag; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_uop_lqIdx_value = io_in_7_bits_uop_lqIdx_value; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_data = io_in_7_bits_data; // @[WbArbiter.scala 300:16]
  assign intArbiter_io_in_6_bits_debug_isMMIO = io_in_7_bits_debug_isMMIO; // @[WbArbiter.scala 300:16]
  assign fpArbiter_clock = clock;
  assign fpArbiter_reset = reset;
  assign fpArbiter_io_redirect_valid = io_redirect_valid; // @[WbArbiter.scala 316:34]
  assign fpArbiter_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 316:34]
  assign fpArbiter_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[WbArbiter.scala 316:34]
  assign fpArbiter_io_redirect_bits_level = io_redirect_bits_level; // @[WbArbiter.scala 316:34]
  assign fpArbiter_io_in_0_valid = io_in_3_valid & io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 320:29]
  assign fpArbiter_io_in_0_bits_uop_cf_exceptionVec_2 = io_in_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_cf_exceptionVec_3 = io_in_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_cf_exceptionVec_8 = io_in_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_cf_exceptionVec_9 = io_in_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_cf_exceptionVec_11 = io_in_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_ctrl_rfWen = io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_ctrl_fpWen = io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_ctrl_flushPipe = io_in_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_pdest = io_in_3_bits_uop_pdest; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_robIdx_flag = io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_robIdx_value = io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_lqIdx_flag = io_in_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_uop_lqIdx_value = io_in_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_data = io_in_3_bits_data; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_redirectValid = io_in_3_bits_redirectValid; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred = io_in_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_0_bits_debug_isPerfCnt = io_in_3_bits_debug_isPerfCnt; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_valid = io_in_4_valid; // @[WbArbiter.scala 320:29]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_0 = io_in_4_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_1 = io_in_4_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_2 = io_in_4_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_3 = io_in_4_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_4 = io_in_4_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_cf_trigger_backendHit_5 = io_in_4_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_ctrl_rfWen = io_in_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_ctrl_fpWen = io_in_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_pdest = io_in_4_bits_uop_pdest; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_robIdx_flag = io_in_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_robIdx_value = io_in_4_bits_uop_robIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_lqIdx_flag = io_in_4_bits_uop_lqIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_uop_lqIdx_value = io_in_4_bits_uop_lqIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_1_bits_data = io_in_4_bits_data; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_valid = io_in_5_valid & io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 320:29]
  assign fpArbiter_io_in_2_bits_uop_ctrl_rfWen = io_in_5_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_ctrl_fpWen = io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_pdest = io_in_5_bits_uop_pdest; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_robIdx_flag = io_in_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_robIdx_value = io_in_5_bits_uop_robIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_lqIdx_flag = io_in_5_bits_uop_lqIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_uop_lqIdx_value = io_in_5_bits_uop_lqIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_2_bits_data = io_in_5_bits_data; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_valid = io_in_6_valid & io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 320:29]
  assign fpArbiter_io_in_3_bits_uop_ctrl_rfWen = io_in_6_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_bits_uop_ctrl_fpWen = io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_bits_uop_pdest = io_in_6_bits_uop_pdest; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_bits_uop_robIdx_flag = io_in_6_bits_uop_robIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_bits_uop_robIdx_value = io_in_6_bits_uop_robIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_3_bits_data = io_in_6_bits_data; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_valid = io_in_7_valid & io_in_7_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 320:29]
  assign fpArbiter_io_in_4_bits_uop_ctrl_rfWen = io_in_7_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_bits_uop_ctrl_fpWen = io_in_7_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_bits_uop_pdest = io_in_7_bits_uop_pdest; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_bits_uop_robIdx_flag = io_in_7_bits_uop_robIdx_flag; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_bits_uop_robIdx_value = io_in_7_bits_uop_robIdx_value; // @[WbArbiter.scala 321:16]
  assign fpArbiter_io_in_4_bits_data = io_in_7_bits_data; // @[WbArbiter.scala 321:16]
  assign difftest_io_clock = clock; // @[WbArbiter.scala 308:27]
  assign difftest_io_coreid = io_hartId; // @[WbArbiter.scala 309:28]
  assign difftest_io_valid = intArbiter_io_out_0_valid & intArbiter_io_out_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 310:40]
  assign difftest_io_dest = {{26'd0}, intArbiter_io_out_0_bits_uop_pdest}; // @[WbArbiter.scala 311:26]
  assign difftest_io_data = intArbiter_io_out_0_bits_data; // @[WbArbiter.scala 312:26]
  assign difftest_1_io_clock = clock; // @[WbArbiter.scala 308:27]
  assign difftest_1_io_coreid = io_hartId; // @[WbArbiter.scala 309:28]
  assign difftest_1_io_valid = intArbiter_io_out_1_valid & intArbiter_io_out_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 310:40]
  assign difftest_1_io_dest = {{26'd0}, intArbiter_io_out_1_bits_uop_pdest}; // @[WbArbiter.scala 311:26]
  assign difftest_1_io_data = intArbiter_io_out_1_bits_data; // @[WbArbiter.scala 312:26]
  assign difftest_2_io_clock = clock; // @[WbArbiter.scala 308:27]
  assign difftest_2_io_coreid = io_hartId; // @[WbArbiter.scala 309:28]
  assign difftest_2_io_valid = intArbiter_io_out_2_valid & intArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 310:40]
  assign difftest_2_io_dest = {{26'd0}, intArbiter_io_out_2_bits_uop_pdest}; // @[WbArbiter.scala 311:26]
  assign difftest_2_io_data = intArbiter_io_out_2_bits_data; // @[WbArbiter.scala 312:26]
  assign difftest_3_io_clock = clock; // @[WbArbiter.scala 308:27]
  assign difftest_3_io_coreid = io_hartId; // @[WbArbiter.scala 309:28]
  assign difftest_3_io_valid = intArbiter_io_out_3_valid & intArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 310:40]
  assign difftest_3_io_dest = {{26'd0}, intArbiter_io_out_3_bits_uop_pdest}; // @[WbArbiter.scala 311:26]
  assign difftest_3_io_data = intArbiter_io_out_3_bits_data; // @[WbArbiter.scala 312:26]
  assign difftest_4_io_clock = clock; // @[WbArbiter.scala 308:27]
  assign difftest_4_io_coreid = io_hartId; // @[WbArbiter.scala 309:28]
  assign difftest_4_io_valid = intArbiter_io_out_4_valid & intArbiter_io_out_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 310:40]
  assign difftest_4_io_dest = {{26'd0}, intArbiter_io_out_4_bits_uop_pdest}; // @[WbArbiter.scala 311:26]
  assign difftest_4_io_data = intArbiter_io_out_4_bits_data; // @[WbArbiter.scala 312:26]
  assign difftest_5_io_clock = clock; // @[WbArbiter.scala 329:27]
  assign difftest_5_io_coreid = io_hartId; // @[WbArbiter.scala 330:28]
  assign difftest_5_io_valid = fpArbiter_io_out_0_valid; // @[WbArbiter.scala 331:27]
  assign difftest_5_io_dest = {{26'd0}, fpArbiter_io_out_0_bits_uop_pdest}; // @[WbArbiter.scala 332:26]
  assign difftest_5_io_data = fpArbiter_io_out_0_bits_data; // @[WbArbiter.scala 333:26]
  assign difftest_6_io_clock = clock; // @[WbArbiter.scala 329:27]
  assign difftest_6_io_coreid = io_hartId; // @[WbArbiter.scala 330:28]
  assign difftest_6_io_valid = fpArbiter_io_out_1_valid; // @[WbArbiter.scala 331:27]
  assign difftest_6_io_dest = {{26'd0}, fpArbiter_io_out_1_bits_uop_pdest}; // @[WbArbiter.scala 332:26]
  assign difftest_6_io_data = fpArbiter_io_out_1_bits_data; // @[WbArbiter.scala 333:26]
  assign difftest_7_io_clock = clock; // @[WbArbiter.scala 329:27]
  assign difftest_7_io_coreid = io_hartId; // @[WbArbiter.scala 330:28]
  assign difftest_7_io_valid = fpArbiter_io_out_2_valid; // @[WbArbiter.scala 331:27]
  assign difftest_7_io_dest = {{26'd0}, fpArbiter_io_out_2_bits_uop_pdest}; // @[WbArbiter.scala 332:26]
  assign difftest_7_io_data = fpArbiter_io_out_2_bits_data; // @[WbArbiter.scala 333:26]
  assign difftest_8_io_clock = clock; // @[WbArbiter.scala 329:27]
  assign difftest_8_io_coreid = io_hartId; // @[WbArbiter.scala 330:28]
  assign difftest_8_io_valid = fpArbiter_io_out_3_valid; // @[WbArbiter.scala 331:27]
  assign difftest_8_io_dest = {{26'd0}, fpArbiter_io_out_3_bits_uop_pdest}; // @[WbArbiter.scala 332:26]
  assign difftest_8_io_data = fpArbiter_io_out_3_bits_data; // @[WbArbiter.scala 333:26]
endmodule

