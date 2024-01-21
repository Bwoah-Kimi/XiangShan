module WbArbiter_1(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_cf_exceptionVec_2,
  input         io_in_0_bits_uop_cf_exceptionVec_3,
  input         io_in_0_bits_uop_cf_exceptionVec_8,
  input         io_in_0_bits_uop_cf_exceptionVec_9,
  input         io_in_0_bits_uop_cf_exceptionVec_11,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input         io_in_0_bits_uop_ctrl_fpWen,
  input         io_in_0_bits_uop_ctrl_flushPipe,
  input  [5:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [4:0]  io_in_0_bits_uop_robIdx_value,
  input         io_in_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_0_bits_uop_lqIdx_value,
  input  [63:0] io_in_0_bits_data,
  input         io_in_0_bits_redirectValid,
  input         io_in_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_0_bits_debug_isPerfCnt,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_cf_trigger_backendHit_0,
  input         io_in_1_bits_uop_cf_trigger_backendHit_1,
  input         io_in_1_bits_uop_cf_trigger_backendHit_2,
  input         io_in_1_bits_uop_cf_trigger_backendHit_3,
  input         io_in_1_bits_uop_cf_trigger_backendHit_4,
  input         io_in_1_bits_uop_cf_trigger_backendHit_5,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input         io_in_1_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [4:0]  io_in_1_bits_uop_robIdx_value,
  input         io_in_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_1_bits_uop_lqIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_2_valid,
  input         io_in_2_bits_uop_ctrl_rfWen,
  input         io_in_2_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_2_bits_uop_pdest,
  input         io_in_2_bits_uop_robIdx_flag,
  input  [4:0]  io_in_2_bits_uop_robIdx_value,
  input         io_in_2_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_2_bits_uop_lqIdx_value,
  input  [63:0] io_in_2_bits_data,
  input         io_in_3_valid,
  input         io_in_3_bits_uop_ctrl_rfWen,
  input         io_in_3_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_3_bits_uop_pdest,
  input         io_in_3_bits_uop_robIdx_flag,
  input  [4:0]  io_in_3_bits_uop_robIdx_value,
  input  [63:0] io_in_3_bits_data,
  input         io_in_4_valid,
  input         io_in_4_bits_uop_ctrl_rfWen,
  input         io_in_4_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_4_bits_uop_pdest,
  input         io_in_4_bits_uop_robIdx_flag,
  input  [4:0]  io_in_4_bits_uop_robIdx_value,
  input  [63:0] io_in_4_bits_data,
  output        io_out_0_valid,
  output        io_out_0_bits_uop_cf_trigger_backendHit_0,
  output        io_out_0_bits_uop_cf_trigger_backendHit_1,
  output        io_out_0_bits_uop_cf_trigger_backendHit_2,
  output        io_out_0_bits_uop_cf_trigger_backendHit_3,
  output        io_out_0_bits_uop_cf_trigger_backendHit_4,
  output        io_out_0_bits_uop_cf_trigger_backendHit_5,
  output        io_out_0_bits_uop_ctrl_rfWen,
  output        io_out_0_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_0_bits_uop_pdest,
  output        io_out_0_bits_uop_robIdx_flag,
  output [4:0]  io_out_0_bits_uop_robIdx_value,
  output        io_out_0_bits_uop_lqIdx_flag,
  output [3:0]  io_out_0_bits_uop_lqIdx_value,
  output [63:0] io_out_0_bits_data,
  output        io_out_1_valid,
  output        io_out_1_bits_uop_ctrl_rfWen,
  output        io_out_1_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_1_bits_uop_pdest,
  output [63:0] io_out_1_bits_data,
  output        io_out_2_valid,
  output        io_out_2_bits_uop_ctrl_rfWen,
  output        io_out_2_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_2_bits_uop_pdest,
  output [63:0] io_out_2_bits_data,
  output        io_out_3_valid,
  output        io_out_3_bits_uop_cf_exceptionVec_2,
  output        io_out_3_bits_uop_cf_exceptionVec_3,
  output        io_out_3_bits_uop_cf_exceptionVec_8,
  output        io_out_3_bits_uop_cf_exceptionVec_9,
  output        io_out_3_bits_uop_cf_exceptionVec_11,
  output        io_out_3_bits_uop_ctrl_rfWen,
  output        io_out_3_bits_uop_ctrl_fpWen,
  output        io_out_3_bits_uop_ctrl_flushPipe,
  output [5:0]  io_out_3_bits_uop_pdest,
  output        io_out_3_bits_uop_robIdx_flag,
  output [4:0]  io_out_3_bits_uop_robIdx_value,
  output        io_out_3_bits_uop_lqIdx_flag,
  output [3:0]  io_out_3_bits_uop_lqIdx_value,
  output [63:0] io_out_3_bits_data,
  output        io_out_3_bits_redirectValid,
  output        io_out_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_3_bits_debug_isPerfCnt
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
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  shared_buffer_clock; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_reset; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_ready; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_valid; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 168:29]
  wire [5:0] shared_buffer_io_in_bits_uop_pdest; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 168:29]
  wire [4:0] shared_buffer_io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 168:29]
  wire [3:0] shared_buffer_io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_ready; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_valid; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 168:29]
  wire [5:0] shared_buffer_io_out_bits_uop_pdest; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 168:29]
  wire [4:0] shared_buffer_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 168:29]
  wire [3:0] shared_buffer_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_flush_valid; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_flush_bits_robIdx_flag; // @[PipelineConnect.scala 168:29]
  wire [4:0] shared_buffer_io_flush_bits_robIdx_value; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_io_flush_bits_level; // @[PipelineConnect.scala 168:29]
  wire [63:0] shared_buffer_extra_in_data; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_in_redirectValid; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_in_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_in_debug_isPerfCnt; // @[PipelineConnect.scala 168:29]
  wire [63:0] shared_buffer_extra_out_data; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_out_redirectValid; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_out_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 168:29]
  wire  shared_buffer_extra_out_debug_isPerfCnt; // @[PipelineConnect.scala 168:29]
  wire  arb_clock; // @[WbArbiter.scala 213:21]
  wire  arb_io_redirect_valid; // @[WbArbiter.scala 213:21]
  wire  arb_io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 213:21]
  wire [4:0] arb_io_redirect_bits_robIdx_value; // @[WbArbiter.scala 213:21]
  wire  arb_io_redirect_bits_level; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_ready; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_valid; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 213:21]
  wire [5:0] arb_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 213:21]
  wire [4:0] arb_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 213:21]
  wire [3:0] arb_io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 213:21]
  wire [63:0] arb_io_in_0_bits_data; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_ready; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_valid; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 213:21]
  wire [5:0] arb_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 213:21]
  wire [4:0] arb_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 213:21]
  wire [3:0] arb_io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 213:21]
  wire [63:0] arb_io_in_1_bits_data; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_redirectValid; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 213:21]
  wire  arb_io_in_1_bits_debug_isPerfCnt; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_valid; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 213:21]
  wire [5:0] arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 213:21]
  wire [4:0] arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_uop_lqIdx_flag; // @[WbArbiter.scala 213:21]
  wire [3:0] arb_io_out_bits_uop_lqIdx_value; // @[WbArbiter.scala 213:21]
  wire [63:0] arb_io_out_bits_data; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_redirectValid; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 213:21]
  wire  arb_io_out_bits_debug_isPerfCnt; // @[WbArbiter.scala 213:21]
  reg  redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  wire [5:0] _io_out_0_valid_flushItself_T_1 = {io_in_1_bits_uop_robIdx_flag,io_in_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _io_out_0_valid_flushItself_T_2 = {redirect_next_bits_rrobIdx_flag,redirect_next_bits_rrobIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_out_0_valid_flushItself_T_3 = _io_out_0_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_0_valid_flushItself = redirect_next_bits_rlevel & _io_out_0_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_0_valid_differentFlag = io_in_1_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_0_valid_compare = io_in_1_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_0_valid_T = io_out_0_valid_differentFlag ^ io_out_0_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_0_valid_T_2 = redirect_next_valid_REG & (io_out_0_valid_flushItself | _io_out_0_valid_T); // @[Rob.scala 143:20]
  reg  io_out_0_valid_REG; // @[WbArbiter.scala 174:29]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rcf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] io_out_0_bits_uop_rpdest; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_0_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_out_0_bits_uop_rlqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] io_out_0_bits_uop_rlqIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _io_out_1_valid_flushItself_T_1 = {io_in_3_bits_uop_robIdx_flag,io_in_3_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_1_valid_flushItself_T_3 = _io_out_1_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_1_valid_flushItself = redirect_next_bits_rlevel & _io_out_1_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_1_valid_differentFlag = io_in_3_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_1_valid_compare = io_in_3_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_1_valid_T = io_out_1_valid_differentFlag ^ io_out_1_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_1_valid_T_2 = redirect_next_valid_REG & (io_out_1_valid_flushItself | _io_out_1_valid_T); // @[Rob.scala 143:20]
  reg  io_out_1_valid_REG; // @[WbArbiter.scala 178:29]
  reg  io_out_1_bits_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_1_bits_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] io_out_1_bits_ruop_pdest; // @[Reg.scala 16:16]
  reg [63:0] io_out_1_bits_rdata; // @[Reg.scala 16:16]
  wire [5:0] _io_out_2_valid_flushItself_T_1 = {io_in_4_bits_uop_robIdx_flag,io_in_4_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_out_2_valid_flushItself_T_3 = _io_out_2_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_2_valid_flushItself = redirect_next_bits_rlevel & _io_out_2_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_2_valid_differentFlag = io_in_4_bits_uop_robIdx_flag ^ redirect_next_bits_rrobIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_2_valid_compare = io_in_4_bits_uop_robIdx_value > redirect_next_bits_rrobIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_2_valid_T = io_out_2_valid_differentFlag ^ io_out_2_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_2_valid_T_2 = redirect_next_valid_REG & (io_out_2_valid_flushItself | _io_out_2_valid_T); // @[Rob.scala 143:20]
  reg  io_out_2_valid_REG; // @[WbArbiter.scala 178:29]
  reg  io_out_2_bits_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_2_bits_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] io_out_2_bits_ruop_pdest; // @[Reg.scala 16:16]
  reg [63:0] io_out_2_bits_rdata; // @[Reg.scala 16:16]
  PipelineConnectBufferWithExtraData shared_buffer ( // @[PipelineConnect.scala 168:29]
    .clock(shared_buffer_clock),
    .reset(shared_buffer_reset),
    .io_in_ready(shared_buffer_io_in_ready),
    .io_in_valid(shared_buffer_io_in_valid),
    .io_in_bits_uop_cf_exceptionVec_2(shared_buffer_io_in_bits_uop_cf_exceptionVec_2),
    .io_in_bits_uop_cf_exceptionVec_3(shared_buffer_io_in_bits_uop_cf_exceptionVec_3),
    .io_in_bits_uop_cf_exceptionVec_8(shared_buffer_io_in_bits_uop_cf_exceptionVec_8),
    .io_in_bits_uop_cf_exceptionVec_9(shared_buffer_io_in_bits_uop_cf_exceptionVec_9),
    .io_in_bits_uop_cf_exceptionVec_11(shared_buffer_io_in_bits_uop_cf_exceptionVec_11),
    .io_in_bits_uop_ctrl_rfWen(shared_buffer_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(shared_buffer_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_flushPipe(shared_buffer_io_in_bits_uop_ctrl_flushPipe),
    .io_in_bits_uop_pdest(shared_buffer_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(shared_buffer_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(shared_buffer_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(shared_buffer_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(shared_buffer_io_in_bits_uop_lqIdx_value),
    .io_out_ready(shared_buffer_io_out_ready),
    .io_out_valid(shared_buffer_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(shared_buffer_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(shared_buffer_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(shared_buffer_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(shared_buffer_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(shared_buffer_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_ctrl_rfWen(shared_buffer_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(shared_buffer_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(shared_buffer_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_pdest(shared_buffer_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(shared_buffer_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(shared_buffer_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(shared_buffer_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(shared_buffer_io_out_bits_uop_lqIdx_value),
    .io_flush_valid(shared_buffer_io_flush_valid),
    .io_flush_bits_robIdx_flag(shared_buffer_io_flush_bits_robIdx_flag),
    .io_flush_bits_robIdx_value(shared_buffer_io_flush_bits_robIdx_value),
    .io_flush_bits_level(shared_buffer_io_flush_bits_level),
    .extra_in_data(shared_buffer_extra_in_data),
    .extra_in_redirectValid(shared_buffer_extra_in_redirectValid),
    .extra_in_redirect_cfiUpdate_isMisPred(shared_buffer_extra_in_redirect_cfiUpdate_isMisPred),
    .extra_in_debug_isPerfCnt(shared_buffer_extra_in_debug_isPerfCnt),
    .extra_out_data(shared_buffer_extra_out_data),
    .extra_out_redirectValid(shared_buffer_extra_out_redirectValid),
    .extra_out_redirect_cfiUpdate_isMisPred(shared_buffer_extra_out_redirect_cfiUpdate_isMisPred),
    .extra_out_debug_isPerfCnt(shared_buffer_extra_out_debug_isPerfCnt)
  );
  ExuWbArbiter_1 arb ( // @[WbArbiter.scala 213:21]
    .clock(arb_clock),
    .io_redirect_valid(arb_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(arb_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(arb_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(arb_io_redirect_bits_level),
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_rfWen(arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(arb_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(arb_io_in_0_bits_uop_lqIdx_value),
    .io_in_0_bits_data(arb_io_in_0_bits_data),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_exceptionVec_2(arb_io_in_1_bits_uop_cf_exceptionVec_2),
    .io_in_1_bits_uop_cf_exceptionVec_3(arb_io_in_1_bits_uop_cf_exceptionVec_3),
    .io_in_1_bits_uop_cf_exceptionVec_8(arb_io_in_1_bits_uop_cf_exceptionVec_8),
    .io_in_1_bits_uop_cf_exceptionVec_9(arb_io_in_1_bits_uop_cf_exceptionVec_9),
    .io_in_1_bits_uop_cf_exceptionVec_11(arb_io_in_1_bits_uop_cf_exceptionVec_11),
    .io_in_1_bits_uop_ctrl_rfWen(arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_ctrl_flushPipe(arb_io_in_1_bits_uop_ctrl_flushPipe),
    .io_in_1_bits_uop_pdest(arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(arb_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(arb_io_in_1_bits_uop_lqIdx_value),
    .io_in_1_bits_data(arb_io_in_1_bits_data),
    .io_in_1_bits_redirectValid(arb_io_in_1_bits_redirectValid),
    .io_in_1_bits_redirect_cfiUpdate_isMisPred(arb_io_in_1_bits_redirect_cfiUpdate_isMisPred),
    .io_in_1_bits_debug_isPerfCnt(arb_io_in_1_bits_debug_isPerfCnt),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(arb_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(arb_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(arb_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(arb_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(arb_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_ctrl_rfWen(arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(arb_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_pdest(arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(arb_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(arb_io_out_bits_uop_lqIdx_value),
    .io_out_bits_data(arb_io_out_bits_data),
    .io_out_bits_redirectValid(arb_io_out_bits_redirectValid),
    .io_out_bits_redirect_cfiUpdate_isMisPred(arb_io_out_bits_redirect_cfiUpdate_isMisPred),
    .io_out_bits_debug_isPerfCnt(arb_io_out_bits_debug_isPerfCnt)
  );
  assign io_in_0_ready = shared_buffer_io_in_ready; // @[PipelineConnect.scala 169:23]
  assign io_out_0_valid = io_out_0_valid_REG; // @[WbArbiter.scala 174:19]
  assign io_out_0_bits_uop_cf_trigger_backendHit_0 = io_out_0_bits_uop_rcf_trigger_backendHit_0; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_1 = io_out_0_bits_uop_rcf_trigger_backendHit_1; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_2 = io_out_0_bits_uop_rcf_trigger_backendHit_2; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_3 = io_out_0_bits_uop_rcf_trigger_backendHit_3; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_4 = io_out_0_bits_uop_rcf_trigger_backendHit_4; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_5 = io_out_0_bits_uop_rcf_trigger_backendHit_5; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_ctrl_rfWen = io_out_0_bits_uop_rctrl_rfWen; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_ctrl_fpWen = io_out_0_bits_uop_rctrl_fpWen; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_pdest = io_out_0_bits_uop_rpdest; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_robIdx_flag = io_out_0_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_robIdx_value = io_out_0_bits_uop_rrobIdx_value; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_lqIdx_flag = io_out_0_bits_uop_rlqIdx_flag; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_uop_lqIdx_value = io_out_0_bits_uop_rlqIdx_value; // @[WbArbiter.scala 175:22]
  assign io_out_0_bits_data = io_in_1_bits_data; // @[WbArbiter.scala 170:16]
  assign io_out_1_valid = io_out_1_valid_REG; // @[WbArbiter.scala 178:19]
  assign io_out_1_bits_uop_ctrl_rfWen = io_out_1_bits_ruop_ctrl_rfWen; // @[WbArbiter.scala 179:18]
  assign io_out_1_bits_uop_ctrl_fpWen = io_out_1_bits_ruop_ctrl_fpWen; // @[WbArbiter.scala 179:18]
  assign io_out_1_bits_uop_pdest = io_out_1_bits_ruop_pdest; // @[WbArbiter.scala 179:18]
  assign io_out_1_bits_data = io_out_1_bits_rdata; // @[WbArbiter.scala 179:18]
  assign io_out_2_valid = io_out_2_valid_REG; // @[WbArbiter.scala 178:19]
  assign io_out_2_bits_uop_ctrl_rfWen = io_out_2_bits_ruop_ctrl_rfWen; // @[WbArbiter.scala 179:18]
  assign io_out_2_bits_uop_ctrl_fpWen = io_out_2_bits_ruop_ctrl_fpWen; // @[WbArbiter.scala 179:18]
  assign io_out_2_bits_uop_pdest = io_out_2_bits_ruop_pdest; // @[WbArbiter.scala 179:18]
  assign io_out_2_bits_data = io_out_2_bits_rdata; // @[WbArbiter.scala 179:18]
  assign io_out_3_valid = arb_io_out_valid; // @[WbArbiter.scala 216:15]
  assign io_out_3_bits_uop_cf_exceptionVec_2 = arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_cf_exceptionVec_3 = arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_cf_exceptionVec_8 = arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_cf_exceptionVec_9 = arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_cf_exceptionVec_11 = arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_ctrl_rfWen = arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_ctrl_fpWen = arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_ctrl_flushPipe = arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_pdest = arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_robIdx_flag = arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_robIdx_value = arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_lqIdx_flag = arb_io_out_bits_uop_lqIdx_flag; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_uop_lqIdx_value = arb_io_out_bits_uop_lqIdx_value; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_data = arb_io_out_bits_data; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_redirectValid = arb_io_out_bits_redirectValid; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_redirect_cfiUpdate_isMisPred = arb_io_out_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 217:14]
  assign io_out_3_bits_debug_isPerfCnt = arb_io_out_bits_debug_isPerfCnt; // @[WbArbiter.scala 217:14]
  assign shared_buffer_clock = clock;
  assign shared_buffer_reset = reset;
  assign shared_buffer_io_in_valid = io_in_0_valid; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_cf_exceptionVec_2 = io_in_0_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_cf_exceptionVec_3 = io_in_0_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_cf_exceptionVec_8 = io_in_0_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_cf_exceptionVec_9 = io_in_0_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_cf_exceptionVec_11 = io_in_0_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_ctrl_fpWen = io_in_0_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_ctrl_flushPipe = io_in_0_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_lqIdx_flag = io_in_0_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_in_bits_uop_lqIdx_value = io_in_0_bits_uop_lqIdx_value; // @[PipelineConnect.scala 169:23]
  assign shared_buffer_io_out_ready = arb_io_in_1_ready; // @[WbArbiter.scala 198:32 215:15]
  assign shared_buffer_io_flush_valid = redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign shared_buffer_io_flush_bits_robIdx_flag = redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign shared_buffer_io_flush_bits_robIdx_value = redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign shared_buffer_io_flush_bits_level = redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign shared_buffer_extra_in_data = io_in_0_bits_data; // @[WbArbiter.scala 197:27]
  assign shared_buffer_extra_in_redirectValid = io_in_0_bits_redirectValid; // @[WbArbiter.scala 197:27]
  assign shared_buffer_extra_in_redirect_cfiUpdate_isMisPred = io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 197:27]
  assign shared_buffer_extra_in_debug_isPerfCnt = io_in_0_bits_debug_isPerfCnt; // @[WbArbiter.scala 197:27]
  assign arb_clock = clock;
  assign arb_io_redirect_valid = redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign arb_io_redirect_bits_robIdx_flag = redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign arb_io_redirect_bits_robIdx_value = redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign arb_io_redirect_bits_level = redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign arb_io_in_0_valid = io_in_2_valid; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_ctrl_rfWen = io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_ctrl_fpWen = io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_pdest = io_in_2_bits_uop_pdest; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_robIdx_flag = io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_robIdx_value = io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_lqIdx_flag = io_in_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_uop_lqIdx_value = io_in_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 215:15]
  assign arb_io_in_0_bits_data = io_in_2_bits_data; // @[WbArbiter.scala 215:15]
  assign arb_io_in_1_valid = shared_buffer_io_out_valid; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_2 = shared_buffer_io_out_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_3 = shared_buffer_io_out_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_8 = shared_buffer_io_out_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_9 = shared_buffer_io_out_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_11 = shared_buffer_io_out_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_ctrl_rfWen = shared_buffer_io_out_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_ctrl_fpWen = shared_buffer_io_out_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_ctrl_flushPipe = shared_buffer_io_out_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_pdest = shared_buffer_io_out_bits_uop_pdest; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_robIdx_flag = shared_buffer_io_out_bits_uop_robIdx_flag; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_robIdx_value = shared_buffer_io_out_bits_uop_robIdx_value; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_lqIdx_flag = shared_buffer_io_out_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_uop_lqIdx_value = shared_buffer_io_out_bits_uop_lqIdx_value; // @[PipelineConnect.scala 170:24 WbArbiter.scala 195:31]
  assign arb_io_in_1_bits_data = shared_buffer_extra_out_data; // @[WbArbiter.scala 198:32 201:27]
  assign arb_io_in_1_bits_redirectValid = shared_buffer_extra_out_redirectValid; // @[WbArbiter.scala 198:32 201:27]
  assign arb_io_in_1_bits_redirect_cfiUpdate_isMisPred = shared_buffer_extra_out_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 198:32 201:27]
  assign arb_io_in_1_bits_debug_isPerfCnt = shared_buffer_extra_out_debug_isPerfCnt; // @[WbArbiter.scala 198:32 201:27]
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
    io_out_0_valid_REG <= io_in_1_valid & ~_io_out_0_valid_T_2; // @[WbArbiter.scala 174:39]
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_0 <= io_in_1_bits_uop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_1 <= io_in_1_bits_uop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_2 <= io_in_1_bits_uop_cf_trigger_backendHit_2; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_3 <= io_in_1_bits_uop_cf_trigger_backendHit_3; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_4 <= io_in_1_bits_uop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rcf_trigger_backendHit_5 <= io_in_1_bits_uop_cf_trigger_backendHit_5; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rctrl_rfWen <= io_in_1_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rctrl_fpWen <= io_in_1_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rpdest <= io_in_1_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rrobIdx_flag <= io_in_1_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rrobIdx_value <= io_in_1_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rlqIdx_flag <= io_in_1_bits_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_in_1_valid) begin // @[Reg.scala 17:18]
      io_out_0_bits_uop_rlqIdx_value <= io_in_1_bits_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    io_out_1_valid_REG <= io_in_3_valid & ~_io_out_1_valid_T_2; // @[WbArbiter.scala 178:39]
    if (io_in_3_valid) begin // @[Reg.scala 17:18]
      io_out_1_bits_ruop_ctrl_rfWen <= io_in_3_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (io_in_3_valid) begin // @[Reg.scala 17:18]
      io_out_1_bits_ruop_ctrl_fpWen <= io_in_3_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (io_in_3_valid) begin // @[Reg.scala 17:18]
      io_out_1_bits_ruop_pdest <= io_in_3_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (io_in_3_valid) begin // @[Reg.scala 17:18]
      io_out_1_bits_rdata <= io_in_3_bits_data; // @[Reg.scala 17:22]
    end
    io_out_2_valid_REG <= io_in_4_valid & ~_io_out_2_valid_T_2; // @[WbArbiter.scala 178:39]
    if (io_in_4_valid) begin // @[Reg.scala 17:18]
      io_out_2_bits_ruop_ctrl_rfWen <= io_in_4_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (io_in_4_valid) begin // @[Reg.scala 17:18]
      io_out_2_bits_ruop_ctrl_fpWen <= io_in_4_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (io_in_4_valid) begin // @[Reg.scala 17:18]
      io_out_2_bits_ruop_pdest <= io_in_4_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (io_in_4_valid) begin // @[Reg.scala 17:18]
      io_out_2_bits_rdata <= io_in_4_bits_data; // @[Reg.scala 17:22]
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
  io_out_0_valid_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_4 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_0_bits_uop_rcf_trigger_backendHit_5 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_0_bits_uop_rctrl_rfWen = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_0_bits_uop_rctrl_fpWen = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_0_bits_uop_rpdest = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_0_bits_uop_rrobIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_0_bits_uop_rrobIdx_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_0_bits_uop_rlqIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_0_bits_uop_rlqIdx_value = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_1_valid_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_1_bits_ruop_ctrl_rfWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_1_bits_ruop_ctrl_fpWen = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_1_bits_ruop_pdest = _RAND_21[5:0];
  _RAND_22 = {2{`RANDOM}};
  io_out_1_bits_rdata = _RAND_22[63:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_2_valid_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_2_bits_ruop_ctrl_rfWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_2_bits_ruop_ctrl_fpWen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_2_bits_ruop_pdest = _RAND_26[5:0];
  _RAND_27 = {2{`RANDOM}};
  io_out_2_bits_rdata = _RAND_27[63:0];
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

