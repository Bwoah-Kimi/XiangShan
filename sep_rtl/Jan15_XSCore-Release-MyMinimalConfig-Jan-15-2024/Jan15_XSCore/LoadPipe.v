module LoadPipe(
  input          clock,
  input          reset,
  output         io_lsu_req_ready,
  input          io_lsu_req_valid,
  input  [4:0]   io_lsu_req_bits_cmd,
  input  [38:0]  io_lsu_req_bits_vaddr,
  input  [3:0]   io_lsu_req_bits_instrtype,
  output         io_lsu_resp_valid,
  output [127:0] io_lsu_resp_bits_data_delayed,
  output         io_lsu_resp_bits_miss,
  output         io_lsu_resp_bits_tag_error,
  output [1:0]   io_lsu_resp_bits_mshr_id,
  output         io_lsu_resp_bits_handled,
  output         io_lsu_resp_bits_error_delayed,
  input          io_lsu_s1_kill,
  input          io_lsu_s2_kill,
  input  [35:0]  io_lsu_s1_paddr_dup_lsu,
  input  [35:0]  io_lsu_s1_paddr_dup_dcache,
  output         io_lsu_s1_disable_fast_wakeup,
  output         io_lsu_s2_bank_conflict,
  output         io_lsu_s2_mq_nack,
  output         io_meta_read_valid,
  output [5:0]   io_meta_read_bits_idx,
  input  [1:0]   io_meta_resp_0_coh_state,
  input  [1:0]   io_meta_resp_1_coh_state,
  input  [1:0]   io_meta_resp_2_coh_state,
  input  [1:0]   io_meta_resp_3_coh_state,
  input  [1:0]   io_meta_resp_4_coh_state,
  input  [1:0]   io_meta_resp_5_coh_state,
  input  [1:0]   io_meta_resp_6_coh_state,
  input  [1:0]   io_meta_resp_7_coh_state,
  input          io_extra_meta_resp_0_error,
  input          io_extra_meta_resp_1_error,
  input          io_extra_meta_resp_2_error,
  input          io_extra_meta_resp_3_error,
  input          io_extra_meta_resp_4_error,
  input          io_extra_meta_resp_5_error,
  input          io_extra_meta_resp_6_error,
  input          io_extra_meta_resp_7_error,
  input          io_tag_read_ready,
  output         io_tag_read_valid,
  output [5:0]   io_tag_read_bits_idx,
  input  [29:0]  io_tag_resp_0,
  input  [29:0]  io_tag_resp_1,
  input  [29:0]  io_tag_resp_2,
  input  [29:0]  io_tag_resp_3,
  input  [29:0]  io_tag_resp_4,
  input  [29:0]  io_tag_resp_5,
  input  [29:0]  io_tag_resp_6,
  input  [29:0]  io_tag_resp_7,
  input          io_banked_data_read_ready,
  output         io_banked_data_read_valid,
  output [7:0]   io_banked_data_read_bits_way_en,
  output [35:0]  io_banked_data_read_bits_addr,
  output [7:0]   io_banked_data_read_bits_bankMask,
  input  [63:0]  io_banked_data_resp_0_raw_data,
  input          io_read_error_delayed_0,
  input          io_bank_conflict_slow,
  input          io_miss_req_ready,
  output         io_miss_req_valid,
  output [3:0]   io_miss_req_bits_source,
  output [4:0]   io_miss_req_bits_cmd,
  output [35:0]  io_miss_req_bits_addr,
  output [38:0]  io_miss_req_bits_vaddr,
  output [7:0]   io_miss_req_bits_way_en,
  output [1:0]   io_miss_req_bits_req_coh_state,
  output [1:0]   io_miss_req_bits_replace_coh_state,
  output [23:0]  io_miss_req_bits_replace_tag,
  output         io_miss_req_bits_cancel,
  input  [1:0]   io_miss_resp_id,
  input          io_miss_resp_handled,
  input          io_miss_resp_merged,
  input  [7:0]   io_miss_resp_repl_way_en,
  output         io_replace_access_valid,
  output [5:0]   io_replace_access_bits_set,
  output [2:0]   io_replace_access_bits_way,
  output [5:0]   io_replace_way_set_bits,
  input  [2:0]   io_replace_way_way,
  input          io_disable_ld_fast_wakeup,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  input          io_mq_enq_cancel,
  output [5:0]   io_perf_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [255:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
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
  reg  s1_valid; // @[LoadPipe.scala 170:25]
  wire  s1_ready = ~s1_valid | s1_valid; // @[LoadPipe.scala 182:25]
  wire  _io_meta_read_valid_T = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  wire  s0_fire = _io_meta_read_valid_T & s1_ready; // @[LoadPipe.scala 131:26]
  wire [7:0] s0_bank_oh_64 = 8'h1 << io_lsu_req_bits_vaddr[5:3]; // @[OneHot.scala 57:35]
  wire [8:0] _GEN_65 = {{1'd0}, s0_bank_oh_64}; // @[LoadPipe.scala 136:54]
  reg [4:0] s1_req_cmd; // @[Reg.scala 16:16]
  reg [38:0] s1_req_vaddr; // @[Reg.scala 16:16]
  reg [3:0] s1_req_instrtype; // @[Reg.scala 16:16]
  wire [38:0] s1_vaddr = {s1_req_vaddr[38:6],io_lsu_s1_paddr_dup_lsu[5:0]}; // @[Cat.scala 31:58]
  reg [8:0] s1_bank_oh; // @[Reg.scala 16:16]
  wire  s1_nack_data = ~io_banked_data_read_ready; // @[LoadPipe.scala 180:22]
  wire  _GEN_12 = s1_valid ? 1'h0 : s1_valid; // @[LoadPipe.scala 185:23 170:25 185:34]
  wire [23:0] tag_resp_0 = io_tag_resp_0[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_1 = io_tag_resp_1[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_2 = io_tag_resp_2[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_3 = io_tag_resp_3[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_4 = io_tag_resp_4[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_5 = io_tag_resp_5[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_6 = io_tag_resp_6[23:0]; // @[LoadPipe.scala 191:40]
  wire [23:0] tag_resp_7 = io_tag_resp_7[23:0]; // @[LoadPipe.scala 191:40]
  wire  _s1_tag_match_way_dup_dc_T_2 = io_meta_resp_0_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_3 = tag_resp_0 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_2; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_6 = io_meta_resp_1_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_7 = tag_resp_1 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_6; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_10 = io_meta_resp_2_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_11 = tag_resp_2 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_10; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_14 = io_meta_resp_3_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_15 = tag_resp_3 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_14; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_18 = io_meta_resp_4_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_19 = tag_resp_4 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_18; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_22 = io_meta_resp_5_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_23 = tag_resp_5 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_22; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_26 = io_meta_resp_6_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_27 = tag_resp_6 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_26; // @[LoadPipe.scala 195:97]
  wire  _s1_tag_match_way_dup_dc_T_30 = io_meta_resp_7_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_dup_dc_T_31 = tag_resp_7 == io_lsu_s1_paddr_dup_dcache[35:12] & _s1_tag_match_way_dup_dc_T_30; // @[LoadPipe.scala 195:97]
  wire [3:0] s1_tag_match_way_dup_dc_lo = {_s1_tag_match_way_dup_dc_T_15,_s1_tag_match_way_dup_dc_T_11,
    _s1_tag_match_way_dup_dc_T_7,_s1_tag_match_way_dup_dc_T_3}; // @[LoadPipe.scala 195:128]
  wire [3:0] s1_tag_match_way_dup_dc_hi = {_s1_tag_match_way_dup_dc_T_31,_s1_tag_match_way_dup_dc_T_27,
    _s1_tag_match_way_dup_dc_T_23,_s1_tag_match_way_dup_dc_T_19}; // @[LoadPipe.scala 195:128]
  wire [7:0] s1_tag_match_way_dup_dc = {_s1_tag_match_way_dup_dc_T_31,_s1_tag_match_way_dup_dc_T_27,
    _s1_tag_match_way_dup_dc_T_23,_s1_tag_match_way_dup_dc_T_19,_s1_tag_match_way_dup_dc_T_15,
    _s1_tag_match_way_dup_dc_T_11,_s1_tag_match_way_dup_dc_T_7,_s1_tag_match_way_dup_dc_T_3}; // @[LoadPipe.scala 195:128]
  wire  s1_tag_match_dup_dc = |s1_tag_match_way_dup_dc; // @[LoadPipe.scala 245:53]
  wire [1:0] _s1_hit_meta_T_8 = s1_tag_match_way_dup_dc[0] ? io_meta_resp_0_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_9 = s1_tag_match_way_dup_dc[1] ? io_meta_resp_1_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_10 = s1_tag_match_way_dup_dc[2] ? io_meta_resp_2_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_11 = s1_tag_match_way_dup_dc[3] ? io_meta_resp_3_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_12 = s1_tag_match_way_dup_dc[4] ? io_meta_resp_4_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_13 = s1_tag_match_way_dup_dc[5] ? io_meta_resp_5_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_14 = s1_tag_match_way_dup_dc[6] ? io_meta_resp_6_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_15 = s1_tag_match_way_dup_dc[7] ? io_meta_resp_7_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_16 = _s1_hit_meta_T_8 | _s1_hit_meta_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_17 = _s1_hit_meta_T_16 | _s1_hit_meta_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_18 = _s1_hit_meta_T_17 | _s1_hit_meta_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_19 = _s1_hit_meta_T_18 | _s1_hit_meta_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_20 = _s1_hit_meta_T_19 | _s1_hit_meta_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_21 = _s1_hit_meta_T_20 | _s1_hit_meta_T_14; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_meta_T_22 = _s1_hit_meta_T_21 | _s1_hit_meta_T_15; // @[Mux.scala 27:73]
  wire [1:0] s1_hit_meta_coh_state = s1_tag_match_dup_dc ? _s1_hit_meta_T_22 : 2'h0; // @[LoadPipe.scala 256:24]
  wire  _s1_hit_error_T_22 = s1_tag_match_way_dup_dc[0] & io_extra_meta_resp_0_error | s1_tag_match_way_dup_dc[1] &
    io_extra_meta_resp_1_error | s1_tag_match_way_dup_dc[2] & io_extra_meta_resp_2_error | s1_tag_match_way_dup_dc[3] &
    io_extra_meta_resp_3_error | s1_tag_match_way_dup_dc[4] & io_extra_meta_resp_4_error | s1_tag_match_way_dup_dc[5] &
    io_extra_meta_resp_5_error | s1_tag_match_way_dup_dc[6] & io_extra_meta_resp_6_error | s1_tag_match_way_dup_dc[7] &
    io_extra_meta_resp_7_error; // @[Mux.scala 27:73]
  wire  s1_hit_error = s1_tag_match_dup_dc & _s1_hit_error_T_22; // @[LoadPipe.scala 258:25]
  wire  s1_invalid_vec_0 = ~_s1_tag_match_way_dup_dc_T_2; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_1 = ~_s1_tag_match_way_dup_dc_T_6; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_2 = ~_s1_tag_match_way_dup_dc_T_10; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_3 = ~_s1_tag_match_way_dup_dc_T_14; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_4 = ~_s1_tag_match_way_dup_dc_T_18; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_5 = ~_s1_tag_match_way_dup_dc_T_22; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_6 = ~_s1_tag_match_way_dup_dc_T_26; // @[LoadPipe.scala 265:36]
  wire  s1_invalid_vec_7 = ~_s1_tag_match_way_dup_dc_T_30; // @[LoadPipe.scala 265:36]
  wire [7:0] _s1_have_invalid_way_T = {s1_invalid_vec_7,s1_invalid_vec_6,s1_invalid_vec_5,s1_invalid_vec_4,
    s1_invalid_vec_3,s1_invalid_vec_2,s1_invalid_vec_1,s1_invalid_vec_0}; // @[LoadPipe.scala 266:44]
  wire  s1_have_invalid_way = |_s1_have_invalid_way_T; // @[LoadPipe.scala 266:51]
  wire [255:0] _s1_invalid_way_en_T_9 = s1_invalid_vec_0 ? 256'h1 : 256'h2; // @[ParallelMux.scala 90:77]
  wire [255:0] _s1_invalid_way_en_T_11 = s1_invalid_vec_2 ? 256'h4 : 256'h8; // @[ParallelMux.scala 90:77]
  wire [255:0] _s1_invalid_way_en_T_13 = s1_invalid_vec_0 | s1_invalid_vec_1 ? _s1_invalid_way_en_T_9 :
    _s1_invalid_way_en_T_11; // @[ParallelMux.scala 90:77]
  wire [255:0] _s1_invalid_way_en_T_15 = s1_invalid_vec_4 ? 256'h10 : 256'h20; // @[ParallelMux.scala 90:77]
  wire [255:0] _s1_invalid_way_en_T_17 = s1_invalid_vec_6 ? 256'h40 : 256'h80; // @[ParallelMux.scala 90:77]
  wire [255:0] _s1_invalid_way_en_T_19 = s1_invalid_vec_4 | s1_invalid_vec_5 ? _s1_invalid_way_en_T_15 :
    _s1_invalid_way_en_T_17; // @[ParallelMux.scala 90:77]
  wire [255:0] s1_invalid_way_en = s1_invalid_vec_0 | s1_invalid_vec_1 | (s1_invalid_vec_2 | s1_invalid_vec_3) ?
    _s1_invalid_way_en_T_13 : _s1_invalid_way_en_T_19; // @[ParallelMux.scala 90:77]
  wire [7:0] _s1_repl_way_en_oh_T = 8'h1 << io_replace_way_way; // @[OneHot.scala 57:35]
  wire [255:0] s1_repl_way_en_oh = s1_have_invalid_way ? s1_invalid_way_en : {{248'd0}, _s1_repl_way_en_oh_T}; // @[LoadPipe.scala 268:30]
  wire [127:0] s1_repl_way_en_enc_hi = s1_repl_way_en_oh[255:128]; // @[OneHot.scala 30:18]
  wire [127:0] s1_repl_way_en_enc_lo = s1_repl_way_en_oh[127:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T = |s1_repl_way_en_enc_hi; // @[OneHot.scala 32:14]
  wire [127:0] _s1_repl_way_en_enc_T_1 = s1_repl_way_en_enc_hi | s1_repl_way_en_enc_lo; // @[OneHot.scala 32:28]
  wire [63:0] s1_repl_way_en_enc_hi_1 = _s1_repl_way_en_enc_T_1[127:64]; // @[OneHot.scala 30:18]
  wire [63:0] s1_repl_way_en_enc_lo_1 = _s1_repl_way_en_enc_T_1[63:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_2 = |s1_repl_way_en_enc_hi_1; // @[OneHot.scala 32:14]
  wire [63:0] _s1_repl_way_en_enc_T_3 = s1_repl_way_en_enc_hi_1 | s1_repl_way_en_enc_lo_1; // @[OneHot.scala 32:28]
  wire [31:0] s1_repl_way_en_enc_hi_2 = _s1_repl_way_en_enc_T_3[63:32]; // @[OneHot.scala 30:18]
  wire [31:0] s1_repl_way_en_enc_lo_2 = _s1_repl_way_en_enc_T_3[31:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_4 = |s1_repl_way_en_enc_hi_2; // @[OneHot.scala 32:14]
  wire [31:0] _s1_repl_way_en_enc_T_5 = s1_repl_way_en_enc_hi_2 | s1_repl_way_en_enc_lo_2; // @[OneHot.scala 32:28]
  wire [15:0] s1_repl_way_en_enc_hi_3 = _s1_repl_way_en_enc_T_5[31:16]; // @[OneHot.scala 30:18]
  wire [15:0] s1_repl_way_en_enc_lo_3 = _s1_repl_way_en_enc_T_5[15:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_6 = |s1_repl_way_en_enc_hi_3; // @[OneHot.scala 32:14]
  wire [15:0] _s1_repl_way_en_enc_T_7 = s1_repl_way_en_enc_hi_3 | s1_repl_way_en_enc_lo_3; // @[OneHot.scala 32:28]
  wire [7:0] s1_repl_way_en_enc_hi_4 = _s1_repl_way_en_enc_T_7[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] s1_repl_way_en_enc_lo_4 = _s1_repl_way_en_enc_T_7[7:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_8 = |s1_repl_way_en_enc_hi_4; // @[OneHot.scala 32:14]
  wire [7:0] _s1_repl_way_en_enc_T_9 = s1_repl_way_en_enc_hi_4 | s1_repl_way_en_enc_lo_4; // @[OneHot.scala 32:28]
  wire [3:0] s1_repl_way_en_enc_hi_5 = _s1_repl_way_en_enc_T_9[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_repl_way_en_enc_lo_5 = _s1_repl_way_en_enc_T_9[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_10 = |s1_repl_way_en_enc_hi_5; // @[OneHot.scala 32:14]
  wire [3:0] _s1_repl_way_en_enc_T_11 = s1_repl_way_en_enc_hi_5 | s1_repl_way_en_enc_lo_5; // @[OneHot.scala 32:28]
  wire [1:0] s1_repl_way_en_enc_hi_6 = _s1_repl_way_en_enc_T_11[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_repl_way_en_enc_lo_6 = _s1_repl_way_en_enc_T_11[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_repl_way_en_enc_T_12 = |s1_repl_way_en_enc_hi_6; // @[OneHot.scala 32:14]
  wire [1:0] _s1_repl_way_en_enc_T_13 = s1_repl_way_en_enc_hi_6 | s1_repl_way_en_enc_lo_6; // @[OneHot.scala 32:28]
  wire [6:0] _s1_repl_way_en_enc_T_20 = {_s1_repl_way_en_enc_T_2,_s1_repl_way_en_enc_T_4,_s1_repl_way_en_enc_T_6,
    _s1_repl_way_en_enc_T_8,_s1_repl_way_en_enc_T_10,_s1_repl_way_en_enc_T_12,_s1_repl_way_en_enc_T_13[1]}; // @[Cat.scala 31:58]
  wire [23:0] _s1_repl_tag_T_8 = s1_repl_way_en_oh[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_9 = s1_repl_way_en_oh[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_10 = s1_repl_way_en_oh[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_11 = s1_repl_way_en_oh[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_12 = s1_repl_way_en_oh[4] ? tag_resp_4 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_13 = s1_repl_way_en_oh[5] ? tag_resp_5 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_14 = s1_repl_way_en_oh[6] ? tag_resp_6 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_15 = s1_repl_way_en_oh[7] ? tag_resp_7 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_16 = _s1_repl_tag_T_8 | _s1_repl_tag_T_9; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_17 = _s1_repl_tag_T_16 | _s1_repl_tag_T_10; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_18 = _s1_repl_tag_T_17 | _s1_repl_tag_T_11; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_19 = _s1_repl_tag_T_18 | _s1_repl_tag_T_12; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_20 = _s1_repl_tag_T_19 | _s1_repl_tag_T_13; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_21 = _s1_repl_tag_T_20 | _s1_repl_tag_T_14; // @[Mux.scala 27:73]
  wire [23:0] s1_repl_tag = _s1_repl_tag_T_21 | _s1_repl_tag_T_15; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_8 = s1_repl_way_en_oh[0] ? io_meta_resp_0_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_9 = s1_repl_way_en_oh[1] ? io_meta_resp_1_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_10 = s1_repl_way_en_oh[2] ? io_meta_resp_2_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_11 = s1_repl_way_en_oh[3] ? io_meta_resp_3_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_12 = s1_repl_way_en_oh[4] ? io_meta_resp_4_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_13 = s1_repl_way_en_oh[5] ? io_meta_resp_5_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_14 = s1_repl_way_en_oh[6] ? io_meta_resp_6_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_15 = s1_repl_way_en_oh[7] ? io_meta_resp_7_coh_state : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_16 = _s1_repl_coh_T_8 | _s1_repl_coh_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_17 = _s1_repl_coh_T_16 | _s1_repl_coh_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_18 = _s1_repl_coh_T_17 | _s1_repl_coh_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_19 = _s1_repl_coh_T_18 | _s1_repl_coh_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_20 = _s1_repl_coh_T_19 | _s1_repl_coh_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_21 = _s1_repl_coh_T_20 | _s1_repl_coh_T_14; // @[Mux.scala 27:73]
  wire [1:0] s1_repl_coh_state = _s1_repl_coh_T_21 | _s1_repl_coh_T_15; // @[Mux.scala 27:73]
  wire  s1_need_replacement = ~s1_tag_match_dup_dc; // @[LoadPipe.scala 275:29]
  wire  _s1_has_permission_c_cat_T_5 = s1_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_6 = s1_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_7 = s1_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_8 = s1_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_11 = _s1_has_permission_c_cat_T_5 | _s1_has_permission_c_cat_T_6 |
    _s1_has_permission_c_cat_T_7 | _s1_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_12 = s1_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_13 = s1_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_14 = s1_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_15 = s1_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_16 = s1_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_20 = _s1_has_permission_c_cat_T_12 | _s1_has_permission_c_cat_T_13 |
    _s1_has_permission_c_cat_T_14 | _s1_has_permission_c_cat_T_15 | _s1_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_21 = _s1_has_permission_c_cat_T_11 | _s1_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s1_has_permission_c_cat_T_22 = s1_req_cmd == 5'h1 | s1_req_cmd == 5'h11 | s1_req_cmd == 5'h7 |
    _s1_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s1_has_permission_c_cat_T_49 = _s1_has_permission_c_cat_T_22 | s1_req_cmd == 5'h3 | s1_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s1_has_permission_T = {_s1_has_permission_c_cat_T_22,_s1_has_permission_c_cat_T_49,s1_hit_meta_coh_state}; // @[Cat.scala 31:58]
  wire  _s1_has_permission_T_25 = 4'hc == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_27 = _s1_has_permission_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_28 = 4'hd == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_30 = _s1_has_permission_T_28 ? 2'h2 : _s1_has_permission_T_27; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_31 = 4'h4 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_33 = _s1_has_permission_T_31 ? 2'h1 : _s1_has_permission_T_30; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_34 = 4'h5 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_36 = _s1_has_permission_T_34 ? 2'h2 : _s1_has_permission_T_33; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_37 = 4'h0 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_39 = _s1_has_permission_T_37 ? 2'h0 : _s1_has_permission_T_36; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_40 = 4'he == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_42 = _s1_has_permission_T_40 ? 2'h3 : _s1_has_permission_T_39; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_43 = 4'hf == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_45 = _s1_has_permission_T_43 ? 2'h3 : _s1_has_permission_T_42; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_46 = 4'h6 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_48 = _s1_has_permission_T_46 ? 2'h2 : _s1_has_permission_T_45; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_49 = 4'h7 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_51 = _s1_has_permission_T_49 ? 2'h3 : _s1_has_permission_T_48; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_52 = 4'h1 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_54 = _s1_has_permission_T_52 ? 2'h1 : _s1_has_permission_T_51; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_55 = 4'h2 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s1_has_permission_T_57 = _s1_has_permission_T_55 ? 2'h2 : _s1_has_permission_T_54; // @[Misc.scala 34:36]
  wire  _s1_has_permission_T_58 = 4'h3 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  s1_has_permission = _s1_has_permission_T_58 | (_s1_has_permission_T_55 | (_s1_has_permission_T_52 | (
    _s1_has_permission_T_49 | (_s1_has_permission_T_46 | (_s1_has_permission_T_43 | _s1_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire [1:0] s1_has_permission_meta_state = _s1_has_permission_T_58 ? 2'h3 : _s1_has_permission_T_57; // @[Misc.scala 34:36]
  wire  _s1_hit_T_1 = s1_hit_meta_coh_state == s1_has_permission_meta_state; // @[Metadata.scala 45:46]
  wire  s1_hit = s1_tag_match_dup_dc & s1_has_permission & _s1_hit_T_1; // @[LoadPipe.scala 297:57]
  wire  s1_will_send_miss_req = s1_valid & ~s1_nack_data & ~s1_hit; // @[LoadPipe.scala 298:69]
  wire [29:0] _s1_encTag_T_8 = s1_tag_match_way_dup_dc[0] ? io_tag_resp_0 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_9 = s1_tag_match_way_dup_dc[1] ? io_tag_resp_1 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_10 = s1_tag_match_way_dup_dc[2] ? io_tag_resp_2 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_11 = s1_tag_match_way_dup_dc[3] ? io_tag_resp_3 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_12 = s1_tag_match_way_dup_dc[4] ? io_tag_resp_4 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_13 = s1_tag_match_way_dup_dc[5] ? io_tag_resp_5 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_14 = s1_tag_match_way_dup_dc[6] ? io_tag_resp_6 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_15 = s1_tag_match_way_dup_dc[7] ? io_tag_resp_7 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_16 = _s1_encTag_T_8 | _s1_encTag_T_9; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_17 = _s1_encTag_T_16 | _s1_encTag_T_10; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_18 = _s1_encTag_T_17 | _s1_encTag_T_11; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_19 = _s1_encTag_T_18 | _s1_encTag_T_12; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_20 = _s1_encTag_T_19 | _s1_encTag_T_13; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_21 = _s1_encTag_T_20 | _s1_encTag_T_14; // @[Mux.scala 27:73]
  wire [29:0] s1_encTag = _s1_encTag_T_21 | _s1_encTag_T_15; // @[Mux.scala 27:73]
  reg  s2_fire; // @[LoadPipe.scala 310:25]
  reg [4:0] s2_req_cmd; // @[Reg.scala 16:16]
  reg [3:0] s2_req_instrtype; // @[Reg.scala 16:16]
  reg [35:0] s2_paddr; // @[Reg.scala 16:16]
  reg [38:0] s2_vaddr; // @[Reg.scala 16:16]
  reg [7:0] s2_real_way_en; // @[Reg.scala 16:16]
  reg  s2_tag_match; // @[Reg.scala 16:16]
  reg [1:0] s2_hit_coh_state; // @[Reg.scala 16:16]
  wire  _s2_has_permission_c_cat_T_5 = s2_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_6 = s2_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_7 = s2_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_8 = s2_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_11 = _s2_has_permission_c_cat_T_5 | _s2_has_permission_c_cat_T_6 |
    _s2_has_permission_c_cat_T_7 | _s2_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s2_has_permission_c_cat_T_12 = s2_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_13 = s2_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_14 = s2_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_15 = s2_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_16 = s2_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s2_has_permission_c_cat_T_20 = _s2_has_permission_c_cat_T_12 | _s2_has_permission_c_cat_T_13 |
    _s2_has_permission_c_cat_T_14 | _s2_has_permission_c_cat_T_15 | _s2_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s2_has_permission_c_cat_T_21 = _s2_has_permission_c_cat_T_11 | _s2_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s2_has_permission_c_cat_T_22 = s2_req_cmd == 5'h1 | s2_req_cmd == 5'h11 | s2_req_cmd == 5'h7 |
    _s2_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s2_has_permission_c_cat_T_49 = _s2_has_permission_c_cat_T_22 | s2_req_cmd == 5'h3 | s2_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s2_has_permission_T = {_s2_has_permission_c_cat_T_22,_s2_has_permission_c_cat_T_49,s2_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _s2_has_permission_T_25 = 4'hc == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_27 = _s2_has_permission_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_28 = 4'hd == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_30 = _s2_has_permission_T_28 ? 2'h2 : _s2_has_permission_T_27; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_31 = 4'h4 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_33 = _s2_has_permission_T_31 ? 2'h1 : _s2_has_permission_T_30; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_34 = 4'h5 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_36 = _s2_has_permission_T_34 ? 2'h2 : _s2_has_permission_T_33; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_37 = 4'h0 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_39 = _s2_has_permission_T_37 ? 2'h0 : _s2_has_permission_T_36; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_40 = 4'he == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_42 = _s2_has_permission_T_40 ? 2'h3 : _s2_has_permission_T_39; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_43 = 4'hf == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_45 = _s2_has_permission_T_43 ? 2'h3 : _s2_has_permission_T_42; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_46 = 4'h6 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_48 = _s2_has_permission_T_46 ? 2'h2 : _s2_has_permission_T_45; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_49 = 4'h7 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_51 = _s2_has_permission_T_49 ? 2'h3 : _s2_has_permission_T_48; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_52 = 4'h1 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_54 = _s2_has_permission_T_52 ? 2'h1 : _s2_has_permission_T_51; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_55 = 4'h2 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire [1:0] _s2_has_permission_T_57 = _s2_has_permission_T_55 ? 2'h2 : _s2_has_permission_T_54; // @[Misc.scala 34:36]
  wire  _s2_has_permission_T_58 = 4'h3 == _s2_has_permission_T; // @[Misc.scala 48:20]
  wire  s2_has_permission = _s2_has_permission_T_58 | (_s2_has_permission_T_55 | (_s2_has_permission_T_52 | (
    _s2_has_permission_T_49 | (_s2_has_permission_T_46 | (_s2_has_permission_T_43 | _s2_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire [1:0] s2_has_permission_meta_state = _s2_has_permission_T_58 ? 2'h3 : _s2_has_permission_T_57; // @[Misc.scala 34:36]
  reg [255:0] s2_way_en; // @[Reg.scala 16:16]
  reg [1:0] s2_repl_coh_state; // @[Reg.scala 16:16]
  reg [23:0] s2_repl_tag; // @[Reg.scala 16:16]
  reg [29:0] s2_encTag; // @[Reg.scala 16:16]
  wire  s2_nack_no_mshr = io_miss_req_valid & ~io_miss_req_ready; // @[LoadPipe.scala 359:43]
  reg  s2_nack_data; // @[Reg.scala 16:16]
  wire  s2_nack = s2_nack_no_mshr | s2_nack_data; // @[LoadPipe.scala 362:48]
  wire  _s2_miss_merged_T = io_miss_req_ready & io_miss_req_valid; // @[Decoupled.scala 50:35]
  wire  _s2_miss_merged_T_2 = _s2_miss_merged_T & ~io_mq_enq_cancel; // @[LoadPipe.scala 364:41]
  wire  s2_miss_merged = _s2_miss_merged_T & ~io_mq_enq_cancel & io_miss_resp_merged; // @[LoadPipe.scala 364:62]
  wire [2:0] s2_bank_addr = s2_paddr[5:3]; // @[DCacheWrapper.scala 204:9]
  wire [28:0] _s2_tag_error_syndromeUInt_T = 29'h1aaad5b & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_2 = 29'h233366d & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_4 = 29'h4c3c78e & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_6 = 29'h8fc07f0 & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_8 = 29'h10fff800 & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [4:0] s2_tag_error_syndromeUInt = {^_s2_tag_error_syndromeUInt_T_8,^_s2_tag_error_syndromeUInt_T_6,^
    _s2_tag_error_syndromeUInt_T_4,^_s2_tag_error_syndromeUInt_T_2,^_s2_tag_error_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  s2_tag_error_correctable = |s2_tag_error_syndromeUInt; // @[ECC.scala 163:36]
  wire  s2_tag_error_uncorrectable_1 = ^s2_encTag; // @[ECC.scala 87:27]
  wire  s2_tag_error_uncorrectable_2 = ~s2_tag_error_uncorrectable_1 & s2_tag_error_correctable; // @[ECC.scala 195:47]
  wire  s2_tag_error = s2_tag_error_uncorrectable_1 | s2_tag_error_uncorrectable_2; // @[ECC.scala 31:27]
  reg  s2_flag_error; // @[Reg.scala 16:16]
  wire  _s2_hit_T_1 = s2_hit_coh_state == s2_has_permission_meta_state; // @[Metadata.scala 45:46]
  wire  s2_hit = s2_tag_match & s2_has_permission & _s2_hit_T_1; // @[LoadPipe.scala 377:50]
  reg  s2_can_send_miss_req; // @[Reg.scala 16:16]
  wire  real_miss = ~(|s2_real_way_en); // @[LoadPipe.scala 415:19]
  wire  _resp_bits_replayCarry_valid_T_3 = ~_s2_miss_merged_T | s2_nack | io_mq_enq_cancel; // @[LoadPipe.scala 422:85]
  reg  s3_valid; // @[LoadPipe.scala 490:25]
  reg [35:0] s3_paddr; // @[Reg.scala 16:16]
  reg  s3_hit; // @[Reg.scala 16:16]
  wire  s3_data_error = io_read_error_delayed_0 & s3_hit; // @[LoadPipe.scala 502:102]
  reg  s3_tag_error; // @[Reg.scala 16:16]
  reg  s3_flag_error; // @[Reg.scala 16:16]
  wire  s3_error = s3_tag_error | s3_flag_error | s3_data_error; // @[LoadPipe.scala 506:48]
  reg [5:0] io_replace_access_bits_set_REG; // @[LoadPipe.scala 550:50]
  reg [5:0] io_replace_access_bits_set_REG_1; // @[LoadPipe.scala 550:42]
  reg  io_replace_access_bits_way_REG; // @[LoadPipe.scala 553:16]
  wire [3:0] io_replace_access_bits_way_hi = s1_tag_match_way_dup_dc[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_replace_access_bits_way_lo = s1_tag_match_way_dup_dc[3:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T = |io_replace_access_bits_way_hi; // @[OneHot.scala 32:14]
  wire [3:0] _io_replace_access_bits_way_T_1 = io_replace_access_bits_way_hi | io_replace_access_bits_way_lo; // @[OneHot.scala 32:28]
  wire [1:0] io_replace_access_bits_way_hi_1 = _io_replace_access_bits_way_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo_1 = _io_replace_access_bits_way_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_2 = |io_replace_access_bits_way_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_3 = io_replace_access_bits_way_hi_1 | io_replace_access_bits_way_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_replace_access_bits_way_T_5 = {_io_replace_access_bits_way_T_2,_io_replace_access_bits_way_T_3[1]}; // @[Cat.scala 31:58]
  reg [2:0] io_replace_access_bits_way_REG_1; // @[LoadPipe.scala 554:16]
  wire  _io_replace_access_bits_way_T_7 = ~s2_miss_merged; // @[LoadPipe.scala 556:11]
  reg [7:0] io_replace_access_bits_way_REG_2; // @[LoadPipe.scala 557:18]
  wire [3:0] io_replace_access_bits_way_hi_2 = io_miss_resp_repl_way_en[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_replace_access_bits_way_lo_2 = io_miss_resp_repl_way_en[3:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_8 = |io_replace_access_bits_way_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _io_replace_access_bits_way_T_9 = io_replace_access_bits_way_hi_2 | io_replace_access_bits_way_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] io_replace_access_bits_way_hi_3 = _io_replace_access_bits_way_T_9[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo_3 = _io_replace_access_bits_way_T_9[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_10 = |io_replace_access_bits_way_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_11 = io_replace_access_bits_way_hi_3 | io_replace_access_bits_way_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _io_replace_access_bits_way_T_14 = {_io_replace_access_bits_way_T_8,_io_replace_access_bits_way_T_10,
    _io_replace_access_bits_way_T_11[1]}; // @[Cat.scala 31:58]
  reg [7:0] io_replace_access_bits_way_REG_3; // @[LoadPipe.scala 551:42]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_lsu_req_ready = io_tag_read_ready & s1_ready; // @[LoadPipe.scala 115:66]
  assign io_lsu_resp_valid = s2_fire; // @[LoadPipe.scala 404:18 405:14]
  assign io_lsu_resp_bits_data_delayed = {io_banked_data_resp_0_raw_data,io_banked_data_resp_0_raw_data}; // @[Cat.scala 31:58]
  assign io_lsu_resp_bits_miss = ~(|s2_real_way_en); // @[LoadPipe.scala 415:19]
  assign io_lsu_resp_bits_tag_error = s2_tag_error_uncorrectable_1 | s2_tag_error_uncorrectable_2; // @[ECC.scala 31:27]
  assign io_lsu_resp_bits_mshr_id = io_miss_resp_id; // @[LoadPipe.scala 404:18 427:21]
  assign io_lsu_resp_bits_handled = _s2_miss_merged_T_2 & io_miss_resp_handled; // @[LoadPipe.scala 428:62]
  assign io_lsu_resp_bits_error_delayed = s3_error & (s3_hit | s3_tag_error) & s3_valid; // @[LoadPipe.scala 509:67]
  assign io_lsu_s1_disable_fast_wakeup = io_disable_ld_fast_wakeup; // @[LoadPipe.scala 479:33]
  assign io_lsu_s2_bank_conflict = io_bank_conflict_slow; // @[LoadPipe.scala 480:27]
  assign io_lsu_s2_mq_nack = real_miss & _resp_bits_replayCarry_valid_T_3; // @[LoadPipe.scala 482:46]
  assign io_meta_read_valid = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  assign io_meta_read_bits_idx = io_lsu_req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_tag_read_valid = io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
  assign io_tag_read_bits_idx = io_lsu_req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_banked_data_read_valid = s1_valid; // @[LoadPipe.scala 284:40]
  assign io_banked_data_read_bits_way_en = {s1_tag_match_way_dup_dc_hi,s1_tag_match_way_dup_dc_lo}; // @[LoadPipe.scala 195:128]
  assign io_banked_data_read_bits_addr = s1_vaddr[35:0]; // @[LoadPipe.scala 285:33]
  assign io_banked_data_read_bits_bankMask = s1_bank_oh[7:0]; // @[LoadPipe.scala 287:37]
  assign io_miss_req_valid = s2_fire & s2_can_send_miss_req; // @[LoadPipe.scala 388:33]
  assign io_miss_req_bits_source = s2_req_instrtype; // @[LoadPipe.scala 390:27]
  assign io_miss_req_bits_cmd = s2_req_cmd; // @[LoadPipe.scala 392:24]
  assign io_miss_req_bits_addr = {s2_paddr[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  assign io_miss_req_bits_vaddr = s2_vaddr; // @[LoadPipe.scala 394:26]
  assign io_miss_req_bits_way_en = s2_way_en[7:0]; // @[LoadPipe.scala 395:27]
  assign io_miss_req_bits_req_coh_state = s2_hit_coh_state; // @[LoadPipe.scala 396:28]
  assign io_miss_req_bits_replace_coh_state = s2_repl_coh_state; // @[LoadPipe.scala 397:32]
  assign io_miss_req_bits_replace_tag = s2_repl_tag; // @[LoadPipe.scala 398:32]
  assign io_miss_req_bits_cancel = io_lsu_s2_kill | s2_tag_error; // @[LoadPipe.scala 400:45]
  assign io_replace_access_valid = s3_valid; // @[LoadPipe.scala 549:29]
  assign io_replace_access_bits_set = io_replace_access_bits_set_REG_1; // @[LoadPipe.scala 550:32]
  assign io_replace_access_bits_way = io_replace_access_bits_way_REG_3[2:0]; // @[LoadPipe.scala 551:32]
  assign io_replace_way_set_bits = s1_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_error_source_tag = s3_tag_error; // @[LoadPipe.scala 517:23]
  assign io_error_source_data = io_read_error_delayed_0 & s3_hit; // @[LoadPipe.scala 502:102]
  assign io_error_source_l2 = s3_flag_error; // @[LoadPipe.scala 519:22]
  assign io_error_paddr = s3_paddr; // @[LoadPipe.scala 516:18]
  assign io_error_report_to_beu = (s3_tag_error | s3_data_error) & s3_valid; // @[LoadPipe.scala 515:61]
  assign io_error_valid = s3_error & s3_valid; // @[LoadPipe.scala 522:30]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_cmd <= io_lsu_req_bits_cmd; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_vaddr <= io_lsu_req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_instrtype <= io_lsu_req_bits_instrtype; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_bank_oh <= _GEN_65; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_req_cmd <= s1_req_cmd; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_req_instrtype <= s1_req_instrtype; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_paddr <= io_lsu_s1_paddr_dup_dcache; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_vaddr <= s1_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_real_way_en <= s1_tag_match_way_dup_dc; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_tag_match <= s1_tag_match_dup_dc; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_tag_match_dup_dc) begin // @[LoadPipe.scala 256:24]
        s2_hit_coh_state <= _s1_hit_meta_T_22;
      end else begin
        s2_hit_coh_state <= 2'h0;
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_need_replacement) begin // @[LoadPipe.scala 276:22]
        if (s1_have_invalid_way) begin // @[LoadPipe.scala 268:30]
          if (s1_invalid_vec_0 | s1_invalid_vec_1 | (s1_invalid_vec_2 | s1_invalid_vec_3)) begin // @[ParallelMux.scala 90:77]
            s2_way_en <= _s1_invalid_way_en_T_13;
          end else begin
            s2_way_en <= _s1_invalid_way_en_T_19;
          end
        end else begin
          s2_way_en <= {{248'd0}, _s1_repl_way_en_oh_T};
        end
      end else begin
        s2_way_en <= {{248'd0}, s1_tag_match_way_dup_dc};
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_repl_coh_state <= s1_repl_coh_state; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_repl_tag <= s1_repl_tag; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_encTag <= s1_encTag; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_nack_data <= s1_nack_data; // @[Reg.scala 17:22]
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      if (s1_need_replacement) begin // @[LoadPipe.scala 302:26]
        s2_flag_error <= 1'h0;
      end else begin
        s2_flag_error <= s1_hit_error;
      end
    end
    if (s1_valid) begin // @[Reg.scala 17:18]
      s2_can_send_miss_req <= s1_will_send_miss_req; // @[Reg.scala 17:22]
    end
    s3_valid <= s2_fire; // @[LoadPipe.scala 490:25]
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_paddr <= s2_paddr; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_hit <= s2_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_tag_error <= s2_tag_error; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_flag_error <= s2_flag_error; // @[Reg.scala 17:22]
    end
    io_replace_access_bits_set_REG <= s1_req_vaddr[11:6]; // @[L1Cache.scala 83:33]
    io_replace_access_bits_set_REG_1 <= io_replace_access_bits_set_REG; // @[LoadPipe.scala 550:42]
    io_replace_access_bits_way_REG <= |s1_tag_match_way_dup_dc; // @[LoadPipe.scala 245:53]
    io_replace_access_bits_way_REG_1 <= {_io_replace_access_bits_way_T,_io_replace_access_bits_way_T_5}; // @[Cat.scala 31:58]
    io_replace_access_bits_way_REG_2 <= {_s1_repl_way_en_enc_T,_s1_repl_way_en_enc_T_20}; // @[Cat.scala 31:58]
    if (io_replace_access_bits_way_REG) begin // @[LoadPipe.scala 552:10]
      io_replace_access_bits_way_REG_3 <= {{5'd0}, io_replace_access_bits_way_REG_1};
    end else if (_io_replace_access_bits_way_T_7) begin // @[LoadPipe.scala 555:12]
      io_replace_access_bits_way_REG_3 <= io_replace_access_bits_way_REG_2;
    end else begin
      io_replace_access_bits_way_REG_3 <= {{5'd0}, _io_replace_access_bits_way_T_14};
    end
    io_perf_0_value_REG <= io_lsu_req_ready & io_lsu_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadPipe.scala 184:18]
      s1_valid <= 1'h0; // @[LoadPipe.scala 184:29]
    end else begin
      s1_valid <= s0_fire | _GEN_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadPipe.scala 327:18]
      s2_fire <= 1'h0; // @[LoadPipe.scala 327:29]
    end else if (s1_valid) begin // @[LoadPipe.scala 328:33]
      s2_fire <= ~io_lsu_s1_kill; // @[LoadPipe.scala 328:44]
    end else if (io_lsu_resp_valid) begin // @[LoadPipe.scala 310:25]
      s2_fire <= 1'h0;
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  s1_req_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  s1_req_instrtype = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  s1_bank_oh = _RAND_4[8:0];
  _RAND_5 = {1{`RANDOM}};
  s2_fire = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_req_cmd = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  s2_req_instrtype = _RAND_7[3:0];
  _RAND_8 = {2{`RANDOM}};
  s2_paddr = _RAND_8[35:0];
  _RAND_9 = {2{`RANDOM}};
  s2_vaddr = _RAND_9[38:0];
  _RAND_10 = {1{`RANDOM}};
  s2_real_way_en = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tag_match = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_hit_coh_state = _RAND_12[1:0];
  _RAND_13 = {8{`RANDOM}};
  s2_way_en = _RAND_13[255:0];
  _RAND_14 = {1{`RANDOM}};
  s2_repl_coh_state = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  s2_repl_tag = _RAND_15[23:0];
  _RAND_16 = {1{`RANDOM}};
  s2_encTag = _RAND_16[29:0];
  _RAND_17 = {1{`RANDOM}};
  s2_nack_data = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s2_flag_error = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s2_can_send_miss_req = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s3_valid = _RAND_20[0:0];
  _RAND_21 = {2{`RANDOM}};
  s3_paddr = _RAND_21[35:0];
  _RAND_22 = {1{`RANDOM}};
  s3_hit = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s3_tag_error = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s3_flag_error = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_replace_access_bits_set_REG = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_replace_access_bits_set_REG_1 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_replace_access_bits_way_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_replace_access_bits_way_REG_1 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  io_replace_access_bits_way_REG_2 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  io_replace_access_bits_way_REG_3 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    s1_valid = 1'h0;
  end
  if (reset) begin
    s2_fire = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

