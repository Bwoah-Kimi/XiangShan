module ExuWbArbiter_1(
  input         clock,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input         io_in_0_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [4:0]  io_in_0_bits_uop_robIdx_value,
  input         io_in_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_0_bits_uop_lqIdx_value,
  input  [63:0] io_in_0_bits_data,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_cf_exceptionVec_2,
  input         io_in_1_bits_uop_cf_exceptionVec_3,
  input         io_in_1_bits_uop_cf_exceptionVec_8,
  input         io_in_1_bits_uop_cf_exceptionVec_9,
  input         io_in_1_bits_uop_cf_exceptionVec_11,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input         io_in_1_bits_uop_ctrl_fpWen,
  input         io_in_1_bits_uop_ctrl_flushPipe,
  input  [5:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [4:0]  io_in_1_bits_uop_robIdx_value,
  input         io_in_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_1_bits_uop_lqIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_1_bits_redirectValid,
  input         io_in_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_1_bits_debug_isPerfCnt,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output [63:0] io_out_bits_data,
  output        io_out_bits_redirectValid,
  output        io_out_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_bits_debug_isPerfCnt
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
`endif // RANDOMIZE_REG_INIT
  wire  ctrl_arb_io_in_0_valid; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 44:24]
  wire [5:0] ctrl_arb_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 44:24]
  wire [4:0] ctrl_arb_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 44:24]
  wire [3:0] ctrl_arb_io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_ready; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_valid; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 44:24]
  wire [5:0] ctrl_arb_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 44:24]
  wire [4:0] ctrl_arb_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 44:24]
  wire [3:0] ctrl_arb_io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_valid; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 44:24]
  wire [5:0] ctrl_arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 44:24]
  wire [4:0] ctrl_arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 44:24]
  wire  ctrl_arb_io_out_bits_uop_lqIdx_flag; // @[WbArbiter.scala 44:24]
  wire [3:0] ctrl_arb_io_out_bits_uop_lqIdx_value; // @[WbArbiter.scala 44:24]
  wire [5:0] _io_out_valid_flushItself_T_1 = {ctrl_arb_io_out_bits_uop_robIdx_flag,ctrl_arb_io_out_bits_uop_robIdx_value
    }; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _io_out_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_out_valid_flushItself_T_3 = _io_out_valid_flushItself_T_1 == _io_out_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  io_out_valid_flushItself = io_redirect_bits_level & _io_out_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_out_valid_differentFlag = ctrl_arb_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_out_valid_compare = ctrl_arb_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_out_valid_T = io_out_valid_differentFlag ^ io_out_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_out_valid_T_2 = io_redirect_valid & (io_out_valid_flushItself | _io_out_valid_T); // @[Rob.scala 143:20]
  reg  io_out_valid_REG; // @[WbArbiter.scala 71:28]
  wire  _sel_T = io_in_0_ready & io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _sel_T_1 = io_in_1_ready & io_in_1_valid; // @[Decoupled.scala 50:35]
  reg [1:0] io_out_bits_REG; // @[WbArbiter.scala 77:33]
  wire [63:0] _io_out_bits_T_260 = io_out_bits_REG[0] ? io_in_0_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_261 = io_out_bits_REG[1] ? io_in_1_bits_data : 64'h0; // @[Mux.scala 27:73]
  reg  io_out_bits_uop_rcf_exceptionVec_2; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rcf_exceptionVec_3; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rcf_exceptionVec_8; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rcf_exceptionVec_9; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rcf_exceptionVec_11; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rctrl_fpWen; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rctrl_flushPipe; // @[Reg.scala 16:16]
  reg [5:0] io_out_bits_uop_rpdest; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_uop_rrobIdx_value; // @[Reg.scala 16:16]
  reg  io_out_bits_uop_rlqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] io_out_bits_uop_rlqIdx_value; // @[Reg.scala 16:16]
  Arbiter_7 ctrl_arb ( // @[WbArbiter.scala 44:24]
    .io_in_0_valid(ctrl_arb_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_rfWen(ctrl_arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(ctrl_arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(ctrl_arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(ctrl_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(ctrl_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(ctrl_arb_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(ctrl_arb_io_in_0_bits_uop_lqIdx_value),
    .io_in_1_ready(ctrl_arb_io_in_1_ready),
    .io_in_1_valid(ctrl_arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_exceptionVec_2(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2),
    .io_in_1_bits_uop_cf_exceptionVec_3(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3),
    .io_in_1_bits_uop_cf_exceptionVec_8(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8),
    .io_in_1_bits_uop_cf_exceptionVec_9(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9),
    .io_in_1_bits_uop_cf_exceptionVec_11(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11),
    .io_in_1_bits_uop_ctrl_rfWen(ctrl_arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(ctrl_arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_ctrl_flushPipe(ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe),
    .io_in_1_bits_uop_pdest(ctrl_arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(ctrl_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(ctrl_arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(ctrl_arb_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(ctrl_arb_io_in_1_bits_uop_lqIdx_value),
    .io_out_valid(ctrl_arb_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(ctrl_arb_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(ctrl_arb_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(ctrl_arb_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(ctrl_arb_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(ctrl_arb_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_ctrl_rfWen(ctrl_arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(ctrl_arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(ctrl_arb_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_pdest(ctrl_arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(ctrl_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(ctrl_arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(ctrl_arb_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(ctrl_arb_io_out_bits_uop_lqIdx_value)
  );
  assign io_in_0_ready = 1'h1; // @[WbArbiter.scala 57:14]
  assign io_in_1_ready = ctrl_arb_io_in_1_ready; // @[WbArbiter.scala 57:14]
  assign io_out_valid = io_out_valid_REG; // @[WbArbiter.scala 71:18]
  assign io_out_bits_uop_cf_exceptionVec_2 = io_out_bits_uop_rcf_exceptionVec_2; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_out_bits_uop_rcf_exceptionVec_3; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_cf_exceptionVec_8 = io_out_bits_uop_rcf_exceptionVec_8; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_cf_exceptionVec_9 = io_out_bits_uop_rcf_exceptionVec_9; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_cf_exceptionVec_11 = io_out_bits_uop_rcf_exceptionVec_11; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_ctrl_rfWen = io_out_bits_uop_rctrl_rfWen; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_ctrl_fpWen = io_out_bits_uop_rctrl_fpWen; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_ctrl_flushPipe = io_out_bits_uop_rctrl_flushPipe; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_pdest = io_out_bits_uop_rpdest; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_robIdx_flag = io_out_bits_uop_rrobIdx_flag; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_robIdx_value = io_out_bits_uop_rrobIdx_value; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_lqIdx_flag = io_out_bits_uop_rlqIdx_flag; // @[WbArbiter.scala 79:21]
  assign io_out_bits_uop_lqIdx_value = io_out_bits_uop_rlqIdx_value; // @[WbArbiter.scala 79:21]
  assign io_out_bits_data = _io_out_bits_T_260 | _io_out_bits_T_261; // @[Mux.scala 27:73]
  assign io_out_bits_redirectValid = io_out_bits_REG[1] & io_in_1_bits_redirectValid; // @[Mux.scala 27:73]
  assign io_out_bits_redirect_cfiUpdate_isMisPred = io_out_bits_REG[1] & io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[Mux.scala 27:73]
  assign io_out_bits_debug_isPerfCnt = io_out_bits_REG[1] & io_in_1_bits_debug_isPerfCnt; // @[Mux.scala 27:73]
  assign ctrl_arb_io_in_0_valid = io_in_0_valid; // @[WbArbiter.scala 51:16]
  assign ctrl_arb_io_in_0_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_ctrl_fpWen = io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_lqIdx_flag = io_in_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_0_bits_uop_lqIdx_value = io_in_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_valid = io_in_1_valid; // @[WbArbiter.scala 51:16]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2 = io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3 = io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8 = io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9 = io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11 = io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_rfWen = io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_fpWen = io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe = io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_pdest = io_in_1_bits_uop_pdest; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_robIdx_flag = io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_robIdx_value = io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_lqIdx_flag = io_in_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 53:9]
  assign ctrl_arb_io_in_1_bits_uop_lqIdx_value = io_in_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 53:9]
  always @(posedge clock) begin
    io_out_valid_REG <= ctrl_arb_io_out_valid & ~_io_out_valid_T_2; // @[WbArbiter.scala 71:51]
    io_out_bits_REG <= {_sel_T_1,_sel_T}; // @[WbArbiter.scala 76:42]
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rcf_exceptionVec_2 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_2; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rcf_exceptionVec_3 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_3; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rcf_exceptionVec_8 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_8; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rcf_exceptionVec_9 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_9; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rcf_exceptionVec_11 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_11; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rctrl_rfWen <= ctrl_arb_io_out_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rctrl_fpWen <= ctrl_arb_io_out_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rctrl_flushPipe <= ctrl_arb_io_out_bits_uop_ctrl_flushPipe; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rpdest <= ctrl_arb_io_out_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rrobIdx_flag <= ctrl_arb_io_out_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rrobIdx_value <= ctrl_arb_io_out_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rlqIdx_flag <= ctrl_arb_io_out_bits_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (ctrl_arb_io_out_valid) begin // @[Reg.scala 17:18]
      io_out_bits_uop_rlqIdx_value <= ctrl_arb_io_out_bits_uop_lqIdx_value; // @[Reg.scala 17:22]
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
  io_out_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_REG = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_uop_rcf_exceptionVec_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_uop_rcf_exceptionVec_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_uop_rcf_exceptionVec_8 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_uop_rcf_exceptionVec_9 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_uop_rcf_exceptionVec_11 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_uop_rctrl_rfWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_bits_uop_rctrl_fpWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_bits_uop_rctrl_flushPipe = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_bits_uop_rpdest = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_bits_uop_rrobIdx_flag = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_bits_uop_rrobIdx_value = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_bits_uop_rlqIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_bits_uop_rlqIdx_value = _RAND_14[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

