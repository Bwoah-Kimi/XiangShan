module SRAMTemplate_151(
  input         clock,
  input         io_rreq_valid,
  input  [1:0]  io_rreq_bits_setIdx,
  output [21:0] io_rresp_data_0_entries_tag,
  output [15:0] io_rresp_data_0_entries_asid,
  output [23:0] io_rresp_data_0_entries_ppns_0,
  output [23:0] io_rresp_data_0_entries_ppns_1,
  output [23:0] io_rresp_data_0_entries_ppns_2,
  output [23:0] io_rresp_data_0_entries_ppns_3,
  output [23:0] io_rresp_data_0_entries_ppns_4,
  output [23:0] io_rresp_data_0_entries_ppns_5,
  output [23:0] io_rresp_data_0_entries_ppns_6,
  output [23:0] io_rresp_data_0_entries_ppns_7,
  output        io_rresp_data_0_entries_vs_0,
  output        io_rresp_data_0_entries_vs_1,
  output        io_rresp_data_0_entries_vs_2,
  output        io_rresp_data_0_entries_vs_3,
  output        io_rresp_data_0_entries_vs_4,
  output        io_rresp_data_0_entries_vs_5,
  output        io_rresp_data_0_entries_vs_6,
  output        io_rresp_data_0_entries_vs_7,
  output        io_rresp_data_0_entries_perms_0_d,
  output        io_rresp_data_0_entries_perms_0_a,
  output        io_rresp_data_0_entries_perms_0_g,
  output        io_rresp_data_0_entries_perms_0_u,
  output        io_rresp_data_0_entries_perms_0_x,
  output        io_rresp_data_0_entries_perms_0_w,
  output        io_rresp_data_0_entries_perms_0_r,
  output        io_rresp_data_0_entries_perms_1_d,
  output        io_rresp_data_0_entries_perms_1_a,
  output        io_rresp_data_0_entries_perms_1_g,
  output        io_rresp_data_0_entries_perms_1_u,
  output        io_rresp_data_0_entries_perms_1_x,
  output        io_rresp_data_0_entries_perms_1_w,
  output        io_rresp_data_0_entries_perms_1_r,
  output        io_rresp_data_0_entries_perms_2_d,
  output        io_rresp_data_0_entries_perms_2_a,
  output        io_rresp_data_0_entries_perms_2_g,
  output        io_rresp_data_0_entries_perms_2_u,
  output        io_rresp_data_0_entries_perms_2_x,
  output        io_rresp_data_0_entries_perms_2_w,
  output        io_rresp_data_0_entries_perms_2_r,
  output        io_rresp_data_0_entries_perms_3_d,
  output        io_rresp_data_0_entries_perms_3_a,
  output        io_rresp_data_0_entries_perms_3_g,
  output        io_rresp_data_0_entries_perms_3_u,
  output        io_rresp_data_0_entries_perms_3_x,
  output        io_rresp_data_0_entries_perms_3_w,
  output        io_rresp_data_0_entries_perms_3_r,
  output        io_rresp_data_0_entries_perms_4_d,
  output        io_rresp_data_0_entries_perms_4_a,
  output        io_rresp_data_0_entries_perms_4_g,
  output        io_rresp_data_0_entries_perms_4_u,
  output        io_rresp_data_0_entries_perms_4_x,
  output        io_rresp_data_0_entries_perms_4_w,
  output        io_rresp_data_0_entries_perms_4_r,
  output        io_rresp_data_0_entries_perms_5_d,
  output        io_rresp_data_0_entries_perms_5_a,
  output        io_rresp_data_0_entries_perms_5_g,
  output        io_rresp_data_0_entries_perms_5_u,
  output        io_rresp_data_0_entries_perms_5_x,
  output        io_rresp_data_0_entries_perms_5_w,
  output        io_rresp_data_0_entries_perms_5_r,
  output        io_rresp_data_0_entries_perms_6_d,
  output        io_rresp_data_0_entries_perms_6_a,
  output        io_rresp_data_0_entries_perms_6_g,
  output        io_rresp_data_0_entries_perms_6_u,
  output        io_rresp_data_0_entries_perms_6_x,
  output        io_rresp_data_0_entries_perms_6_w,
  output        io_rresp_data_0_entries_perms_6_r,
  output        io_rresp_data_0_entries_perms_7_d,
  output        io_rresp_data_0_entries_perms_7_a,
  output        io_rresp_data_0_entries_perms_7_g,
  output        io_rresp_data_0_entries_perms_7_u,
  output        io_rresp_data_0_entries_perms_7_x,
  output        io_rresp_data_0_entries_perms_7_w,
  output        io_rresp_data_0_entries_perms_7_r,
  output        io_rresp_data_0_entries_prefetch,
  output [38:0] io_rresp_data_0_ecc,
  output [21:0] io_rresp_data_1_entries_tag,
  output [15:0] io_rresp_data_1_entries_asid,
  output [23:0] io_rresp_data_1_entries_ppns_0,
  output [23:0] io_rresp_data_1_entries_ppns_1,
  output [23:0] io_rresp_data_1_entries_ppns_2,
  output [23:0] io_rresp_data_1_entries_ppns_3,
  output [23:0] io_rresp_data_1_entries_ppns_4,
  output [23:0] io_rresp_data_1_entries_ppns_5,
  output [23:0] io_rresp_data_1_entries_ppns_6,
  output [23:0] io_rresp_data_1_entries_ppns_7,
  output        io_rresp_data_1_entries_vs_0,
  output        io_rresp_data_1_entries_vs_1,
  output        io_rresp_data_1_entries_vs_2,
  output        io_rresp_data_1_entries_vs_3,
  output        io_rresp_data_1_entries_vs_4,
  output        io_rresp_data_1_entries_vs_5,
  output        io_rresp_data_1_entries_vs_6,
  output        io_rresp_data_1_entries_vs_7,
  output        io_rresp_data_1_entries_perms_0_d,
  output        io_rresp_data_1_entries_perms_0_a,
  output        io_rresp_data_1_entries_perms_0_g,
  output        io_rresp_data_1_entries_perms_0_u,
  output        io_rresp_data_1_entries_perms_0_x,
  output        io_rresp_data_1_entries_perms_0_w,
  output        io_rresp_data_1_entries_perms_0_r,
  output        io_rresp_data_1_entries_perms_1_d,
  output        io_rresp_data_1_entries_perms_1_a,
  output        io_rresp_data_1_entries_perms_1_g,
  output        io_rresp_data_1_entries_perms_1_u,
  output        io_rresp_data_1_entries_perms_1_x,
  output        io_rresp_data_1_entries_perms_1_w,
  output        io_rresp_data_1_entries_perms_1_r,
  output        io_rresp_data_1_entries_perms_2_d,
  output        io_rresp_data_1_entries_perms_2_a,
  output        io_rresp_data_1_entries_perms_2_g,
  output        io_rresp_data_1_entries_perms_2_u,
  output        io_rresp_data_1_entries_perms_2_x,
  output        io_rresp_data_1_entries_perms_2_w,
  output        io_rresp_data_1_entries_perms_2_r,
  output        io_rresp_data_1_entries_perms_3_d,
  output        io_rresp_data_1_entries_perms_3_a,
  output        io_rresp_data_1_entries_perms_3_g,
  output        io_rresp_data_1_entries_perms_3_u,
  output        io_rresp_data_1_entries_perms_3_x,
  output        io_rresp_data_1_entries_perms_3_w,
  output        io_rresp_data_1_entries_perms_3_r,
  output        io_rresp_data_1_entries_perms_4_d,
  output        io_rresp_data_1_entries_perms_4_a,
  output        io_rresp_data_1_entries_perms_4_g,
  output        io_rresp_data_1_entries_perms_4_u,
  output        io_rresp_data_1_entries_perms_4_x,
  output        io_rresp_data_1_entries_perms_4_w,
  output        io_rresp_data_1_entries_perms_4_r,
  output        io_rresp_data_1_entries_perms_5_d,
  output        io_rresp_data_1_entries_perms_5_a,
  output        io_rresp_data_1_entries_perms_5_g,
  output        io_rresp_data_1_entries_perms_5_u,
  output        io_rresp_data_1_entries_perms_5_x,
  output        io_rresp_data_1_entries_perms_5_w,
  output        io_rresp_data_1_entries_perms_5_r,
  output        io_rresp_data_1_entries_perms_6_d,
  output        io_rresp_data_1_entries_perms_6_a,
  output        io_rresp_data_1_entries_perms_6_g,
  output        io_rresp_data_1_entries_perms_6_u,
  output        io_rresp_data_1_entries_perms_6_x,
  output        io_rresp_data_1_entries_perms_6_w,
  output        io_rresp_data_1_entries_perms_6_r,
  output        io_rresp_data_1_entries_perms_7_d,
  output        io_rresp_data_1_entries_perms_7_a,
  output        io_rresp_data_1_entries_perms_7_g,
  output        io_rresp_data_1_entries_perms_7_u,
  output        io_rresp_data_1_entries_perms_7_x,
  output        io_rresp_data_1_entries_perms_7_w,
  output        io_rresp_data_1_entries_perms_7_r,
  output        io_rresp_data_1_entries_prefetch,
  output [38:0] io_rresp_data_1_ecc,
  output [21:0] io_rresp_data_2_entries_tag,
  output [15:0] io_rresp_data_2_entries_asid,
  output [23:0] io_rresp_data_2_entries_ppns_0,
  output [23:0] io_rresp_data_2_entries_ppns_1,
  output [23:0] io_rresp_data_2_entries_ppns_2,
  output [23:0] io_rresp_data_2_entries_ppns_3,
  output [23:0] io_rresp_data_2_entries_ppns_4,
  output [23:0] io_rresp_data_2_entries_ppns_5,
  output [23:0] io_rresp_data_2_entries_ppns_6,
  output [23:0] io_rresp_data_2_entries_ppns_7,
  output        io_rresp_data_2_entries_vs_0,
  output        io_rresp_data_2_entries_vs_1,
  output        io_rresp_data_2_entries_vs_2,
  output        io_rresp_data_2_entries_vs_3,
  output        io_rresp_data_2_entries_vs_4,
  output        io_rresp_data_2_entries_vs_5,
  output        io_rresp_data_2_entries_vs_6,
  output        io_rresp_data_2_entries_vs_7,
  output        io_rresp_data_2_entries_perms_0_d,
  output        io_rresp_data_2_entries_perms_0_a,
  output        io_rresp_data_2_entries_perms_0_g,
  output        io_rresp_data_2_entries_perms_0_u,
  output        io_rresp_data_2_entries_perms_0_x,
  output        io_rresp_data_2_entries_perms_0_w,
  output        io_rresp_data_2_entries_perms_0_r,
  output        io_rresp_data_2_entries_perms_1_d,
  output        io_rresp_data_2_entries_perms_1_a,
  output        io_rresp_data_2_entries_perms_1_g,
  output        io_rresp_data_2_entries_perms_1_u,
  output        io_rresp_data_2_entries_perms_1_x,
  output        io_rresp_data_2_entries_perms_1_w,
  output        io_rresp_data_2_entries_perms_1_r,
  output        io_rresp_data_2_entries_perms_2_d,
  output        io_rresp_data_2_entries_perms_2_a,
  output        io_rresp_data_2_entries_perms_2_g,
  output        io_rresp_data_2_entries_perms_2_u,
  output        io_rresp_data_2_entries_perms_2_x,
  output        io_rresp_data_2_entries_perms_2_w,
  output        io_rresp_data_2_entries_perms_2_r,
  output        io_rresp_data_2_entries_perms_3_d,
  output        io_rresp_data_2_entries_perms_3_a,
  output        io_rresp_data_2_entries_perms_3_g,
  output        io_rresp_data_2_entries_perms_3_u,
  output        io_rresp_data_2_entries_perms_3_x,
  output        io_rresp_data_2_entries_perms_3_w,
  output        io_rresp_data_2_entries_perms_3_r,
  output        io_rresp_data_2_entries_perms_4_d,
  output        io_rresp_data_2_entries_perms_4_a,
  output        io_rresp_data_2_entries_perms_4_g,
  output        io_rresp_data_2_entries_perms_4_u,
  output        io_rresp_data_2_entries_perms_4_x,
  output        io_rresp_data_2_entries_perms_4_w,
  output        io_rresp_data_2_entries_perms_4_r,
  output        io_rresp_data_2_entries_perms_5_d,
  output        io_rresp_data_2_entries_perms_5_a,
  output        io_rresp_data_2_entries_perms_5_g,
  output        io_rresp_data_2_entries_perms_5_u,
  output        io_rresp_data_2_entries_perms_5_x,
  output        io_rresp_data_2_entries_perms_5_w,
  output        io_rresp_data_2_entries_perms_5_r,
  output        io_rresp_data_2_entries_perms_6_d,
  output        io_rresp_data_2_entries_perms_6_a,
  output        io_rresp_data_2_entries_perms_6_g,
  output        io_rresp_data_2_entries_perms_6_u,
  output        io_rresp_data_2_entries_perms_6_x,
  output        io_rresp_data_2_entries_perms_6_w,
  output        io_rresp_data_2_entries_perms_6_r,
  output        io_rresp_data_2_entries_perms_7_d,
  output        io_rresp_data_2_entries_perms_7_a,
  output        io_rresp_data_2_entries_perms_7_g,
  output        io_rresp_data_2_entries_perms_7_u,
  output        io_rresp_data_2_entries_perms_7_x,
  output        io_rresp_data_2_entries_perms_7_w,
  output        io_rresp_data_2_entries_perms_7_r,
  output        io_rresp_data_2_entries_prefetch,
  output [38:0] io_rresp_data_2_ecc,
  output [21:0] io_rresp_data_3_entries_tag,
  output [15:0] io_rresp_data_3_entries_asid,
  output [23:0] io_rresp_data_3_entries_ppns_0,
  output [23:0] io_rresp_data_3_entries_ppns_1,
  output [23:0] io_rresp_data_3_entries_ppns_2,
  output [23:0] io_rresp_data_3_entries_ppns_3,
  output [23:0] io_rresp_data_3_entries_ppns_4,
  output [23:0] io_rresp_data_3_entries_ppns_5,
  output [23:0] io_rresp_data_3_entries_ppns_6,
  output [23:0] io_rresp_data_3_entries_ppns_7,
  output        io_rresp_data_3_entries_vs_0,
  output        io_rresp_data_3_entries_vs_1,
  output        io_rresp_data_3_entries_vs_2,
  output        io_rresp_data_3_entries_vs_3,
  output        io_rresp_data_3_entries_vs_4,
  output        io_rresp_data_3_entries_vs_5,
  output        io_rresp_data_3_entries_vs_6,
  output        io_rresp_data_3_entries_vs_7,
  output        io_rresp_data_3_entries_perms_0_d,
  output        io_rresp_data_3_entries_perms_0_a,
  output        io_rresp_data_3_entries_perms_0_g,
  output        io_rresp_data_3_entries_perms_0_u,
  output        io_rresp_data_3_entries_perms_0_x,
  output        io_rresp_data_3_entries_perms_0_w,
  output        io_rresp_data_3_entries_perms_0_r,
  output        io_rresp_data_3_entries_perms_1_d,
  output        io_rresp_data_3_entries_perms_1_a,
  output        io_rresp_data_3_entries_perms_1_g,
  output        io_rresp_data_3_entries_perms_1_u,
  output        io_rresp_data_3_entries_perms_1_x,
  output        io_rresp_data_3_entries_perms_1_w,
  output        io_rresp_data_3_entries_perms_1_r,
  output        io_rresp_data_3_entries_perms_2_d,
  output        io_rresp_data_3_entries_perms_2_a,
  output        io_rresp_data_3_entries_perms_2_g,
  output        io_rresp_data_3_entries_perms_2_u,
  output        io_rresp_data_3_entries_perms_2_x,
  output        io_rresp_data_3_entries_perms_2_w,
  output        io_rresp_data_3_entries_perms_2_r,
  output        io_rresp_data_3_entries_perms_3_d,
  output        io_rresp_data_3_entries_perms_3_a,
  output        io_rresp_data_3_entries_perms_3_g,
  output        io_rresp_data_3_entries_perms_3_u,
  output        io_rresp_data_3_entries_perms_3_x,
  output        io_rresp_data_3_entries_perms_3_w,
  output        io_rresp_data_3_entries_perms_3_r,
  output        io_rresp_data_3_entries_perms_4_d,
  output        io_rresp_data_3_entries_perms_4_a,
  output        io_rresp_data_3_entries_perms_4_g,
  output        io_rresp_data_3_entries_perms_4_u,
  output        io_rresp_data_3_entries_perms_4_x,
  output        io_rresp_data_3_entries_perms_4_w,
  output        io_rresp_data_3_entries_perms_4_r,
  output        io_rresp_data_3_entries_perms_5_d,
  output        io_rresp_data_3_entries_perms_5_a,
  output        io_rresp_data_3_entries_perms_5_g,
  output        io_rresp_data_3_entries_perms_5_u,
  output        io_rresp_data_3_entries_perms_5_x,
  output        io_rresp_data_3_entries_perms_5_w,
  output        io_rresp_data_3_entries_perms_5_r,
  output        io_rresp_data_3_entries_perms_6_d,
  output        io_rresp_data_3_entries_perms_6_a,
  output        io_rresp_data_3_entries_perms_6_g,
  output        io_rresp_data_3_entries_perms_6_u,
  output        io_rresp_data_3_entries_perms_6_x,
  output        io_rresp_data_3_entries_perms_6_w,
  output        io_rresp_data_3_entries_perms_6_r,
  output        io_rresp_data_3_entries_perms_7_d,
  output        io_rresp_data_3_entries_perms_7_a,
  output        io_rresp_data_3_entries_perms_7_g,
  output        io_rresp_data_3_entries_perms_7_u,
  output        io_rresp_data_3_entries_perms_7_x,
  output        io_rresp_data_3_entries_perms_7_w,
  output        io_rresp_data_3_entries_perms_7_r,
  output        io_rresp_data_3_entries_prefetch,
  output [38:0] io_rresp_data_3_ecc,
  output [21:0] io_rresp_data_4_entries_tag,
  output [15:0] io_rresp_data_4_entries_asid,
  output [23:0] io_rresp_data_4_entries_ppns_0,
  output [23:0] io_rresp_data_4_entries_ppns_1,
  output [23:0] io_rresp_data_4_entries_ppns_2,
  output [23:0] io_rresp_data_4_entries_ppns_3,
  output [23:0] io_rresp_data_4_entries_ppns_4,
  output [23:0] io_rresp_data_4_entries_ppns_5,
  output [23:0] io_rresp_data_4_entries_ppns_6,
  output [23:0] io_rresp_data_4_entries_ppns_7,
  output        io_rresp_data_4_entries_vs_0,
  output        io_rresp_data_4_entries_vs_1,
  output        io_rresp_data_4_entries_vs_2,
  output        io_rresp_data_4_entries_vs_3,
  output        io_rresp_data_4_entries_vs_4,
  output        io_rresp_data_4_entries_vs_5,
  output        io_rresp_data_4_entries_vs_6,
  output        io_rresp_data_4_entries_vs_7,
  output        io_rresp_data_4_entries_perms_0_d,
  output        io_rresp_data_4_entries_perms_0_a,
  output        io_rresp_data_4_entries_perms_0_g,
  output        io_rresp_data_4_entries_perms_0_u,
  output        io_rresp_data_4_entries_perms_0_x,
  output        io_rresp_data_4_entries_perms_0_w,
  output        io_rresp_data_4_entries_perms_0_r,
  output        io_rresp_data_4_entries_perms_1_d,
  output        io_rresp_data_4_entries_perms_1_a,
  output        io_rresp_data_4_entries_perms_1_g,
  output        io_rresp_data_4_entries_perms_1_u,
  output        io_rresp_data_4_entries_perms_1_x,
  output        io_rresp_data_4_entries_perms_1_w,
  output        io_rresp_data_4_entries_perms_1_r,
  output        io_rresp_data_4_entries_perms_2_d,
  output        io_rresp_data_4_entries_perms_2_a,
  output        io_rresp_data_4_entries_perms_2_g,
  output        io_rresp_data_4_entries_perms_2_u,
  output        io_rresp_data_4_entries_perms_2_x,
  output        io_rresp_data_4_entries_perms_2_w,
  output        io_rresp_data_4_entries_perms_2_r,
  output        io_rresp_data_4_entries_perms_3_d,
  output        io_rresp_data_4_entries_perms_3_a,
  output        io_rresp_data_4_entries_perms_3_g,
  output        io_rresp_data_4_entries_perms_3_u,
  output        io_rresp_data_4_entries_perms_3_x,
  output        io_rresp_data_4_entries_perms_3_w,
  output        io_rresp_data_4_entries_perms_3_r,
  output        io_rresp_data_4_entries_perms_4_d,
  output        io_rresp_data_4_entries_perms_4_a,
  output        io_rresp_data_4_entries_perms_4_g,
  output        io_rresp_data_4_entries_perms_4_u,
  output        io_rresp_data_4_entries_perms_4_x,
  output        io_rresp_data_4_entries_perms_4_w,
  output        io_rresp_data_4_entries_perms_4_r,
  output        io_rresp_data_4_entries_perms_5_d,
  output        io_rresp_data_4_entries_perms_5_a,
  output        io_rresp_data_4_entries_perms_5_g,
  output        io_rresp_data_4_entries_perms_5_u,
  output        io_rresp_data_4_entries_perms_5_x,
  output        io_rresp_data_4_entries_perms_5_w,
  output        io_rresp_data_4_entries_perms_5_r,
  output        io_rresp_data_4_entries_perms_6_d,
  output        io_rresp_data_4_entries_perms_6_a,
  output        io_rresp_data_4_entries_perms_6_g,
  output        io_rresp_data_4_entries_perms_6_u,
  output        io_rresp_data_4_entries_perms_6_x,
  output        io_rresp_data_4_entries_perms_6_w,
  output        io_rresp_data_4_entries_perms_6_r,
  output        io_rresp_data_4_entries_perms_7_d,
  output        io_rresp_data_4_entries_perms_7_a,
  output        io_rresp_data_4_entries_perms_7_g,
  output        io_rresp_data_4_entries_perms_7_u,
  output        io_rresp_data_4_entries_perms_7_x,
  output        io_rresp_data_4_entries_perms_7_w,
  output        io_rresp_data_4_entries_perms_7_r,
  output        io_rresp_data_4_entries_prefetch,
  output [38:0] io_rresp_data_4_ecc,
  output [21:0] io_rresp_data_5_entries_tag,
  output [15:0] io_rresp_data_5_entries_asid,
  output [23:0] io_rresp_data_5_entries_ppns_0,
  output [23:0] io_rresp_data_5_entries_ppns_1,
  output [23:0] io_rresp_data_5_entries_ppns_2,
  output [23:0] io_rresp_data_5_entries_ppns_3,
  output [23:0] io_rresp_data_5_entries_ppns_4,
  output [23:0] io_rresp_data_5_entries_ppns_5,
  output [23:0] io_rresp_data_5_entries_ppns_6,
  output [23:0] io_rresp_data_5_entries_ppns_7,
  output        io_rresp_data_5_entries_vs_0,
  output        io_rresp_data_5_entries_vs_1,
  output        io_rresp_data_5_entries_vs_2,
  output        io_rresp_data_5_entries_vs_3,
  output        io_rresp_data_5_entries_vs_4,
  output        io_rresp_data_5_entries_vs_5,
  output        io_rresp_data_5_entries_vs_6,
  output        io_rresp_data_5_entries_vs_7,
  output        io_rresp_data_5_entries_perms_0_d,
  output        io_rresp_data_5_entries_perms_0_a,
  output        io_rresp_data_5_entries_perms_0_g,
  output        io_rresp_data_5_entries_perms_0_u,
  output        io_rresp_data_5_entries_perms_0_x,
  output        io_rresp_data_5_entries_perms_0_w,
  output        io_rresp_data_5_entries_perms_0_r,
  output        io_rresp_data_5_entries_perms_1_d,
  output        io_rresp_data_5_entries_perms_1_a,
  output        io_rresp_data_5_entries_perms_1_g,
  output        io_rresp_data_5_entries_perms_1_u,
  output        io_rresp_data_5_entries_perms_1_x,
  output        io_rresp_data_5_entries_perms_1_w,
  output        io_rresp_data_5_entries_perms_1_r,
  output        io_rresp_data_5_entries_perms_2_d,
  output        io_rresp_data_5_entries_perms_2_a,
  output        io_rresp_data_5_entries_perms_2_g,
  output        io_rresp_data_5_entries_perms_2_u,
  output        io_rresp_data_5_entries_perms_2_x,
  output        io_rresp_data_5_entries_perms_2_w,
  output        io_rresp_data_5_entries_perms_2_r,
  output        io_rresp_data_5_entries_perms_3_d,
  output        io_rresp_data_5_entries_perms_3_a,
  output        io_rresp_data_5_entries_perms_3_g,
  output        io_rresp_data_5_entries_perms_3_u,
  output        io_rresp_data_5_entries_perms_3_x,
  output        io_rresp_data_5_entries_perms_3_w,
  output        io_rresp_data_5_entries_perms_3_r,
  output        io_rresp_data_5_entries_perms_4_d,
  output        io_rresp_data_5_entries_perms_4_a,
  output        io_rresp_data_5_entries_perms_4_g,
  output        io_rresp_data_5_entries_perms_4_u,
  output        io_rresp_data_5_entries_perms_4_x,
  output        io_rresp_data_5_entries_perms_4_w,
  output        io_rresp_data_5_entries_perms_4_r,
  output        io_rresp_data_5_entries_perms_5_d,
  output        io_rresp_data_5_entries_perms_5_a,
  output        io_rresp_data_5_entries_perms_5_g,
  output        io_rresp_data_5_entries_perms_5_u,
  output        io_rresp_data_5_entries_perms_5_x,
  output        io_rresp_data_5_entries_perms_5_w,
  output        io_rresp_data_5_entries_perms_5_r,
  output        io_rresp_data_5_entries_perms_6_d,
  output        io_rresp_data_5_entries_perms_6_a,
  output        io_rresp_data_5_entries_perms_6_g,
  output        io_rresp_data_5_entries_perms_6_u,
  output        io_rresp_data_5_entries_perms_6_x,
  output        io_rresp_data_5_entries_perms_6_w,
  output        io_rresp_data_5_entries_perms_6_r,
  output        io_rresp_data_5_entries_perms_7_d,
  output        io_rresp_data_5_entries_perms_7_a,
  output        io_rresp_data_5_entries_perms_7_g,
  output        io_rresp_data_5_entries_perms_7_u,
  output        io_rresp_data_5_entries_perms_7_x,
  output        io_rresp_data_5_entries_perms_7_w,
  output        io_rresp_data_5_entries_perms_7_r,
  output        io_rresp_data_5_entries_prefetch,
  output [38:0] io_rresp_data_5_ecc,
  output [21:0] io_rresp_data_6_entries_tag,
  output [15:0] io_rresp_data_6_entries_asid,
  output [23:0] io_rresp_data_6_entries_ppns_0,
  output [23:0] io_rresp_data_6_entries_ppns_1,
  output [23:0] io_rresp_data_6_entries_ppns_2,
  output [23:0] io_rresp_data_6_entries_ppns_3,
  output [23:0] io_rresp_data_6_entries_ppns_4,
  output [23:0] io_rresp_data_6_entries_ppns_5,
  output [23:0] io_rresp_data_6_entries_ppns_6,
  output [23:0] io_rresp_data_6_entries_ppns_7,
  output        io_rresp_data_6_entries_vs_0,
  output        io_rresp_data_6_entries_vs_1,
  output        io_rresp_data_6_entries_vs_2,
  output        io_rresp_data_6_entries_vs_3,
  output        io_rresp_data_6_entries_vs_4,
  output        io_rresp_data_6_entries_vs_5,
  output        io_rresp_data_6_entries_vs_6,
  output        io_rresp_data_6_entries_vs_7,
  output        io_rresp_data_6_entries_perms_0_d,
  output        io_rresp_data_6_entries_perms_0_a,
  output        io_rresp_data_6_entries_perms_0_g,
  output        io_rresp_data_6_entries_perms_0_u,
  output        io_rresp_data_6_entries_perms_0_x,
  output        io_rresp_data_6_entries_perms_0_w,
  output        io_rresp_data_6_entries_perms_0_r,
  output        io_rresp_data_6_entries_perms_1_d,
  output        io_rresp_data_6_entries_perms_1_a,
  output        io_rresp_data_6_entries_perms_1_g,
  output        io_rresp_data_6_entries_perms_1_u,
  output        io_rresp_data_6_entries_perms_1_x,
  output        io_rresp_data_6_entries_perms_1_w,
  output        io_rresp_data_6_entries_perms_1_r,
  output        io_rresp_data_6_entries_perms_2_d,
  output        io_rresp_data_6_entries_perms_2_a,
  output        io_rresp_data_6_entries_perms_2_g,
  output        io_rresp_data_6_entries_perms_2_u,
  output        io_rresp_data_6_entries_perms_2_x,
  output        io_rresp_data_6_entries_perms_2_w,
  output        io_rresp_data_6_entries_perms_2_r,
  output        io_rresp_data_6_entries_perms_3_d,
  output        io_rresp_data_6_entries_perms_3_a,
  output        io_rresp_data_6_entries_perms_3_g,
  output        io_rresp_data_6_entries_perms_3_u,
  output        io_rresp_data_6_entries_perms_3_x,
  output        io_rresp_data_6_entries_perms_3_w,
  output        io_rresp_data_6_entries_perms_3_r,
  output        io_rresp_data_6_entries_perms_4_d,
  output        io_rresp_data_6_entries_perms_4_a,
  output        io_rresp_data_6_entries_perms_4_g,
  output        io_rresp_data_6_entries_perms_4_u,
  output        io_rresp_data_6_entries_perms_4_x,
  output        io_rresp_data_6_entries_perms_4_w,
  output        io_rresp_data_6_entries_perms_4_r,
  output        io_rresp_data_6_entries_perms_5_d,
  output        io_rresp_data_6_entries_perms_5_a,
  output        io_rresp_data_6_entries_perms_5_g,
  output        io_rresp_data_6_entries_perms_5_u,
  output        io_rresp_data_6_entries_perms_5_x,
  output        io_rresp_data_6_entries_perms_5_w,
  output        io_rresp_data_6_entries_perms_5_r,
  output        io_rresp_data_6_entries_perms_6_d,
  output        io_rresp_data_6_entries_perms_6_a,
  output        io_rresp_data_6_entries_perms_6_g,
  output        io_rresp_data_6_entries_perms_6_u,
  output        io_rresp_data_6_entries_perms_6_x,
  output        io_rresp_data_6_entries_perms_6_w,
  output        io_rresp_data_6_entries_perms_6_r,
  output        io_rresp_data_6_entries_perms_7_d,
  output        io_rresp_data_6_entries_perms_7_a,
  output        io_rresp_data_6_entries_perms_7_g,
  output        io_rresp_data_6_entries_perms_7_u,
  output        io_rresp_data_6_entries_perms_7_x,
  output        io_rresp_data_6_entries_perms_7_w,
  output        io_rresp_data_6_entries_perms_7_r,
  output        io_rresp_data_6_entries_prefetch,
  output [38:0] io_rresp_data_6_ecc,
  output [21:0] io_rresp_data_7_entries_tag,
  output [15:0] io_rresp_data_7_entries_asid,
  output [23:0] io_rresp_data_7_entries_ppns_0,
  output [23:0] io_rresp_data_7_entries_ppns_1,
  output [23:0] io_rresp_data_7_entries_ppns_2,
  output [23:0] io_rresp_data_7_entries_ppns_3,
  output [23:0] io_rresp_data_7_entries_ppns_4,
  output [23:0] io_rresp_data_7_entries_ppns_5,
  output [23:0] io_rresp_data_7_entries_ppns_6,
  output [23:0] io_rresp_data_7_entries_ppns_7,
  output        io_rresp_data_7_entries_vs_0,
  output        io_rresp_data_7_entries_vs_1,
  output        io_rresp_data_7_entries_vs_2,
  output        io_rresp_data_7_entries_vs_3,
  output        io_rresp_data_7_entries_vs_4,
  output        io_rresp_data_7_entries_vs_5,
  output        io_rresp_data_7_entries_vs_6,
  output        io_rresp_data_7_entries_vs_7,
  output        io_rresp_data_7_entries_perms_0_d,
  output        io_rresp_data_7_entries_perms_0_a,
  output        io_rresp_data_7_entries_perms_0_g,
  output        io_rresp_data_7_entries_perms_0_u,
  output        io_rresp_data_7_entries_perms_0_x,
  output        io_rresp_data_7_entries_perms_0_w,
  output        io_rresp_data_7_entries_perms_0_r,
  output        io_rresp_data_7_entries_perms_1_d,
  output        io_rresp_data_7_entries_perms_1_a,
  output        io_rresp_data_7_entries_perms_1_g,
  output        io_rresp_data_7_entries_perms_1_u,
  output        io_rresp_data_7_entries_perms_1_x,
  output        io_rresp_data_7_entries_perms_1_w,
  output        io_rresp_data_7_entries_perms_1_r,
  output        io_rresp_data_7_entries_perms_2_d,
  output        io_rresp_data_7_entries_perms_2_a,
  output        io_rresp_data_7_entries_perms_2_g,
  output        io_rresp_data_7_entries_perms_2_u,
  output        io_rresp_data_7_entries_perms_2_x,
  output        io_rresp_data_7_entries_perms_2_w,
  output        io_rresp_data_7_entries_perms_2_r,
  output        io_rresp_data_7_entries_perms_3_d,
  output        io_rresp_data_7_entries_perms_3_a,
  output        io_rresp_data_7_entries_perms_3_g,
  output        io_rresp_data_7_entries_perms_3_u,
  output        io_rresp_data_7_entries_perms_3_x,
  output        io_rresp_data_7_entries_perms_3_w,
  output        io_rresp_data_7_entries_perms_3_r,
  output        io_rresp_data_7_entries_perms_4_d,
  output        io_rresp_data_7_entries_perms_4_a,
  output        io_rresp_data_7_entries_perms_4_g,
  output        io_rresp_data_7_entries_perms_4_u,
  output        io_rresp_data_7_entries_perms_4_x,
  output        io_rresp_data_7_entries_perms_4_w,
  output        io_rresp_data_7_entries_perms_4_r,
  output        io_rresp_data_7_entries_perms_5_d,
  output        io_rresp_data_7_entries_perms_5_a,
  output        io_rresp_data_7_entries_perms_5_g,
  output        io_rresp_data_7_entries_perms_5_u,
  output        io_rresp_data_7_entries_perms_5_x,
  output        io_rresp_data_7_entries_perms_5_w,
  output        io_rresp_data_7_entries_perms_5_r,
  output        io_rresp_data_7_entries_perms_6_d,
  output        io_rresp_data_7_entries_perms_6_a,
  output        io_rresp_data_7_entries_perms_6_g,
  output        io_rresp_data_7_entries_perms_6_u,
  output        io_rresp_data_7_entries_perms_6_x,
  output        io_rresp_data_7_entries_perms_6_w,
  output        io_rresp_data_7_entries_perms_6_r,
  output        io_rresp_data_7_entries_perms_7_d,
  output        io_rresp_data_7_entries_perms_7_a,
  output        io_rresp_data_7_entries_perms_7_g,
  output        io_rresp_data_7_entries_perms_7_u,
  output        io_rresp_data_7_entries_perms_7_x,
  output        io_rresp_data_7_entries_perms_7_w,
  output        io_rresp_data_7_entries_perms_7_r,
  output        io_rresp_data_7_entries_prefetch,
  output [38:0] io_rresp_data_7_ecc,
  input         io_wreq_valid,
  input  [1:0]  io_wreq_bits_setIdx,
  input  [21:0] io_wreq_bits_data_0_entries_tag,
  input  [15:0] io_wreq_bits_data_0_entries_asid,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_7,
  input         io_wreq_bits_data_0_entries_vs_0,
  input         io_wreq_bits_data_0_entries_vs_1,
  input         io_wreq_bits_data_0_entries_vs_2,
  input         io_wreq_bits_data_0_entries_vs_3,
  input         io_wreq_bits_data_0_entries_vs_4,
  input         io_wreq_bits_data_0_entries_vs_5,
  input         io_wreq_bits_data_0_entries_vs_6,
  input         io_wreq_bits_data_0_entries_vs_7,
  input         io_wreq_bits_data_0_entries_perms_0_d,
  input         io_wreq_bits_data_0_entries_perms_0_a,
  input         io_wreq_bits_data_0_entries_perms_0_g,
  input         io_wreq_bits_data_0_entries_perms_0_u,
  input         io_wreq_bits_data_0_entries_perms_0_x,
  input         io_wreq_bits_data_0_entries_perms_0_w,
  input         io_wreq_bits_data_0_entries_perms_0_r,
  input         io_wreq_bits_data_0_entries_perms_1_d,
  input         io_wreq_bits_data_0_entries_perms_1_a,
  input         io_wreq_bits_data_0_entries_perms_1_g,
  input         io_wreq_bits_data_0_entries_perms_1_u,
  input         io_wreq_bits_data_0_entries_perms_1_x,
  input         io_wreq_bits_data_0_entries_perms_1_w,
  input         io_wreq_bits_data_0_entries_perms_1_r,
  input         io_wreq_bits_data_0_entries_perms_2_d,
  input         io_wreq_bits_data_0_entries_perms_2_a,
  input         io_wreq_bits_data_0_entries_perms_2_g,
  input         io_wreq_bits_data_0_entries_perms_2_u,
  input         io_wreq_bits_data_0_entries_perms_2_x,
  input         io_wreq_bits_data_0_entries_perms_2_w,
  input         io_wreq_bits_data_0_entries_perms_2_r,
  input         io_wreq_bits_data_0_entries_perms_3_d,
  input         io_wreq_bits_data_0_entries_perms_3_a,
  input         io_wreq_bits_data_0_entries_perms_3_g,
  input         io_wreq_bits_data_0_entries_perms_3_u,
  input         io_wreq_bits_data_0_entries_perms_3_x,
  input         io_wreq_bits_data_0_entries_perms_3_w,
  input         io_wreq_bits_data_0_entries_perms_3_r,
  input         io_wreq_bits_data_0_entries_perms_4_d,
  input         io_wreq_bits_data_0_entries_perms_4_a,
  input         io_wreq_bits_data_0_entries_perms_4_g,
  input         io_wreq_bits_data_0_entries_perms_4_u,
  input         io_wreq_bits_data_0_entries_perms_4_x,
  input         io_wreq_bits_data_0_entries_perms_4_w,
  input         io_wreq_bits_data_0_entries_perms_4_r,
  input         io_wreq_bits_data_0_entries_perms_5_d,
  input         io_wreq_bits_data_0_entries_perms_5_a,
  input         io_wreq_bits_data_0_entries_perms_5_g,
  input         io_wreq_bits_data_0_entries_perms_5_u,
  input         io_wreq_bits_data_0_entries_perms_5_x,
  input         io_wreq_bits_data_0_entries_perms_5_w,
  input         io_wreq_bits_data_0_entries_perms_5_r,
  input         io_wreq_bits_data_0_entries_perms_6_d,
  input         io_wreq_bits_data_0_entries_perms_6_a,
  input         io_wreq_bits_data_0_entries_perms_6_g,
  input         io_wreq_bits_data_0_entries_perms_6_u,
  input         io_wreq_bits_data_0_entries_perms_6_x,
  input         io_wreq_bits_data_0_entries_perms_6_w,
  input         io_wreq_bits_data_0_entries_perms_6_r,
  input         io_wreq_bits_data_0_entries_perms_7_d,
  input         io_wreq_bits_data_0_entries_perms_7_a,
  input         io_wreq_bits_data_0_entries_perms_7_g,
  input         io_wreq_bits_data_0_entries_perms_7_u,
  input         io_wreq_bits_data_0_entries_perms_7_x,
  input         io_wreq_bits_data_0_entries_perms_7_w,
  input         io_wreq_bits_data_0_entries_perms_7_r,
  input         io_wreq_bits_data_0_entries_prefetch,
  input  [38:0] io_wreq_bits_data_0_ecc,
  input  [21:0] io_wreq_bits_data_1_entries_tag,
  input  [15:0] io_wreq_bits_data_1_entries_asid,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_7,
  input         io_wreq_bits_data_1_entries_vs_0,
  input         io_wreq_bits_data_1_entries_vs_1,
  input         io_wreq_bits_data_1_entries_vs_2,
  input         io_wreq_bits_data_1_entries_vs_3,
  input         io_wreq_bits_data_1_entries_vs_4,
  input         io_wreq_bits_data_1_entries_vs_5,
  input         io_wreq_bits_data_1_entries_vs_6,
  input         io_wreq_bits_data_1_entries_vs_7,
  input         io_wreq_bits_data_1_entries_perms_0_d,
  input         io_wreq_bits_data_1_entries_perms_0_a,
  input         io_wreq_bits_data_1_entries_perms_0_g,
  input         io_wreq_bits_data_1_entries_perms_0_u,
  input         io_wreq_bits_data_1_entries_perms_0_x,
  input         io_wreq_bits_data_1_entries_perms_0_w,
  input         io_wreq_bits_data_1_entries_perms_0_r,
  input         io_wreq_bits_data_1_entries_perms_1_d,
  input         io_wreq_bits_data_1_entries_perms_1_a,
  input         io_wreq_bits_data_1_entries_perms_1_g,
  input         io_wreq_bits_data_1_entries_perms_1_u,
  input         io_wreq_bits_data_1_entries_perms_1_x,
  input         io_wreq_bits_data_1_entries_perms_1_w,
  input         io_wreq_bits_data_1_entries_perms_1_r,
  input         io_wreq_bits_data_1_entries_perms_2_d,
  input         io_wreq_bits_data_1_entries_perms_2_a,
  input         io_wreq_bits_data_1_entries_perms_2_g,
  input         io_wreq_bits_data_1_entries_perms_2_u,
  input         io_wreq_bits_data_1_entries_perms_2_x,
  input         io_wreq_bits_data_1_entries_perms_2_w,
  input         io_wreq_bits_data_1_entries_perms_2_r,
  input         io_wreq_bits_data_1_entries_perms_3_d,
  input         io_wreq_bits_data_1_entries_perms_3_a,
  input         io_wreq_bits_data_1_entries_perms_3_g,
  input         io_wreq_bits_data_1_entries_perms_3_u,
  input         io_wreq_bits_data_1_entries_perms_3_x,
  input         io_wreq_bits_data_1_entries_perms_3_w,
  input         io_wreq_bits_data_1_entries_perms_3_r,
  input         io_wreq_bits_data_1_entries_perms_4_d,
  input         io_wreq_bits_data_1_entries_perms_4_a,
  input         io_wreq_bits_data_1_entries_perms_4_g,
  input         io_wreq_bits_data_1_entries_perms_4_u,
  input         io_wreq_bits_data_1_entries_perms_4_x,
  input         io_wreq_bits_data_1_entries_perms_4_w,
  input         io_wreq_bits_data_1_entries_perms_4_r,
  input         io_wreq_bits_data_1_entries_perms_5_d,
  input         io_wreq_bits_data_1_entries_perms_5_a,
  input         io_wreq_bits_data_1_entries_perms_5_g,
  input         io_wreq_bits_data_1_entries_perms_5_u,
  input         io_wreq_bits_data_1_entries_perms_5_x,
  input         io_wreq_bits_data_1_entries_perms_5_w,
  input         io_wreq_bits_data_1_entries_perms_5_r,
  input         io_wreq_bits_data_1_entries_perms_6_d,
  input         io_wreq_bits_data_1_entries_perms_6_a,
  input         io_wreq_bits_data_1_entries_perms_6_g,
  input         io_wreq_bits_data_1_entries_perms_6_u,
  input         io_wreq_bits_data_1_entries_perms_6_x,
  input         io_wreq_bits_data_1_entries_perms_6_w,
  input         io_wreq_bits_data_1_entries_perms_6_r,
  input         io_wreq_bits_data_1_entries_perms_7_d,
  input         io_wreq_bits_data_1_entries_perms_7_a,
  input         io_wreq_bits_data_1_entries_perms_7_g,
  input         io_wreq_bits_data_1_entries_perms_7_u,
  input         io_wreq_bits_data_1_entries_perms_7_x,
  input         io_wreq_bits_data_1_entries_perms_7_w,
  input         io_wreq_bits_data_1_entries_perms_7_r,
  input         io_wreq_bits_data_1_entries_prefetch,
  input  [38:0] io_wreq_bits_data_1_ecc,
  input  [21:0] io_wreq_bits_data_2_entries_tag,
  input  [15:0] io_wreq_bits_data_2_entries_asid,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_7,
  input         io_wreq_bits_data_2_entries_vs_0,
  input         io_wreq_bits_data_2_entries_vs_1,
  input         io_wreq_bits_data_2_entries_vs_2,
  input         io_wreq_bits_data_2_entries_vs_3,
  input         io_wreq_bits_data_2_entries_vs_4,
  input         io_wreq_bits_data_2_entries_vs_5,
  input         io_wreq_bits_data_2_entries_vs_6,
  input         io_wreq_bits_data_2_entries_vs_7,
  input         io_wreq_bits_data_2_entries_perms_0_d,
  input         io_wreq_bits_data_2_entries_perms_0_a,
  input         io_wreq_bits_data_2_entries_perms_0_g,
  input         io_wreq_bits_data_2_entries_perms_0_u,
  input         io_wreq_bits_data_2_entries_perms_0_x,
  input         io_wreq_bits_data_2_entries_perms_0_w,
  input         io_wreq_bits_data_2_entries_perms_0_r,
  input         io_wreq_bits_data_2_entries_perms_1_d,
  input         io_wreq_bits_data_2_entries_perms_1_a,
  input         io_wreq_bits_data_2_entries_perms_1_g,
  input         io_wreq_bits_data_2_entries_perms_1_u,
  input         io_wreq_bits_data_2_entries_perms_1_x,
  input         io_wreq_bits_data_2_entries_perms_1_w,
  input         io_wreq_bits_data_2_entries_perms_1_r,
  input         io_wreq_bits_data_2_entries_perms_2_d,
  input         io_wreq_bits_data_2_entries_perms_2_a,
  input         io_wreq_bits_data_2_entries_perms_2_g,
  input         io_wreq_bits_data_2_entries_perms_2_u,
  input         io_wreq_bits_data_2_entries_perms_2_x,
  input         io_wreq_bits_data_2_entries_perms_2_w,
  input         io_wreq_bits_data_2_entries_perms_2_r,
  input         io_wreq_bits_data_2_entries_perms_3_d,
  input         io_wreq_bits_data_2_entries_perms_3_a,
  input         io_wreq_bits_data_2_entries_perms_3_g,
  input         io_wreq_bits_data_2_entries_perms_3_u,
  input         io_wreq_bits_data_2_entries_perms_3_x,
  input         io_wreq_bits_data_2_entries_perms_3_w,
  input         io_wreq_bits_data_2_entries_perms_3_r,
  input         io_wreq_bits_data_2_entries_perms_4_d,
  input         io_wreq_bits_data_2_entries_perms_4_a,
  input         io_wreq_bits_data_2_entries_perms_4_g,
  input         io_wreq_bits_data_2_entries_perms_4_u,
  input         io_wreq_bits_data_2_entries_perms_4_x,
  input         io_wreq_bits_data_2_entries_perms_4_w,
  input         io_wreq_bits_data_2_entries_perms_4_r,
  input         io_wreq_bits_data_2_entries_perms_5_d,
  input         io_wreq_bits_data_2_entries_perms_5_a,
  input         io_wreq_bits_data_2_entries_perms_5_g,
  input         io_wreq_bits_data_2_entries_perms_5_u,
  input         io_wreq_bits_data_2_entries_perms_5_x,
  input         io_wreq_bits_data_2_entries_perms_5_w,
  input         io_wreq_bits_data_2_entries_perms_5_r,
  input         io_wreq_bits_data_2_entries_perms_6_d,
  input         io_wreq_bits_data_2_entries_perms_6_a,
  input         io_wreq_bits_data_2_entries_perms_6_g,
  input         io_wreq_bits_data_2_entries_perms_6_u,
  input         io_wreq_bits_data_2_entries_perms_6_x,
  input         io_wreq_bits_data_2_entries_perms_6_w,
  input         io_wreq_bits_data_2_entries_perms_6_r,
  input         io_wreq_bits_data_2_entries_perms_7_d,
  input         io_wreq_bits_data_2_entries_perms_7_a,
  input         io_wreq_bits_data_2_entries_perms_7_g,
  input         io_wreq_bits_data_2_entries_perms_7_u,
  input         io_wreq_bits_data_2_entries_perms_7_x,
  input         io_wreq_bits_data_2_entries_perms_7_w,
  input         io_wreq_bits_data_2_entries_perms_7_r,
  input         io_wreq_bits_data_2_entries_prefetch,
  input  [38:0] io_wreq_bits_data_2_ecc,
  input  [21:0] io_wreq_bits_data_3_entries_tag,
  input  [15:0] io_wreq_bits_data_3_entries_asid,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_7,
  input         io_wreq_bits_data_3_entries_vs_0,
  input         io_wreq_bits_data_3_entries_vs_1,
  input         io_wreq_bits_data_3_entries_vs_2,
  input         io_wreq_bits_data_3_entries_vs_3,
  input         io_wreq_bits_data_3_entries_vs_4,
  input         io_wreq_bits_data_3_entries_vs_5,
  input         io_wreq_bits_data_3_entries_vs_6,
  input         io_wreq_bits_data_3_entries_vs_7,
  input         io_wreq_bits_data_3_entries_perms_0_d,
  input         io_wreq_bits_data_3_entries_perms_0_a,
  input         io_wreq_bits_data_3_entries_perms_0_g,
  input         io_wreq_bits_data_3_entries_perms_0_u,
  input         io_wreq_bits_data_3_entries_perms_0_x,
  input         io_wreq_bits_data_3_entries_perms_0_w,
  input         io_wreq_bits_data_3_entries_perms_0_r,
  input         io_wreq_bits_data_3_entries_perms_1_d,
  input         io_wreq_bits_data_3_entries_perms_1_a,
  input         io_wreq_bits_data_3_entries_perms_1_g,
  input         io_wreq_bits_data_3_entries_perms_1_u,
  input         io_wreq_bits_data_3_entries_perms_1_x,
  input         io_wreq_bits_data_3_entries_perms_1_w,
  input         io_wreq_bits_data_3_entries_perms_1_r,
  input         io_wreq_bits_data_3_entries_perms_2_d,
  input         io_wreq_bits_data_3_entries_perms_2_a,
  input         io_wreq_bits_data_3_entries_perms_2_g,
  input         io_wreq_bits_data_3_entries_perms_2_u,
  input         io_wreq_bits_data_3_entries_perms_2_x,
  input         io_wreq_bits_data_3_entries_perms_2_w,
  input         io_wreq_bits_data_3_entries_perms_2_r,
  input         io_wreq_bits_data_3_entries_perms_3_d,
  input         io_wreq_bits_data_3_entries_perms_3_a,
  input         io_wreq_bits_data_3_entries_perms_3_g,
  input         io_wreq_bits_data_3_entries_perms_3_u,
  input         io_wreq_bits_data_3_entries_perms_3_x,
  input         io_wreq_bits_data_3_entries_perms_3_w,
  input         io_wreq_bits_data_3_entries_perms_3_r,
  input         io_wreq_bits_data_3_entries_perms_4_d,
  input         io_wreq_bits_data_3_entries_perms_4_a,
  input         io_wreq_bits_data_3_entries_perms_4_g,
  input         io_wreq_bits_data_3_entries_perms_4_u,
  input         io_wreq_bits_data_3_entries_perms_4_x,
  input         io_wreq_bits_data_3_entries_perms_4_w,
  input         io_wreq_bits_data_3_entries_perms_4_r,
  input         io_wreq_bits_data_3_entries_perms_5_d,
  input         io_wreq_bits_data_3_entries_perms_5_a,
  input         io_wreq_bits_data_3_entries_perms_5_g,
  input         io_wreq_bits_data_3_entries_perms_5_u,
  input         io_wreq_bits_data_3_entries_perms_5_x,
  input         io_wreq_bits_data_3_entries_perms_5_w,
  input         io_wreq_bits_data_3_entries_perms_5_r,
  input         io_wreq_bits_data_3_entries_perms_6_d,
  input         io_wreq_bits_data_3_entries_perms_6_a,
  input         io_wreq_bits_data_3_entries_perms_6_g,
  input         io_wreq_bits_data_3_entries_perms_6_u,
  input         io_wreq_bits_data_3_entries_perms_6_x,
  input         io_wreq_bits_data_3_entries_perms_6_w,
  input         io_wreq_bits_data_3_entries_perms_6_r,
  input         io_wreq_bits_data_3_entries_perms_7_d,
  input         io_wreq_bits_data_3_entries_perms_7_a,
  input         io_wreq_bits_data_3_entries_perms_7_g,
  input         io_wreq_bits_data_3_entries_perms_7_u,
  input         io_wreq_bits_data_3_entries_perms_7_x,
  input         io_wreq_bits_data_3_entries_perms_7_w,
  input         io_wreq_bits_data_3_entries_perms_7_r,
  input         io_wreq_bits_data_3_entries_prefetch,
  input  [38:0] io_wreq_bits_data_3_ecc,
  input  [21:0] io_wreq_bits_data_4_entries_tag,
  input  [15:0] io_wreq_bits_data_4_entries_asid,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_4_entries_ppns_7,
  input         io_wreq_bits_data_4_entries_vs_0,
  input         io_wreq_bits_data_4_entries_vs_1,
  input         io_wreq_bits_data_4_entries_vs_2,
  input         io_wreq_bits_data_4_entries_vs_3,
  input         io_wreq_bits_data_4_entries_vs_4,
  input         io_wreq_bits_data_4_entries_vs_5,
  input         io_wreq_bits_data_4_entries_vs_6,
  input         io_wreq_bits_data_4_entries_vs_7,
  input         io_wreq_bits_data_4_entries_perms_0_d,
  input         io_wreq_bits_data_4_entries_perms_0_a,
  input         io_wreq_bits_data_4_entries_perms_0_g,
  input         io_wreq_bits_data_4_entries_perms_0_u,
  input         io_wreq_bits_data_4_entries_perms_0_x,
  input         io_wreq_bits_data_4_entries_perms_0_w,
  input         io_wreq_bits_data_4_entries_perms_0_r,
  input         io_wreq_bits_data_4_entries_perms_1_d,
  input         io_wreq_bits_data_4_entries_perms_1_a,
  input         io_wreq_bits_data_4_entries_perms_1_g,
  input         io_wreq_bits_data_4_entries_perms_1_u,
  input         io_wreq_bits_data_4_entries_perms_1_x,
  input         io_wreq_bits_data_4_entries_perms_1_w,
  input         io_wreq_bits_data_4_entries_perms_1_r,
  input         io_wreq_bits_data_4_entries_perms_2_d,
  input         io_wreq_bits_data_4_entries_perms_2_a,
  input         io_wreq_bits_data_4_entries_perms_2_g,
  input         io_wreq_bits_data_4_entries_perms_2_u,
  input         io_wreq_bits_data_4_entries_perms_2_x,
  input         io_wreq_bits_data_4_entries_perms_2_w,
  input         io_wreq_bits_data_4_entries_perms_2_r,
  input         io_wreq_bits_data_4_entries_perms_3_d,
  input         io_wreq_bits_data_4_entries_perms_3_a,
  input         io_wreq_bits_data_4_entries_perms_3_g,
  input         io_wreq_bits_data_4_entries_perms_3_u,
  input         io_wreq_bits_data_4_entries_perms_3_x,
  input         io_wreq_bits_data_4_entries_perms_3_w,
  input         io_wreq_bits_data_4_entries_perms_3_r,
  input         io_wreq_bits_data_4_entries_perms_4_d,
  input         io_wreq_bits_data_4_entries_perms_4_a,
  input         io_wreq_bits_data_4_entries_perms_4_g,
  input         io_wreq_bits_data_4_entries_perms_4_u,
  input         io_wreq_bits_data_4_entries_perms_4_x,
  input         io_wreq_bits_data_4_entries_perms_4_w,
  input         io_wreq_bits_data_4_entries_perms_4_r,
  input         io_wreq_bits_data_4_entries_perms_5_d,
  input         io_wreq_bits_data_4_entries_perms_5_a,
  input         io_wreq_bits_data_4_entries_perms_5_g,
  input         io_wreq_bits_data_4_entries_perms_5_u,
  input         io_wreq_bits_data_4_entries_perms_5_x,
  input         io_wreq_bits_data_4_entries_perms_5_w,
  input         io_wreq_bits_data_4_entries_perms_5_r,
  input         io_wreq_bits_data_4_entries_perms_6_d,
  input         io_wreq_bits_data_4_entries_perms_6_a,
  input         io_wreq_bits_data_4_entries_perms_6_g,
  input         io_wreq_bits_data_4_entries_perms_6_u,
  input         io_wreq_bits_data_4_entries_perms_6_x,
  input         io_wreq_bits_data_4_entries_perms_6_w,
  input         io_wreq_bits_data_4_entries_perms_6_r,
  input         io_wreq_bits_data_4_entries_perms_7_d,
  input         io_wreq_bits_data_4_entries_perms_7_a,
  input         io_wreq_bits_data_4_entries_perms_7_g,
  input         io_wreq_bits_data_4_entries_perms_7_u,
  input         io_wreq_bits_data_4_entries_perms_7_x,
  input         io_wreq_bits_data_4_entries_perms_7_w,
  input         io_wreq_bits_data_4_entries_perms_7_r,
  input         io_wreq_bits_data_4_entries_prefetch,
  input  [38:0] io_wreq_bits_data_4_ecc,
  input  [21:0] io_wreq_bits_data_5_entries_tag,
  input  [15:0] io_wreq_bits_data_5_entries_asid,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_5_entries_ppns_7,
  input         io_wreq_bits_data_5_entries_vs_0,
  input         io_wreq_bits_data_5_entries_vs_1,
  input         io_wreq_bits_data_5_entries_vs_2,
  input         io_wreq_bits_data_5_entries_vs_3,
  input         io_wreq_bits_data_5_entries_vs_4,
  input         io_wreq_bits_data_5_entries_vs_5,
  input         io_wreq_bits_data_5_entries_vs_6,
  input         io_wreq_bits_data_5_entries_vs_7,
  input         io_wreq_bits_data_5_entries_perms_0_d,
  input         io_wreq_bits_data_5_entries_perms_0_a,
  input         io_wreq_bits_data_5_entries_perms_0_g,
  input         io_wreq_bits_data_5_entries_perms_0_u,
  input         io_wreq_bits_data_5_entries_perms_0_x,
  input         io_wreq_bits_data_5_entries_perms_0_w,
  input         io_wreq_bits_data_5_entries_perms_0_r,
  input         io_wreq_bits_data_5_entries_perms_1_d,
  input         io_wreq_bits_data_5_entries_perms_1_a,
  input         io_wreq_bits_data_5_entries_perms_1_g,
  input         io_wreq_bits_data_5_entries_perms_1_u,
  input         io_wreq_bits_data_5_entries_perms_1_x,
  input         io_wreq_bits_data_5_entries_perms_1_w,
  input         io_wreq_bits_data_5_entries_perms_1_r,
  input         io_wreq_bits_data_5_entries_perms_2_d,
  input         io_wreq_bits_data_5_entries_perms_2_a,
  input         io_wreq_bits_data_5_entries_perms_2_g,
  input         io_wreq_bits_data_5_entries_perms_2_u,
  input         io_wreq_bits_data_5_entries_perms_2_x,
  input         io_wreq_bits_data_5_entries_perms_2_w,
  input         io_wreq_bits_data_5_entries_perms_2_r,
  input         io_wreq_bits_data_5_entries_perms_3_d,
  input         io_wreq_bits_data_5_entries_perms_3_a,
  input         io_wreq_bits_data_5_entries_perms_3_g,
  input         io_wreq_bits_data_5_entries_perms_3_u,
  input         io_wreq_bits_data_5_entries_perms_3_x,
  input         io_wreq_bits_data_5_entries_perms_3_w,
  input         io_wreq_bits_data_5_entries_perms_3_r,
  input         io_wreq_bits_data_5_entries_perms_4_d,
  input         io_wreq_bits_data_5_entries_perms_4_a,
  input         io_wreq_bits_data_5_entries_perms_4_g,
  input         io_wreq_bits_data_5_entries_perms_4_u,
  input         io_wreq_bits_data_5_entries_perms_4_x,
  input         io_wreq_bits_data_5_entries_perms_4_w,
  input         io_wreq_bits_data_5_entries_perms_4_r,
  input         io_wreq_bits_data_5_entries_perms_5_d,
  input         io_wreq_bits_data_5_entries_perms_5_a,
  input         io_wreq_bits_data_5_entries_perms_5_g,
  input         io_wreq_bits_data_5_entries_perms_5_u,
  input         io_wreq_bits_data_5_entries_perms_5_x,
  input         io_wreq_bits_data_5_entries_perms_5_w,
  input         io_wreq_bits_data_5_entries_perms_5_r,
  input         io_wreq_bits_data_5_entries_perms_6_d,
  input         io_wreq_bits_data_5_entries_perms_6_a,
  input         io_wreq_bits_data_5_entries_perms_6_g,
  input         io_wreq_bits_data_5_entries_perms_6_u,
  input         io_wreq_bits_data_5_entries_perms_6_x,
  input         io_wreq_bits_data_5_entries_perms_6_w,
  input         io_wreq_bits_data_5_entries_perms_6_r,
  input         io_wreq_bits_data_5_entries_perms_7_d,
  input         io_wreq_bits_data_5_entries_perms_7_a,
  input         io_wreq_bits_data_5_entries_perms_7_g,
  input         io_wreq_bits_data_5_entries_perms_7_u,
  input         io_wreq_bits_data_5_entries_perms_7_x,
  input         io_wreq_bits_data_5_entries_perms_7_w,
  input         io_wreq_bits_data_5_entries_perms_7_r,
  input         io_wreq_bits_data_5_entries_prefetch,
  input  [38:0] io_wreq_bits_data_5_ecc,
  input  [21:0] io_wreq_bits_data_6_entries_tag,
  input  [15:0] io_wreq_bits_data_6_entries_asid,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_6_entries_ppns_7,
  input         io_wreq_bits_data_6_entries_vs_0,
  input         io_wreq_bits_data_6_entries_vs_1,
  input         io_wreq_bits_data_6_entries_vs_2,
  input         io_wreq_bits_data_6_entries_vs_3,
  input         io_wreq_bits_data_6_entries_vs_4,
  input         io_wreq_bits_data_6_entries_vs_5,
  input         io_wreq_bits_data_6_entries_vs_6,
  input         io_wreq_bits_data_6_entries_vs_7,
  input         io_wreq_bits_data_6_entries_perms_0_d,
  input         io_wreq_bits_data_6_entries_perms_0_a,
  input         io_wreq_bits_data_6_entries_perms_0_g,
  input         io_wreq_bits_data_6_entries_perms_0_u,
  input         io_wreq_bits_data_6_entries_perms_0_x,
  input         io_wreq_bits_data_6_entries_perms_0_w,
  input         io_wreq_bits_data_6_entries_perms_0_r,
  input         io_wreq_bits_data_6_entries_perms_1_d,
  input         io_wreq_bits_data_6_entries_perms_1_a,
  input         io_wreq_bits_data_6_entries_perms_1_g,
  input         io_wreq_bits_data_6_entries_perms_1_u,
  input         io_wreq_bits_data_6_entries_perms_1_x,
  input         io_wreq_bits_data_6_entries_perms_1_w,
  input         io_wreq_bits_data_6_entries_perms_1_r,
  input         io_wreq_bits_data_6_entries_perms_2_d,
  input         io_wreq_bits_data_6_entries_perms_2_a,
  input         io_wreq_bits_data_6_entries_perms_2_g,
  input         io_wreq_bits_data_6_entries_perms_2_u,
  input         io_wreq_bits_data_6_entries_perms_2_x,
  input         io_wreq_bits_data_6_entries_perms_2_w,
  input         io_wreq_bits_data_6_entries_perms_2_r,
  input         io_wreq_bits_data_6_entries_perms_3_d,
  input         io_wreq_bits_data_6_entries_perms_3_a,
  input         io_wreq_bits_data_6_entries_perms_3_g,
  input         io_wreq_bits_data_6_entries_perms_3_u,
  input         io_wreq_bits_data_6_entries_perms_3_x,
  input         io_wreq_bits_data_6_entries_perms_3_w,
  input         io_wreq_bits_data_6_entries_perms_3_r,
  input         io_wreq_bits_data_6_entries_perms_4_d,
  input         io_wreq_bits_data_6_entries_perms_4_a,
  input         io_wreq_bits_data_6_entries_perms_4_g,
  input         io_wreq_bits_data_6_entries_perms_4_u,
  input         io_wreq_bits_data_6_entries_perms_4_x,
  input         io_wreq_bits_data_6_entries_perms_4_w,
  input         io_wreq_bits_data_6_entries_perms_4_r,
  input         io_wreq_bits_data_6_entries_perms_5_d,
  input         io_wreq_bits_data_6_entries_perms_5_a,
  input         io_wreq_bits_data_6_entries_perms_5_g,
  input         io_wreq_bits_data_6_entries_perms_5_u,
  input         io_wreq_bits_data_6_entries_perms_5_x,
  input         io_wreq_bits_data_6_entries_perms_5_w,
  input         io_wreq_bits_data_6_entries_perms_5_r,
  input         io_wreq_bits_data_6_entries_perms_6_d,
  input         io_wreq_bits_data_6_entries_perms_6_a,
  input         io_wreq_bits_data_6_entries_perms_6_g,
  input         io_wreq_bits_data_6_entries_perms_6_u,
  input         io_wreq_bits_data_6_entries_perms_6_x,
  input         io_wreq_bits_data_6_entries_perms_6_w,
  input         io_wreq_bits_data_6_entries_perms_6_r,
  input         io_wreq_bits_data_6_entries_perms_7_d,
  input         io_wreq_bits_data_6_entries_perms_7_a,
  input         io_wreq_bits_data_6_entries_perms_7_g,
  input         io_wreq_bits_data_6_entries_perms_7_u,
  input         io_wreq_bits_data_6_entries_perms_7_x,
  input         io_wreq_bits_data_6_entries_perms_7_w,
  input         io_wreq_bits_data_6_entries_perms_7_r,
  input         io_wreq_bits_data_6_entries_prefetch,
  input  [38:0] io_wreq_bits_data_6_ecc,
  input  [21:0] io_wreq_bits_data_7_entries_tag,
  input  [15:0] io_wreq_bits_data_7_entries_asid,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_7_entries_ppns_7,
  input         io_wreq_bits_data_7_entries_vs_0,
  input         io_wreq_bits_data_7_entries_vs_1,
  input         io_wreq_bits_data_7_entries_vs_2,
  input         io_wreq_bits_data_7_entries_vs_3,
  input         io_wreq_bits_data_7_entries_vs_4,
  input         io_wreq_bits_data_7_entries_vs_5,
  input         io_wreq_bits_data_7_entries_vs_6,
  input         io_wreq_bits_data_7_entries_vs_7,
  input         io_wreq_bits_data_7_entries_perms_0_d,
  input         io_wreq_bits_data_7_entries_perms_0_a,
  input         io_wreq_bits_data_7_entries_perms_0_g,
  input         io_wreq_bits_data_7_entries_perms_0_u,
  input         io_wreq_bits_data_7_entries_perms_0_x,
  input         io_wreq_bits_data_7_entries_perms_0_w,
  input         io_wreq_bits_data_7_entries_perms_0_r,
  input         io_wreq_bits_data_7_entries_perms_1_d,
  input         io_wreq_bits_data_7_entries_perms_1_a,
  input         io_wreq_bits_data_7_entries_perms_1_g,
  input         io_wreq_bits_data_7_entries_perms_1_u,
  input         io_wreq_bits_data_7_entries_perms_1_x,
  input         io_wreq_bits_data_7_entries_perms_1_w,
  input         io_wreq_bits_data_7_entries_perms_1_r,
  input         io_wreq_bits_data_7_entries_perms_2_d,
  input         io_wreq_bits_data_7_entries_perms_2_a,
  input         io_wreq_bits_data_7_entries_perms_2_g,
  input         io_wreq_bits_data_7_entries_perms_2_u,
  input         io_wreq_bits_data_7_entries_perms_2_x,
  input         io_wreq_bits_data_7_entries_perms_2_w,
  input         io_wreq_bits_data_7_entries_perms_2_r,
  input         io_wreq_bits_data_7_entries_perms_3_d,
  input         io_wreq_bits_data_7_entries_perms_3_a,
  input         io_wreq_bits_data_7_entries_perms_3_g,
  input         io_wreq_bits_data_7_entries_perms_3_u,
  input         io_wreq_bits_data_7_entries_perms_3_x,
  input         io_wreq_bits_data_7_entries_perms_3_w,
  input         io_wreq_bits_data_7_entries_perms_3_r,
  input         io_wreq_bits_data_7_entries_perms_4_d,
  input         io_wreq_bits_data_7_entries_perms_4_a,
  input         io_wreq_bits_data_7_entries_perms_4_g,
  input         io_wreq_bits_data_7_entries_perms_4_u,
  input         io_wreq_bits_data_7_entries_perms_4_x,
  input         io_wreq_bits_data_7_entries_perms_4_w,
  input         io_wreq_bits_data_7_entries_perms_4_r,
  input         io_wreq_bits_data_7_entries_perms_5_d,
  input         io_wreq_bits_data_7_entries_perms_5_a,
  input         io_wreq_bits_data_7_entries_perms_5_g,
  input         io_wreq_bits_data_7_entries_perms_5_u,
  input         io_wreq_bits_data_7_entries_perms_5_x,
  input         io_wreq_bits_data_7_entries_perms_5_w,
  input         io_wreq_bits_data_7_entries_perms_5_r,
  input         io_wreq_bits_data_7_entries_perms_6_d,
  input         io_wreq_bits_data_7_entries_perms_6_a,
  input         io_wreq_bits_data_7_entries_perms_6_g,
  input         io_wreq_bits_data_7_entries_perms_6_u,
  input         io_wreq_bits_data_7_entries_perms_6_x,
  input         io_wreq_bits_data_7_entries_perms_6_w,
  input         io_wreq_bits_data_7_entries_perms_6_r,
  input         io_wreq_bits_data_7_entries_perms_7_d,
  input         io_wreq_bits_data_7_entries_perms_7_a,
  input         io_wreq_bits_data_7_entries_perms_7_g,
  input         io_wreq_bits_data_7_entries_perms_7_u,
  input         io_wreq_bits_data_7_entries_perms_7_x,
  input         io_wreq_bits_data_7_entries_perms_7_w,
  input         io_wreq_bits_data_7_entries_perms_7_r,
  input         io_wreq_bits_data_7_entries_prefetch,
  input  [38:0] io_wreq_bits_data_7_ecc,
  input  [7:0]  io_wreq_bits_waymask
);
  wire [1:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_4; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_5; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_6; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_wdata_7; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_4; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_5; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_6; // @[SRAMTemplate.scala 105:26]
  wire [333:0] array_RW0_rdata_7; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_6; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_7; // @[SRAMTemplate.scala 105:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 123:38]
  wire [9:0] wdata_lo_lo_hi = {io_wreq_bits_data_0_entries_perms_2_x,io_wreq_bits_data_0_entries_perms_2_w,
    io_wreq_bits_data_0_entries_perms_2_r,io_wreq_bits_data_0_entries_perms_1_d,io_wreq_bits_data_0_entries_perms_1_a
    ,io_wreq_bits_data_0_entries_perms_1_g,io_wreq_bits_data_0_entries_perms_1_u,
    io_wreq_bits_data_0_entries_perms_1_x,io_wreq_bits_data_0_entries_perms_1_w,io_wreq_bits_data_0_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo = {wdata_lo_lo_hi,io_wreq_bits_data_0_entries_perms_0_d,
    io_wreq_bits_data_0_entries_perms_0_a,io_wreq_bits_data_0_entries_perms_0_g,io_wreq_bits_data_0_entries_perms_0_u
    ,io_wreq_bits_data_0_entries_perms_0_x,io_wreq_bits_data_0_entries_perms_0_w,
    io_wreq_bits_data_0_entries_perms_0_r,io_wreq_bits_data_0_entries_prefetch,io_wreq_bits_data_0_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi = {io_wreq_bits_data_0_entries_perms_5_r,io_wreq_bits_data_0_entries_perms_4_d,
    io_wreq_bits_data_0_entries_perms_4_a,io_wreq_bits_data_0_entries_perms_4_g,io_wreq_bits_data_0_entries_perms_4_u
    ,io_wreq_bits_data_0_entries_perms_4_x,io_wreq_bits_data_0_entries_perms_4_w,
    io_wreq_bits_data_0_entries_perms_4_r,io_wreq_bits_data_0_entries_perms_3_d,io_wreq_bits_data_0_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi = {wdata_lo_hi_hi,io_wreq_bits_data_0_entries_perms_3_g,
    io_wreq_bits_data_0_entries_perms_3_u,io_wreq_bits_data_0_entries_perms_3_x,io_wreq_bits_data_0_entries_perms_3_w
    ,io_wreq_bits_data_0_entries_perms_3_r,io_wreq_bits_data_0_entries_perms_2_d,
    io_wreq_bits_data_0_entries_perms_2_a,io_wreq_bits_data_0_entries_perms_2_g,io_wreq_bits_data_0_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo = {wdata_lo_hi,wdata_lo_lo}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi = {io_wreq_bits_data_0_entries_perms_7_a,io_wreq_bits_data_0_entries_perms_7_g,
    io_wreq_bits_data_0_entries_perms_7_u,io_wreq_bits_data_0_entries_perms_7_x,io_wreq_bits_data_0_entries_perms_7_w
    ,io_wreq_bits_data_0_entries_perms_7_r,io_wreq_bits_data_0_entries_perms_6_d,
    io_wreq_bits_data_0_entries_perms_6_a,io_wreq_bits_data_0_entries_perms_6_g,io_wreq_bits_data_0_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo = {wdata_hi_lo_hi,io_wreq_bits_data_0_entries_perms_6_x,
    io_wreq_bits_data_0_entries_perms_6_w,io_wreq_bits_data_0_entries_perms_6_r,io_wreq_bits_data_0_entries_perms_5_d
    ,io_wreq_bits_data_0_entries_perms_5_a,io_wreq_bits_data_0_entries_perms_5_g,
    io_wreq_bits_data_0_entries_perms_5_u,io_wreq_bits_data_0_entries_perms_5_x,io_wreq_bits_data_0_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi = {io_wreq_bits_data_0_entries_tag,io_wreq_bits_data_0_entries_asid,
    io_wreq_bits_data_0_entries_ppns_7,io_wreq_bits_data_0_entries_ppns_6,io_wreq_bits_data_0_entries_ppns_5,
    io_wreq_bits_data_0_entries_ppns_4,io_wreq_bits_data_0_entries_ppns_3,io_wreq_bits_data_0_entries_ppns_2,
    io_wreq_bits_data_0_entries_ppns_1,io_wreq_bits_data_0_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi = {wdata_hi_hi_hi,io_wreq_bits_data_0_entries_vs_7,io_wreq_bits_data_0_entries_vs_6,
    io_wreq_bits_data_0_entries_vs_5,io_wreq_bits_data_0_entries_vs_4,io_wreq_bits_data_0_entries_vs_3,
    io_wreq_bits_data_0_entries_vs_2,io_wreq_bits_data_0_entries_vs_1,io_wreq_bits_data_0_entries_vs_0,
    io_wreq_bits_data_0_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi = {wdata_hi_hi,wdata_hi_lo}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_1 = {io_wreq_bits_data_1_entries_perms_2_x,io_wreq_bits_data_1_entries_perms_2_w,
    io_wreq_bits_data_1_entries_perms_2_r,io_wreq_bits_data_1_entries_perms_1_d,io_wreq_bits_data_1_entries_perms_1_a
    ,io_wreq_bits_data_1_entries_perms_1_g,io_wreq_bits_data_1_entries_perms_1_u,
    io_wreq_bits_data_1_entries_perms_1_x,io_wreq_bits_data_1_entries_perms_1_w,io_wreq_bits_data_1_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_1 = {wdata_lo_lo_hi_1,io_wreq_bits_data_1_entries_perms_0_d,
    io_wreq_bits_data_1_entries_perms_0_a,io_wreq_bits_data_1_entries_perms_0_g,io_wreq_bits_data_1_entries_perms_0_u
    ,io_wreq_bits_data_1_entries_perms_0_x,io_wreq_bits_data_1_entries_perms_0_w,
    io_wreq_bits_data_1_entries_perms_0_r,io_wreq_bits_data_1_entries_prefetch,io_wreq_bits_data_1_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_1 = {io_wreq_bits_data_1_entries_perms_5_r,io_wreq_bits_data_1_entries_perms_4_d,
    io_wreq_bits_data_1_entries_perms_4_a,io_wreq_bits_data_1_entries_perms_4_g,io_wreq_bits_data_1_entries_perms_4_u
    ,io_wreq_bits_data_1_entries_perms_4_x,io_wreq_bits_data_1_entries_perms_4_w,
    io_wreq_bits_data_1_entries_perms_4_r,io_wreq_bits_data_1_entries_perms_3_d,io_wreq_bits_data_1_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_1 = {wdata_lo_hi_hi_1,io_wreq_bits_data_1_entries_perms_3_g,
    io_wreq_bits_data_1_entries_perms_3_u,io_wreq_bits_data_1_entries_perms_3_x,io_wreq_bits_data_1_entries_perms_3_w
    ,io_wreq_bits_data_1_entries_perms_3_r,io_wreq_bits_data_1_entries_perms_2_d,
    io_wreq_bits_data_1_entries_perms_2_a,io_wreq_bits_data_1_entries_perms_2_g,io_wreq_bits_data_1_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_1 = {wdata_lo_hi_1,wdata_lo_lo_1}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_1 = {io_wreq_bits_data_1_entries_perms_7_a,io_wreq_bits_data_1_entries_perms_7_g,
    io_wreq_bits_data_1_entries_perms_7_u,io_wreq_bits_data_1_entries_perms_7_x,io_wreq_bits_data_1_entries_perms_7_w
    ,io_wreq_bits_data_1_entries_perms_7_r,io_wreq_bits_data_1_entries_perms_6_d,
    io_wreq_bits_data_1_entries_perms_6_a,io_wreq_bits_data_1_entries_perms_6_g,io_wreq_bits_data_1_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_1 = {wdata_hi_lo_hi_1,io_wreq_bits_data_1_entries_perms_6_x,
    io_wreq_bits_data_1_entries_perms_6_w,io_wreq_bits_data_1_entries_perms_6_r,io_wreq_bits_data_1_entries_perms_5_d
    ,io_wreq_bits_data_1_entries_perms_5_a,io_wreq_bits_data_1_entries_perms_5_g,
    io_wreq_bits_data_1_entries_perms_5_u,io_wreq_bits_data_1_entries_perms_5_x,io_wreq_bits_data_1_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_1 = {io_wreq_bits_data_1_entries_tag,io_wreq_bits_data_1_entries_asid,
    io_wreq_bits_data_1_entries_ppns_7,io_wreq_bits_data_1_entries_ppns_6,io_wreq_bits_data_1_entries_ppns_5,
    io_wreq_bits_data_1_entries_ppns_4,io_wreq_bits_data_1_entries_ppns_3,io_wreq_bits_data_1_entries_ppns_2,
    io_wreq_bits_data_1_entries_ppns_1,io_wreq_bits_data_1_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_1 = {wdata_hi_hi_hi_1,io_wreq_bits_data_1_entries_vs_7,io_wreq_bits_data_1_entries_vs_6,
    io_wreq_bits_data_1_entries_vs_5,io_wreq_bits_data_1_entries_vs_4,io_wreq_bits_data_1_entries_vs_3,
    io_wreq_bits_data_1_entries_vs_2,io_wreq_bits_data_1_entries_vs_1,io_wreq_bits_data_1_entries_vs_0,
    io_wreq_bits_data_1_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_1 = {wdata_hi_hi_1,wdata_hi_lo_1}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_2 = {io_wreq_bits_data_2_entries_perms_2_x,io_wreq_bits_data_2_entries_perms_2_w,
    io_wreq_bits_data_2_entries_perms_2_r,io_wreq_bits_data_2_entries_perms_1_d,io_wreq_bits_data_2_entries_perms_1_a
    ,io_wreq_bits_data_2_entries_perms_1_g,io_wreq_bits_data_2_entries_perms_1_u,
    io_wreq_bits_data_2_entries_perms_1_x,io_wreq_bits_data_2_entries_perms_1_w,io_wreq_bits_data_2_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_2 = {wdata_lo_lo_hi_2,io_wreq_bits_data_2_entries_perms_0_d,
    io_wreq_bits_data_2_entries_perms_0_a,io_wreq_bits_data_2_entries_perms_0_g,io_wreq_bits_data_2_entries_perms_0_u
    ,io_wreq_bits_data_2_entries_perms_0_x,io_wreq_bits_data_2_entries_perms_0_w,
    io_wreq_bits_data_2_entries_perms_0_r,io_wreq_bits_data_2_entries_prefetch,io_wreq_bits_data_2_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_2 = {io_wreq_bits_data_2_entries_perms_5_r,io_wreq_bits_data_2_entries_perms_4_d,
    io_wreq_bits_data_2_entries_perms_4_a,io_wreq_bits_data_2_entries_perms_4_g,io_wreq_bits_data_2_entries_perms_4_u
    ,io_wreq_bits_data_2_entries_perms_4_x,io_wreq_bits_data_2_entries_perms_4_w,
    io_wreq_bits_data_2_entries_perms_4_r,io_wreq_bits_data_2_entries_perms_3_d,io_wreq_bits_data_2_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_2 = {wdata_lo_hi_hi_2,io_wreq_bits_data_2_entries_perms_3_g,
    io_wreq_bits_data_2_entries_perms_3_u,io_wreq_bits_data_2_entries_perms_3_x,io_wreq_bits_data_2_entries_perms_3_w
    ,io_wreq_bits_data_2_entries_perms_3_r,io_wreq_bits_data_2_entries_perms_2_d,
    io_wreq_bits_data_2_entries_perms_2_a,io_wreq_bits_data_2_entries_perms_2_g,io_wreq_bits_data_2_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_2 = {wdata_lo_hi_2,wdata_lo_lo_2}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_2 = {io_wreq_bits_data_2_entries_perms_7_a,io_wreq_bits_data_2_entries_perms_7_g,
    io_wreq_bits_data_2_entries_perms_7_u,io_wreq_bits_data_2_entries_perms_7_x,io_wreq_bits_data_2_entries_perms_7_w
    ,io_wreq_bits_data_2_entries_perms_7_r,io_wreq_bits_data_2_entries_perms_6_d,
    io_wreq_bits_data_2_entries_perms_6_a,io_wreq_bits_data_2_entries_perms_6_g,io_wreq_bits_data_2_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_2 = {wdata_hi_lo_hi_2,io_wreq_bits_data_2_entries_perms_6_x,
    io_wreq_bits_data_2_entries_perms_6_w,io_wreq_bits_data_2_entries_perms_6_r,io_wreq_bits_data_2_entries_perms_5_d
    ,io_wreq_bits_data_2_entries_perms_5_a,io_wreq_bits_data_2_entries_perms_5_g,
    io_wreq_bits_data_2_entries_perms_5_u,io_wreq_bits_data_2_entries_perms_5_x,io_wreq_bits_data_2_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_2 = {io_wreq_bits_data_2_entries_tag,io_wreq_bits_data_2_entries_asid,
    io_wreq_bits_data_2_entries_ppns_7,io_wreq_bits_data_2_entries_ppns_6,io_wreq_bits_data_2_entries_ppns_5,
    io_wreq_bits_data_2_entries_ppns_4,io_wreq_bits_data_2_entries_ppns_3,io_wreq_bits_data_2_entries_ppns_2,
    io_wreq_bits_data_2_entries_ppns_1,io_wreq_bits_data_2_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_2 = {wdata_hi_hi_hi_2,io_wreq_bits_data_2_entries_vs_7,io_wreq_bits_data_2_entries_vs_6,
    io_wreq_bits_data_2_entries_vs_5,io_wreq_bits_data_2_entries_vs_4,io_wreq_bits_data_2_entries_vs_3,
    io_wreq_bits_data_2_entries_vs_2,io_wreq_bits_data_2_entries_vs_1,io_wreq_bits_data_2_entries_vs_0,
    io_wreq_bits_data_2_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_2 = {wdata_hi_hi_2,wdata_hi_lo_2}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_3 = {io_wreq_bits_data_3_entries_perms_2_x,io_wreq_bits_data_3_entries_perms_2_w,
    io_wreq_bits_data_3_entries_perms_2_r,io_wreq_bits_data_3_entries_perms_1_d,io_wreq_bits_data_3_entries_perms_1_a
    ,io_wreq_bits_data_3_entries_perms_1_g,io_wreq_bits_data_3_entries_perms_1_u,
    io_wreq_bits_data_3_entries_perms_1_x,io_wreq_bits_data_3_entries_perms_1_w,io_wreq_bits_data_3_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_3 = {wdata_lo_lo_hi_3,io_wreq_bits_data_3_entries_perms_0_d,
    io_wreq_bits_data_3_entries_perms_0_a,io_wreq_bits_data_3_entries_perms_0_g,io_wreq_bits_data_3_entries_perms_0_u
    ,io_wreq_bits_data_3_entries_perms_0_x,io_wreq_bits_data_3_entries_perms_0_w,
    io_wreq_bits_data_3_entries_perms_0_r,io_wreq_bits_data_3_entries_prefetch,io_wreq_bits_data_3_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_3 = {io_wreq_bits_data_3_entries_perms_5_r,io_wreq_bits_data_3_entries_perms_4_d,
    io_wreq_bits_data_3_entries_perms_4_a,io_wreq_bits_data_3_entries_perms_4_g,io_wreq_bits_data_3_entries_perms_4_u
    ,io_wreq_bits_data_3_entries_perms_4_x,io_wreq_bits_data_3_entries_perms_4_w,
    io_wreq_bits_data_3_entries_perms_4_r,io_wreq_bits_data_3_entries_perms_3_d,io_wreq_bits_data_3_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_3 = {wdata_lo_hi_hi_3,io_wreq_bits_data_3_entries_perms_3_g,
    io_wreq_bits_data_3_entries_perms_3_u,io_wreq_bits_data_3_entries_perms_3_x,io_wreq_bits_data_3_entries_perms_3_w
    ,io_wreq_bits_data_3_entries_perms_3_r,io_wreq_bits_data_3_entries_perms_2_d,
    io_wreq_bits_data_3_entries_perms_2_a,io_wreq_bits_data_3_entries_perms_2_g,io_wreq_bits_data_3_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_3 = {wdata_lo_hi_3,wdata_lo_lo_3}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_3 = {io_wreq_bits_data_3_entries_perms_7_a,io_wreq_bits_data_3_entries_perms_7_g,
    io_wreq_bits_data_3_entries_perms_7_u,io_wreq_bits_data_3_entries_perms_7_x,io_wreq_bits_data_3_entries_perms_7_w
    ,io_wreq_bits_data_3_entries_perms_7_r,io_wreq_bits_data_3_entries_perms_6_d,
    io_wreq_bits_data_3_entries_perms_6_a,io_wreq_bits_data_3_entries_perms_6_g,io_wreq_bits_data_3_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_3 = {wdata_hi_lo_hi_3,io_wreq_bits_data_3_entries_perms_6_x,
    io_wreq_bits_data_3_entries_perms_6_w,io_wreq_bits_data_3_entries_perms_6_r,io_wreq_bits_data_3_entries_perms_5_d
    ,io_wreq_bits_data_3_entries_perms_5_a,io_wreq_bits_data_3_entries_perms_5_g,
    io_wreq_bits_data_3_entries_perms_5_u,io_wreq_bits_data_3_entries_perms_5_x,io_wreq_bits_data_3_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_3 = {io_wreq_bits_data_3_entries_tag,io_wreq_bits_data_3_entries_asid,
    io_wreq_bits_data_3_entries_ppns_7,io_wreq_bits_data_3_entries_ppns_6,io_wreq_bits_data_3_entries_ppns_5,
    io_wreq_bits_data_3_entries_ppns_4,io_wreq_bits_data_3_entries_ppns_3,io_wreq_bits_data_3_entries_ppns_2,
    io_wreq_bits_data_3_entries_ppns_1,io_wreq_bits_data_3_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_3 = {wdata_hi_hi_hi_3,io_wreq_bits_data_3_entries_vs_7,io_wreq_bits_data_3_entries_vs_6,
    io_wreq_bits_data_3_entries_vs_5,io_wreq_bits_data_3_entries_vs_4,io_wreq_bits_data_3_entries_vs_3,
    io_wreq_bits_data_3_entries_vs_2,io_wreq_bits_data_3_entries_vs_1,io_wreq_bits_data_3_entries_vs_0,
    io_wreq_bits_data_3_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_3 = {wdata_hi_hi_3,wdata_hi_lo_3}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_4 = {io_wreq_bits_data_4_entries_perms_2_x,io_wreq_bits_data_4_entries_perms_2_w,
    io_wreq_bits_data_4_entries_perms_2_r,io_wreq_bits_data_4_entries_perms_1_d,io_wreq_bits_data_4_entries_perms_1_a
    ,io_wreq_bits_data_4_entries_perms_1_g,io_wreq_bits_data_4_entries_perms_1_u,
    io_wreq_bits_data_4_entries_perms_1_x,io_wreq_bits_data_4_entries_perms_1_w,io_wreq_bits_data_4_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_4 = {wdata_lo_lo_hi_4,io_wreq_bits_data_4_entries_perms_0_d,
    io_wreq_bits_data_4_entries_perms_0_a,io_wreq_bits_data_4_entries_perms_0_g,io_wreq_bits_data_4_entries_perms_0_u
    ,io_wreq_bits_data_4_entries_perms_0_x,io_wreq_bits_data_4_entries_perms_0_w,
    io_wreq_bits_data_4_entries_perms_0_r,io_wreq_bits_data_4_entries_prefetch,io_wreq_bits_data_4_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_4 = {io_wreq_bits_data_4_entries_perms_5_r,io_wreq_bits_data_4_entries_perms_4_d,
    io_wreq_bits_data_4_entries_perms_4_a,io_wreq_bits_data_4_entries_perms_4_g,io_wreq_bits_data_4_entries_perms_4_u
    ,io_wreq_bits_data_4_entries_perms_4_x,io_wreq_bits_data_4_entries_perms_4_w,
    io_wreq_bits_data_4_entries_perms_4_r,io_wreq_bits_data_4_entries_perms_3_d,io_wreq_bits_data_4_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_4 = {wdata_lo_hi_hi_4,io_wreq_bits_data_4_entries_perms_3_g,
    io_wreq_bits_data_4_entries_perms_3_u,io_wreq_bits_data_4_entries_perms_3_x,io_wreq_bits_data_4_entries_perms_3_w
    ,io_wreq_bits_data_4_entries_perms_3_r,io_wreq_bits_data_4_entries_perms_2_d,
    io_wreq_bits_data_4_entries_perms_2_a,io_wreq_bits_data_4_entries_perms_2_g,io_wreq_bits_data_4_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_4 = {wdata_lo_hi_4,wdata_lo_lo_4}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_4 = {io_wreq_bits_data_4_entries_perms_7_a,io_wreq_bits_data_4_entries_perms_7_g,
    io_wreq_bits_data_4_entries_perms_7_u,io_wreq_bits_data_4_entries_perms_7_x,io_wreq_bits_data_4_entries_perms_7_w
    ,io_wreq_bits_data_4_entries_perms_7_r,io_wreq_bits_data_4_entries_perms_6_d,
    io_wreq_bits_data_4_entries_perms_6_a,io_wreq_bits_data_4_entries_perms_6_g,io_wreq_bits_data_4_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_4 = {wdata_hi_lo_hi_4,io_wreq_bits_data_4_entries_perms_6_x,
    io_wreq_bits_data_4_entries_perms_6_w,io_wreq_bits_data_4_entries_perms_6_r,io_wreq_bits_data_4_entries_perms_5_d
    ,io_wreq_bits_data_4_entries_perms_5_a,io_wreq_bits_data_4_entries_perms_5_g,
    io_wreq_bits_data_4_entries_perms_5_u,io_wreq_bits_data_4_entries_perms_5_x,io_wreq_bits_data_4_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_4 = {io_wreq_bits_data_4_entries_tag,io_wreq_bits_data_4_entries_asid,
    io_wreq_bits_data_4_entries_ppns_7,io_wreq_bits_data_4_entries_ppns_6,io_wreq_bits_data_4_entries_ppns_5,
    io_wreq_bits_data_4_entries_ppns_4,io_wreq_bits_data_4_entries_ppns_3,io_wreq_bits_data_4_entries_ppns_2,
    io_wreq_bits_data_4_entries_ppns_1,io_wreq_bits_data_4_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_4 = {wdata_hi_hi_hi_4,io_wreq_bits_data_4_entries_vs_7,io_wreq_bits_data_4_entries_vs_6,
    io_wreq_bits_data_4_entries_vs_5,io_wreq_bits_data_4_entries_vs_4,io_wreq_bits_data_4_entries_vs_3,
    io_wreq_bits_data_4_entries_vs_2,io_wreq_bits_data_4_entries_vs_1,io_wreq_bits_data_4_entries_vs_0,
    io_wreq_bits_data_4_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_4 = {wdata_hi_hi_4,wdata_hi_lo_4}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_5 = {io_wreq_bits_data_5_entries_perms_2_x,io_wreq_bits_data_5_entries_perms_2_w,
    io_wreq_bits_data_5_entries_perms_2_r,io_wreq_bits_data_5_entries_perms_1_d,io_wreq_bits_data_5_entries_perms_1_a
    ,io_wreq_bits_data_5_entries_perms_1_g,io_wreq_bits_data_5_entries_perms_1_u,
    io_wreq_bits_data_5_entries_perms_1_x,io_wreq_bits_data_5_entries_perms_1_w,io_wreq_bits_data_5_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_5 = {wdata_lo_lo_hi_5,io_wreq_bits_data_5_entries_perms_0_d,
    io_wreq_bits_data_5_entries_perms_0_a,io_wreq_bits_data_5_entries_perms_0_g,io_wreq_bits_data_5_entries_perms_0_u
    ,io_wreq_bits_data_5_entries_perms_0_x,io_wreq_bits_data_5_entries_perms_0_w,
    io_wreq_bits_data_5_entries_perms_0_r,io_wreq_bits_data_5_entries_prefetch,io_wreq_bits_data_5_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_5 = {io_wreq_bits_data_5_entries_perms_5_r,io_wreq_bits_data_5_entries_perms_4_d,
    io_wreq_bits_data_5_entries_perms_4_a,io_wreq_bits_data_5_entries_perms_4_g,io_wreq_bits_data_5_entries_perms_4_u
    ,io_wreq_bits_data_5_entries_perms_4_x,io_wreq_bits_data_5_entries_perms_4_w,
    io_wreq_bits_data_5_entries_perms_4_r,io_wreq_bits_data_5_entries_perms_3_d,io_wreq_bits_data_5_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_5 = {wdata_lo_hi_hi_5,io_wreq_bits_data_5_entries_perms_3_g,
    io_wreq_bits_data_5_entries_perms_3_u,io_wreq_bits_data_5_entries_perms_3_x,io_wreq_bits_data_5_entries_perms_3_w
    ,io_wreq_bits_data_5_entries_perms_3_r,io_wreq_bits_data_5_entries_perms_2_d,
    io_wreq_bits_data_5_entries_perms_2_a,io_wreq_bits_data_5_entries_perms_2_g,io_wreq_bits_data_5_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_5 = {wdata_lo_hi_5,wdata_lo_lo_5}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_5 = {io_wreq_bits_data_5_entries_perms_7_a,io_wreq_bits_data_5_entries_perms_7_g,
    io_wreq_bits_data_5_entries_perms_7_u,io_wreq_bits_data_5_entries_perms_7_x,io_wreq_bits_data_5_entries_perms_7_w
    ,io_wreq_bits_data_5_entries_perms_7_r,io_wreq_bits_data_5_entries_perms_6_d,
    io_wreq_bits_data_5_entries_perms_6_a,io_wreq_bits_data_5_entries_perms_6_g,io_wreq_bits_data_5_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_5 = {wdata_hi_lo_hi_5,io_wreq_bits_data_5_entries_perms_6_x,
    io_wreq_bits_data_5_entries_perms_6_w,io_wreq_bits_data_5_entries_perms_6_r,io_wreq_bits_data_5_entries_perms_5_d
    ,io_wreq_bits_data_5_entries_perms_5_a,io_wreq_bits_data_5_entries_perms_5_g,
    io_wreq_bits_data_5_entries_perms_5_u,io_wreq_bits_data_5_entries_perms_5_x,io_wreq_bits_data_5_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_5 = {io_wreq_bits_data_5_entries_tag,io_wreq_bits_data_5_entries_asid,
    io_wreq_bits_data_5_entries_ppns_7,io_wreq_bits_data_5_entries_ppns_6,io_wreq_bits_data_5_entries_ppns_5,
    io_wreq_bits_data_5_entries_ppns_4,io_wreq_bits_data_5_entries_ppns_3,io_wreq_bits_data_5_entries_ppns_2,
    io_wreq_bits_data_5_entries_ppns_1,io_wreq_bits_data_5_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_5 = {wdata_hi_hi_hi_5,io_wreq_bits_data_5_entries_vs_7,io_wreq_bits_data_5_entries_vs_6,
    io_wreq_bits_data_5_entries_vs_5,io_wreq_bits_data_5_entries_vs_4,io_wreq_bits_data_5_entries_vs_3,
    io_wreq_bits_data_5_entries_vs_2,io_wreq_bits_data_5_entries_vs_1,io_wreq_bits_data_5_entries_vs_0,
    io_wreq_bits_data_5_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_5 = {wdata_hi_hi_5,wdata_hi_lo_5}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_6 = {io_wreq_bits_data_6_entries_perms_2_x,io_wreq_bits_data_6_entries_perms_2_w,
    io_wreq_bits_data_6_entries_perms_2_r,io_wreq_bits_data_6_entries_perms_1_d,io_wreq_bits_data_6_entries_perms_1_a
    ,io_wreq_bits_data_6_entries_perms_1_g,io_wreq_bits_data_6_entries_perms_1_u,
    io_wreq_bits_data_6_entries_perms_1_x,io_wreq_bits_data_6_entries_perms_1_w,io_wreq_bits_data_6_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_6 = {wdata_lo_lo_hi_6,io_wreq_bits_data_6_entries_perms_0_d,
    io_wreq_bits_data_6_entries_perms_0_a,io_wreq_bits_data_6_entries_perms_0_g,io_wreq_bits_data_6_entries_perms_0_u
    ,io_wreq_bits_data_6_entries_perms_0_x,io_wreq_bits_data_6_entries_perms_0_w,
    io_wreq_bits_data_6_entries_perms_0_r,io_wreq_bits_data_6_entries_prefetch,io_wreq_bits_data_6_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_6 = {io_wreq_bits_data_6_entries_perms_5_r,io_wreq_bits_data_6_entries_perms_4_d,
    io_wreq_bits_data_6_entries_perms_4_a,io_wreq_bits_data_6_entries_perms_4_g,io_wreq_bits_data_6_entries_perms_4_u
    ,io_wreq_bits_data_6_entries_perms_4_x,io_wreq_bits_data_6_entries_perms_4_w,
    io_wreq_bits_data_6_entries_perms_4_r,io_wreq_bits_data_6_entries_perms_3_d,io_wreq_bits_data_6_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_6 = {wdata_lo_hi_hi_6,io_wreq_bits_data_6_entries_perms_3_g,
    io_wreq_bits_data_6_entries_perms_3_u,io_wreq_bits_data_6_entries_perms_3_x,io_wreq_bits_data_6_entries_perms_3_w
    ,io_wreq_bits_data_6_entries_perms_3_r,io_wreq_bits_data_6_entries_perms_2_d,
    io_wreq_bits_data_6_entries_perms_2_a,io_wreq_bits_data_6_entries_perms_2_g,io_wreq_bits_data_6_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_6 = {wdata_lo_hi_6,wdata_lo_lo_6}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_6 = {io_wreq_bits_data_6_entries_perms_7_a,io_wreq_bits_data_6_entries_perms_7_g,
    io_wreq_bits_data_6_entries_perms_7_u,io_wreq_bits_data_6_entries_perms_7_x,io_wreq_bits_data_6_entries_perms_7_w
    ,io_wreq_bits_data_6_entries_perms_7_r,io_wreq_bits_data_6_entries_perms_6_d,
    io_wreq_bits_data_6_entries_perms_6_a,io_wreq_bits_data_6_entries_perms_6_g,io_wreq_bits_data_6_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_6 = {wdata_hi_lo_hi_6,io_wreq_bits_data_6_entries_perms_6_x,
    io_wreq_bits_data_6_entries_perms_6_w,io_wreq_bits_data_6_entries_perms_6_r,io_wreq_bits_data_6_entries_perms_5_d
    ,io_wreq_bits_data_6_entries_perms_5_a,io_wreq_bits_data_6_entries_perms_5_g,
    io_wreq_bits_data_6_entries_perms_5_u,io_wreq_bits_data_6_entries_perms_5_x,io_wreq_bits_data_6_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_6 = {io_wreq_bits_data_6_entries_tag,io_wreq_bits_data_6_entries_asid,
    io_wreq_bits_data_6_entries_ppns_7,io_wreq_bits_data_6_entries_ppns_6,io_wreq_bits_data_6_entries_ppns_5,
    io_wreq_bits_data_6_entries_ppns_4,io_wreq_bits_data_6_entries_ppns_3,io_wreq_bits_data_6_entries_ppns_2,
    io_wreq_bits_data_6_entries_ppns_1,io_wreq_bits_data_6_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_6 = {wdata_hi_hi_hi_6,io_wreq_bits_data_6_entries_vs_7,io_wreq_bits_data_6_entries_vs_6,
    io_wreq_bits_data_6_entries_vs_5,io_wreq_bits_data_6_entries_vs_4,io_wreq_bits_data_6_entries_vs_3,
    io_wreq_bits_data_6_entries_vs_2,io_wreq_bits_data_6_entries_vs_1,io_wreq_bits_data_6_entries_vs_0,
    io_wreq_bits_data_6_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_6 = {wdata_hi_hi_6,wdata_hi_lo_6}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_lo_hi_7 = {io_wreq_bits_data_7_entries_perms_2_x,io_wreq_bits_data_7_entries_perms_2_w,
    io_wreq_bits_data_7_entries_perms_2_r,io_wreq_bits_data_7_entries_perms_1_d,io_wreq_bits_data_7_entries_perms_1_a
    ,io_wreq_bits_data_7_entries_perms_1_g,io_wreq_bits_data_7_entries_perms_1_u,
    io_wreq_bits_data_7_entries_perms_1_x,io_wreq_bits_data_7_entries_perms_1_w,io_wreq_bits_data_7_entries_perms_1_r
    }; // @[SRAMTemplate.scala 126:102]
  wire [56:0] wdata_lo_lo_7 = {wdata_lo_lo_hi_7,io_wreq_bits_data_7_entries_perms_0_d,
    io_wreq_bits_data_7_entries_perms_0_a,io_wreq_bits_data_7_entries_perms_0_g,io_wreq_bits_data_7_entries_perms_0_u
    ,io_wreq_bits_data_7_entries_perms_0_x,io_wreq_bits_data_7_entries_perms_0_w,
    io_wreq_bits_data_7_entries_perms_0_r,io_wreq_bits_data_7_entries_prefetch,io_wreq_bits_data_7_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_lo_hi_hi_7 = {io_wreq_bits_data_7_entries_perms_5_r,io_wreq_bits_data_7_entries_perms_4_d,
    io_wreq_bits_data_7_entries_perms_4_a,io_wreq_bits_data_7_entries_perms_4_g,io_wreq_bits_data_7_entries_perms_4_u
    ,io_wreq_bits_data_7_entries_perms_4_x,io_wreq_bits_data_7_entries_perms_4_w,
    io_wreq_bits_data_7_entries_perms_4_r,io_wreq_bits_data_7_entries_perms_3_d,io_wreq_bits_data_7_entries_perms_3_a
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_lo_hi_7 = {wdata_lo_hi_hi_7,io_wreq_bits_data_7_entries_perms_3_g,
    io_wreq_bits_data_7_entries_perms_3_u,io_wreq_bits_data_7_entries_perms_3_x,io_wreq_bits_data_7_entries_perms_3_w
    ,io_wreq_bits_data_7_entries_perms_3_r,io_wreq_bits_data_7_entries_perms_2_d,
    io_wreq_bits_data_7_entries_perms_2_a,io_wreq_bits_data_7_entries_perms_2_g,io_wreq_bits_data_7_entries_perms_2_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [75:0] wdata_lo_7 = {wdata_lo_hi_7,wdata_lo_lo_7}; // @[SRAMTemplate.scala 126:102]
  wire [9:0] wdata_hi_lo_hi_7 = {io_wreq_bits_data_7_entries_perms_7_a,io_wreq_bits_data_7_entries_perms_7_g,
    io_wreq_bits_data_7_entries_perms_7_u,io_wreq_bits_data_7_entries_perms_7_x,io_wreq_bits_data_7_entries_perms_7_w
    ,io_wreq_bits_data_7_entries_perms_7_r,io_wreq_bits_data_7_entries_perms_6_d,
    io_wreq_bits_data_7_entries_perms_6_a,io_wreq_bits_data_7_entries_perms_6_g,io_wreq_bits_data_7_entries_perms_6_u
    }; // @[SRAMTemplate.scala 126:102]
  wire [18:0] wdata_hi_lo_7 = {wdata_hi_lo_hi_7,io_wreq_bits_data_7_entries_perms_6_x,
    io_wreq_bits_data_7_entries_perms_6_w,io_wreq_bits_data_7_entries_perms_6_r,io_wreq_bits_data_7_entries_perms_5_d
    ,io_wreq_bits_data_7_entries_perms_5_a,io_wreq_bits_data_7_entries_perms_5_g,
    io_wreq_bits_data_7_entries_perms_5_u,io_wreq_bits_data_7_entries_perms_5_x,io_wreq_bits_data_7_entries_perms_5_w
    }; // @[SRAMTemplate.scala 126:102]
  wire [229:0] wdata_hi_hi_hi_7 = {io_wreq_bits_data_7_entries_tag,io_wreq_bits_data_7_entries_asid,
    io_wreq_bits_data_7_entries_ppns_7,io_wreq_bits_data_7_entries_ppns_6,io_wreq_bits_data_7_entries_ppns_5,
    io_wreq_bits_data_7_entries_ppns_4,io_wreq_bits_data_7_entries_ppns_3,io_wreq_bits_data_7_entries_ppns_2,
    io_wreq_bits_data_7_entries_ppns_1,io_wreq_bits_data_7_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [238:0] wdata_hi_hi_7 = {wdata_hi_hi_hi_7,io_wreq_bits_data_7_entries_vs_7,io_wreq_bits_data_7_entries_vs_6,
    io_wreq_bits_data_7_entries_vs_5,io_wreq_bits_data_7_entries_vs_4,io_wreq_bits_data_7_entries_vs_3,
    io_wreq_bits_data_7_entries_vs_2,io_wreq_bits_data_7_entries_vs_1,io_wreq_bits_data_7_entries_vs_0,
    io_wreq_bits_data_7_entries_perms_7_d}; // @[SRAMTemplate.scala 126:102]
  wire [257:0] wdata_hi_7 = {wdata_hi_hi_7,wdata_hi_lo_7}; // @[SRAMTemplate.scala 126:102]
  wire [333:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [333:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [333:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [333:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  wire [333:0] _rdata_WIRE_4 = array_RW0_rdata_4;
  wire [333:0] _rdata_WIRE_5 = array_RW0_rdata_5;
  wire [333:0] _rdata_WIRE_6 = array_RW0_rdata_6;
  wire [333:0] _rdata_WIRE_7 = array_RW0_rdata_7;
  array_17 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_wdata_6(array_RW0_wdata_6),
    .RW0_wdata_7(array_RW0_wdata_7),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_rdata_6(array_RW0_rdata_6),
    .RW0_rdata_7(array_RW0_rdata_7),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5),
    .RW0_wmask_6(array_RW0_wmask_6),
    .RW0_wmask_7(array_RW0_wmask_7)
  );
  assign io_rresp_data_0_entries_tag = _rdata_WIRE[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_asid = _rdata_WIRE[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_0 = _rdata_WIRE[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_1 = _rdata_WIRE[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_2 = _rdata_WIRE[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_3 = _rdata_WIRE[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_4 = _rdata_WIRE[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_5 = _rdata_WIRE[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_6 = _rdata_WIRE[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_7 = _rdata_WIRE[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_0 = _rdata_WIRE[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_1 = _rdata_WIRE[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_2 = _rdata_WIRE[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_3 = _rdata_WIRE[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_4 = _rdata_WIRE[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_5 = _rdata_WIRE[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_6 = _rdata_WIRE[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_7 = _rdata_WIRE[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_d = _rdata_WIRE[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_a = _rdata_WIRE[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_g = _rdata_WIRE[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_u = _rdata_WIRE[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_x = _rdata_WIRE[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_w = _rdata_WIRE[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_0_r = _rdata_WIRE[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_d = _rdata_WIRE[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_a = _rdata_WIRE[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_g = _rdata_WIRE[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_u = _rdata_WIRE[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_x = _rdata_WIRE[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_w = _rdata_WIRE[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_1_r = _rdata_WIRE[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_d = _rdata_WIRE[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_a = _rdata_WIRE[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_g = _rdata_WIRE[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_u = _rdata_WIRE[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_x = _rdata_WIRE[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_w = _rdata_WIRE[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_2_r = _rdata_WIRE[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_d = _rdata_WIRE[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_a = _rdata_WIRE[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_g = _rdata_WIRE[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_u = _rdata_WIRE[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_x = _rdata_WIRE[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_w = _rdata_WIRE[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_3_r = _rdata_WIRE[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_d = _rdata_WIRE[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_a = _rdata_WIRE[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_g = _rdata_WIRE[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_u = _rdata_WIRE[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_x = _rdata_WIRE[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_w = _rdata_WIRE[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_4_r = _rdata_WIRE[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_d = _rdata_WIRE[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_a = _rdata_WIRE[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_g = _rdata_WIRE[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_u = _rdata_WIRE[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_x = _rdata_WIRE[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_w = _rdata_WIRE[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_5_r = _rdata_WIRE[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_d = _rdata_WIRE[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_a = _rdata_WIRE[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_g = _rdata_WIRE[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_u = _rdata_WIRE[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_x = _rdata_WIRE[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_w = _rdata_WIRE[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_6_r = _rdata_WIRE[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_d = _rdata_WIRE[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_a = _rdata_WIRE[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_g = _rdata_WIRE[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_u = _rdata_WIRE[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_x = _rdata_WIRE[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_w = _rdata_WIRE[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_perms_7_r = _rdata_WIRE[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_prefetch = _rdata_WIRE[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_ecc = _rdata_WIRE[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_tag = _rdata_WIRE_1[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_asid = _rdata_WIRE_1[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_0 = _rdata_WIRE_1[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_1 = _rdata_WIRE_1[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_2 = _rdata_WIRE_1[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_3 = _rdata_WIRE_1[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_4 = _rdata_WIRE_1[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_5 = _rdata_WIRE_1[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_6 = _rdata_WIRE_1[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_7 = _rdata_WIRE_1[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_0 = _rdata_WIRE_1[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_1 = _rdata_WIRE_1[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_2 = _rdata_WIRE_1[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_3 = _rdata_WIRE_1[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_4 = _rdata_WIRE_1[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_5 = _rdata_WIRE_1[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_6 = _rdata_WIRE_1[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_7 = _rdata_WIRE_1[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_d = _rdata_WIRE_1[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_a = _rdata_WIRE_1[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_g = _rdata_WIRE_1[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_u = _rdata_WIRE_1[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_x = _rdata_WIRE_1[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_w = _rdata_WIRE_1[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_0_r = _rdata_WIRE_1[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_d = _rdata_WIRE_1[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_a = _rdata_WIRE_1[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_g = _rdata_WIRE_1[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_u = _rdata_WIRE_1[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_x = _rdata_WIRE_1[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_w = _rdata_WIRE_1[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_1_r = _rdata_WIRE_1[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_d = _rdata_WIRE_1[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_a = _rdata_WIRE_1[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_g = _rdata_WIRE_1[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_u = _rdata_WIRE_1[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_x = _rdata_WIRE_1[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_w = _rdata_WIRE_1[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_2_r = _rdata_WIRE_1[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_d = _rdata_WIRE_1[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_a = _rdata_WIRE_1[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_g = _rdata_WIRE_1[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_u = _rdata_WIRE_1[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_x = _rdata_WIRE_1[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_w = _rdata_WIRE_1[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_3_r = _rdata_WIRE_1[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_d = _rdata_WIRE_1[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_a = _rdata_WIRE_1[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_g = _rdata_WIRE_1[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_u = _rdata_WIRE_1[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_x = _rdata_WIRE_1[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_w = _rdata_WIRE_1[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_4_r = _rdata_WIRE_1[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_d = _rdata_WIRE_1[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_a = _rdata_WIRE_1[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_g = _rdata_WIRE_1[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_u = _rdata_WIRE_1[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_x = _rdata_WIRE_1[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_w = _rdata_WIRE_1[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_5_r = _rdata_WIRE_1[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_d = _rdata_WIRE_1[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_a = _rdata_WIRE_1[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_g = _rdata_WIRE_1[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_u = _rdata_WIRE_1[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_x = _rdata_WIRE_1[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_w = _rdata_WIRE_1[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_6_r = _rdata_WIRE_1[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_d = _rdata_WIRE_1[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_a = _rdata_WIRE_1[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_g = _rdata_WIRE_1[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_u = _rdata_WIRE_1[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_x = _rdata_WIRE_1[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_w = _rdata_WIRE_1[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_perms_7_r = _rdata_WIRE_1[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_prefetch = _rdata_WIRE_1[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_ecc = _rdata_WIRE_1[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_tag = _rdata_WIRE_2[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_asid = _rdata_WIRE_2[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_0 = _rdata_WIRE_2[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_1 = _rdata_WIRE_2[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_2 = _rdata_WIRE_2[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_3 = _rdata_WIRE_2[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_4 = _rdata_WIRE_2[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_5 = _rdata_WIRE_2[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_6 = _rdata_WIRE_2[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_7 = _rdata_WIRE_2[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_0 = _rdata_WIRE_2[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_1 = _rdata_WIRE_2[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_2 = _rdata_WIRE_2[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_3 = _rdata_WIRE_2[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_4 = _rdata_WIRE_2[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_5 = _rdata_WIRE_2[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_6 = _rdata_WIRE_2[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_7 = _rdata_WIRE_2[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_d = _rdata_WIRE_2[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_a = _rdata_WIRE_2[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_g = _rdata_WIRE_2[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_u = _rdata_WIRE_2[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_x = _rdata_WIRE_2[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_w = _rdata_WIRE_2[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_0_r = _rdata_WIRE_2[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_d = _rdata_WIRE_2[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_a = _rdata_WIRE_2[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_g = _rdata_WIRE_2[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_u = _rdata_WIRE_2[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_x = _rdata_WIRE_2[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_w = _rdata_WIRE_2[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_1_r = _rdata_WIRE_2[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_d = _rdata_WIRE_2[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_a = _rdata_WIRE_2[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_g = _rdata_WIRE_2[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_u = _rdata_WIRE_2[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_x = _rdata_WIRE_2[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_w = _rdata_WIRE_2[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_2_r = _rdata_WIRE_2[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_d = _rdata_WIRE_2[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_a = _rdata_WIRE_2[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_g = _rdata_WIRE_2[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_u = _rdata_WIRE_2[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_x = _rdata_WIRE_2[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_w = _rdata_WIRE_2[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_3_r = _rdata_WIRE_2[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_d = _rdata_WIRE_2[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_a = _rdata_WIRE_2[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_g = _rdata_WIRE_2[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_u = _rdata_WIRE_2[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_x = _rdata_WIRE_2[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_w = _rdata_WIRE_2[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_4_r = _rdata_WIRE_2[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_d = _rdata_WIRE_2[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_a = _rdata_WIRE_2[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_g = _rdata_WIRE_2[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_u = _rdata_WIRE_2[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_x = _rdata_WIRE_2[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_w = _rdata_WIRE_2[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_5_r = _rdata_WIRE_2[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_d = _rdata_WIRE_2[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_a = _rdata_WIRE_2[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_g = _rdata_WIRE_2[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_u = _rdata_WIRE_2[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_x = _rdata_WIRE_2[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_w = _rdata_WIRE_2[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_6_r = _rdata_WIRE_2[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_d = _rdata_WIRE_2[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_a = _rdata_WIRE_2[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_g = _rdata_WIRE_2[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_u = _rdata_WIRE_2[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_x = _rdata_WIRE_2[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_w = _rdata_WIRE_2[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_perms_7_r = _rdata_WIRE_2[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_prefetch = _rdata_WIRE_2[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_ecc = _rdata_WIRE_2[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_tag = _rdata_WIRE_3[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_asid = _rdata_WIRE_3[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_0 = _rdata_WIRE_3[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_1 = _rdata_WIRE_3[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_2 = _rdata_WIRE_3[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_3 = _rdata_WIRE_3[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_4 = _rdata_WIRE_3[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_5 = _rdata_WIRE_3[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_6 = _rdata_WIRE_3[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_7 = _rdata_WIRE_3[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_0 = _rdata_WIRE_3[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_1 = _rdata_WIRE_3[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_2 = _rdata_WIRE_3[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_3 = _rdata_WIRE_3[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_4 = _rdata_WIRE_3[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_5 = _rdata_WIRE_3[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_6 = _rdata_WIRE_3[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_7 = _rdata_WIRE_3[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_d = _rdata_WIRE_3[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_a = _rdata_WIRE_3[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_g = _rdata_WIRE_3[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_u = _rdata_WIRE_3[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_x = _rdata_WIRE_3[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_w = _rdata_WIRE_3[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_0_r = _rdata_WIRE_3[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_d = _rdata_WIRE_3[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_a = _rdata_WIRE_3[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_g = _rdata_WIRE_3[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_u = _rdata_WIRE_3[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_x = _rdata_WIRE_3[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_w = _rdata_WIRE_3[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_1_r = _rdata_WIRE_3[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_d = _rdata_WIRE_3[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_a = _rdata_WIRE_3[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_g = _rdata_WIRE_3[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_u = _rdata_WIRE_3[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_x = _rdata_WIRE_3[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_w = _rdata_WIRE_3[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_2_r = _rdata_WIRE_3[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_d = _rdata_WIRE_3[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_a = _rdata_WIRE_3[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_g = _rdata_WIRE_3[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_u = _rdata_WIRE_3[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_x = _rdata_WIRE_3[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_w = _rdata_WIRE_3[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_3_r = _rdata_WIRE_3[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_d = _rdata_WIRE_3[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_a = _rdata_WIRE_3[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_g = _rdata_WIRE_3[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_u = _rdata_WIRE_3[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_x = _rdata_WIRE_3[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_w = _rdata_WIRE_3[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_4_r = _rdata_WIRE_3[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_d = _rdata_WIRE_3[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_a = _rdata_WIRE_3[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_g = _rdata_WIRE_3[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_u = _rdata_WIRE_3[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_x = _rdata_WIRE_3[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_w = _rdata_WIRE_3[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_5_r = _rdata_WIRE_3[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_d = _rdata_WIRE_3[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_a = _rdata_WIRE_3[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_g = _rdata_WIRE_3[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_u = _rdata_WIRE_3[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_x = _rdata_WIRE_3[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_w = _rdata_WIRE_3[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_6_r = _rdata_WIRE_3[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_d = _rdata_WIRE_3[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_a = _rdata_WIRE_3[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_g = _rdata_WIRE_3[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_u = _rdata_WIRE_3[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_x = _rdata_WIRE_3[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_w = _rdata_WIRE_3[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_perms_7_r = _rdata_WIRE_3[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_prefetch = _rdata_WIRE_3[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_ecc = _rdata_WIRE_3[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_tag = _rdata_WIRE_4[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_asid = _rdata_WIRE_4[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_0 = _rdata_WIRE_4[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_1 = _rdata_WIRE_4[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_2 = _rdata_WIRE_4[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_3 = _rdata_WIRE_4[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_4 = _rdata_WIRE_4[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_5 = _rdata_WIRE_4[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_6 = _rdata_WIRE_4[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_ppns_7 = _rdata_WIRE_4[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_0 = _rdata_WIRE_4[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_1 = _rdata_WIRE_4[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_2 = _rdata_WIRE_4[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_3 = _rdata_WIRE_4[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_4 = _rdata_WIRE_4[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_5 = _rdata_WIRE_4[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_6 = _rdata_WIRE_4[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_vs_7 = _rdata_WIRE_4[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_d = _rdata_WIRE_4[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_a = _rdata_WIRE_4[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_g = _rdata_WIRE_4[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_u = _rdata_WIRE_4[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_x = _rdata_WIRE_4[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_w = _rdata_WIRE_4[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_0_r = _rdata_WIRE_4[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_d = _rdata_WIRE_4[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_a = _rdata_WIRE_4[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_g = _rdata_WIRE_4[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_u = _rdata_WIRE_4[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_x = _rdata_WIRE_4[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_w = _rdata_WIRE_4[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_1_r = _rdata_WIRE_4[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_d = _rdata_WIRE_4[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_a = _rdata_WIRE_4[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_g = _rdata_WIRE_4[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_u = _rdata_WIRE_4[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_x = _rdata_WIRE_4[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_w = _rdata_WIRE_4[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_2_r = _rdata_WIRE_4[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_d = _rdata_WIRE_4[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_a = _rdata_WIRE_4[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_g = _rdata_WIRE_4[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_u = _rdata_WIRE_4[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_x = _rdata_WIRE_4[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_w = _rdata_WIRE_4[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_3_r = _rdata_WIRE_4[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_d = _rdata_WIRE_4[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_a = _rdata_WIRE_4[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_g = _rdata_WIRE_4[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_u = _rdata_WIRE_4[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_x = _rdata_WIRE_4[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_w = _rdata_WIRE_4[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_4_r = _rdata_WIRE_4[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_d = _rdata_WIRE_4[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_a = _rdata_WIRE_4[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_g = _rdata_WIRE_4[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_u = _rdata_WIRE_4[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_x = _rdata_WIRE_4[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_w = _rdata_WIRE_4[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_5_r = _rdata_WIRE_4[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_d = _rdata_WIRE_4[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_a = _rdata_WIRE_4[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_g = _rdata_WIRE_4[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_u = _rdata_WIRE_4[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_x = _rdata_WIRE_4[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_w = _rdata_WIRE_4[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_6_r = _rdata_WIRE_4[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_d = _rdata_WIRE_4[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_a = _rdata_WIRE_4[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_g = _rdata_WIRE_4[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_u = _rdata_WIRE_4[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_x = _rdata_WIRE_4[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_w = _rdata_WIRE_4[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_perms_7_r = _rdata_WIRE_4[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_entries_prefetch = _rdata_WIRE_4[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_4_ecc = _rdata_WIRE_4[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_tag = _rdata_WIRE_5[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_asid = _rdata_WIRE_5[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_0 = _rdata_WIRE_5[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_1 = _rdata_WIRE_5[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_2 = _rdata_WIRE_5[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_3 = _rdata_WIRE_5[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_4 = _rdata_WIRE_5[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_5 = _rdata_WIRE_5[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_6 = _rdata_WIRE_5[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_ppns_7 = _rdata_WIRE_5[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_0 = _rdata_WIRE_5[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_1 = _rdata_WIRE_5[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_2 = _rdata_WIRE_5[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_3 = _rdata_WIRE_5[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_4 = _rdata_WIRE_5[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_5 = _rdata_WIRE_5[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_6 = _rdata_WIRE_5[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_vs_7 = _rdata_WIRE_5[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_d = _rdata_WIRE_5[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_a = _rdata_WIRE_5[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_g = _rdata_WIRE_5[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_u = _rdata_WIRE_5[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_x = _rdata_WIRE_5[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_w = _rdata_WIRE_5[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_0_r = _rdata_WIRE_5[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_d = _rdata_WIRE_5[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_a = _rdata_WIRE_5[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_g = _rdata_WIRE_5[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_u = _rdata_WIRE_5[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_x = _rdata_WIRE_5[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_w = _rdata_WIRE_5[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_1_r = _rdata_WIRE_5[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_d = _rdata_WIRE_5[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_a = _rdata_WIRE_5[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_g = _rdata_WIRE_5[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_u = _rdata_WIRE_5[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_x = _rdata_WIRE_5[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_w = _rdata_WIRE_5[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_2_r = _rdata_WIRE_5[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_d = _rdata_WIRE_5[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_a = _rdata_WIRE_5[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_g = _rdata_WIRE_5[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_u = _rdata_WIRE_5[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_x = _rdata_WIRE_5[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_w = _rdata_WIRE_5[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_3_r = _rdata_WIRE_5[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_d = _rdata_WIRE_5[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_a = _rdata_WIRE_5[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_g = _rdata_WIRE_5[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_u = _rdata_WIRE_5[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_x = _rdata_WIRE_5[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_w = _rdata_WIRE_5[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_4_r = _rdata_WIRE_5[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_d = _rdata_WIRE_5[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_a = _rdata_WIRE_5[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_g = _rdata_WIRE_5[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_u = _rdata_WIRE_5[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_x = _rdata_WIRE_5[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_w = _rdata_WIRE_5[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_5_r = _rdata_WIRE_5[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_d = _rdata_WIRE_5[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_a = _rdata_WIRE_5[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_g = _rdata_WIRE_5[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_u = _rdata_WIRE_5[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_x = _rdata_WIRE_5[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_w = _rdata_WIRE_5[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_6_r = _rdata_WIRE_5[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_d = _rdata_WIRE_5[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_a = _rdata_WIRE_5[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_g = _rdata_WIRE_5[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_u = _rdata_WIRE_5[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_x = _rdata_WIRE_5[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_w = _rdata_WIRE_5[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_perms_7_r = _rdata_WIRE_5[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_entries_prefetch = _rdata_WIRE_5[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_5_ecc = _rdata_WIRE_5[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_tag = _rdata_WIRE_6[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_asid = _rdata_WIRE_6[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_0 = _rdata_WIRE_6[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_1 = _rdata_WIRE_6[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_2 = _rdata_WIRE_6[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_3 = _rdata_WIRE_6[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_4 = _rdata_WIRE_6[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_5 = _rdata_WIRE_6[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_6 = _rdata_WIRE_6[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_ppns_7 = _rdata_WIRE_6[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_0 = _rdata_WIRE_6[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_1 = _rdata_WIRE_6[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_2 = _rdata_WIRE_6[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_3 = _rdata_WIRE_6[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_4 = _rdata_WIRE_6[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_5 = _rdata_WIRE_6[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_6 = _rdata_WIRE_6[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_vs_7 = _rdata_WIRE_6[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_d = _rdata_WIRE_6[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_a = _rdata_WIRE_6[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_g = _rdata_WIRE_6[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_u = _rdata_WIRE_6[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_x = _rdata_WIRE_6[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_w = _rdata_WIRE_6[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_0_r = _rdata_WIRE_6[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_d = _rdata_WIRE_6[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_a = _rdata_WIRE_6[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_g = _rdata_WIRE_6[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_u = _rdata_WIRE_6[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_x = _rdata_WIRE_6[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_w = _rdata_WIRE_6[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_1_r = _rdata_WIRE_6[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_d = _rdata_WIRE_6[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_a = _rdata_WIRE_6[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_g = _rdata_WIRE_6[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_u = _rdata_WIRE_6[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_x = _rdata_WIRE_6[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_w = _rdata_WIRE_6[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_2_r = _rdata_WIRE_6[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_d = _rdata_WIRE_6[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_a = _rdata_WIRE_6[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_g = _rdata_WIRE_6[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_u = _rdata_WIRE_6[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_x = _rdata_WIRE_6[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_w = _rdata_WIRE_6[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_3_r = _rdata_WIRE_6[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_d = _rdata_WIRE_6[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_a = _rdata_WIRE_6[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_g = _rdata_WIRE_6[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_u = _rdata_WIRE_6[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_x = _rdata_WIRE_6[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_w = _rdata_WIRE_6[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_4_r = _rdata_WIRE_6[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_d = _rdata_WIRE_6[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_a = _rdata_WIRE_6[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_g = _rdata_WIRE_6[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_u = _rdata_WIRE_6[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_x = _rdata_WIRE_6[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_w = _rdata_WIRE_6[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_5_r = _rdata_WIRE_6[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_d = _rdata_WIRE_6[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_a = _rdata_WIRE_6[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_g = _rdata_WIRE_6[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_u = _rdata_WIRE_6[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_x = _rdata_WIRE_6[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_w = _rdata_WIRE_6[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_6_r = _rdata_WIRE_6[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_d = _rdata_WIRE_6[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_a = _rdata_WIRE_6[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_g = _rdata_WIRE_6[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_u = _rdata_WIRE_6[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_x = _rdata_WIRE_6[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_w = _rdata_WIRE_6[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_perms_7_r = _rdata_WIRE_6[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_entries_prefetch = _rdata_WIRE_6[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_6_ecc = _rdata_WIRE_6[38:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_tag = _rdata_WIRE_7[333:312]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_asid = _rdata_WIRE_7[311:296]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_0 = _rdata_WIRE_7[127:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_1 = _rdata_WIRE_7[151:128]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_2 = _rdata_WIRE_7[175:152]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_3 = _rdata_WIRE_7[199:176]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_4 = _rdata_WIRE_7[223:200]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_5 = _rdata_WIRE_7[247:224]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_6 = _rdata_WIRE_7[271:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_ppns_7 = _rdata_WIRE_7[295:272]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_0 = _rdata_WIRE_7[96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_1 = _rdata_WIRE_7[97]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_2 = _rdata_WIRE_7[98]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_3 = _rdata_WIRE_7[99]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_4 = _rdata_WIRE_7[100]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_5 = _rdata_WIRE_7[101]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_6 = _rdata_WIRE_7[102]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_vs_7 = _rdata_WIRE_7[103]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_d = _rdata_WIRE_7[46]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_a = _rdata_WIRE_7[45]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_g = _rdata_WIRE_7[44]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_u = _rdata_WIRE_7[43]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_x = _rdata_WIRE_7[42]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_w = _rdata_WIRE_7[41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_0_r = _rdata_WIRE_7[40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_d = _rdata_WIRE_7[53]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_a = _rdata_WIRE_7[52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_g = _rdata_WIRE_7[51]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_u = _rdata_WIRE_7[50]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_x = _rdata_WIRE_7[49]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_w = _rdata_WIRE_7[48]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_1_r = _rdata_WIRE_7[47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_d = _rdata_WIRE_7[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_a = _rdata_WIRE_7[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_g = _rdata_WIRE_7[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_u = _rdata_WIRE_7[57]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_x = _rdata_WIRE_7[56]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_w = _rdata_WIRE_7[55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_2_r = _rdata_WIRE_7[54]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_d = _rdata_WIRE_7[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_a = _rdata_WIRE_7[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_g = _rdata_WIRE_7[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_u = _rdata_WIRE_7[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_x = _rdata_WIRE_7[63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_w = _rdata_WIRE_7[62]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_3_r = _rdata_WIRE_7[61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_d = _rdata_WIRE_7[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_a = _rdata_WIRE_7[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_g = _rdata_WIRE_7[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_u = _rdata_WIRE_7[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_x = _rdata_WIRE_7[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_w = _rdata_WIRE_7[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_4_r = _rdata_WIRE_7[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_d = _rdata_WIRE_7[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_a = _rdata_WIRE_7[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_g = _rdata_WIRE_7[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_u = _rdata_WIRE_7[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_x = _rdata_WIRE_7[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_w = _rdata_WIRE_7[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_5_r = _rdata_WIRE_7[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_d = _rdata_WIRE_7[88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_a = _rdata_WIRE_7[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_g = _rdata_WIRE_7[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_u = _rdata_WIRE_7[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_x = _rdata_WIRE_7[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_w = _rdata_WIRE_7[83]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_6_r = _rdata_WIRE_7[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_d = _rdata_WIRE_7[95]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_a = _rdata_WIRE_7[94]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_g = _rdata_WIRE_7[93]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_u = _rdata_WIRE_7[92]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_x = _rdata_WIRE_7[91]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_w = _rdata_WIRE_7[90]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_perms_7_r = _rdata_WIRE_7[89]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_entries_prefetch = _rdata_WIRE_7[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_7_ecc = _rdata_WIRE_7[38:0]; // @[SRAMTemplate.scala 154:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_4 = {wdata_hi_4,wdata_lo_4}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_5 = {wdata_hi_5,wdata_lo_5}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_6 = {wdata_hi_6,wdata_lo_6}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_7 = {wdata_hi_7,wdata_lo_7}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_4 = io_wreq_bits_waymask[4]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_5 = io_wreq_bits_waymask[5]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_6 = io_wreq_bits_waymask[6]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_7 = io_wreq_bits_waymask[7]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

