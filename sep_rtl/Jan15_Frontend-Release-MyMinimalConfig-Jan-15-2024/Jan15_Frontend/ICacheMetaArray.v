module ICacheMetaArray(
  input         clock,
  input         reset,
  input         io_write_valid,
  input  [5:0]  io_write_bits_virIdx,
  input  [23:0] io_write_bits_phyTag,
  input  [3:0]  io_write_bits_waymask,
  input         io_write_bits_bankIdx,
  output        io_read_ready,
  input         io_read_valid,
  input         io_read_bits_isDoubleLine,
  input  [5:0]  io_read_bits_vSetIdx_0,
  input  [5:0]  io_read_bits_vSetIdx_1,
  output [23:0] io_readResp_metaData_0_0_tag,
  output [23:0] io_readResp_metaData_0_1_tag,
  output [23:0] io_readResp_metaData_0_2_tag,
  output [23:0] io_readResp_metaData_0_3_tag,
  output [23:0] io_readResp_metaData_1_0_tag,
  output [23:0] io_readResp_metaData_1_1_tag,
  output [23:0] io_readResp_metaData_1_2_tag,
  output [23:0] io_readResp_metaData_1_3_tag,
  output        io_readResp_errors_0_0,
  output        io_readResp_errors_0_1,
  output        io_readResp_errors_0_2,
  output        io_readResp_errors_0_3,
  output        io_readResp_errors_1_0,
  output        io_readResp_errors_1_1,
  output        io_readResp_errors_1_2,
  output        io_readResp_errors_1_3,
  output        io_readResp_entryValid_0_0,
  output        io_readResp_entryValid_0_1,
  output        io_readResp_entryValid_0_2,
  output        io_readResp_entryValid_0_3,
  output        io_readResp_entryValid_1_0,
  output        io_readResp_entryValid_1_1,
  output        io_readResp_entryValid_1_2,
  output        io_readResp_entryValid_1_3,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_opCode,
  input  [63:0] io_cacheOp_req_bits_write_tag_low,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_tag_low,
  input         io_fencei
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
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
`endif // RANDOMIZE_REG_INIT
  wire  tagArrays_0_clock; // @[ICache.scala 190:26]
  wire  tagArrays_0_reset; // @[ICache.scala 190:26]
  wire  tagArrays_0_io_rreq_ready; // @[ICache.scala 190:26]
  wire  tagArrays_0_io_rreq_valid; // @[ICache.scala 190:26]
  wire [4:0] tagArrays_0_io_rreq_bits_setIdx; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_rresp_data_0; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_rresp_data_1; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_rresp_data_2; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_rresp_data_3; // @[ICache.scala 190:26]
  wire  tagArrays_0_io_wreq_valid; // @[ICache.scala 190:26]
  wire [4:0] tagArrays_0_io_wreq_bits_setIdx; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_wreq_bits_data_0; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_wreq_bits_data_1; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_wreq_bits_data_2; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_0_io_wreq_bits_data_3; // @[ICache.scala 190:26]
  wire [3:0] tagArrays_0_io_wreq_bits_waymask; // @[ICache.scala 190:26]
  wire  tagArrays_1_clock; // @[ICache.scala 190:26]
  wire  tagArrays_1_reset; // @[ICache.scala 190:26]
  wire  tagArrays_1_io_rreq_ready; // @[ICache.scala 190:26]
  wire  tagArrays_1_io_rreq_valid; // @[ICache.scala 190:26]
  wire [4:0] tagArrays_1_io_rreq_bits_setIdx; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_rresp_data_0; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_rresp_data_1; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_rresp_data_2; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_rresp_data_3; // @[ICache.scala 190:26]
  wire  tagArrays_1_io_wreq_valid; // @[ICache.scala 190:26]
  wire [4:0] tagArrays_1_io_wreq_bits_setIdx; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_wreq_bits_data_0; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_wreq_bits_data_1; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_wreq_bits_data_2; // @[ICache.scala 190:26]
  wire [24:0] tagArrays_1_io_wreq_bits_data_3; // @[ICache.scala 190:26]
  wire [3:0] tagArrays_1_io_wreq_bits_waymask; // @[ICache.scala 190:26]
  wire  _io_read_ready_T = ~io_write_valid; // @[ICache.scala 168:20]
  wire  port_0_read_0 = io_read_valid & ~io_read_bits_vSetIdx_0[0]; // @[ICache.scala 170:38]
  wire  port_0_read_1 = io_read_valid & io_read_bits_vSetIdx_0[0]; // @[ICache.scala 171:38]
  wire  port_1_read_1 = io_read_valid & io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 172:69]
  wire  port_1_read_0 = io_read_valid & ~io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 173:69]
  wire  _port_0_read_0_reg_T = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg  port_0_read_0_reg; // @[Reg.scala 16:16]
  reg  port_1_read_0_reg; // @[Reg.scala 16:16]
  wire [5:0] bank_0_idx = port_0_read_0 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 180:23]
  wire [5:0] bank_1_idx = port_0_read_1 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 181:23]
  wire  write_bank_0 = io_write_valid & ~io_write_bits_bankIdx; // @[ICache.scala 184:37]
  wire  write_bank_1 = io_write_valid & io_write_bits_bankIdx; // @[ICache.scala 185:37]
  reg [5:0] read_set_idx_next_0; // @[Reg.scala 16:16]
  reg [5:0] read_set_idx_next_1; // @[Reg.scala 16:16]
  reg [63:0] valid_array_0; // @[ICache.scala 217:28]
  reg [63:0] valid_array_1; // @[ICache.scala 217:28]
  reg [63:0] valid_array_2; // @[ICache.scala 217:28]
  reg [63:0] valid_array_3; // @[ICache.scala 217:28]
  wire [63:0] _valid_metas_0_0_T = valid_array_0 >> read_set_idx_next_0; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_0_1_T = valid_array_1 >> read_set_idx_next_0; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_0_2_T = valid_array_2 >> read_set_idx_next_0; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_0_3_T = valid_array_3 >> read_set_idx_next_0; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_1_0_T = valid_array_0 >> read_set_idx_next_1; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_1_1_T = valid_array_1 >> read_set_idx_next_1; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_1_2_T = valid_array_2 >> read_set_idx_next_1; // @[ICache.scala 222:46]
  wire [63:0] _valid_metas_1_3_T = valid_array_3 >> read_set_idx_next_1; // @[ICache.scala 222:46]
  wire [99:0] _read_meta_bits_T = {tagArrays_0_io_rresp_data_3,tagArrays_0_io_rresp_data_2,
    tagArrays_0_io_rresp_data_1,tagArrays_0_io_rresp_data_0}; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits__0 = _read_meta_bits_T[24:0]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits__1 = _read_meta_bits_T[49:25]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits__2 = _read_meta_bits_T[74:50]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits__3 = _read_meta_bits_T[99:75]; // @[ICache.scala 231:53]
  wire [23:0] uncorrected = read_meta_bits__0[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_1 = read_meta_bits__1[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_2 = read_meta_bits__2[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_3 = read_meta_bits__3[23:0]; // @[ECC.scala 84:24]
  wire [95:0] _T_4 = {uncorrected_3,uncorrected_2,uncorrected_1,uncorrected}; // @[ICache.scala 235:50]
  wire [23:0] read_metas_0_0_tag = _T_4[23:0]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_0_1_tag = _T_4[47:24]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_0_2_tag = _T_4[71:48]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_0_3_tag = _T_4[95:72]; // @[ICache.scala 235:50]
  reg  io_readResp_errors_0_0_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_0_0_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_0_0_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_0_1_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_0_1_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_0_1_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_0_2_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_0_2_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_0_2_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_0_3_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_0_3_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_0_3_REG_2; // @[ICache.scala 236:97]
  wire [99:0] _read_meta_bits_T_5 = {tagArrays_1_io_rresp_data_3,tagArrays_1_io_rresp_data_2,
    tagArrays_1_io_rresp_data_1,tagArrays_1_io_rresp_data_0}; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits_1_0 = _read_meta_bits_T_5[24:0]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits_1_1 = _read_meta_bits_T_5[49:25]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits_1_2 = _read_meta_bits_T_5[74:50]; // @[ICache.scala 231:53]
  wire [24:0] read_meta_bits_1_3 = _read_meta_bits_T_5[99:75]; // @[ICache.scala 231:53]
  wire [23:0] uncorrected_4 = read_meta_bits_1_0[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_5 = read_meta_bits_1_1[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_6 = read_meta_bits_1_2[23:0]; // @[ECC.scala 84:24]
  wire [23:0] uncorrected_7 = read_meta_bits_1_3[23:0]; // @[ECC.scala 84:24]
  wire [95:0] _T_9 = {uncorrected_7,uncorrected_6,uncorrected_5,uncorrected_4}; // @[ICache.scala 235:50]
  wire [23:0] read_metas_1_0_tag = _T_9[23:0]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_1_1_tag = _T_9[47:24]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_1_2_tag = _T_9[71:48]; // @[ICache.scala 235:50]
  wire [23:0] read_metas_1_3_tag = _T_9[95:72]; // @[ICache.scala 235:50]
  reg  io_readResp_errors_1_0_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_1_0_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_1_0_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_1_1_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_1_1_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_1_1_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_1_2_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_1_2_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_1_2_REG_2; // @[ICache.scala 236:97]
  reg  io_readResp_errors_1_3_REG; // @[ICache.scala 236:66]
  reg  io_readResp_errors_1_3_REG_1; // @[ICache.scala 236:105]
  reg  io_readResp_errors_1_3_REG_2; // @[ICache.scala 236:97]
  wire  _write_meta_bits_T = ^io_write_bits_phyTag; // @[ECC.scala 81:55]
  wire [24:0] write_meta_bits = {_write_meta_bits_T,io_write_bits_phyTag}; // @[Cat.scala 31:58]
  wire [1:0] way_num_hi = io_write_bits_waymask[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] way_num_lo = io_write_bits_waymask[1:0]; // @[OneHot.scala 31:18]
  wire  _way_num_T = |way_num_hi; // @[OneHot.scala 32:14]
  wire [1:0] _way_num_T_1 = way_num_hi | way_num_lo; // @[OneHot.scala 32:28]
  wire [1:0] way_num = {_way_num_T,_way_num_T_1[1]}; // @[Cat.scala 31:58]
  wire [63:0] _valid_array_T = 64'h1 << io_write_bits_virIdx; // @[ICache.scala 246:56]
  wire [63:0] _GEN_7 = 2'h1 == way_num ? valid_array_1 : valid_array_0; // @[ICache.scala 246:{56,56}]
  wire [63:0] _GEN_8 = 2'h2 == way_num ? valid_array_2 : _GEN_7; // @[ICache.scala 246:{56,56}]
  wire [63:0] _GEN_9 = 2'h3 == way_num ? valid_array_3 : _GEN_8; // @[ICache.scala 246:{56,56}]
  wire [63:0] _valid_array_T_1 = _GEN_9 | _valid_array_T; // @[ICache.scala 246:56]
  wire  _T_14 = io_cacheOp_req_bits_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire  _T_15 = io_cacheOp_req_bits_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _T_16 = _T_14 | _T_15; // @[ICache.scala 272:61]
  wire  _GEN_34 = _T_16 | (port_0_read_0 | port_1_read_0); // @[ICache.scala 201:31 274:6 276:37]
  wire [63:0] _GEN_35 = _T_16 ? io_cacheOp_req_bits_index : {{59'd0}, bank_0_idx[5:1]}; // @[ICache.scala 274:6 SRAMTemplate.scala 42:{17,17}]
  wire  _GEN_36 = _T_16 | (port_0_read_1 | port_1_read_1); // @[ICache.scala 207:31 274:6 276:37]
  wire [63:0] _GEN_37 = _T_16 ? io_cacheOp_req_bits_index : {{59'd0}, bank_1_idx[5:1]}; // @[ICache.scala 274:6 SRAMTemplate.scala 42:{17,17}]
  wire  _T_17 = io_cacheOp_req_bits_opCode == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [31:0] _T_19 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_39 = _T_17 | write_bank_0; // @[ICache.scala 203:31 281:65 283:37]
  wire [63:0] _GEN_40 = _T_17 ? io_cacheOp_req_bits_index : {{59'd0}, io_write_bits_virIdx[5:1]}; // @[ICache.scala 281:65 SRAMTemplate.scala 42:{17,17}]
  wire [63:0] _GEN_41 = _T_17 ? io_cacheOp_req_bits_write_tag_low : {{39'd0}, write_meta_bits}; // @[ICache.scala 281:65 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_45 = _T_17 ? _T_19 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 281:65 SRAMTemplate.scala 54:{24,24}]
  wire  _GEN_46 = _T_17 | write_bank_1; // @[ICache.scala 209:31 281:65 283:37]
  wire  _GEN_53 = _T_17 | _T_16; // @[ICache.scala 281:65 290:25]
  wire [63:0] _GEN_55 = io_cacheOp_req_valid ? _GEN_35 : {{59'd0}, bank_0_idx[5:1]}; // @[ICache.scala 270:29 SRAMTemplate.scala 42:17]
  wire [63:0] _GEN_57 = io_cacheOp_req_valid ? _GEN_37 : {{59'd0}, bank_1_idx[5:1]}; // @[ICache.scala 270:29 SRAMTemplate.scala 42:17]
  wire  cacheOpShouldResp = io_cacheOp_req_valid & _GEN_53; // @[ICache.scala 270:29]
  wire [63:0] _GEN_60 = io_cacheOp_req_valid ? _GEN_40 : {{59'd0}, io_write_bits_virIdx[5:1]}; // @[ICache.scala 270:29 SRAMTemplate.scala 42:17]
  wire [63:0] _GEN_61 = io_cacheOp_req_valid ? _GEN_41 : {{39'd0}, write_meta_bits}; // @[ICache.scala 270:29 SRAMTemplate.scala 53:15]
  wire [31:0] _GEN_65 = io_cacheOp_req_valid ? _GEN_45 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 270:29 SRAMTemplate.scala 54:24]
  reg  io_cacheOp_resp_valid_REG; // @[ICache.scala 303:35]
  wire [23:0] _GEN_74 = 2'h1 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[47:24] : _read_meta_bits_T[23:0]; // @[ICache.scala 304:{43,43}]
  wire [23:0] _GEN_75 = 2'h2 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[71:48] : _GEN_74; // @[ICache.scala 304:{43,43}]
  wire [23:0] _GEN_76 = 2'h3 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[95:72] : _GEN_75; // @[ICache.scala 304:{43,43}]
  wire [23:0] _io_cacheOp_resp_bits_read_tag_low_T_6 = io_cacheOp_resp_valid ? _GEN_76 : 24'h0; // @[ICache.scala 304:43]
  SRAMTemplate tagArrays_0 ( // @[ICache.scala 190:26]
    .clock(tagArrays_0_clock),
    .reset(tagArrays_0_reset),
    .io_rreq_ready(tagArrays_0_io_rreq_ready),
    .io_rreq_valid(tagArrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArrays_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArrays_0_io_rresp_data_0),
    .io_rresp_data_1(tagArrays_0_io_rresp_data_1),
    .io_rresp_data_2(tagArrays_0_io_rresp_data_2),
    .io_rresp_data_3(tagArrays_0_io_rresp_data_3),
    .io_wreq_valid(tagArrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tagArrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate tagArrays_1 ( // @[ICache.scala 190:26]
    .clock(tagArrays_1_clock),
    .reset(tagArrays_1_reset),
    .io_rreq_ready(tagArrays_1_io_rreq_ready),
    .io_rreq_valid(tagArrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArrays_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArrays_1_io_rresp_data_0),
    .io_rresp_data_1(tagArrays_1_io_rresp_data_1),
    .io_rresp_data_2(tagArrays_1_io_rresp_data_2),
    .io_rresp_data_3(tagArrays_1_io_rresp_data_3),
    .io_wreq_valid(tagArrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tagArrays_1_io_wreq_bits_waymask)
  );
  assign io_read_ready = _io_read_ready_T & ~io_fencei & (tagArrays_0_io_rreq_ready & tagArrays_1_io_rreq_ready); // @[ICache.scala 226:50]
  assign io_readResp_metaData_0_0_tag = port_0_read_0_reg ? read_metas_0_0_tag : read_metas_1_0_tag; // @[ICache.scala 252:26 253:29]
  assign io_readResp_metaData_0_1_tag = port_0_read_0_reg ? read_metas_0_1_tag : read_metas_1_1_tag; // @[ICache.scala 252:26 253:29]
  assign io_readResp_metaData_0_2_tag = port_0_read_0_reg ? read_metas_0_2_tag : read_metas_1_2_tag; // @[ICache.scala 252:26 253:29]
  assign io_readResp_metaData_0_3_tag = port_0_read_0_reg ? read_metas_0_3_tag : read_metas_1_3_tag; // @[ICache.scala 252:26 253:29]
  assign io_readResp_metaData_1_0_tag = port_1_read_0_reg ? read_metas_0_0_tag : read_metas_1_0_tag; // @[ICache.scala 258:26 259:29]
  assign io_readResp_metaData_1_1_tag = port_1_read_0_reg ? read_metas_0_1_tag : read_metas_1_1_tag; // @[ICache.scala 258:26 259:29]
  assign io_readResp_metaData_1_2_tag = port_1_read_0_reg ? read_metas_0_2_tag : read_metas_1_2_tag; // @[ICache.scala 258:26 259:29]
  assign io_readResp_metaData_1_3_tag = port_1_read_0_reg ? read_metas_0_3_tag : read_metas_1_3_tag; // @[ICache.scala 258:26 259:29]
  assign io_readResp_errors_0_0 = io_readResp_errors_0_0_REG & io_readResp_errors_0_0_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_0_1 = io_readResp_errors_0_1_REG & io_readResp_errors_0_1_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_0_2 = io_readResp_errors_0_2_REG & io_readResp_errors_0_2_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_0_3 = io_readResp_errors_0_3_REG & io_readResp_errors_0_3_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_1_0 = io_readResp_errors_1_0_REG & io_readResp_errors_1_0_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_1_1 = io_readResp_errors_1_1_REG & io_readResp_errors_1_1_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_1_2 = io_readResp_errors_1_2_REG & io_readResp_errors_1_2_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_errors_1_3 = io_readResp_errors_1_3_REG & io_readResp_errors_1_3_REG_2; // @[ICache.scala 236:87]
  assign io_readResp_entryValid_0_0 = _valid_metas_0_0_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_0_1 = _valid_metas_0_1_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_0_2 = _valid_metas_0_2_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_0_3 = _valid_metas_0_3_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_1_0 = _valid_metas_1_0_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_1_1 = _valid_metas_1_1_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_1_2 = _valid_metas_1_2_T[0]; // @[ICache.scala 222:46]
  assign io_readResp_entryValid_1_3 = _valid_metas_1_3_T[0]; // @[ICache.scala 222:46]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[ICache.scala 303:25]
  assign io_cacheOp_resp_bits_read_tag_low = {{40'd0}, _io_cacheOp_resp_bits_read_tag_low_T_6}; // @[ICache.scala 304:37]
  assign tagArrays_0_clock = clock;
  assign tagArrays_0_reset = reset;
  assign tagArrays_0_io_rreq_valid = io_cacheOp_req_valid ? _GEN_34 : port_0_read_0 | port_1_read_0; // @[ICache.scala 270:29 201:31]
  assign tagArrays_0_io_rreq_bits_setIdx = _GEN_55[4:0];
  assign tagArrays_0_io_wreq_valid = io_cacheOp_req_valid ? _GEN_39 : write_bank_0; // @[ICache.scala 270:29 203:31]
  assign tagArrays_0_io_wreq_bits_setIdx = _GEN_60[4:0];
  assign tagArrays_0_io_wreq_bits_data_0 = _GEN_61[24:0];
  assign tagArrays_0_io_wreq_bits_data_1 = _GEN_61[24:0];
  assign tagArrays_0_io_wreq_bits_data_2 = _GEN_61[24:0];
  assign tagArrays_0_io_wreq_bits_data_3 = _GEN_61[24:0];
  assign tagArrays_0_io_wreq_bits_waymask = _GEN_65[3:0];
  assign tagArrays_1_clock = clock;
  assign tagArrays_1_reset = reset;
  assign tagArrays_1_io_rreq_valid = io_cacheOp_req_valid ? _GEN_36 : port_0_read_1 | port_1_read_1; // @[ICache.scala 270:29 207:31]
  assign tagArrays_1_io_rreq_bits_setIdx = _GEN_57[4:0];
  assign tagArrays_1_io_wreq_valid = io_cacheOp_req_valid ? _GEN_46 : write_bank_1; // @[ICache.scala 270:29 209:31]
  assign tagArrays_1_io_wreq_bits_setIdx = _GEN_60[4:0];
  assign tagArrays_1_io_wreq_bits_data_0 = _GEN_61[24:0];
  assign tagArrays_1_io_wreq_bits_data_1 = _GEN_61[24:0];
  assign tagArrays_1_io_wreq_bits_data_2 = _GEN_61[24:0];
  assign tagArrays_1_io_wreq_bits_data_3 = _GEN_61[24:0];
  assign tagArrays_1_io_wreq_bits_waymask = _GEN_65[3:0];
  always @(posedge clock) begin
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      port_0_read_0_reg <= port_0_read_0; // @[Reg.scala 17:22]
    end
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      port_1_read_0_reg <= port_1_read_0; // @[Reg.scala 17:22]
    end
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      read_set_idx_next_0 <= io_read_bits_vSetIdx_0; // @[Reg.scala 17:22]
    end
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      read_set_idx_next_1 <= io_read_bits_vSetIdx_1; // @[Reg.scala 17:22]
    end
    io_readResp_errors_0_0_REG <= ^read_meta_bits__0; // @[ECC.scala 87:27]
    io_readResp_errors_0_0_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_0_REG_2 <= io_readResp_errors_0_0_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_0_1_REG <= ^read_meta_bits__1; // @[ECC.scala 87:27]
    io_readResp_errors_0_1_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_1_REG_2 <= io_readResp_errors_0_1_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_0_2_REG <= ^read_meta_bits__2; // @[ECC.scala 87:27]
    io_readResp_errors_0_2_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_2_REG_2 <= io_readResp_errors_0_2_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_0_3_REG <= ^read_meta_bits__3; // @[ECC.scala 87:27]
    io_readResp_errors_0_3_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_3_REG_2 <= io_readResp_errors_0_3_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_1_0_REG <= ^read_meta_bits_1_0; // @[ECC.scala 87:27]
    io_readResp_errors_1_0_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_0_REG_2 <= io_readResp_errors_1_0_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_1_1_REG <= ^read_meta_bits_1_1; // @[ECC.scala 87:27]
    io_readResp_errors_1_1_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_1_REG_2 <= io_readResp_errors_1_1_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_1_2_REG <= ^read_meta_bits_1_2; // @[ECC.scala 87:27]
    io_readResp_errors_1_2_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_2_REG_2 <= io_readResp_errors_1_2_REG_1; // @[ICache.scala 236:97]
    io_readResp_errors_1_3_REG <= ^read_meta_bits_1_3; // @[ECC.scala 87:27]
    io_readResp_errors_1_3_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_3_REG_2 <= io_readResp_errors_1_3_REG_1; // @[ICache.scala 236:97]
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[ICache.scala 303:57]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICache.scala 312:20]
      valid_array_0 <= 64'h0; // @[ICache.scala 314:24]
    end else if (io_fencei) begin // @[ICache.scala 245:25]
      valid_array_0 <= 64'h0; // @[ICache.scala 246:{26,26} 217:28]
    end else if (io_write_valid) begin // @[ICache.scala 217:28]
      if (2'h0 == way_num) begin
        valid_array_0 <= _valid_array_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICache.scala 312:20]
      valid_array_1 <= 64'h0; // @[ICache.scala 314:24]
    end else if (io_fencei) begin // @[ICache.scala 245:25]
      valid_array_1 <= 64'h0; // @[ICache.scala 246:{26,26} 217:28]
    end else if (io_write_valid) begin // @[ICache.scala 217:28]
      if (2'h1 == way_num) begin
        valid_array_1 <= _valid_array_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICache.scala 312:20]
      valid_array_2 <= 64'h0; // @[ICache.scala 314:24]
    end else if (io_fencei) begin // @[ICache.scala 245:25]
      valid_array_2 <= 64'h0; // @[ICache.scala 246:{26,26} 217:28]
    end else if (io_write_valid) begin // @[ICache.scala 217:28]
      if (2'h2 == way_num) begin
        valid_array_2 <= _valid_array_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICache.scala 312:20]
      valid_array_3 <= 64'h0; // @[ICache.scala 314:24]
    end else if (io_fencei) begin // @[ICache.scala 245:25]
      valid_array_3 <= 64'h0; // @[ICache.scala 246:{26,26} 217:28]
    end else if (io_write_valid) begin // @[ICache.scala 217:28]
      if (2'h3 == way_num) begin
        valid_array_3 <= _valid_array_T_1;
      end
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
  port_0_read_0_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  port_1_read_0_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  read_set_idx_next_0 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  read_set_idx_next_1 = _RAND_3[5:0];
  _RAND_4 = {2{`RANDOM}};
  valid_array_0 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  valid_array_1 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  valid_array_2 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  valid_array_3 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG_2 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG_2 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valid_array_0 = 64'h0;
  end
  if (reset) begin
    valid_array_1 = 64'h0;
  end
  if (reset) begin
    valid_array_2 = 64'h0;
  end
  if (reset) begin
    valid_array_3 = 64'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

