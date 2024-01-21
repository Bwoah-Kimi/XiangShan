module InputBuffer(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_src_0,
  output [63:0] io_out_bits_src_1,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
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
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
`endif // RANDOMIZE_REG_INIT
  wire  age_clock; // @[InputBuffer.scala 62:19]
  wire  age_reset; // @[InputBuffer.scala 62:19]
  wire [3:0] age_io_enq_0; // @[InputBuffer.scala 62:19]
  wire [3:0] age_io_deq; // @[InputBuffer.scala 62:19]
  wire [3:0] age_io_out; // @[InputBuffer.scala 62:19]
  reg [63:0] data_0_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_0_src_1; // @[InputBuffer.scala 35:17]
  reg [6:0] data_0_uop_ctrl_fuOpType; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg [5:0] data_0_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [4:0] data_0_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_lqIdx_flag; // @[InputBuffer.scala 35:17]
  reg [3:0] data_0_uop_lqIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_1_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_1_src_1; // @[InputBuffer.scala 35:17]
  reg [6:0] data_1_uop_ctrl_fuOpType; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg [5:0] data_1_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [4:0] data_1_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_lqIdx_flag; // @[InputBuffer.scala 35:17]
  reg [3:0] data_1_uop_lqIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_2_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_2_src_1; // @[InputBuffer.scala 35:17]
  reg [6:0] data_2_uop_ctrl_fuOpType; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg [5:0] data_2_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [4:0] data_2_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_lqIdx_flag; // @[InputBuffer.scala 35:17]
  reg [3:0] data_2_uop_lqIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_3_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_3_src_1; // @[InputBuffer.scala 35:17]
  reg [6:0] data_3_uop_ctrl_fuOpType; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg [5:0] data_3_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [4:0] data_3_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_lqIdx_flag; // @[InputBuffer.scala 35:17]
  reg [3:0] data_3_uop_lqIdx_value; // @[InputBuffer.scala 35:17]
  reg  emptyVec_0; // @[InputBuffer.scala 36:25]
  reg  emptyVec_1; // @[InputBuffer.scala 36:25]
  reg  emptyVec_2; // @[InputBuffer.scala 36:25]
  reg  emptyVec_3; // @[InputBuffer.scala 36:25]
  wire  matrix_1_0 = ~(|emptyVec_0); // @[BitUtils.scala 258:50]
  wire [1:0] _matrix_2_0_T = {emptyVec_0,emptyVec_1}; // @[Cat.scala 31:58]
  wire  matrix_2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 258:50]
  wire [2:0] _matrix_3_0_T = {emptyVec_0,emptyVec_1,emptyVec_2}; // @[Cat.scala 31:58]
  wire  matrix_3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 258:50]
  wire  enqVec_1 = emptyVec_1 & matrix_1_0; // @[BitUtils.scala 275:62]
  wire  enqVec_2 = emptyVec_2 & matrix_2_0; // @[BitUtils.scala 275:62]
  wire  enqVec_3 = emptyVec_3 & matrix_3_0; // @[BitUtils.scala 275:62]
  reg  hasEmpty; // @[InputBuffer.scala 41:25]
  wire [5:0] _flushVec_flushItself_T_5 = {data_1_uop_robIdx_flag,data_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _flushVec_flushItself_T_6 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushVec_flushItself_T_7 = _flushVec_flushItself_T_5 == _flushVec_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself_1 = io_redirect_bits_level & _flushVec_flushItself_T_7; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag_1 = data_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare_1 = data_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T_5 = flushVec_differentFlag_1 ^ flushVec_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_7 = io_redirect_valid & (flushVec_flushItself_1 | _flushVec_T_5); // @[Rob.scala 143:20]
  wire  flushVec_1 = ~emptyVec_1 & _flushVec_T_7; // @[InputBuffer.scala 93:78]
  wire  _doDequeue_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg  isEmpty; // @[InputBuffer.scala 82:26]
  wire  doBypass = io_in_valid & io_out_ready & isEmpty; // @[InputBuffer.scala 89:45]
  wire  _doDequeue_T_1 = ~doBypass; // @[InputBuffer.scala 70:34]
  wire  doDequeue = _doDequeue_T & ~doBypass; // @[InputBuffer.scala 70:31]
  wire  _doEnqueue_T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _doEnqueue_flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _doEnqueue_flushItself_T_3 = _doEnqueue_flushItself_T_1 == _flushVec_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  doEnqueue_flushItself = io_redirect_bits_level & _doEnqueue_flushItself_T_3; // @[Rob.scala 142:51]
  wire  doEnqueue_differentFlag = io_in_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  doEnqueue_compare = io_in_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _doEnqueue_T_3 = doEnqueue_differentFlag ^ doEnqueue_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _doEnqueue_T_5 = io_redirect_valid & (doEnqueue_flushItself | _doEnqueue_T_3); // @[Rob.scala 143:20]
  wire  doEnqueue = _doEnqueue_T & _doDequeue_T_1 & ~_doEnqueue_T_5; // @[InputBuffer.scala 51:43]
  wire  _GEN_223 = enqVec_1 ? 1'h0 : emptyVec_1; // @[InputBuffer.scala 54:24 56:25]
  wire  _GEN_671 = doEnqueue ? _GEN_223 : emptyVec_1; // @[InputBuffer.scala 52:20]
  wire  _GEN_897 = age_io_out[1] | _GEN_671; // @[InputBuffer.scala 73:28 74:25]
  wire  _GEN_901 = doDequeue ? _GEN_897 : _GEN_671; // @[InputBuffer.scala 71:20]
  wire  emptyVecNext_1 = flushVec_1 | _GEN_901; // @[InputBuffer.scala 95:24 96:23]
  wire [5:0] _flushVec_flushItself_T_1 = {data_0_uop_robIdx_flag,data_0_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushVec_flushItself_T_3 = _flushVec_flushItself_T_1 == _flushVec_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself = io_redirect_bits_level & _flushVec_flushItself_T_3; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag = data_0_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare = data_0_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T_1 = flushVec_differentFlag ^ flushVec_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_3 = io_redirect_valid & (flushVec_flushItself | _flushVec_T_1); // @[Rob.scala 143:20]
  wire  flushVec_0 = ~emptyVec_0 & _flushVec_T_3; // @[InputBuffer.scala 93:78]
  wire  _GEN_111 = emptyVec_0 ? 1'h0 : emptyVec_0; // @[InputBuffer.scala 54:24 56:25]
  wire  _GEN_559 = doEnqueue ? _GEN_111 : emptyVec_0; // @[InputBuffer.scala 52:20]
  wire  _GEN_896 = age_io_out[0] | _GEN_559; // @[InputBuffer.scala 73:28 74:25]
  wire  _GEN_900 = doDequeue ? _GEN_896 : _GEN_559; // @[InputBuffer.scala 71:20]
  wire  emptyVecNext_0 = flushVec_0 | _GEN_900; // @[InputBuffer.scala 95:24 96:23]
  wire [5:0] _flushVec_flushItself_T_13 = {data_3_uop_robIdx_flag,data_3_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushVec_flushItself_T_15 = _flushVec_flushItself_T_13 == _flushVec_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself_3 = io_redirect_bits_level & _flushVec_flushItself_T_15; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag_3 = data_3_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare_3 = data_3_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T_13 = flushVec_differentFlag_3 ^ flushVec_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_15 = io_redirect_valid & (flushVec_flushItself_3 | _flushVec_T_13); // @[Rob.scala 143:20]
  wire  flushVec_3 = ~emptyVec_3 & _flushVec_T_15; // @[InputBuffer.scala 93:78]
  wire  _GEN_447 = enqVec_3 ? 1'h0 : emptyVec_3; // @[InputBuffer.scala 54:24 56:25]
  wire  _GEN_895 = doEnqueue ? _GEN_447 : emptyVec_3; // @[InputBuffer.scala 52:20]
  wire  _GEN_899 = age_io_out[3] | _GEN_895; // @[InputBuffer.scala 73:28 74:25]
  wire  _GEN_903 = doDequeue ? _GEN_899 : _GEN_895; // @[InputBuffer.scala 71:20]
  wire  emptyVecNext_3 = flushVec_3 | _GEN_903; // @[InputBuffer.scala 95:24 96:23]
  wire [5:0] _flushVec_flushItself_T_9 = {data_2_uop_robIdx_flag,data_2_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushVec_flushItself_T_11 = _flushVec_flushItself_T_9 == _flushVec_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself_2 = io_redirect_bits_level & _flushVec_flushItself_T_11; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag_2 = data_2_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare_2 = data_2_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T_9 = flushVec_differentFlag_2 ^ flushVec_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_11 = io_redirect_valid & (flushVec_flushItself_2 | _flushVec_T_9); // @[Rob.scala 143:20]
  wire  flushVec_2 = ~emptyVec_2 & _flushVec_T_11; // @[InputBuffer.scala 93:78]
  wire  _GEN_335 = enqVec_2 ? 1'h0 : emptyVec_2; // @[InputBuffer.scala 54:24 56:25]
  wire  _GEN_783 = doEnqueue ? _GEN_335 : emptyVec_2; // @[InputBuffer.scala 52:20]
  wire  _GEN_898 = age_io_out[2] | _GEN_783; // @[InputBuffer.scala 73:28 74:25]
  wire  _GEN_902 = doDequeue ? _GEN_898 : _GEN_783; // @[InputBuffer.scala 71:20]
  wire  emptyVecNext_2 = flushVec_2 | _GEN_902; // @[InputBuffer.scala 95:24 96:23]
  wire [3:0] _hasEmpty_T = {emptyVecNext_3,emptyVecNext_2,emptyVecNext_1,emptyVecNext_0}; // @[InputBuffer.scala 42:28]
  wire [3:0] _age_io_enq_0_T = {enqVec_3,enqVec_2,enqVec_1,emptyVec_0}; // @[InputBuffer.scala 63:42]
  reg  notEmpty; // @[InputBuffer.scala 65:25]
  wire [3:0] _io_out_bits_T_102 = age_io_out[0] ? data_0_uop_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_103 = age_io_out[1] ? data_1_uop_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_104 = age_io_out[2] ? data_2_uop_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_105 = age_io_out[3] ? data_3_uop_lqIdx_value : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_106 = _io_out_bits_T_102 | _io_out_bits_T_103; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_107 = _io_out_bits_T_106 | _io_out_bits_T_104; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_108 = _io_out_bits_T_107 | _io_out_bits_T_105; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_115 = age_io_out[0] & data_0_uop_lqIdx_flag | age_io_out[1] & data_1_uop_lqIdx_flag | age_io_out[
    2] & data_2_uop_lqIdx_flag | age_io_out[3] & data_3_uop_lqIdx_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_116 = age_io_out[0] ? data_0_uop_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_117 = age_io_out[1] ? data_1_uop_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_118 = age_io_out[2] ? data_2_uop_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_119 = age_io_out[3] ? data_3_uop_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_120 = _io_out_bits_T_116 | _io_out_bits_T_117; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_121 = _io_out_bits_T_120 | _io_out_bits_T_118; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_122 = _io_out_bits_T_121 | _io_out_bits_T_119; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_129 = age_io_out[0] & data_0_uop_robIdx_flag | age_io_out[1] & data_1_uop_robIdx_flag |
    age_io_out[2] & data_2_uop_robIdx_flag | age_io_out[3] & data_3_uop_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_130 = age_io_out[0] ? data_0_uop_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_131 = age_io_out[1] ? data_1_uop_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_132 = age_io_out[2] ? data_2_uop_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_133 = age_io_out[3] ? data_3_uop_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_134 = _io_out_bits_T_130 | _io_out_bits_T_131; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_135 = _io_out_bits_T_134 | _io_out_bits_T_132; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_136 = _io_out_bits_T_135 | _io_out_bits_T_133; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_353 = age_io_out[0] & data_0_uop_ctrl_fpWen | age_io_out[1] & data_1_uop_ctrl_fpWen | age_io_out[
    2] & data_2_uop_ctrl_fpWen | age_io_out[3] & data_3_uop_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_out_bits_T_360 = age_io_out[0] & data_0_uop_ctrl_rfWen | age_io_out[1] & data_1_uop_ctrl_rfWen | age_io_out[
    2] & data_2_uop_ctrl_rfWen | age_io_out[3] & data_3_uop_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_361 = age_io_out[0] ? data_0_uop_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_362 = age_io_out[1] ? data_1_uop_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_363 = age_io_out[2] ? data_2_uop_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_364 = age_io_out[3] ? data_3_uop_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_365 = _io_out_bits_T_361 | _io_out_bits_T_362; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_366 = _io_out_bits_T_365 | _io_out_bits_T_363; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_367 = _io_out_bits_T_366 | _io_out_bits_T_364; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_760 = age_io_out[0] ? data_0_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_761 = age_io_out[1] ? data_1_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_762 = age_io_out[2] ? data_2_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_763 = age_io_out[3] ? data_3_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_764 = _io_out_bits_T_760 | _io_out_bits_T_761; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_765 = _io_out_bits_T_764 | _io_out_bits_T_762; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_766 = _io_out_bits_T_765 | _io_out_bits_T_763; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_767 = age_io_out[0] ? data_0_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_768 = age_io_out[1] ? data_1_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_769 = age_io_out[2] ? data_2_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_770 = age_io_out[3] ? data_3_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_771 = _io_out_bits_T_767 | _io_out_bits_T_768; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_772 = _io_out_bits_T_771 | _io_out_bits_T_769; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_773 = _io_out_bits_T_772 | _io_out_bits_T_770; // @[Mux.scala 27:73]
  wire [3:0] flushDeq = {flushVec_3,flushVec_2,flushVec_1,flushVec_0}; // @[InputBuffer.scala 100:36]
  wire [3:0] _age_io_deq_T = doDequeue ? age_io_out : 4'h0; // @[InputBuffer.scala 101:20]
  AgeDetector_6 age ( // @[InputBuffer.scala 62:19]
    .clock(age_clock),
    .reset(age_reset),
    .io_enq_0(age_io_enq_0),
    .io_deq(age_io_deq),
    .io_out(age_io_out)
  );
  assign io_in_ready = hasEmpty; // @[InputBuffer.scala 43:15]
  assign io_out_valid = notEmpty | io_in_valid; // @[InputBuffer.scala 67:28]
  assign io_out_bits_src_0 = isEmpty ? io_in_bits_src_0 : _io_out_bits_T_766; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_src_1 = isEmpty ? io_in_bits_src_1 : _io_out_bits_T_773; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_ctrl_fuOpType = isEmpty ? io_in_bits_uop_ctrl_fuOpType : _io_out_bits_T_367; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_ctrl_rfWen = isEmpty ? io_in_bits_uop_ctrl_rfWen : _io_out_bits_T_360; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_ctrl_fpWen = isEmpty ? io_in_bits_uop_ctrl_fpWen : _io_out_bits_T_353; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_pdest = isEmpty ? io_in_bits_uop_pdest : _io_out_bits_T_136; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_robIdx_flag = isEmpty ? io_in_bits_uop_robIdx_flag : _io_out_bits_T_129; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_robIdx_value = isEmpty ? io_in_bits_uop_robIdx_value : _io_out_bits_T_122; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_lqIdx_flag = isEmpty ? io_in_bits_uop_lqIdx_flag : _io_out_bits_T_115; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign io_out_bits_uop_lqIdx_value = isEmpty ? io_in_bits_uop_lqIdx_value : _io_out_bits_T_108; // @[InputBuffer.scala 68:15 86:20 87:19]
  assign age_clock = clock;
  assign age_reset = reset;
  assign age_io_enq_0 = doEnqueue ? _age_io_enq_0_T : 4'h0; // @[InputBuffer.scala 63:23]
  assign age_io_deq = _age_io_deq_T | flushDeq; // @[InputBuffer.scala 101:49]
  always @(posedge clock) begin
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 54:24]
        data_0_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_1) begin // @[InputBuffer.scala 54:24]
        data_1_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_2) begin // @[InputBuffer.scala 54:24]
        data_2_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[InputBuffer.scala 55:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 52:20]
      if (enqVec_3) begin // @[InputBuffer.scala 54:24]
        data_3_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[InputBuffer.scala 55:17]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 95:24]
      emptyVec_0 <= 1'h1; // @[InputBuffer.scala 96:23]
    end else begin
      emptyVec_0 <= flushVec_0 | _GEN_900;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 95:24]
      emptyVec_1 <= 1'h1; // @[InputBuffer.scala 96:23]
    end else begin
      emptyVec_1 <= flushVec_1 | _GEN_901;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 95:24]
      emptyVec_2 <= 1'h1; // @[InputBuffer.scala 96:23]
    end else begin
      emptyVec_2 <= flushVec_2 | _GEN_902;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 95:24]
      emptyVec_3 <= 1'h1; // @[InputBuffer.scala 96:23]
    end else begin
      emptyVec_3 <= flushVec_3 | _GEN_903;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 42:35]
      hasEmpty <= 1'h1;
    end else begin
      hasEmpty <= |_hasEmpty_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 83:36]
      isEmpty <= 1'h0;
    end else begin
      isEmpty <= &_hasEmpty_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[InputBuffer.scala 66:15]
      notEmpty <= 1'h0;
    end else begin
      notEmpty <= ~(&_hasEmpty_T);
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
  _RAND_0 = {2{`RANDOM}};
  data_0_src_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  data_0_src_1 = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_uop_ctrl_fuOpType = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_uop_ctrl_rfWen = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_uop_ctrl_fpWen = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_uop_pdest = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_uop_robIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_uop_robIdx_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_uop_lqIdx_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_uop_lqIdx_value = _RAND_9[3:0];
  _RAND_10 = {2{`RANDOM}};
  data_1_src_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  data_1_src_1 = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  data_1_uop_ctrl_fuOpType = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  data_1_uop_ctrl_rfWen = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  data_1_uop_ctrl_fpWen = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_1_uop_pdest = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  data_1_uop_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_1_uop_robIdx_value = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  data_1_uop_lqIdx_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_uop_lqIdx_value = _RAND_19[3:0];
  _RAND_20 = {2{`RANDOM}};
  data_2_src_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  data_2_src_1 = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  data_2_uop_ctrl_fuOpType = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  data_2_uop_ctrl_rfWen = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_2_uop_ctrl_fpWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_2_uop_pdest = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  data_2_uop_robIdx_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_2_uop_robIdx_value = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  data_2_uop_lqIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  data_2_uop_lqIdx_value = _RAND_29[3:0];
  _RAND_30 = {2{`RANDOM}};
  data_3_src_0 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  data_3_src_1 = _RAND_31[63:0];
  _RAND_32 = {1{`RANDOM}};
  data_3_uop_ctrl_fuOpType = _RAND_32[6:0];
  _RAND_33 = {1{`RANDOM}};
  data_3_uop_ctrl_rfWen = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  data_3_uop_ctrl_fpWen = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_3_uop_pdest = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  data_3_uop_robIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_3_uop_robIdx_value = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  data_3_uop_lqIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  data_3_uop_lqIdx_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  emptyVec_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  emptyVec_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  emptyVec_2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  emptyVec_3 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  hasEmpty = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  isEmpty = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  notEmpty = _RAND_46[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    emptyVec_0 = 1'h1;
  end
  if (reset) begin
    emptyVec_1 = 1'h1;
  end
  if (reset) begin
    emptyVec_2 = 1'h1;
  end
  if (reset) begin
    emptyVec_3 = 1'h1;
  end
  if (reset) begin
    hasEmpty = 1'h1;
  end
  if (reset) begin
    isEmpty = 1'h0;
  end
  if (reset) begin
    notEmpty = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

