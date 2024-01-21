module SCTable_3(
  input         clock,
  input         reset,
  input         io_req_valid,
  input  [38:0] io_req_bits_pc,
  input  [7:0]  io_req_bits_folded_hist_hist_0_folded_hist,
  output [5:0]  io_resp_ctrs_0_0,
  output [5:0]  io_resp_ctrs_0_1,
  output [5:0]  io_resp_ctrs_1_0,
  output [5:0]  io_resp_ctrs_1_1,
  input  [38:0] io_update_pc,
  input  [7:0]  io_update_folded_hist_hist_0_folded_hist,
  input         io_update_mask_0,
  input         io_update_mask_1,
  input  [5:0]  io_update_oldCtrs_0,
  input  [5:0]  io_update_oldCtrs_1,
  input         io_update_tagePreds_0,
  input         io_update_tagePreds_1,
  input         io_update_takens_0,
  input         io_update_takens_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  table__clock; // @[SC.scala 73:21]
  wire  table__reset; // @[SC.scala 73:21]
  wire  table__io_rreq_valid; // @[SC.scala 73:21]
  wire [7:0] table__io_rreq_bits_setIdx; // @[SC.scala 73:21]
  wire [5:0] table__io_rresp_data_0; // @[SC.scala 73:21]
  wire [5:0] table__io_rresp_data_1; // @[SC.scala 73:21]
  wire [5:0] table__io_rresp_data_2; // @[SC.scala 73:21]
  wire [5:0] table__io_rresp_data_3; // @[SC.scala 73:21]
  wire  table__io_wreq_valid; // @[SC.scala 73:21]
  wire [7:0] table__io_wreq_bits_setIdx; // @[SC.scala 73:21]
  wire [5:0] table__io_wreq_bits_data_0; // @[SC.scala 73:21]
  wire [5:0] table__io_wreq_bits_data_1; // @[SC.scala 73:21]
  wire [5:0] table__io_wreq_bits_data_2; // @[SC.scala 73:21]
  wire [5:0] table__io_wreq_bits_data_3; // @[SC.scala 73:21]
  wire [3:0] table__io_wreq_bits_waymask; // @[SC.scala 73:21]
  wire  wrbypasses_0_clock; // @[SC.scala 141:42]
  wire  wrbypasses_0_reset; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_wen; // @[SC.scala 141:42]
  wire [7:0] wrbypasses_0_io_write_idx; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_0_io_write_data_0; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_0_io_write_data_1; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_write_way_mask_0; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_write_way_mask_1; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_hit; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_hit_data_0_valid; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_0_io_hit_data_0_bits; // @[SC.scala 141:42]
  wire  wrbypasses_0_io_hit_data_1_valid; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_0_io_hit_data_1_bits; // @[SC.scala 141:42]
  wire  wrbypasses_1_clock; // @[SC.scala 141:42]
  wire  wrbypasses_1_reset; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_wen; // @[SC.scala 141:42]
  wire [7:0] wrbypasses_1_io_write_idx; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_1_io_write_data_0; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_1_io_write_data_1; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_write_way_mask_0; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_write_way_mask_1; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_hit; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_hit_data_0_valid; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_1_io_hit_data_0_bits; // @[SC.scala 141:42]
  wire  wrbypasses_1_io_hit_data_1_valid; // @[SC.scala 141:42]
  wire [5:0] wrbypasses_1_io_hit_data_1_bits; // @[SC.scala 141:42]
  wire [37:0] _GEN_10 = {{30'd0}, io_req_bits_folded_hist_hist_0_folded_hist}; // @[SC.scala 88:31]
  wire [37:0] _s0_idx_T_1 = io_req_bits_pc[38:1] ^ _GEN_10; // @[SC.scala 88:31]
  reg [38:0] s1_pc; // @[Reg.scala 16:16]
  wire [37:0] s1_unhashed_idx = s1_pc[38:1]; // @[SC.scala 102:31]
  wire  per_br_ctrs_shiftAmount = s1_unhashed_idx[0]; // @[Tage.scala 60:42]
  wire [1:0] _per_br_ctrs_T_2 = 2'h1 << per_br_ctrs_shiftAmount; // @[OneHot.scala 64:12]
  wire [5:0] _per_br_ctrs_T_10 = _per_br_ctrs_T_2[0] ? $signed(table__io_rresp_data_0) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_11 = _per_br_ctrs_T_2[1] ? $signed(table__io_rresp_data_2) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_20 = _per_br_ctrs_T_2[0] ? $signed(table__io_rresp_data_1) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_21 = _per_br_ctrs_T_2[1] ? $signed(table__io_rresp_data_3) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire  per_br_ctrs_shiftAmount_1 = per_br_ctrs_shiftAmount ^ 1'h1; // @[Tage.scala 62:92]
  wire [1:0] _per_br_ctrs_T_28 = 2'h1 << per_br_ctrs_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [5:0] _per_br_ctrs_T_36 = _per_br_ctrs_T_28[0] ? $signed(table__io_rresp_data_0) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_37 = _per_br_ctrs_T_28[1] ? $signed(table__io_rresp_data_2) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_46 = _per_br_ctrs_T_28[0] ? $signed(table__io_rresp_data_1) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _per_br_ctrs_T_47 = _per_br_ctrs_T_28[1] ? $signed(table__io_rresp_data_3) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [37:0] update_unhashed_idx = io_update_pc[38:1]; // @[SC.scala 119:42]
  wire  _updateWayMask_0_T_3 = io_update_mask_0 & ~update_unhashed_idx[0]; // @[SC.scala 122:26]
  wire  _updateWayMask_0_T_5 = io_update_mask_0 & ~update_unhashed_idx[0] & ~io_update_tagePreds_0; // @[SC.scala 122:78]
  wire  _updateWayMask_0_T_7 = update_unhashed_idx[0] ^ 1'h1; // @[Tage.scala 62:92]
  wire  _updateWayMask_0_T_9 = io_update_mask_1 & ~_updateWayMask_0_T_7; // @[SC.scala 122:26]
  wire  _updateWayMask_0_T_11 = io_update_mask_1 & ~_updateWayMask_0_T_7 & ~io_update_tagePreds_1; // @[SC.scala 122:78]
  wire  updateWayMask_0 = _updateWayMask_0_T_5 | _updateWayMask_0_T_11; // @[SC.scala 123:15]
  wire  _updateWayMask_1_T_4 = _updateWayMask_0_T_3 & io_update_tagePreds_0; // @[SC.scala 125:78]
  wire  _updateWayMask_1_T_9 = _updateWayMask_0_T_9 & io_update_tagePreds_1; // @[SC.scala 125:78]
  wire  updateWayMask_1 = _updateWayMask_1_T_4 | _updateWayMask_1_T_9; // @[SC.scala 126:15]
  wire  _updateWayMask_2_T_3 = io_update_mask_0 & update_unhashed_idx[0]; // @[SC.scala 122:26]
  wire  _updateWayMask_2_T_5 = io_update_mask_0 & update_unhashed_idx[0] & ~io_update_tagePreds_0; // @[SC.scala 122:78]
  wire  _updateWayMask_2_T_9 = io_update_mask_1 & _updateWayMask_0_T_7; // @[SC.scala 122:26]
  wire  _updateWayMask_2_T_11 = io_update_mask_1 & _updateWayMask_0_T_7 & ~io_update_tagePreds_1; // @[SC.scala 122:78]
  wire  updateWayMask_2 = _updateWayMask_2_T_5 | _updateWayMask_2_T_11; // @[SC.scala 123:15]
  wire  _updateWayMask_3_T_4 = _updateWayMask_2_T_3 & io_update_tagePreds_0; // @[SC.scala 125:78]
  wire  _updateWayMask_3_T_9 = _updateWayMask_2_T_9 & io_update_tagePreds_1; // @[SC.scala 125:78]
  wire  updateWayMask_3 = _updateWayMask_3_T_4 | _updateWayMask_3_T_9; // @[SC.scala 126:15]
  wire [37:0] _GEN_11 = {{30'd0}, io_update_folded_hist_hist_0_folded_hist}; // @[SC.scala 88:31]
  wire [37:0] _update_idx_T_1 = update_unhashed_idx ^ _GEN_11; // @[SC.scala 88:31]
  wire [1:0] lo = {updateWayMask_1,updateWayMask_0}; // @[SC.scala 135:29]
  wire [1:0] hi = {updateWayMask_3,updateWayMask_2}; // @[SC.scala 135:29]
  wire [1:0] _wrbypass_io_T = 2'h1 << update_unhashed_idx[0]; // @[OneHot.scala 64:12]
  wire [5:0] _wrbypass_io_T_8 = _wrbypass_io_T[0] ? $signed(wrbypasses_0_io_hit_data_0_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_9 = _wrbypass_io_T[1] ? $signed(wrbypasses_1_io_hit_data_0_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] wrbypass_io_hit_data_0_bits = $signed(_wrbypass_io_T_8) | $signed(_wrbypass_io_T_9); // @[Mux.scala 27:73]
  wire  wrbypass_io_hit_data_0_valid = _wrbypass_io_T[0] & wrbypasses_0_io_hit_data_0_valid | _wrbypass_io_T[1] &
    wrbypasses_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_21 = _wrbypass_io_T[0] ? $signed(wrbypasses_0_io_hit_data_1_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_22 = _wrbypass_io_T[1] ? $signed(wrbypasses_1_io_hit_data_1_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] wrbypass_io_hit_data_1_bits = $signed(_wrbypass_io_T_21) | $signed(_wrbypass_io_T_22); // @[Mux.scala 27:73]
  wire  wrbypass_io_hit_data_1_valid = _wrbypass_io_T[0] & wrbypasses_0_io_hit_data_1_valid | _wrbypass_io_T[1] &
    wrbypasses_1_io_hit_data_1_valid; // @[Mux.scala 27:73]
  wire  wrbypass_io_hit = _wrbypass_io_T[0] & wrbypasses_0_io_hit | _wrbypass_io_T[1] & wrbypasses_1_io_hit; // @[Mux.scala 27:73]
  wire  ctrPos = _wrbypass_io_T[0] & io_update_tagePreds_0 | _wrbypass_io_T[1] & io_update_tagePreds_1; // @[Mux.scala 27:73]
  wire [5:0] _previous_ctr_T_8 = _wrbypass_io_T[0] ? $signed(io_update_oldCtrs_0) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _previous_ctr_T_9 = _wrbypass_io_T[1] ? $signed(io_update_oldCtrs_1) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] previous_ctr = $signed(_previous_ctr_T_8) | $signed(_previous_ctr_T_9); // @[Mux.scala 27:73]
  wire  _GEN_3 = ctrPos ? wrbypass_io_hit_data_1_valid : wrbypass_io_hit_data_0_valid; // @[SC.scala 151:{41,41}]
  wire  hit_and_valid = wrbypass_io_hit & _GEN_3; // @[SC.scala 151:41]
  wire [5:0] _GEN_5 = ctrPos ? $signed(wrbypass_io_hit_data_1_bits) : $signed(wrbypass_io_hit_data_0_bits); // @[SC.scala 152:{21,21}]
  wire [5:0] oldCtr = hit_and_valid ? $signed(_GEN_5) : $signed(previous_ctr); // @[SC.scala 152:21]
  wire  taken = _wrbypass_io_T[0] & io_update_takens_0 | _wrbypass_io_T[1] & io_update_takens_1; // @[Mux.scala 27:73]
  wire  update_wdata_0_oldSatTaken = $signed(oldCtr) == 6'sh1f; // @[BPU.scala 103:27]
  wire  update_wdata_0_oldSatNotTaken = $signed(oldCtr) == 6'sh20; // @[BPU.scala 104:30]
  wire [5:0] _update_wdata_0_T_5 = $signed(oldCtr) + 6'sh1; // @[BPU.scala 107:24]
  wire [5:0] _update_wdata_0_T_8 = $signed(oldCtr) - 6'sh1; // @[BPU.scala 107:35]
  wire [5:0] _update_wdata_0_T_9 = taken ? $signed(_update_wdata_0_T_5) : $signed(_update_wdata_0_T_8); // @[BPU.scala 107:12]
  wire [5:0] _update_wdata_0_T_10 = update_wdata_0_oldSatNotTaken & ~taken ? $signed(6'sh20) : $signed(
    _update_wdata_0_T_9); // @[BPU.scala 106:10]
  wire [1:0] _wrbypass_io_T_65 = 2'h1 << _updateWayMask_0_T_7; // @[OneHot.scala 64:12]
  wire [5:0] _wrbypass_io_T_73 = _wrbypass_io_T_65[0] ? $signed(wrbypasses_0_io_hit_data_0_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_74 = _wrbypass_io_T_65[1] ? $signed(wrbypasses_1_io_hit_data_0_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] wrbypass_io_1_hit_data_0_bits = $signed(_wrbypass_io_T_73) | $signed(_wrbypass_io_T_74); // @[Mux.scala 27:73]
  wire  wrbypass_io_1_hit_data_0_valid = _wrbypass_io_T_65[0] & wrbypasses_0_io_hit_data_0_valid | _wrbypass_io_T_65[1]
     & wrbypasses_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_86 = _wrbypass_io_T_65[0] ? $signed(wrbypasses_0_io_hit_data_1_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _wrbypass_io_T_87 = _wrbypass_io_T_65[1] ? $signed(wrbypasses_1_io_hit_data_1_bits) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] wrbypass_io_1_hit_data_1_bits = $signed(_wrbypass_io_T_86) | $signed(_wrbypass_io_T_87); // @[Mux.scala 27:73]
  wire  wrbypass_io_1_hit_data_1_valid = _wrbypass_io_T_65[0] & wrbypasses_0_io_hit_data_1_valid | _wrbypass_io_T_65[1]
     & wrbypasses_1_io_hit_data_1_valid; // @[Mux.scala 27:73]
  wire  wrbypass_io_1_hit = _wrbypass_io_T_65[0] & wrbypasses_0_io_hit | _wrbypass_io_T_65[1] & wrbypasses_1_io_hit; // @[Mux.scala 27:73]
  wire  ctrPos_1 = _wrbypass_io_T_65[0] & io_update_tagePreds_0 | _wrbypass_io_T_65[1] & io_update_tagePreds_1; // @[Mux.scala 27:73]
  wire [5:0] _previous_ctr_T_22 = _wrbypass_io_T_65[0] ? $signed(io_update_oldCtrs_0) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _previous_ctr_T_23 = _wrbypass_io_T_65[1] ? $signed(io_update_oldCtrs_1) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] previous_ctr_1 = $signed(_previous_ctr_T_22) | $signed(_previous_ctr_T_23); // @[Mux.scala 27:73]
  wire  _GEN_7 = ctrPos_1 ? wrbypass_io_1_hit_data_1_valid : wrbypass_io_1_hit_data_0_valid; // @[SC.scala 151:{41,41}]
  wire  hit_and_valid_1 = wrbypass_io_1_hit & _GEN_7; // @[SC.scala 151:41]
  wire [5:0] _GEN_9 = ctrPos_1 ? $signed(wrbypass_io_1_hit_data_1_bits) : $signed(wrbypass_io_1_hit_data_0_bits); // @[SC.scala 152:{21,21}]
  wire [5:0] oldCtr_1 = hit_and_valid_1 ? $signed(_GEN_9) : $signed(previous_ctr_1); // @[SC.scala 152:21]
  wire  taken_1 = _wrbypass_io_T_65[0] & io_update_takens_0 | _wrbypass_io_T_65[1] & io_update_takens_1; // @[Mux.scala 27:73]
  wire  update_wdata_1_oldSatTaken = $signed(oldCtr_1) == 6'sh1f; // @[BPU.scala 103:27]
  wire  update_wdata_1_oldSatNotTaken = $signed(oldCtr_1) == 6'sh20; // @[BPU.scala 104:30]
  wire [5:0] _update_wdata_1_T_5 = $signed(oldCtr_1) + 6'sh1; // @[BPU.scala 107:24]
  wire [5:0] _update_wdata_1_T_8 = $signed(oldCtr_1) - 6'sh1; // @[BPU.scala 107:35]
  wire [5:0] _update_wdata_1_T_9 = taken_1 ? $signed(_update_wdata_1_T_5) : $signed(_update_wdata_1_T_8); // @[BPU.scala 107:12]
  wire [5:0] _update_wdata_1_T_10 = update_wdata_1_oldSatNotTaken & ~taken_1 ? $signed(6'sh20) : $signed(
    _update_wdata_1_T_9); // @[BPU.scala 106:10]
  wire [5:0] _T_7 = update_wdata_0_oldSatTaken & taken ? $signed(6'sh1f) : $signed(_update_wdata_0_T_10); // @[Mux.scala 27:73]
  wire [5:0] _T_9 = update_wdata_1_oldSatTaken & taken_1 ? $signed(6'sh1f) : $signed(_update_wdata_1_T_10); // @[Mux.scala 27:73]
  wire [5:0] _T_10 = _wrbypass_io_T[0] ? $signed(_T_7) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _T_11 = _wrbypass_io_T[1] ? $signed(_T_9) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _T_44 = _wrbypass_io_T_65[0] ? $signed(_T_7) : $signed(6'sh0); // @[Mux.scala 27:73]
  wire [5:0] _T_45 = _wrbypass_io_T_65[1] ? $signed(_T_9) : $signed(6'sh0); // @[Mux.scala 27:73]
  SRAMTemplate_54 table_ ( // @[SC.scala 73:21]
    .clock(table__clock),
    .reset(table__reset),
    .io_rreq_valid(table__io_rreq_valid),
    .io_rreq_bits_setIdx(table__io_rreq_bits_setIdx),
    .io_rresp_data_0(table__io_rresp_data_0),
    .io_rresp_data_1(table__io_rresp_data_1),
    .io_rresp_data_2(table__io_rresp_data_2),
    .io_rresp_data_3(table__io_rresp_data_3),
    .io_wreq_valid(table__io_wreq_valid),
    .io_wreq_bits_setIdx(table__io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(table__io_wreq_bits_data_0),
    .io_wreq_bits_data_1(table__io_wreq_bits_data_1),
    .io_wreq_bits_data_2(table__io_wreq_bits_data_2),
    .io_wreq_bits_data_3(table__io_wreq_bits_data_3),
    .io_wreq_bits_waymask(table__io_wreq_bits_waymask)
  );
  WrBypass_65 wrbypasses_0 ( // @[SC.scala 141:42]
    .clock(wrbypasses_0_clock),
    .reset(wrbypasses_0_reset),
    .io_wen(wrbypasses_0_io_wen),
    .io_write_idx(wrbypasses_0_io_write_idx),
    .io_write_data_0(wrbypasses_0_io_write_data_0),
    .io_write_data_1(wrbypasses_0_io_write_data_1),
    .io_write_way_mask_0(wrbypasses_0_io_write_way_mask_0),
    .io_write_way_mask_1(wrbypasses_0_io_write_way_mask_1),
    .io_hit(wrbypasses_0_io_hit),
    .io_hit_data_0_valid(wrbypasses_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(wrbypasses_0_io_hit_data_0_bits),
    .io_hit_data_1_valid(wrbypasses_0_io_hit_data_1_valid),
    .io_hit_data_1_bits(wrbypasses_0_io_hit_data_1_bits)
  );
  WrBypass_65 wrbypasses_1 ( // @[SC.scala 141:42]
    .clock(wrbypasses_1_clock),
    .reset(wrbypasses_1_reset),
    .io_wen(wrbypasses_1_io_wen),
    .io_write_idx(wrbypasses_1_io_write_idx),
    .io_write_data_0(wrbypasses_1_io_write_data_0),
    .io_write_data_1(wrbypasses_1_io_write_data_1),
    .io_write_way_mask_0(wrbypasses_1_io_write_way_mask_0),
    .io_write_way_mask_1(wrbypasses_1_io_write_way_mask_1),
    .io_hit(wrbypasses_1_io_hit),
    .io_hit_data_0_valid(wrbypasses_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(wrbypasses_1_io_hit_data_0_bits),
    .io_hit_data_1_valid(wrbypasses_1_io_hit_data_1_valid),
    .io_hit_data_1_bits(wrbypasses_1_io_hit_data_1_bits)
  );
  assign io_resp_ctrs_0_0 = $signed(_per_br_ctrs_T_10) | $signed(_per_br_ctrs_T_11); // @[Mux.scala 27:73]
  assign io_resp_ctrs_0_1 = $signed(_per_br_ctrs_T_20) | $signed(_per_br_ctrs_T_21); // @[Mux.scala 27:73]
  assign io_resp_ctrs_1_0 = $signed(_per_br_ctrs_T_36) | $signed(_per_br_ctrs_T_37); // @[Mux.scala 27:73]
  assign io_resp_ctrs_1_1 = $signed(_per_br_ctrs_T_46) | $signed(_per_br_ctrs_T_47); // @[Mux.scala 27:73]
  assign table__clock = clock;
  assign table__reset = reset;
  assign table__io_rreq_valid = io_req_valid; // @[SC.scala 104:24]
  assign table__io_rreq_bits_setIdx = _s0_idx_T_1[7:0]; // @[SC.scala 88:40]
  assign table__io_wreq_valid = io_update_mask_0 | io_update_mask_1; // @[SC.scala 132:36]
  assign table__io_wreq_bits_setIdx = _update_idx_T_1[7:0]; // @[SC.scala 88:40]
  assign table__io_wreq_bits_data_0 = update_wdata_0_oldSatTaken & taken ? $signed(6'sh1f) : $signed(
    _update_wdata_0_T_10); // @[BPU.scala 105:8]
  assign table__io_wreq_bits_data_1 = update_wdata_0_oldSatTaken & taken ? $signed(6'sh1f) : $signed(
    _update_wdata_0_T_10); // @[BPU.scala 105:8]
  assign table__io_wreq_bits_data_2 = update_wdata_1_oldSatTaken & taken_1 ? $signed(6'sh1f) : $signed(
    _update_wdata_1_T_10); // @[BPU.scala 105:8]
  assign table__io_wreq_bits_data_3 = update_wdata_1_oldSatTaken & taken_1 ? $signed(6'sh1f) : $signed(
    _update_wdata_1_T_10); // @[BPU.scala 105:8]
  assign table__io_wreq_bits_waymask = {hi,lo}; // @[SC.scala 135:29]
  assign wrbypasses_0_clock = clock;
  assign wrbypasses_0_reset = reset;
  assign wrbypasses_0_io_wen = io_update_mask_0; // @[SC.scala 162:21]
  assign wrbypasses_0_io_write_idx = _update_idx_T_1[7:0]; // @[SC.scala 88:40]
  assign wrbypasses_0_io_write_data_0 = $signed(_T_10) | $signed(_T_11); // @[Mux.scala 27:73]
  assign wrbypasses_0_io_write_data_1 = $signed(_T_10) | $signed(_T_11); // @[Mux.scala 27:73]
  assign wrbypasses_0_io_write_way_mask_0 = _wrbypass_io_T[0] & updateWayMask_0 | _wrbypass_io_T[1] & updateWayMask_2; // @[Mux.scala 27:73]
  assign wrbypasses_0_io_write_way_mask_1 = _wrbypass_io_T[0] & updateWayMask_1 | _wrbypass_io_T[1] & updateWayMask_3; // @[Mux.scala 27:73]
  assign wrbypasses_1_clock = clock;
  assign wrbypasses_1_reset = reset;
  assign wrbypasses_1_io_wen = io_update_mask_1; // @[SC.scala 162:21]
  assign wrbypasses_1_io_write_idx = _update_idx_T_1[7:0]; // @[SC.scala 88:40]
  assign wrbypasses_1_io_write_data_0 = $signed(_T_44) | $signed(_T_45); // @[Mux.scala 27:73]
  assign wrbypasses_1_io_write_data_1 = $signed(_T_44) | $signed(_T_45); // @[Mux.scala 27:73]
  assign wrbypasses_1_io_write_way_mask_0 = _wrbypass_io_T_65[0] & updateWayMask_0 | _wrbypass_io_T_65[1] &
    updateWayMask_2; // @[Mux.scala 27:73]
  assign wrbypasses_1_io_write_way_mask_1 = _wrbypass_io_T_65[0] & updateWayMask_1 | _wrbypass_io_T_65[1] &
    updateWayMask_3; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_pc <= io_req_bits_pc; // @[Reg.scala 17:22]
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
  s1_pc = _RAND_0[38:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

