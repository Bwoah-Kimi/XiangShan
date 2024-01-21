module ICacheBankedMetaArray(
  input         clock,
  input         reset,
  input  [5:0]  io_read_0_bits_idx,
  output        io_write_ready,
  input         io_write_valid,
  input  [5:0]  io_write_bits_virIdx,
  input  [23:0] io_write_bits_phyTag,
  input  [3:0]  io_write_bits_waymask,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_opCode,
  input  [63:0] io_cacheOp_req_bits_write_tag_low
);
  wire  tag_arrays_0_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_0_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_0_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_0_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_0_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_0_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_0_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_0_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_0_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_0_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_0_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_1_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_1_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_1_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_1_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_1_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_1_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_1_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_1_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_1_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_1_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_1_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_2_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_2_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_2_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_2_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_2_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_2_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_2_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_2_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_2_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_2_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_2_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_3_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_3_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_3_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_3_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_3_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_3_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_3_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_3_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_3_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_3_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_3_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_4_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_4_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_4_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_4_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_4_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_4_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_4_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_4_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_4_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_4_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_4_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_5_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_5_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_5_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_5_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_5_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_5_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_5_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_5_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_5_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_5_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_5_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_6_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_6_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_6_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_6_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_6_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_6_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_6_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_6_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_6_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_6_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_6_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_7_clock; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_7_reset; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_7_io_rreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_7_io_rreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire  tag_arrays_7_io_wreq_valid; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] tag_arrays_7_io_wreq_bits_setIdx; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_7_io_wreq_bits_data_0; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_7_io_wreq_bits_data_1; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_7_io_wreq_bits_data_2; // @[ICacheBankedArray.scala 85:27]
  wire [24:0] tag_arrays_7_io_wreq_bits_data_3; // @[ICacheBankedArray.scala 85:27]
  wire [3:0] tag_arrays_7_io_wreq_bits_waymask; // @[ICacheBankedArray.scala 85:27]
  wire [2:0] write_set_addr = io_write_bits_virIdx[5:3]; // @[ICacheBankedArray.scala 74:44]
  wire [2:0] write_bank_addr = io_write_bits_virIdx[2:0]; // @[ICacheBankedArray.scala 75:45]
  wire  _write_meta_bits_T = ^io_write_bits_phyTag; // @[ECC.scala 81:55]
  wire [24:0] write_meta_bits = {_write_meta_bits_T,io_write_bits_phyTag}; // @[Cat.scala 31:58]
  wire [2:0] set_addrs_0 = io_read_0_bits_idx[5:3]; // @[ICacheBankedArray.scala 50:8]
  wire  _T_44 = io_cacheOp_req_bits_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire  _T_45 = io_cacheOp_req_bits_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _T_46 = _T_44 | _T_45; // @[ICacheBankedArray.scala 161:61]
  wire [63:0] _GEN_77 = _T_46 ? io_cacheOp_req_bits_index : {{61'd0}, set_addrs_0}; // @[ICacheBankedArray.scala 163:6 SRAMTemplate.scala 42:{17,17}]
  wire  _T_47 = io_cacheOp_req_bits_opCode == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [31:0] _T_49 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_86 = _T_47 | io_write_valid & write_bank_addr == 3'h0; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire [63:0] _GEN_87 = _T_47 ? io_cacheOp_req_bits_index : {{61'd0}, write_set_addr}; // @[ICacheBankedArray.scala 170:65 SRAMTemplate.scala 42:{17,17}]
  wire [63:0] _GEN_88 = _T_47 ? io_cacheOp_req_bits_write_tag_low : {{39'd0}, write_meta_bits}; // @[ICacheBankedArray.scala 170:65 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_92 = _T_47 ? _T_49 : {{28'd0}, io_write_bits_waymask}; // @[ICacheBankedArray.scala 170:65 SRAMTemplate.scala 54:{24,24}]
  wire  _GEN_93 = _T_47 | io_write_valid & write_bank_addr == 3'h1; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_99 = _T_47 | io_write_valid & write_bank_addr == 3'h2; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_105 = _T_47 | io_write_valid & write_bank_addr == 3'h3; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_111 = _T_47 | io_write_valid & write_bank_addr == 3'h4; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_117 = _T_47 | io_write_valid & write_bank_addr == 3'h5; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_123 = _T_47 | io_write_valid & write_bank_addr == 3'h6; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire  _GEN_129 = _T_47 | io_write_valid & write_bank_addr == 3'h7; // @[ICacheBankedArray.scala 144:29 170:65 172:38]
  wire [63:0] _GEN_137 = io_cacheOp_req_valid ? _GEN_77 : {{61'd0}, set_addrs_0}; // @[ICacheBankedArray.scala 159:29 SRAMTemplate.scala 42:17]
  wire [63:0] _GEN_147 = io_cacheOp_req_valid ? _GEN_87 : {{61'd0}, write_set_addr}; // @[ICacheBankedArray.scala 159:29 SRAMTemplate.scala 42:17]
  wire [63:0] _GEN_148 = io_cacheOp_req_valid ? _GEN_88 : {{39'd0}, write_meta_bits}; // @[ICacheBankedArray.scala 159:29 SRAMTemplate.scala 53:15]
  wire [31:0] _GEN_152 = io_cacheOp_req_valid ? _GEN_92 : {{28'd0}, io_write_bits_waymask}; // @[ICacheBankedArray.scala 159:29 SRAMTemplate.scala 54:24]
  SRAMTemplate_8 tag_arrays_0 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_0_clock),
    .reset(tag_arrays_0_reset),
    .io_rreq_valid(tag_arrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_0_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_1 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_1_clock),
    .reset(tag_arrays_1_reset),
    .io_rreq_valid(tag_arrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_1_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_1_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_2 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_2_clock),
    .reset(tag_arrays_2_reset),
    .io_rreq_valid(tag_arrays_2_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_2_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_2_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_2_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_2_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_2_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_2_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_2_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_3 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_3_clock),
    .reset(tag_arrays_3_reset),
    .io_rreq_valid(tag_arrays_3_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_3_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_3_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_3_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_3_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_3_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_3_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_3_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_4 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_4_clock),
    .reset(tag_arrays_4_reset),
    .io_rreq_valid(tag_arrays_4_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_4_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_4_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_4_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_4_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_4_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_4_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_4_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_5 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_5_clock),
    .reset(tag_arrays_5_reset),
    .io_rreq_valid(tag_arrays_5_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_5_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_5_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_5_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_5_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_5_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_5_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_5_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_6 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_6_clock),
    .reset(tag_arrays_6_reset),
    .io_rreq_valid(tag_arrays_6_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_6_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_6_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_6_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_6_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_6_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_6_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_6_io_wreq_bits_waymask)
  );
  SRAMTemplate_8 tag_arrays_7 ( // @[ICacheBankedArray.scala 85:27]
    .clock(tag_arrays_7_clock),
    .reset(tag_arrays_7_reset),
    .io_rreq_valid(tag_arrays_7_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_arrays_7_io_rreq_bits_setIdx),
    .io_wreq_valid(tag_arrays_7_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_arrays_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_arrays_7_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_arrays_7_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_arrays_7_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_arrays_7_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_arrays_7_io_wreq_bits_waymask)
  );
  assign io_write_ready = ~io_cacheOp_req_valid; // @[ICacheBankedArray.scala 151:21]
  assign tag_arrays_0_clock = clock;
  assign tag_arrays_0_reset = reset;
  assign tag_arrays_0_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_0_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_0_io_wreq_valid = io_cacheOp_req_valid ? _GEN_86 : io_write_valid & write_bank_addr == 3'h0; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_0_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_0_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_0_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_0_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_0_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_0_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_1_clock = clock;
  assign tag_arrays_1_reset = reset;
  assign tag_arrays_1_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_1_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_1_io_wreq_valid = io_cacheOp_req_valid ? _GEN_93 : io_write_valid & write_bank_addr == 3'h1; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_1_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_1_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_1_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_1_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_1_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_1_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_2_clock = clock;
  assign tag_arrays_2_reset = reset;
  assign tag_arrays_2_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_2_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_2_io_wreq_valid = io_cacheOp_req_valid ? _GEN_99 : io_write_valid & write_bank_addr == 3'h2; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_2_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_2_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_2_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_2_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_2_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_2_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_3_clock = clock;
  assign tag_arrays_3_reset = reset;
  assign tag_arrays_3_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_3_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_3_io_wreq_valid = io_cacheOp_req_valid ? _GEN_105 : io_write_valid & write_bank_addr == 3'h3; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_3_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_3_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_3_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_3_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_3_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_3_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_4_clock = clock;
  assign tag_arrays_4_reset = reset;
  assign tag_arrays_4_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_4_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_4_io_wreq_valid = io_cacheOp_req_valid ? _GEN_111 : io_write_valid & write_bank_addr == 3'h4; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_4_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_4_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_4_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_4_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_4_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_4_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_5_clock = clock;
  assign tag_arrays_5_reset = reset;
  assign tag_arrays_5_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_5_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_5_io_wreq_valid = io_cacheOp_req_valid ? _GEN_117 : io_write_valid & write_bank_addr == 3'h5; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_5_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_5_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_5_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_5_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_5_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_5_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_6_clock = clock;
  assign tag_arrays_6_reset = reset;
  assign tag_arrays_6_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_6_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_6_io_wreq_valid = io_cacheOp_req_valid ? _GEN_123 : io_write_valid & write_bank_addr == 3'h6; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_6_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_6_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_6_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_6_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_6_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_6_io_wreq_bits_waymask = _GEN_152[3:0];
  assign tag_arrays_7_clock = clock;
  assign tag_arrays_7_reset = reset;
  assign tag_arrays_7_io_rreq_valid = io_cacheOp_req_valid & _T_46; // @[ICacheBankedArray.scala 117:29 159:29]
  assign tag_arrays_7_io_rreq_bits_setIdx = _GEN_137[2:0];
  assign tag_arrays_7_io_wreq_valid = io_cacheOp_req_valid ? _GEN_129 : io_write_valid & write_bank_addr == 3'h7; // @[ICacheBankedArray.scala 144:29 159:29]
  assign tag_arrays_7_io_wreq_bits_setIdx = _GEN_147[2:0];
  assign tag_arrays_7_io_wreq_bits_data_0 = _GEN_148[24:0];
  assign tag_arrays_7_io_wreq_bits_data_1 = _GEN_148[24:0];
  assign tag_arrays_7_io_wreq_bits_data_2 = _GEN_148[24:0];
  assign tag_arrays_7_io_wreq_bits_data_3 = _GEN_148[24:0];
  assign tag_arrays_7_io_wreq_bits_waymask = _GEN_152[3:0];
endmodule

