module TageTable_2(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [38:0] io_req_bits_pc,
  input  [6:0]  io_req_bits_folded_hist_hist_9_folded_hist,
  input  [10:0] io_req_bits_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_req_bits_folded_hist_hist_1_folded_hist,
  output        io_resps_0_valid,
  output [2:0]  io_resps_0_bits_ctr,
  output        io_resps_0_bits_u,
  output        io_resps_0_bits_unconf,
  output        io_resps_1_valid,
  output [2:0]  io_resps_1_bits_ctr,
  output        io_resps_1_bits_u,
  output        io_resps_1_bits_unconf,
  input  [38:0] io_update_pc,
  input  [6:0]  io_update_folded_hist_hist_9_folded_hist,
  input  [10:0] io_update_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_update_folded_hist_hist_1_folded_hist,
  input         io_update_mask_0,
  input         io_update_mask_1,
  input         io_update_takens_0,
  input         io_update_takens_1,
  input         io_update_alloc_0,
  input         io_update_alloc_1,
  input  [2:0]  io_update_oldCtrs_0,
  input  [2:0]  io_update_oldCtrs_1,
  input         io_update_uMask_0,
  input         io_update_uMask_1,
  input         io_update_us_0,
  input         io_update_us_1,
  input         io_update_reset_u_0,
  input         io_update_reset_u_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  us_clock; // @[Tage.scala 307:18]
  wire  us_reset; // @[Tage.scala 307:18]
  wire  us_io_rreq_valid; // @[Tage.scala 307:18]
  wire [10:0] us_io_rreq_bits_setIdx; // @[Tage.scala 307:18]
  wire  us_io_rresp_data_0; // @[Tage.scala 307:18]
  wire  us_io_rresp_data_1; // @[Tage.scala 307:18]
  wire  us_io_wreq_valid; // @[Tage.scala 307:18]
  wire [10:0] us_io_wreq_bits_setIdx; // @[Tage.scala 307:18]
  wire  us_io_wreq_bits_data_0; // @[Tage.scala 307:18]
  wire  us_io_wreq_bits_data_1; // @[Tage.scala 307:18]
  wire [1:0] us_io_wreq_bits_waymask; // @[Tage.scala 307:18]
  wire  us_extra_reset; // @[Tage.scala 307:18]
  wire  table_banks_0_clock; // @[Tage.scala 312:11]
  wire  table_banks_0_reset; // @[Tage.scala 312:11]
  wire  table_banks_0_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_0_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_0_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_0_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_0_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_0_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_0_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_0_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_0_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_0_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_1_clock; // @[Tage.scala 312:11]
  wire  table_banks_1_reset; // @[Tage.scala 312:11]
  wire  table_banks_1_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_1_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_1_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_1_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_1_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_1_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_1_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_1_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_1_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_1_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_2_clock; // @[Tage.scala 312:11]
  wire  table_banks_2_reset; // @[Tage.scala 312:11]
  wire  table_banks_2_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_2_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_2_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_2_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_2_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_2_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_2_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_2_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_2_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_2_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_3_clock; // @[Tage.scala 312:11]
  wire  table_banks_3_reset; // @[Tage.scala 312:11]
  wire  table_banks_3_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_3_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_3_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_3_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_3_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_3_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_3_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_3_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_3_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_3_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_4_clock; // @[Tage.scala 312:11]
  wire  table_banks_4_reset; // @[Tage.scala 312:11]
  wire  table_banks_4_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_4_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_4_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_4_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_4_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_4_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_4_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_4_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_4_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_4_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_5_clock; // @[Tage.scala 312:11]
  wire  table_banks_5_reset; // @[Tage.scala 312:11]
  wire  table_banks_5_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_5_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_5_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_5_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_5_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_5_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_5_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_5_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_5_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_5_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_6_clock; // @[Tage.scala 312:11]
  wire  table_banks_6_reset; // @[Tage.scala 312:11]
  wire  table_banks_6_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_6_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_6_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_6_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_6_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_6_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_6_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_6_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_6_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_6_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  table_banks_7_clock; // @[Tage.scala 312:11]
  wire  table_banks_7_reset; // @[Tage.scala 312:11]
  wire  table_banks_7_io_rreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_rreq_bits_setIdx; // @[Tage.scala 312:11]
  wire  table_banks_7_io_rresp_data_0_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_rresp_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_7_io_rresp_data_0_ctr; // @[Tage.scala 312:11]
  wire  table_banks_7_io_rresp_data_1_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_rresp_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_7_io_rresp_data_1_ctr; // @[Tage.scala 312:11]
  wire  table_banks_7_io_wreq_valid; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_wreq_bits_setIdx; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_wreq_bits_data_0_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_7_io_wreq_bits_data_0_ctr; // @[Tage.scala 312:11]
  wire [7:0] table_banks_7_io_wreq_bits_data_1_tag; // @[Tage.scala 312:11]
  wire [2:0] table_banks_7_io_wreq_bits_data_1_ctr; // @[Tage.scala 312:11]
  wire [1:0] table_banks_7_io_wreq_bits_waymask; // @[Tage.scala 312:11]
  wire  bank_wrbypasses_0_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_0_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_0_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_0_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_0_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_0_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_0_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_0_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_1_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_1_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_1_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_1_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_1_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_1_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_1_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_2_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_2_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_2_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_2_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_2_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_2_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_2_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_3_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_3_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_3_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_3_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_3_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_3_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_3_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_4_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_4_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_4_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_4_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_4_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_4_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_4_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_5_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_5_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_5_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_5_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_5_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_5_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_5_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_6_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_6_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_6_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_6_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_6_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_6_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_6_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_0_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_0_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_0_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_7_0_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_7_0_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_0_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_0_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_7_0_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_1_clock; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_1_reset; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_1_io_wen; // @[Tage.scala 424:11]
  wire [7:0] bank_wrbypasses_7_1_io_write_idx; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_7_1_io_write_data_0; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_1_io_hit; // @[Tage.scala 424:11]
  wire  bank_wrbypasses_7_1_io_hit_data_0_valid; // @[Tage.scala 424:11]
  wire [2:0] bank_wrbypasses_7_1_io_hit_data_0_bits; // @[Tage.scala 424:11]
  wire [37:0] req_unhashed_idx = io_req_bits_pc[38:1]; // @[Tage.scala 302:43]
  wire [37:0] _GEN_8309 = {{27'd0}, io_req_bits_folded_hist_hist_3_folded_hist}; // @[Tage.scala 287:29]
  wire [37:0] _idx_T = req_unhashed_idx ^ _GEN_8309; // @[Tage.scala 287:29]
  wire [10:0] s0_idx = _idx_T[10:0]; // @[Tage.scala 287:38]
  wire [37:0] _GEN_8310 = {{30'd0}, io_req_bits_folded_hist_hist_1_folded_hist}; // @[Tage.scala 288:29]
  wire [37:0] _tag_T = req_unhashed_idx ^ _GEN_8310; // @[Tage.scala 288:29]
  wire [7:0] _tag_T_1 = {io_req_bits_folded_hist_hist_9_folded_hist, 1'h0}; // @[Tage.scala 288:52]
  wire [37:0] _GEN_8311 = {{30'd0}, _tag_T_1}; // @[Tage.scala 288:38]
  wire [37:0] _tag_T_2 = _tag_T ^ _GEN_8311; // @[Tage.scala 288:38]
  wire [7:0] s0_tag = _tag_T_2[7:0]; // @[Tage.scala 288:59]
  wire  s0_bank_req_1h_0 = s0_idx[2:0] == 3'h0; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_1 = s0_idx[2:0] == 3'h1; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_2 = s0_idx[2:0] == 3'h2; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_3 = s0_idx[2:0] == 3'h3; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_4 = s0_idx[2:0] == 3'h4; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_5 = s0_idx[2:0] == 3'h5; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_6 = s0_idx[2:0] == 3'h6; // @[Tage.scala 263:86]
  wire  s0_bank_req_1h_7 = s0_idx[2:0] == 3'h7; // @[Tage.scala 263:86]
  wire  _table_banks_0_io_rreq_valid_T = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  reg [37:0] s1_unhashed_idx; // @[Reg.scala 16:16]
  reg [7:0] s1_tag; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_0; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_1; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_2; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_3; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_4; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_5; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_6; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_7; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_0; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_1; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_2; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_3; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_4; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_5; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_6; // @[Reg.scala 16:16]
  reg  s1_bank_has_write_on_this_req_7; // @[Reg.scala 16:16]
  wire  _s1_bank_has_write_on_this_req_WIRE_0 = table_banks_0_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_1 = table_banks_1_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_2 = table_banks_2_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_3 = table_banks_3_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_4 = table_banks_4_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_5 = table_banks_5_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_6 = table_banks_6_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _s1_bank_has_write_on_this_req_WIRE_7 = table_banks_7_io_wreq_valid; // @[Tage.scala 332:{56,56}]
  wire  _unconfs_T = table_banks_0_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_1 = table_banks_0_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_0_0 = _unconfs_T | _unconfs_T_1; // @[Tage.scala 57:42]
  wire  _unconfs_T_3 = table_banks_0_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_4 = table_banks_0_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_0_1 = _unconfs_T_3 | _unconfs_T_4; // @[Tage.scala 57:42]
  wire  _unconfs_T_6 = table_banks_1_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_7 = table_banks_1_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_1_0 = _unconfs_T_6 | _unconfs_T_7; // @[Tage.scala 57:42]
  wire  _unconfs_T_9 = table_banks_1_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_10 = table_banks_1_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_1_1 = _unconfs_T_9 | _unconfs_T_10; // @[Tage.scala 57:42]
  wire  _unconfs_T_12 = table_banks_2_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_13 = table_banks_2_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_2_0 = _unconfs_T_12 | _unconfs_T_13; // @[Tage.scala 57:42]
  wire  _unconfs_T_15 = table_banks_2_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_16 = table_banks_2_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_2_1 = _unconfs_T_15 | _unconfs_T_16; // @[Tage.scala 57:42]
  wire  _unconfs_T_18 = table_banks_3_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_19 = table_banks_3_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_3_0 = _unconfs_T_18 | _unconfs_T_19; // @[Tage.scala 57:42]
  wire  _unconfs_T_21 = table_banks_3_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_22 = table_banks_3_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_3_1 = _unconfs_T_21 | _unconfs_T_22; // @[Tage.scala 57:42]
  wire  _unconfs_T_24 = table_banks_4_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_25 = table_banks_4_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_4_0 = _unconfs_T_24 | _unconfs_T_25; // @[Tage.scala 57:42]
  wire  _unconfs_T_27 = table_banks_4_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_28 = table_banks_4_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_4_1 = _unconfs_T_27 | _unconfs_T_28; // @[Tage.scala 57:42]
  wire  _unconfs_T_30 = table_banks_5_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_31 = table_banks_5_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_5_0 = _unconfs_T_30 | _unconfs_T_31; // @[Tage.scala 57:42]
  wire  _unconfs_T_33 = table_banks_5_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_34 = table_banks_5_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_5_1 = _unconfs_T_33 | _unconfs_T_34; // @[Tage.scala 57:42]
  wire  _unconfs_T_36 = table_banks_6_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_37 = table_banks_6_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_6_0 = _unconfs_T_36 | _unconfs_T_37; // @[Tage.scala 57:42]
  wire  _unconfs_T_39 = table_banks_6_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_40 = table_banks_6_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_6_1 = _unconfs_T_39 | _unconfs_T_40; // @[Tage.scala 57:42]
  wire  _unconfs_T_42 = table_banks_7_io_rresp_data_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_43 = table_banks_7_io_rresp_data_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_7_0 = _unconfs_T_42 | _unconfs_T_43; // @[Tage.scala 57:42]
  wire  _unconfs_T_45 = table_banks_7_io_rresp_data_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  _unconfs_T_46 = table_banks_7_io_rresp_data_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  unconfs_7_1 = _unconfs_T_45 | _unconfs_T_46; // @[Tage.scala 57:42]
  wire  resp_invalid_by_write = s1_bank_req_1h_0 & s1_bank_has_write_on_this_req_0 | s1_bank_req_1h_1 &
    s1_bank_has_write_on_this_req_1 | s1_bank_req_1h_2 & s1_bank_has_write_on_this_req_2 | s1_bank_req_1h_3 &
    s1_bank_has_write_on_this_req_3 | s1_bank_req_1h_4 & s1_bank_has_write_on_this_req_4 | s1_bank_req_1h_5 &
    s1_bank_has_write_on_this_req_5 | s1_bank_req_1h_6 & s1_bank_has_write_on_this_req_6 | s1_bank_req_1h_7 &
    s1_bank_has_write_on_this_req_7; // @[Mux.scala 27:73]
  wire  hits_0_0 = table_banks_0_io_rresp_data_0_tag == s1_tag & table_banks_0_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_0_1 = table_banks_0_io_rresp_data_1_tag == s1_tag & table_banks_0_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_1_0 = table_banks_1_io_rresp_data_0_tag == s1_tag & table_banks_1_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_1_1 = table_banks_1_io_rresp_data_1_tag == s1_tag & table_banks_1_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_2_0 = table_banks_2_io_rresp_data_0_tag == s1_tag & table_banks_2_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_2_1 = table_banks_2_io_rresp_data_1_tag == s1_tag & table_banks_2_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_3_0 = table_banks_3_io_rresp_data_0_tag == s1_tag & table_banks_3_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_3_1 = table_banks_3_io_rresp_data_1_tag == s1_tag & table_banks_3_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_4_0 = table_banks_4_io_rresp_data_0_tag == s1_tag & table_banks_4_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_4_1 = table_banks_4_io_rresp_data_1_tag == s1_tag & table_banks_4_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_5_0 = table_banks_5_io_rresp_data_0_tag == s1_tag & table_banks_5_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_5_1 = table_banks_5_io_rresp_data_1_tag == s1_tag & table_banks_5_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_6_0 = table_banks_6_io_rresp_data_0_tag == s1_tag & table_banks_6_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_6_1 = table_banks_6_io_rresp_data_1_tag == s1_tag & table_banks_6_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_7_0 = table_banks_7_io_rresp_data_0_tag == s1_tag & table_banks_7_io_rresp_data_0_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire  hits_7_1 = table_banks_7_io_rresp_data_1_tag == s1_tag & table_banks_7_io_rresp_data_1_valid & ~
    resp_invalid_by_write; // @[Tage.scala 338:79]
  wire [2:0] _resp_selected_T = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_1 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_2 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_3 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_4 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_5 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_6 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_7 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_8 = _resp_selected_T | _resp_selected_T_1; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_9 = _resp_selected_T_8 | _resp_selected_T_2; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_10 = _resp_selected_T_9 | _resp_selected_T_3; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_11 = _resp_selected_T_10 | _resp_selected_T_4; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_12 = _resp_selected_T_11 | _resp_selected_T_5; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_13 = _resp_selected_T_12 | _resp_selected_T_6; // @[Mux.scala 27:73]
  wire [2:0] resp_selected_0_ctr = _resp_selected_T_13 | _resp_selected_T_7; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_45 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_46 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_47 = s1_bank_req_1h_2 ? table_banks_2_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_48 = s1_bank_req_1h_3 ? table_banks_3_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_49 = s1_bank_req_1h_4 ? table_banks_4_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_50 = s1_bank_req_1h_5 ? table_banks_5_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_51 = s1_bank_req_1h_6 ? table_banks_6_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_52 = s1_bank_req_1h_7 ? table_banks_7_io_rresp_data_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_53 = _resp_selected_T_45 | _resp_selected_T_46; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_54 = _resp_selected_T_53 | _resp_selected_T_47; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_55 = _resp_selected_T_54 | _resp_selected_T_48; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_56 = _resp_selected_T_55 | _resp_selected_T_49; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_57 = _resp_selected_T_56 | _resp_selected_T_50; // @[Mux.scala 27:73]
  wire [2:0] _resp_selected_T_58 = _resp_selected_T_57 | _resp_selected_T_51; // @[Mux.scala 27:73]
  wire [2:0] resp_selected_1_ctr = _resp_selected_T_58 | _resp_selected_T_52; // @[Mux.scala 27:73]
  wire  unconf_selected_0 = s1_bank_req_1h_0 & unconfs_0_0 | s1_bank_req_1h_1 & unconfs_1_0 | s1_bank_req_1h_2 &
    unconfs_2_0 | s1_bank_req_1h_3 & unconfs_3_0 | s1_bank_req_1h_4 & unconfs_4_0 | s1_bank_req_1h_5 & unconfs_5_0 |
    s1_bank_req_1h_6 & unconfs_6_0 | s1_bank_req_1h_7 & unconfs_7_0; // @[Mux.scala 27:73]
  wire  unconf_selected_1 = s1_bank_req_1h_0 & unconfs_0_1 | s1_bank_req_1h_1 & unconfs_1_1 | s1_bank_req_1h_2 &
    unconfs_2_1 | s1_bank_req_1h_3 & unconfs_3_1 | s1_bank_req_1h_4 & unconfs_4_1 | s1_bank_req_1h_5 & unconfs_5_1 |
    s1_bank_req_1h_6 & unconfs_6_1 | s1_bank_req_1h_7 & unconfs_7_1; // @[Mux.scala 27:73]
  wire  hit_selected_0 = s1_bank_req_1h_0 & hits_0_0 | s1_bank_req_1h_1 & hits_1_0 | s1_bank_req_1h_2 & hits_2_0 |
    s1_bank_req_1h_3 & hits_3_0 | s1_bank_req_1h_4 & hits_4_0 | s1_bank_req_1h_5 & hits_5_0 | s1_bank_req_1h_6 &
    hits_6_0 | s1_bank_req_1h_7 & hits_7_0; // @[Mux.scala 27:73]
  wire  hit_selected_1 = s1_bank_req_1h_0 & hits_0_1 | s1_bank_req_1h_1 & hits_1_1 | s1_bank_req_1h_2 & hits_2_1 |
    s1_bank_req_1h_3 & hits_3_1 | s1_bank_req_1h_4 & hits_4_1 | s1_bank_req_1h_5 & hits_5_1 | s1_bank_req_1h_6 &
    hits_6_1 | s1_bank_req_1h_7 & hits_7_1; // @[Mux.scala 27:73]
  wire  per_br_resp_shiftAmount = s1_unhashed_idx[0]; // @[Tage.scala 60:42]
  wire [1:0] _per_br_resp_T_2 = 2'h1 << per_br_resp_shiftAmount; // @[OneHot.scala 64:12]
  wire [2:0] _per_br_resp_T_6 = _per_br_resp_T_2[0] ? resp_selected_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _per_br_resp_T_7 = _per_br_resp_T_2[1] ? resp_selected_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_br_resp_shiftAmount_1 = per_br_resp_shiftAmount ^ 1'h1; // @[Tage.scala 62:92]
  wire [1:0] _per_br_resp_T_17 = 2'h1 << per_br_resp_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [2:0] _per_br_resp_T_21 = _per_br_resp_T_17[0] ? resp_selected_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _per_br_resp_T_22 = _per_br_resp_T_17[1] ? resp_selected_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [37:0] update_unhashed_idx = io_update_pc[38:1]; // @[Tage.scala 302:43]
  wire [37:0] _GEN_8313 = {{27'd0}, io_update_folded_hist_hist_3_folded_hist}; // @[Tage.scala 287:29]
  wire [37:0] _idx_T_1 = update_unhashed_idx ^ _GEN_8313; // @[Tage.scala 287:29]
  wire [10:0] update_idx = _idx_T_1[10:0]; // @[Tage.scala 287:38]
  wire [37:0] _GEN_8314 = {{30'd0}, io_update_folded_hist_hist_1_folded_hist}; // @[Tage.scala 288:29]
  wire [37:0] _tag_T_3 = update_unhashed_idx ^ _GEN_8314; // @[Tage.scala 288:29]
  wire [7:0] _tag_T_4 = {io_update_folded_hist_hist_9_folded_hist, 1'h0}; // @[Tage.scala 288:52]
  wire [37:0] _GEN_8315 = {{30'd0}, _tag_T_4}; // @[Tage.scala 288:38]
  wire [37:0] _tag_T_5 = _tag_T_3 ^ _GEN_8315; // @[Tage.scala 288:38]
  wire  update_req_bank_1h_0 = update_idx[2:0] == 3'h0; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_1 = update_idx[2:0] == 3'h1; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_2 = update_idx[2:0] == 3'h2; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_3 = update_idx[2:0] == 3'h3; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_4 = update_idx[2:0] == 3'h4; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_5 = update_idx[2:0] == 3'h5; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_6 = update_idx[2:0] == 3'h6; // @[Tage.scala 263:86]
  wire  update_req_bank_1h_7 = update_idx[2:0] == 3'h7; // @[Tage.scala 263:86]
  wire  _per_bank_update_way_mask_T_2 = ~update_unhashed_idx[0]; // @[Tage.scala 379:51]
  wire  _per_bank_update_way_mask_T_3 = ~update_unhashed_idx[0] & io_update_mask_0; // @[Tage.scala 379:60]
  wire  _per_bank_update_way_mask_T_5 = update_unhashed_idx[0] ^ 1'h1; // @[Tage.scala 62:92]
  wire  _per_bank_update_way_mask_T_6 = ~_per_bank_update_way_mask_T_5; // @[Tage.scala 379:51]
  wire  _per_bank_update_way_mask_T_7 = ~_per_bank_update_way_mask_T_5 & io_update_mask_1; // @[Tage.scala 379:60]
  wire [1:0] _wrbypass_io_T = 2'h1 << update_unhashed_idx[0]; // @[OneHot.scala 64:12]
  wire  wrbypass_io_hit = _wrbypass_io_T[0] & bank_wrbypasses_0_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_0_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_0_0_io_hit_data_0_valid | _wrbypass_io_T[1]
     & bank_wrbypasses_0_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid = wrbypass_io_hit & wrbypass_io_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_4 = _wrbypass_io_T[0] ? bank_wrbypasses_0_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_5 = _wrbypass_io_T[1] ? bank_wrbypasses_0_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_hit_data_0_bits = _wrbypass_io_T_4 | _wrbypass_io_T_5; // @[Mux.scala 27:73]
  wire  _GEN_21 = update_unhashed_idx[0] ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 439:{14,14}]
  wire  _per_bank_not_silent_update_0_0_T_4 = ~_GEN_21; // @[Tage.scala 420:38]
  wire  _per_bank_not_silent_update_0_0_T_6 = &wrbypass_io_hit_data_0_bits & _GEN_21 | ~(|wrbypass_io_hit_data_0_bits)
     & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_0_0_T_7 = ~_per_bank_not_silent_update_0_0_T_6; // @[Tage.scala 447:11]
  wire [2:0] _GEN_23 = update_unhashed_idx[0] ? io_update_oldCtrs_1 : io_update_oldCtrs_0; // @[BPU.scala 95:{27,27}]
  wire  _per_bank_not_silent_update_0_0_T_14 = &_GEN_23 & _GEN_21 | ~(|_GEN_23) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_0_0_T_15 = ~_per_bank_not_silent_update_0_0_T_14; // @[Tage.scala 448:11]
  wire  _per_bank_not_silent_update_0_0_T_16 = wrbypass_data_valid ? _per_bank_not_silent_update_0_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  _GEN_25 = update_unhashed_idx[0] ? io_update_alloc_1 : io_update_alloc_0; // @[Tage.scala 438:{12,12}]
  wire  per_bank_not_silent_update_0_0 = _per_bank_not_silent_update_0_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_9 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_0_0; // @[Tage.scala 380:44]
  wire  _per_bank_update_way_mask_T_13 = update_unhashed_idx[0] & io_update_mask_0; // @[Tage.scala 379:60]
  wire  _per_bank_update_way_mask_T_17 = _per_bank_update_way_mask_T_5 & io_update_mask_1; // @[Tage.scala 379:60]
  wire [1:0] _wrbypass_io_T_22 = 2'h1 << _per_bank_update_way_mask_T_5; // @[OneHot.scala 64:12]
  wire  wrbypass_io_1_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_0_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_0_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_1_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_0_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_0_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_1 = wrbypass_io_1_hit & wrbypass_io_1_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_26 = _wrbypass_io_T_22[0] ? bank_wrbypasses_0_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_27 = _wrbypass_io_T_22[1] ? bank_wrbypasses_0_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_1_hit_data_0_bits = _wrbypass_io_T_26 | _wrbypass_io_T_27; // @[Mux.scala 27:73]
  wire  _GEN_27 = _per_bank_update_way_mask_T_5 ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 439:{14,14}]
  wire  _per_bank_not_silent_update_0_1_T_4 = ~_GEN_27; // @[Tage.scala 420:38]
  wire  _per_bank_not_silent_update_0_1_T_6 = &wrbypass_io_1_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_1_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_0_1_T_7 = ~_per_bank_not_silent_update_0_1_T_6; // @[Tage.scala 447:11]
  wire [2:0] _GEN_29 = _per_bank_update_way_mask_T_5 ? io_update_oldCtrs_1 : io_update_oldCtrs_0; // @[BPU.scala 95:{27,27}]
  wire  _per_bank_not_silent_update_0_1_T_14 = &_GEN_29 & _GEN_27 | ~(|_GEN_29) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_0_1_T_15 = ~_per_bank_not_silent_update_0_1_T_14; // @[Tage.scala 448:11]
  wire  _per_bank_not_silent_update_0_1_T_16 = wrbypass_data_valid_1 ? _per_bank_not_silent_update_0_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  _GEN_31 = _per_bank_update_way_mask_T_5 ? io_update_alloc_1 : io_update_alloc_0; // @[Tage.scala 438:{12,12}]
  wire  per_bank_not_silent_update_0_1 = _per_bank_not_silent_update_0_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_19 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_0_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_0 = {_per_bank_update_way_mask_T_19,_per_bank_update_way_mask_T_9}; // @[Tage.scala 381:11]
  wire  wrbypass_io_2_hit = _wrbypass_io_T[0] & bank_wrbypasses_1_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_1_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_2_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_1_0_io_hit_data_0_valid | _wrbypass_io_T[1]
     & bank_wrbypasses_1_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_2 = wrbypass_io_2_hit & wrbypass_io_2_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_48 = _wrbypass_io_T[0] ? bank_wrbypasses_1_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_49 = _wrbypass_io_T[1] ? bank_wrbypasses_1_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_2_hit_data_0_bits = _wrbypass_io_T_48 | _wrbypass_io_T_49; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_1_0_T_6 = &wrbypass_io_2_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_2_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_1_0_T_7 = ~_per_bank_not_silent_update_1_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_1_0_T_16 = wrbypass_data_valid_2 ? _per_bank_not_silent_update_1_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_1_0 = _per_bank_not_silent_update_1_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_30 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_1_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_3_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_1_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_1_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_3_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_1_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_1_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_3 = wrbypass_io_3_hit & wrbypass_io_3_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_70 = _wrbypass_io_T_22[0] ? bank_wrbypasses_1_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_71 = _wrbypass_io_T_22[1] ? bank_wrbypasses_1_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_3_hit_data_0_bits = _wrbypass_io_T_70 | _wrbypass_io_T_71; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_1_1_T_6 = &wrbypass_io_3_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_3_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_1_1_T_7 = ~_per_bank_not_silent_update_1_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_1_1_T_16 = wrbypass_data_valid_3 ? _per_bank_not_silent_update_1_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_1_1 = _per_bank_not_silent_update_1_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_40 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_1_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_1 = {_per_bank_update_way_mask_T_40,_per_bank_update_way_mask_T_30}; // @[Tage.scala 381:11]
  wire  wrbypass_io_4_hit = _wrbypass_io_T[0] & bank_wrbypasses_2_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_2_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_4_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_2_0_io_hit_data_0_valid | _wrbypass_io_T[1]
     & bank_wrbypasses_2_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_4 = wrbypass_io_4_hit & wrbypass_io_4_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_92 = _wrbypass_io_T[0] ? bank_wrbypasses_2_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_93 = _wrbypass_io_T[1] ? bank_wrbypasses_2_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_4_hit_data_0_bits = _wrbypass_io_T_92 | _wrbypass_io_T_93; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_2_0_T_6 = &wrbypass_io_4_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_4_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_2_0_T_7 = ~_per_bank_not_silent_update_2_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_2_0_T_16 = wrbypass_data_valid_4 ? _per_bank_not_silent_update_2_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_2_0 = _per_bank_not_silent_update_2_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_51 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_2_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_5_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_2_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_2_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_5_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_2_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_2_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_5 = wrbypass_io_5_hit & wrbypass_io_5_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_114 = _wrbypass_io_T_22[0] ? bank_wrbypasses_2_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_115 = _wrbypass_io_T_22[1] ? bank_wrbypasses_2_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_5_hit_data_0_bits = _wrbypass_io_T_114 | _wrbypass_io_T_115; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_2_1_T_6 = &wrbypass_io_5_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_5_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_2_1_T_7 = ~_per_bank_not_silent_update_2_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_2_1_T_16 = wrbypass_data_valid_5 ? _per_bank_not_silent_update_2_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_2_1 = _per_bank_not_silent_update_2_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_61 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_2_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_2 = {_per_bank_update_way_mask_T_61,_per_bank_update_way_mask_T_51}; // @[Tage.scala 381:11]
  wire  wrbypass_io_6_hit = _wrbypass_io_T[0] & bank_wrbypasses_3_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_3_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_6_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_3_0_io_hit_data_0_valid | _wrbypass_io_T[1]
     & bank_wrbypasses_3_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_6 = wrbypass_io_6_hit & wrbypass_io_6_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_136 = _wrbypass_io_T[0] ? bank_wrbypasses_3_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_137 = _wrbypass_io_T[1] ? bank_wrbypasses_3_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_6_hit_data_0_bits = _wrbypass_io_T_136 | _wrbypass_io_T_137; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_3_0_T_6 = &wrbypass_io_6_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_6_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_3_0_T_7 = ~_per_bank_not_silent_update_3_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_3_0_T_16 = wrbypass_data_valid_6 ? _per_bank_not_silent_update_3_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_3_0 = _per_bank_not_silent_update_3_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_72 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_3_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_7_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_3_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_3_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_7_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_3_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_3_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_7 = wrbypass_io_7_hit & wrbypass_io_7_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_158 = _wrbypass_io_T_22[0] ? bank_wrbypasses_3_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_159 = _wrbypass_io_T_22[1] ? bank_wrbypasses_3_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_7_hit_data_0_bits = _wrbypass_io_T_158 | _wrbypass_io_T_159; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_3_1_T_6 = &wrbypass_io_7_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_7_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_3_1_T_7 = ~_per_bank_not_silent_update_3_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_3_1_T_16 = wrbypass_data_valid_7 ? _per_bank_not_silent_update_3_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_3_1 = _per_bank_not_silent_update_3_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_82 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_3_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_3 = {_per_bank_update_way_mask_T_82,_per_bank_update_way_mask_T_72}; // @[Tage.scala 381:11]
  wire  wrbypass_io_8_hit = _wrbypass_io_T[0] & bank_wrbypasses_4_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_4_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_8_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_4_0_io_hit_data_0_valid | _wrbypass_io_T[1]
     & bank_wrbypasses_4_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_8 = wrbypass_io_8_hit & wrbypass_io_8_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_180 = _wrbypass_io_T[0] ? bank_wrbypasses_4_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_181 = _wrbypass_io_T[1] ? bank_wrbypasses_4_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_8_hit_data_0_bits = _wrbypass_io_T_180 | _wrbypass_io_T_181; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_4_0_T_6 = &wrbypass_io_8_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_8_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_4_0_T_7 = ~_per_bank_not_silent_update_4_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_4_0_T_16 = wrbypass_data_valid_8 ? _per_bank_not_silent_update_4_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_4_0 = _per_bank_not_silent_update_4_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_93 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_4_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_9_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_4_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_4_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_9_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_4_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_4_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_9 = wrbypass_io_9_hit & wrbypass_io_9_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_202 = _wrbypass_io_T_22[0] ? bank_wrbypasses_4_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_203 = _wrbypass_io_T_22[1] ? bank_wrbypasses_4_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_9_hit_data_0_bits = _wrbypass_io_T_202 | _wrbypass_io_T_203; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_4_1_T_6 = &wrbypass_io_9_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_9_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_4_1_T_7 = ~_per_bank_not_silent_update_4_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_4_1_T_16 = wrbypass_data_valid_9 ? _per_bank_not_silent_update_4_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_4_1 = _per_bank_not_silent_update_4_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_103 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_4_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_4 = {_per_bank_update_way_mask_T_103,_per_bank_update_way_mask_T_93}; // @[Tage.scala 381:11]
  wire  wrbypass_io_10_hit = _wrbypass_io_T[0] & bank_wrbypasses_5_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_5_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_10_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_5_0_io_hit_data_0_valid | _wrbypass_io_T[1
    ] & bank_wrbypasses_5_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_10 = wrbypass_io_10_hit & wrbypass_io_10_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_224 = _wrbypass_io_T[0] ? bank_wrbypasses_5_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_225 = _wrbypass_io_T[1] ? bank_wrbypasses_5_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_10_hit_data_0_bits = _wrbypass_io_T_224 | _wrbypass_io_T_225; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_5_0_T_6 = &wrbypass_io_10_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_10_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_5_0_T_7 = ~_per_bank_not_silent_update_5_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_5_0_T_16 = wrbypass_data_valid_10 ? _per_bank_not_silent_update_5_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_5_0 = _per_bank_not_silent_update_5_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_114 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_5_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_11_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_5_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_5_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_11_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_5_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_5_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_11 = wrbypass_io_11_hit & wrbypass_io_11_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_246 = _wrbypass_io_T_22[0] ? bank_wrbypasses_5_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_247 = _wrbypass_io_T_22[1] ? bank_wrbypasses_5_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_11_hit_data_0_bits = _wrbypass_io_T_246 | _wrbypass_io_T_247; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_5_1_T_6 = &wrbypass_io_11_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_11_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_5_1_T_7 = ~_per_bank_not_silent_update_5_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_5_1_T_16 = wrbypass_data_valid_11 ? _per_bank_not_silent_update_5_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_5_1 = _per_bank_not_silent_update_5_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_124 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_5_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_5 = {_per_bank_update_way_mask_T_124,_per_bank_update_way_mask_T_114}; // @[Tage.scala 381:11]
  wire  wrbypass_io_12_hit = _wrbypass_io_T[0] & bank_wrbypasses_6_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_6_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_12_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_6_0_io_hit_data_0_valid | _wrbypass_io_T[1
    ] & bank_wrbypasses_6_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_12 = wrbypass_io_12_hit & wrbypass_io_12_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_268 = _wrbypass_io_T[0] ? bank_wrbypasses_6_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_269 = _wrbypass_io_T[1] ? bank_wrbypasses_6_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_12_hit_data_0_bits = _wrbypass_io_T_268 | _wrbypass_io_T_269; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_6_0_T_6 = &wrbypass_io_12_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_12_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_6_0_T_7 = ~_per_bank_not_silent_update_6_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_6_0_T_16 = wrbypass_data_valid_12 ? _per_bank_not_silent_update_6_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_6_0 = _per_bank_not_silent_update_6_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_135 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_6_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_13_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_6_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_6_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_13_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_6_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_6_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_13 = wrbypass_io_13_hit & wrbypass_io_13_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_290 = _wrbypass_io_T_22[0] ? bank_wrbypasses_6_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_291 = _wrbypass_io_T_22[1] ? bank_wrbypasses_6_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_13_hit_data_0_bits = _wrbypass_io_T_290 | _wrbypass_io_T_291; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_6_1_T_6 = &wrbypass_io_13_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_13_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_6_1_T_7 = ~_per_bank_not_silent_update_6_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_6_1_T_16 = wrbypass_data_valid_13 ? _per_bank_not_silent_update_6_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_6_1 = _per_bank_not_silent_update_6_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_145 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_6_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_6 = {_per_bank_update_way_mask_T_145,_per_bank_update_way_mask_T_135}; // @[Tage.scala 381:11]
  wire  wrbypass_io_14_hit = _wrbypass_io_T[0] & bank_wrbypasses_7_0_io_hit | _wrbypass_io_T[1] &
    bank_wrbypasses_7_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_14_hit_data_0_valid = _wrbypass_io_T[0] & bank_wrbypasses_7_0_io_hit_data_0_valid | _wrbypass_io_T[1
    ] & bank_wrbypasses_7_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_14 = wrbypass_io_14_hit & wrbypass_io_14_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_312 = _wrbypass_io_T[0] ? bank_wrbypasses_7_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_313 = _wrbypass_io_T[1] ? bank_wrbypasses_7_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_14_hit_data_0_bits = _wrbypass_io_T_312 | _wrbypass_io_T_313; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_7_0_T_6 = &wrbypass_io_14_hit_data_0_bits & _GEN_21 | ~(|
    wrbypass_io_14_hit_data_0_bits) & ~_GEN_21; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_7_0_T_7 = ~_per_bank_not_silent_update_7_0_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_7_0_T_16 = wrbypass_data_valid_14 ? _per_bank_not_silent_update_7_0_T_7 :
    _per_bank_not_silent_update_0_0_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_7_0 = _per_bank_not_silent_update_7_0_T_16 | _GEN_25; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_156 = (_per_bank_update_way_mask_T_3 | _per_bank_update_way_mask_T_7) &
    per_bank_not_silent_update_7_0; // @[Tage.scala 380:44]
  wire  wrbypass_io_15_hit = _wrbypass_io_T_22[0] & bank_wrbypasses_7_0_io_hit | _wrbypass_io_T_22[1] &
    bank_wrbypasses_7_1_io_hit; // @[Mux.scala 27:73]
  wire  wrbypass_io_15_hit_data_0_valid = _wrbypass_io_T_22[0] & bank_wrbypasses_7_0_io_hit_data_0_valid |
    _wrbypass_io_T_22[1] & bank_wrbypasses_7_1_io_hit_data_0_valid; // @[Mux.scala 27:73]
  wire  wrbypass_data_valid_15 = wrbypass_io_15_hit & wrbypass_io_15_hit_data_0_valid; // @[Tage.scala 436:46]
  wire [2:0] _wrbypass_io_T_334 = _wrbypass_io_T_22[0] ? bank_wrbypasses_7_0_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _wrbypass_io_T_335 = _wrbypass_io_T_22[1] ? bank_wrbypasses_7_1_io_hit_data_0_bits : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] wrbypass_io_15_hit_data_0_bits = _wrbypass_io_T_334 | _wrbypass_io_T_335; // @[Mux.scala 27:73]
  wire  _per_bank_not_silent_update_7_1_T_6 = &wrbypass_io_15_hit_data_0_bits & _GEN_27 | ~(|
    wrbypass_io_15_hit_data_0_bits) & ~_GEN_27; // @[Tage.scala 420:23]
  wire  _per_bank_not_silent_update_7_1_T_7 = ~_per_bank_not_silent_update_7_1_T_6; // @[Tage.scala 447:11]
  wire  _per_bank_not_silent_update_7_1_T_16 = wrbypass_data_valid_15 ? _per_bank_not_silent_update_7_1_T_7 :
    _per_bank_not_silent_update_0_1_T_15; // @[Tage.scala 446:12]
  wire  per_bank_not_silent_update_7_1 = _per_bank_not_silent_update_7_1_T_16 | _GEN_31; // @[Tage.scala 448:81]
  wire  _per_bank_update_way_mask_T_166 = (_per_bank_update_way_mask_T_13 | _per_bank_update_way_mask_T_17) &
    per_bank_not_silent_update_7_1; // @[Tage.scala 380:44]
  wire [1:0] per_bank_update_way_mask_7 = {_per_bank_update_way_mask_T_166,_per_bank_update_way_mask_T_156}; // @[Tage.scala 381:11]
  wire  _update_u_way_mask_T_3 = _per_bank_update_way_mask_T_2 & io_update_uMask_0; // @[Tage.scala 405:56]
  wire  _update_u_way_mask_T_7 = _per_bank_update_way_mask_T_6 & io_update_uMask_1; // @[Tage.scala 405:56]
  wire  _update_u_way_mask_T_8 = _update_u_way_mask_T_3 | _update_u_way_mask_T_7; // @[Tage.scala 407:15]
  wire  _update_u_way_mask_T_12 = update_unhashed_idx[0] & io_update_uMask_0; // @[Tage.scala 405:56]
  wire  _update_u_way_mask_T_16 = _per_bank_update_way_mask_T_5 & io_update_uMask_1; // @[Tage.scala 405:56]
  wire  _update_u_way_mask_T_17 = _update_u_way_mask_T_12 | _update_u_way_mask_T_16; // @[Tage.scala 407:15]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T = _GEN_21 ? 3'h4 : 3'h3; // @[Tage.scala 439:14]
  wire  per_bank_update_wdata_0_0_ctr_oldSatTaken = wrbypass_io_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_0_0_ctr_oldSatNotTaken = wrbypass_io_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_5 = wrbypass_io_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_7 = wrbypass_io_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_0_0_ctr_T_5 :
    _per_bank_update_wdata_0_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_9 = per_bank_update_wdata_0_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_0_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_10 = per_bank_update_wdata_0_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_0_0_ctr_T_9; // @[BPU.scala 97:8]
  wire  per_bank_update_wdata_0_0_ctr_oldSatTaken_1 = _GEN_23 == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_0_0_ctr_oldSatNotTaken_1 = _GEN_23 == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_15 = _GEN_23 + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_17 = _GEN_23 - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_18 = _GEN_21 ? _per_bank_update_wdata_0_0_ctr_T_15 :
    _per_bank_update_wdata_0_0_ctr_T_17; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_19 = per_bank_update_wdata_0_0_ctr_oldSatNotTaken_1 &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_0_0_ctr_T_18; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_20 = per_bank_update_wdata_0_0_ctr_oldSatTaken_1 & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_0_0_ctr_T_19; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_0_0_ctr_T_21 = wrbypass_data_valid ? _per_bank_update_wdata_0_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_0_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_0_0_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T = _GEN_27 ? 3'h4 : 3'h3; // @[Tage.scala 439:14]
  wire  per_bank_update_wdata_0_1_ctr_oldSatTaken = wrbypass_io_1_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_0_1_ctr_oldSatNotTaken = wrbypass_io_1_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_5 = wrbypass_io_1_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_7 = wrbypass_io_1_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_0_1_ctr_T_5 :
    _per_bank_update_wdata_0_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_9 = per_bank_update_wdata_0_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_0_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_10 = per_bank_update_wdata_0_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_0_1_ctr_T_9; // @[BPU.scala 97:8]
  wire  per_bank_update_wdata_0_1_ctr_oldSatTaken_1 = _GEN_29 == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_0_1_ctr_oldSatNotTaken_1 = _GEN_29 == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_15 = _GEN_29 + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_17 = _GEN_29 - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_18 = _GEN_27 ? _per_bank_update_wdata_0_1_ctr_T_15 :
    _per_bank_update_wdata_0_1_ctr_T_17; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_19 = per_bank_update_wdata_0_1_ctr_oldSatNotTaken_1 &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_0_1_ctr_T_18; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_20 = per_bank_update_wdata_0_1_ctr_oldSatTaken_1 & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_0_1_ctr_T_19; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_0_1_ctr_T_21 = wrbypass_data_valid_1 ? _per_bank_update_wdata_0_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_0_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_0_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_0_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_0_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_0_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_0_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_0_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_0_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_1_0_ctr_oldSatTaken = wrbypass_io_2_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_1_0_ctr_oldSatNotTaken = wrbypass_io_2_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_5 = wrbypass_io_2_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_7 = wrbypass_io_2_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_1_0_ctr_T_5 :
    _per_bank_update_wdata_1_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_9 = per_bank_update_wdata_1_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_1_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_10 = per_bank_update_wdata_1_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_1_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_1_0_ctr_T_21 = wrbypass_data_valid_2 ? _per_bank_update_wdata_1_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_1_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_1_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_1_1_ctr_oldSatTaken = wrbypass_io_3_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_1_1_ctr_oldSatNotTaken = wrbypass_io_3_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_5 = wrbypass_io_3_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_7 = wrbypass_io_3_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_1_1_ctr_T_5 :
    _per_bank_update_wdata_1_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_9 = per_bank_update_wdata_1_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_1_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_10 = per_bank_update_wdata_1_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_1_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_1_1_ctr_T_21 = wrbypass_data_valid_3 ? _per_bank_update_wdata_1_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_1_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_1_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_1_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_1_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_1_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_1_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_1_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_1_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_2_0_ctr_oldSatTaken = wrbypass_io_4_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_2_0_ctr_oldSatNotTaken = wrbypass_io_4_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_5 = wrbypass_io_4_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_7 = wrbypass_io_4_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_2_0_ctr_T_5 :
    _per_bank_update_wdata_2_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_9 = per_bank_update_wdata_2_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_2_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_10 = per_bank_update_wdata_2_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_2_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_2_0_ctr_T_21 = wrbypass_data_valid_4 ? _per_bank_update_wdata_2_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_2_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_2_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_2_1_ctr_oldSatTaken = wrbypass_io_5_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_2_1_ctr_oldSatNotTaken = wrbypass_io_5_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_5 = wrbypass_io_5_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_7 = wrbypass_io_5_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_2_1_ctr_T_5 :
    _per_bank_update_wdata_2_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_9 = per_bank_update_wdata_2_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_2_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_10 = per_bank_update_wdata_2_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_2_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_2_1_ctr_T_21 = wrbypass_data_valid_5 ? _per_bank_update_wdata_2_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_2_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_2_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_2_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_2_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_2_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_2_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_2_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_2_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_3_0_ctr_oldSatTaken = wrbypass_io_6_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_3_0_ctr_oldSatNotTaken = wrbypass_io_6_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_5 = wrbypass_io_6_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_7 = wrbypass_io_6_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_3_0_ctr_T_5 :
    _per_bank_update_wdata_3_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_9 = per_bank_update_wdata_3_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_3_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_10 = per_bank_update_wdata_3_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_3_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_3_0_ctr_T_21 = wrbypass_data_valid_6 ? _per_bank_update_wdata_3_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_3_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_3_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_3_1_ctr_oldSatTaken = wrbypass_io_7_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_3_1_ctr_oldSatNotTaken = wrbypass_io_7_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_5 = wrbypass_io_7_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_7 = wrbypass_io_7_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_3_1_ctr_T_5 :
    _per_bank_update_wdata_3_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_9 = per_bank_update_wdata_3_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_3_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_10 = per_bank_update_wdata_3_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_3_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_3_1_ctr_T_21 = wrbypass_data_valid_7 ? _per_bank_update_wdata_3_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_3_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_3_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_3_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_3_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_3_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_3_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_3_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_3_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_4_0_ctr_oldSatTaken = wrbypass_io_8_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_4_0_ctr_oldSatNotTaken = wrbypass_io_8_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_5 = wrbypass_io_8_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_7 = wrbypass_io_8_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_4_0_ctr_T_5 :
    _per_bank_update_wdata_4_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_9 = per_bank_update_wdata_4_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_4_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_10 = per_bank_update_wdata_4_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_4_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_4_0_ctr_T_21 = wrbypass_data_valid_8 ? _per_bank_update_wdata_4_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_4_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_4_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_4_1_ctr_oldSatTaken = wrbypass_io_9_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_4_1_ctr_oldSatNotTaken = wrbypass_io_9_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_5 = wrbypass_io_9_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_7 = wrbypass_io_9_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_4_1_ctr_T_5 :
    _per_bank_update_wdata_4_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_9 = per_bank_update_wdata_4_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_4_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_10 = per_bank_update_wdata_4_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_4_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_4_1_ctr_T_21 = wrbypass_data_valid_9 ? _per_bank_update_wdata_4_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_4_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_4_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_4_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_4_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_4_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_4_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_4_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_4_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_5_0_ctr_oldSatTaken = wrbypass_io_10_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_5_0_ctr_oldSatNotTaken = wrbypass_io_10_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_5 = wrbypass_io_10_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_7 = wrbypass_io_10_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_5_0_ctr_T_5 :
    _per_bank_update_wdata_5_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_9 = per_bank_update_wdata_5_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_5_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_10 = per_bank_update_wdata_5_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_5_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_5_0_ctr_T_21 = wrbypass_data_valid_10 ? _per_bank_update_wdata_5_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_5_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_5_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_5_1_ctr_oldSatTaken = wrbypass_io_11_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_5_1_ctr_oldSatNotTaken = wrbypass_io_11_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_5 = wrbypass_io_11_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_7 = wrbypass_io_11_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_5_1_ctr_T_5 :
    _per_bank_update_wdata_5_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_9 = per_bank_update_wdata_5_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_5_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_10 = per_bank_update_wdata_5_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_5_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_5_1_ctr_T_21 = wrbypass_data_valid_11 ? _per_bank_update_wdata_5_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_5_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_5_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_5_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_5_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_5_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_5_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_5_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_5_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_6_0_ctr_oldSatTaken = wrbypass_io_12_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_6_0_ctr_oldSatNotTaken = wrbypass_io_12_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_5 = wrbypass_io_12_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_7 = wrbypass_io_12_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_6_0_ctr_T_5 :
    _per_bank_update_wdata_6_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_9 = per_bank_update_wdata_6_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_6_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_10 = per_bank_update_wdata_6_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_6_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_6_0_ctr_T_21 = wrbypass_data_valid_12 ? _per_bank_update_wdata_6_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_6_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_6_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_6_1_ctr_oldSatTaken = wrbypass_io_13_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_6_1_ctr_oldSatNotTaken = wrbypass_io_13_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_5 = wrbypass_io_13_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_7 = wrbypass_io_13_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_6_1_ctr_T_5 :
    _per_bank_update_wdata_6_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_9 = per_bank_update_wdata_6_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_6_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_10 = per_bank_update_wdata_6_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_6_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_6_1_ctr_T_21 = wrbypass_data_valid_13 ? _per_bank_update_wdata_6_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_6_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_6_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_6_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_6_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_6_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_6_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_6_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_6_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire  per_bank_update_wdata_7_0_ctr_oldSatTaken = wrbypass_io_14_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_7_0_ctr_oldSatNotTaken = wrbypass_io_14_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_5 = wrbypass_io_14_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_7 = wrbypass_io_14_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_8 = _GEN_21 ? _per_bank_update_wdata_7_0_ctr_T_5 :
    _per_bank_update_wdata_7_0_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_9 = per_bank_update_wdata_7_0_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_0_T_4 ? 3'h0 : _per_bank_update_wdata_7_0_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_10 = per_bank_update_wdata_7_0_ctr_oldSatTaken & _GEN_21 ? 3'h7 :
    _per_bank_update_wdata_7_0_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_7_0_ctr_T_21 = wrbypass_data_valid_14 ? _per_bank_update_wdata_7_0_ctr_T_10 :
    _per_bank_update_wdata_0_0_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_7_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_7_0_ctr_T_21; // @[Tage.scala 438:12]
  wire  per_bank_update_wdata_7_1_ctr_oldSatTaken = wrbypass_io_15_hit_data_0_bits == 3'h7; // @[BPU.scala 95:27]
  wire  per_bank_update_wdata_7_1_ctr_oldSatNotTaken = wrbypass_io_15_hit_data_0_bits == 3'h0; // @[BPU.scala 96:30]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_5 = wrbypass_io_15_hit_data_0_bits + 3'h1; // @[BPU.scala 99:24]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_7 = wrbypass_io_15_hit_data_0_bits - 3'h1; // @[BPU.scala 99:35]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_8 = _GEN_27 ? _per_bank_update_wdata_7_1_ctr_T_5 :
    _per_bank_update_wdata_7_1_ctr_T_7; // @[BPU.scala 99:12]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_9 = per_bank_update_wdata_7_1_ctr_oldSatNotTaken &
    _per_bank_not_silent_update_0_1_T_4 ? 3'h0 : _per_bank_update_wdata_7_1_ctr_T_8; // @[BPU.scala 98:10]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_10 = per_bank_update_wdata_7_1_ctr_oldSatTaken & _GEN_27 ? 3'h7 :
    _per_bank_update_wdata_7_1_ctr_T_9; // @[BPU.scala 97:8]
  wire [2:0] _per_bank_update_wdata_7_1_ctr_T_21 = wrbypass_data_valid_15 ? _per_bank_update_wdata_7_1_ctr_T_10 :
    _per_bank_update_wdata_0_1_ctr_T_20; // @[Tage.scala 440:14]
  wire [2:0] per_bank_update_wdata_7_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_7_1_ctr_T_21; // @[Tage.scala 438:12]
  wire [2:0] _bank_wrbypasses_7_0_io_write_data_0_T_4 = _wrbypass_io_T[0] ? per_bank_update_wdata_7_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_0_io_write_data_0_T_5 = _wrbypass_io_T[1] ? per_bank_update_wdata_7_1_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_1_io_write_data_0_T_4 = _wrbypass_io_T_22[0] ? per_bank_update_wdata_7_0_ctr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _bank_wrbypasses_7_1_io_write_data_0_T_5 = _wrbypass_io_T_22[1] ? per_bank_update_wdata_7_1_ctr : 3'h0; // @[Mux.scala 27:73]
  FoldedSRAMTemplate us ( // @[Tage.scala 307:18]
    .clock(us_clock),
    .reset(us_reset),
    .io_rreq_valid(us_io_rreq_valid),
    .io_rreq_bits_setIdx(us_io_rreq_bits_setIdx),
    .io_rresp_data_0(us_io_rresp_data_0),
    .io_rresp_data_1(us_io_rresp_data_1),
    .io_wreq_valid(us_io_wreq_valid),
    .io_wreq_bits_setIdx(us_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(us_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(us_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(us_io_wreq_bits_waymask),
    .extra_reset(us_extra_reset)
  );
  FoldedSRAMTemplate_1 table_banks_0 ( // @[Tage.scala 312:11]
    .clock(table_banks_0_clock),
    .reset(table_banks_0_reset),
    .io_rreq_valid(table_banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_0_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_0_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_0_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_0_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_0_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_0_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_0_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_0_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_0_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_0_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_0_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_1 ( // @[Tage.scala 312:11]
    .clock(table_banks_1_clock),
    .reset(table_banks_1_reset),
    .io_rreq_valid(table_banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_1_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_1_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_1_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_1_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_1_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_1_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_1_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_1_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_1_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_1_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_1_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_2 ( // @[Tage.scala 312:11]
    .clock(table_banks_2_clock),
    .reset(table_banks_2_reset),
    .io_rreq_valid(table_banks_2_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_2_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_2_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_2_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_2_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_2_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_2_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_2_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_2_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_2_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_2_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_2_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_2_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_2_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_3 ( // @[Tage.scala 312:11]
    .clock(table_banks_3_clock),
    .reset(table_banks_3_reset),
    .io_rreq_valid(table_banks_3_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_3_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_3_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_3_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_3_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_3_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_3_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_3_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_3_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_3_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_3_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_3_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_3_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_3_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_4 ( // @[Tage.scala 312:11]
    .clock(table_banks_4_clock),
    .reset(table_banks_4_reset),
    .io_rreq_valid(table_banks_4_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_4_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_4_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_4_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_4_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_4_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_4_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_4_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_4_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_4_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_4_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_4_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_4_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_4_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_5 ( // @[Tage.scala 312:11]
    .clock(table_banks_5_clock),
    .reset(table_banks_5_reset),
    .io_rreq_valid(table_banks_5_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_5_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_5_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_5_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_5_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_5_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_5_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_5_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_5_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_5_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_5_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_5_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_5_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_5_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_6 ( // @[Tage.scala 312:11]
    .clock(table_banks_6_clock),
    .reset(table_banks_6_reset),
    .io_rreq_valid(table_banks_6_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_6_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_6_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_6_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_6_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_6_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_6_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_6_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_6_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_6_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_6_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_6_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_6_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_6_io_wreq_bits_waymask)
  );
  FoldedSRAMTemplate_1 table_banks_7 ( // @[Tage.scala 312:11]
    .clock(table_banks_7_clock),
    .reset(table_banks_7_reset),
    .io_rreq_valid(table_banks_7_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_7_io_rreq_bits_setIdx),
    .io_rresp_data_0_valid(table_banks_7_io_rresp_data_0_valid),
    .io_rresp_data_0_tag(table_banks_7_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_7_io_rresp_data_0_ctr),
    .io_rresp_data_1_valid(table_banks_7_io_rresp_data_1_valid),
    .io_rresp_data_1_tag(table_banks_7_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(table_banks_7_io_rresp_data_1_ctr),
    .io_wreq_valid(table_banks_7_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_7_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_7_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_1_tag(table_banks_7_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(table_banks_7_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_waymask(table_banks_7_io_wreq_bits_waymask)
  );
  WrBypass bank_wrbypasses_0_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_0_0_clock),
    .reset(bank_wrbypasses_0_0_reset),
    .io_wen(bank_wrbypasses_0_0_io_wen),
    .io_write_idx(bank_wrbypasses_0_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_0_0_io_write_data_0),
    .io_hit(bank_wrbypasses_0_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_0_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_0_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_0_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_0_1_clock),
    .reset(bank_wrbypasses_0_1_reset),
    .io_wen(bank_wrbypasses_0_1_io_wen),
    .io_write_idx(bank_wrbypasses_0_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_0_1_io_write_data_0),
    .io_hit(bank_wrbypasses_0_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_0_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_0_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_1_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_1_0_clock),
    .reset(bank_wrbypasses_1_0_reset),
    .io_wen(bank_wrbypasses_1_0_io_wen),
    .io_write_idx(bank_wrbypasses_1_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_1_0_io_write_data_0),
    .io_hit(bank_wrbypasses_1_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_1_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_1_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_1_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_1_1_clock),
    .reset(bank_wrbypasses_1_1_reset),
    .io_wen(bank_wrbypasses_1_1_io_wen),
    .io_write_idx(bank_wrbypasses_1_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_1_1_io_write_data_0),
    .io_hit(bank_wrbypasses_1_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_1_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_1_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_2_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_2_0_clock),
    .reset(bank_wrbypasses_2_0_reset),
    .io_wen(bank_wrbypasses_2_0_io_wen),
    .io_write_idx(bank_wrbypasses_2_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_2_0_io_write_data_0),
    .io_hit(bank_wrbypasses_2_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_2_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_2_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_2_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_2_1_clock),
    .reset(bank_wrbypasses_2_1_reset),
    .io_wen(bank_wrbypasses_2_1_io_wen),
    .io_write_idx(bank_wrbypasses_2_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_2_1_io_write_data_0),
    .io_hit(bank_wrbypasses_2_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_2_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_2_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_3_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_3_0_clock),
    .reset(bank_wrbypasses_3_0_reset),
    .io_wen(bank_wrbypasses_3_0_io_wen),
    .io_write_idx(bank_wrbypasses_3_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_3_0_io_write_data_0),
    .io_hit(bank_wrbypasses_3_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_3_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_3_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_3_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_3_1_clock),
    .reset(bank_wrbypasses_3_1_reset),
    .io_wen(bank_wrbypasses_3_1_io_wen),
    .io_write_idx(bank_wrbypasses_3_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_3_1_io_write_data_0),
    .io_hit(bank_wrbypasses_3_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_3_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_3_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_4_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_4_0_clock),
    .reset(bank_wrbypasses_4_0_reset),
    .io_wen(bank_wrbypasses_4_0_io_wen),
    .io_write_idx(bank_wrbypasses_4_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_4_0_io_write_data_0),
    .io_hit(bank_wrbypasses_4_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_4_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_4_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_4_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_4_1_clock),
    .reset(bank_wrbypasses_4_1_reset),
    .io_wen(bank_wrbypasses_4_1_io_wen),
    .io_write_idx(bank_wrbypasses_4_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_4_1_io_write_data_0),
    .io_hit(bank_wrbypasses_4_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_4_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_4_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_5_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_5_0_clock),
    .reset(bank_wrbypasses_5_0_reset),
    .io_wen(bank_wrbypasses_5_0_io_wen),
    .io_write_idx(bank_wrbypasses_5_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_5_0_io_write_data_0),
    .io_hit(bank_wrbypasses_5_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_5_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_5_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_5_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_5_1_clock),
    .reset(bank_wrbypasses_5_1_reset),
    .io_wen(bank_wrbypasses_5_1_io_wen),
    .io_write_idx(bank_wrbypasses_5_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_5_1_io_write_data_0),
    .io_hit(bank_wrbypasses_5_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_5_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_5_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_6_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_6_0_clock),
    .reset(bank_wrbypasses_6_0_reset),
    .io_wen(bank_wrbypasses_6_0_io_wen),
    .io_write_idx(bank_wrbypasses_6_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_6_0_io_write_data_0),
    .io_hit(bank_wrbypasses_6_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_6_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_6_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_6_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_6_1_clock),
    .reset(bank_wrbypasses_6_1_reset),
    .io_wen(bank_wrbypasses_6_1_io_wen),
    .io_write_idx(bank_wrbypasses_6_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_6_1_io_write_data_0),
    .io_hit(bank_wrbypasses_6_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_6_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_6_1_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_7_0 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_7_0_clock),
    .reset(bank_wrbypasses_7_0_reset),
    .io_wen(bank_wrbypasses_7_0_io_wen),
    .io_write_idx(bank_wrbypasses_7_0_io_write_idx),
    .io_write_data_0(bank_wrbypasses_7_0_io_write_data_0),
    .io_hit(bank_wrbypasses_7_0_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_7_0_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_7_0_io_hit_data_0_bits)
  );
  WrBypass bank_wrbypasses_7_1 ( // @[Tage.scala 424:11]
    .clock(bank_wrbypasses_7_1_clock),
    .reset(bank_wrbypasses_7_1_reset),
    .io_wen(bank_wrbypasses_7_1_io_wen),
    .io_write_idx(bank_wrbypasses_7_1_io_write_idx),
    .io_write_data_0(bank_wrbypasses_7_1_io_write_data_0),
    .io_hit(bank_wrbypasses_7_1_io_hit),
    .io_hit_data_0_valid(bank_wrbypasses_7_1_io_hit_data_0_valid),
    .io_hit_data_0_bits(bank_wrbypasses_7_1_io_hit_data_0_bits)
  );
  assign io_req_ready = 1'h1; // @[Tage.scala 397:16]
  assign io_resps_0_valid = _per_br_resp_T_2[0] & hit_selected_0 | _per_br_resp_T_2[1] & hit_selected_1; // @[Mux.scala 27:73]
  assign io_resps_0_bits_ctr = _per_br_resp_T_6 | _per_br_resp_T_7; // @[Mux.scala 27:73]
  assign io_resps_0_bits_u = _per_br_resp_T_2[0] & us_io_rresp_data_0 | _per_br_resp_T_2[1] & us_io_rresp_data_1; // @[Mux.scala 27:73]
  assign io_resps_0_bits_unconf = _per_br_resp_T_2[0] & unconf_selected_0 | _per_br_resp_T_2[1] & unconf_selected_1; // @[Mux.scala 27:73]
  assign io_resps_1_valid = _per_br_resp_T_17[0] & hit_selected_0 | _per_br_resp_T_17[1] & hit_selected_1; // @[Mux.scala 27:73]
  assign io_resps_1_bits_ctr = _per_br_resp_T_21 | _per_br_resp_T_22; // @[Mux.scala 27:73]
  assign io_resps_1_bits_u = _per_br_resp_T_17[0] & us_io_rresp_data_0 | _per_br_resp_T_17[1] & us_io_rresp_data_1; // @[Mux.scala 27:73]
  assign io_resps_1_bits_unconf = _per_br_resp_T_17[0] & unconf_selected_0 | _per_br_resp_T_17[1] & unconf_selected_1; // @[Mux.scala 27:73]
  assign us_clock = clock;
  assign us_reset = reset;
  assign us_io_rreq_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  assign us_io_rreq_bits_setIdx = _idx_T[10:0]; // @[Tage.scala 287:38]
  assign us_io_wreq_valid = io_update_uMask_0 | io_update_uMask_1; // @[Tage.scala 416:41]
  assign us_io_wreq_bits_setIdx = _idx_T_1[10:0]; // @[Tage.scala 287:38]
  assign us_io_wreq_bits_data_0 = _per_bank_update_way_mask_T_2 & io_update_us_0 | _per_bank_update_way_mask_T_6 &
    io_update_us_1; // @[Mux.scala 27:73]
  assign us_io_wreq_bits_data_1 = update_unhashed_idx[0] & io_update_us_0 | _per_bank_update_way_mask_T_5 &
    io_update_us_1; // @[Mux.scala 27:73]
  assign us_io_wreq_bits_waymask = {_update_u_way_mask_T_17,_update_u_way_mask_T_8}; // @[Tage.scala 408:7]
  assign us_extra_reset = io_update_reset_u_0 | io_update_reset_u_1; // @[Tage.scala 308:51]
  assign table_banks_0_clock = clock;
  assign table_banks_0_reset = reset;
  assign table_banks_0_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_0; // @[Tage.scala 319:52]
  assign table_banks_0_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_0_io_wreq_valid = |per_bank_update_way_mask_0 & update_req_bank_1h_0; // @[Tage.scala 388:49]
  assign table_banks_0_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_0_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_0_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_0_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_0_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_0_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_0_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_0_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_19,_per_bank_update_way_mask_T_9}; // @[Tage.scala 381:11]
  assign table_banks_1_clock = clock;
  assign table_banks_1_reset = reset;
  assign table_banks_1_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_1; // @[Tage.scala 319:52]
  assign table_banks_1_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_1_io_wreq_valid = |per_bank_update_way_mask_1 & update_req_bank_1h_1; // @[Tage.scala 388:49]
  assign table_banks_1_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_1_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_1_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_1_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_1_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_1_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_1_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_1_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_40,_per_bank_update_way_mask_T_30}; // @[Tage.scala 381:11]
  assign table_banks_2_clock = clock;
  assign table_banks_2_reset = reset;
  assign table_banks_2_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_2; // @[Tage.scala 319:52]
  assign table_banks_2_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_2_io_wreq_valid = |per_bank_update_way_mask_2 & update_req_bank_1h_2; // @[Tage.scala 388:49]
  assign table_banks_2_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_2_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_2_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_2_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_2_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_2_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_2_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_2_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_61,_per_bank_update_way_mask_T_51}; // @[Tage.scala 381:11]
  assign table_banks_3_clock = clock;
  assign table_banks_3_reset = reset;
  assign table_banks_3_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_3; // @[Tage.scala 319:52]
  assign table_banks_3_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_3_io_wreq_valid = |per_bank_update_way_mask_3 & update_req_bank_1h_3; // @[Tage.scala 388:49]
  assign table_banks_3_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_3_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_3_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_3_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_3_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_3_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_3_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_3_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_82,_per_bank_update_way_mask_T_72}; // @[Tage.scala 381:11]
  assign table_banks_4_clock = clock;
  assign table_banks_4_reset = reset;
  assign table_banks_4_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_4; // @[Tage.scala 319:52]
  assign table_banks_4_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_4_io_wreq_valid = |per_bank_update_way_mask_4 & update_req_bank_1h_4; // @[Tage.scala 388:49]
  assign table_banks_4_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_4_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_4_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_4_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_4_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_4_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_4_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_4_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_103,_per_bank_update_way_mask_T_93}; // @[Tage.scala 381:11]
  assign table_banks_5_clock = clock;
  assign table_banks_5_reset = reset;
  assign table_banks_5_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_5; // @[Tage.scala 319:52]
  assign table_banks_5_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_5_io_wreq_valid = |per_bank_update_way_mask_5 & update_req_bank_1h_5; // @[Tage.scala 388:49]
  assign table_banks_5_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_5_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_5_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_5_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_5_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_5_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_5_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_5_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_124,_per_bank_update_way_mask_T_114}; // @[Tage.scala 381:11]
  assign table_banks_6_clock = clock;
  assign table_banks_6_reset = reset;
  assign table_banks_6_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_6; // @[Tage.scala 319:52]
  assign table_banks_6_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_6_io_wreq_valid = |per_bank_update_way_mask_6 & update_req_bank_1h_6; // @[Tage.scala 388:49]
  assign table_banks_6_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_6_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_6_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_6_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_6_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_6_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_6_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_6_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_145,_per_bank_update_way_mask_T_135}; // @[Tage.scala 381:11]
  assign table_banks_7_clock = clock;
  assign table_banks_7_reset = reset;
  assign table_banks_7_io_rreq_valid = _table_banks_0_io_rreq_valid_T & s0_bank_req_1h_7; // @[Tage.scala 319:52]
  assign table_banks_7_io_rreq_bits_setIdx = s0_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_7_io_wreq_valid = |per_bank_update_way_mask_7 & update_req_bank_1h_7; // @[Tage.scala 388:49]
  assign table_banks_7_io_wreq_bits_setIdx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign table_banks_7_io_wreq_bits_data_0_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_7_io_wreq_bits_data_0_ctr = _GEN_25 ? _per_bank_update_wdata_0_0_ctr_T :
    _per_bank_update_wdata_7_0_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_7_io_wreq_bits_data_1_tag = _tag_T_5[7:0]; // @[Tage.scala 288:59]
  assign table_banks_7_io_wreq_bits_data_1_ctr = _GEN_31 ? _per_bank_update_wdata_0_1_ctr_T :
    _per_bank_update_wdata_7_1_ctr_T_21; // @[Tage.scala 438:12]
  assign table_banks_7_io_wreq_bits_waymask = {_per_bank_update_way_mask_T_166,_per_bank_update_way_mask_T_156}; // @[Tage.scala 381:11]
  assign bank_wrbypasses_0_0_clock = clock;
  assign bank_wrbypasses_0_0_reset = reset;
  assign bank_wrbypasses_0_0_io_wen = io_update_mask_0 & update_req_bank_1h_0; // @[Tage.scala 458:45]
  assign bank_wrbypasses_0_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_0_0_io_write_data_0 = _bank_wrbypasses_0_0_io_write_data_0_T_4 |
    _bank_wrbypasses_0_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_0_1_clock = clock;
  assign bank_wrbypasses_0_1_reset = reset;
  assign bank_wrbypasses_0_1_io_wen = io_update_mask_1 & update_req_bank_1h_0; // @[Tage.scala 458:45]
  assign bank_wrbypasses_0_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_0_1_io_write_data_0 = _bank_wrbypasses_0_1_io_write_data_0_T_4 |
    _bank_wrbypasses_0_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_1_0_clock = clock;
  assign bank_wrbypasses_1_0_reset = reset;
  assign bank_wrbypasses_1_0_io_wen = io_update_mask_0 & update_req_bank_1h_1; // @[Tage.scala 458:45]
  assign bank_wrbypasses_1_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_1_0_io_write_data_0 = _bank_wrbypasses_1_0_io_write_data_0_T_4 |
    _bank_wrbypasses_1_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_1_1_clock = clock;
  assign bank_wrbypasses_1_1_reset = reset;
  assign bank_wrbypasses_1_1_io_wen = io_update_mask_1 & update_req_bank_1h_1; // @[Tage.scala 458:45]
  assign bank_wrbypasses_1_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_1_1_io_write_data_0 = _bank_wrbypasses_1_1_io_write_data_0_T_4 |
    _bank_wrbypasses_1_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_2_0_clock = clock;
  assign bank_wrbypasses_2_0_reset = reset;
  assign bank_wrbypasses_2_0_io_wen = io_update_mask_0 & update_req_bank_1h_2; // @[Tage.scala 458:45]
  assign bank_wrbypasses_2_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_2_0_io_write_data_0 = _bank_wrbypasses_2_0_io_write_data_0_T_4 |
    _bank_wrbypasses_2_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_2_1_clock = clock;
  assign bank_wrbypasses_2_1_reset = reset;
  assign bank_wrbypasses_2_1_io_wen = io_update_mask_1 & update_req_bank_1h_2; // @[Tage.scala 458:45]
  assign bank_wrbypasses_2_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_2_1_io_write_data_0 = _bank_wrbypasses_2_1_io_write_data_0_T_4 |
    _bank_wrbypasses_2_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_3_0_clock = clock;
  assign bank_wrbypasses_3_0_reset = reset;
  assign bank_wrbypasses_3_0_io_wen = io_update_mask_0 & update_req_bank_1h_3; // @[Tage.scala 458:45]
  assign bank_wrbypasses_3_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_3_0_io_write_data_0 = _bank_wrbypasses_3_0_io_write_data_0_T_4 |
    _bank_wrbypasses_3_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_3_1_clock = clock;
  assign bank_wrbypasses_3_1_reset = reset;
  assign bank_wrbypasses_3_1_io_wen = io_update_mask_1 & update_req_bank_1h_3; // @[Tage.scala 458:45]
  assign bank_wrbypasses_3_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_3_1_io_write_data_0 = _bank_wrbypasses_3_1_io_write_data_0_T_4 |
    _bank_wrbypasses_3_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_4_0_clock = clock;
  assign bank_wrbypasses_4_0_reset = reset;
  assign bank_wrbypasses_4_0_io_wen = io_update_mask_0 & update_req_bank_1h_4; // @[Tage.scala 458:45]
  assign bank_wrbypasses_4_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_4_0_io_write_data_0 = _bank_wrbypasses_4_0_io_write_data_0_T_4 |
    _bank_wrbypasses_4_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_4_1_clock = clock;
  assign bank_wrbypasses_4_1_reset = reset;
  assign bank_wrbypasses_4_1_io_wen = io_update_mask_1 & update_req_bank_1h_4; // @[Tage.scala 458:45]
  assign bank_wrbypasses_4_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_4_1_io_write_data_0 = _bank_wrbypasses_4_1_io_write_data_0_T_4 |
    _bank_wrbypasses_4_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_5_0_clock = clock;
  assign bank_wrbypasses_5_0_reset = reset;
  assign bank_wrbypasses_5_0_io_wen = io_update_mask_0 & update_req_bank_1h_5; // @[Tage.scala 458:45]
  assign bank_wrbypasses_5_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_5_0_io_write_data_0 = _bank_wrbypasses_5_0_io_write_data_0_T_4 |
    _bank_wrbypasses_5_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_5_1_clock = clock;
  assign bank_wrbypasses_5_1_reset = reset;
  assign bank_wrbypasses_5_1_io_wen = io_update_mask_1 & update_req_bank_1h_5; // @[Tage.scala 458:45]
  assign bank_wrbypasses_5_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_5_1_io_write_data_0 = _bank_wrbypasses_5_1_io_write_data_0_T_4 |
    _bank_wrbypasses_5_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_6_0_clock = clock;
  assign bank_wrbypasses_6_0_reset = reset;
  assign bank_wrbypasses_6_0_io_wen = io_update_mask_0 & update_req_bank_1h_6; // @[Tage.scala 458:45]
  assign bank_wrbypasses_6_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_6_0_io_write_data_0 = _bank_wrbypasses_6_0_io_write_data_0_T_4 |
    _bank_wrbypasses_6_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_6_1_clock = clock;
  assign bank_wrbypasses_6_1_reset = reset;
  assign bank_wrbypasses_6_1_io_wen = io_update_mask_1 & update_req_bank_1h_6; // @[Tage.scala 458:45]
  assign bank_wrbypasses_6_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_6_1_io_write_data_0 = _bank_wrbypasses_6_1_io_write_data_0_T_4 |
    _bank_wrbypasses_6_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_7_0_clock = clock;
  assign bank_wrbypasses_7_0_reset = reset;
  assign bank_wrbypasses_7_0_io_wen = io_update_mask_0 & update_req_bank_1h_7; // @[Tage.scala 458:45]
  assign bank_wrbypasses_7_0_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_7_0_io_write_data_0 = _bank_wrbypasses_7_0_io_write_data_0_T_4 |
    _bank_wrbypasses_7_0_io_write_data_0_T_5; // @[Mux.scala 27:73]
  assign bank_wrbypasses_7_1_clock = clock;
  assign bank_wrbypasses_7_1_reset = reset;
  assign bank_wrbypasses_7_1_io_wen = io_update_mask_1 & update_req_bank_1h_7; // @[Tage.scala 458:45]
  assign bank_wrbypasses_7_1_io_write_idx = update_idx[10:3]; // @[Tage.scala 264:37]
  assign bank_wrbypasses_7_1_io_write_data_0 = _bank_wrbypasses_7_1_io_write_data_0_T_4 |
    _bank_wrbypasses_7_1_io_write_data_0_T_5; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_unhashed_idx <= req_unhashed_idx; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_tag <= s0_tag; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_0 <= s0_bank_req_1h_0; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_1 <= s0_bank_req_1h_1; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_2 <= s0_bank_req_1h_2; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_3 <= s0_bank_req_1h_3; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_4 <= s0_bank_req_1h_4; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_5 <= s0_bank_req_1h_5; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_6 <= s0_bank_req_1h_6; // @[Reg.scala 17:22]
    end
    if (_table_banks_0_io_rreq_valid_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_7 <= s0_bank_req_1h_7; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_0 <= _s1_bank_has_write_on_this_req_WIRE_0; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_1 <= _s1_bank_has_write_on_this_req_WIRE_1; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_2 <= _s1_bank_has_write_on_this_req_WIRE_2; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_3 <= _s1_bank_has_write_on_this_req_WIRE_3; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_4 <= _s1_bank_has_write_on_this_req_WIRE_4; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_5 <= _s1_bank_has_write_on_this_req_WIRE_5; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_6 <= _s1_bank_has_write_on_this_req_WIRE_6; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      s1_bank_has_write_on_this_req_7 <= _s1_bank_has_write_on_this_req_WIRE_7; // @[Reg.scala 17:22]
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
  s1_unhashed_idx = _RAND_0[37:0];
  _RAND_1 = {1{`RANDOM}};
  s1_tag = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  s1_bank_req_1h_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_bank_req_1h_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_bank_req_1h_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_bank_req_1h_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_bank_req_1h_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_bank_req_1h_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_bank_req_1h_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_bank_req_1h_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_4 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_6 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s1_bank_has_write_on_this_req_7 = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

