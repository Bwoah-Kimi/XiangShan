module ITTageTable(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [38:0] io_req_bits_pc,
  input  [3:0]  io_req_bits_folded_hist_hist_4_folded_hist,
  output        io_resp_valid,
  output [1:0]  io_resp_bits_ctr,
  output [1:0]  io_resp_bits_u,
  output [38:0] io_resp_bits_target,
  input  [38:0] io_update_pc,
  input  [3:0]  io_update_folded_hist_hist_4_folded_hist,
  input         io_update_valid,
  input         io_update_correct,
  input         io_update_alloc,
  input  [1:0]  io_update_oldCtr,
  input         io_update_uValid,
  input         io_update_u,
  input         io_update_reset_u,
  input  [38:0] io_update_target,
  input  [38:0] io_update_old_target
);
`ifdef RANDOMIZE_REG_INIT
  reg [255:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  us_clock; // @[ITTAGE.scala 223:18]
  wire  us_reset; // @[ITTAGE.scala 223:18]
  wire [7:0] us_io_raddr_0; // @[ITTAGE.scala 223:18]
  wire  us_io_rdata_0; // @[ITTAGE.scala 223:18]
  wire  us_io_wen; // @[ITTAGE.scala 223:18]
  wire [7:0] us_io_waddr; // @[ITTAGE.scala 223:18]
  wire  us_io_wdata; // @[ITTAGE.scala 223:18]
  wire  us_io_resetEn; // @[ITTAGE.scala 223:18]
  wire  table_banks_0_clock; // @[ITTAGE.scala 226:11]
  wire  table_banks_0_reset; // @[ITTAGE.scala 226:11]
  wire  table_banks_0_io_rreq_valid; // @[ITTAGE.scala 226:11]
  wire [6:0] table_banks_0_io_rreq_bits_setIdx; // @[ITTAGE.scala 226:11]
  wire [8:0] table_banks_0_io_rresp_data_0_tag; // @[ITTAGE.scala 226:11]
  wire [1:0] table_banks_0_io_rresp_data_0_ctr; // @[ITTAGE.scala 226:11]
  wire [38:0] table_banks_0_io_rresp_data_0_target; // @[ITTAGE.scala 226:11]
  wire  table_banks_0_io_wreq_valid; // @[ITTAGE.scala 226:11]
  wire [6:0] table_banks_0_io_wreq_bits_setIdx; // @[ITTAGE.scala 226:11]
  wire [8:0] table_banks_0_io_wreq_bits_data_0_tag; // @[ITTAGE.scala 226:11]
  wire [1:0] table_banks_0_io_wreq_bits_data_0_ctr; // @[ITTAGE.scala 226:11]
  wire [38:0] table_banks_0_io_wreq_bits_data_0_target; // @[ITTAGE.scala 226:11]
  wire  table_banks_1_clock; // @[ITTAGE.scala 226:11]
  wire  table_banks_1_reset; // @[ITTAGE.scala 226:11]
  wire  table_banks_1_io_rreq_valid; // @[ITTAGE.scala 226:11]
  wire [6:0] table_banks_1_io_rreq_bits_setIdx; // @[ITTAGE.scala 226:11]
  wire [8:0] table_banks_1_io_rresp_data_0_tag; // @[ITTAGE.scala 226:11]
  wire [1:0] table_banks_1_io_rresp_data_0_ctr; // @[ITTAGE.scala 226:11]
  wire [38:0] table_banks_1_io_rresp_data_0_target; // @[ITTAGE.scala 226:11]
  wire  table_banks_1_io_wreq_valid; // @[ITTAGE.scala 226:11]
  wire [6:0] table_banks_1_io_wreq_bits_setIdx; // @[ITTAGE.scala 226:11]
  wire [8:0] table_banks_1_io_wreq_bits_data_0_tag; // @[ITTAGE.scala 226:11]
  wire [1:0] table_banks_1_io_wreq_bits_data_0_ctr; // @[ITTAGE.scala 226:11]
  wire [38:0] table_banks_1_io_wreq_bits_data_0_target; // @[ITTAGE.scala 226:11]
  wire  wrbypass_clock; // @[ITTAGE.scala 277:24]
  wire  wrbypass_reset; // @[ITTAGE.scala 277:24]
  wire  wrbypass_io_wen; // @[ITTAGE.scala 277:24]
  wire [7:0] wrbypass_io_write_idx; // @[ITTAGE.scala 277:24]
  wire [1:0] wrbypass_io_write_data_0; // @[ITTAGE.scala 277:24]
  wire  wrbypass_io_hit; // @[ITTAGE.scala 277:24]
  wire [1:0] wrbypass_io_hit_data_0_bits; // @[ITTAGE.scala 277:24]
  reg [255:0] validArray; // @[ITTAGE.scala 206:27]
  wire [37:0] s0_unhashed_idx = io_req_bits_pc[38:1]; // @[ITTAGE.scala 213:43]
  wire [37:0] _GEN_519 = {{34'd0}, io_req_bits_folded_hist_hist_4_folded_hist}; // @[ITTAGE.scala 187:31]
  wire [37:0] _idx_T = s0_unhashed_idx ^ _GEN_519; // @[ITTAGE.scala 187:31]
  wire [7:0] s0_idx = _idx_T[7:0]; // @[ITTAGE.scala 187:40]
  wire [29:0] _GEN_520 = {{26'd0}, io_req_bits_folded_hist_hist_4_folded_hist}; // @[ITTAGE.scala 188:52]
  wire [29:0] _tag_T_1 = s0_unhashed_idx[37:8] ^ _GEN_520; // @[ITTAGE.scala 188:52]
  wire [4:0] _tag_T_2 = {io_req_bits_folded_hist_hist_4_folded_hist, 1'h0}; // @[ITTAGE.scala 188:75]
  wire [29:0] _GEN_521 = {{25'd0}, _tag_T_2}; // @[ITTAGE.scala 188:61]
  wire [29:0] _tag_T_3 = _tag_T_1 ^ _GEN_521; // @[ITTAGE.scala 188:61]
  wire [8:0] s0_tag = _tag_T_3[8:0]; // @[ITTAGE.scala 188:82]
  wire  _T = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  reg [7:0] s1_idx; // @[Reg.scala 16:16]
  reg [8:0] s1_tag; // @[Reg.scala 16:16]
  wire  s0_bank_req_1h_0 = ~s0_idx[0]; // @[ITTAGE.scala 166:86]
  reg  s1_bank_req_1h_0; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_1; // @[Reg.scala 16:16]
  wire [38:0] _resp_selected_T = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_target : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _resp_selected_T_1 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_target : 39'h0; // @[Mux.scala 27:73]
  wire [1:0] _resp_selected_T_3 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _resp_selected_T_4 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_6 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_7 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] resp_selected_tag = _resp_selected_T_6 | _resp_selected_T_7; // @[Mux.scala 27:73]
  wire [255:0] _s1_req_rhit_T = validArray >> s1_idx; // @[ITTAGE.scala 238:31]
  wire  s1_req_rhit = _s1_req_rhit_T[0] & resp_selected_tag == s1_tag; // @[ITTAGE.scala 238:40]
  reg  s1_bank_has_write_on_this_req_0; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_1; // @[Reg.scala 16:16]
  wire  resp_invalid_by_write = s1_bank_req_1h_0 & s1_bank_has_write_on_this_req_0 | s1_bank_req_1h_1 &
    s1_bank_has_write_on_this_req_1; // @[Mux.scala 27:73]
  wire  _s1_bank_has_write_on_this_req_WIRE_0 = table_banks_0_io_wreq_valid; // @[ITTAGE.scala 246:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_1 = table_banks_1_io_wreq_valid; // @[ITTAGE.scala 246:{56,56}]
  wire [37:0] _GEN_522 = {{34'd0}, io_update_folded_hist_hist_4_folded_hist}; // @[ITTAGE.scala 187:31]
  wire [37:0] _idx_T_1 = io_update_pc[38:1] ^ _GEN_522; // @[ITTAGE.scala 187:31]
  wire [7:0] update_idx = _idx_T_1[7:0]; // @[ITTAGE.scala 187:40]
  wire [29:0] _GEN_523 = {{26'd0}, io_update_folded_hist_hist_4_folded_hist}; // @[ITTAGE.scala 188:52]
  wire [29:0] _tag_T_5 = io_update_pc[38:9] ^ _GEN_523; // @[ITTAGE.scala 188:52]
  wire [4:0] _tag_T_6 = {io_update_folded_hist_hist_4_folded_hist, 1'h0}; // @[ITTAGE.scala 188:75]
  wire [29:0] _GEN_524 = {{25'd0}, _tag_T_6}; // @[ITTAGE.scala 188:61]
  wire [29:0] _tag_T_7 = _tag_T_5 ^ _GEN_524; // @[ITTAGE.scala 188:61]
  wire  update_req_bank_1h_0 = ~update_idx[0]; // @[ITTAGE.scala 166:86]
  wire [1:0] old_ctr = wrbypass_io_hit ? wrbypass_io_hit_data_0_bits : io_update_oldCtr; // @[ITTAGE.scala 283:20]
  wire  update_wdata_ctr_oldSatTaken = old_ctr == 2'h3; // @[BPU.scala 95:27]
  wire  update_wdata_ctr_oldSatNotTaken = old_ctr == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _update_wdata_ctr_T_4 = old_ctr + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _update_wdata_ctr_T_6 = old_ctr - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _update_wdata_ctr_T_7 = io_update_correct ? _update_wdata_ctr_T_4 : _update_wdata_ctr_T_6; // @[BPU.scala 99:12]
  wire [1:0] _update_wdata_ctr_T_8 = update_wdata_ctr_oldSatNotTaken & ~io_update_correct ? 2'h0 : _update_wdata_ctr_T_7
    ; // @[BPU.scala 98:10]
  wire [1:0] _update_wdata_ctr_T_9 = update_wdata_ctr_oldSatTaken & io_update_correct ? 2'h3 : _update_wdata_ctr_T_8; // @[BPU.scala 97:8]
  wire  _GEN_6 = 8'h0 == update_idx | validArray[0]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_7 = 8'h1 == update_idx | validArray[1]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_8 = 8'h2 == update_idx | validArray[2]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_9 = 8'h3 == update_idx | validArray[3]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_10 = 8'h4 == update_idx | validArray[4]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_11 = 8'h5 == update_idx | validArray[5]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_12 = 8'h6 == update_idx | validArray[6]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_13 = 8'h7 == update_idx | validArray[7]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_14 = 8'h8 == update_idx | validArray[8]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_15 = 8'h9 == update_idx | validArray[9]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_16 = 8'ha == update_idx | validArray[10]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_17 = 8'hb == update_idx | validArray[11]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_18 = 8'hc == update_idx | validArray[12]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_19 = 8'hd == update_idx | validArray[13]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_20 = 8'he == update_idx | validArray[14]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_21 = 8'hf == update_idx | validArray[15]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_22 = 8'h10 == update_idx | validArray[16]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_23 = 8'h11 == update_idx | validArray[17]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_24 = 8'h12 == update_idx | validArray[18]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_25 = 8'h13 == update_idx | validArray[19]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_26 = 8'h14 == update_idx | validArray[20]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_27 = 8'h15 == update_idx | validArray[21]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_28 = 8'h16 == update_idx | validArray[22]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_29 = 8'h17 == update_idx | validArray[23]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_30 = 8'h18 == update_idx | validArray[24]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_31 = 8'h19 == update_idx | validArray[25]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_32 = 8'h1a == update_idx | validArray[26]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_33 = 8'h1b == update_idx | validArray[27]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_34 = 8'h1c == update_idx | validArray[28]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_35 = 8'h1d == update_idx | validArray[29]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_36 = 8'h1e == update_idx | validArray[30]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_37 = 8'h1f == update_idx | validArray[31]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_38 = 8'h20 == update_idx | validArray[32]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_39 = 8'h21 == update_idx | validArray[33]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_40 = 8'h22 == update_idx | validArray[34]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_41 = 8'h23 == update_idx | validArray[35]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_42 = 8'h24 == update_idx | validArray[36]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_43 = 8'h25 == update_idx | validArray[37]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_44 = 8'h26 == update_idx | validArray[38]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_45 = 8'h27 == update_idx | validArray[39]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_46 = 8'h28 == update_idx | validArray[40]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_47 = 8'h29 == update_idx | validArray[41]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_48 = 8'h2a == update_idx | validArray[42]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_49 = 8'h2b == update_idx | validArray[43]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_50 = 8'h2c == update_idx | validArray[44]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_51 = 8'h2d == update_idx | validArray[45]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_52 = 8'h2e == update_idx | validArray[46]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_53 = 8'h2f == update_idx | validArray[47]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_54 = 8'h30 == update_idx | validArray[48]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_55 = 8'h31 == update_idx | validArray[49]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_56 = 8'h32 == update_idx | validArray[50]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_57 = 8'h33 == update_idx | validArray[51]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_58 = 8'h34 == update_idx | validArray[52]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_59 = 8'h35 == update_idx | validArray[53]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_60 = 8'h36 == update_idx | validArray[54]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_61 = 8'h37 == update_idx | validArray[55]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_62 = 8'h38 == update_idx | validArray[56]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_63 = 8'h39 == update_idx | validArray[57]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_64 = 8'h3a == update_idx | validArray[58]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_65 = 8'h3b == update_idx | validArray[59]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_66 = 8'h3c == update_idx | validArray[60]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_67 = 8'h3d == update_idx | validArray[61]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_68 = 8'h3e == update_idx | validArray[62]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_69 = 8'h3f == update_idx | validArray[63]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_70 = 8'h40 == update_idx | validArray[64]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_71 = 8'h41 == update_idx | validArray[65]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_72 = 8'h42 == update_idx | validArray[66]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_73 = 8'h43 == update_idx | validArray[67]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_74 = 8'h44 == update_idx | validArray[68]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_75 = 8'h45 == update_idx | validArray[69]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_76 = 8'h46 == update_idx | validArray[70]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_77 = 8'h47 == update_idx | validArray[71]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_78 = 8'h48 == update_idx | validArray[72]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_79 = 8'h49 == update_idx | validArray[73]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_80 = 8'h4a == update_idx | validArray[74]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_81 = 8'h4b == update_idx | validArray[75]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_82 = 8'h4c == update_idx | validArray[76]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_83 = 8'h4d == update_idx | validArray[77]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_84 = 8'h4e == update_idx | validArray[78]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_85 = 8'h4f == update_idx | validArray[79]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_86 = 8'h50 == update_idx | validArray[80]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_87 = 8'h51 == update_idx | validArray[81]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_88 = 8'h52 == update_idx | validArray[82]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_89 = 8'h53 == update_idx | validArray[83]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_90 = 8'h54 == update_idx | validArray[84]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_91 = 8'h55 == update_idx | validArray[85]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_92 = 8'h56 == update_idx | validArray[86]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_93 = 8'h57 == update_idx | validArray[87]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_94 = 8'h58 == update_idx | validArray[88]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_95 = 8'h59 == update_idx | validArray[89]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_96 = 8'h5a == update_idx | validArray[90]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_97 = 8'h5b == update_idx | validArray[91]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_98 = 8'h5c == update_idx | validArray[92]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_99 = 8'h5d == update_idx | validArray[93]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_100 = 8'h5e == update_idx | validArray[94]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_101 = 8'h5f == update_idx | validArray[95]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_102 = 8'h60 == update_idx | validArray[96]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_103 = 8'h61 == update_idx | validArray[97]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_104 = 8'h62 == update_idx | validArray[98]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_105 = 8'h63 == update_idx | validArray[99]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_106 = 8'h64 == update_idx | validArray[100]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_107 = 8'h65 == update_idx | validArray[101]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_108 = 8'h66 == update_idx | validArray[102]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_109 = 8'h67 == update_idx | validArray[103]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_110 = 8'h68 == update_idx | validArray[104]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_111 = 8'h69 == update_idx | validArray[105]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_112 = 8'h6a == update_idx | validArray[106]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_113 = 8'h6b == update_idx | validArray[107]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_114 = 8'h6c == update_idx | validArray[108]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_115 = 8'h6d == update_idx | validArray[109]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_116 = 8'h6e == update_idx | validArray[110]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_117 = 8'h6f == update_idx | validArray[111]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_118 = 8'h70 == update_idx | validArray[112]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_119 = 8'h71 == update_idx | validArray[113]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_120 = 8'h72 == update_idx | validArray[114]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_121 = 8'h73 == update_idx | validArray[115]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_122 = 8'h74 == update_idx | validArray[116]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_123 = 8'h75 == update_idx | validArray[117]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_124 = 8'h76 == update_idx | validArray[118]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_125 = 8'h77 == update_idx | validArray[119]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_126 = 8'h78 == update_idx | validArray[120]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_127 = 8'h79 == update_idx | validArray[121]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_128 = 8'h7a == update_idx | validArray[122]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_129 = 8'h7b == update_idx | validArray[123]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_130 = 8'h7c == update_idx | validArray[124]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_131 = 8'h7d == update_idx | validArray[125]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_132 = 8'h7e == update_idx | validArray[126]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_133 = 8'h7f == update_idx | validArray[127]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_134 = 8'h80 == update_idx | validArray[128]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_135 = 8'h81 == update_idx | validArray[129]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_136 = 8'h82 == update_idx | validArray[130]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_137 = 8'h83 == update_idx | validArray[131]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_138 = 8'h84 == update_idx | validArray[132]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_139 = 8'h85 == update_idx | validArray[133]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_140 = 8'h86 == update_idx | validArray[134]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_141 = 8'h87 == update_idx | validArray[135]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_142 = 8'h88 == update_idx | validArray[136]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_143 = 8'h89 == update_idx | validArray[137]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_144 = 8'h8a == update_idx | validArray[138]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_145 = 8'h8b == update_idx | validArray[139]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_146 = 8'h8c == update_idx | validArray[140]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_147 = 8'h8d == update_idx | validArray[141]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_148 = 8'h8e == update_idx | validArray[142]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_149 = 8'h8f == update_idx | validArray[143]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_150 = 8'h90 == update_idx | validArray[144]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_151 = 8'h91 == update_idx | validArray[145]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_152 = 8'h92 == update_idx | validArray[146]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_153 = 8'h93 == update_idx | validArray[147]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_154 = 8'h94 == update_idx | validArray[148]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_155 = 8'h95 == update_idx | validArray[149]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_156 = 8'h96 == update_idx | validArray[150]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_157 = 8'h97 == update_idx | validArray[151]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_158 = 8'h98 == update_idx | validArray[152]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_159 = 8'h99 == update_idx | validArray[153]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_160 = 8'h9a == update_idx | validArray[154]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_161 = 8'h9b == update_idx | validArray[155]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_162 = 8'h9c == update_idx | validArray[156]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_163 = 8'h9d == update_idx | validArray[157]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_164 = 8'h9e == update_idx | validArray[158]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_165 = 8'h9f == update_idx | validArray[159]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_166 = 8'ha0 == update_idx | validArray[160]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_167 = 8'ha1 == update_idx | validArray[161]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_168 = 8'ha2 == update_idx | validArray[162]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_169 = 8'ha3 == update_idx | validArray[163]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_170 = 8'ha4 == update_idx | validArray[164]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_171 = 8'ha5 == update_idx | validArray[165]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_172 = 8'ha6 == update_idx | validArray[166]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_173 = 8'ha7 == update_idx | validArray[167]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_174 = 8'ha8 == update_idx | validArray[168]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_175 = 8'ha9 == update_idx | validArray[169]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_176 = 8'haa == update_idx | validArray[170]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_177 = 8'hab == update_idx | validArray[171]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_178 = 8'hac == update_idx | validArray[172]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_179 = 8'had == update_idx | validArray[173]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_180 = 8'hae == update_idx | validArray[174]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_181 = 8'haf == update_idx | validArray[175]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_182 = 8'hb0 == update_idx | validArray[176]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_183 = 8'hb1 == update_idx | validArray[177]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_184 = 8'hb2 == update_idx | validArray[178]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_185 = 8'hb3 == update_idx | validArray[179]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_186 = 8'hb4 == update_idx | validArray[180]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_187 = 8'hb5 == update_idx | validArray[181]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_188 = 8'hb6 == update_idx | validArray[182]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_189 = 8'hb7 == update_idx | validArray[183]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_190 = 8'hb8 == update_idx | validArray[184]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_191 = 8'hb9 == update_idx | validArray[185]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_192 = 8'hba == update_idx | validArray[186]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_193 = 8'hbb == update_idx | validArray[187]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_194 = 8'hbc == update_idx | validArray[188]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_195 = 8'hbd == update_idx | validArray[189]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_196 = 8'hbe == update_idx | validArray[190]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_197 = 8'hbf == update_idx | validArray[191]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_198 = 8'hc0 == update_idx | validArray[192]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_199 = 8'hc1 == update_idx | validArray[193]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_200 = 8'hc2 == update_idx | validArray[194]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_201 = 8'hc3 == update_idx | validArray[195]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_202 = 8'hc4 == update_idx | validArray[196]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_203 = 8'hc5 == update_idx | validArray[197]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_204 = 8'hc6 == update_idx | validArray[198]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_205 = 8'hc7 == update_idx | validArray[199]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_206 = 8'hc8 == update_idx | validArray[200]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_207 = 8'hc9 == update_idx | validArray[201]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_208 = 8'hca == update_idx | validArray[202]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_209 = 8'hcb == update_idx | validArray[203]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_210 = 8'hcc == update_idx | validArray[204]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_211 = 8'hcd == update_idx | validArray[205]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_212 = 8'hce == update_idx | validArray[206]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_213 = 8'hcf == update_idx | validArray[207]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_214 = 8'hd0 == update_idx | validArray[208]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_215 = 8'hd1 == update_idx | validArray[209]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_216 = 8'hd2 == update_idx | validArray[210]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_217 = 8'hd3 == update_idx | validArray[211]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_218 = 8'hd4 == update_idx | validArray[212]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_219 = 8'hd5 == update_idx | validArray[213]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_220 = 8'hd6 == update_idx | validArray[214]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_221 = 8'hd7 == update_idx | validArray[215]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_222 = 8'hd8 == update_idx | validArray[216]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_223 = 8'hd9 == update_idx | validArray[217]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_224 = 8'hda == update_idx | validArray[218]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_225 = 8'hdb == update_idx | validArray[219]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_226 = 8'hdc == update_idx | validArray[220]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_227 = 8'hdd == update_idx | validArray[221]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_228 = 8'hde == update_idx | validArray[222]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_229 = 8'hdf == update_idx | validArray[223]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_230 = 8'he0 == update_idx | validArray[224]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_231 = 8'he1 == update_idx | validArray[225]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_232 = 8'he2 == update_idx | validArray[226]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_233 = 8'he3 == update_idx | validArray[227]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_234 = 8'he4 == update_idx | validArray[228]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_235 = 8'he5 == update_idx | validArray[229]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_236 = 8'he6 == update_idx | validArray[230]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_237 = 8'he7 == update_idx | validArray[231]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_238 = 8'he8 == update_idx | validArray[232]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_239 = 8'he9 == update_idx | validArray[233]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_240 = 8'hea == update_idx | validArray[234]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_241 = 8'heb == update_idx | validArray[235]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_242 = 8'hec == update_idx | validArray[236]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_243 = 8'hed == update_idx | validArray[237]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_244 = 8'hee == update_idx | validArray[238]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_245 = 8'hef == update_idx | validArray[239]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_246 = 8'hf0 == update_idx | validArray[240]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_247 = 8'hf1 == update_idx | validArray[241]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_248 = 8'hf2 == update_idx | validArray[242]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_249 = 8'hf3 == update_idx | validArray[243]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_250 = 8'hf4 == update_idx | validArray[244]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_251 = 8'hf5 == update_idx | validArray[245]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_252 = 8'hf6 == update_idx | validArray[246]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_253 = 8'hf7 == update_idx | validArray[247]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_254 = 8'hf8 == update_idx | validArray[248]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_255 = 8'hf9 == update_idx | validArray[249]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_256 = 8'hfa == update_idx | validArray[250]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_257 = 8'hfb == update_idx | validArray[251]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_258 = 8'hfc == update_idx | validArray[252]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_259 = 8'hfd == update_idx | validArray[253]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_260 = 8'hfe == update_idx | validArray[254]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  _GEN_261 = 8'hff == update_idx | validArray[255]; // @[ITTAGE.scala 289:30 291:{31,31}]
  wire  newValidArray_1 = io_update_valid ? _GEN_7 : validArray[1]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_0 = io_update_valid ? _GEN_6 : validArray[0]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_3 = io_update_valid ? _GEN_9 : validArray[3]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_2 = io_update_valid ? _GEN_8 : validArray[2]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_5 = io_update_valid ? _GEN_11 : validArray[5]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_4 = io_update_valid ? _GEN_10 : validArray[4]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_7 = io_update_valid ? _GEN_13 : validArray[7]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_6 = io_update_valid ? _GEN_12 : validArray[6]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_lo_lo_lo_lo = {newValidArray_7,newValidArray_6,newValidArray_5,newValidArray_4,
    newValidArray_3,newValidArray_2,newValidArray_1,newValidArray_0}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_9 = io_update_valid ? _GEN_15 : validArray[9]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_8 = io_update_valid ? _GEN_14 : validArray[8]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_11 = io_update_valid ? _GEN_17 : validArray[11]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_10 = io_update_valid ? _GEN_16 : validArray[10]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_13 = io_update_valid ? _GEN_19 : validArray[13]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_12 = io_update_valid ? _GEN_18 : validArray[12]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_15 = io_update_valid ? _GEN_21 : validArray[15]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_14 = io_update_valid ? _GEN_20 : validArray[14]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_lo_lo_lo_lo = {newValidArray_15,newValidArray_14,newValidArray_13,newValidArray_12,
    newValidArray_11,newValidArray_10,newValidArray_9,newValidArray_8,validArray_lo_lo_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_17 = io_update_valid ? _GEN_23 : validArray[17]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_16 = io_update_valid ? _GEN_22 : validArray[16]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_19 = io_update_valid ? _GEN_25 : validArray[19]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_18 = io_update_valid ? _GEN_24 : validArray[18]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_21 = io_update_valid ? _GEN_27 : validArray[21]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_20 = io_update_valid ? _GEN_26 : validArray[20]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_23 = io_update_valid ? _GEN_29 : validArray[23]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_22 = io_update_valid ? _GEN_28 : validArray[22]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_lo_lo_hi_lo = {newValidArray_23,newValidArray_22,newValidArray_21,newValidArray_20,
    newValidArray_19,newValidArray_18,newValidArray_17,newValidArray_16}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_25 = io_update_valid ? _GEN_31 : validArray[25]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_24 = io_update_valid ? _GEN_30 : validArray[24]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_27 = io_update_valid ? _GEN_33 : validArray[27]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_26 = io_update_valid ? _GEN_32 : validArray[26]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_29 = io_update_valid ? _GEN_35 : validArray[29]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_28 = io_update_valid ? _GEN_34 : validArray[28]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_31 = io_update_valid ? _GEN_37 : validArray[31]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_30 = io_update_valid ? _GEN_36 : validArray[30]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_lo_lo_lo = {newValidArray_31,newValidArray_30,newValidArray_29,newValidArray_28,
    newValidArray_27,newValidArray_26,newValidArray_25,newValidArray_24,validArray_lo_lo_lo_hi_lo,validArray_lo_lo_lo_lo
    }; // @[ITTAGE.scala 292:33]
  wire  newValidArray_33 = io_update_valid ? _GEN_39 : validArray[33]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_32 = io_update_valid ? _GEN_38 : validArray[32]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_35 = io_update_valid ? _GEN_41 : validArray[35]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_34 = io_update_valid ? _GEN_40 : validArray[34]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_37 = io_update_valid ? _GEN_43 : validArray[37]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_36 = io_update_valid ? _GEN_42 : validArray[36]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_39 = io_update_valid ? _GEN_45 : validArray[39]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_38 = io_update_valid ? _GEN_44 : validArray[38]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_lo_hi_lo_lo = {newValidArray_39,newValidArray_38,newValidArray_37,newValidArray_36,
    newValidArray_35,newValidArray_34,newValidArray_33,newValidArray_32}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_41 = io_update_valid ? _GEN_47 : validArray[41]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_40 = io_update_valid ? _GEN_46 : validArray[40]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_43 = io_update_valid ? _GEN_49 : validArray[43]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_42 = io_update_valid ? _GEN_48 : validArray[42]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_45 = io_update_valid ? _GEN_51 : validArray[45]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_44 = io_update_valid ? _GEN_50 : validArray[44]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_47 = io_update_valid ? _GEN_53 : validArray[47]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_46 = io_update_valid ? _GEN_52 : validArray[46]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_lo_lo_hi_lo = {newValidArray_47,newValidArray_46,newValidArray_45,newValidArray_44,
    newValidArray_43,newValidArray_42,newValidArray_41,newValidArray_40,validArray_lo_lo_hi_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_49 = io_update_valid ? _GEN_55 : validArray[49]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_48 = io_update_valid ? _GEN_54 : validArray[48]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_51 = io_update_valid ? _GEN_57 : validArray[51]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_50 = io_update_valid ? _GEN_56 : validArray[50]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_53 = io_update_valid ? _GEN_59 : validArray[53]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_52 = io_update_valid ? _GEN_58 : validArray[52]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_55 = io_update_valid ? _GEN_61 : validArray[55]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_54 = io_update_valid ? _GEN_60 : validArray[54]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_lo_hi_hi_lo = {newValidArray_55,newValidArray_54,newValidArray_53,newValidArray_52,
    newValidArray_51,newValidArray_50,newValidArray_49,newValidArray_48}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_57 = io_update_valid ? _GEN_63 : validArray[57]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_56 = io_update_valid ? _GEN_62 : validArray[56]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_59 = io_update_valid ? _GEN_65 : validArray[59]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_58 = io_update_valid ? _GEN_64 : validArray[58]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_61 = io_update_valid ? _GEN_67 : validArray[61]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_60 = io_update_valid ? _GEN_66 : validArray[60]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_63 = io_update_valid ? _GEN_69 : validArray[63]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_62 = io_update_valid ? _GEN_68 : validArray[62]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_lo_lo_hi = {newValidArray_63,newValidArray_62,newValidArray_61,newValidArray_60,
    newValidArray_59,newValidArray_58,newValidArray_57,newValidArray_56,validArray_lo_lo_hi_hi_lo,validArray_lo_lo_hi_lo
    }; // @[ITTAGE.scala 292:33]
  wire  newValidArray_65 = io_update_valid ? _GEN_71 : validArray[65]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_64 = io_update_valid ? _GEN_70 : validArray[64]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_67 = io_update_valid ? _GEN_73 : validArray[67]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_66 = io_update_valid ? _GEN_72 : validArray[66]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_69 = io_update_valid ? _GEN_75 : validArray[69]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_68 = io_update_valid ? _GEN_74 : validArray[68]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_71 = io_update_valid ? _GEN_77 : validArray[71]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_70 = io_update_valid ? _GEN_76 : validArray[70]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_hi_lo_lo_lo = {newValidArray_71,newValidArray_70,newValidArray_69,newValidArray_68,
    newValidArray_67,newValidArray_66,newValidArray_65,newValidArray_64}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_73 = io_update_valid ? _GEN_79 : validArray[73]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_72 = io_update_valid ? _GEN_78 : validArray[72]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_75 = io_update_valid ? _GEN_81 : validArray[75]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_74 = io_update_valid ? _GEN_80 : validArray[74]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_77 = io_update_valid ? _GEN_83 : validArray[77]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_76 = io_update_valid ? _GEN_82 : validArray[76]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_79 = io_update_valid ? _GEN_85 : validArray[79]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_78 = io_update_valid ? _GEN_84 : validArray[78]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_lo_hi_lo_lo = {newValidArray_79,newValidArray_78,newValidArray_77,newValidArray_76,
    newValidArray_75,newValidArray_74,newValidArray_73,newValidArray_72,validArray_lo_hi_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_81 = io_update_valid ? _GEN_87 : validArray[81]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_80 = io_update_valid ? _GEN_86 : validArray[80]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_83 = io_update_valid ? _GEN_89 : validArray[83]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_82 = io_update_valid ? _GEN_88 : validArray[82]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_85 = io_update_valid ? _GEN_91 : validArray[85]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_84 = io_update_valid ? _GEN_90 : validArray[84]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_87 = io_update_valid ? _GEN_93 : validArray[87]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_86 = io_update_valid ? _GEN_92 : validArray[86]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_hi_lo_hi_lo = {newValidArray_87,newValidArray_86,newValidArray_85,newValidArray_84,
    newValidArray_83,newValidArray_82,newValidArray_81,newValidArray_80}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_89 = io_update_valid ? _GEN_95 : validArray[89]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_88 = io_update_valid ? _GEN_94 : validArray[88]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_91 = io_update_valid ? _GEN_97 : validArray[91]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_90 = io_update_valid ? _GEN_96 : validArray[90]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_93 = io_update_valid ? _GEN_99 : validArray[93]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_92 = io_update_valid ? _GEN_98 : validArray[92]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_95 = io_update_valid ? _GEN_101 : validArray[95]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_94 = io_update_valid ? _GEN_100 : validArray[94]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_lo_hi_lo = {newValidArray_95,newValidArray_94,newValidArray_93,newValidArray_92,
    newValidArray_91,newValidArray_90,newValidArray_89,newValidArray_88,validArray_lo_hi_lo_hi_lo,validArray_lo_hi_lo_lo
    }; // @[ITTAGE.scala 292:33]
  wire  newValidArray_97 = io_update_valid ? _GEN_103 : validArray[97]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_96 = io_update_valid ? _GEN_102 : validArray[96]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_99 = io_update_valid ? _GEN_105 : validArray[99]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_98 = io_update_valid ? _GEN_104 : validArray[98]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_101 = io_update_valid ? _GEN_107 : validArray[101]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_100 = io_update_valid ? _GEN_106 : validArray[100]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_103 = io_update_valid ? _GEN_109 : validArray[103]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_102 = io_update_valid ? _GEN_108 : validArray[102]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_hi_hi_lo_lo = {newValidArray_103,newValidArray_102,newValidArray_101,newValidArray_100,
    newValidArray_99,newValidArray_98,newValidArray_97,newValidArray_96}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_105 = io_update_valid ? _GEN_111 : validArray[105]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_104 = io_update_valid ? _GEN_110 : validArray[104]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_107 = io_update_valid ? _GEN_113 : validArray[107]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_106 = io_update_valid ? _GEN_112 : validArray[106]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_109 = io_update_valid ? _GEN_115 : validArray[109]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_108 = io_update_valid ? _GEN_114 : validArray[108]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_111 = io_update_valid ? _GEN_117 : validArray[111]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_110 = io_update_valid ? _GEN_116 : validArray[110]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_lo_hi_hi_lo = {newValidArray_111,newValidArray_110,newValidArray_109,newValidArray_108,
    newValidArray_107,newValidArray_106,newValidArray_105,newValidArray_104,validArray_lo_hi_hi_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_113 = io_update_valid ? _GEN_119 : validArray[113]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_112 = io_update_valid ? _GEN_118 : validArray[112]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_115 = io_update_valid ? _GEN_121 : validArray[115]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_114 = io_update_valid ? _GEN_120 : validArray[114]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_117 = io_update_valid ? _GEN_123 : validArray[117]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_116 = io_update_valid ? _GEN_122 : validArray[116]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_119 = io_update_valid ? _GEN_125 : validArray[119]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_118 = io_update_valid ? _GEN_124 : validArray[118]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_lo_hi_hi_hi_lo = {newValidArray_119,newValidArray_118,newValidArray_117,newValidArray_116,
    newValidArray_115,newValidArray_114,newValidArray_113,newValidArray_112}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_121 = io_update_valid ? _GEN_127 : validArray[121]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_120 = io_update_valid ? _GEN_126 : validArray[120]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_123 = io_update_valid ? _GEN_129 : validArray[123]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_122 = io_update_valid ? _GEN_128 : validArray[122]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_125 = io_update_valid ? _GEN_131 : validArray[125]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_124 = io_update_valid ? _GEN_130 : validArray[124]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_127 = io_update_valid ? _GEN_133 : validArray[127]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_126 = io_update_valid ? _GEN_132 : validArray[126]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_lo_hi_hi = {newValidArray_127,newValidArray_126,newValidArray_125,newValidArray_124,
    newValidArray_123,newValidArray_122,newValidArray_121,newValidArray_120,validArray_lo_hi_hi_hi_lo,
    validArray_lo_hi_hi_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_129 = io_update_valid ? _GEN_135 : validArray[129]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_128 = io_update_valid ? _GEN_134 : validArray[128]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_131 = io_update_valid ? _GEN_137 : validArray[131]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_130 = io_update_valid ? _GEN_136 : validArray[130]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_133 = io_update_valid ? _GEN_139 : validArray[133]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_132 = io_update_valid ? _GEN_138 : validArray[132]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_135 = io_update_valid ? _GEN_141 : validArray[135]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_134 = io_update_valid ? _GEN_140 : validArray[134]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_lo_lo_lo_lo = {newValidArray_135,newValidArray_134,newValidArray_133,newValidArray_132,
    newValidArray_131,newValidArray_130,newValidArray_129,newValidArray_128}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_137 = io_update_valid ? _GEN_143 : validArray[137]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_136 = io_update_valid ? _GEN_142 : validArray[136]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_139 = io_update_valid ? _GEN_145 : validArray[139]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_138 = io_update_valid ? _GEN_144 : validArray[138]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_141 = io_update_valid ? _GEN_147 : validArray[141]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_140 = io_update_valid ? _GEN_146 : validArray[140]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_143 = io_update_valid ? _GEN_149 : validArray[143]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_142 = io_update_valid ? _GEN_148 : validArray[142]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_hi_lo_lo_lo = {newValidArray_143,newValidArray_142,newValidArray_141,newValidArray_140,
    newValidArray_139,newValidArray_138,newValidArray_137,newValidArray_136,validArray_hi_lo_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_145 = io_update_valid ? _GEN_151 : validArray[145]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_144 = io_update_valid ? _GEN_150 : validArray[144]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_147 = io_update_valid ? _GEN_153 : validArray[147]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_146 = io_update_valid ? _GEN_152 : validArray[146]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_149 = io_update_valid ? _GEN_155 : validArray[149]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_148 = io_update_valid ? _GEN_154 : validArray[148]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_151 = io_update_valid ? _GEN_157 : validArray[151]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_150 = io_update_valid ? _GEN_156 : validArray[150]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_lo_lo_hi_lo = {newValidArray_151,newValidArray_150,newValidArray_149,newValidArray_148,
    newValidArray_147,newValidArray_146,newValidArray_145,newValidArray_144}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_153 = io_update_valid ? _GEN_159 : validArray[153]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_152 = io_update_valid ? _GEN_158 : validArray[152]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_155 = io_update_valid ? _GEN_161 : validArray[155]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_154 = io_update_valid ? _GEN_160 : validArray[154]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_157 = io_update_valid ? _GEN_163 : validArray[157]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_156 = io_update_valid ? _GEN_162 : validArray[156]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_159 = io_update_valid ? _GEN_165 : validArray[159]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_158 = io_update_valid ? _GEN_164 : validArray[158]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_hi_lo_lo = {newValidArray_159,newValidArray_158,newValidArray_157,newValidArray_156,
    newValidArray_155,newValidArray_154,newValidArray_153,newValidArray_152,validArray_hi_lo_lo_hi_lo,
    validArray_hi_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_161 = io_update_valid ? _GEN_167 : validArray[161]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_160 = io_update_valid ? _GEN_166 : validArray[160]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_163 = io_update_valid ? _GEN_169 : validArray[163]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_162 = io_update_valid ? _GEN_168 : validArray[162]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_165 = io_update_valid ? _GEN_171 : validArray[165]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_164 = io_update_valid ? _GEN_170 : validArray[164]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_167 = io_update_valid ? _GEN_173 : validArray[167]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_166 = io_update_valid ? _GEN_172 : validArray[166]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_lo_hi_lo_lo = {newValidArray_167,newValidArray_166,newValidArray_165,newValidArray_164,
    newValidArray_163,newValidArray_162,newValidArray_161,newValidArray_160}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_169 = io_update_valid ? _GEN_175 : validArray[169]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_168 = io_update_valid ? _GEN_174 : validArray[168]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_171 = io_update_valid ? _GEN_177 : validArray[171]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_170 = io_update_valid ? _GEN_176 : validArray[170]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_173 = io_update_valid ? _GEN_179 : validArray[173]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_172 = io_update_valid ? _GEN_178 : validArray[172]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_175 = io_update_valid ? _GEN_181 : validArray[175]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_174 = io_update_valid ? _GEN_180 : validArray[174]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_hi_lo_hi_lo = {newValidArray_175,newValidArray_174,newValidArray_173,newValidArray_172,
    newValidArray_171,newValidArray_170,newValidArray_169,newValidArray_168,validArray_hi_lo_hi_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_177 = io_update_valid ? _GEN_183 : validArray[177]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_176 = io_update_valid ? _GEN_182 : validArray[176]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_179 = io_update_valid ? _GEN_185 : validArray[179]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_178 = io_update_valid ? _GEN_184 : validArray[178]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_181 = io_update_valid ? _GEN_187 : validArray[181]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_180 = io_update_valid ? _GEN_186 : validArray[180]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_183 = io_update_valid ? _GEN_189 : validArray[183]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_182 = io_update_valid ? _GEN_188 : validArray[182]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_lo_hi_hi_lo = {newValidArray_183,newValidArray_182,newValidArray_181,newValidArray_180,
    newValidArray_179,newValidArray_178,newValidArray_177,newValidArray_176}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_185 = io_update_valid ? _GEN_191 : validArray[185]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_184 = io_update_valid ? _GEN_190 : validArray[184]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_187 = io_update_valid ? _GEN_193 : validArray[187]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_186 = io_update_valid ? _GEN_192 : validArray[186]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_189 = io_update_valid ? _GEN_195 : validArray[189]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_188 = io_update_valid ? _GEN_194 : validArray[188]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_191 = io_update_valid ? _GEN_197 : validArray[191]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_190 = io_update_valid ? _GEN_196 : validArray[190]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_hi_lo_hi = {newValidArray_191,newValidArray_190,newValidArray_189,newValidArray_188,
    newValidArray_187,newValidArray_186,newValidArray_185,newValidArray_184,validArray_hi_lo_hi_hi_lo,
    validArray_hi_lo_hi_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_193 = io_update_valid ? _GEN_199 : validArray[193]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_192 = io_update_valid ? _GEN_198 : validArray[192]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_195 = io_update_valid ? _GEN_201 : validArray[195]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_194 = io_update_valid ? _GEN_200 : validArray[194]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_197 = io_update_valid ? _GEN_203 : validArray[197]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_196 = io_update_valid ? _GEN_202 : validArray[196]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_199 = io_update_valid ? _GEN_205 : validArray[199]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_198 = io_update_valid ? _GEN_204 : validArray[198]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_hi_lo_lo_lo = {newValidArray_199,newValidArray_198,newValidArray_197,newValidArray_196,
    newValidArray_195,newValidArray_194,newValidArray_193,newValidArray_192}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_201 = io_update_valid ? _GEN_207 : validArray[201]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_200 = io_update_valid ? _GEN_206 : validArray[200]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_203 = io_update_valid ? _GEN_209 : validArray[203]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_202 = io_update_valid ? _GEN_208 : validArray[202]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_205 = io_update_valid ? _GEN_211 : validArray[205]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_204 = io_update_valid ? _GEN_210 : validArray[204]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_207 = io_update_valid ? _GEN_213 : validArray[207]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_206 = io_update_valid ? _GEN_212 : validArray[206]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_hi_hi_lo_lo = {newValidArray_207,newValidArray_206,newValidArray_205,newValidArray_204,
    newValidArray_203,newValidArray_202,newValidArray_201,newValidArray_200,validArray_hi_hi_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_209 = io_update_valid ? _GEN_215 : validArray[209]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_208 = io_update_valid ? _GEN_214 : validArray[208]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_211 = io_update_valid ? _GEN_217 : validArray[211]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_210 = io_update_valid ? _GEN_216 : validArray[210]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_213 = io_update_valid ? _GEN_219 : validArray[213]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_212 = io_update_valid ? _GEN_218 : validArray[212]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_215 = io_update_valid ? _GEN_221 : validArray[215]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_214 = io_update_valid ? _GEN_220 : validArray[214]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_hi_lo_hi_lo = {newValidArray_215,newValidArray_214,newValidArray_213,newValidArray_212,
    newValidArray_211,newValidArray_210,newValidArray_209,newValidArray_208}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_217 = io_update_valid ? _GEN_223 : validArray[217]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_216 = io_update_valid ? _GEN_222 : validArray[216]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_219 = io_update_valid ? _GEN_225 : validArray[219]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_218 = io_update_valid ? _GEN_224 : validArray[218]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_221 = io_update_valid ? _GEN_227 : validArray[221]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_220 = io_update_valid ? _GEN_226 : validArray[220]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_223 = io_update_valid ? _GEN_229 : validArray[223]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_222 = io_update_valid ? _GEN_228 : validArray[222]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_hi_hi_lo = {newValidArray_223,newValidArray_222,newValidArray_221,newValidArray_220,
    newValidArray_219,newValidArray_218,newValidArray_217,newValidArray_216,validArray_hi_hi_lo_hi_lo,
    validArray_hi_hi_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_225 = io_update_valid ? _GEN_231 : validArray[225]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_224 = io_update_valid ? _GEN_230 : validArray[224]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_227 = io_update_valid ? _GEN_233 : validArray[227]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_226 = io_update_valid ? _GEN_232 : validArray[226]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_229 = io_update_valid ? _GEN_235 : validArray[229]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_228 = io_update_valid ? _GEN_234 : validArray[228]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_231 = io_update_valid ? _GEN_237 : validArray[231]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_230 = io_update_valid ? _GEN_236 : validArray[230]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_hi_hi_lo_lo = {newValidArray_231,newValidArray_230,newValidArray_229,newValidArray_228,
    newValidArray_227,newValidArray_226,newValidArray_225,newValidArray_224}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_233 = io_update_valid ? _GEN_239 : validArray[233]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_232 = io_update_valid ? _GEN_238 : validArray[232]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_235 = io_update_valid ? _GEN_241 : validArray[235]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_234 = io_update_valid ? _GEN_240 : validArray[234]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_237 = io_update_valid ? _GEN_243 : validArray[237]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_236 = io_update_valid ? _GEN_242 : validArray[236]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_239 = io_update_valid ? _GEN_245 : validArray[239]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_238 = io_update_valid ? _GEN_244 : validArray[238]; // @[ITTAGE.scala 290:26 289:30]
  wire [15:0] validArray_hi_hi_hi_lo = {newValidArray_239,newValidArray_238,newValidArray_237,newValidArray_236,
    newValidArray_235,newValidArray_234,newValidArray_233,newValidArray_232,validArray_hi_hi_hi_lo_lo}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_241 = io_update_valid ? _GEN_247 : validArray[241]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_240 = io_update_valid ? _GEN_246 : validArray[240]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_243 = io_update_valid ? _GEN_249 : validArray[243]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_242 = io_update_valid ? _GEN_248 : validArray[242]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_245 = io_update_valid ? _GEN_251 : validArray[245]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_244 = io_update_valid ? _GEN_250 : validArray[244]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_247 = io_update_valid ? _GEN_253 : validArray[247]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_246 = io_update_valid ? _GEN_252 : validArray[246]; // @[ITTAGE.scala 290:26 289:30]
  wire [7:0] validArray_hi_hi_hi_hi_lo = {newValidArray_247,newValidArray_246,newValidArray_245,newValidArray_244,
    newValidArray_243,newValidArray_242,newValidArray_241,newValidArray_240}; // @[ITTAGE.scala 292:33]
  wire  newValidArray_249 = io_update_valid ? _GEN_255 : validArray[249]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_248 = io_update_valid ? _GEN_254 : validArray[248]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_251 = io_update_valid ? _GEN_257 : validArray[251]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_250 = io_update_valid ? _GEN_256 : validArray[250]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_253 = io_update_valid ? _GEN_259 : validArray[253]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_252 = io_update_valid ? _GEN_258 : validArray[252]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_255 = io_update_valid ? _GEN_261 : validArray[255]; // @[ITTAGE.scala 290:26 289:30]
  wire  newValidArray_254 = io_update_valid ? _GEN_260 : validArray[254]; // @[ITTAGE.scala 290:26 289:30]
  wire [31:0] validArray_hi_hi_hi = {newValidArray_255,newValidArray_254,newValidArray_253,newValidArray_252,
    newValidArray_251,newValidArray_250,newValidArray_249,newValidArray_248,validArray_hi_hi_hi_hi_lo,
    validArray_hi_hi_hi_lo}; // @[ITTAGE.scala 292:33]
  wire [255:0] _validArray_T = {validArray_hi_hi_hi,validArray_hi_hi_lo,validArray_hi_lo_hi,validArray_hi_lo_lo,
    validArray_lo_hi_hi,validArray_lo_hi_lo,validArray_lo_lo_hi,validArray_lo_lo_lo}; // @[ITTAGE.scala 292:33]
  Folded1WDataModuleTemplate us ( // @[ITTAGE.scala 223:18]
    .clock(us_clock),
    .reset(us_reset),
    .io_raddr_0(us_io_raddr_0),
    .io_rdata_0(us_io_rdata_0),
    .io_wen(us_io_wen),
    .io_waddr(us_io_waddr),
    .io_wdata(us_io_wdata),
    .io_resetEn(us_io_resetEn)
  );
  FoldedSRAMTemplate_36 table_banks_0 ( // @[ITTAGE.scala 226:11]
    .clock(table_banks_0_clock),
    .reset(table_banks_0_reset),
    .io_rreq_valid(table_banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(table_banks_0_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_0_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(table_banks_0_io_rresp_data_0_target),
    .io_wreq_valid(table_banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_0_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_0_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(table_banks_0_io_wreq_bits_data_0_target)
  );
  FoldedSRAMTemplate_36 table_banks_1 ( // @[ITTAGE.scala 226:11]
    .clock(table_banks_1_clock),
    .reset(table_banks_1_reset),
    .io_rreq_valid(table_banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(table_banks_1_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_1_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(table_banks_1_io_rresp_data_0_target),
    .io_wreq_valid(table_banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_1_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_1_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(table_banks_1_io_wreq_bits_data_0_target)
  );
  WrBypass_73 wrbypass ( // @[ITTAGE.scala 277:24]
    .clock(wrbypass_clock),
    .reset(wrbypass_reset),
    .io_wen(wrbypass_io_wen),
    .io_write_idx(wrbypass_io_write_idx),
    .io_write_data_0(wrbypass_io_write_data_0),
    .io_hit(wrbypass_io_hit),
    .io_hit_data_0_bits(wrbypass_io_hit_data_0_bits)
  );
  assign io_req_ready = 1'h1; // @[ITTAGE.scala 269:16]
  assign io_resp_valid = s1_req_rhit & ~resp_invalid_by_write; // @[ITTAGE.scala 241:50]
  assign io_resp_bits_ctr = _resp_selected_T_3 | _resp_selected_T_4; // @[Mux.scala 27:73]
  assign io_resp_bits_u = {{1'd0}, us_io_rdata_0}; // @[ITTAGE.scala 243:18]
  assign io_resp_bits_target = _resp_selected_T | _resp_selected_T_1; // @[Mux.scala 27:73]
  assign us_clock = clock;
  assign us_reset = reset;
  assign us_io_raddr_0 = _idx_T[7:0]; // @[ITTAGE.scala 187:40]
  assign us_io_wen = io_update_uValid; // @[ITTAGE.scala 273:13]
  assign us_io_waddr = _idx_T_1[7:0]; // @[ITTAGE.scala 187:40]
  assign us_io_wdata = io_update_u; // @[ITTAGE.scala 275:15]
  assign us_io_resetEn = io_update_reset_u; // @[ITTAGE.scala 296:23]
  assign table_banks_0_clock = clock;
  assign table_banks_0_reset = reset;
  assign table_banks_0_io_rreq_valid = _T & s0_bank_req_1h_0; // @[ITTAGE.scala 229:50]
  assign table_banks_0_io_rreq_bits_setIdx = s0_idx[7:1]; // @[ITTAGE.scala 167:37]
  assign table_banks_0_io_wreq_valid = io_update_valid & update_req_bank_1h_0; // @[ITTAGE.scala 261:33]
  assign table_banks_0_io_wreq_bits_setIdx = update_idx[7:1]; // @[ITTAGE.scala 167:37]
  assign table_banks_0_io_wreq_bits_data_0_tag = _tag_T_7[8:0]; // @[ITTAGE.scala 188:82]
  assign table_banks_0_io_wreq_bits_data_0_ctr = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 284:28]
  assign table_banks_0_io_wreq_bits_data_0_target = io_update_alloc | update_wdata_ctr_oldSatNotTaken ?
    io_update_target : io_update_old_target; // @[ITTAGE.scala 287:29]
  assign table_banks_1_clock = clock;
  assign table_banks_1_reset = reset;
  assign table_banks_1_io_rreq_valid = _T & s0_idx[0]; // @[ITTAGE.scala 229:50]
  assign table_banks_1_io_rreq_bits_setIdx = s0_idx[7:1]; // @[ITTAGE.scala 167:37]
  assign table_banks_1_io_wreq_valid = io_update_valid & update_idx[0]; // @[ITTAGE.scala 261:33]
  assign table_banks_1_io_wreq_bits_setIdx = update_idx[7:1]; // @[ITTAGE.scala 167:37]
  assign table_banks_1_io_wreq_bits_data_0_tag = _tag_T_7[8:0]; // @[ITTAGE.scala 188:82]
  assign table_banks_1_io_wreq_bits_data_0_ctr = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 284:28]
  assign table_banks_1_io_wreq_bits_data_0_target = io_update_alloc | update_wdata_ctr_oldSatNotTaken ?
    io_update_target : io_update_old_target; // @[ITTAGE.scala 287:29]
  assign wrbypass_clock = clock;
  assign wrbypass_reset = reset;
  assign wrbypass_io_wen = io_update_valid; // @[ITTAGE.scala 279:19]
  assign wrbypass_io_write_idx = _idx_T_1[7:0]; // @[ITTAGE.scala 187:40]
  assign wrbypass_io_write_data_0 = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 284:28]
  always @(posedge clock) begin
    if (_T) begin // @[Reg.scala 17:18]
      s1_idx <= s0_idx; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_tag <= s0_tag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_0 <= s0_bank_req_1h_0; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_1 <= s0_idx[0]; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_0 <= _s1_bank_has_write_on_this_req_WIRE_0; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_1 <= _s1_bank_has_write_on_this_req_WIRE_1; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ITTAGE.scala 290:26]
      validArray <= 256'h0; // @[ITTAGE.scala 292:16]
    end else if (io_update_valid) begin // @[ITTAGE.scala 206:27]
      validArray <= _validArray_T;
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
  validArray = _RAND_0[255:0];
  _RAND_1 = {1{`RANDOM}};
  s1_idx = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  s1_tag = _RAND_2[8:0];
  _RAND_3 = {1{`RANDOM}};
  s1_bank_req_1h_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_bank_req_1h_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_1 = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    validArray = 256'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

