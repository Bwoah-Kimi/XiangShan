module TlbStorageWrapper_1(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [15:0] io_csr_satp_asid,
  input         io_rreq_0_valid,
  input  [26:0] io_rreq_0_bits_vpn,
  input         io_rreq_1_valid,
  input  [26:0] io_rreq_1_bits_vpn,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn_0,
  output [23:0] io_rresp_0_bits_ppn_1,
  output        io_rresp_0_bits_perm_0_pf,
  output        io_rresp_0_bits_perm_0_af,
  output        io_rresp_0_bits_perm_0_d,
  output        io_rresp_0_bits_perm_0_a,
  output        io_rresp_0_bits_perm_0_u,
  output        io_rresp_0_bits_perm_0_x,
  output        io_rresp_0_bits_perm_0_w,
  output        io_rresp_0_bits_perm_0_r,
  output        io_rresp_0_bits_super_hit,
  output [23:0] io_rresp_0_bits_super_ppn,
  output        io_rresp_0_bits_spm_r,
  output        io_rresp_0_bits_spm_w,
  output        io_rresp_0_bits_spm_c,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn_0,
  output [23:0] io_rresp_1_bits_ppn_1,
  output        io_rresp_1_bits_perm_0_pf,
  output        io_rresp_1_bits_perm_0_af,
  output        io_rresp_1_bits_perm_0_a,
  output        io_rresp_1_bits_perm_0_u,
  output        io_rresp_1_bits_perm_0_x,
  output        io_rresp_1_bits_perm_0_r,
  output        io_rresp_1_bits_super_hit,
  output [23:0] io_rresp_1_bits_super_ppn,
  output        io_rresp_1_bits_spm_r,
  output        io_rresp_1_bits_spm_c,
  input         io_wvalid,
  input  [23:0] io_wdata_entry_tag,
  input         io_wdata_entry_perm_d,
  input         io_wdata_entry_perm_a,
  input         io_wdata_entry_perm_g,
  input         io_wdata_entry_perm_u,
  input         io_wdata_entry_perm_x,
  input         io_wdata_entry_perm_w,
  input         io_wdata_entry_perm_r,
  input  [1:0]  io_wdata_entry_level,
  input  [20:0] io_wdata_entry_ppn,
  input  [2:0]  io_wdata_ppn_low_0,
  input  [2:0]  io_wdata_ppn_low_1,
  input  [2:0]  io_wdata_ppn_low_2,
  input  [2:0]  io_wdata_ppn_low_3,
  input  [2:0]  io_wdata_ppn_low_4,
  input  [2:0]  io_wdata_ppn_low_5,
  input  [2:0]  io_wdata_ppn_low_6,
  input  [2:0]  io_wdata_ppn_low_7,
  input         io_wdata_valididx_0,
  input         io_wdata_valididx_1,
  input         io_wdata_valididx_2,
  input         io_wdata_valididx_3,
  input         io_wdata_valididx_4,
  input         io_wdata_valididx_5,
  input         io_wdata_valididx_6,
  input         io_wdata_valididx_7,
  input         io_wdata_pteidx_0,
  input         io_wdata_pteidx_1,
  input         io_wdata_pteidx_2,
  input         io_wdata_pteidx_3,
  input         io_wdata_pteidx_4,
  input         io_wdata_pteidx_5,
  input         io_wdata_pteidx_6,
  input         io_wdata_pteidx_7,
  input         io_wdata_pf,
  input         io_wdata_af,
  input         io_wdata_replenish_0_c,
  input         io_wdata_replenish_0_atomic,
  input         io_wdata_replenish_0_x,
  input         io_wdata_replenish_0_w,
  input         io_wdata_replenish_0_r,
  input         io_wdata_replenish_1_c,
  input         io_wdata_replenish_1_atomic,
  input         io_wdata_replenish_1_x,
  input         io_wdata_replenish_1_w,
  input         io_wdata_replenish_1_r,
  input         io_wdata_replenish_2_c,
  input         io_wdata_replenish_2_atomic,
  input         io_wdata_replenish_2_x,
  input         io_wdata_replenish_2_w,
  input         io_wdata_replenish_2_r,
  input         io_wdata_replenish_3_c,
  input         io_wdata_replenish_3_atomic,
  input         io_wdata_replenish_3_x,
  input         io_wdata_replenish_3_w,
  input         io_wdata_replenish_3_r,
  input         io_wdata_replenish_4_c,
  input         io_wdata_replenish_4_atomic,
  input         io_wdata_replenish_4_x,
  input         io_wdata_replenish_4_w,
  input         io_wdata_replenish_4_r,
  input         io_wdata_replenish_5_c,
  input         io_wdata_replenish_5_atomic,
  input         io_wdata_replenish_5_x,
  input         io_wdata_replenish_5_w,
  input         io_wdata_replenish_5_r,
  input         io_wdata_replenish_6_c,
  input         io_wdata_replenish_6_atomic,
  input         io_wdata_replenish_6_x,
  input         io_wdata_replenish_6_w,
  input         io_wdata_replenish_6_r,
  input         io_wdata_replenish_7_c,
  input         io_wdata_replenish_7_atomic,
  input         io_wdata_replenish_7_x,
  input         io_wdata_replenish_7_w,
  input         io_wdata_replenish_7_r
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  normalPage_ldtlb_np_storage_sa_clock; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_reset; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_sfence_valid; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_sfence_bits_rs1; // @[TLBStorage.scala 466:29]
  wire [38:0] normalPage_ldtlb_np_storage_sa_io_sfence_bits_addr; // @[TLBStorage.scala 466:29]
  wire [15:0] normalPage_ldtlb_np_storage_sa_io_csr_satp_asid; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rreq_0_ready; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rreq_0_valid; // @[TLBStorage.scala 466:29]
  wire [26:0] normalPage_ldtlb_np_storage_sa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rreq_1_ready; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rreq_1_valid; // @[TLBStorage.scala 466:29]
  wire [26:0] normalPage_ldtlb_np_storage_sa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_hit; // @[TLBStorage.scala 466:29]
  wire [23:0] normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 466:29]
  wire [23:0] normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_1; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pf; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_af; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_d; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_w; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_w; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_c; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_hit; // @[TLBStorage.scala 466:29]
  wire [23:0] normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 466:29]
  wire [23:0] normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_1; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pf; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_af; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_c; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_valid; // @[TLBStorage.scala 466:29]
  wire [26:0] normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_tag; // @[TLBStorage.scala 466:29]
  wire [15:0] normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_asid; // @[TLBStorage.scala 466:29]
  wire [23:0] normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_ppn; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pf; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_af; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_d; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_a; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_u; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_x; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_w; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_r; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_w; // @[TLBStorage.scala 466:29]
  wire  normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_c; // @[TLBStorage.scala 466:29]
  wire  superPage_ldtlb_sp_storage_fa_clock; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_reset; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_sfence_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs1; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs2; // @[TLBStorage.scala 462:29]
  wire [38:0] superPage_ldtlb_sp_storage_fa_io_sfence_bits_addr; // @[TLBStorage.scala 462:29]
  wire [15:0] superPage_ldtlb_sp_storage_fa_io_sfence_bits_asid; // @[TLBStorage.scala 462:29]
  wire [15:0] superPage_ldtlb_sp_storage_fa_io_csr_satp_asid; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rreq_0_ready; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rreq_0_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_ldtlb_sp_storage_fa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rreq_1_ready; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rreq_1_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_ldtlb_sp_storage_fa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_d; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wvalid; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_ldtlb_sp_storage_fa_io_wwayIdx; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_ldtlb_sp_storage_fa_io_wdata_entry_tag; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_d; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_a; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_g; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_u; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_r; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_ldtlb_sp_storage_fa_io_wdata_entry_level; // @[TLBStorage.scala 462:29]
  wire [20:0] superPage_ldtlb_sp_storage_fa_io_wdata_entry_ppn; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_0; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_1; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_2; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_3; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_4; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_5; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_6; // @[TLBStorage.scala 462:29]
  wire [2:0] superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_7; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_0; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_1; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_2; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_3; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_4; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_5; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_6; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_valididx_7; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_0; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_1; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_2; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_3; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_4; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_5; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_6; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_7; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_af; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_atomic; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_tag; // @[TLBStorage.scala 462:29]
  wire [15:0] superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_asid; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_ppn; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_af; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_d; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_a; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_u; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_x; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_r; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_w; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_c; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_bits; // @[TLBStorage.scala 462:29]
  reg [2:0] super_refill_idx_state_reg; // @[Replacement.scala 168:72]
  wire  _super_refill_idx_T_1 = superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_valid |
    superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_valid |
    superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_valid; // @[package.scala 72:59]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized = superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older = ~super_refill_idx_state_reg_touch_way_sized[1]; // @[Replacement.scala 196:33]
  wire  super_refill_idx_state_reg_left_subtree_state = super_refill_idx_state_reg[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state = super_refill_idx_state_reg[0]; // @[Replacement.scala 198:38]
  wire  _super_refill_idx_state_reg_T_2 = ~super_refill_idx_state_reg_touch_way_sized[0]; // @[Replacement.scala 218:7]
  wire  _super_refill_idx_state_reg_T_3 = super_refill_idx_state_reg_set_left_older ?
    super_refill_idx_state_reg_left_subtree_state : _super_refill_idx_state_reg_T_2; // @[Replacement.scala 203:16]
  wire  _super_refill_idx_state_reg_T_7 = super_refill_idx_state_reg_set_left_older ? _super_refill_idx_state_reg_T_2 :
    super_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 206:16]
  wire [2:0] _super_refill_idx_state_reg_T_8 = {super_refill_idx_state_reg_set_left_older,
    _super_refill_idx_state_reg_T_3,_super_refill_idx_state_reg_T_7}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_9 = superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_valid ?
    _super_refill_idx_state_reg_T_8 : super_refill_idx_state_reg; // @[Replacement.scala 22:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_1 = superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_1 = ~super_refill_idx_state_reg_touch_way_sized_1[1]; // @[Replacement.scala 196:33]
  wire  super_refill_idx_state_reg_left_subtree_state_1 = _super_refill_idx_state_reg_T_9[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_1 = _super_refill_idx_state_reg_T_9[0]; // @[Replacement.scala 198:38]
  wire  _super_refill_idx_state_reg_T_12 = ~super_refill_idx_state_reg_touch_way_sized_1[0]; // @[Replacement.scala 218:7]
  wire  _super_refill_idx_state_reg_T_13 = super_refill_idx_state_reg_set_left_older_1 ?
    super_refill_idx_state_reg_left_subtree_state_1 : _super_refill_idx_state_reg_T_12; // @[Replacement.scala 203:16]
  wire  _super_refill_idx_state_reg_T_17 = super_refill_idx_state_reg_set_left_older_1 ?
    _super_refill_idx_state_reg_T_12 : super_refill_idx_state_reg_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _super_refill_idx_state_reg_T_18 = {super_refill_idx_state_reg_set_left_older_1,
    _super_refill_idx_state_reg_T_13,_super_refill_idx_state_reg_T_17}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_19 = superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_valid ?
    _super_refill_idx_state_reg_T_18 : _super_refill_idx_state_reg_T_9; // @[Replacement.scala 22:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_2 = superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_2 = ~super_refill_idx_state_reg_touch_way_sized_2[1]; // @[Replacement.scala 196:33]
  wire  super_refill_idx_state_reg_left_subtree_state_2 = _super_refill_idx_state_reg_T_19[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_2 = _super_refill_idx_state_reg_T_19[0]; // @[Replacement.scala 198:38]
  wire  _super_refill_idx_state_reg_T_22 = ~super_refill_idx_state_reg_touch_way_sized_2[0]; // @[Replacement.scala 218:7]
  wire  _super_refill_idx_state_reg_T_23 = super_refill_idx_state_reg_set_left_older_2 ?
    super_refill_idx_state_reg_left_subtree_state_2 : _super_refill_idx_state_reg_T_22; // @[Replacement.scala 203:16]
  wire  _super_refill_idx_state_reg_T_27 = super_refill_idx_state_reg_set_left_older_2 ?
    _super_refill_idx_state_reg_T_22 : super_refill_idx_state_reg_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _super_refill_idx_state_reg_T_28 = {super_refill_idx_state_reg_set_left_older_2,
    _super_refill_idx_state_reg_T_23,_super_refill_idx_state_reg_T_27}; // @[Cat.scala 31:58]
  wire  super_refill_idx_left_subtree_older = super_refill_idx_state_reg[2]; // @[Replacement.scala 243:38]
  wire  _super_refill_idx_T_14 = super_refill_idx_left_subtree_older ? super_refill_idx_state_reg_left_subtree_state :
    super_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 250:16]
  TLBSA normalPage_ldtlb_np_storage_sa ( // @[TLBStorage.scala 466:29]
    .clock(normalPage_ldtlb_np_storage_sa_clock),
    .reset(normalPage_ldtlb_np_storage_sa_reset),
    .io_sfence_valid(normalPage_ldtlb_np_storage_sa_io_sfence_valid),
    .io_sfence_bits_rs1(normalPage_ldtlb_np_storage_sa_io_sfence_bits_rs1),
    .io_sfence_bits_addr(normalPage_ldtlb_np_storage_sa_io_sfence_bits_addr),
    .io_csr_satp_asid(normalPage_ldtlb_np_storage_sa_io_csr_satp_asid),
    .io_rreq_0_ready(normalPage_ldtlb_np_storage_sa_io_rreq_0_ready),
    .io_rreq_0_valid(normalPage_ldtlb_np_storage_sa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(normalPage_ldtlb_np_storage_sa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(normalPage_ldtlb_np_storage_sa_io_rreq_1_ready),
    .io_rreq_1_valid(normalPage_ldtlb_np_storage_sa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(normalPage_ldtlb_np_storage_sa_io_rreq_1_bits_vpn),
    .io_rresp_0_bits_hit(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn_0(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_0),
    .io_rresp_0_bits_ppn_1(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_1),
    .io_rresp_0_bits_perm_0_pf(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pf),
    .io_rresp_0_bits_perm_0_af(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_af),
    .io_rresp_0_bits_perm_0_d(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_d),
    .io_rresp_0_bits_perm_0_a(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_a),
    .io_rresp_0_bits_perm_0_u(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_u),
    .io_rresp_0_bits_perm_0_x(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_x),
    .io_rresp_0_bits_perm_0_w(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_w),
    .io_rresp_0_bits_perm_0_r(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_r),
    .io_rresp_0_bits_perm_0_pm_0_r(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_r),
    .io_rresp_0_bits_perm_0_pm_0_w(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_w),
    .io_rresp_0_bits_perm_0_pm_0_c(normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_c),
    .io_rresp_1_bits_hit(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn_0(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_0),
    .io_rresp_1_bits_ppn_1(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_1),
    .io_rresp_1_bits_perm_0_pf(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pf),
    .io_rresp_1_bits_perm_0_af(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_af),
    .io_rresp_1_bits_perm_0_a(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_a),
    .io_rresp_1_bits_perm_0_u(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_u),
    .io_rresp_1_bits_perm_0_x(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_x),
    .io_rresp_1_bits_perm_0_r(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_r),
    .io_rresp_1_bits_perm_0_pm_0_r(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_r),
    .io_rresp_1_bits_perm_0_pm_0_c(normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_c),
    .io_victim_in_valid(normalPage_ldtlb_np_storage_sa_io_victim_in_valid),
    .io_victim_in_bits_entry_tag(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_tag),
    .io_victim_in_bits_entry_asid(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_asid),
    .io_victim_in_bits_entry_ppn(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_ppn),
    .io_victim_in_bits_entry_perm_pf(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pf),
    .io_victim_in_bits_entry_perm_af(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_af),
    .io_victim_in_bits_entry_perm_d(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_d),
    .io_victim_in_bits_entry_perm_a(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_a),
    .io_victim_in_bits_entry_perm_u(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_u),
    .io_victim_in_bits_entry_perm_x(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_x),
    .io_victim_in_bits_entry_perm_w(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_w),
    .io_victim_in_bits_entry_perm_r(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_r),
    .io_victim_in_bits_entry_perm_pm_r(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_r),
    .io_victim_in_bits_entry_perm_pm_w(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_w),
    .io_victim_in_bits_entry_perm_pm_c(normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_c)
  );
  TLBFA_2 superPage_ldtlb_sp_storage_fa ( // @[TLBStorage.scala 462:29]
    .clock(superPage_ldtlb_sp_storage_fa_clock),
    .reset(superPage_ldtlb_sp_storage_fa_reset),
    .io_sfence_valid(superPage_ldtlb_sp_storage_fa_io_sfence_valid),
    .io_sfence_bits_rs1(superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs2),
    .io_sfence_bits_addr(superPage_ldtlb_sp_storage_fa_io_sfence_bits_addr),
    .io_sfence_bits_asid(superPage_ldtlb_sp_storage_fa_io_sfence_bits_asid),
    .io_csr_satp_asid(superPage_ldtlb_sp_storage_fa_io_csr_satp_asid),
    .io_rreq_0_ready(superPage_ldtlb_sp_storage_fa_io_rreq_0_ready),
    .io_rreq_0_valid(superPage_ldtlb_sp_storage_fa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(superPage_ldtlb_sp_storage_fa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(superPage_ldtlb_sp_storage_fa_io_rreq_1_ready),
    .io_rreq_1_valid(superPage_ldtlb_sp_storage_fa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(superPage_ldtlb_sp_storage_fa_io_rreq_1_bits_vpn),
    .io_rresp_0_valid(superPage_ldtlb_sp_storage_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn_0(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_ppn_0),
    .io_rresp_0_bits_perm_0_pf(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf),
    .io_rresp_0_bits_perm_0_af(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_af),
    .io_rresp_0_bits_perm_0_d(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_d),
    .io_rresp_0_bits_perm_0_a(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_a),
    .io_rresp_0_bits_perm_0_u(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_u),
    .io_rresp_0_bits_perm_0_x(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_x),
    .io_rresp_0_bits_perm_0_w(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_w),
    .io_rresp_0_bits_perm_0_r(superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_r),
    .io_rresp_1_valid(superPage_ldtlb_sp_storage_fa_io_rresp_1_valid),
    .io_rresp_1_bits_hit(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn_0(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_ppn_0),
    .io_rresp_1_bits_perm_0_pf(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf),
    .io_rresp_1_bits_perm_0_af(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_af),
    .io_rresp_1_bits_perm_0_a(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_a),
    .io_rresp_1_bits_perm_0_u(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_u),
    .io_rresp_1_bits_perm_0_x(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_x),
    .io_rresp_1_bits_perm_0_r(superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_r),
    .io_wvalid(superPage_ldtlb_sp_storage_fa_io_wvalid),
    .io_wwayIdx(superPage_ldtlb_sp_storage_fa_io_wwayIdx),
    .io_wdata_entry_tag(superPage_ldtlb_sp_storage_fa_io_wdata_entry_tag),
    .io_wdata_entry_perm_d(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_r),
    .io_wdata_entry_level(superPage_ldtlb_sp_storage_fa_io_wdata_entry_level),
    .io_wdata_entry_ppn(superPage_ldtlb_sp_storage_fa_io_wdata_entry_ppn),
    .io_wdata_ppn_low_0(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_0),
    .io_wdata_ppn_low_1(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_1),
    .io_wdata_ppn_low_2(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_2),
    .io_wdata_ppn_low_3(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_3),
    .io_wdata_ppn_low_4(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_4),
    .io_wdata_ppn_low_5(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_5),
    .io_wdata_ppn_low_6(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_6),
    .io_wdata_ppn_low_7(superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_7),
    .io_wdata_valididx_0(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_0),
    .io_wdata_valididx_1(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_1),
    .io_wdata_valididx_2(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_2),
    .io_wdata_valididx_3(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_3),
    .io_wdata_valididx_4(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_4),
    .io_wdata_valididx_5(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_5),
    .io_wdata_valididx_6(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_6),
    .io_wdata_valididx_7(superPage_ldtlb_sp_storage_fa_io_wdata_valididx_7),
    .io_wdata_pteidx_0(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_0),
    .io_wdata_pteidx_1(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_1),
    .io_wdata_pteidx_2(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_2),
    .io_wdata_pteidx_3(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_3),
    .io_wdata_pteidx_4(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_4),
    .io_wdata_pteidx_5(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_5),
    .io_wdata_pteidx_6(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_6),
    .io_wdata_pteidx_7(superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_7),
    .io_wdata_pf(superPage_ldtlb_sp_storage_fa_io_wdata_pf),
    .io_wdata_af(superPage_ldtlb_sp_storage_fa_io_wdata_af),
    .io_wdata_replenish_0_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_c),
    .io_wdata_replenish_0_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_atomic),
    .io_wdata_replenish_0_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_x),
    .io_wdata_replenish_0_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_w),
    .io_wdata_replenish_0_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_r),
    .io_wdata_replenish_1_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_c),
    .io_wdata_replenish_1_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_atomic),
    .io_wdata_replenish_1_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_x),
    .io_wdata_replenish_1_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_w),
    .io_wdata_replenish_1_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_r),
    .io_wdata_replenish_2_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_c),
    .io_wdata_replenish_2_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_atomic),
    .io_wdata_replenish_2_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_x),
    .io_wdata_replenish_2_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_w),
    .io_wdata_replenish_2_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_r),
    .io_wdata_replenish_3_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_c),
    .io_wdata_replenish_3_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_atomic),
    .io_wdata_replenish_3_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_x),
    .io_wdata_replenish_3_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_w),
    .io_wdata_replenish_3_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_r),
    .io_wdata_replenish_4_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_c),
    .io_wdata_replenish_4_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_atomic),
    .io_wdata_replenish_4_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_x),
    .io_wdata_replenish_4_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_w),
    .io_wdata_replenish_4_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_r),
    .io_wdata_replenish_5_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_c),
    .io_wdata_replenish_5_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_atomic),
    .io_wdata_replenish_5_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_x),
    .io_wdata_replenish_5_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_w),
    .io_wdata_replenish_5_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_r),
    .io_wdata_replenish_6_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_c),
    .io_wdata_replenish_6_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_atomic),
    .io_wdata_replenish_6_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_x),
    .io_wdata_replenish_6_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_w),
    .io_wdata_replenish_6_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_r),
    .io_wdata_replenish_7_c(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_c),
    .io_wdata_replenish_7_atomic(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_atomic),
    .io_wdata_replenish_7_x(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_x),
    .io_wdata_replenish_7_w(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_w),
    .io_wdata_replenish_7_r(superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_r),
    .io_victim_out_valid(superPage_ldtlb_sp_storage_fa_io_victim_out_valid),
    .io_victim_out_bits_entry_tag(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_tag),
    .io_victim_out_bits_entry_asid(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_asid),
    .io_victim_out_bits_entry_ppn(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_ppn),
    .io_victim_out_bits_entry_perm_pf(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pf),
    .io_victim_out_bits_entry_perm_af(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_af),
    .io_victim_out_bits_entry_perm_d(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_d),
    .io_victim_out_bits_entry_perm_a(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_a),
    .io_victim_out_bits_entry_perm_u(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_u),
    .io_victim_out_bits_entry_perm_x(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_x),
    .io_victim_out_bits_entry_perm_w(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_w),
    .io_victim_out_bits_entry_perm_r(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_r),
    .io_victim_out_bits_entry_perm_pm_r(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_r),
    .io_victim_out_bits_entry_perm_pm_w(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_w),
    .io_victim_out_bits_entry_perm_pm_c(superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_c),
    .io_access_0_touch_ways_valid(superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_bits),
    .io_access_1_touch_ways_valid(superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_valid),
    .io_access_1_touch_ways_bits(superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_bits),
    .io_access_2_touch_ways_valid(superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_valid),
    .io_access_2_touch_ways_bits(superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_bits)
  );
  assign io_rresp_0_bits_hit = normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_hit |
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 525:32]
  assign io_rresp_0_bits_ppn_0 = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_ppn_0 : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 527:28]
  assign io_rresp_0_bits_ppn_1 = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_ppn_0 : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_ppn_1; // @[TLBStorage.scala 527:28]
  assign io_rresp_0_bits_perm_0_pf = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pf
    ; // @[TLBStorage.scala 528:32]
  assign io_rresp_0_bits_perm_0_af = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_af : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_af
    ; // @[TLBStorage.scala 529:32]
  assign io_rresp_0_bits_perm_0_d = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_d : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_d; // @[TLBStorage.scala 530:31]
  assign io_rresp_0_bits_perm_0_a = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_a : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 531:31]
  assign io_rresp_0_bits_perm_0_u = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_u : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 533:31]
  assign io_rresp_0_bits_perm_0_x = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_x : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 534:31]
  assign io_rresp_0_bits_perm_0_w = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_w : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_w; // @[TLBStorage.scala 535:31]
  assign io_rresp_0_bits_perm_0_r = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_perm_0_r : normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_r; // @[TLBStorage.scala 536:31]
  assign io_rresp_0_bits_super_hit = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 539:23]
  assign io_rresp_0_bits_super_ppn = superPage_ldtlb_sp_storage_fa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 540:23]
  assign io_rresp_0_bits_spm_r = normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_r; // @[TLBStorage.scala 541:17]
  assign io_rresp_0_bits_spm_w = normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_w; // @[TLBStorage.scala 541:17]
  assign io_rresp_0_bits_spm_c = normalPage_ldtlb_np_storage_sa_io_rresp_0_bits_perm_0_pm_0_c; // @[TLBStorage.scala 541:17]
  assign io_rresp_1_bits_hit = normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_hit |
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 525:32]
  assign io_rresp_1_bits_ppn_0 = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_ppn_0 : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 527:28]
  assign io_rresp_1_bits_ppn_1 = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_ppn_0 : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_ppn_1; // @[TLBStorage.scala 527:28]
  assign io_rresp_1_bits_perm_0_pf = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pf
    ; // @[TLBStorage.scala 528:32]
  assign io_rresp_1_bits_perm_0_af = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_af : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_af
    ; // @[TLBStorage.scala 529:32]
  assign io_rresp_1_bits_perm_0_a = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_a : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 531:31]
  assign io_rresp_1_bits_perm_0_u = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_u : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 533:31]
  assign io_rresp_1_bits_perm_0_x = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_x : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 534:31]
  assign io_rresp_1_bits_perm_0_r = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_perm_0_r : normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_r; // @[TLBStorage.scala 536:31]
  assign io_rresp_1_bits_super_hit = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 539:23]
  assign io_rresp_1_bits_super_ppn = superPage_ldtlb_sp_storage_fa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 540:23]
  assign io_rresp_1_bits_spm_r = normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_r; // @[TLBStorage.scala 541:17]
  assign io_rresp_1_bits_spm_c = normalPage_ldtlb_np_storage_sa_io_rresp_1_bits_perm_0_pm_0_c; // @[TLBStorage.scala 541:17]
  assign normalPage_ldtlb_np_storage_sa_clock = clock;
  assign normalPage_ldtlb_np_storage_sa_reset = reset;
  assign normalPage_ldtlb_np_storage_sa_io_sfence_valid = io_sfence_valid; // @[TLBStorage.scala 549:21]
  assign normalPage_ldtlb_np_storage_sa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLBStorage.scala 549:21]
  assign normalPage_ldtlb_np_storage_sa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLBStorage.scala 549:21]
  assign normalPage_ldtlb_np_storage_sa_io_csr_satp_asid = io_csr_satp_asid; // @[TLBStorage.scala 551:18]
  assign normalPage_ldtlb_np_storage_sa_io_rreq_0_valid = io_rreq_0_valid; // @[MMUBundle.scala 450:25]
  assign normalPage_ldtlb_np_storage_sa_io_rreq_0_bits_vpn = io_rreq_0_bits_vpn; // @[MMUBundle.scala 451:28]
  assign normalPage_ldtlb_np_storage_sa_io_rreq_1_valid = io_rreq_1_valid; // @[MMUBundle.scala 450:25]
  assign normalPage_ldtlb_np_storage_sa_io_rreq_1_bits_vpn = io_rreq_1_bits_vpn; // @[MMUBundle.scala 451:28]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_valid = superPage_ldtlb_sp_storage_fa_io_victim_out_valid; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_tag =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_tag; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_asid =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_asid; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_ppn =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_ppn; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pf =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pf; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_af =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_af; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_d =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_d; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_a =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_a; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_u =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_u; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_x =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_x; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_w =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_w; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_r =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_r; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_r =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_r; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_w =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_w; // @[TLBStorage.scala 547:24]
  assign normalPage_ldtlb_np_storage_sa_io_victim_in_bits_entry_perm_pm_c =
    superPage_ldtlb_sp_storage_fa_io_victim_out_bits_entry_perm_pm_c; // @[TLBStorage.scala 547:24]
  assign superPage_ldtlb_sp_storage_fa_clock = clock;
  assign superPage_ldtlb_sp_storage_fa_reset = reset;
  assign superPage_ldtlb_sp_storage_fa_io_sfence_valid = io_sfence_valid; // @[TLBStorage.scala 550:20]
  assign superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLBStorage.scala 550:20]
  assign superPage_ldtlb_sp_storage_fa_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[TLBStorage.scala 550:20]
  assign superPage_ldtlb_sp_storage_fa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLBStorage.scala 550:20]
  assign superPage_ldtlb_sp_storage_fa_io_sfence_bits_asid = io_sfence_bits_asid; // @[TLBStorage.scala 550:20]
  assign superPage_ldtlb_sp_storage_fa_io_csr_satp_asid = io_csr_satp_asid; // @[TLBStorage.scala 552:17]
  assign superPage_ldtlb_sp_storage_fa_io_rreq_0_valid = io_rreq_0_valid; // @[MMUBundle.scala 450:25]
  assign superPage_ldtlb_sp_storage_fa_io_rreq_0_bits_vpn = io_rreq_0_bits_vpn; // @[MMUBundle.scala 451:28]
  assign superPage_ldtlb_sp_storage_fa_io_rreq_1_valid = io_rreq_1_valid; // @[MMUBundle.scala 450:25]
  assign superPage_ldtlb_sp_storage_fa_io_rreq_1_bits_vpn = io_rreq_1_bits_vpn; // @[MMUBundle.scala 451:28]
  assign superPage_ldtlb_sp_storage_fa_io_wvalid = io_wvalid; // @[MMUBundle.scala 459:18]
  assign superPage_ldtlb_sp_storage_fa_io_wwayIdx = {super_refill_idx_left_subtree_older,_super_refill_idx_T_14}; // @[Cat.scala 31:58]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_tag = io_wdata_entry_tag; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_d = io_wdata_entry_perm_d; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_a = io_wdata_entry_perm_a; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_g = io_wdata_entry_perm_g; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_u = io_wdata_entry_perm_u; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_x = io_wdata_entry_perm_x; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_w = io_wdata_entry_perm_w; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_perm_r = io_wdata_entry_perm_r; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_level = io_wdata_entry_level; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_entry_ppn = io_wdata_entry_ppn; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_0 = io_wdata_ppn_low_0; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_1 = io_wdata_ppn_low_1; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_2 = io_wdata_ppn_low_2; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_3 = io_wdata_ppn_low_3; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_4 = io_wdata_ppn_low_4; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_5 = io_wdata_ppn_low_5; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_6 = io_wdata_ppn_low_6; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_ppn_low_7 = io_wdata_ppn_low_7; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_0 = io_wdata_valididx_0; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_1 = io_wdata_valididx_1; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_2 = io_wdata_valididx_2; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_3 = io_wdata_valididx_3; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_4 = io_wdata_valididx_4; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_5 = io_wdata_valididx_5; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_6 = io_wdata_valididx_6; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_valididx_7 = io_wdata_valididx_7; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_0 = io_wdata_pteidx_0; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_1 = io_wdata_pteidx_1; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_2 = io_wdata_pteidx_2; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_3 = io_wdata_pteidx_3; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_4 = io_wdata_pteidx_4; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_5 = io_wdata_pteidx_5; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_6 = io_wdata_pteidx_6; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pteidx_7 = io_wdata_pteidx_7; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_pf = io_wdata_pf; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_af = io_wdata_af; // @[MMUBundle.scala 461:22]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_c = io_wdata_replenish_0_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_atomic = io_wdata_replenish_0_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_x = io_wdata_replenish_0_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_w = io_wdata_replenish_0_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_0_r = io_wdata_replenish_0_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_c = io_wdata_replenish_1_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_atomic = io_wdata_replenish_1_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_x = io_wdata_replenish_1_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_w = io_wdata_replenish_1_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_1_r = io_wdata_replenish_1_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_c = io_wdata_replenish_2_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_atomic = io_wdata_replenish_2_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_x = io_wdata_replenish_2_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_w = io_wdata_replenish_2_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_2_r = io_wdata_replenish_2_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_c = io_wdata_replenish_3_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_atomic = io_wdata_replenish_3_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_x = io_wdata_replenish_3_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_w = io_wdata_replenish_3_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_3_r = io_wdata_replenish_3_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_c = io_wdata_replenish_4_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_atomic = io_wdata_replenish_4_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_x = io_wdata_replenish_4_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_w = io_wdata_replenish_4_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_4_r = io_wdata_replenish_4_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_c = io_wdata_replenish_5_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_atomic = io_wdata_replenish_5_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_x = io_wdata_replenish_5_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_w = io_wdata_replenish_5_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_5_r = io_wdata_replenish_5_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_c = io_wdata_replenish_6_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_atomic = io_wdata_replenish_6_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_x = io_wdata_replenish_6_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_w = io_wdata_replenish_6_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_6_r = io_wdata_replenish_6_r; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_c = io_wdata_replenish_7_c; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_atomic = io_wdata_replenish_7_atomic; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_x = io_wdata_replenish_7_x; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_w = io_wdata_replenish_7_w; // @[MMUBundle.scala 462:32]
  assign superPage_ldtlb_sp_storage_fa_io_wdata_replenish_7_r = io_wdata_replenish_7_r; // @[MMUBundle.scala 462:32]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      super_refill_idx_state_reg <= 3'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_super_refill_idx_T_1) begin // @[Replacement.scala 168:72]
      if (superPage_ldtlb_sp_storage_fa_io_access_2_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_28;
      end else if (superPage_ldtlb_sp_storage_fa_io_access_1_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_18;
      end else if (superPage_ldtlb_sp_storage_fa_io_access_0_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_8;
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
  super_refill_idx_state_reg = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    super_refill_idx_state_reg = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

