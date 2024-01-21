module GrantBuffer(
  input          clock,
  input          reset,
  output         io_d_task_ready,
  input          io_d_task_valid,
  input  [6:0]   io_d_task_bits_task_set,
  input  [21:0]  io_d_task_bits_task_tag,
  input  [2:0]   io_d_task_bits_task_opcode,
  input  [2:0]   io_d_task_bits_task_param,
  input  [4:0]   io_d_task_bits_task_sourceId,
  input  [7:0]   io_d_task_bits_task_mshrId,
  input  [511:0] io_d_task_bits_data_data,
  input          io_d_ready,
  output         io_d_valid,
  output [2:0]   io_d_bits_opcode,
  output [1:0]   io_d_bits_param,
  output [4:0]   io_d_bits_source,
  output [7:0]   io_d_bits_sink,
  output [255:0] io_d_bits_data,
  output         io_e_ready,
  input          io_e_valid,
  input  [7:0]   io_e_bits_sink,
  output         io_e_resp_valid,
  output [7:0]   io_e_resp_mshrId,
  input  [21:0]  io_fromReqArb_status_s1_tags_1,
  input  [6:0]   io_fromReqArb_status_s1_sets_1,
  input          io_pipeStatusVec_0_valid,
  input  [2:0]   io_pipeStatusVec_0_bits_channel,
  input          io_pipeStatusVec_1_valid,
  input  [2:0]   io_pipeStatusVec_1_bits_channel,
  input          io_pipeStatusVec_2_valid,
  input  [2:0]   io_pipeStatusVec_2_bits_channel,
  input          io_pipeStatusVec_3_valid,
  input  [2:0]   io_pipeStatusVec_3_bits_channel,
  input          io_pipeStatusVec_4_valid,
  input  [2:0]   io_pipeStatusVec_4_bits_channel,
  output         io_toReqArb_blockSinkReqEntrance_blockA_s1,
  output         io_toReqArb_blockSinkReqEntrance_blockB_s1,
  output         io_toReqArb_blockSinkReqEntrance_blockC_s1,
  output         io_toReqArb_blockMSHRReqEntrance,
  output         io_grantStatus_0_valid,
  output [6:0]   io_grantStatus_0_set,
  output [21:0]  io_grantStatus_0_tag,
  output         io_grantStatus_1_valid,
  output [6:0]   io_grantStatus_1_set,
  output [21:0]  io_grantStatus_1_tag,
  output         io_grantStatus_2_valid,
  output [6:0]   io_grantStatus_2_set,
  output [21:0]  io_grantStatus_2_tag,
  output         io_grantStatus_3_valid,
  output [6:0]   io_grantStatus_3_set,
  output [21:0]  io_grantStatus_3_tag,
  output         io_grantStatus_4_valid,
  output [6:0]   io_grantStatus_4_set,
  output [21:0]  io_grantStatus_4_tag,
  output         io_grantStatus_5_valid,
  output [6:0]   io_grantStatus_5_set,
  output [21:0]  io_grantStatus_5_tag,
  output         io_grantStatus_6_valid,
  output [6:0]   io_grantStatus_6_set,
  output [21:0]  io_grantStatus_6_tag,
  output         io_grantStatus_7_valid,
  output [6:0]   io_grantStatus_7_set,
  output [21:0]  io_grantStatus_7_tag,
  output         io_grantStatus_8_valid,
  output [6:0]   io_grantStatus_8_set,
  output [21:0]  io_grantStatus_8_tag,
  output         io_grantStatus_9_valid,
  output [6:0]   io_grantStatus_9_set,
  output [21:0]  io_grantStatus_9_tag,
  output         io_grantStatus_10_valid,
  output [6:0]   io_grantStatus_10_set,
  output [21:0]  io_grantStatus_10_tag,
  output         io_grantStatus_11_valid,
  output [6:0]   io_grantStatus_11_set,
  output [21:0]  io_grantStatus_11_tag,
  output         io_grantStatus_12_valid,
  output [6:0]   io_grantStatus_12_set,
  output [21:0]  io_grantStatus_12_tag,
  output         io_grantStatus_13_valid,
  output [6:0]   io_grantStatus_13_set,
  output [21:0]  io_grantStatus_13_tag,
  output         io_grantStatus_14_valid,
  output [6:0]   io_grantStatus_14_set,
  output [21:0]  io_grantStatus_14_tag,
  output         io_grantStatus_15_valid,
  output [6:0]   io_grantStatus_15_set,
  output [21:0]  io_grantStatus_15_tag,
  output         io_l1Hint_valid,
  output [31:0]  io_l1Hint_bits_sourceId,
  output [4:0]   io_globalCounter
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [255:0] _RAND_5;
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
`endif // RANDOMIZE_REG_INIT
  wire  grantQueue_clock; // @[GrantBuffer.scala 110:26]
  wire  grantQueue_reset; // @[GrantBuffer.scala 110:26]
  wire  grantQueue_io_enq_ready; // @[GrantBuffer.scala 110:26]
  wire  grantQueue_io_enq_valid; // @[GrantBuffer.scala 110:26]
  wire [2:0] grantQueue_io_enq_bits_task_opcode; // @[GrantBuffer.scala 110:26]
  wire [2:0] grantQueue_io_enq_bits_task_param; // @[GrantBuffer.scala 110:26]
  wire [4:0] grantQueue_io_enq_bits_task_sourceId; // @[GrantBuffer.scala 110:26]
  wire [7:0] grantQueue_io_enq_bits_task_mshrId; // @[GrantBuffer.scala 110:26]
  wire [511:0] grantQueue_io_enq_bits_data_data; // @[GrantBuffer.scala 110:26]
  wire  grantQueue_io_deq_ready; // @[GrantBuffer.scala 110:26]
  wire  grantQueue_io_deq_valid; // @[GrantBuffer.scala 110:26]
  wire [2:0] grantQueue_io_deq_bits_task_opcode; // @[GrantBuffer.scala 110:26]
  wire [2:0] grantQueue_io_deq_bits_task_param; // @[GrantBuffer.scala 110:26]
  wire [4:0] grantQueue_io_deq_bits_task_sourceId; // @[GrantBuffer.scala 110:26]
  wire [7:0] grantQueue_io_deq_bits_task_mshrId; // @[GrantBuffer.scala 110:26]
  wire [511:0] grantQueue_io_deq_bits_data_data; // @[GrantBuffer.scala 110:26]
  wire [4:0] grantQueue_io_count; // @[GrantBuffer.scala 110:26]
  wire  hintQueue_clock; // @[GrantBuffer.scala 239:25]
  wire  hintQueue_reset; // @[GrantBuffer.scala 239:25]
  wire  hintQueue_io_enq_ready; // @[GrantBuffer.scala 239:25]
  wire  hintQueue_io_enq_valid; // @[GrantBuffer.scala 239:25]
  wire [4:0] hintQueue_io_enq_bits; // @[GrantBuffer.scala 239:25]
  wire  hintQueue_io_deq_valid; // @[GrantBuffer.scala 239:25]
  wire [4:0] hintQueue_io_deq_bits; // @[GrantBuffer.scala 239:25]
  wire [511:0] _deqData_WIRE = grantQueue_io_deq_bits_data_data;
  wire [255:0] deqData_0_data = _deqData_WIRE[255:0]; // @[GrantBuffer.scala 123:53]
  wire [255:0] deqData_1_data = _deqData_WIRE[511:256]; // @[GrantBuffer.scala 123:53]
  reg  grantBufValid; // @[GrantBuffer.scala 126:30]
  reg [2:0] grantBuf_task_opcode; // @[GrantBuffer.scala 127:26]
  reg [2:0] grantBuf_task_param; // @[GrantBuffer.scala 127:26]
  reg [4:0] grantBuf_task_sourceId; // @[GrantBuffer.scala 127:26]
  reg [7:0] grantBuf_task_mshrId; // @[GrantBuffer.scala 127:26]
  reg [255:0] grantBuf_data_data; // @[GrantBuffer.scala 127:26]
  wire  _grantQueue_io_deq_ready_T = ~grantBufValid; // @[GrantBuffer.scala 132:44]
  wire  _GEN_0 = grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
    0] | grantBufValid; // @[GrantBuffer.scala 135:71 136:19 126:30]
  wire [2:0] io_d_bits_d_1_opcode = grantQueue_io_deq_bits_task_opcode; // @[GrantBuffer.scala 83:17 84:14]
  wire [1:0] io_d_bits_d_param = grantBuf_task_param[1:0]; // @[GrantBuffer.scala 83:17 85:13]
  wire [1:0] io_d_bits_d_1_param = grantQueue_io_deq_bits_task_param[1:0]; // @[GrantBuffer.scala 83:17 85:13]
  wire [4:0] io_d_bits_d_1_source = grantQueue_io_deq_bits_task_sourceId; // @[GrantBuffer.scala 83:17 87:14]
  wire [7:0] io_d_bits_d_1_sink = grantQueue_io_deq_bits_task_mshrId; // @[GrantBuffer.scala 83:17 88:12]
  reg  inflight_grant_0_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_0_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_0_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_0_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_1_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_1_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_1_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_1_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_2_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_2_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_2_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_2_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_3_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_3_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_3_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_3_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_4_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_4_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_4_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_4_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_5_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_5_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_5_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_5_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_6_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_6_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_6_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_6_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_7_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_7_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_7_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_7_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_8_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_8_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_8_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_8_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_9_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_9_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_9_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_9_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_10_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_10_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_10_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_10_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_11_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_11_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_11_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_11_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_12_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_12_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_12_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_12_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_13_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_13_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_13_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_13_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_14_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_14_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_14_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_14_bits_sink; // @[GrantBuffer.scala 174:31]
  reg  inflight_grant_15_valid; // @[GrantBuffer.scala 174:31]
  reg [6:0] inflight_grant_15_bits_set; // @[GrantBuffer.scala 174:31]
  reg [21:0] inflight_grant_15_bits_tag; // @[GrantBuffer.scala 174:31]
  reg [7:0] inflight_grant_15_bits_sink; // @[GrantBuffer.scala 174:31]
  wire  _T_18 = io_d_task_ready & io_d_task_valid; // @[Decoupled.scala 50:35]
  wire  _insertIdx_T = ~inflight_grant_0_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_1 = ~inflight_grant_1_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_2 = ~inflight_grant_2_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_3 = ~inflight_grant_3_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_4 = ~inflight_grant_4_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_5 = ~inflight_grant_5_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_6 = ~inflight_grant_6_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_7 = ~inflight_grant_7_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_8 = ~inflight_grant_8_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_9 = ~inflight_grant_9_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_10 = ~inflight_grant_10_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_11 = ~inflight_grant_11_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_12 = ~inflight_grant_12_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_13 = ~inflight_grant_13_valid; // @[GrantBuffer.scala 179:56]
  wire  _insertIdx_T_14 = ~inflight_grant_14_valid; // @[GrantBuffer.scala 179:56]
  wire [3:0] _insertIdx_T_16 = _insertIdx_T_14 ? 4'he : 4'hf; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_17 = _insertIdx_T_13 ? 4'hd : _insertIdx_T_16; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_18 = _insertIdx_T_12 ? 4'hc : _insertIdx_T_17; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_19 = _insertIdx_T_11 ? 4'hb : _insertIdx_T_18; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_20 = _insertIdx_T_10 ? 4'ha : _insertIdx_T_19; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_21 = _insertIdx_T_9 ? 4'h9 : _insertIdx_T_20; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_22 = _insertIdx_T_8 ? 4'h8 : _insertIdx_T_21; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_23 = _insertIdx_T_7 ? 4'h7 : _insertIdx_T_22; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_24 = _insertIdx_T_6 ? 4'h6 : _insertIdx_T_23; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_25 = _insertIdx_T_5 ? 4'h5 : _insertIdx_T_24; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_26 = _insertIdx_T_4 ? 4'h4 : _insertIdx_T_25; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_27 = _insertIdx_T_3 ? 4'h3 : _insertIdx_T_26; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_28 = _insertIdx_T_2 ? 4'h2 : _insertIdx_T_27; // @[Mux.scala 47:70]
  wire [3:0] _insertIdx_T_29 = _insertIdx_T_1 ? 4'h1 : _insertIdx_T_28; // @[Mux.scala 47:70]
  wire [3:0] insertIdx = _insertIdx_T ? 4'h0 : _insertIdx_T_29; // @[Mux.scala 47:70]
  wire  _GEN_28 = 4'h0 == insertIdx | inflight_grant_0_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_29 = 4'h1 == insertIdx | inflight_grant_1_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_30 = 4'h2 == insertIdx | inflight_grant_2_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_31 = 4'h3 == insertIdx | inflight_grant_3_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_32 = 4'h4 == insertIdx | inflight_grant_4_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_33 = 4'h5 == insertIdx | inflight_grant_5_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_34 = 4'h6 == insertIdx | inflight_grant_6_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_35 = 4'h7 == insertIdx | inflight_grant_7_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_36 = 4'h8 == insertIdx | inflight_grant_8_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_37 = 4'h9 == insertIdx | inflight_grant_9_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_38 = 4'ha == insertIdx | inflight_grant_10_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_39 = 4'hb == insertIdx | inflight_grant_11_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_40 = 4'hc == insertIdx | inflight_grant_12_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_41 = 4'hd == insertIdx | inflight_grant_13_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_42 = 4'he == insertIdx | inflight_grant_14_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_43 = 4'hf == insertIdx | inflight_grant_15_valid; // @[GrantBuffer.scala 181:{17,17} 174:31]
  wire  _GEN_92 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_28 : inflight_grant_0_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_93 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_29 : inflight_grant_1_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_94 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_30 : inflight_grant_2_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_95 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_31 : inflight_grant_3_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_96 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_32 : inflight_grant_4_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_97 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_33 : inflight_grant_5_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_98 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_34 : inflight_grant_6_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_99 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_35 : inflight_grant_7_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_100 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_36 : inflight_grant_8_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_101 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_37 : inflight_grant_9_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_102 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_38 : inflight_grant_10_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_103 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_39 : inflight_grant_11_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_104 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_40 : inflight_grant_12_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_105 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_41 : inflight_grant_13_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_106 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_42 : inflight_grant_14_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _GEN_107 = _T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2 ? _GEN_43 : inflight_grant_15_valid; // @[GrantBuffer.scala 174:31 177:62]
  wire  _T_26 = io_e_ready & io_e_valid; // @[Decoupled.scala 50:35]
  wire  sinkMatchVec_0 = inflight_grant_0_valid & inflight_grant_0_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_1 = inflight_grant_1_valid & inflight_grant_1_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_2 = inflight_grant_2_valid & inflight_grant_2_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_3 = inflight_grant_3_valid & inflight_grant_3_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_4 = inflight_grant_4_valid & inflight_grant_4_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_5 = inflight_grant_5_valid & inflight_grant_5_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_6 = inflight_grant_6_valid & inflight_grant_6_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_7 = inflight_grant_7_valid & inflight_grant_7_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_8 = inflight_grant_8_valid & inflight_grant_8_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_9 = inflight_grant_9_valid & inflight_grant_9_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_10 = inflight_grant_10_valid & inflight_grant_10_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_11 = inflight_grant_11_valid & inflight_grant_11_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_12 = inflight_grant_12_valid & inflight_grant_12_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_13 = inflight_grant_13_valid & inflight_grant_13_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_14 = inflight_grant_14_valid & inflight_grant_14_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire  sinkMatchVec_15 = inflight_grant_15_valid & inflight_grant_15_bits_sink == io_e_bits_sink; // @[GrantBuffer.scala 199:56]
  wire [7:0] bufIdx_lo = {sinkMatchVec_7,sinkMatchVec_6,sinkMatchVec_5,sinkMatchVec_4,sinkMatchVec_3,sinkMatchVec_2,
    sinkMatchVec_1,sinkMatchVec_0}; // @[Cat.scala 31:58]
  wire [15:0] _bufIdx_T = {sinkMatchVec_15,sinkMatchVec_14,sinkMatchVec_13,sinkMatchVec_12,sinkMatchVec_11,
    sinkMatchVec_10,sinkMatchVec_9,sinkMatchVec_8,bufIdx_lo}; // @[Cat.scala 31:58]
  wire [7:0] bufIdx_hi_1 = _bufIdx_T[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] bufIdx_lo_1 = _bufIdx_T[7:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T_1 = |bufIdx_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _bufIdx_T_2 = bufIdx_hi_1 | bufIdx_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] bufIdx_hi_2 = _bufIdx_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] bufIdx_lo_2 = _bufIdx_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T_3 = |bufIdx_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _bufIdx_T_4 = bufIdx_hi_2 | bufIdx_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] bufIdx_hi_3 = _bufIdx_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] bufIdx_lo_3 = _bufIdx_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _bufIdx_T_5 = |bufIdx_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _bufIdx_T_6 = bufIdx_hi_3 | bufIdx_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] bufIdx = {_bufIdx_T_1,_bufIdx_T_3,_bufIdx_T_5,_bufIdx_T_6[1]}; // @[Cat.scala 31:58]
  wire  _noSpaceForSinkReq_T_5 = io_pipeStatusVec_1_valid & (io_pipeStatusVec_1_bits_channel[0] |
    io_pipeStatusVec_1_bits_channel[2]); // @[GrantBuffer.scala 222:13]
  wire  _noSpaceForSinkReq_T_11 = io_pipeStatusVec_2_valid & (io_pipeStatusVec_2_bits_channel[0] |
    io_pipeStatusVec_2_bits_channel[2]); // @[GrantBuffer.scala 222:13]
  wire  _noSpaceForSinkReq_T_17 = io_pipeStatusVec_3_valid & (io_pipeStatusVec_3_bits_channel[0] |
    io_pipeStatusVec_3_bits_channel[2]); // @[GrantBuffer.scala 222:13]
  wire  _noSpaceForSinkReq_T_23 = io_pipeStatusVec_4_valid & (io_pipeStatusVec_4_bits_channel[0] |
    io_pipeStatusVec_4_bits_channel[2]); // @[GrantBuffer.scala 222:13]
  wire [3:0] _noSpaceForSinkReq_T_24 = {_noSpaceForSinkReq_T_23,_noSpaceForSinkReq_T_17,_noSpaceForSinkReq_T_11,
    _noSpaceForSinkReq_T_5}; // @[GrantBuffer.scala 223:6]
  wire [1:0] _noSpaceForSinkReq_T_29 = _noSpaceForSinkReq_T_24[0] + _noSpaceForSinkReq_T_24[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _noSpaceForSinkReq_T_31 = _noSpaceForSinkReq_T_24[2] + _noSpaceForSinkReq_T_24[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _noSpaceForSinkReq_T_33 = _noSpaceForSinkReq_T_29 + _noSpaceForSinkReq_T_31; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_240 = {{2'd0}, _noSpaceForSinkReq_T_33}; // @[GrantBuffer.scala 223:14]
  wire [4:0] _noSpaceForSinkReq_T_36 = _GEN_240 + grantQueue_io_count; // @[GrantBuffer.scala 223:14]
  wire  _noSpaceForMSHRReq_T_2 = io_pipeStatusVec_0_valid & io_pipeStatusVec_0_bits_channel[0]; // @[GrantBuffer.scala 225:13]
  wire  _noSpaceForMSHRReq_T_5 = io_pipeStatusVec_1_valid & io_pipeStatusVec_1_bits_channel[0]; // @[GrantBuffer.scala 225:13]
  wire  _noSpaceForMSHRReq_T_8 = io_pipeStatusVec_2_valid & io_pipeStatusVec_2_bits_channel[0]; // @[GrantBuffer.scala 225:13]
  wire  _noSpaceForMSHRReq_T_11 = io_pipeStatusVec_3_valid & io_pipeStatusVec_3_bits_channel[0]; // @[GrantBuffer.scala 225:13]
  wire  _noSpaceForMSHRReq_T_14 = io_pipeStatusVec_4_valid & io_pipeStatusVec_4_bits_channel[0]; // @[GrantBuffer.scala 225:13]
  wire [4:0] _noSpaceForMSHRReq_T_15 = {_noSpaceForMSHRReq_T_14,_noSpaceForMSHRReq_T_11,_noSpaceForMSHRReq_T_8,
    _noSpaceForMSHRReq_T_5,_noSpaceForMSHRReq_T_2}; // @[GrantBuffer.scala 226:6]
  wire [1:0] _noSpaceForMSHRReq_T_21 = _noSpaceForMSHRReq_T_15[0] + _noSpaceForMSHRReq_T_15[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _noSpaceForMSHRReq_T_23 = _noSpaceForMSHRReq_T_15[3] + _noSpaceForMSHRReq_T_15[4]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_241 = {{1'd0}, _noSpaceForMSHRReq_T_15[2]}; // @[Bitwise.scala 48:55]
  wire [2:0] _noSpaceForMSHRReq_T_25 = _GEN_241 + _noSpaceForMSHRReq_T_23; // @[Bitwise.scala 48:55]
  wire [2:0] _noSpaceForMSHRReq_T_27 = _noSpaceForMSHRReq_T_21 + _noSpaceForMSHRReq_T_25[1:0]; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_242 = {{2'd0}, _noSpaceForMSHRReq_T_27}; // @[GrantBuffer.scala 226:14]
  wire [4:0] _noSpaceForMSHRReq_T_30 = _GEN_242 + grantQueue_io_count; // @[GrantBuffer.scala 226:14]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T = inflight_grant_0_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_1 = inflight_grant_0_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_3 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_1 &
    inflight_grant_0_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_4 = inflight_grant_1_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_5 = inflight_grant_1_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_4; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_7 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_5 &
    inflight_grant_1_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_8 = inflight_grant_2_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_9 = inflight_grant_2_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_8; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_11 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_9 &
    inflight_grant_2_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_12 = inflight_grant_3_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_13 = inflight_grant_3_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_12; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_15 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_13 &
    inflight_grant_3_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_16 = inflight_grant_4_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_17 = inflight_grant_4_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_16; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_19 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_17 &
    inflight_grant_4_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_20 = inflight_grant_5_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_21 = inflight_grant_5_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_20; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_23 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_21 &
    inflight_grant_5_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_24 = inflight_grant_6_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_25 = inflight_grant_6_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_24; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_27 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_25 &
    inflight_grant_6_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_28 = inflight_grant_7_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_29 = inflight_grant_7_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_28; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_31 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_29 &
    inflight_grant_7_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_32 = inflight_grant_8_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_33 = inflight_grant_8_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_32; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_35 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_33 &
    inflight_grant_8_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_36 = inflight_grant_9_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_37 = inflight_grant_9_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_36; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_39 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_37 &
    inflight_grant_9_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_40 = inflight_grant_10_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_41 = inflight_grant_10_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_40; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_43 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_41 &
    inflight_grant_10_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_44 = inflight_grant_11_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_45 = inflight_grant_11_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_44; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_47 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_45 &
    inflight_grant_11_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_48 = inflight_grant_12_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_49 = inflight_grant_12_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_48; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_51 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_49 &
    inflight_grant_12_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_52 = inflight_grant_13_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_53 = inflight_grant_13_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_52; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_55 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_53 &
    inflight_grant_13_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_56 = inflight_grant_14_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_57 = inflight_grant_14_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_56; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_59 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_57 &
    inflight_grant_14_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_60 = inflight_grant_15_bits_set == io_fromReqArb_status_s1_sets_1; // @[GrantBuffer.scala 230:16]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_61 = inflight_grant_15_valid &
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_60; // @[GrantBuffer.scala 229:85]
  wire  _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_63 = _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_61 &
    inflight_grant_15_bits_tag == io_fromReqArb_status_s1_tags_1; // @[GrantBuffer.scala 230:50]
  wire [7:0] io_toReqArb_blockSinkReqEntrance_blockB_s1_lo = {_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_35,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_39,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_43,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_47,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_51,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_55,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_59,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_63}; // @[Cat.scala 31:58]
  wire [15:0] _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_64 = {_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_3,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_7,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_11,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_15,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_19,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_23,_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_27,
    _io_toReqArb_blockSinkReqEntrance_blockB_s1_T_31,io_toReqArb_blockSinkReqEntrance_blockB_s1_lo}; // @[Cat.scala 31:58]
  reg [4:0] globalCounter; // @[GrantBuffer.scala 243:30]
  wire  hasData = io_d_task_bits_task_opcode[0]; // @[GrantBuffer.scala 245:45]
  wire [4:0] _globalCounter_T_1 = globalCounter + 5'h1; // @[GrantBuffer.scala 247:38]
  wire [4:0] _globalCounter_T_4 = globalCounter - 5'h1; // @[GrantBuffer.scala 252:68]
  Queue_160 grantQueue ( // @[GrantBuffer.scala 110:26]
    .clock(grantQueue_clock),
    .reset(grantQueue_reset),
    .io_enq_ready(grantQueue_io_enq_ready),
    .io_enq_valid(grantQueue_io_enq_valid),
    .io_enq_bits_task_opcode(grantQueue_io_enq_bits_task_opcode),
    .io_enq_bits_task_param(grantQueue_io_enq_bits_task_param),
    .io_enq_bits_task_sourceId(grantQueue_io_enq_bits_task_sourceId),
    .io_enq_bits_task_mshrId(grantQueue_io_enq_bits_task_mshrId),
    .io_enq_bits_data_data(grantQueue_io_enq_bits_data_data),
    .io_deq_ready(grantQueue_io_deq_ready),
    .io_deq_valid(grantQueue_io_deq_valid),
    .io_deq_bits_task_opcode(grantQueue_io_deq_bits_task_opcode),
    .io_deq_bits_task_param(grantQueue_io_deq_bits_task_param),
    .io_deq_bits_task_sourceId(grantQueue_io_deq_bits_task_sourceId),
    .io_deq_bits_task_mshrId(grantQueue_io_deq_bits_task_mshrId),
    .io_deq_bits_data_data(grantQueue_io_deq_bits_data_data),
    .io_count(grantQueue_io_count)
  );
  Queue_161 hintQueue ( // @[GrantBuffer.scala 239:25]
    .clock(hintQueue_clock),
    .reset(hintQueue_reset),
    .io_enq_ready(hintQueue_io_enq_ready),
    .io_enq_valid(hintQueue_io_enq_valid),
    .io_enq_bits(hintQueue_io_enq_bits),
    .io_deq_valid(hintQueue_io_deq_valid),
    .io_deq_bits(hintQueue_io_deq_bits)
  );
  assign io_d_task_ready = 1'h1; // @[GrantBuffer.scala 113:19]
  assign io_d_valid = grantBufValid | grantQueue_io_deq_valid; // @[GrantBuffer.scala 144:31]
  assign io_d_bits_opcode = grantBufValid ? grantBuf_task_opcode : io_d_bits_d_1_opcode; // @[GrantBuffer.scala 145:19]
  assign io_d_bits_param = grantBufValid ? io_d_bits_d_param : io_d_bits_d_1_param; // @[GrantBuffer.scala 145:19]
  assign io_d_bits_source = grantBufValid ? grantBuf_task_sourceId : io_d_bits_d_1_source; // @[GrantBuffer.scala 145:19]
  assign io_d_bits_sink = grantBufValid ? grantBuf_task_mshrId : io_d_bits_d_1_sink; // @[GrantBuffer.scala 145:19]
  assign io_d_bits_data = grantBufValid ? grantBuf_data_data : deqData_0_data; // @[GrantBuffer.scala 145:19]
  assign io_e_ready = 1'h1; // @[GrantBuffer.scala 206:14]
  assign io_e_resp_valid = io_e_valid; // @[GrantBuffer.scala 207:19]
  assign io_e_resp_mshrId = io_e_bits_sink; // @[GrantBuffer.scala 208:20]
  assign io_toReqArb_blockSinkReqEntrance_blockA_s1 = _noSpaceForSinkReq_T_36 >= 5'h10; // @[GrantBuffer.scala 223:30]
  assign io_toReqArb_blockSinkReqEntrance_blockB_s1 = |_io_toReqArb_blockSinkReqEntrance_blockB_s1_T_64; // @[GrantBuffer.scala 230:100]
  assign io_toReqArb_blockSinkReqEntrance_blockC_s1 = _noSpaceForSinkReq_T_36 >= 5'h10; // @[GrantBuffer.scala 223:30]
  assign io_toReqArb_blockMSHRReqEntrance = _noSpaceForMSHRReq_T_30 >= 5'h10; // @[GrantBuffer.scala 226:30]
  assign io_grantStatus_0_valid = inflight_grant_0_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_0_set = inflight_grant_0_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_0_tag = inflight_grant_0_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_1_valid = inflight_grant_1_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_1_set = inflight_grant_1_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_1_tag = inflight_grant_1_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_2_valid = inflight_grant_2_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_2_set = inflight_grant_2_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_2_tag = inflight_grant_2_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_3_valid = inflight_grant_3_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_3_set = inflight_grant_3_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_3_tag = inflight_grant_3_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_4_valid = inflight_grant_4_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_4_set = inflight_grant_4_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_4_tag = inflight_grant_4_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_5_valid = inflight_grant_5_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_5_set = inflight_grant_5_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_5_tag = inflight_grant_5_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_6_valid = inflight_grant_6_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_6_set = inflight_grant_6_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_6_tag = inflight_grant_6_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_7_valid = inflight_grant_7_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_7_set = inflight_grant_7_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_7_tag = inflight_grant_7_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_8_valid = inflight_grant_8_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_8_set = inflight_grant_8_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_8_tag = inflight_grant_8_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_9_valid = inflight_grant_9_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_9_set = inflight_grant_9_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_9_tag = inflight_grant_9_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_10_valid = inflight_grant_10_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_10_set = inflight_grant_10_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_10_tag = inflight_grant_10_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_11_valid = inflight_grant_11_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_11_set = inflight_grant_11_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_11_tag = inflight_grant_11_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_12_valid = inflight_grant_12_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_12_set = inflight_grant_12_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_12_tag = inflight_grant_12_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_13_valid = inflight_grant_13_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_13_set = inflight_grant_13_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_13_tag = inflight_grant_13_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_14_valid = inflight_grant_14_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_14_set = inflight_grant_14_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_14_tag = inflight_grant_14_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_grantStatus_15_valid = inflight_grant_15_valid; // @[GrantBuffer.scala 192:15]
  assign io_grantStatus_15_set = inflight_grant_15_bits_set; // @[GrantBuffer.scala 194:15]
  assign io_grantStatus_15_tag = inflight_grant_15_bits_tag; // @[GrantBuffer.scala 193:15]
  assign io_l1Hint_valid = hintQueue_io_deq_valid; // @[GrantBuffer.scala 268:19]
  assign io_l1Hint_bits_sourceId = {{27'd0}, hintQueue_io_deq_bits}; // @[GrantBuffer.scala 269:27]
  assign io_globalCounter = globalCounter; // @[GrantBuffer.scala 266:20]
  assign grantQueue_clock = clock;
  assign grantQueue_reset = reset;
  assign grantQueue_io_enq_valid = io_d_task_valid & io_d_task_bits_task_opcode != 3'h2; // @[GrantBuffer.scala 111:46]
  assign grantQueue_io_enq_bits_task_opcode = io_d_task_bits_task_opcode; // @[GrantBuffer.scala 112:26]
  assign grantQueue_io_enq_bits_task_param = io_d_task_bits_task_param; // @[GrantBuffer.scala 112:26]
  assign grantQueue_io_enq_bits_task_sourceId = io_d_task_bits_task_sourceId; // @[GrantBuffer.scala 112:26]
  assign grantQueue_io_enq_bits_task_mshrId = io_d_task_bits_task_mshrId; // @[GrantBuffer.scala 112:26]
  assign grantQueue_io_enq_bits_data_data = io_d_task_bits_data_data; // @[GrantBuffer.scala 112:26]
  assign grantQueue_io_deq_ready = io_d_ready & ~grantBufValid; // @[GrantBuffer.scala 132:41]
  assign hintQueue_clock = clock;
  assign hintQueue_reset = reset;
  assign hintQueue_io_enq_valid = globalCounter >= 5'h3; // @[GrantBuffer.scala 256:22]
  assign hintQueue_io_enq_bits = globalCounter >= 5'h3 ? io_d_task_bits_task_sourceId : 5'h0; // @[GrantBuffer.scala 256:30 258:27 261:27]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 140:37]
      grantBufValid <= 1'h0; // @[GrantBuffer.scala 141:19]
    end else if (grantBufValid & io_d_ready) begin
      grantBufValid <= 1'h0;
    end else begin
      grantBufValid <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 135:71]
      grantBuf_task_opcode <= 3'h0; // @[GrantBuffer.scala 137:19]
    end else if (grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
      0]) begin // @[GrantBuffer.scala 127:26]
      grantBuf_task_opcode <= grantQueue_io_deq_bits_task_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 135:71]
      grantBuf_task_param <= 3'h0; // @[GrantBuffer.scala 137:19]
    end else if (grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
      0]) begin // @[GrantBuffer.scala 127:26]
      grantBuf_task_param <= grantQueue_io_deq_bits_task_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 135:71]
      grantBuf_task_sourceId <= 5'h0; // @[GrantBuffer.scala 137:19]
    end else if (grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
      0]) begin // @[GrantBuffer.scala 127:26]
      grantBuf_task_sourceId <= grantQueue_io_deq_bits_task_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 135:71]
      grantBuf_task_mshrId <= 8'h0; // @[GrantBuffer.scala 137:19]
    end else if (grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
      0]) begin // @[GrantBuffer.scala 127:26]
      grantBuf_task_mshrId <= grantQueue_io_deq_bits_task_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 135:71]
      grantBuf_data_data <= 256'h0; // @[GrantBuffer.scala 138:19]
    end else if (grantQueue_io_deq_valid & io_d_ready & _grantQueue_io_deq_ready_T & grantQueue_io_deq_bits_task_opcode[
      0]) begin // @[GrantBuffer.scala 127:26]
      grantBuf_data_data <= deqData_1_data;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_0_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h0 == bufIdx) begin
        inflight_grant_0_valid <= 1'h0;
      end else begin
        inflight_grant_0_valid <= _GEN_92;
      end
    end else begin
      inflight_grant_0_valid <= _GEN_92;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_0_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h0 == insertIdx) begin
        inflight_grant_0_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_0_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h0 == insertIdx) begin
        inflight_grant_0_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_0_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h0 == insertIdx) begin
        inflight_grant_0_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_1_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h1 == bufIdx) begin
        inflight_grant_1_valid <= 1'h0;
      end else begin
        inflight_grant_1_valid <= _GEN_93;
      end
    end else begin
      inflight_grant_1_valid <= _GEN_93;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_1_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h1 == insertIdx) begin
        inflight_grant_1_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_1_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h1 == insertIdx) begin
        inflight_grant_1_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_1_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h1 == insertIdx) begin
        inflight_grant_1_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_2_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h2 == bufIdx) begin
        inflight_grant_2_valid <= 1'h0;
      end else begin
        inflight_grant_2_valid <= _GEN_94;
      end
    end else begin
      inflight_grant_2_valid <= _GEN_94;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_2_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h2 == insertIdx) begin
        inflight_grant_2_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_2_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h2 == insertIdx) begin
        inflight_grant_2_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_2_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h2 == insertIdx) begin
        inflight_grant_2_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_3_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h3 == bufIdx) begin
        inflight_grant_3_valid <= 1'h0;
      end else begin
        inflight_grant_3_valid <= _GEN_95;
      end
    end else begin
      inflight_grant_3_valid <= _GEN_95;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_3_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h3 == insertIdx) begin
        inflight_grant_3_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_3_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h3 == insertIdx) begin
        inflight_grant_3_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_3_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h3 == insertIdx) begin
        inflight_grant_3_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_4_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h4 == bufIdx) begin
        inflight_grant_4_valid <= 1'h0;
      end else begin
        inflight_grant_4_valid <= _GEN_96;
      end
    end else begin
      inflight_grant_4_valid <= _GEN_96;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_4_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h4 == insertIdx) begin
        inflight_grant_4_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_4_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h4 == insertIdx) begin
        inflight_grant_4_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_4_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h4 == insertIdx) begin
        inflight_grant_4_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_5_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h5 == bufIdx) begin
        inflight_grant_5_valid <= 1'h0;
      end else begin
        inflight_grant_5_valid <= _GEN_97;
      end
    end else begin
      inflight_grant_5_valid <= _GEN_97;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_5_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h5 == insertIdx) begin
        inflight_grant_5_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_5_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h5 == insertIdx) begin
        inflight_grant_5_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_5_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h5 == insertIdx) begin
        inflight_grant_5_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_6_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h6 == bufIdx) begin
        inflight_grant_6_valid <= 1'h0;
      end else begin
        inflight_grant_6_valid <= _GEN_98;
      end
    end else begin
      inflight_grant_6_valid <= _GEN_98;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_6_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h6 == insertIdx) begin
        inflight_grant_6_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_6_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h6 == insertIdx) begin
        inflight_grant_6_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_6_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h6 == insertIdx) begin
        inflight_grant_6_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_7_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h7 == bufIdx) begin
        inflight_grant_7_valid <= 1'h0;
      end else begin
        inflight_grant_7_valid <= _GEN_99;
      end
    end else begin
      inflight_grant_7_valid <= _GEN_99;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_7_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h7 == insertIdx) begin
        inflight_grant_7_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_7_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h7 == insertIdx) begin
        inflight_grant_7_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_7_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h7 == insertIdx) begin
        inflight_grant_7_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_8_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h8 == bufIdx) begin
        inflight_grant_8_valid <= 1'h0;
      end else begin
        inflight_grant_8_valid <= _GEN_100;
      end
    end else begin
      inflight_grant_8_valid <= _GEN_100;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_8_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h8 == insertIdx) begin
        inflight_grant_8_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_8_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h8 == insertIdx) begin
        inflight_grant_8_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_8_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h8 == insertIdx) begin
        inflight_grant_8_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_9_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'h9 == bufIdx) begin
        inflight_grant_9_valid <= 1'h0;
      end else begin
        inflight_grant_9_valid <= _GEN_101;
      end
    end else begin
      inflight_grant_9_valid <= _GEN_101;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_9_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h9 == insertIdx) begin
        inflight_grant_9_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_9_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h9 == insertIdx) begin
        inflight_grant_9_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_9_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'h9 == insertIdx) begin
        inflight_grant_9_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_10_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'ha == bufIdx) begin
        inflight_grant_10_valid <= 1'h0;
      end else begin
        inflight_grant_10_valid <= _GEN_102;
      end
    end else begin
      inflight_grant_10_valid <= _GEN_102;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_10_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'ha == insertIdx) begin
        inflight_grant_10_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_10_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'ha == insertIdx) begin
        inflight_grant_10_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_10_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'ha == insertIdx) begin
        inflight_grant_10_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_11_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'hb == bufIdx) begin
        inflight_grant_11_valid <= 1'h0;
      end else begin
        inflight_grant_11_valid <= _GEN_103;
      end
    end else begin
      inflight_grant_11_valid <= _GEN_103;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_11_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hb == insertIdx) begin
        inflight_grant_11_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_11_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hb == insertIdx) begin
        inflight_grant_11_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_11_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hb == insertIdx) begin
        inflight_grant_11_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_12_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'hc == bufIdx) begin
        inflight_grant_12_valid <= 1'h0;
      end else begin
        inflight_grant_12_valid <= _GEN_104;
      end
    end else begin
      inflight_grant_12_valid <= _GEN_104;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_12_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hc == insertIdx) begin
        inflight_grant_12_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_12_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hc == insertIdx) begin
        inflight_grant_12_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_12_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hc == insertIdx) begin
        inflight_grant_12_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_13_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'hd == bufIdx) begin
        inflight_grant_13_valid <= 1'h0;
      end else begin
        inflight_grant_13_valid <= _GEN_105;
      end
    end else begin
      inflight_grant_13_valid <= _GEN_105;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_13_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hd == insertIdx) begin
        inflight_grant_13_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_13_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hd == insertIdx) begin
        inflight_grant_13_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_13_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hd == insertIdx) begin
        inflight_grant_13_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_14_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'he == bufIdx) begin
        inflight_grant_14_valid <= 1'h0;
      end else begin
        inflight_grant_14_valid <= _GEN_106;
      end
    end else begin
      inflight_grant_14_valid <= _GEN_106;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_14_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'he == insertIdx) begin
        inflight_grant_14_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_14_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'he == insertIdx) begin
        inflight_grant_14_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_14_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'he == insertIdx) begin
        inflight_grant_14_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 197:20]
      inflight_grant_15_valid <= 1'h0; // @[GrantBuffer.scala 202:{34,34}]
    end else if (_T_26) begin
      if (4'hf == bufIdx) begin
        inflight_grant_15_valid <= 1'h0;
      end else begin
        inflight_grant_15_valid <= _GEN_107;
      end
    end else begin
      inflight_grant_15_valid <= _GEN_107;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_15_bits_set <= 7'h0; // @[GrantBuffer.scala 182:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hf == insertIdx) begin
        inflight_grant_15_bits_set <= io_d_task_bits_task_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_15_bits_tag <= 22'h0; // @[GrantBuffer.scala 183:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hf == insertIdx) begin
        inflight_grant_15_bits_tag <= io_d_task_bits_task_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 177:62]
      inflight_grant_15_bits_sink <= 8'h0; // @[GrantBuffer.scala 184:{23,23} 174:31]
    end else if (_T_18 & io_d_task_bits_task_opcode[2:1] == 2'h2) begin // @[GrantBuffer.scala 174:31]
      if (4'hf == insertIdx) begin
        inflight_grant_15_bits_sink <= io_d_task_bits_task_mshrId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[GrantBuffer.scala 244:26]
      globalCounter <= 5'h0; // @[GrantBuffer.scala 246:19 247:21 249:21]
    end else if (_T_18) begin // @[GrantBuffer.scala 252:25]
      if (hasData) begin
        globalCounter <= _globalCounter_T_1;
      end
    end else if (globalCounter == 5'h0) begin
      globalCounter <= 5'h0;
    end else begin
      globalCounter <= _globalCounter_T_4;
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
  grantBufValid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  grantBuf_task_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  grantBuf_task_param = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  grantBuf_task_sourceId = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  grantBuf_task_mshrId = _RAND_4[7:0];
  _RAND_5 = {8{`RANDOM}};
  grantBuf_data_data = _RAND_5[255:0];
  _RAND_6 = {1{`RANDOM}};
  inflight_grant_0_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  inflight_grant_0_bits_set = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  inflight_grant_0_bits_tag = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  inflight_grant_0_bits_sink = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  inflight_grant_1_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  inflight_grant_1_bits_set = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  inflight_grant_1_bits_tag = _RAND_12[21:0];
  _RAND_13 = {1{`RANDOM}};
  inflight_grant_1_bits_sink = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  inflight_grant_2_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  inflight_grant_2_bits_set = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  inflight_grant_2_bits_tag = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  inflight_grant_2_bits_sink = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  inflight_grant_3_valid = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  inflight_grant_3_bits_set = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  inflight_grant_3_bits_tag = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  inflight_grant_3_bits_sink = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  inflight_grant_4_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  inflight_grant_4_bits_set = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  inflight_grant_4_bits_tag = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  inflight_grant_4_bits_sink = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  inflight_grant_5_valid = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  inflight_grant_5_bits_set = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  inflight_grant_5_bits_tag = _RAND_28[21:0];
  _RAND_29 = {1{`RANDOM}};
  inflight_grant_5_bits_sink = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  inflight_grant_6_valid = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  inflight_grant_6_bits_set = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  inflight_grant_6_bits_tag = _RAND_32[21:0];
  _RAND_33 = {1{`RANDOM}};
  inflight_grant_6_bits_sink = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  inflight_grant_7_valid = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  inflight_grant_7_bits_set = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  inflight_grant_7_bits_tag = _RAND_36[21:0];
  _RAND_37 = {1{`RANDOM}};
  inflight_grant_7_bits_sink = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  inflight_grant_8_valid = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  inflight_grant_8_bits_set = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  inflight_grant_8_bits_tag = _RAND_40[21:0];
  _RAND_41 = {1{`RANDOM}};
  inflight_grant_8_bits_sink = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  inflight_grant_9_valid = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  inflight_grant_9_bits_set = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  inflight_grant_9_bits_tag = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  inflight_grant_9_bits_sink = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  inflight_grant_10_valid = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  inflight_grant_10_bits_set = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  inflight_grant_10_bits_tag = _RAND_48[21:0];
  _RAND_49 = {1{`RANDOM}};
  inflight_grant_10_bits_sink = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  inflight_grant_11_valid = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  inflight_grant_11_bits_set = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  inflight_grant_11_bits_tag = _RAND_52[21:0];
  _RAND_53 = {1{`RANDOM}};
  inflight_grant_11_bits_sink = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  inflight_grant_12_valid = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  inflight_grant_12_bits_set = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  inflight_grant_12_bits_tag = _RAND_56[21:0];
  _RAND_57 = {1{`RANDOM}};
  inflight_grant_12_bits_sink = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  inflight_grant_13_valid = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  inflight_grant_13_bits_set = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  inflight_grant_13_bits_tag = _RAND_60[21:0];
  _RAND_61 = {1{`RANDOM}};
  inflight_grant_13_bits_sink = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  inflight_grant_14_valid = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  inflight_grant_14_bits_set = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  inflight_grant_14_bits_tag = _RAND_64[21:0];
  _RAND_65 = {1{`RANDOM}};
  inflight_grant_14_bits_sink = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  inflight_grant_15_valid = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  inflight_grant_15_bits_set = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  inflight_grant_15_bits_tag = _RAND_68[21:0];
  _RAND_69 = {1{`RANDOM}};
  inflight_grant_15_bits_sink = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  globalCounter = _RAND_70[4:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    grantBufValid = 1'h0;
  end
  if (reset) begin
    grantBuf_task_opcode = 3'h0;
  end
  if (reset) begin
    grantBuf_task_param = 3'h0;
  end
  if (reset) begin
    grantBuf_task_sourceId = 5'h0;
  end
  if (reset) begin
    grantBuf_task_mshrId = 8'h0;
  end
  if (reset) begin
    grantBuf_data_data = 256'h0;
  end
  if (reset) begin
    inflight_grant_0_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_0_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_0_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_0_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_1_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_1_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_1_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_1_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_2_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_2_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_2_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_2_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_3_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_3_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_3_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_3_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_4_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_4_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_4_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_4_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_5_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_5_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_5_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_5_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_6_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_6_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_6_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_6_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_7_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_7_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_7_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_7_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_8_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_8_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_8_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_8_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_9_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_9_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_9_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_9_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_10_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_10_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_10_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_10_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_11_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_11_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_11_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_11_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_12_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_12_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_12_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_12_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_13_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_13_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_13_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_13_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_14_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_14_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_14_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_14_bits_sink = 8'h0;
  end
  if (reset) begin
    inflight_grant_15_valid = 1'h0;
  end
  if (reset) begin
    inflight_grant_15_bits_set = 7'h0;
  end
  if (reset) begin
    inflight_grant_15_bits_tag = 22'h0;
  end
  if (reset) begin
    inflight_grant_15_bits_sink = 8'h0;
  end
  if (reset) begin
    globalCounter = 5'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

