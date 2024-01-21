module SinkC(
  input          clock,
  input          reset,
  output         io_c_ready,
  input          io_c_valid,
  input  [2:0]   io_c_bits_opcode,
  input  [2:0]   io_c_bits_param,
  input  [2:0]   io_c_bits_size,
  input  [4:0]   io_c_bits_source,
  input  [35:0]  io_c_bits_address,
  input  [255:0] io_c_bits_data,
  input          io_task_ready,
  output         io_task_valid,
  output [6:0]   io_task_bits_set,
  output [21:0]  io_task_bits_tag,
  output [5:0]   io_task_bits_off,
  output [2:0]   io_task_bits_opcode,
  output [2:0]   io_task_bits_param,
  output [2:0]   io_task_bits_size,
  output [4:0]   io_task_bits_sourceId,
  output [1:0]   io_task_bits_bufIdx,
  output         io_resp_valid,
  output [6:0]   io_resp_set,
  output [21:0]  io_resp_tag,
  output [2:0]   io_resp_respInfo_opcode,
  output [2:0]   io_resp_respInfo_param,
  output         io_resp_respInfo_last,
  output         io_releaseBufWrite_valid,
  output [1:0]   io_releaseBufWrite_beat_sel,
  output [511:0] io_releaseBufWrite_data_data,
  input          io_bufRead_valid,
  input  [1:0]   io_bufRead_bits_bufIdx,
  output [255:0] io_bufResp_data_0,
  output [255:0] io_bufResp_data_1,
  output         io_refillBufWrite_valid,
  output [511:0] io_refillBufWrite_data_data,
  output [7:0]   io_refillBufWrite_id,
  input          io_msInfo_0_valid,
  input  [6:0]   io_msInfo_0_bits_set,
  input  [21:0]  io_msInfo_0_bits_reqTag,
  input          io_msInfo_0_bits_releaseNotSent,
  input          io_msInfo_1_valid,
  input  [6:0]   io_msInfo_1_bits_set,
  input  [21:0]  io_msInfo_1_bits_reqTag,
  input          io_msInfo_1_bits_releaseNotSent,
  input          io_msInfo_2_valid,
  input  [6:0]   io_msInfo_2_bits_set,
  input  [21:0]  io_msInfo_2_bits_reqTag,
  input          io_msInfo_2_bits_releaseNotSent,
  input          io_msInfo_3_valid,
  input  [6:0]   io_msInfo_3_bits_set,
  input  [21:0]  io_msInfo_3_bits_reqTag,
  input          io_msInfo_3_bits_releaseNotSent,
  input          io_msInfo_4_valid,
  input  [6:0]   io_msInfo_4_bits_set,
  input  [21:0]  io_msInfo_4_bits_reqTag,
  input          io_msInfo_4_bits_releaseNotSent,
  input          io_msInfo_5_valid,
  input  [6:0]   io_msInfo_5_bits_set,
  input  [21:0]  io_msInfo_5_bits_reqTag,
  input          io_msInfo_5_bits_releaseNotSent,
  input          io_msInfo_6_valid,
  input  [6:0]   io_msInfo_6_bits_set,
  input  [21:0]  io_msInfo_6_bits_reqTag,
  input          io_msInfo_6_bits_releaseNotSent,
  input          io_msInfo_7_valid,
  input  [6:0]   io_msInfo_7_bits_set,
  input  [21:0]  io_msInfo_7_bits_reqTag,
  input          io_msInfo_7_bits_releaseNotSent,
  input          io_msInfo_8_valid,
  input  [6:0]   io_msInfo_8_bits_set,
  input  [21:0]  io_msInfo_8_bits_reqTag,
  input          io_msInfo_8_bits_releaseNotSent,
  input          io_msInfo_9_valid,
  input  [6:0]   io_msInfo_9_bits_set,
  input  [21:0]  io_msInfo_9_bits_reqTag,
  input          io_msInfo_9_bits_releaseNotSent,
  input          io_msInfo_10_valid,
  input  [6:0]   io_msInfo_10_bits_set,
  input  [21:0]  io_msInfo_10_bits_reqTag,
  input          io_msInfo_10_bits_releaseNotSent,
  input          io_msInfo_11_valid,
  input  [6:0]   io_msInfo_11_bits_set,
  input  [21:0]  io_msInfo_11_bits_reqTag,
  input          io_msInfo_11_bits_releaseNotSent,
  input          io_msInfo_12_valid,
  input  [6:0]   io_msInfo_12_bits_set,
  input  [21:0]  io_msInfo_12_bits_reqTag,
  input          io_msInfo_12_bits_releaseNotSent,
  input          io_msInfo_13_valid,
  input  [6:0]   io_msInfo_13_bits_set,
  input  [21:0]  io_msInfo_13_bits_reqTag,
  input          io_msInfo_13_bits_releaseNotSent,
  input          io_msInfo_14_valid,
  input  [6:0]   io_msInfo_14_bits_set,
  input  [21:0]  io_msInfo_14_bits_reqTag,
  input          io_msInfo_14_bits_releaseNotSent,
  input          io_msInfo_15_valid,
  input  [6:0]   io_msInfo_15_bits_set,
  input  [21:0]  io_msInfo_15_bits_reqTag,
  input          io_msInfo_15_bits_releaseNotSent
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [255:0] _RAND_2;
  reg [255:0] _RAND_3;
  reg [255:0] _RAND_4;
  reg [255:0] _RAND_5;
  reg [255:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [255:0] _RAND_8;
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
`endif // RANDOMIZE_REG_INIT
  wire  taskArb_clock; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_0_ready; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_0_valid; // @[SinkC.scala 63:23]
  wire [6:0] taskArb_io_in_0_bits_set; // @[SinkC.scala 63:23]
  wire [21:0] taskArb_io_in_0_bits_tag; // @[SinkC.scala 63:23]
  wire [5:0] taskArb_io_in_0_bits_off; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_0_bits_opcode; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_0_bits_param; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_0_bits_size; // @[SinkC.scala 63:23]
  wire [4:0] taskArb_io_in_0_bits_sourceId; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_in_0_bits_bufIdx; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_1_ready; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_1_valid; // @[SinkC.scala 63:23]
  wire [6:0] taskArb_io_in_1_bits_set; // @[SinkC.scala 63:23]
  wire [21:0] taskArb_io_in_1_bits_tag; // @[SinkC.scala 63:23]
  wire [5:0] taskArb_io_in_1_bits_off; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_1_bits_opcode; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_1_bits_param; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_1_bits_size; // @[SinkC.scala 63:23]
  wire [4:0] taskArb_io_in_1_bits_sourceId; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_in_1_bits_bufIdx; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_2_ready; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_2_valid; // @[SinkC.scala 63:23]
  wire [6:0] taskArb_io_in_2_bits_set; // @[SinkC.scala 63:23]
  wire [21:0] taskArb_io_in_2_bits_tag; // @[SinkC.scala 63:23]
  wire [5:0] taskArb_io_in_2_bits_off; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_2_bits_opcode; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_2_bits_param; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_2_bits_size; // @[SinkC.scala 63:23]
  wire [4:0] taskArb_io_in_2_bits_sourceId; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_in_2_bits_bufIdx; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_3_ready; // @[SinkC.scala 63:23]
  wire  taskArb_io_in_3_valid; // @[SinkC.scala 63:23]
  wire [6:0] taskArb_io_in_3_bits_set; // @[SinkC.scala 63:23]
  wire [21:0] taskArb_io_in_3_bits_tag; // @[SinkC.scala 63:23]
  wire [5:0] taskArb_io_in_3_bits_off; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_3_bits_opcode; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_3_bits_param; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_in_3_bits_size; // @[SinkC.scala 63:23]
  wire [4:0] taskArb_io_in_3_bits_sourceId; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_in_3_bits_bufIdx; // @[SinkC.scala 63:23]
  wire  taskArb_io_out_ready; // @[SinkC.scala 63:23]
  wire  taskArb_io_out_valid; // @[SinkC.scala 63:23]
  wire [6:0] taskArb_io_out_bits_set; // @[SinkC.scala 63:23]
  wire [21:0] taskArb_io_out_bits_tag; // @[SinkC.scala 63:23]
  wire [5:0] taskArb_io_out_bits_off; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_out_bits_opcode; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_out_bits_param; // @[SinkC.scala 63:23]
  wire [2:0] taskArb_io_out_bits_size; // @[SinkC.scala 63:23]
  wire [4:0] taskArb_io_out_bits_sourceId; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_out_bits_bufIdx; // @[SinkC.scala 63:23]
  wire [1:0] taskArb_io_chosen; // @[SinkC.scala 63:23]
  wire  _T = io_c_ready & io_c_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_c_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  beat = beats1 & ~counter1; // @[Edges.scala 233:25]
  wire  isRelease = io_c_bits_opcode[1]; // @[SinkC.scala 53:35]
  reg [255:0] dataBuf_0_0; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_0_1; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_1_0; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_1_1; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_2_0; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_2_1; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_3_0; // @[SinkC.scala 58:20]
  reg [255:0] dataBuf_3_1; // @[SinkC.scala 58:20]
  reg  beatValids_0_0; // @[SinkC.scala 59:27]
  reg  beatValids_0_1; // @[SinkC.scala 59:27]
  reg  beatValids_1_0; // @[SinkC.scala 59:27]
  reg  beatValids_1_1; // @[SinkC.scala 59:27]
  reg  beatValids_2_0; // @[SinkC.scala 59:27]
  reg  beatValids_2_1; // @[SinkC.scala 59:27]
  reg  beatValids_3_0; // @[SinkC.scala 59:27]
  reg  beatValids_3_1; // @[SinkC.scala 59:27]
  wire [1:0] _dataValids_T = {beatValids_0_1,beatValids_0_0}; // @[SinkC.scala 60:45]
  wire [1:0] _dataValids_T_2 = {beatValids_1_1,beatValids_1_0}; // @[SinkC.scala 60:45]
  wire [1:0] _dataValids_T_4 = {beatValids_2_1,beatValids_2_0}; // @[SinkC.scala 60:45]
  wire [1:0] _dataValids_T_6 = {beatValids_3_1,beatValids_3_0}; // @[SinkC.scala 60:45]
  wire [3:0] dataValids = {|_dataValids_T_6,|_dataValids_T_4,|_dataValids_T_2,|_dataValids_T}; // @[SinkC.scala 60:58]
  reg [6:0] taskBuf_0_set; // @[SinkC.scala 61:20]
  reg [21:0] taskBuf_0_tag; // @[SinkC.scala 61:20]
  reg [5:0] taskBuf_0_off; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_0_opcode; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_0_param; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_0_size; // @[SinkC.scala 61:20]
  reg [4:0] taskBuf_0_sourceId; // @[SinkC.scala 61:20]
  reg [1:0] taskBuf_0_bufIdx; // @[SinkC.scala 61:20]
  reg [6:0] taskBuf_1_set; // @[SinkC.scala 61:20]
  reg [21:0] taskBuf_1_tag; // @[SinkC.scala 61:20]
  reg [5:0] taskBuf_1_off; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_1_opcode; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_1_param; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_1_size; // @[SinkC.scala 61:20]
  reg [4:0] taskBuf_1_sourceId; // @[SinkC.scala 61:20]
  reg [1:0] taskBuf_1_bufIdx; // @[SinkC.scala 61:20]
  reg [6:0] taskBuf_2_set; // @[SinkC.scala 61:20]
  reg [21:0] taskBuf_2_tag; // @[SinkC.scala 61:20]
  reg [5:0] taskBuf_2_off; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_2_opcode; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_2_param; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_2_size; // @[SinkC.scala 61:20]
  reg [4:0] taskBuf_2_sourceId; // @[SinkC.scala 61:20]
  reg [1:0] taskBuf_2_bufIdx; // @[SinkC.scala 61:20]
  reg [6:0] taskBuf_3_set; // @[SinkC.scala 61:20]
  reg [21:0] taskBuf_3_tag; // @[SinkC.scala 61:20]
  reg [5:0] taskBuf_3_off; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_3_opcode; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_3_param; // @[SinkC.scala 61:20]
  reg [2:0] taskBuf_3_size; // @[SinkC.scala 61:20]
  reg [4:0] taskBuf_3_sourceId; // @[SinkC.scala 61:20]
  reg [1:0] taskBuf_3_bufIdx; // @[SinkC.scala 61:20]
  reg  taskValids_0; // @[SinkC.scala 62:27]
  reg  taskValids_1; // @[SinkC.scala 62:27]
  reg  taskValids_2; // @[SinkC.scala 62:27]
  reg  taskValids_3; // @[SinkC.scala 62:27]
  wire [3:0] _bufValids_T = {taskValids_3,taskValids_2,taskValids_1,taskValids_0}; // @[SinkC.scala 64:30]
  wire [3:0] bufValids = _bufValids_T | dataValids; // @[SinkC.scala 64:37]
  wire  full = &bufValids; // @[SinkC.scala 66:24]
  wire [3:0] _nextPtr_T = ~bufValids; // @[SinkC.scala 68:33]
  wire [1:0] _nextPtr_T_5 = _nextPtr_T[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _nextPtr_T_6 = _nextPtr_T[1] ? 2'h1 : _nextPtr_T_5; // @[Mux.scala 47:70]
  wire [1:0] nextPtr = _nextPtr_T[0] ? 2'h0 : _nextPtr_T_6; // @[Mux.scala 47:70]
  wire  _nextPtrReg_T_1 = _T & isRelease; // @[SinkC.scala 69:74]
  wire  _nextPtrReg_T_3 = _T & isRelease & first & beats1_opdata; // @[SinkC.scala 69:96]
  reg [1:0] nextPtrReg; // @[Reg.scala 28:20]
  wire  _GEN_542 = 2'h0 == nextPtr; // @[SinkC.scala 106:{32,32} 58:20]
  wire  _GEN_543 = ~beat; // @[SinkC.scala 106:{32,32} 58:20]
  wire  _GEN_545 = 2'h1 == nextPtr; // @[SinkC.scala 106:{32,32} 58:20]
  wire  _GEN_548 = 2'h2 == nextPtr; // @[SinkC.scala 106:{32,32} 58:20]
  wire  _GEN_551 = 2'h3 == nextPtr; // @[SinkC.scala 106:{32,32} 58:20]
  wire  _GEN_10 = _GEN_542 & _GEN_543 | beatValids_0_0; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_11 = _GEN_542 & beat | beatValids_0_1; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_12 = _GEN_545 & _GEN_543 | beatValids_1_0; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_13 = _GEN_545 & beat | beatValids_1_1; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_14 = _GEN_548 & _GEN_543 | beatValids_2_0; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_15 = _GEN_548 & beat | beatValids_2_1; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_16 = _GEN_551 & _GEN_543 | beatValids_3_0; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_17 = _GEN_551 & beat | beatValids_3_1; // @[SinkC.scala 107:{35,35} 59:27]
  wire  _GEN_574 = 2'h0 == nextPtrReg; // @[SinkC.scala 110:{35,35} 58:20]
  wire  _GEN_577 = 2'h1 == nextPtrReg; // @[SinkC.scala 110:{35,35} 58:20]
  wire  _GEN_580 = 2'h2 == nextPtrReg; // @[SinkC.scala 110:{35,35} 58:20]
  wire  _GEN_583 = 2'h3 == nextPtrReg; // @[SinkC.scala 110:{35,35} 58:20]
  wire  _GEN_26 = _GEN_574 & _GEN_543 | beatValids_0_0; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_27 = _GEN_574 & beat | beatValids_0_1; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_28 = _GEN_577 & _GEN_543 | beatValids_1_0; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_29 = _GEN_577 & beat | beatValids_1_1; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_30 = _GEN_580 & _GEN_543 | beatValids_2_0; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_31 = _GEN_580 & beat | beatValids_2_1; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_32 = _GEN_583 & _GEN_543 | beatValids_3_0; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_33 = _GEN_583 & beat | beatValids_3_1; // @[SinkC.scala 111:{38,38} 59:27]
  wire  _GEN_42 = first ? _GEN_10 : _GEN_26; // @[SinkC.scala 105:20]
  wire  _GEN_43 = first ? _GEN_11 : _GEN_27; // @[SinkC.scala 105:20]
  wire  _GEN_44 = first ? _GEN_12 : _GEN_28; // @[SinkC.scala 105:20]
  wire  _GEN_45 = first ? _GEN_13 : _GEN_29; // @[SinkC.scala 105:20]
  wire  _GEN_46 = first ? _GEN_14 : _GEN_30; // @[SinkC.scala 105:20]
  wire  _GEN_47 = first ? _GEN_15 : _GEN_31; // @[SinkC.scala 105:20]
  wire  _GEN_48 = first ? _GEN_16 : _GEN_32; // @[SinkC.scala 105:20]
  wire  _GEN_49 = first ? _GEN_17 : _GEN_33; // @[SinkC.scala 105:20]
  wire  _GEN_58 = beats1_opdata ? _GEN_42 : beatValids_0_0; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_59 = beats1_opdata ? _GEN_43 : beatValids_0_1; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_60 = beats1_opdata ? _GEN_44 : beatValids_1_0; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_61 = beats1_opdata ? _GEN_45 : beatValids_1_1; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_62 = beats1_opdata ? _GEN_46 : beatValids_2_0; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_63 = beats1_opdata ? _GEN_47 : beatValids_2_1; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_64 = beats1_opdata ? _GEN_48 : beatValids_3_0; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_65 = beats1_opdata ? _GEN_49 : beatValids_3_1; // @[SinkC.scala 104:20 59:27]
  wire  _GEN_74 = _nextPtrReg_T_1 ? _GEN_58 : beatValids_0_0; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_75 = _nextPtrReg_T_1 ? _GEN_59 : beatValids_0_1; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_76 = _nextPtrReg_T_1 ? _GEN_60 : beatValids_1_0; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_77 = _nextPtrReg_T_1 ? _GEN_61 : beatValids_1_1; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_78 = _nextPtrReg_T_1 ? _GEN_62 : beatValids_2_0; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_79 = _nextPtrReg_T_1 ? _GEN_63 : beatValids_2_1; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_80 = _nextPtrReg_T_1 ? _GEN_64 : beatValids_3_0; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_81 = _nextPtrReg_T_1 ? _GEN_65 : beatValids_3_1; // @[SinkC.scala 103:35 59:27]
  wire  _GEN_82 = _GEN_574 | taskValids_0; // @[SinkC.scala 118:{30,30} 62:27]
  wire  _GEN_83 = _GEN_577 | taskValids_1; // @[SinkC.scala 118:{30,30} 62:27]
  wire  _GEN_84 = _GEN_580 | taskValids_2; // @[SinkC.scala 118:{30,30} 62:27]
  wire  _GEN_85 = _GEN_583 | taskValids_3; // @[SinkC.scala 118:{30,30} 62:27]
  wire [28:0] taskBuf_task_tag_set = io_c_bits_address[35:7]; // @[CoupledL2.scala 134:22]
  wire [21:0] taskBuf_task_tag_tag = taskBuf_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  wire  _GEN_190 = _GEN_542 | taskValids_0; // @[SinkC.scala 122:{27,27} 62:27]
  wire  _GEN_191 = _GEN_545 | taskValids_1; // @[SinkC.scala 122:{27,27} 62:27]
  wire  _GEN_192 = _GEN_548 | taskValids_2; // @[SinkC.scala 122:{27,27} 62:27]
  wire  _GEN_193 = _GEN_551 | taskValids_3; // @[SinkC.scala 122:{27,27} 62:27]
  wire  _T_22 = taskArb_io_in_0_ready & taskArb_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_23 = taskArb_io_in_1_ready & taskArb_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_24 = taskArb_io_in_2_ready & taskArb_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _T_25 = taskArb_io_in_3_ready & taskArb_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  cValid = io_c_valid & isRelease & last; // @[SinkC.scala 142:40]
  wire  _io_resp_valid_T_2 = ~isRelease; // @[SinkC.scala 147:53]
  wire  _newdataMask_T_4 = io_msInfo_0_valid & io_msInfo_0_bits_set == io_task_bits_set & io_msInfo_0_bits_reqTag ==
    io_task_bits_tag & io_msInfo_0_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_9 = io_msInfo_1_valid & io_msInfo_1_bits_set == io_task_bits_set & io_msInfo_1_bits_reqTag ==
    io_task_bits_tag & io_msInfo_1_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_14 = io_msInfo_2_valid & io_msInfo_2_bits_set == io_task_bits_set & io_msInfo_2_bits_reqTag ==
    io_task_bits_tag & io_msInfo_2_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_19 = io_msInfo_3_valid & io_msInfo_3_bits_set == io_task_bits_set & io_msInfo_3_bits_reqTag ==
    io_task_bits_tag & io_msInfo_3_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_24 = io_msInfo_4_valid & io_msInfo_4_bits_set == io_task_bits_set & io_msInfo_4_bits_reqTag ==
    io_task_bits_tag & io_msInfo_4_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_29 = io_msInfo_5_valid & io_msInfo_5_bits_set == io_task_bits_set & io_msInfo_5_bits_reqTag ==
    io_task_bits_tag & io_msInfo_5_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_34 = io_msInfo_6_valid & io_msInfo_6_bits_set == io_task_bits_set & io_msInfo_6_bits_reqTag ==
    io_task_bits_tag & io_msInfo_6_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_39 = io_msInfo_7_valid & io_msInfo_7_bits_set == io_task_bits_set & io_msInfo_7_bits_reqTag ==
    io_task_bits_tag & io_msInfo_7_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_44 = io_msInfo_8_valid & io_msInfo_8_bits_set == io_task_bits_set & io_msInfo_8_bits_reqTag ==
    io_task_bits_tag & io_msInfo_8_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_49 = io_msInfo_9_valid & io_msInfo_9_bits_set == io_task_bits_set & io_msInfo_9_bits_reqTag ==
    io_task_bits_tag & io_msInfo_9_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_54 = io_msInfo_10_valid & io_msInfo_10_bits_set == io_task_bits_set & io_msInfo_10_bits_reqTag
     == io_task_bits_tag & io_msInfo_10_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_59 = io_msInfo_11_valid & io_msInfo_11_bits_set == io_task_bits_set & io_msInfo_11_bits_reqTag
     == io_task_bits_tag & io_msInfo_11_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_64 = io_msInfo_12_valid & io_msInfo_12_bits_set == io_task_bits_set & io_msInfo_12_bits_reqTag
     == io_task_bits_tag & io_msInfo_12_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_69 = io_msInfo_13_valid & io_msInfo_13_bits_set == io_task_bits_set & io_msInfo_13_bits_reqTag
     == io_task_bits_tag & io_msInfo_13_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_74 = io_msInfo_14_valid & io_msInfo_14_bits_set == io_task_bits_set & io_msInfo_14_bits_reqTag
     == io_task_bits_tag & io_msInfo_14_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire  _newdataMask_T_79 = io_msInfo_15_valid & io_msInfo_15_bits_set == io_task_bits_set & io_msInfo_15_bits_reqTag
     == io_task_bits_tag & io_msInfo_15_bits_releaseNotSent; // @[SinkC.scala 164:86]
  wire [7:0] newdataMask_lo = {_newdataMask_T_39,_newdataMask_T_34,_newdataMask_T_29,_newdataMask_T_24,_newdataMask_T_19
    ,_newdataMask_T_14,_newdataMask_T_9,_newdataMask_T_4}; // @[SinkC.scala 165:6]
  wire [15:0] newdataMask = {_newdataMask_T_79,_newdataMask_T_74,_newdataMask_T_69,_newdataMask_T_64,_newdataMask_T_59,
    _newdataMask_T_54,_newdataMask_T_49,_newdataMask_T_44,newdataMask_lo}; // @[SinkC.scala 165:6]
  wire  _io_refillBufWrite_valid_T = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  reg  io_refillBufWrite_valid_REG; // @[SinkC.scala 174:37]
  wire [7:0] io_refillBufWrite_id_hi = newdataMask[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_refillBufWrite_id_lo = newdataMask[7:0]; // @[OneHot.scala 31:18]
  wire  _io_refillBufWrite_id_T = |io_refillBufWrite_id_hi; // @[OneHot.scala 32:14]
  wire [7:0] _io_refillBufWrite_id_T_1 = io_refillBufWrite_id_hi | io_refillBufWrite_id_lo; // @[OneHot.scala 32:28]
  wire [3:0] io_refillBufWrite_id_hi_1 = _io_refillBufWrite_id_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_refillBufWrite_id_lo_1 = _io_refillBufWrite_id_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _io_refillBufWrite_id_T_2 = |io_refillBufWrite_id_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _io_refillBufWrite_id_T_3 = io_refillBufWrite_id_hi_1 | io_refillBufWrite_id_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] io_refillBufWrite_id_hi_2 = _io_refillBufWrite_id_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_refillBufWrite_id_lo_2 = _io_refillBufWrite_id_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _io_refillBufWrite_id_T_4 = |io_refillBufWrite_id_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _io_refillBufWrite_id_T_5 = io_refillBufWrite_id_hi_2 | io_refillBufWrite_id_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] _io_refillBufWrite_id_T_8 = {_io_refillBufWrite_id_T_2,_io_refillBufWrite_id_T_4,_io_refillBufWrite_id_T_5[
    1]}; // @[Cat.scala 31:58]
  reg [3:0] io_refillBufWrite_id_REG; // @[SinkC.scala 176:34]
  reg [1:0] io_refillBufWrite_data_data_REG; // @[SinkC.scala 177:49]
  wire [255:0] _GEN_527 = 2'h1 == io_refillBufWrite_data_data_REG ? dataBuf_1_1 : dataBuf_0_1; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_528 = 2'h2 == io_refillBufWrite_data_data_REG ? dataBuf_2_1 : _GEN_527; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_529 = 2'h3 == io_refillBufWrite_data_data_REG ? dataBuf_3_1 : _GEN_528; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_531 = 2'h1 == io_refillBufWrite_data_data_REG ? dataBuf_1_0 : dataBuf_0_0; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_532 = 2'h2 == io_refillBufWrite_data_data_REG ? dataBuf_2_0 : _GEN_531; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_533 = 2'h3 == io_refillBufWrite_data_data_REG ? dataBuf_3_0 : _GEN_532; // @[SinkC.scala 177:{72,72}]
  wire [255:0] _GEN_535 = 2'h1 == io_bufRead_bits_bufIdx ? dataBuf_1_0 : dataBuf_0_0; // @[SinkC.scala 181:{19,19}]
  wire [255:0] _GEN_536 = 2'h2 == io_bufRead_bits_bufIdx ? dataBuf_2_0 : _GEN_535; // @[SinkC.scala 181:{19,19}]
  wire [255:0] _GEN_539 = 2'h1 == io_bufRead_bits_bufIdx ? dataBuf_1_1 : dataBuf_0_1; // @[SinkC.scala 181:{19,19}]
  wire [255:0] _GEN_540 = 2'h2 == io_bufRead_bits_bufIdx ? dataBuf_2_1 : _GEN_539; // @[SinkC.scala 181:{19,19}]
  RRArbiter_1 taskArb ( // @[SinkC.scala 63:23]
    .clock(taskArb_clock),
    .io_in_0_ready(taskArb_io_in_0_ready),
    .io_in_0_valid(taskArb_io_in_0_valid),
    .io_in_0_bits_set(taskArb_io_in_0_bits_set),
    .io_in_0_bits_tag(taskArb_io_in_0_bits_tag),
    .io_in_0_bits_off(taskArb_io_in_0_bits_off),
    .io_in_0_bits_opcode(taskArb_io_in_0_bits_opcode),
    .io_in_0_bits_param(taskArb_io_in_0_bits_param),
    .io_in_0_bits_size(taskArb_io_in_0_bits_size),
    .io_in_0_bits_sourceId(taskArb_io_in_0_bits_sourceId),
    .io_in_0_bits_bufIdx(taskArb_io_in_0_bits_bufIdx),
    .io_in_1_ready(taskArb_io_in_1_ready),
    .io_in_1_valid(taskArb_io_in_1_valid),
    .io_in_1_bits_set(taskArb_io_in_1_bits_set),
    .io_in_1_bits_tag(taskArb_io_in_1_bits_tag),
    .io_in_1_bits_off(taskArb_io_in_1_bits_off),
    .io_in_1_bits_opcode(taskArb_io_in_1_bits_opcode),
    .io_in_1_bits_param(taskArb_io_in_1_bits_param),
    .io_in_1_bits_size(taskArb_io_in_1_bits_size),
    .io_in_1_bits_sourceId(taskArb_io_in_1_bits_sourceId),
    .io_in_1_bits_bufIdx(taskArb_io_in_1_bits_bufIdx),
    .io_in_2_ready(taskArb_io_in_2_ready),
    .io_in_2_valid(taskArb_io_in_2_valid),
    .io_in_2_bits_set(taskArb_io_in_2_bits_set),
    .io_in_2_bits_tag(taskArb_io_in_2_bits_tag),
    .io_in_2_bits_off(taskArb_io_in_2_bits_off),
    .io_in_2_bits_opcode(taskArb_io_in_2_bits_opcode),
    .io_in_2_bits_param(taskArb_io_in_2_bits_param),
    .io_in_2_bits_size(taskArb_io_in_2_bits_size),
    .io_in_2_bits_sourceId(taskArb_io_in_2_bits_sourceId),
    .io_in_2_bits_bufIdx(taskArb_io_in_2_bits_bufIdx),
    .io_in_3_ready(taskArb_io_in_3_ready),
    .io_in_3_valid(taskArb_io_in_3_valid),
    .io_in_3_bits_set(taskArb_io_in_3_bits_set),
    .io_in_3_bits_tag(taskArb_io_in_3_bits_tag),
    .io_in_3_bits_off(taskArb_io_in_3_bits_off),
    .io_in_3_bits_opcode(taskArb_io_in_3_bits_opcode),
    .io_in_3_bits_param(taskArb_io_in_3_bits_param),
    .io_in_3_bits_size(taskArb_io_in_3_bits_size),
    .io_in_3_bits_sourceId(taskArb_io_in_3_bits_sourceId),
    .io_in_3_bits_bufIdx(taskArb_io_in_3_bits_bufIdx),
    .io_out_ready(taskArb_io_out_ready),
    .io_out_valid(taskArb_io_out_valid),
    .io_out_bits_set(taskArb_io_out_bits_set),
    .io_out_bits_tag(taskArb_io_out_bits_tag),
    .io_out_bits_off(taskArb_io_out_bits_off),
    .io_out_bits_opcode(taskArb_io_out_bits_opcode),
    .io_out_bits_param(taskArb_io_out_bits_param),
    .io_out_bits_size(taskArb_io_out_bits_size),
    .io_out_bits_sourceId(taskArb_io_out_bits_sourceId),
    .io_out_bits_bufIdx(taskArb_io_out_bits_bufIdx),
    .io_chosen(taskArb_io_chosen)
  );
  assign io_c_ready = _io_resp_valid_T_2 | ~first | ~full | ~beats1_opdata & io_task_ready & ~taskArb_io_out_valid; // @[SinkC.scala 179:47]
  assign io_task_valid = cValid | taskArb_io_out_valid; // @[SinkC.scala 143:27]
  assign io_task_bits_set = taskArb_io_out_valid ? taskArb_io_out_bits_set : taskBuf_task_tag_set[6:0]; // @[SinkC.scala 144:22]
  assign io_task_bits_tag = taskArb_io_out_valid ? taskArb_io_out_bits_tag : taskBuf_task_tag_tag; // @[SinkC.scala 144:22]
  assign io_task_bits_off = taskArb_io_out_valid ? taskArb_io_out_bits_off : io_c_bits_address[5:0]; // @[SinkC.scala 144:22]
  assign io_task_bits_opcode = taskArb_io_out_valid ? taskArb_io_out_bits_opcode : io_c_bits_opcode; // @[SinkC.scala 144:22]
  assign io_task_bits_param = taskArb_io_out_valid ? taskArb_io_out_bits_param : io_c_bits_param; // @[SinkC.scala 144:22]
  assign io_task_bits_size = taskArb_io_out_valid ? taskArb_io_out_bits_size : io_c_bits_size; // @[SinkC.scala 144:22]
  assign io_task_bits_sourceId = taskArb_io_out_valid ? taskArb_io_out_bits_sourceId : io_c_bits_source; // @[SinkC.scala 144:22]
  assign io_task_bits_bufIdx = taskArb_io_out_valid ? taskArb_io_out_bits_bufIdx : nextPtrReg; // @[SinkC.scala 145:29]
  assign io_resp_valid = io_c_valid & (first | last) & ~isRelease; // @[SinkC.scala 147:50]
  assign io_resp_set = taskBuf_task_tag_set[6:0]; // @[CoupledL2.scala 136:30]
  assign io_resp_tag = taskBuf_task_tag_set[28:7]; // @[CoupledL2.scala 135:19]
  assign io_resp_respInfo_opcode = io_c_bits_opcode; // @[SinkC.scala 151:27]
  assign io_resp_respInfo_param = io_c_bits_param; // @[SinkC.scala 152:26]
  assign io_resp_respInfo_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign io_releaseBufWrite_valid = io_c_valid & io_c_bits_opcode == 3'h5; // @[SinkC.scala 157:42]
  assign io_releaseBufWrite_beat_sel = 2'h1 << beat; // @[OneHot.scala 57:35]
  assign io_releaseBufWrite_data_data = {io_c_bits_data,io_c_bits_data}; // @[Cat.scala 31:58]
  assign io_bufResp_data_0 = 2'h3 == io_bufRead_bits_bufIdx ? dataBuf_3_0 : _GEN_536; // @[SinkC.scala 181:{19,19}]
  assign io_bufResp_data_1 = 2'h3 == io_bufRead_bits_bufIdx ? dataBuf_3_1 : _GEN_540; // @[SinkC.scala 181:{19,19}]
  assign io_refillBufWrite_valid = io_refillBufWrite_valid_REG; // @[SinkC.scala 174:27]
  assign io_refillBufWrite_data_data = {_GEN_529,_GEN_533}; // @[SinkC.scala 177:72]
  assign io_refillBufWrite_id = {{4'd0}, io_refillBufWrite_id_REG}; // @[SinkC.scala 176:24]
  assign taskArb_clock = clock;
  assign taskArb_io_in_0_valid = taskValids_0; // @[SinkC.scala 131:16]
  assign taskArb_io_in_0_bits_set = taskBuf_0_set; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_tag = taskBuf_0_tag; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_off = taskBuf_0_off; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_opcode = taskBuf_0_opcode; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_param = taskBuf_0_param; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_size = taskBuf_0_size; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_sourceId = taskBuf_0_sourceId; // @[SinkC.scala 132:15]
  assign taskArb_io_in_0_bits_bufIdx = taskBuf_0_bufIdx; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_valid = taskValids_1; // @[SinkC.scala 131:16]
  assign taskArb_io_in_1_bits_set = taskBuf_1_set; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_tag = taskBuf_1_tag; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_off = taskBuf_1_off; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_opcode = taskBuf_1_opcode; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_param = taskBuf_1_param; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_size = taskBuf_1_size; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_sourceId = taskBuf_1_sourceId; // @[SinkC.scala 132:15]
  assign taskArb_io_in_1_bits_bufIdx = taskBuf_1_bufIdx; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_valid = taskValids_2; // @[SinkC.scala 131:16]
  assign taskArb_io_in_2_bits_set = taskBuf_2_set; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_tag = taskBuf_2_tag; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_off = taskBuf_2_off; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_opcode = taskBuf_2_opcode; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_param = taskBuf_2_param; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_size = taskBuf_2_size; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_sourceId = taskBuf_2_sourceId; // @[SinkC.scala 132:15]
  assign taskArb_io_in_2_bits_bufIdx = taskBuf_2_bufIdx; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_valid = taskValids_3; // @[SinkC.scala 131:16]
  assign taskArb_io_in_3_bits_set = taskBuf_3_set; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_tag = taskBuf_3_tag; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_off = taskBuf_3_off; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_opcode = taskBuf_3_opcode; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_param = taskBuf_3_param; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_size = taskBuf_3_size; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_sourceId = taskBuf_3_sourceId; // @[SinkC.scala 132:15]
  assign taskArb_io_in_3_bits_bufIdx = taskBuf_3_bufIdx; // @[SinkC.scala 132:15]
  assign taskArb_io_out_ready = io_task_ready; // @[SinkC.scala 128:24]
  always @(posedge clock) begin
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h0 == nextPtr & ~beat) begin // @[SinkC.scala 106:32]
            dataBuf_0_0 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h0 == nextPtrReg & _GEN_543) begin // @[SinkC.scala 110:35]
          dataBuf_0_0 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h0 == nextPtr & beat) begin // @[SinkC.scala 106:32]
            dataBuf_0_1 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h0 == nextPtrReg & beat) begin // @[SinkC.scala 110:35]
          dataBuf_0_1 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h1 == nextPtr & ~beat) begin // @[SinkC.scala 106:32]
            dataBuf_1_0 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h1 == nextPtrReg & _GEN_543) begin // @[SinkC.scala 110:35]
          dataBuf_1_0 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h1 == nextPtr & beat) begin // @[SinkC.scala 106:32]
            dataBuf_1_1 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h1 == nextPtrReg & beat) begin // @[SinkC.scala 110:35]
          dataBuf_1_1 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h2 == nextPtr & ~beat) begin // @[SinkC.scala 106:32]
            dataBuf_2_0 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h2 == nextPtrReg & _GEN_543) begin // @[SinkC.scala 110:35]
          dataBuf_2_0 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h2 == nextPtr & beat) begin // @[SinkC.scala 106:32]
            dataBuf_2_1 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h2 == nextPtrReg & beat) begin // @[SinkC.scala 110:35]
          dataBuf_2_1 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h3 == nextPtr & ~beat) begin // @[SinkC.scala 106:32]
            dataBuf_3_0 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h3 == nextPtrReg & _GEN_543) begin // @[SinkC.scala 110:35]
          dataBuf_3_0 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1) begin // @[SinkC.scala 103:35]
      if (beats1_opdata) begin // @[SinkC.scala 104:20]
        if (first) begin // @[SinkC.scala 105:20]
          if (2'h3 == nextPtr & beat) begin // @[SinkC.scala 106:32]
            dataBuf_3_1 <= io_c_bits_data; // @[SinkC.scala 106:32]
          end
        end else if (2'h3 == nextPtrReg & beat) begin // @[SinkC.scala 110:35]
          dataBuf_3_1 <= io_c_bits_data; // @[SinkC.scala 110:35]
        end
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_off <= io_c_bits_address[5:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_off <= io_c_bits_address[5:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_opcode <= io_c_bits_opcode; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_opcode <= io_c_bits_opcode; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_param <= io_c_bits_param; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_param <= io_c_bits_param; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_size <= io_c_bits_size; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_size <= io_c_bits_size; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_sourceId <= io_c_bits_source; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_sourceId <= io_c_bits_source; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h0 == nextPtrReg) begin // @[SinkC.scala 120:34]
          taskBuf_0_bufIdx <= nextPtrReg; // @[SinkC.scala 120:34]
        end else if (2'h0 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_0_bufIdx <= 2'h0; // @[SinkC.scala 119:27]
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 124:31]
        if (_nextPtr_T[0]) begin // @[Mux.scala 47:70]
          taskBuf_0_bufIdx <= 2'h0;
        end else begin
          taskBuf_0_bufIdx <= _nextPtr_T_6;
        end
      end else if (2'h0 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_0_bufIdx <= 2'h0; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_off <= io_c_bits_address[5:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_off <= io_c_bits_address[5:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_opcode <= io_c_bits_opcode; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_opcode <= io_c_bits_opcode; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_param <= io_c_bits_param; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_param <= io_c_bits_param; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_size <= io_c_bits_size; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_size <= io_c_bits_size; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_sourceId <= io_c_bits_source; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_sourceId <= io_c_bits_source; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h1 == nextPtrReg) begin // @[SinkC.scala 120:34]
          taskBuf_1_bufIdx <= nextPtrReg; // @[SinkC.scala 120:34]
        end else if (2'h1 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_1_bufIdx <= 2'h0; // @[SinkC.scala 119:27]
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 124:31]
        if (_nextPtr_T[0]) begin // @[Mux.scala 47:70]
          taskBuf_1_bufIdx <= 2'h0;
        end else begin
          taskBuf_1_bufIdx <= _nextPtr_T_6;
        end
      end else if (2'h1 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_1_bufIdx <= 2'h0; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_off <= io_c_bits_address[5:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_off <= io_c_bits_address[5:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_opcode <= io_c_bits_opcode; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_opcode <= io_c_bits_opcode; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_param <= io_c_bits_param; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_param <= io_c_bits_param; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_size <= io_c_bits_size; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_size <= io_c_bits_size; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_sourceId <= io_c_bits_source; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_sourceId <= io_c_bits_source; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h2 == nextPtrReg) begin // @[SinkC.scala 120:34]
          taskBuf_2_bufIdx <= nextPtrReg; // @[SinkC.scala 120:34]
        end else if (2'h2 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_2_bufIdx <= 2'h0; // @[SinkC.scala 119:27]
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 124:31]
        if (_nextPtr_T[0]) begin // @[Mux.scala 47:70]
          taskBuf_2_bufIdx <= 2'h0;
        end else begin
          taskBuf_2_bufIdx <= _nextPtr_T_6;
        end
      end else if (2'h2 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_2_bufIdx <= 2'h0; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_set <= taskBuf_task_tag_set[6:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_tag <= taskBuf_task_tag_tag; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_off <= io_c_bits_address[5:0]; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_off <= io_c_bits_address[5:0]; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_opcode <= io_c_bits_opcode; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_opcode <= io_c_bits_opcode; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_param <= io_c_bits_param; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_param <= io_c_bits_param; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_size <= io_c_bits_size; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_size <= io_c_bits_size; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_sourceId <= io_c_bits_source; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_sourceId <= io_c_bits_source; // @[SinkC.scala 123:24]
      end
    end
    if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 116:87]
      if (beats1_opdata) begin // @[SinkC.scala 117:20]
        if (2'h3 == nextPtrReg) begin // @[SinkC.scala 120:34]
          taskBuf_3_bufIdx <= nextPtrReg; // @[SinkC.scala 120:34]
        end else if (2'h3 == nextPtrReg) begin // @[SinkC.scala 119:27]
          taskBuf_3_bufIdx <= 2'h0; // @[SinkC.scala 119:27]
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 124:31]
        if (_nextPtr_T[0]) begin // @[Mux.scala 47:70]
          taskBuf_3_bufIdx <= 2'h0;
        end else begin
          taskBuf_3_bufIdx <= _nextPtr_T_6;
        end
      end else if (2'h3 == nextPtr) begin // @[SinkC.scala 123:24]
        taskBuf_3_bufIdx <= 2'h0; // @[SinkC.scala 123:24]
      end
    end
    io_refillBufWrite_id_REG <= {_io_refillBufWrite_id_T,_io_refillBufWrite_id_T_8}; // @[Cat.scala 31:58]
    io_refillBufWrite_data_data_REG <= io_task_bits_bufIdx; // @[SinkC.scala 177:49]
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
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_0_0 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h0 == io_bufRead_bits_bufIdx) begin
        beatValids_0_0 <= 1'h0;
      end else begin
        beatValids_0_0 <= _GEN_74;
      end
    end else begin
      beatValids_0_0 <= _GEN_74;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_0_1 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h0 == io_bufRead_bits_bufIdx) begin
        beatValids_0_1 <= 1'h0;
      end else begin
        beatValids_0_1 <= _GEN_75;
      end
    end else begin
      beatValids_0_1 <= _GEN_75;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_1_0 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h1 == io_bufRead_bits_bufIdx) begin
        beatValids_1_0 <= 1'h0;
      end else begin
        beatValids_1_0 <= _GEN_76;
      end
    end else begin
      beatValids_1_0 <= _GEN_76;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_1_1 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h1 == io_bufRead_bits_bufIdx) begin
        beatValids_1_1 <= 1'h0;
      end else begin
        beatValids_1_1 <= _GEN_77;
      end
    end else begin
      beatValids_1_1 <= _GEN_77;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_2_0 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h2 == io_bufRead_bits_bufIdx) begin
        beatValids_2_0 <= 1'h0;
      end else begin
        beatValids_2_0 <= _GEN_78;
      end
    end else begin
      beatValids_2_0 <= _GEN_78;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_2_1 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h2 == io_bufRead_bits_bufIdx) begin
        beatValids_2_1 <= 1'h0;
      end else begin
        beatValids_2_1 <= _GEN_79;
      end
    end else begin
      beatValids_2_1 <= _GEN_79;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_3_0 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h3 == io_bufRead_bits_bufIdx) begin
        beatValids_3_0 <= 1'h0;
      end else begin
        beatValids_3_0 <= _GEN_80;
      end
    end else begin
      beatValids_3_0 <= _GEN_80;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 138:27]
      beatValids_3_1 <= 1'h0; // @[SinkC.scala 139:{50,50}]
    end else if (io_bufRead_valid) begin
      if (2'h3 == io_bufRead_bits_bufIdx) begin
        beatValids_3_1 <= 1'h0;
      end else begin
        beatValids_3_1 <= _GEN_81;
      end
    end else begin
      beatValids_3_1 <= _GEN_81;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 133:24]
      taskValids_0 <= 1'h0; // @[SinkC.scala 134:23]
    end else if (_T_22) begin // @[SinkC.scala 116:87]
      taskValids_0 <= 1'h0; // @[SinkC.scala 117:20]
    end else if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 62:27]
      if (beats1_opdata) begin
        taskValids_0 <= _GEN_82;
      end else begin
        taskValids_0 <= _GEN_190;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 133:24]
      taskValids_1 <= 1'h0; // @[SinkC.scala 134:23]
    end else if (_T_23) begin // @[SinkC.scala 116:87]
      taskValids_1 <= 1'h0; // @[SinkC.scala 117:20]
    end else if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 62:27]
      if (beats1_opdata) begin
        taskValids_1 <= _GEN_83;
      end else begin
        taskValids_1 <= _GEN_191;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 133:24]
      taskValids_2 <= 1'h0; // @[SinkC.scala 134:23]
    end else if (_T_24) begin // @[SinkC.scala 116:87]
      taskValids_2 <= 1'h0; // @[SinkC.scala 117:20]
    end else if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 62:27]
      if (beats1_opdata) begin
        taskValids_2 <= _GEN_84;
      end else begin
        taskValids_2 <= _GEN_192;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 133:24]
      taskValids_3 <= 1'h0; // @[SinkC.scala 134:23]
    end else if (_T_25) begin // @[SinkC.scala 116:87]
      taskValids_3 <= 1'h0; // @[SinkC.scala 117:20]
    end else if (_nextPtrReg_T_1 & last & (~io_task_ready | taskArb_io_out_valid)) begin // @[SinkC.scala 62:27]
      if (beats1_opdata) begin
        taskValids_3 <= _GEN_85;
      end else begin
        taskValids_3 <= _GEN_193;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      nextPtrReg <= 2'h0; // @[Mux.scala 47:{70,70,70}]
    end else if (_nextPtrReg_T_3) begin // @[Reg.scala 28:20]
      if (_nextPtr_T[0]) begin
        nextPtrReg <= 2'h0;
      end else if (_nextPtr_T[1]) begin
        nextPtrReg <= 2'h1;
      end else if (_nextPtr_T[2]) begin
        nextPtrReg <= 2'h2;
      end else begin
        nextPtrReg <= 2'h3;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkC.scala 174:90]
      io_refillBufWrite_valid_REG <= 1'h0;
    end else begin
      io_refillBufWrite_valid_REG <= _io_refillBufWrite_valid_T & io_task_bits_opcode == 3'h7 & |newdataMask;
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
  counter = _RAND_0[0:0];
  _RAND_1 = {8{`RANDOM}};
  dataBuf_0_0 = _RAND_1[255:0];
  _RAND_2 = {8{`RANDOM}};
  dataBuf_0_1 = _RAND_2[255:0];
  _RAND_3 = {8{`RANDOM}};
  dataBuf_1_0 = _RAND_3[255:0];
  _RAND_4 = {8{`RANDOM}};
  dataBuf_1_1 = _RAND_4[255:0];
  _RAND_5 = {8{`RANDOM}};
  dataBuf_2_0 = _RAND_5[255:0];
  _RAND_6 = {8{`RANDOM}};
  dataBuf_2_1 = _RAND_6[255:0];
  _RAND_7 = {8{`RANDOM}};
  dataBuf_3_0 = _RAND_7[255:0];
  _RAND_8 = {8{`RANDOM}};
  dataBuf_3_1 = _RAND_8[255:0];
  _RAND_9 = {1{`RANDOM}};
  beatValids_0_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  beatValids_0_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  beatValids_1_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  beatValids_1_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  beatValids_2_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  beatValids_2_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  beatValids_3_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  beatValids_3_1 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  taskBuf_0_set = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  taskBuf_0_tag = _RAND_18[21:0];
  _RAND_19 = {1{`RANDOM}};
  taskBuf_0_off = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  taskBuf_0_opcode = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  taskBuf_0_param = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  taskBuf_0_size = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  taskBuf_0_sourceId = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  taskBuf_0_bufIdx = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  taskBuf_1_set = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  taskBuf_1_tag = _RAND_26[21:0];
  _RAND_27 = {1{`RANDOM}};
  taskBuf_1_off = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  taskBuf_1_opcode = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  taskBuf_1_param = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  taskBuf_1_size = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  taskBuf_1_sourceId = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  taskBuf_1_bufIdx = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  taskBuf_2_set = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  taskBuf_2_tag = _RAND_34[21:0];
  _RAND_35 = {1{`RANDOM}};
  taskBuf_2_off = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  taskBuf_2_opcode = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  taskBuf_2_param = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  taskBuf_2_size = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  taskBuf_2_sourceId = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  taskBuf_2_bufIdx = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  taskBuf_3_set = _RAND_41[6:0];
  _RAND_42 = {1{`RANDOM}};
  taskBuf_3_tag = _RAND_42[21:0];
  _RAND_43 = {1{`RANDOM}};
  taskBuf_3_off = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  taskBuf_3_opcode = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  taskBuf_3_param = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  taskBuf_3_size = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  taskBuf_3_sourceId = _RAND_47[4:0];
  _RAND_48 = {1{`RANDOM}};
  taskBuf_3_bufIdx = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  taskValids_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  taskValids_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  taskValids_2 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  taskValids_3 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  nextPtrReg = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  io_refillBufWrite_valid_REG = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  io_refillBufWrite_id_REG = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  io_refillBufWrite_data_data_REG = _RAND_56[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    counter = 1'h0;
  end
  if (reset) begin
    beatValids_0_0 = 1'h0;
  end
  if (reset) begin
    beatValids_0_1 = 1'h0;
  end
  if (reset) begin
    beatValids_1_0 = 1'h0;
  end
  if (reset) begin
    beatValids_1_1 = 1'h0;
  end
  if (reset) begin
    beatValids_2_0 = 1'h0;
  end
  if (reset) begin
    beatValids_2_1 = 1'h0;
  end
  if (reset) begin
    beatValids_3_0 = 1'h0;
  end
  if (reset) begin
    beatValids_3_1 = 1'h0;
  end
  if (reset) begin
    taskValids_0 = 1'h0;
  end
  if (reset) begin
    taskValids_1 = 1'h0;
  end
  if (reset) begin
    taskValids_2 = 1'h0;
  end
  if (reset) begin
    taskValids_3 = 1'h0;
  end
  if (reset) begin
    nextPtrReg = 2'h0;
  end
  if (reset) begin
    io_refillBufWrite_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

