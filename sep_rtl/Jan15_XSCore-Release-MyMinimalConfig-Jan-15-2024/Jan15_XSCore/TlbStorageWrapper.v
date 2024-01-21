module TlbStorageWrapper(
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
  input         io_rreq_3_valid,
  input  [26:0] io_rreq_3_bits_vpn,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn_0,
  output        io_rresp_0_bits_perm_0_pf,
  output        io_rresp_0_bits_perm_0_af,
  output        io_rresp_0_bits_perm_0_a,
  output        io_rresp_0_bits_perm_0_u,
  output        io_rresp_0_bits_perm_0_x,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn_0,
  output        io_rresp_1_bits_perm_0_pf,
  output        io_rresp_1_bits_perm_0_af,
  output        io_rresp_1_bits_perm_0_a,
  output        io_rresp_1_bits_perm_0_u,
  output        io_rresp_1_bits_perm_0_x,
  output        io_rresp_3_bits_hit,
  output [23:0] io_rresp_3_bits_ppn_0,
  output        io_rresp_3_bits_perm_0_pf,
  output        io_rresp_3_bits_perm_0_af,
  output        io_rresp_3_bits_perm_0_a,
  output        io_rresp_3_bits_perm_0_u,
  output        io_rresp_3_bits_perm_0_x,
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
  input         io_wdata_pf,
  input         io_wdata_af
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  normalPage_itlb_np_storage_fa_clock; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_reset; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_sfence_valid; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_sfence_bits_rs1; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_sfence_bits_rs2; // @[TLBStorage.scala 462:29]
  wire [38:0] normalPage_itlb_np_storage_fa_io_sfence_bits_addr; // @[TLBStorage.scala 462:29]
  wire [15:0] normalPage_itlb_np_storage_fa_io_sfence_bits_asid; // @[TLBStorage.scala 462:29]
  wire [15:0] normalPage_itlb_np_storage_fa_io_csr_satp_asid; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_0_ready; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_0_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] normalPage_itlb_np_storage_fa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_1_ready; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_1_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] normalPage_itlb_np_storage_fa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_3_ready; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rreq_3_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] normalPage_itlb_np_storage_fa_io_rreq_3_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_valid; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] normalPage_itlb_np_storage_fa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_valid; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] normalPage_itlb_np_storage_fa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_valid; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] normalPage_itlb_np_storage_fa_io_rresp_3_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wvalid; // @[TLBStorage.scala 462:29]
  wire [1:0] normalPage_itlb_np_storage_fa_io_wwayIdx; // @[TLBStorage.scala 462:29]
  wire [23:0] normalPage_itlb_np_storage_fa_io_wdata_entry_tag; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_d; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_a; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_g; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_u; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_x; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_w; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_entry_perm_r; // @[TLBStorage.scala 462:29]
  wire [20:0] normalPage_itlb_np_storage_fa_io_wdata_entry_ppn; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_0; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_1; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_2; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_3; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_4; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_5; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_6; // @[TLBStorage.scala 462:29]
  wire [2:0] normalPage_itlb_np_storage_fa_io_wdata_ppn_low_7; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_0; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_1; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_2; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_3; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_4; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_5; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_6; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_valididx_7; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_pf; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_wdata_af; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] normalPage_itlb_np_storage_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_access_1_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] normalPage_itlb_np_storage_fa_io_access_1_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_access_2_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] normalPage_itlb_np_storage_fa_io_access_2_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  normalPage_itlb_np_storage_fa_io_access_3_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire [1:0] normalPage_itlb_np_storage_fa_io_access_3_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_clock; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_reset; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_sfence_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_sfence_bits_rs1; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_sfence_bits_rs2; // @[TLBStorage.scala 462:29]
  wire [38:0] superPage_itlb_sp_storage_fa_io_sfence_bits_addr; // @[TLBStorage.scala 462:29]
  wire [15:0] superPage_itlb_sp_storage_fa_io_sfence_bits_asid; // @[TLBStorage.scala 462:29]
  wire [15:0] superPage_itlb_sp_storage_fa_io_csr_satp_asid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_0_ready; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_0_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_itlb_sp_storage_fa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_1_ready; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_1_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_itlb_sp_storage_fa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_3_ready; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rreq_3_valid; // @[TLBStorage.scala 462:29]
  wire [26:0] superPage_itlb_sp_storage_fa_io_rreq_3_bits_vpn; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_itlb_sp_storage_fa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_itlb_sp_storage_fa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_itlb_sp_storage_fa_io_rresp_3_bits_ppn_0; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_af; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_a; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_u; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_x; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wvalid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wwayIdx; // @[TLBStorage.scala 462:29]
  wire [23:0] superPage_itlb_sp_storage_fa_io_wdata_entry_tag; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_d; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_a; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_g; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_u; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_x; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_w; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_entry_perm_r; // @[TLBStorage.scala 462:29]
  wire [1:0] superPage_itlb_sp_storage_fa_io_wdata_entry_level; // @[TLBStorage.scala 462:29]
  wire [20:0] superPage_itlb_sp_storage_fa_io_wdata_entry_ppn; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_0; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_1; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_2; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_3; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_4; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_5; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_6; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_valididx_7; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_pf; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_wdata_af; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_1_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_1_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_2_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_2_touch_ways_bits; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_3_touch_ways_valid; // @[TLBStorage.scala 462:29]
  wire  superPage_itlb_sp_storage_fa_io_access_3_touch_ways_bits; // @[TLBStorage.scala 462:29]
  reg [2:0] normal_refill_idx_state_reg; // @[Replacement.scala 168:72]
  wire  _normal_refill_idx_T_2 = normalPage_itlb_np_storage_fa_io_access_0_touch_ways_valid |
    normalPage_itlb_np_storage_fa_io_access_1_touch_ways_valid |
    normalPage_itlb_np_storage_fa_io_access_2_touch_ways_valid |
    normalPage_itlb_np_storage_fa_io_access_3_touch_ways_valid; // @[package.scala 72:59]
  wire [1:0] normal_refill_idx_state_reg_touch_way_sized = normalPage_itlb_np_storage_fa_io_access_0_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older = ~normal_refill_idx_state_reg_touch_way_sized[1]; // @[Replacement.scala 196:33]
  wire  normal_refill_idx_state_reg_left_subtree_state = normal_refill_idx_state_reg[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state = normal_refill_idx_state_reg[0]; // @[Replacement.scala 198:38]
  wire  _normal_refill_idx_state_reg_T_2 = ~normal_refill_idx_state_reg_touch_way_sized[0]; // @[Replacement.scala 218:7]
  wire  _normal_refill_idx_state_reg_T_3 = normal_refill_idx_state_reg_set_left_older ?
    normal_refill_idx_state_reg_left_subtree_state : _normal_refill_idx_state_reg_T_2; // @[Replacement.scala 203:16]
  wire  _normal_refill_idx_state_reg_T_7 = normal_refill_idx_state_reg_set_left_older ? _normal_refill_idx_state_reg_T_2
     : normal_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 206:16]
  wire [2:0] _normal_refill_idx_state_reg_T_8 = {normal_refill_idx_state_reg_set_left_older,
    _normal_refill_idx_state_reg_T_3,_normal_refill_idx_state_reg_T_7}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_9 = normalPage_itlb_np_storage_fa_io_access_0_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_8 : normal_refill_idx_state_reg; // @[Replacement.scala 22:56]
  wire [1:0] normal_refill_idx_state_reg_touch_way_sized_1 = normalPage_itlb_np_storage_fa_io_access_1_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_1 = ~normal_refill_idx_state_reg_touch_way_sized_1[1]; // @[Replacement.scala 196:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_1 = _normal_refill_idx_state_reg_T_9[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_1 = _normal_refill_idx_state_reg_T_9[0]; // @[Replacement.scala 198:38]
  wire  _normal_refill_idx_state_reg_T_12 = ~normal_refill_idx_state_reg_touch_way_sized_1[0]; // @[Replacement.scala 218:7]
  wire  _normal_refill_idx_state_reg_T_13 = normal_refill_idx_state_reg_set_left_older_1 ?
    normal_refill_idx_state_reg_left_subtree_state_1 : _normal_refill_idx_state_reg_T_12; // @[Replacement.scala 203:16]
  wire  _normal_refill_idx_state_reg_T_17 = normal_refill_idx_state_reg_set_left_older_1 ?
    _normal_refill_idx_state_reg_T_12 : normal_refill_idx_state_reg_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _normal_refill_idx_state_reg_T_18 = {normal_refill_idx_state_reg_set_left_older_1,
    _normal_refill_idx_state_reg_T_13,_normal_refill_idx_state_reg_T_17}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_19 = normalPage_itlb_np_storage_fa_io_access_1_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_18 : _normal_refill_idx_state_reg_T_9; // @[Replacement.scala 22:56]
  wire [1:0] normal_refill_idx_state_reg_touch_way_sized_2 = normalPage_itlb_np_storage_fa_io_access_2_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_2 = ~normal_refill_idx_state_reg_touch_way_sized_2[1]; // @[Replacement.scala 196:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_2 = _normal_refill_idx_state_reg_T_19[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_2 = _normal_refill_idx_state_reg_T_19[0]; // @[Replacement.scala 198:38]
  wire  _normal_refill_idx_state_reg_T_22 = ~normal_refill_idx_state_reg_touch_way_sized_2[0]; // @[Replacement.scala 218:7]
  wire  _normal_refill_idx_state_reg_T_23 = normal_refill_idx_state_reg_set_left_older_2 ?
    normal_refill_idx_state_reg_left_subtree_state_2 : _normal_refill_idx_state_reg_T_22; // @[Replacement.scala 203:16]
  wire  _normal_refill_idx_state_reg_T_27 = normal_refill_idx_state_reg_set_left_older_2 ?
    _normal_refill_idx_state_reg_T_22 : normal_refill_idx_state_reg_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _normal_refill_idx_state_reg_T_28 = {normal_refill_idx_state_reg_set_left_older_2,
    _normal_refill_idx_state_reg_T_23,_normal_refill_idx_state_reg_T_27}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_29 = normalPage_itlb_np_storage_fa_io_access_2_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_28 : _normal_refill_idx_state_reg_T_19; // @[Replacement.scala 22:56]
  wire [1:0] normal_refill_idx_state_reg_touch_way_sized_3 = normalPage_itlb_np_storage_fa_io_access_3_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_3 = ~normal_refill_idx_state_reg_touch_way_sized_3[1]; // @[Replacement.scala 196:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_3 = _normal_refill_idx_state_reg_T_29[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_3 = _normal_refill_idx_state_reg_T_29[0]; // @[Replacement.scala 198:38]
  wire  _normal_refill_idx_state_reg_T_32 = ~normal_refill_idx_state_reg_touch_way_sized_3[0]; // @[Replacement.scala 218:7]
  wire  _normal_refill_idx_state_reg_T_33 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_3 : _normal_refill_idx_state_reg_T_32; // @[Replacement.scala 203:16]
  wire  _normal_refill_idx_state_reg_T_37 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_32 : normal_refill_idx_state_reg_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [2:0] _normal_refill_idx_state_reg_T_38 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_33,_normal_refill_idx_state_reg_T_37}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older = normal_refill_idx_state_reg[2]; // @[Replacement.scala 243:38]
  wire  _normal_refill_idx_T_26 = normal_refill_idx_left_subtree_older ? normal_refill_idx_state_reg_left_subtree_state
     : normal_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 250:16]
  reg  super_refill_idx_state_reg; // @[Replacement.scala 168:72]
  wire  _super_refill_idx_T_2 = superPage_itlb_sp_storage_fa_io_access_0_touch_ways_valid |
    superPage_itlb_sp_storage_fa_io_access_1_touch_ways_valid |
    superPage_itlb_sp_storage_fa_io_access_2_touch_ways_valid |
    superPage_itlb_sp_storage_fa_io_access_3_touch_ways_valid; // @[package.scala 72:59]
  wire  super_refill_idx_state_reg_touch_way_sized = superPage_itlb_sp_storage_fa_io_access_0_touch_ways_bits; // @[package.scala 154:13]
  wire  _super_refill_idx_state_reg_T_1 = ~super_refill_idx_state_reg_touch_way_sized; // @[Replacement.scala 218:7]
  wire  _super_refill_idx_state_reg_T_2 = superPage_itlb_sp_storage_fa_io_access_0_touch_ways_valid ?
    _super_refill_idx_state_reg_T_1 : super_refill_idx_state_reg; // @[Replacement.scala 22:56]
  wire  super_refill_idx_state_reg_touch_way_sized_1 = superPage_itlb_sp_storage_fa_io_access_1_touch_ways_bits; // @[package.scala 154:13]
  wire  _super_refill_idx_state_reg_T_4 = ~super_refill_idx_state_reg_touch_way_sized_1; // @[Replacement.scala 218:7]
  wire  super_refill_idx_state_reg_touch_way_sized_2 = superPage_itlb_sp_storage_fa_io_access_2_touch_ways_bits; // @[package.scala 154:13]
  wire  _super_refill_idx_state_reg_T_7 = ~super_refill_idx_state_reg_touch_way_sized_2; // @[Replacement.scala 218:7]
  wire  super_refill_idx_state_reg_touch_way_sized_3 = superPage_itlb_sp_storage_fa_io_access_3_touch_ways_bits; // @[package.scala 154:13]
  wire  _super_refill_idx_state_reg_T_10 = ~super_refill_idx_state_reg_touch_way_sized_3; // @[Replacement.scala 218:7]
  TLBFA normalPage_itlb_np_storage_fa ( // @[TLBStorage.scala 462:29]
    .clock(normalPage_itlb_np_storage_fa_clock),
    .reset(normalPage_itlb_np_storage_fa_reset),
    .io_sfence_valid(normalPage_itlb_np_storage_fa_io_sfence_valid),
    .io_sfence_bits_rs1(normalPage_itlb_np_storage_fa_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(normalPage_itlb_np_storage_fa_io_sfence_bits_rs2),
    .io_sfence_bits_addr(normalPage_itlb_np_storage_fa_io_sfence_bits_addr),
    .io_sfence_bits_asid(normalPage_itlb_np_storage_fa_io_sfence_bits_asid),
    .io_csr_satp_asid(normalPage_itlb_np_storage_fa_io_csr_satp_asid),
    .io_rreq_0_ready(normalPage_itlb_np_storage_fa_io_rreq_0_ready),
    .io_rreq_0_valid(normalPage_itlb_np_storage_fa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(normalPage_itlb_np_storage_fa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(normalPage_itlb_np_storage_fa_io_rreq_1_ready),
    .io_rreq_1_valid(normalPage_itlb_np_storage_fa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(normalPage_itlb_np_storage_fa_io_rreq_1_bits_vpn),
    .io_rreq_3_ready(normalPage_itlb_np_storage_fa_io_rreq_3_ready),
    .io_rreq_3_valid(normalPage_itlb_np_storage_fa_io_rreq_3_valid),
    .io_rreq_3_bits_vpn(normalPage_itlb_np_storage_fa_io_rreq_3_bits_vpn),
    .io_rresp_0_valid(normalPage_itlb_np_storage_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(normalPage_itlb_np_storage_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn_0(normalPage_itlb_np_storage_fa_io_rresp_0_bits_ppn_0),
    .io_rresp_0_bits_perm_0_pf(normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_pf),
    .io_rresp_0_bits_perm_0_af(normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_af),
    .io_rresp_0_bits_perm_0_a(normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_a),
    .io_rresp_0_bits_perm_0_u(normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_u),
    .io_rresp_0_bits_perm_0_x(normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_x),
    .io_rresp_1_valid(normalPage_itlb_np_storage_fa_io_rresp_1_valid),
    .io_rresp_1_bits_hit(normalPage_itlb_np_storage_fa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn_0(normalPage_itlb_np_storage_fa_io_rresp_1_bits_ppn_0),
    .io_rresp_1_bits_perm_0_pf(normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_pf),
    .io_rresp_1_bits_perm_0_af(normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_af),
    .io_rresp_1_bits_perm_0_a(normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_a),
    .io_rresp_1_bits_perm_0_u(normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_u),
    .io_rresp_1_bits_perm_0_x(normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_x),
    .io_rresp_3_valid(normalPage_itlb_np_storage_fa_io_rresp_3_valid),
    .io_rresp_3_bits_hit(normalPage_itlb_np_storage_fa_io_rresp_3_bits_hit),
    .io_rresp_3_bits_ppn_0(normalPage_itlb_np_storage_fa_io_rresp_3_bits_ppn_0),
    .io_rresp_3_bits_perm_0_pf(normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_pf),
    .io_rresp_3_bits_perm_0_af(normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_af),
    .io_rresp_3_bits_perm_0_a(normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_a),
    .io_rresp_3_bits_perm_0_u(normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_u),
    .io_rresp_3_bits_perm_0_x(normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_x),
    .io_wvalid(normalPage_itlb_np_storage_fa_io_wvalid),
    .io_wwayIdx(normalPage_itlb_np_storage_fa_io_wwayIdx),
    .io_wdata_entry_tag(normalPage_itlb_np_storage_fa_io_wdata_entry_tag),
    .io_wdata_entry_perm_d(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(normalPage_itlb_np_storage_fa_io_wdata_entry_perm_r),
    .io_wdata_entry_ppn(normalPage_itlb_np_storage_fa_io_wdata_entry_ppn),
    .io_wdata_ppn_low_0(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_0),
    .io_wdata_ppn_low_1(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_1),
    .io_wdata_ppn_low_2(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_2),
    .io_wdata_ppn_low_3(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_3),
    .io_wdata_ppn_low_4(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_4),
    .io_wdata_ppn_low_5(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_5),
    .io_wdata_ppn_low_6(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_6),
    .io_wdata_ppn_low_7(normalPage_itlb_np_storage_fa_io_wdata_ppn_low_7),
    .io_wdata_valididx_0(normalPage_itlb_np_storage_fa_io_wdata_valididx_0),
    .io_wdata_valididx_1(normalPage_itlb_np_storage_fa_io_wdata_valididx_1),
    .io_wdata_valididx_2(normalPage_itlb_np_storage_fa_io_wdata_valididx_2),
    .io_wdata_valididx_3(normalPage_itlb_np_storage_fa_io_wdata_valididx_3),
    .io_wdata_valididx_4(normalPage_itlb_np_storage_fa_io_wdata_valididx_4),
    .io_wdata_valididx_5(normalPage_itlb_np_storage_fa_io_wdata_valididx_5),
    .io_wdata_valididx_6(normalPage_itlb_np_storage_fa_io_wdata_valididx_6),
    .io_wdata_valididx_7(normalPage_itlb_np_storage_fa_io_wdata_valididx_7),
    .io_wdata_pf(normalPage_itlb_np_storage_fa_io_wdata_pf),
    .io_wdata_af(normalPage_itlb_np_storage_fa_io_wdata_af),
    .io_access_0_touch_ways_valid(normalPage_itlb_np_storage_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(normalPage_itlb_np_storage_fa_io_access_0_touch_ways_bits),
    .io_access_1_touch_ways_valid(normalPage_itlb_np_storage_fa_io_access_1_touch_ways_valid),
    .io_access_1_touch_ways_bits(normalPage_itlb_np_storage_fa_io_access_1_touch_ways_bits),
    .io_access_2_touch_ways_valid(normalPage_itlb_np_storage_fa_io_access_2_touch_ways_valid),
    .io_access_2_touch_ways_bits(normalPage_itlb_np_storage_fa_io_access_2_touch_ways_bits),
    .io_access_3_touch_ways_valid(normalPage_itlb_np_storage_fa_io_access_3_touch_ways_valid),
    .io_access_3_touch_ways_bits(normalPage_itlb_np_storage_fa_io_access_3_touch_ways_bits)
  );
  TLBFA_1 superPage_itlb_sp_storage_fa ( // @[TLBStorage.scala 462:29]
    .clock(superPage_itlb_sp_storage_fa_clock),
    .reset(superPage_itlb_sp_storage_fa_reset),
    .io_sfence_valid(superPage_itlb_sp_storage_fa_io_sfence_valid),
    .io_sfence_bits_rs1(superPage_itlb_sp_storage_fa_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(superPage_itlb_sp_storage_fa_io_sfence_bits_rs2),
    .io_sfence_bits_addr(superPage_itlb_sp_storage_fa_io_sfence_bits_addr),
    .io_sfence_bits_asid(superPage_itlb_sp_storage_fa_io_sfence_bits_asid),
    .io_csr_satp_asid(superPage_itlb_sp_storage_fa_io_csr_satp_asid),
    .io_rreq_0_ready(superPage_itlb_sp_storage_fa_io_rreq_0_ready),
    .io_rreq_0_valid(superPage_itlb_sp_storage_fa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(superPage_itlb_sp_storage_fa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(superPage_itlb_sp_storage_fa_io_rreq_1_ready),
    .io_rreq_1_valid(superPage_itlb_sp_storage_fa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(superPage_itlb_sp_storage_fa_io_rreq_1_bits_vpn),
    .io_rreq_3_ready(superPage_itlb_sp_storage_fa_io_rreq_3_ready),
    .io_rreq_3_valid(superPage_itlb_sp_storage_fa_io_rreq_3_valid),
    .io_rreq_3_bits_vpn(superPage_itlb_sp_storage_fa_io_rreq_3_bits_vpn),
    .io_rresp_0_valid(superPage_itlb_sp_storage_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn_0(superPage_itlb_sp_storage_fa_io_rresp_0_bits_ppn_0),
    .io_rresp_0_bits_perm_0_pf(superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf),
    .io_rresp_0_bits_perm_0_af(superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_af),
    .io_rresp_0_bits_perm_0_a(superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_a),
    .io_rresp_0_bits_perm_0_u(superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_u),
    .io_rresp_0_bits_perm_0_x(superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_x),
    .io_rresp_1_valid(superPage_itlb_sp_storage_fa_io_rresp_1_valid),
    .io_rresp_1_bits_hit(superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn_0(superPage_itlb_sp_storage_fa_io_rresp_1_bits_ppn_0),
    .io_rresp_1_bits_perm_0_pf(superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf),
    .io_rresp_1_bits_perm_0_af(superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_af),
    .io_rresp_1_bits_perm_0_a(superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_a),
    .io_rresp_1_bits_perm_0_u(superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_u),
    .io_rresp_1_bits_perm_0_x(superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_x),
    .io_rresp_3_valid(superPage_itlb_sp_storage_fa_io_rresp_3_valid),
    .io_rresp_3_bits_hit(superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit),
    .io_rresp_3_bits_ppn_0(superPage_itlb_sp_storage_fa_io_rresp_3_bits_ppn_0),
    .io_rresp_3_bits_perm_0_pf(superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_pf),
    .io_rresp_3_bits_perm_0_af(superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_af),
    .io_rresp_3_bits_perm_0_a(superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_a),
    .io_rresp_3_bits_perm_0_u(superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_u),
    .io_rresp_3_bits_perm_0_x(superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_x),
    .io_wvalid(superPage_itlb_sp_storage_fa_io_wvalid),
    .io_wwayIdx(superPage_itlb_sp_storage_fa_io_wwayIdx),
    .io_wdata_entry_tag(superPage_itlb_sp_storage_fa_io_wdata_entry_tag),
    .io_wdata_entry_perm_d(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(superPage_itlb_sp_storage_fa_io_wdata_entry_perm_r),
    .io_wdata_entry_level(superPage_itlb_sp_storage_fa_io_wdata_entry_level),
    .io_wdata_entry_ppn(superPage_itlb_sp_storage_fa_io_wdata_entry_ppn),
    .io_wdata_valididx_0(superPage_itlb_sp_storage_fa_io_wdata_valididx_0),
    .io_wdata_valididx_1(superPage_itlb_sp_storage_fa_io_wdata_valididx_1),
    .io_wdata_valididx_2(superPage_itlb_sp_storage_fa_io_wdata_valididx_2),
    .io_wdata_valididx_3(superPage_itlb_sp_storage_fa_io_wdata_valididx_3),
    .io_wdata_valididx_4(superPage_itlb_sp_storage_fa_io_wdata_valididx_4),
    .io_wdata_valididx_5(superPage_itlb_sp_storage_fa_io_wdata_valididx_5),
    .io_wdata_valididx_6(superPage_itlb_sp_storage_fa_io_wdata_valididx_6),
    .io_wdata_valididx_7(superPage_itlb_sp_storage_fa_io_wdata_valididx_7),
    .io_wdata_pf(superPage_itlb_sp_storage_fa_io_wdata_pf),
    .io_wdata_af(superPage_itlb_sp_storage_fa_io_wdata_af),
    .io_access_0_touch_ways_valid(superPage_itlb_sp_storage_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(superPage_itlb_sp_storage_fa_io_access_0_touch_ways_bits),
    .io_access_1_touch_ways_valid(superPage_itlb_sp_storage_fa_io_access_1_touch_ways_valid),
    .io_access_1_touch_ways_bits(superPage_itlb_sp_storage_fa_io_access_1_touch_ways_bits),
    .io_access_2_touch_ways_valid(superPage_itlb_sp_storage_fa_io_access_2_touch_ways_valid),
    .io_access_2_touch_ways_bits(superPage_itlb_sp_storage_fa_io_access_2_touch_ways_bits),
    .io_access_3_touch_ways_valid(superPage_itlb_sp_storage_fa_io_access_3_touch_ways_valid),
    .io_access_3_touch_ways_bits(superPage_itlb_sp_storage_fa_io_access_3_touch_ways_bits)
  );
  assign io_rresp_0_bits_hit = normalPage_itlb_np_storage_fa_io_rresp_0_bits_hit |
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 525:32]
  assign io_rresp_0_bits_ppn_0 = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_ppn_0 : normalPage_itlb_np_storage_fa_io_rresp_0_bits_ppn_0; // @[TLBStorage.scala 527:28]
  assign io_rresp_0_bits_perm_0_pf = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_pf : normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_pf; // @[TLBStorage.scala 528:32]
  assign io_rresp_0_bits_perm_0_af = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_af : normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_af; // @[TLBStorage.scala 529:32]
  assign io_rresp_0_bits_perm_0_a = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_a : normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_a; // @[TLBStorage.scala 531:31]
  assign io_rresp_0_bits_perm_0_u = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_u : normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_u; // @[TLBStorage.scala 533:31]
  assign io_rresp_0_bits_perm_0_x = superPage_itlb_sp_storage_fa_io_rresp_0_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_0_bits_perm_0_x : normalPage_itlb_np_storage_fa_io_rresp_0_bits_perm_0_x; // @[TLBStorage.scala 534:31]
  assign io_rresp_1_bits_hit = normalPage_itlb_np_storage_fa_io_rresp_1_bits_hit |
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 525:32]
  assign io_rresp_1_bits_ppn_0 = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_ppn_0 : normalPage_itlb_np_storage_fa_io_rresp_1_bits_ppn_0; // @[TLBStorage.scala 527:28]
  assign io_rresp_1_bits_perm_0_pf = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_pf : normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_pf; // @[TLBStorage.scala 528:32]
  assign io_rresp_1_bits_perm_0_af = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_af : normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_af; // @[TLBStorage.scala 529:32]
  assign io_rresp_1_bits_perm_0_a = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_a : normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_a; // @[TLBStorage.scala 531:31]
  assign io_rresp_1_bits_perm_0_u = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_u : normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_u; // @[TLBStorage.scala 533:31]
  assign io_rresp_1_bits_perm_0_x = superPage_itlb_sp_storage_fa_io_rresp_1_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_1_bits_perm_0_x : normalPage_itlb_np_storage_fa_io_rresp_1_bits_perm_0_x; // @[TLBStorage.scala 534:31]
  assign io_rresp_3_bits_hit = normalPage_itlb_np_storage_fa_io_rresp_3_bits_hit |
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit; // @[TLBStorage.scala 525:32]
  assign io_rresp_3_bits_ppn_0 = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_ppn_0 : normalPage_itlb_np_storage_fa_io_rresp_3_bits_ppn_0; // @[TLBStorage.scala 527:28]
  assign io_rresp_3_bits_perm_0_pf = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_pf : normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_pf; // @[TLBStorage.scala 528:32]
  assign io_rresp_3_bits_perm_0_af = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_af : normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_af; // @[TLBStorage.scala 529:32]
  assign io_rresp_3_bits_perm_0_a = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_a : normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_a; // @[TLBStorage.scala 531:31]
  assign io_rresp_3_bits_perm_0_u = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_u : normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_u; // @[TLBStorage.scala 533:31]
  assign io_rresp_3_bits_perm_0_x = superPage_itlb_sp_storage_fa_io_rresp_3_bits_hit ?
    superPage_itlb_sp_storage_fa_io_rresp_3_bits_perm_0_x : normalPage_itlb_np_storage_fa_io_rresp_3_bits_perm_0_x; // @[TLBStorage.scala 534:31]
  assign normalPage_itlb_np_storage_fa_clock = clock;
  assign normalPage_itlb_np_storage_fa_reset = reset;
  assign normalPage_itlb_np_storage_fa_io_sfence_valid = io_sfence_valid; // @[TLBStorage.scala 549:21]
  assign normalPage_itlb_np_storage_fa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLBStorage.scala 549:21]
  assign normalPage_itlb_np_storage_fa_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[TLBStorage.scala 549:21]
  assign normalPage_itlb_np_storage_fa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLBStorage.scala 549:21]
  assign normalPage_itlb_np_storage_fa_io_sfence_bits_asid = io_sfence_bits_asid; // @[TLBStorage.scala 549:21]
  assign normalPage_itlb_np_storage_fa_io_csr_satp_asid = io_csr_satp_asid; // @[TLBStorage.scala 551:18]
  assign normalPage_itlb_np_storage_fa_io_rreq_0_valid = io_rreq_0_valid; // @[MMUBundle.scala 450:25]
  assign normalPage_itlb_np_storage_fa_io_rreq_0_bits_vpn = io_rreq_0_bits_vpn; // @[MMUBundle.scala 451:28]
  assign normalPage_itlb_np_storage_fa_io_rreq_1_valid = io_rreq_1_valid; // @[MMUBundle.scala 450:25]
  assign normalPage_itlb_np_storage_fa_io_rreq_1_bits_vpn = io_rreq_1_bits_vpn; // @[MMUBundle.scala 451:28]
  assign normalPage_itlb_np_storage_fa_io_rreq_3_valid = io_rreq_3_valid; // @[MMUBundle.scala 450:25]
  assign normalPage_itlb_np_storage_fa_io_rreq_3_bits_vpn = io_rreq_3_bits_vpn; // @[MMUBundle.scala 451:28]
  assign normalPage_itlb_np_storage_fa_io_wvalid = io_wvalid & io_wdata_entry_level == 2'h2; // @[TLBStorage.scala 580:21]
  assign normalPage_itlb_np_storage_fa_io_wwayIdx = {normal_refill_idx_left_subtree_older,_normal_refill_idx_T_26}
    ; // @[Cat.scala 31:58]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_tag = io_wdata_entry_tag; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_d = io_wdata_entry_perm_d; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_a = io_wdata_entry_perm_a; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_g = io_wdata_entry_perm_g; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_u = io_wdata_entry_perm_u; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_x = io_wdata_entry_perm_x; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_w = io_wdata_entry_perm_w; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_perm_r = io_wdata_entry_perm_r; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_entry_ppn = io_wdata_entry_ppn; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_0 = io_wdata_ppn_low_0; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_1 = io_wdata_ppn_low_1; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_2 = io_wdata_ppn_low_2; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_3 = io_wdata_ppn_low_3; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_4 = io_wdata_ppn_low_4; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_5 = io_wdata_ppn_low_5; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_6 = io_wdata_ppn_low_6; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_ppn_low_7 = io_wdata_ppn_low_7; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_0 = io_wdata_valididx_0; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_1 = io_wdata_valididx_1; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_2 = io_wdata_valididx_2; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_3 = io_wdata_valididx_3; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_4 = io_wdata_valididx_4; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_5 = io_wdata_valididx_5; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_6 = io_wdata_valididx_6; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_valididx_7 = io_wdata_valididx_7; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_pf = io_wdata_pf; // @[MMUBundle.scala 461:22]
  assign normalPage_itlb_np_storage_fa_io_wdata_af = io_wdata_af; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_clock = clock;
  assign superPage_itlb_sp_storage_fa_reset = reset;
  assign superPage_itlb_sp_storage_fa_io_sfence_valid = io_sfence_valid; // @[TLBStorage.scala 550:20]
  assign superPage_itlb_sp_storage_fa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLBStorage.scala 550:20]
  assign superPage_itlb_sp_storage_fa_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[TLBStorage.scala 550:20]
  assign superPage_itlb_sp_storage_fa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLBStorage.scala 550:20]
  assign superPage_itlb_sp_storage_fa_io_sfence_bits_asid = io_sfence_bits_asid; // @[TLBStorage.scala 550:20]
  assign superPage_itlb_sp_storage_fa_io_csr_satp_asid = io_csr_satp_asid; // @[TLBStorage.scala 552:17]
  assign superPage_itlb_sp_storage_fa_io_rreq_0_valid = io_rreq_0_valid; // @[MMUBundle.scala 450:25]
  assign superPage_itlb_sp_storage_fa_io_rreq_0_bits_vpn = io_rreq_0_bits_vpn; // @[MMUBundle.scala 451:28]
  assign superPage_itlb_sp_storage_fa_io_rreq_1_valid = io_rreq_1_valid; // @[MMUBundle.scala 450:25]
  assign superPage_itlb_sp_storage_fa_io_rreq_1_bits_vpn = io_rreq_1_bits_vpn; // @[MMUBundle.scala 451:28]
  assign superPage_itlb_sp_storage_fa_io_rreq_3_valid = io_rreq_3_valid; // @[MMUBundle.scala 450:25]
  assign superPage_itlb_sp_storage_fa_io_rreq_3_bits_vpn = io_rreq_3_bits_vpn; // @[MMUBundle.scala 451:28]
  assign superPage_itlb_sp_storage_fa_io_wvalid = io_wvalid & io_wdata_entry_level != 2'h2; // @[TLBStorage.scala 587:21]
  assign superPage_itlb_sp_storage_fa_io_wwayIdx = super_refill_idx_state_reg; // @[Replacement.scala 262:12]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_tag = io_wdata_entry_tag; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_d = io_wdata_entry_perm_d; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_a = io_wdata_entry_perm_a; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_g = io_wdata_entry_perm_g; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_u = io_wdata_entry_perm_u; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_x = io_wdata_entry_perm_x; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_w = io_wdata_entry_perm_w; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_perm_r = io_wdata_entry_perm_r; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_level = io_wdata_entry_level; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_entry_ppn = io_wdata_entry_ppn; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_0 = io_wdata_valididx_0; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_1 = io_wdata_valididx_1; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_2 = io_wdata_valididx_2; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_3 = io_wdata_valididx_3; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_4 = io_wdata_valididx_4; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_5 = io_wdata_valididx_5; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_6 = io_wdata_valididx_6; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_valididx_7 = io_wdata_valididx_7; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_pf = io_wdata_pf; // @[MMUBundle.scala 461:22]
  assign superPage_itlb_sp_storage_fa_io_wdata_af = io_wdata_af; // @[MMUBundle.scala 461:22]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      normal_refill_idx_state_reg <= 3'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_normal_refill_idx_T_2) begin // @[Replacement.scala 168:72]
      if (normalPage_itlb_np_storage_fa_io_access_3_touch_ways_valid) begin
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_38;
      end else if (normalPage_itlb_np_storage_fa_io_access_2_touch_ways_valid) begin
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_28;
      end else if (normalPage_itlb_np_storage_fa_io_access_1_touch_ways_valid) begin
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_18;
      end else begin
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_9;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      super_refill_idx_state_reg <= 1'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_super_refill_idx_T_2) begin // @[Replacement.scala 168:72]
      if (superPage_itlb_sp_storage_fa_io_access_3_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_10;
      end else if (superPage_itlb_sp_storage_fa_io_access_2_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_7;
      end else if (superPage_itlb_sp_storage_fa_io_access_1_touch_ways_valid) begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_4;
      end else begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_2;
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
  normal_refill_idx_state_reg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  super_refill_idx_state_reg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    normal_refill_idx_state_reg = 3'h0;
  end
  if (reset) begin
    super_refill_idx_state_reg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

