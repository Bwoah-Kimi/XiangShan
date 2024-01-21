module SinkC_2(
  input          clock,
  input          reset,
  output         io_c_ready,
  input          io_c_valid,
  input  [2:0]   io_c_bits_opcode,
  input  [2:0]   io_c_bits_param,
  input  [2:0]   io_c_bits_size,
  input  [9:0]   io_c_bits_source,
  input  [35:0]  io_c_bits_address,
  input          io_c_bits_echo_blockisdirty,
  input  [255:0] io_c_bits_data,
  input          io_alloc_ready,
  output         io_alloc_valid,
  output [2:0]   io_alloc_bits_opcode,
  output [2:0]   io_alloc_bits_param,
  output [2:0]   io_alloc_bits_size,
  output [9:0]   io_alloc_bits_source,
  output [7:0]   io_alloc_bits_set,
  output [21:0]  io_alloc_bits_tag,
  output [5:0]   io_alloc_bits_off,
  output [2:0]   io_alloc_bits_bufIdx,
  output         io_alloc_bits_dirty,
  output         io_resp_valid,
  output         io_resp_bits_hasData,
  output [2:0]   io_resp_bits_param,
  output         io_resp_bits_last,
  output [7:0]   io_resp_bits_set,
  output [2:0]   io_resp_bits_bufIdx,
  output         io_task_ready,
  input          io_task_valid,
  input  [7:0]   io_task_bits_set,
  input  [21:0]  io_task_bits_tag,
  input  [2:0]   io_task_bits_way,
  input  [2:0]   io_task_bits_bufIdx,
  input  [2:0]   io_task_bits_opcode,
  input  [3:0]   io_task_bits_source,
  input          io_task_bits_save,
  input          io_task_bits_drop,
  input          io_task_bits_release,
  output         io_taskack_valid,
  output [3:0]   io_taskack_bits_sink,
  input          io_bs_waddr_ready,
  output         io_bs_waddr_valid,
  output [2:0]   io_bs_waddr_bits_way,
  output [7:0]   io_bs_waddr_bits_set,
  output         io_bs_waddr_bits_beat,
  output         io_bs_waddr_bits_noop,
  output [255:0] io_bs_wdata_data,
  input          io_sourceD_rhazard_valid,
  input  [2:0]   io_sourceD_rhazard_bits_way,
  input  [7:0]   io_sourceD_rhazard_bits_set,
  input          io_release_ready,
  output         io_release_valid,
  output [2:0]   io_release_bits_opcode,
  output [3:0]   io_release_bits_source,
  output [35:0]  io_release_bits_address,
  output [255:0] io_release_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [255:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [255:0] _RAND_2;
  reg [255:0] _RAND_3;
  reg [255:0] _RAND_4;
  reg [255:0] _RAND_5;
  reg [255:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [255:0] _RAND_8;
  reg [255:0] _RAND_9;
  reg [255:0] _RAND_10;
  reg [255:0] _RAND_11;
  reg [255:0] _RAND_12;
  reg [255:0] _RAND_13;
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
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_c_ready & io_c_valid; // @[Decoupled.scala 50:35]
  reg [255:0] buffer_0_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_0_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_1_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_1_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_2_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_2_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_3_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_3_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_4_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_4_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_5_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_5_1; // @[SinkC.scala 13:19]
  reg [255:0] buffer_6_0; // @[SinkC.scala 13:19]
  reg [255:0] buffer_6_1; // @[SinkC.scala 13:19]
  reg [21:0] bufferTag_0; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_1; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_2; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_3; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_4; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_5; // @[SinkC.scala 14:22]
  reg [21:0] bufferTag_6; // @[SinkC.scala 14:22]
  reg [7:0] bufferSet_0; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_1; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_2; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_3; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_4; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_5; // @[SinkC.scala 15:22]
  reg [7:0] bufferSet_6; // @[SinkC.scala 15:22]
  reg  bufferSetVals_0; // @[SinkC.scala 16:30]
  reg  bufferSetVals_1; // @[SinkC.scala 16:30]
  reg  bufferSetVals_2; // @[SinkC.scala 16:30]
  reg  bufferSetVals_3; // @[SinkC.scala 16:30]
  reg  bufferSetVals_4; // @[SinkC.scala 16:30]
  reg  bufferSetVals_5; // @[SinkC.scala 16:30]
  reg  bufferSetVals_6; // @[SinkC.scala 16:30]
  reg  beatValsSave_0_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_0_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_1_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_1_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_2_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_2_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_3_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_3_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_4_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_4_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_5_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_5_1; // @[SinkC.scala 17:29]
  reg  beatValsSave_6_0; // @[SinkC.scala 17:29]
  reg  beatValsSave_6_1; // @[SinkC.scala 17:29]
  reg  beatValsThrough_0_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_0_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_1_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_1_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_2_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_2_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_3_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_3_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_4_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_4_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_5_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_5_1; // @[SinkC.scala 20:32]
  reg  beatValsThrough_6_0; // @[SinkC.scala 20:32]
  reg  beatValsThrough_6_1; // @[SinkC.scala 20:32]
  wire  beatVals_0_0 = beatValsSave_0_0 | beatValsThrough_0_0; // @[SinkC.scala 31:18]
  wire  beatVals_0_1 = beatValsSave_0_1 | beatValsThrough_0_1; // @[SinkC.scala 31:18]
  wire  beatVals_1_0 = beatValsSave_1_0 | beatValsThrough_1_0; // @[SinkC.scala 31:18]
  wire  beatVals_1_1 = beatValsSave_1_1 | beatValsThrough_1_1; // @[SinkC.scala 31:18]
  wire  beatVals_2_0 = beatValsSave_2_0 | beatValsThrough_2_0; // @[SinkC.scala 31:18]
  wire  beatVals_2_1 = beatValsSave_2_1 | beatValsThrough_2_1; // @[SinkC.scala 31:18]
  wire  beatVals_3_0 = beatValsSave_3_0 | beatValsThrough_3_0; // @[SinkC.scala 31:18]
  wire  beatVals_3_1 = beatValsSave_3_1 | beatValsThrough_3_1; // @[SinkC.scala 31:18]
  wire  beatVals_4_0 = beatValsSave_4_0 | beatValsThrough_4_0; // @[SinkC.scala 31:18]
  wire  beatVals_4_1 = beatValsSave_4_1 | beatValsThrough_4_1; // @[SinkC.scala 31:18]
  wire  beatVals_5_0 = beatValsSave_5_0 | beatValsThrough_5_0; // @[SinkC.scala 31:18]
  wire  beatVals_5_1 = beatValsSave_5_1 | beatValsThrough_5_1; // @[SinkC.scala 31:18]
  wire  beatVals_6_0 = beatValsSave_6_0 | beatValsThrough_6_0; // @[SinkC.scala 31:18]
  wire  beatVals_6_1 = beatValsSave_6_1 | beatValsThrough_6_1; // @[SinkC.scala 31:18]
  wire [1:0] _bufVals_T = {beatVals_0_1,beatVals_0_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_2 = {beatVals_1_1,beatVals_1_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_4 = {beatVals_2_1,beatVals_2_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_6 = {beatVals_3_1,beatVals_3_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_8 = {beatVals_4_1,beatVals_4_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_10 = {beatVals_5_1,beatVals_5_0}; // @[SinkC.scala 40:46]
  wire [1:0] _bufVals_T_12 = {beatVals_6_1,beatVals_6_0}; // @[SinkC.scala 40:46]
  wire [6:0] bufVals = {|_bufVals_T_12,|_bufVals_T_10,|_bufVals_T_8,|_bufVals_T_6,|_bufVals_T_4,|_bufVals_T_2,|
    _bufVals_T}; // @[SinkC.scala 40:63]
  wire  full = &bufVals; // @[SinkC.scala 41:26]
  wire  isRelease = io_c_bits_opcode == 3'h6; // @[SinkC.scala 43:33]
  wire  isReleaseData = io_c_bits_opcode == 3'h7; // @[SinkC.scala 44:37]
  wire  isProbeAck = io_c_bits_opcode == 3'h4; // @[SinkC.scala 45:34]
  wire  isProbeAckData = io_c_bits_opcode == 3'h5; // @[SinkC.scala 46:38]
  wire  isResp = isProbeAck | isProbeAckData; // @[SinkC.scala 47:27]
  wire  isReq = isRelease | isReleaseData; // @[SinkC.scala 48:25]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_c_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  count = beats1 & ~counter1; // @[Edges.scala 233:25]
  wire  noSpace = full & beats1_opdata; // @[SinkC.scala 51:22]
  wire [6:0] _insertIdx_T = ~bufVals; // @[SinkC.scala 52:35]
  wire [2:0] _insertIdx_T_8 = _insertIdx_T[5] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_9 = _insertIdx_T[4] ? 3'h4 : _insertIdx_T_8; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_10 = _insertIdx_T[3] ? 3'h3 : _insertIdx_T_9; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_11 = _insertIdx_T[2] ? 3'h2 : _insertIdx_T_10; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_12 = _insertIdx_T[1] ? 3'h1 : _insertIdx_T_11; // @[Mux.scala 47:70]
  wire [2:0] insertIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  wire  _insertIdxReg_T_1 = _T & first; // @[SinkC.scala 53:52]
  reg [2:0] insertIdxReg; // @[Reg.scala 16:16]
  wire [29:0] set = io_c_bits_address[35:6]; // @[HuanCun.scala 145:22]
  wire [21:0] tag = set[29:8]; // @[HuanCun.scala 146:19]
  wire [7:0] set_1 = set[7:0]; // @[HuanCun.scala 147:30]
  wire  _io_c_ready_T = ~noSpace; // @[SinkC.scala 56:25]
  wire  _task_rT = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  reg [7:0] task_rset; // @[Reg.scala 16:16]
  reg [21:0] task_rtag; // @[Reg.scala 16:16]
  reg [2:0] task_rway; // @[Reg.scala 16:16]
  reg [2:0] task_rbufIdx; // @[Reg.scala 16:16]
  reg [2:0] task_ropcode; // @[Reg.scala 16:16]
  reg [3:0] task_rsource; // @[Reg.scala 16:16]
  reg  task_rsave; // @[Reg.scala 16:16]
  reg  task_rdrop; // @[Reg.scala 16:16]
  reg  task_rrelease; // @[Reg.scala 16:16]
  reg  busy; // @[SinkC.scala 93:21]
  reg [6:0] setMatchVec; // @[SinkC.scala 94:28]
  wire  _GEN_620 = 3'h0 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_621 = ~count; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_623 = 3'h1 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_626 = 3'h2 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_629 = 3'h3 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_632 = 3'h4 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_635 = 3'h5 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_638 = 3'h6 == insertIdx; // @[SinkC.scala 13:19 99:{32,32}]
  wire  _GEN_643 = _GEN_620 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_37 = _GEN_620 & _GEN_621 | beatValsSave_0_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_645 = _GEN_620 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_38 = _GEN_620 & count | beatValsSave_0_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_648 = _GEN_623 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_39 = _GEN_623 & _GEN_621 | beatValsSave_1_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_650 = _GEN_623 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_40 = _GEN_623 & count | beatValsSave_1_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_653 = _GEN_626 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_41 = _GEN_626 & _GEN_621 | beatValsSave_2_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_655 = _GEN_626 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_42 = _GEN_626 & count | beatValsSave_2_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_658 = _GEN_629 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_43 = _GEN_629 & _GEN_621 | beatValsSave_3_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_660 = _GEN_629 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_44 = _GEN_629 & count | beatValsSave_3_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_663 = _GEN_632 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_45 = _GEN_632 & _GEN_621 | beatValsSave_4_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_665 = _GEN_632 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_46 = _GEN_632 & count | beatValsSave_4_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_668 = _GEN_635 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_47 = _GEN_635 & _GEN_621 | beatValsSave_5_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_670 = _GEN_635 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_48 = _GEN_635 & count | beatValsSave_5_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_673 = _GEN_638 & _GEN_621; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_49 = _GEN_638 & _GEN_621 | beatValsSave_6_0; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_675 = _GEN_638 & count; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_50 = _GEN_638 & count | beatValsSave_6_1; // @[SinkC.scala 100:{38,38} 17:29]
  wire  _GEN_51 = _GEN_643 | beatValsThrough_0_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_52 = _GEN_645 | beatValsThrough_0_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_53 = _GEN_648 | beatValsThrough_1_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_54 = _GEN_650 | beatValsThrough_1_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_55 = _GEN_653 | beatValsThrough_2_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_56 = _GEN_655 | beatValsThrough_2_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_57 = _GEN_658 | beatValsThrough_3_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_58 = _GEN_660 | beatValsThrough_3_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_59 = _GEN_663 | beatValsThrough_4_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_60 = _GEN_665 | beatValsThrough_4_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_61 = _GEN_668 | beatValsThrough_5_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_62 = _GEN_670 | beatValsThrough_5_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_63 = _GEN_673 | beatValsThrough_6_0; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_64 = _GEN_675 | beatValsThrough_6_1; // @[SinkC.scala 101:{41,41} 20:32]
  wire  _GEN_72 = _GEN_620 | bufferSetVals_0; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_73 = _GEN_623 | bufferSetVals_1; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_74 = _GEN_626 | bufferSetVals_2; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_75 = _GEN_629 | bufferSetVals_3; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_76 = _GEN_632 | bufferSetVals_4; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_77 = _GEN_635 | bufferSetVals_5; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_78 = _GEN_638 | bufferSetVals_6; // @[SinkC.scala 104:{34,34} 16:30]
  wire  _GEN_93 = isProbeAckData ? _GEN_72 : bufferSetVals_0; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_94 = isProbeAckData ? _GEN_73 : bufferSetVals_1; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_95 = isProbeAckData ? _GEN_74 : bufferSetVals_2; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_96 = isProbeAckData ? _GEN_75 : bufferSetVals_3; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_97 = isProbeAckData ? _GEN_76 : bufferSetVals_4; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_98 = isProbeAckData ? _GEN_77 : bufferSetVals_5; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_99 = isProbeAckData ? _GEN_78 : bufferSetVals_6; // @[SinkC.scala 103:28 16:30]
  wire  _GEN_718 = 3'h0 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_721 = 3'h1 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_724 = 3'h2 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_727 = 3'h3 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_730 = 3'h4 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_733 = 3'h5 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_736 = 3'h6 == insertIdxReg; // @[SinkC.scala 109:{35,35} 13:19]
  wire  _GEN_741 = _GEN_718 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_128 = _GEN_718 & _GEN_621 | beatValsSave_0_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_743 = _GEN_718 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_129 = _GEN_718 & count | beatValsSave_0_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_746 = _GEN_721 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_130 = _GEN_721 & _GEN_621 | beatValsSave_1_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_748 = _GEN_721 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_131 = _GEN_721 & count | beatValsSave_1_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_751 = _GEN_724 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_132 = _GEN_724 & _GEN_621 | beatValsSave_2_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_753 = _GEN_724 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_133 = _GEN_724 & count | beatValsSave_2_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_756 = _GEN_727 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_134 = _GEN_727 & _GEN_621 | beatValsSave_3_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_758 = _GEN_727 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_135 = _GEN_727 & count | beatValsSave_3_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_761 = _GEN_730 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_136 = _GEN_730 & _GEN_621 | beatValsSave_4_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_763 = _GEN_730 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_137 = _GEN_730 & count | beatValsSave_4_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_766 = _GEN_733 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_138 = _GEN_733 & _GEN_621 | beatValsSave_5_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_768 = _GEN_733 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_139 = _GEN_733 & count | beatValsSave_5_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_771 = _GEN_736 & _GEN_621; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_140 = _GEN_736 & _GEN_621 | beatValsSave_6_0; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_773 = _GEN_736 & count; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_141 = _GEN_736 & count | beatValsSave_6_1; // @[SinkC.scala 110:{41,41} 17:29]
  wire  _GEN_142 = _GEN_741 | beatValsThrough_0_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_143 = _GEN_743 | beatValsThrough_0_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_144 = _GEN_746 | beatValsThrough_1_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_145 = _GEN_748 | beatValsThrough_1_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_146 = _GEN_751 | beatValsThrough_2_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_147 = _GEN_753 | beatValsThrough_2_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_148 = _GEN_756 | beatValsThrough_3_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_149 = _GEN_758 | beatValsThrough_3_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_150 = _GEN_761 | beatValsThrough_4_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_151 = _GEN_763 | beatValsThrough_4_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_152 = _GEN_766 | beatValsThrough_5_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_153 = _GEN_768 | beatValsThrough_5_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_154 = _GEN_771 | beatValsThrough_6_0; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_155 = _GEN_773 | beatValsThrough_6_1; // @[SinkC.scala 111:{44,44} 20:32]
  wire  _GEN_170 = first ? _GEN_37 : _GEN_128; // @[SinkC.scala 98:17]
  wire  _GEN_171 = first ? _GEN_38 : _GEN_129; // @[SinkC.scala 98:17]
  wire  _GEN_172 = first ? _GEN_39 : _GEN_130; // @[SinkC.scala 98:17]
  wire  _GEN_173 = first ? _GEN_40 : _GEN_131; // @[SinkC.scala 98:17]
  wire  _GEN_174 = first ? _GEN_41 : _GEN_132; // @[SinkC.scala 98:17]
  wire  _GEN_175 = first ? _GEN_42 : _GEN_133; // @[SinkC.scala 98:17]
  wire  _GEN_176 = first ? _GEN_43 : _GEN_134; // @[SinkC.scala 98:17]
  wire  _GEN_177 = first ? _GEN_44 : _GEN_135; // @[SinkC.scala 98:17]
  wire  _GEN_178 = first ? _GEN_45 : _GEN_136; // @[SinkC.scala 98:17]
  wire  _GEN_179 = first ? _GEN_46 : _GEN_137; // @[SinkC.scala 98:17]
  wire  _GEN_180 = first ? _GEN_47 : _GEN_138; // @[SinkC.scala 98:17]
  wire  _GEN_181 = first ? _GEN_48 : _GEN_139; // @[SinkC.scala 98:17]
  wire  _GEN_182 = first ? _GEN_49 : _GEN_140; // @[SinkC.scala 98:17]
  wire  _GEN_183 = first ? _GEN_50 : _GEN_141; // @[SinkC.scala 98:17]
  wire  _GEN_184 = first ? _GEN_51 : _GEN_142; // @[SinkC.scala 98:17]
  wire  _GEN_185 = first ? _GEN_52 : _GEN_143; // @[SinkC.scala 98:17]
  wire  _GEN_186 = first ? _GEN_53 : _GEN_144; // @[SinkC.scala 98:17]
  wire  _GEN_187 = first ? _GEN_54 : _GEN_145; // @[SinkC.scala 98:17]
  wire  _GEN_188 = first ? _GEN_55 : _GEN_146; // @[SinkC.scala 98:17]
  wire  _GEN_189 = first ? _GEN_56 : _GEN_147; // @[SinkC.scala 98:17]
  wire  _GEN_190 = first ? _GEN_57 : _GEN_148; // @[SinkC.scala 98:17]
  wire  _GEN_191 = first ? _GEN_58 : _GEN_149; // @[SinkC.scala 98:17]
  wire  _GEN_192 = first ? _GEN_59 : _GEN_150; // @[SinkC.scala 98:17]
  wire  _GEN_193 = first ? _GEN_60 : _GEN_151; // @[SinkC.scala 98:17]
  wire  _GEN_194 = first ? _GEN_61 : _GEN_152; // @[SinkC.scala 98:17]
  wire  _GEN_195 = first ? _GEN_62 : _GEN_153; // @[SinkC.scala 98:17]
  wire  _GEN_196 = first ? _GEN_63 : _GEN_154; // @[SinkC.scala 98:17]
  wire  _GEN_197 = first ? _GEN_64 : _GEN_155; // @[SinkC.scala 98:17]
  wire  _GEN_205 = first ? _GEN_93 : bufferSetVals_0; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_206 = first ? _GEN_94 : bufferSetVals_1; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_207 = first ? _GEN_95 : bufferSetVals_2; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_208 = first ? _GEN_96 : bufferSetVals_3; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_209 = first ? _GEN_97 : bufferSetVals_4; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_210 = first ? _GEN_98 : bufferSetVals_5; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_211 = first ? _GEN_99 : bufferSetVals_6; // @[SinkC.scala 98:17 16:30]
  wire  _GEN_240 = _T & beats1_opdata ? _GEN_170 : beatValsSave_0_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_241 = _T & beats1_opdata ? _GEN_171 : beatValsSave_0_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_242 = _T & beats1_opdata ? _GEN_172 : beatValsSave_1_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_243 = _T & beats1_opdata ? _GEN_173 : beatValsSave_1_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_244 = _T & beats1_opdata ? _GEN_174 : beatValsSave_2_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_245 = _T & beats1_opdata ? _GEN_175 : beatValsSave_2_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_246 = _T & beats1_opdata ? _GEN_176 : beatValsSave_3_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_247 = _T & beats1_opdata ? _GEN_177 : beatValsSave_3_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_248 = _T & beats1_opdata ? _GEN_178 : beatValsSave_4_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_249 = _T & beats1_opdata ? _GEN_179 : beatValsSave_4_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_250 = _T & beats1_opdata ? _GEN_180 : beatValsSave_5_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_251 = _T & beats1_opdata ? _GEN_181 : beatValsSave_5_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_252 = _T & beats1_opdata ? _GEN_182 : beatValsSave_6_0; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_253 = _T & beats1_opdata ? _GEN_183 : beatValsSave_6_1; // @[SinkC.scala 17:29 97:29]
  wire  _GEN_254 = _T & beats1_opdata ? _GEN_184 : beatValsThrough_0_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_255 = _T & beats1_opdata ? _GEN_185 : beatValsThrough_0_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_256 = _T & beats1_opdata ? _GEN_186 : beatValsThrough_1_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_257 = _T & beats1_opdata ? _GEN_187 : beatValsThrough_1_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_258 = _T & beats1_opdata ? _GEN_188 : beatValsThrough_2_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_259 = _T & beats1_opdata ? _GEN_189 : beatValsThrough_2_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_260 = _T & beats1_opdata ? _GEN_190 : beatValsThrough_3_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_261 = _T & beats1_opdata ? _GEN_191 : beatValsThrough_3_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_262 = _T & beats1_opdata ? _GEN_192 : beatValsThrough_4_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_263 = _T & beats1_opdata ? _GEN_193 : beatValsThrough_4_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_264 = _T & beats1_opdata ? _GEN_194 : beatValsThrough_5_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_265 = _T & beats1_opdata ? _GEN_195 : beatValsThrough_5_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_266 = _T & beats1_opdata ? _GEN_196 : beatValsThrough_6_0; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_267 = _T & beats1_opdata ? _GEN_197 : beatValsThrough_6_1; // @[SinkC.scala 97:29 20:32]
  wire  _GEN_275 = _T & beats1_opdata ? _GEN_205 : bufferSetVals_0; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_276 = _T & beats1_opdata ? _GEN_206 : bufferSetVals_1; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_277 = _T & beats1_opdata ? _GEN_207 : bufferSetVals_2; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_278 = _T & beats1_opdata ? _GEN_208 : bufferSetVals_3; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_279 = _T & beats1_opdata ? _GEN_209 : bufferSetVals_4; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_280 = _T & beats1_opdata ? _GEN_210 : bufferSetVals_5; // @[SinkC.scala 97:29 16:30]
  wire  _GEN_281 = _T & beats1_opdata ? _GEN_211 : bufferSetVals_6; // @[SinkC.scala 97:29 16:30]
  wire  _setMatchVec_T = 3'h0 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_6 = busy & 3'h0 == task_rbufIdx ? 1'h0 : bufferTag_0 == tag & bufferSet_0 == set_1 &
    bufferSetVals_0; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_7 = 3'h1 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_13 = busy & 3'h1 == task_rbufIdx ? 1'h0 : bufferTag_1 == tag & bufferSet_1 == set_1 &
    bufferSetVals_1; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_14 = 3'h2 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_20 = busy & 3'h2 == task_rbufIdx ? 1'h0 : bufferTag_2 == tag & bufferSet_2 == set_1 &
    bufferSetVals_2; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_21 = 3'h3 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_27 = busy & 3'h3 == task_rbufIdx ? 1'h0 : bufferTag_3 == tag & bufferSet_3 == set_1 &
    bufferSetVals_3; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_28 = 3'h4 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_34 = busy & 3'h4 == task_rbufIdx ? 1'h0 : bufferTag_4 == tag & bufferSet_4 == set_1 &
    bufferSetVals_4; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_35 = 3'h5 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_41 = busy & 3'h5 == task_rbufIdx ? 1'h0 : bufferTag_5 == tag & bufferSet_5 == set_1 &
    bufferSetVals_5; // @[SinkC.scala 118:12]
  wire  _setMatchVec_T_42 = 3'h6 == task_rbufIdx; // @[SinkC.scala 118:25]
  wire  _setMatchVec_T_48 = busy & 3'h6 == task_rbufIdx ? 1'h0 : bufferTag_6 == tag & bufferSet_6 == set_1 &
    bufferSetVals_6; // @[SinkC.scala 118:12]
  wire [6:0] _setMatchVec_T_49 = {_setMatchVec_T_48,_setMatchVec_T_41,_setMatchVec_T_34,_setMatchVec_T_27,
    _setMatchVec_T_20,_setMatchVec_T_13,_setMatchVec_T_6}; // @[Cat.scala 31:58]
  wire [2:0] bufIdx_hi = setMatchVec[6:4]; // @[OneHot.scala 30:18]
  wire [3:0] bufIdx_lo = setMatchVec[3:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T = |bufIdx_hi; // @[OneHot.scala 32:14]
  wire [3:0] _GEN_811 = {{1'd0}, bufIdx_hi}; // @[OneHot.scala 32:28]
  wire [3:0] _bufIdx_T_1 = _GEN_811 | bufIdx_lo; // @[OneHot.scala 32:28]
  wire [1:0] bufIdx_hi_1 = _bufIdx_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] bufIdx_lo_1 = _bufIdx_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T_2 = |bufIdx_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _bufIdx_T_3 = bufIdx_hi_1 | bufIdx_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] bufIdx = {_bufIdx_T,_bufIdx_T_2,_bufIdx_T_3[1]}; // @[Cat.scala 31:58]
  wire  _GEN_297 = 3'h0 == bufIdx ? 1'h0 : _GEN_240; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_298 = 3'h1 == bufIdx ? 1'h0 : _GEN_242; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_299 = 3'h2 == bufIdx ? 1'h0 : _GEN_244; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_300 = 3'h3 == bufIdx ? 1'h0 : _GEN_246; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_301 = 3'h4 == bufIdx ? 1'h0 : _GEN_248; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_302 = 3'h5 == bufIdx ? 1'h0 : _GEN_250; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_303 = 3'h6 == bufIdx ? 1'h0 : _GEN_252; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_304 = 3'h0 == bufIdx ? 1'h0 : _GEN_241; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_305 = 3'h1 == bufIdx ? 1'h0 : _GEN_243; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_306 = 3'h2 == bufIdx ? 1'h0 : _GEN_245; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_307 = 3'h3 == bufIdx ? 1'h0 : _GEN_247; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_308 = 3'h4 == bufIdx ? 1'h0 : _GEN_249; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_309 = 3'h5 == bufIdx ? 1'h0 : _GEN_251; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_310 = 3'h6 == bufIdx ? 1'h0 : _GEN_253; // @[SinkC.scala 124:{36,36}]
  wire  _GEN_311 = 3'h0 == bufIdx ? 1'h0 : _GEN_254; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_312 = 3'h1 == bufIdx ? 1'h0 : _GEN_256; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_313 = 3'h2 == bufIdx ? 1'h0 : _GEN_258; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_314 = 3'h3 == bufIdx ? 1'h0 : _GEN_260; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_315 = 3'h4 == bufIdx ? 1'h0 : _GEN_262; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_316 = 3'h5 == bufIdx ? 1'h0 : _GEN_264; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_317 = 3'h6 == bufIdx ? 1'h0 : _GEN_266; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_318 = 3'h0 == bufIdx ? 1'h0 : _GEN_255; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_319 = 3'h1 == bufIdx ? 1'h0 : _GEN_257; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_320 = 3'h2 == bufIdx ? 1'h0 : _GEN_259; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_321 = 3'h3 == bufIdx ? 1'h0 : _GEN_261; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_322 = 3'h4 == bufIdx ? 1'h0 : _GEN_263; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_323 = 3'h5 == bufIdx ? 1'h0 : _GEN_265; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_324 = 3'h6 == bufIdx ? 1'h0 : _GEN_267; // @[SinkC.scala 125:{39,39}]
  wire  _GEN_325 = 3'h0 == bufIdx ? 1'h0 : _GEN_275; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_326 = 3'h1 == bufIdx ? 1'h0 : _GEN_276; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_327 = 3'h2 == bufIdx ? 1'h0 : _GEN_277; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_328 = 3'h3 == bufIdx ? 1'h0 : _GEN_278; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_329 = 3'h4 == bufIdx ? 1'h0 : _GEN_279; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_330 = 3'h5 == bufIdx ? 1'h0 : _GEN_280; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_331 = 3'h6 == bufIdx ? 1'h0 : _GEN_281; // @[SinkC.scala 126:{27,27}]
  wire  _GEN_339 = |setMatchVec ? _GEN_297 : _GEN_240; // @[SinkC.scala 121:27]
  wire  _GEN_340 = |setMatchVec ? _GEN_298 : _GEN_242; // @[SinkC.scala 121:27]
  wire  _GEN_341 = |setMatchVec ? _GEN_299 : _GEN_244; // @[SinkC.scala 121:27]
  wire  _GEN_342 = |setMatchVec ? _GEN_300 : _GEN_246; // @[SinkC.scala 121:27]
  wire  _GEN_343 = |setMatchVec ? _GEN_301 : _GEN_248; // @[SinkC.scala 121:27]
  wire  _GEN_344 = |setMatchVec ? _GEN_302 : _GEN_250; // @[SinkC.scala 121:27]
  wire  _GEN_345 = |setMatchVec ? _GEN_303 : _GEN_252; // @[SinkC.scala 121:27]
  wire  _GEN_346 = |setMatchVec ? _GEN_304 : _GEN_241; // @[SinkC.scala 121:27]
  wire  _GEN_347 = |setMatchVec ? _GEN_305 : _GEN_243; // @[SinkC.scala 121:27]
  wire  _GEN_348 = |setMatchVec ? _GEN_306 : _GEN_245; // @[SinkC.scala 121:27]
  wire  _GEN_349 = |setMatchVec ? _GEN_307 : _GEN_247; // @[SinkC.scala 121:27]
  wire  _GEN_350 = |setMatchVec ? _GEN_308 : _GEN_249; // @[SinkC.scala 121:27]
  wire  _GEN_351 = |setMatchVec ? _GEN_309 : _GEN_251; // @[SinkC.scala 121:27]
  wire  _GEN_352 = |setMatchVec ? _GEN_310 : _GEN_253; // @[SinkC.scala 121:27]
  wire  _GEN_353 = |setMatchVec ? _GEN_311 : _GEN_254; // @[SinkC.scala 121:27]
  wire  _GEN_354 = |setMatchVec ? _GEN_312 : _GEN_256; // @[SinkC.scala 121:27]
  wire  _GEN_355 = |setMatchVec ? _GEN_313 : _GEN_258; // @[SinkC.scala 121:27]
  wire  _GEN_356 = |setMatchVec ? _GEN_314 : _GEN_260; // @[SinkC.scala 121:27]
  wire  _GEN_357 = |setMatchVec ? _GEN_315 : _GEN_262; // @[SinkC.scala 121:27]
  wire  _GEN_358 = |setMatchVec ? _GEN_316 : _GEN_264; // @[SinkC.scala 121:27]
  wire  _GEN_359 = |setMatchVec ? _GEN_317 : _GEN_266; // @[SinkC.scala 121:27]
  wire  _GEN_360 = |setMatchVec ? _GEN_318 : _GEN_255; // @[SinkC.scala 121:27]
  wire  _GEN_361 = |setMatchVec ? _GEN_319 : _GEN_257; // @[SinkC.scala 121:27]
  wire  _GEN_362 = |setMatchVec ? _GEN_320 : _GEN_259; // @[SinkC.scala 121:27]
  wire  _GEN_363 = |setMatchVec ? _GEN_321 : _GEN_261; // @[SinkC.scala 121:27]
  wire  _GEN_364 = |setMatchVec ? _GEN_322 : _GEN_263; // @[SinkC.scala 121:27]
  wire  _GEN_365 = |setMatchVec ? _GEN_323 : _GEN_265; // @[SinkC.scala 121:27]
  wire  _GEN_366 = |setMatchVec ? _GEN_324 : _GEN_267; // @[SinkC.scala 121:27]
  wire  _GEN_367 = |setMatchVec ? _GEN_325 : _GEN_275; // @[SinkC.scala 121:27]
  wire  _GEN_368 = |setMatchVec ? _GEN_326 : _GEN_276; // @[SinkC.scala 121:27]
  wire  _GEN_369 = |setMatchVec ? _GEN_327 : _GEN_277; // @[SinkC.scala 121:27]
  wire  _GEN_370 = |setMatchVec ? _GEN_328 : _GEN_278; // @[SinkC.scala 121:27]
  wire  _GEN_371 = |setMatchVec ? _GEN_329 : _GEN_279; // @[SinkC.scala 121:27]
  wire  _GEN_372 = |setMatchVec ? _GEN_330 : _GEN_280; // @[SinkC.scala 121:27]
  wire  _GEN_373 = |setMatchVec ? _GEN_331 : _GEN_281; // @[SinkC.scala 121:27]
  reg  w_counter_save; // @[SinkC.scala 131:31]
  reg  w_counter_through; // @[SinkC.scala 132:34]
  wire  _task_wsafe_T_2 = io_sourceD_rhazard_bits_set == io_task_bits_set & io_sourceD_rhazard_bits_way ==
    io_task_bits_way; // @[Common.scala 212:15]
  wire  task_wsafe = ~(io_sourceD_rhazard_valid & _task_wsafe_T_2); // @[SinkC.scala 133:21]
  reg  w_save_done_r; // @[SinkC.scala 136:30]
  reg  w_through_done_r; // @[SinkC.scala 137:33]
  wire  _T_85 = ~io_task_bits_drop; // @[SinkC.scala 143:24]
  wire  _GEN_382 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_339; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_383 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_340; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_384 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_341; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_385 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_342; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_386 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_343; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_387 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_344; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_388 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_345; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_389 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_346; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_390 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_347; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_391 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_348; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_392 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_349; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_393 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_350; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_394 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_351; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_395 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_352; // @[SinkC.scala 144:{43,43}]
  wire  _GEN_396 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_382 : _GEN_339; // @[SinkC.scala 143:36]
  wire  _GEN_397 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_383 : _GEN_340; // @[SinkC.scala 143:36]
  wire  _GEN_398 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_384 : _GEN_341; // @[SinkC.scala 143:36]
  wire  _GEN_399 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_385 : _GEN_342; // @[SinkC.scala 143:36]
  wire  _GEN_400 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_386 : _GEN_343; // @[SinkC.scala 143:36]
  wire  _GEN_401 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_387 : _GEN_344; // @[SinkC.scala 143:36]
  wire  _GEN_402 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_388 : _GEN_345; // @[SinkC.scala 143:36]
  wire  _GEN_403 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_389 : _GEN_346; // @[SinkC.scala 143:36]
  wire  _GEN_404 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_390 : _GEN_347; // @[SinkC.scala 143:36]
  wire  _GEN_405 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_391 : _GEN_348; // @[SinkC.scala 143:36]
  wire  _GEN_406 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_392 : _GEN_349; // @[SinkC.scala 143:36]
  wire  _GEN_407 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_393 : _GEN_350; // @[SinkC.scala 143:36]
  wire  _GEN_408 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_394 : _GEN_351; // @[SinkC.scala 143:36]
  wire  _GEN_409 = ~io_task_bits_save & ~io_task_bits_drop ? _GEN_395 : _GEN_352; // @[SinkC.scala 143:36]
  wire  _GEN_410 = ~io_task_bits_save & ~io_task_bits_drop | w_save_done_r; // @[SinkC.scala 143:36 145:21 136:30]
  wire  _GEN_411 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_353; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_412 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_354; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_413 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_355; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_414 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_356; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_415 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_357; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_416 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_358; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_417 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_359; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_418 = 3'h0 == io_task_bits_bufIdx ? 1'h0 : _GEN_360; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_419 = 3'h1 == io_task_bits_bufIdx ? 1'h0 : _GEN_361; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_420 = 3'h2 == io_task_bits_bufIdx ? 1'h0 : _GEN_362; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_421 = 3'h3 == io_task_bits_bufIdx ? 1'h0 : _GEN_363; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_422 = 3'h4 == io_task_bits_bufIdx ? 1'h0 : _GEN_364; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_423 = 3'h5 == io_task_bits_bufIdx ? 1'h0 : _GEN_365; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_424 = 3'h6 == io_task_bits_bufIdx ? 1'h0 : _GEN_366; // @[SinkC.scala 148:{46,46}]
  wire  _GEN_425 = ~io_task_bits_release & _T_85 ? _GEN_411 : _GEN_353; // @[SinkC.scala 147:39]
  wire  _GEN_426 = ~io_task_bits_release & _T_85 ? _GEN_412 : _GEN_354; // @[SinkC.scala 147:39]
  wire  _GEN_427 = ~io_task_bits_release & _T_85 ? _GEN_413 : _GEN_355; // @[SinkC.scala 147:39]
  wire  _GEN_428 = ~io_task_bits_release & _T_85 ? _GEN_414 : _GEN_356; // @[SinkC.scala 147:39]
  wire  _GEN_429 = ~io_task_bits_release & _T_85 ? _GEN_415 : _GEN_357; // @[SinkC.scala 147:39]
  wire  _GEN_430 = ~io_task_bits_release & _T_85 ? _GEN_416 : _GEN_358; // @[SinkC.scala 147:39]
  wire  _GEN_431 = ~io_task_bits_release & _T_85 ? _GEN_417 : _GEN_359; // @[SinkC.scala 147:39]
  wire  _GEN_432 = ~io_task_bits_release & _T_85 ? _GEN_418 : _GEN_360; // @[SinkC.scala 147:39]
  wire  _GEN_433 = ~io_task_bits_release & _T_85 ? _GEN_419 : _GEN_361; // @[SinkC.scala 147:39]
  wire  _GEN_434 = ~io_task_bits_release & _T_85 ? _GEN_420 : _GEN_362; // @[SinkC.scala 147:39]
  wire  _GEN_435 = ~io_task_bits_release & _T_85 ? _GEN_421 : _GEN_363; // @[SinkC.scala 147:39]
  wire  _GEN_436 = ~io_task_bits_release & _T_85 ? _GEN_422 : _GEN_364; // @[SinkC.scala 147:39]
  wire  _GEN_437 = ~io_task_bits_release & _T_85 ? _GEN_423 : _GEN_365; // @[SinkC.scala 147:39]
  wire  _GEN_438 = ~io_task_bits_release & _T_85 ? _GEN_424 : _GEN_366; // @[SinkC.scala 147:39]
  wire  _GEN_439 = ~io_task_bits_release & _T_85 | w_through_done_r; // @[SinkC.scala 147:39 149:24 137:33]
  wire  _GEN_440 = _task_rT | busy; // @[SinkC.scala 140:24 142:10 93:21]
  wire  _GEN_441 = _task_rT ? _GEN_396 : _GEN_339; // @[SinkC.scala 140:24]
  wire  _GEN_442 = _task_rT ? _GEN_397 : _GEN_340; // @[SinkC.scala 140:24]
  wire  _GEN_443 = _task_rT ? _GEN_398 : _GEN_341; // @[SinkC.scala 140:24]
  wire  _GEN_444 = _task_rT ? _GEN_399 : _GEN_342; // @[SinkC.scala 140:24]
  wire  _GEN_445 = _task_rT ? _GEN_400 : _GEN_343; // @[SinkC.scala 140:24]
  wire  _GEN_446 = _task_rT ? _GEN_401 : _GEN_344; // @[SinkC.scala 140:24]
  wire  _GEN_447 = _task_rT ? _GEN_402 : _GEN_345; // @[SinkC.scala 140:24]
  wire  _GEN_448 = _task_rT ? _GEN_403 : _GEN_346; // @[SinkC.scala 140:24]
  wire  _GEN_449 = _task_rT ? _GEN_404 : _GEN_347; // @[SinkC.scala 140:24]
  wire  _GEN_450 = _task_rT ? _GEN_405 : _GEN_348; // @[SinkC.scala 140:24]
  wire  _GEN_451 = _task_rT ? _GEN_406 : _GEN_349; // @[SinkC.scala 140:24]
  wire  _GEN_452 = _task_rT ? _GEN_407 : _GEN_350; // @[SinkC.scala 140:24]
  wire  _GEN_453 = _task_rT ? _GEN_408 : _GEN_351; // @[SinkC.scala 140:24]
  wire  _GEN_454 = _task_rT ? _GEN_409 : _GEN_352; // @[SinkC.scala 140:24]
  wire  _GEN_455 = _task_rT ? _GEN_410 : w_save_done_r; // @[SinkC.scala 140:24 136:30]
  wire  _GEN_456 = _task_rT ? _GEN_425 : _GEN_353; // @[SinkC.scala 140:24]
  wire  _GEN_457 = _task_rT ? _GEN_426 : _GEN_354; // @[SinkC.scala 140:24]
  wire  _GEN_458 = _task_rT ? _GEN_427 : _GEN_355; // @[SinkC.scala 140:24]
  wire  _GEN_459 = _task_rT ? _GEN_428 : _GEN_356; // @[SinkC.scala 140:24]
  wire  _GEN_460 = _task_rT ? _GEN_429 : _GEN_357; // @[SinkC.scala 140:24]
  wire  _GEN_461 = _task_rT ? _GEN_430 : _GEN_358; // @[SinkC.scala 140:24]
  wire  _GEN_462 = _task_rT ? _GEN_431 : _GEN_359; // @[SinkC.scala 140:24]
  wire  _GEN_463 = _task_rT ? _GEN_432 : _GEN_360; // @[SinkC.scala 140:24]
  wire  _GEN_464 = _task_rT ? _GEN_433 : _GEN_361; // @[SinkC.scala 140:24]
  wire  _GEN_465 = _task_rT ? _GEN_434 : _GEN_362; // @[SinkC.scala 140:24]
  wire  _GEN_466 = _task_rT ? _GEN_435 : _GEN_363; // @[SinkC.scala 140:24]
  wire  _GEN_467 = _task_rT ? _GEN_436 : _GEN_364; // @[SinkC.scala 140:24]
  wire  _GEN_468 = _task_rT ? _GEN_437 : _GEN_365; // @[SinkC.scala 140:24]
  wire  _GEN_469 = _task_rT ? _GEN_438 : _GEN_366; // @[SinkC.scala 140:24]
  wire  _GEN_470 = _task_rT ? _GEN_439 : w_through_done_r; // @[SinkC.scala 140:24 137:33]
  wire  _GEN_472 = _setMatchVec_T & w_counter_save ? beatValsSave_0_1 : beatValsSave_0_0; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_814 = ~w_counter_save; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_473 = _setMatchVec_T_7 & ~w_counter_save ? beatValsSave_1_0 : _GEN_472; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_474 = _setMatchVec_T_7 & w_counter_save ? beatValsSave_1_1 : _GEN_473; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_475 = _setMatchVec_T_14 & ~w_counter_save ? beatValsSave_2_0 : _GEN_474; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_476 = _setMatchVec_T_14 & w_counter_save ? beatValsSave_2_1 : _GEN_475; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_477 = _setMatchVec_T_21 & ~w_counter_save ? beatValsSave_3_0 : _GEN_476; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_478 = _setMatchVec_T_21 & w_counter_save ? beatValsSave_3_1 : _GEN_477; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_479 = _setMatchVec_T_28 & ~w_counter_save ? beatValsSave_4_0 : _GEN_478; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_480 = _setMatchVec_T_28 & w_counter_save ? beatValsSave_4_1 : _GEN_479; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_481 = _setMatchVec_T_35 & ~w_counter_save ? beatValsSave_5_0 : _GEN_480; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_482 = _setMatchVec_T_35 & w_counter_save ? beatValsSave_5_1 : _GEN_481; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_483 = _setMatchVec_T_42 & ~w_counter_save ? beatValsSave_6_0 : _GEN_482; // @[SinkC.scala 158:{28,28}]
  wire  _GEN_484 = _setMatchVec_T_42 & w_counter_save ? beatValsSave_6_1 : _GEN_483; // @[SinkC.scala 158:{28,28}]
  wire [255:0] _GEN_486 = _setMatchVec_T & w_counter_save ? buffer_0_1 : buffer_0_0; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_487 = _setMatchVec_T_7 & _GEN_814 ? buffer_1_0 : _GEN_486; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_488 = _setMatchVec_T_7 & w_counter_save ? buffer_1_1 : _GEN_487; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_489 = _setMatchVec_T_14 & _GEN_814 ? buffer_2_0 : _GEN_488; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_490 = _setMatchVec_T_14 & w_counter_save ? buffer_2_1 : _GEN_489; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_491 = _setMatchVec_T_21 & _GEN_814 ? buffer_3_0 : _GEN_490; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_492 = _setMatchVec_T_21 & w_counter_save ? buffer_3_1 : _GEN_491; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_493 = _setMatchVec_T_28 & _GEN_814 ? buffer_4_0 : _GEN_492; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_494 = _setMatchVec_T_28 & w_counter_save ? buffer_4_1 : _GEN_493; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_495 = _setMatchVec_T_35 & _GEN_814 ? buffer_5_0 : _GEN_494; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_496 = _setMatchVec_T_35 & w_counter_save ? buffer_5_1 : _GEN_495; // @[SinkC.scala 159:{20,20}]
  wire [255:0] _GEN_497 = _setMatchVec_T_42 & _GEN_814 ? buffer_6_0 : _GEN_496; // @[SinkC.scala 159:{20,20}]
  wire  _GEN_500 = _setMatchVec_T & w_counter_through ? beatValsThrough_0_1 : beatValsThrough_0_0; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_852 = ~w_counter_through; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_501 = _setMatchVec_T_7 & ~w_counter_through ? beatValsThrough_1_0 : _GEN_500; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_502 = _setMatchVec_T_7 & w_counter_through ? beatValsThrough_1_1 : _GEN_501; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_503 = _setMatchVec_T_14 & ~w_counter_through ? beatValsThrough_2_0 : _GEN_502; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_504 = _setMatchVec_T_14 & w_counter_through ? beatValsThrough_2_1 : _GEN_503; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_505 = _setMatchVec_T_21 & ~w_counter_through ? beatValsThrough_3_0 : _GEN_504; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_506 = _setMatchVec_T_21 & w_counter_through ? beatValsThrough_3_1 : _GEN_505; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_507 = _setMatchVec_T_28 & ~w_counter_through ? beatValsThrough_4_0 : _GEN_506; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_508 = _setMatchVec_T_28 & w_counter_through ? beatValsThrough_4_1 : _GEN_507; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_509 = _setMatchVec_T_35 & ~w_counter_through ? beatValsThrough_5_0 : _GEN_508; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_510 = _setMatchVec_T_35 & w_counter_through ? beatValsThrough_5_1 : _GEN_509; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_511 = _setMatchVec_T_42 & ~w_counter_through ? beatValsThrough_6_0 : _GEN_510; // @[SinkC.scala 162:{46,46}]
  wire  _GEN_512 = _setMatchVec_T_42 & w_counter_through ? beatValsThrough_6_1 : _GEN_511; // @[SinkC.scala 162:{46,46}]
  wire [29:0] io_release_bits_address_hi = {task_rtag,task_rset}; // @[Cat.scala 31:58]
  wire [255:0] _GEN_514 = _setMatchVec_T & w_counter_through ? buffer_0_1 : buffer_0_0; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_515 = _setMatchVec_T_7 & _GEN_852 ? buffer_1_0 : _GEN_514; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_516 = _setMatchVec_T_7 & w_counter_through ? buffer_1_1 : _GEN_515; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_517 = _setMatchVec_T_14 & _GEN_852 ? buffer_2_0 : _GEN_516; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_518 = _setMatchVec_T_14 & w_counter_through ? buffer_2_1 : _GEN_517; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_519 = _setMatchVec_T_21 & _GEN_852 ? buffer_3_0 : _GEN_518; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_520 = _setMatchVec_T_21 & w_counter_through ? buffer_3_1 : _GEN_519; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_521 = _setMatchVec_T_28 & _GEN_852 ? buffer_4_0 : _GEN_520; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_522 = _setMatchVec_T_28 & w_counter_through ? buffer_4_1 : _GEN_521; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_523 = _setMatchVec_T_35 & _GEN_852 ? buffer_5_0 : _GEN_522; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_524 = _setMatchVec_T_35 & w_counter_through ? buffer_5_1 : _GEN_523; // @[SinkC.scala 164:{24,24}]
  wire [255:0] _GEN_525 = _setMatchVec_T_42 & _GEN_852 ? buffer_6_0 : _GEN_524; // @[SinkC.scala 164:{24,24}]
  wire  _wfire_save_T = io_bs_waddr_ready & io_bs_waddr_valid; // @[Decoupled.scala 50:35]
  wire  w_fire_save = _wfire_save_T & ~io_bs_waddr_bits_noop; // @[SinkC.scala 174:40]
  wire  w_fire_through = io_release_ready & io_release_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_529 = w_counter_save & w_fire_save | _GEN_455; // @[SinkC.scala 180:{57,73}]
  wire  _GEN_530 = w_counter_through & w_fire_through | _GEN_470; // @[SinkC.scala 181:{63,82}]
  wire  _wdone_T_7 = w_counter_save & w_through_done_r & w_fire_save; // @[SinkC.scala 185:61]
  wire  _wdone_T_8 = w_counter_save & w_counter_through & w_fire_save & w_fire_through | _wdone_T_7; // @[SinkC.scala 184:114]
  wire  _wdone_T_11 = w_save_done_r & w_counter_through & w_fire_through; // @[SinkC.scala 186:61]
  wire  w_done = _wdone_T_8 | _wdone_T_11; // @[SinkC.scala 185:77]
  wire  _T_95 = w_done | busy & task_rdrop; // @[SinkC.scala 188:15]
  reg [3:0] io_taskack_bits_sink_REG; // @[SinkC.scala 200:34]
  reg  io_taskack_valid_REG; // @[SinkC.scala 201:30]
  assign io_c_ready = first ? ~noSpace & ~(isReq & ~io_alloc_ready) : 1'h1; // @[SinkC.scala 56:17]
  assign io_alloc_valid = io_c_valid & isReq & first & _io_c_ready_T; // @[SinkC.scala 59:47]
  assign io_alloc_bits_opcode = io_c_bits_opcode; // @[SinkC.scala 61:24]
  assign io_alloc_bits_param = io_c_bits_param; // @[SinkC.scala 62:23]
  assign io_alloc_bits_size = io_c_bits_size; // @[SinkC.scala 63:22]
  assign io_alloc_bits_source = io_c_bits_source; // @[SinkC.scala 64:24]
  assign io_alloc_bits_set = set[7:0]; // @[HuanCun.scala 147:30]
  assign io_alloc_bits_tag = set[29:8]; // @[HuanCun.scala 146:19]
  assign io_alloc_bits_off = io_c_bits_address[5:0]; // @[HuanCun.scala 147:54]
  assign io_alloc_bits_bufIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  assign io_alloc_bits_dirty = io_c_bits_echo_blockisdirty; // @[SinkC.scala 76:23]
  assign io_resp_valid = io_c_valid & (_io_c_ready_T | ~first) & isResp; // @[SinkC.scala 83:52]
  assign io_resp_bits_hasData = io_c_bits_opcode[0]; // @[Edges.scala 101:36]
  assign io_resp_bits_param = io_c_bits_param; // @[SinkC.scala 85:22]
  assign io_resp_bits_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign io_resp_bits_set = set[7:0]; // @[HuanCun.scala 147:30]
  assign io_resp_bits_bufIdx = first ? insertIdx : insertIdxReg; // @[SinkC.scala 89:29]
  assign io_task_ready = ~busy & task_wsafe; // @[SinkC.scala 139:26]
  assign io_taskack_valid = io_taskack_valid_REG; // @[SinkC.scala 201:20]
  assign io_taskack_bits_sink = io_taskack_bits_sink_REG; // @[SinkC.scala 200:24]
  assign io_bs_waddr_valid = busy & task_rsave & ~w_save_done_r; // @[SinkC.scala 153:44]
  assign io_bs_waddr_bits_way = task_rway; // @[SinkC.scala 154:24]
  assign io_bs_waddr_bits_set = task_rset; // @[SinkC.scala 155:24]
  assign io_bs_waddr_bits_beat = w_counter_save; // @[SinkC.scala 156:25]
  assign io_bs_waddr_bits_noop = ~_GEN_484; // @[SinkC.scala 158:28]
  assign io_bs_wdata_data = _setMatchVec_T_42 & w_counter_save ? buffer_6_1 : _GEN_497; // @[SinkC.scala 159:{20,20}]
  assign io_release_valid = busy & task_rrelease & _GEN_512 & ~w_through_done_r; // @[SinkC.scala 162:99]
  assign io_release_bits_opcode = task_ropcode; // @[SinkC.scala 165:26]
  assign io_release_bits_source = task_rsource; // @[SinkC.scala 167:26]
  assign io_release_bits_address = {io_release_bits_address_hi,6'h0}; // @[Cat.scala 31:58]
  assign io_release_bits_data = _setMatchVec_T_42 & w_counter_through ? buffer_6_1 : _GEN_525; // @[SinkC.scala 164:{24,24}]
  always @(posedge clock) begin
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h0 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_0_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h0 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_0_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h0 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_0_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h0 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_0_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h1 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_1_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h1 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_1_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h1 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_1_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h1 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_1_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h2 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_2_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h2 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_2_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h2 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_2_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h2 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_2_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h3 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_3_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h3 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_3_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h3 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_3_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h3 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_3_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h4 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_4_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h4 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_4_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h4 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_4_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h4 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_4_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h5 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_5_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h5 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_5_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h5 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_5_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h5 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_5_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h6 == insertIdx & ~count) begin // @[SinkC.scala 99:32]
          buffer_6_0 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h6 == insertIdxReg & _GEN_621) begin // @[SinkC.scala 109:35]
        buffer_6_0 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (3'h6 == insertIdx & count) begin // @[SinkC.scala 99:32]
          buffer_6_1 <= io_c_bits_data; // @[SinkC.scala 99:32]
        end
      end else if (3'h6 == insertIdxReg & count) begin // @[SinkC.scala 109:35]
        buffer_6_1 <= io_c_bits_data; // @[SinkC.scala 109:35]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h0 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_0 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h1 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_1 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h2 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_2 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h3 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_3 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h4 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_4 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h5 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_5 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h6 == insertIdx) begin // @[SinkC.scala 106:30]
            bufferTag_6 <= tag; // @[SinkC.scala 106:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h0 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_0 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h1 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_1 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h2 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_2 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h3 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_3 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h4 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_4 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h5 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_5 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_T & beats1_opdata) begin // @[SinkC.scala 97:29]
      if (first) begin // @[SinkC.scala 98:17]
        if (isProbeAckData) begin // @[SinkC.scala 103:28]
          if (3'h6 == insertIdx) begin // @[SinkC.scala 105:30]
            bufferSet_6 <= set_1; // @[SinkC.scala 105:30]
          end
        end
      end
    end
    if (_insertIdxReg_T_1) begin // @[Reg.scala 17:18]
      if (_insertIdx_T[0]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h0;
      end else if (_insertIdx_T[1]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h1;
      end else if (_insertIdx_T[2]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h2;
      end else begin
        insertIdxReg <= _insertIdx_T_10;
      end
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rset <= io_task_bits_set; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rtag <= io_task_bits_tag; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rway <= io_task_bits_way; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rbufIdx <= io_task_bits_bufIdx; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_ropcode <= io_task_bits_opcode; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rsource <= io_task_bits_source; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rsave <= io_task_bits_save; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rdrop <= io_task_bits_drop; // @[Reg.scala 17:22]
    end
    if (_task_rT) begin // @[Reg.scala 17:18]
      task_rrelease <= io_task_bits_release; // @[Reg.scala 17:22]
    end
    io_taskack_bits_sink_REG <= task_rsource; // @[SinkC.scala 200:34]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_0 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h0 == task_rbufIdx) begin
        bufferSetVals_0 <= 1'h0;
      end else begin
        bufferSetVals_0 <= _GEN_367;
      end
    end else begin
      bufferSetVals_0 <= _GEN_367;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_1 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h1 == task_rbufIdx) begin
        bufferSetVals_1 <= 1'h0;
      end else begin
        bufferSetVals_1 <= _GEN_368;
      end
    end else begin
      bufferSetVals_1 <= _GEN_368;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_2 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h2 == task_rbufIdx) begin
        bufferSetVals_2 <= 1'h0;
      end else begin
        bufferSetVals_2 <= _GEN_369;
      end
    end else begin
      bufferSetVals_2 <= _GEN_369;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_3 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h3 == task_rbufIdx) begin
        bufferSetVals_3 <= 1'h0;
      end else begin
        bufferSetVals_3 <= _GEN_370;
      end
    end else begin
      bufferSetVals_3 <= _GEN_370;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_4 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h4 == task_rbufIdx) begin
        bufferSetVals_4 <= 1'h0;
      end else begin
        bufferSetVals_4 <= _GEN_371;
      end
    end else begin
      bufferSetVals_4 <= _GEN_371;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_5 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h5 == task_rbufIdx) begin
        bufferSetVals_5 <= 1'h0;
      end else begin
        bufferSetVals_5 <= _GEN_372;
      end
    end else begin
      bufferSetVals_5 <= _GEN_372;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      bufferSetVals_6 <= 1'h0; // @[SinkC.scala 194:{34,34}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h6 == task_rbufIdx) begin
        bufferSetVals_6 <= 1'h0;
      end else begin
        bufferSetVals_6 <= _GEN_373;
      end
    end else begin
      bufferSetVals_6 <= _GEN_373;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_0_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h0 == task_rbufIdx) begin
        beatValsSave_0_0 <= 1'h0;
      end else begin
        beatValsSave_0_0 <= _GEN_441;
      end
    end else begin
      beatValsSave_0_0 <= _GEN_441;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_0_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h0 == task_rbufIdx) begin
        beatValsSave_0_1 <= 1'h0;
      end else begin
        beatValsSave_0_1 <= _GEN_448;
      end
    end else begin
      beatValsSave_0_1 <= _GEN_448;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_1_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h1 == task_rbufIdx) begin
        beatValsSave_1_0 <= 1'h0;
      end else begin
        beatValsSave_1_0 <= _GEN_442;
      end
    end else begin
      beatValsSave_1_0 <= _GEN_442;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_1_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h1 == task_rbufIdx) begin
        beatValsSave_1_1 <= 1'h0;
      end else begin
        beatValsSave_1_1 <= _GEN_449;
      end
    end else begin
      beatValsSave_1_1 <= _GEN_449;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_2_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h2 == task_rbufIdx) begin
        beatValsSave_2_0 <= 1'h0;
      end else begin
        beatValsSave_2_0 <= _GEN_443;
      end
    end else begin
      beatValsSave_2_0 <= _GEN_443;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_2_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h2 == task_rbufIdx) begin
        beatValsSave_2_1 <= 1'h0;
      end else begin
        beatValsSave_2_1 <= _GEN_450;
      end
    end else begin
      beatValsSave_2_1 <= _GEN_450;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_3_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h3 == task_rbufIdx) begin
        beatValsSave_3_0 <= 1'h0;
      end else begin
        beatValsSave_3_0 <= _GEN_444;
      end
    end else begin
      beatValsSave_3_0 <= _GEN_444;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_3_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h3 == task_rbufIdx) begin
        beatValsSave_3_1 <= 1'h0;
      end else begin
        beatValsSave_3_1 <= _GEN_451;
      end
    end else begin
      beatValsSave_3_1 <= _GEN_451;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_4_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h4 == task_rbufIdx) begin
        beatValsSave_4_0 <= 1'h0;
      end else begin
        beatValsSave_4_0 <= _GEN_445;
      end
    end else begin
      beatValsSave_4_0 <= _GEN_445;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_4_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h4 == task_rbufIdx) begin
        beatValsSave_4_1 <= 1'h0;
      end else begin
        beatValsSave_4_1 <= _GEN_452;
      end
    end else begin
      beatValsSave_4_1 <= _GEN_452;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_5_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h5 == task_rbufIdx) begin
        beatValsSave_5_0 <= 1'h0;
      end else begin
        beatValsSave_5_0 <= _GEN_446;
      end
    end else begin
      beatValsSave_5_0 <= _GEN_446;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_5_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h5 == task_rbufIdx) begin
        beatValsSave_5_1 <= 1'h0;
      end else begin
        beatValsSave_5_1 <= _GEN_453;
      end
    end else begin
      beatValsSave_5_1 <= _GEN_453;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_6_0 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h6 == task_rbufIdx) begin
        beatValsSave_6_0 <= 1'h0;
      end else begin
        beatValsSave_6_0 <= _GEN_447;
      end
    end else begin
      beatValsSave_6_0 <= _GEN_447;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsSave_6_1 <= 1'h0; // @[SinkC.scala 192:{43,43}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h6 == task_rbufIdx) begin
        beatValsSave_6_1 <= 1'h0;
      end else begin
        beatValsSave_6_1 <= _GEN_454;
      end
    end else begin
      beatValsSave_6_1 <= _GEN_454;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_0_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h0 == task_rbufIdx) begin
        beatValsThrough_0_0 <= 1'h0;
      end else begin
        beatValsThrough_0_0 <= _GEN_456;
      end
    end else begin
      beatValsThrough_0_0 <= _GEN_456;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_0_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h0 == task_rbufIdx) begin
        beatValsThrough_0_1 <= 1'h0;
      end else begin
        beatValsThrough_0_1 <= _GEN_463;
      end
    end else begin
      beatValsThrough_0_1 <= _GEN_463;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_1_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h1 == task_rbufIdx) begin
        beatValsThrough_1_0 <= 1'h0;
      end else begin
        beatValsThrough_1_0 <= _GEN_457;
      end
    end else begin
      beatValsThrough_1_0 <= _GEN_457;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_1_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h1 == task_rbufIdx) begin
        beatValsThrough_1_1 <= 1'h0;
      end else begin
        beatValsThrough_1_1 <= _GEN_464;
      end
    end else begin
      beatValsThrough_1_1 <= _GEN_464;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_2_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h2 == task_rbufIdx) begin
        beatValsThrough_2_0 <= 1'h0;
      end else begin
        beatValsThrough_2_0 <= _GEN_458;
      end
    end else begin
      beatValsThrough_2_0 <= _GEN_458;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_2_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h2 == task_rbufIdx) begin
        beatValsThrough_2_1 <= 1'h0;
      end else begin
        beatValsThrough_2_1 <= _GEN_465;
      end
    end else begin
      beatValsThrough_2_1 <= _GEN_465;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_3_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h3 == task_rbufIdx) begin
        beatValsThrough_3_0 <= 1'h0;
      end else begin
        beatValsThrough_3_0 <= _GEN_459;
      end
    end else begin
      beatValsThrough_3_0 <= _GEN_459;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_3_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h3 == task_rbufIdx) begin
        beatValsThrough_3_1 <= 1'h0;
      end else begin
        beatValsThrough_3_1 <= _GEN_466;
      end
    end else begin
      beatValsThrough_3_1 <= _GEN_466;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_4_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h4 == task_rbufIdx) begin
        beatValsThrough_4_0 <= 1'h0;
      end else begin
        beatValsThrough_4_0 <= _GEN_460;
      end
    end else begin
      beatValsThrough_4_0 <= _GEN_460;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_4_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h4 == task_rbufIdx) begin
        beatValsThrough_4_1 <= 1'h0;
      end else begin
        beatValsThrough_4_1 <= _GEN_467;
      end
    end else begin
      beatValsThrough_4_1 <= _GEN_467;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_5_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h5 == task_rbufIdx) begin
        beatValsThrough_5_0 <= 1'h0;
      end else begin
        beatValsThrough_5_0 <= _GEN_461;
      end
    end else begin
      beatValsThrough_5_0 <= _GEN_461;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_5_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h5 == task_rbufIdx) begin
        beatValsThrough_5_1 <= 1'h0;
      end else begin
        beatValsThrough_5_1 <= _GEN_468;
      end
    end else begin
      beatValsThrough_5_1 <= _GEN_468;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_6_0 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h6 == task_rbufIdx) begin
        beatValsThrough_6_0 <= 1'h0;
      end else begin
        beatValsThrough_6_0 <= _GEN_462;
      end
    end else begin
      beatValsThrough_6_0 <= _GEN_462;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      beatValsThrough_6_1 <= 1'h0; // @[SinkC.scala 193:{46,46}]
    end else if (w_done | busy & task_rdrop) begin
      if (3'h6 == task_rbufIdx) begin
        beatValsThrough_6_1 <= 1'h0;
      end else begin
        beatValsThrough_6_1 <= _GEN_469;
      end
    end else begin
      beatValsThrough_6_1 <= _GEN_469;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_T) begin // @[Edges.scala 228:27]
      if (first) begin
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      busy <= 1'h0; // @[SinkC.scala 191:10]
    end else if (w_done | busy & task_rdrop) begin
      busy <= 1'h0;
    end else begin
      busy <= _GEN_440;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 121:27]
      setMatchVec <= 7'h0; // @[SinkC.scala 128:17]
    end else if (|setMatchVec) begin // @[SinkC.scala 115:45]
      setMatchVec <= 7'h0; // @[SinkC.scala 116:17]
    end else if (_insertIdxReg_T_1 & isProbeAckData) begin // @[SinkC.scala 94:28]
      setMatchVec <= _setMatchVec_T_49;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      w_counter_save <= 1'h0; // @[SinkC.scala 189:20]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 177:21]
      w_counter_save <= 1'h0; // @[SinkC.scala 177:38]
    end else if (w_fire_save) begin // @[SinkC.scala 131:31]
      w_counter_save <= w_counter_save + 1'h1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      w_counter_through <= 1'h0; // @[SinkC.scala 190:23]
    end else if (w_done | busy & task_rdrop) begin // @[SinkC.scala 178:24]
      w_counter_through <= 1'h0; // @[SinkC.scala 178:44]
    end else if (w_fire_through) begin // @[SinkC.scala 132:34]
      w_counter_through <= w_counter_through + 1'h1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      w_save_done_r <= 1'h0; // @[SinkC.scala 196:19]
    end else if (w_done | busy & task_rdrop) begin
      w_save_done_r <= 1'h0;
    end else begin
      w_save_done_r <= _GEN_529;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 188:39]
      w_through_done_r <= 1'h0; // @[SinkC.scala 197:22]
    end else if (w_done | busy & task_rdrop) begin
      w_through_done_r <= 1'h0;
    end else begin
      w_through_done_r <= _GEN_530;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 201:36]
      io_taskack_valid_REG <= 1'h0;
    end else begin
      io_taskack_valid_REG <= busy & _T_95;
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
  _RAND_0 = {8{`RANDOM}};
  buffer_0_0 = _RAND_0[255:0];
  _RAND_1 = {8{`RANDOM}};
  buffer_0_1 = _RAND_1[255:0];
  _RAND_2 = {8{`RANDOM}};
  buffer_1_0 = _RAND_2[255:0];
  _RAND_3 = {8{`RANDOM}};
  buffer_1_1 = _RAND_3[255:0];
  _RAND_4 = {8{`RANDOM}};
  buffer_2_0 = _RAND_4[255:0];
  _RAND_5 = {8{`RANDOM}};
  buffer_2_1 = _RAND_5[255:0];
  _RAND_6 = {8{`RANDOM}};
  buffer_3_0 = _RAND_6[255:0];
  _RAND_7 = {8{`RANDOM}};
  buffer_3_1 = _RAND_7[255:0];
  _RAND_8 = {8{`RANDOM}};
  buffer_4_0 = _RAND_8[255:0];
  _RAND_9 = {8{`RANDOM}};
  buffer_4_1 = _RAND_9[255:0];
  _RAND_10 = {8{`RANDOM}};
  buffer_5_0 = _RAND_10[255:0];
  _RAND_11 = {8{`RANDOM}};
  buffer_5_1 = _RAND_11[255:0];
  _RAND_12 = {8{`RANDOM}};
  buffer_6_0 = _RAND_12[255:0];
  _RAND_13 = {8{`RANDOM}};
  buffer_6_1 = _RAND_13[255:0];
  _RAND_14 = {1{`RANDOM}};
  bufferTag_0 = _RAND_14[21:0];
  _RAND_15 = {1{`RANDOM}};
  bufferTag_1 = _RAND_15[21:0];
  _RAND_16 = {1{`RANDOM}};
  bufferTag_2 = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  bufferTag_3 = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  bufferTag_4 = _RAND_18[21:0];
  _RAND_19 = {1{`RANDOM}};
  bufferTag_5 = _RAND_19[21:0];
  _RAND_20 = {1{`RANDOM}};
  bufferTag_6 = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  bufferSet_0 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  bufferSet_1 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  bufferSet_2 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  bufferSet_3 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  bufferSet_4 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  bufferSet_5 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  bufferSet_6 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  bufferSetVals_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  bufferSetVals_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  bufferSetVals_2 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  bufferSetVals_3 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  bufferSetVals_4 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  bufferSetVals_5 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  bufferSetVals_6 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  beatValsSave_0_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  beatValsSave_0_1 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  beatValsSave_1_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  beatValsSave_1_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  beatValsSave_2_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  beatValsSave_2_1 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  beatValsSave_3_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  beatValsSave_3_1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  beatValsSave_4_0 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  beatValsSave_4_1 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  beatValsSave_5_0 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  beatValsSave_5_1 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  beatValsSave_6_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  beatValsSave_6_1 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  beatValsThrough_0_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  beatValsThrough_0_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  beatValsThrough_1_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  beatValsThrough_1_1 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  beatValsThrough_2_0 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  beatValsThrough_2_1 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  beatValsThrough_3_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  beatValsThrough_3_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  beatValsThrough_4_0 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  beatValsThrough_4_1 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  beatValsThrough_5_0 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  beatValsThrough_5_1 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  beatValsThrough_6_0 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  beatValsThrough_6_1 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  counter = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  insertIdxReg = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  task_rset = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  task_rtag = _RAND_66[21:0];
  _RAND_67 = {1{`RANDOM}};
  task_rway = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  task_rbufIdx = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  task_ropcode = _RAND_69[2:0];
  _RAND_70 = {1{`RANDOM}};
  task_rsource = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  task_rsave = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  task_rdrop = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  task_rrelease = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  busy = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  setMatchVec = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  w_counter_save = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  w_counter_through = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  w_save_done_r = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  w_through_done_r = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_taskack_bits_sink_REG = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  io_taskack_valid_REG = _RAND_81[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    bufferSetVals_0 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_1 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_2 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_3 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_4 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_5 = 1'h0;
  end
  if (reset) begin
    bufferSetVals_6 = 1'h0;
  end
  if (reset) begin
    beatValsSave_0_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_0_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_1_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_1_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_2_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_2_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_3_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_3_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_4_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_4_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_5_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_5_1 = 1'h0;
  end
  if (reset) begin
    beatValsSave_6_0 = 1'h0;
  end
  if (reset) begin
    beatValsSave_6_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_0_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_0_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_1_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_1_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_2_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_2_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_3_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_3_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_4_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_4_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_5_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_5_1 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_6_0 = 1'h0;
  end
  if (reset) begin
    beatValsThrough_6_1 = 1'h0;
  end
  if (reset) begin
    counter = 1'h0;
  end
  if (reset) begin
    busy = 1'h0;
  end
  if (reset) begin
    setMatchVec = 7'h0;
  end
  if (reset) begin
    w_counter_save = 1'h0;
  end
  if (reset) begin
    w_counter_through = 1'h0;
  end
  if (reset) begin
    w_save_done_r = 1'h0;
  end
  if (reset) begin
    w_through_done_r = 1'h0;
  end
  if (reset) begin
    io_taskack_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

