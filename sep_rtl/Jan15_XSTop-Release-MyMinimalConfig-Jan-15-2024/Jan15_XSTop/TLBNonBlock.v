module TLBNonBlock(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [3:0]  io_csr_satp_mode,
  input  [15:0] io_csr_satp_asid,
  input         io_csr_satp_changed,
  input         io_csr_priv_mxr,
  input         io_csr_priv_sum,
  input  [1:0]  io_csr_priv_dmode,
  output        io_requestor_0_req_ready,
  input         io_requestor_0_req_valid,
  input  [38:0] io_requestor_0_req_bits_vaddr,
  input  [2:0]  io_requestor_0_req_bits_cmd,
  input         io_requestor_0_req_bits_kill,
  input         io_requestor_0_req_bits_no_translate,
  input         io_requestor_0_req_kill,
  output        io_requestor_0_resp_valid,
  output [35:0] io_requestor_0_resp_bits_paddr_0,
  output [35:0] io_requestor_0_resp_bits_paddr_1,
  output        io_requestor_0_resp_bits_miss,
  output        io_requestor_0_resp_bits_fast_miss,
  output        io_requestor_0_resp_bits_excp_0_pf_ld,
  output        io_requestor_0_resp_bits_excp_0_pf_st,
  output        io_requestor_0_resp_bits_excp_0_af_ld,
  output        io_requestor_0_resp_bits_excp_0_af_st,
  output        io_requestor_0_resp_bits_static_pm_valid,
  output        io_requestor_0_resp_bits_static_pm_bits,
  output        io_requestor_1_req_ready,
  input         io_requestor_1_req_valid,
  input  [38:0] io_requestor_1_req_bits_vaddr,
  input  [2:0]  io_requestor_1_req_bits_cmd,
  input         io_requestor_1_req_bits_kill,
  input         io_requestor_1_req_bits_no_translate,
  input         io_requestor_1_req_kill,
  output        io_requestor_1_resp_valid,
  output [35:0] io_requestor_1_resp_bits_paddr_0,
  output [35:0] io_requestor_1_resp_bits_paddr_1,
  output        io_requestor_1_resp_bits_miss,
  output        io_requestor_1_resp_bits_fast_miss,
  output        io_requestor_1_resp_bits_excp_0_pf_ld,
  output        io_requestor_1_resp_bits_excp_0_af_ld,
  output        io_requestor_1_resp_bits_static_pm_valid,
  output        io_requestor_1_resp_bits_static_pm_bits,
  output        io_requestor_2_resp_valid,
  output        io_ptw_req_0_valid,
  output [26:0] io_ptw_req_0_bits_vpn,
  output        io_ptw_req_1_valid,
  output [26:0] io_ptw_req_1_bits_vpn,
  output        io_ptw_resp_ready,
  input         io_ptw_resp_valid,
  input  [23:0] io_ptw_resp_bits_entry_tag,
  input  [15:0] io_ptw_resp_bits_entry_asid,
  input         io_ptw_resp_bits_entry_perm_d,
  input         io_ptw_resp_bits_entry_perm_a,
  input         io_ptw_resp_bits_entry_perm_g,
  input         io_ptw_resp_bits_entry_perm_u,
  input         io_ptw_resp_bits_entry_perm_x,
  input         io_ptw_resp_bits_entry_perm_w,
  input         io_ptw_resp_bits_entry_perm_r,
  input  [1:0]  io_ptw_resp_bits_entry_level,
  input  [20:0] io_ptw_resp_bits_entry_ppn,
  input  [2:0]  io_ptw_resp_bits_ppn_low_0,
  input  [2:0]  io_ptw_resp_bits_ppn_low_1,
  input  [2:0]  io_ptw_resp_bits_ppn_low_2,
  input  [2:0]  io_ptw_resp_bits_ppn_low_3,
  input  [2:0]  io_ptw_resp_bits_ppn_low_4,
  input  [2:0]  io_ptw_resp_bits_ppn_low_5,
  input  [2:0]  io_ptw_resp_bits_ppn_low_6,
  input  [2:0]  io_ptw_resp_bits_ppn_low_7,
  input         io_ptw_resp_bits_valididx_0,
  input         io_ptw_resp_bits_valididx_1,
  input         io_ptw_resp_bits_valididx_2,
  input         io_ptw_resp_bits_valididx_3,
  input         io_ptw_resp_bits_valididx_4,
  input         io_ptw_resp_bits_valididx_5,
  input         io_ptw_resp_bits_valididx_6,
  input         io_ptw_resp_bits_valididx_7,
  input         io_ptw_resp_bits_pteidx_0,
  input         io_ptw_resp_bits_pteidx_1,
  input         io_ptw_resp_bits_pteidx_2,
  input         io_ptw_resp_bits_pteidx_3,
  input         io_ptw_resp_bits_pteidx_4,
  input         io_ptw_resp_bits_pteidx_5,
  input         io_ptw_resp_bits_pteidx_6,
  input         io_ptw_resp_bits_pteidx_7,
  input         io_ptw_resp_bits_pf,
  input         io_ptw_resp_bits_af,
  input         io_ptw_replenish_0_c,
  input         io_ptw_replenish_0_atomic,
  input         io_ptw_replenish_0_x,
  input         io_ptw_replenish_0_w,
  input         io_ptw_replenish_0_r,
  input         io_ptw_replenish_1_c,
  input         io_ptw_replenish_1_atomic,
  input         io_ptw_replenish_1_x,
  input         io_ptw_replenish_1_w,
  input         io_ptw_replenish_1_r,
  input         io_ptw_replenish_2_c,
  input         io_ptw_replenish_2_atomic,
  input         io_ptw_replenish_2_x,
  input         io_ptw_replenish_2_w,
  input         io_ptw_replenish_2_r,
  input         io_ptw_replenish_3_c,
  input         io_ptw_replenish_3_atomic,
  input         io_ptw_replenish_3_x,
  input         io_ptw_replenish_3_w,
  input         io_ptw_replenish_3_r,
  input         io_ptw_replenish_4_c,
  input         io_ptw_replenish_4_atomic,
  input         io_ptw_replenish_4_x,
  input         io_ptw_replenish_4_w,
  input         io_ptw_replenish_4_r,
  input         io_ptw_replenish_5_c,
  input         io_ptw_replenish_5_atomic,
  input         io_ptw_replenish_5_x,
  input         io_ptw_replenish_5_w,
  input         io_ptw_replenish_5_r,
  input         io_ptw_replenish_6_c,
  input         io_ptw_replenish_6_atomic,
  input         io_ptw_replenish_6_x,
  input         io_ptw_replenish_6_w,
  input         io_ptw_replenish_6_r,
  input         io_ptw_replenish_7_c,
  input         io_ptw_replenish_7_atomic,
  input         io_ptw_replenish_7_x,
  input         io_ptw_replenish_7_w,
  input         io_ptw_replenish_7_r,
  output        io_pmp_0_valid,
  output [35:0] io_pmp_0_bits_addr,
  output [2:0]  io_pmp_0_bits_cmd,
  output        io_pmp_1_valid,
  output [35:0] io_pmp_1_bits_addr,
  output [2:0]  io_pmp_1_bits_cmd,
  output        io_pmp_2_valid,
  output [35:0] io_pmp_2_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
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
`endif // RANDOMIZE_REG_INIT
  wire  sfence_delay_clock; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_valid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_bits_rs1; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_bits_rs2; // @[Hold.scala 97:23]
  wire [38:0] sfence_delay_io_in_bits_addr; // @[Hold.scala 97:23]
  wire [15:0] sfence_delay_io_in_bits_asid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_valid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_bits_rs1; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_bits_rs2; // @[Hold.scala 97:23]
  wire [38:0] sfence_delay_io_out_bits_addr; // @[Hold.scala 97:23]
  wire [15:0] sfence_delay_io_out_bits_asid; // @[Hold.scala 97:23]
  wire  satp_delay_clock; // @[Hold.scala 97:23]
  wire [3:0] satp_delay_io_in_mode; // @[Hold.scala 97:23]
  wire [15:0] satp_delay_io_in_asid; // @[Hold.scala 97:23]
  wire [3:0] satp_delay_io_out_mode; // @[Hold.scala 97:23]
  wire [15:0] satp_delay_io_out_asid; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_clock; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_io_in; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_io_out; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_clock; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_io_in; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_io_out; // @[Hold.scala 97:23]
  wire  entries_clock; // @[TLB.scala 86:23]
  wire  entries_reset; // @[TLB.scala 86:23]
  wire  entries_io_sfence_valid; // @[TLB.scala 86:23]
  wire  entries_io_sfence_bits_rs1; // @[TLB.scala 86:23]
  wire  entries_io_sfence_bits_rs2; // @[TLB.scala 86:23]
  wire [38:0] entries_io_sfence_bits_addr; // @[TLB.scala 86:23]
  wire [15:0] entries_io_sfence_bits_asid; // @[TLB.scala 86:23]
  wire [15:0] entries_io_csr_satp_asid; // @[TLB.scala 86:23]
  wire  entries_io_rreq_0_valid; // @[TLB.scala 86:23]
  wire [26:0] entries_io_rreq_0_bits_vpn; // @[TLB.scala 86:23]
  wire  entries_io_rreq_1_valid; // @[TLB.scala 86:23]
  wire [26:0] entries_io_rreq_1_bits_vpn; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_hit; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_0_bits_ppn_0; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_0_bits_ppn_1; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_pf; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_af; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_d; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_a; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_u; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_x; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_w; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_perm_0_r; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_super_hit; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_0_bits_super_ppn; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_spm_r; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_spm_w; // @[TLB.scala 86:23]
  wire  entries_io_rresp_0_bits_spm_c; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_hit; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_1_bits_ppn_0; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_1_bits_ppn_1; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_pf; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_af; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_a; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_u; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_x; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_perm_0_r; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_super_hit; // @[TLB.scala 86:23]
  wire [23:0] entries_io_rresp_1_bits_super_ppn; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_spm_r; // @[TLB.scala 86:23]
  wire  entries_io_rresp_1_bits_spm_c; // @[TLB.scala 86:23]
  wire  entries_io_wvalid; // @[TLB.scala 86:23]
  wire [23:0] entries_io_wdata_entry_tag; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_d; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_a; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_g; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_u; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_entry_perm_r; // @[TLB.scala 86:23]
  wire [1:0] entries_io_wdata_entry_level; // @[TLB.scala 86:23]
  wire [20:0] entries_io_wdata_entry_ppn; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_0; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_1; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_2; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_3; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_4; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_5; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_6; // @[TLB.scala 86:23]
  wire [2:0] entries_io_wdata_ppn_low_7; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_0; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_1; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_2; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_3; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_4; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_5; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_6; // @[TLB.scala 86:23]
  wire  entries_io_wdata_valididx_7; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_0; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_1; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_2; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_3; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_4; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_5; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_6; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pteidx_7; // @[TLB.scala 86:23]
  wire  entries_io_wdata_pf; // @[TLB.scala 86:23]
  wire  entries_io_wdata_af; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_0_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_0_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_0_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_0_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_0_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_1_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_1_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_1_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_1_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_1_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_2_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_2_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_2_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_2_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_2_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_3_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_3_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_3_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_3_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_3_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_4_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_4_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_4_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_4_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_4_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_5_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_5_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_5_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_5_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_5_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_6_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_6_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_6_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_6_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_6_r; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_7_c; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_7_atomic; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_7_x; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_7_w; // @[TLB.scala 86:23]
  wire  entries_io_wdata_replenish_7_r; // @[TLB.scala 86:23]
  wire  vmEnable = satp_delay_io_out_mode == 4'h8 & io_csr_priv_dmode < 2'h3; // @[TLB.scala 75:29]
  reg  portTranslateEnable_REG; // @[TLB.scala 76:73]
  wire  portTranslateEnable_0 = vmEnable & portTranslateEnable_REG; // @[TLB.scala 76:63]
  reg  portTranslateEnable_REG_1; // @[TLB.scala 76:73]
  wire  portTranslateEnable_1 = vmEnable & portTranslateEnable_REG_1; // @[TLB.scala 76:63]
  wire  _req_out_T = io_requestor_0_req_ready & io_requestor_0_req_valid; // @[Decoupled.scala 50:35]
  reg [38:0] req_out_0_vaddr; // @[Reg.scala 16:16]
  reg [2:0] req_out_0_cmd; // @[Reg.scala 16:16]
  wire  _req_out_T_1 = io_requestor_1_req_ready & io_requestor_1_req_valid; // @[Decoupled.scala 50:35]
  reg [38:0] req_out_1_vaddr; // @[Reg.scala 16:16]
  reg [2:0] req_out_1_cmd; // @[Reg.scala 16:16]
  wire  _req_out_v_T_2 = _req_out_T & ~io_requestor_0_req_bits_kill; // @[TLB.scala 80:69]
  reg  req_out_v_0; // @[Hold.scala 40:24]
  wire  _GEN_36 = io_requestor_0_resp_valid ? 1'h0 : req_out_v_0; // @[Hold.scala 41:20 40:24 41:28]
  wire  _req_out_v_T_6 = _req_out_T_1 & ~io_requestor_1_req_bits_kill; // @[TLB.scala 80:69]
  reg  req_out_v_1; // @[Hold.scala 40:24]
  wire  _GEN_39 = io_requestor_1_resp_valid ? 1'h0 : req_out_v_1; // @[Hold.scala 41:20 40:24 41:28]
  wire  _refill_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  wire  p_hit_asid_hit = io_ptw_resp_bits_entry_asid == io_csr_satp_asid; // @[MMUBundle.scala 1010:65]
  wire  p_hit_hit0 = io_ptw_resp_bits_entry_tag[23:15] == io_requestor_0_req_bits_vaddr[38:30]; // @[MMUBundle.scala 1012:76]
  wire  p_hit_hit1 = io_ptw_resp_bits_entry_tag[14:6] == io_requestor_0_req_bits_vaddr[29:21]; // @[MMUBundle.scala 1013:90]
  wire  p_hit_hit2 = io_ptw_resp_bits_entry_tag[5:0] == io_requestor_0_req_bits_vaddr[20:15]; // @[MMUBundle.scala 1014:61]
  wire  _p_hit_T_5 = io_ptw_resp_bits_entry_level == 2'h1 ? p_hit_hit1 & p_hit_hit0 : p_hit_hit0; // @[MMUBundle.scala 1017:84]
  wire  _p_hit_T_6 = io_ptw_resp_bits_entry_level == 2'h2 ? p_hit_hit2 & p_hit_hit1 & p_hit_hit0 : _p_hit_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_46 = 3'h1 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_1 :
    io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_47 = 3'h2 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_2 : _GEN_46; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_48 = 3'h3 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_3 : _GEN_47; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_49 = 3'h4 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_4 : _GEN_48; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_50 = 3'h5 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_5 : _GEN_49; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_51 = 3'h6 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_6 : _GEN_50; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_52 = 3'h7 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_7 : _GEN_51; // @[MMUBundle.scala 1017:{142,142}]
  wire  _p_hit_T_8 = p_hit_asid_hit & _p_hit_T_6 & _GEN_52; // @[MMUBundle.scala 1017:142]
  reg  p_hit; // @[TLB.scala 271:24]
  wire [23:0] _p_ppn_T_2 = {io_ptw_resp_bits_entry_ppn[20:15],io_requestor_0_req_bits_vaddr[29:12]}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_5 = {io_ptw_resp_bits_entry_ppn[20:6],io_requestor_0_req_bits_vaddr[20:12]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_54 = 3'h1 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_1 :
    io_ptw_resp_bits_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_55 = 3'h2 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_2 : _GEN_54; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_56 = 3'h3 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_3 : _GEN_55; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_57 = 3'h4 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_4 : _GEN_56; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_58 = 3'h5 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_5 : _GEN_57; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_59 = 3'h6 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_6 : _GEN_58; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_60 = 3'h7 == io_requestor_0_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_7 : _GEN_59; // @[Cat.scala 31:{58,58}]
  wire [23:0] _p_ppn_T_8 = {io_ptw_resp_bits_entry_ppn,_GEN_60}; // @[Cat.scala 31:58]
  reg [23:0] p_ppn; // @[Reg.scala 16:16]
  wire [6:0] _p_perm_ptePerm_T = {io_ptw_resp_bits_entry_perm_d,io_ptw_resp_bits_entry_perm_a,
    io_ptw_resp_bits_entry_perm_g,io_ptw_resp_bits_entry_perm_u,io_ptw_resp_bits_entry_perm_x,
    io_ptw_resp_bits_entry_perm_w,io_ptw_resp_bits_entry_perm_r}; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_r = _p_perm_ptePerm_T[0]; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_w = _p_perm_ptePerm_T[1]; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_x = _p_perm_ptePerm_T[2]; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_u = _p_perm_ptePerm_T[3]; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_a = _p_perm_ptePerm_T[5]; // @[MMUConst.scala 148:50]
  wire  p_perm_ptePerm_d = _p_perm_ptePerm_T[6]; // @[MMUConst.scala 148:50]
  reg  p_perm_pf; // @[Reg.scala 16:16]
  reg  p_perm_af; // @[Reg.scala 16:16]
  reg  p_perm_d; // @[Reg.scala 16:16]
  reg  p_perm_a; // @[Reg.scala 16:16]
  reg  p_perm_u; // @[Reg.scala 16:16]
  reg  p_perm_x; // @[Reg.scala 16:16]
  reg  p_perm_w; // @[Reg.scala 16:16]
  reg  p_perm_r; // @[Reg.scala 16:16]
  wire  hit_read_0 = entries_io_rresp_0_bits_hit | p_hit; // @[TLB.scala 130:21]
  wire  miss_read_0 = ~hit_read_0 & portTranslateEnable_0; // @[TLB.scala 131:21]
  wire  fast_miss = ~(entries_io_rresp_0_bits_super_hit | p_hit) & portTranslateEnable_0; // @[TLB.scala 132:45]
  wire [35:0] vaddr = req_out_0_vaddr[35:0]; // @[BitUtils.scala 81:23]
  wire [23:0] ppn__0 = p_hit ? p_ppn : entries_io_rresp_0_bits_ppn_0; // @[TLB.scala 146:20]
  wire  perm_0_0_pf = p_hit ? p_perm_pf : entries_io_rresp_0_bits_perm_0_pf; // @[TLB.scala 147:21]
  wire  perm_0_0_af = p_hit ? p_perm_af : entries_io_rresp_0_bits_perm_0_af; // @[TLB.scala 147:21]
  wire  perm_0_0_d = p_hit ? p_perm_d : entries_io_rresp_0_bits_perm_0_d; // @[TLB.scala 147:21]
  wire  perm_0_0_a = p_hit ? p_perm_a : entries_io_rresp_0_bits_perm_0_a; // @[TLB.scala 147:21]
  wire  perm_0_0_u = p_hit ? p_perm_u : entries_io_rresp_0_bits_perm_0_u; // @[TLB.scala 147:21]
  wire  perm_0_0_x = p_hit ? p_perm_x : entries_io_rresp_0_bits_perm_0_x; // @[TLB.scala 147:21]
  wire  perm_0_0_w = p_hit ? p_perm_w : entries_io_rresp_0_bits_perm_0_w; // @[TLB.scala 147:21]
  wire  perm_0_0_r = p_hit ? p_perm_r : entries_io_rresp_0_bits_perm_0_r; // @[TLB.scala 147:21]
  wire [35:0] paddr = {ppn__0,req_out_0_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [23:0] ppn__1 = p_hit ? p_ppn : entries_io_rresp_0_bits_ppn_1; // @[TLB.scala 146:20]
  wire [35:0] paddr_1 = {ppn__1,req_out_0_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [23:0] _pmp_paddr_T = p_hit ? p_ppn : entries_io_rresp_0_bits_super_ppn; // @[TLB.scala 155:40]
  wire [35:0] _pmp_paddr_T_2 = {_pmp_paddr_T,req_out_0_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire  p_hit_hit0_1 = io_ptw_resp_bits_entry_tag[23:15] == io_requestor_1_req_bits_vaddr[38:30]; // @[MMUBundle.scala 1012:76]
  wire  p_hit_hit1_1 = io_ptw_resp_bits_entry_tag[14:6] == io_requestor_1_req_bits_vaddr[29:21]; // @[MMUBundle.scala 1013:90]
  wire  p_hit_hit2_1 = io_ptw_resp_bits_entry_tag[5:0] == io_requestor_1_req_bits_vaddr[20:15]; // @[MMUBundle.scala 1014:61]
  wire  _p_hit_T_16 = io_ptw_resp_bits_entry_level == 2'h1 ? p_hit_hit1_1 & p_hit_hit0_1 : p_hit_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _p_hit_T_17 = io_ptw_resp_bits_entry_level == 2'h2 ? p_hit_hit2_1 & p_hit_hit1_1 & p_hit_hit0_1 : _p_hit_T_16; // @[MMUBundle.scala 1017:22]
  wire  _GEN_77 = 3'h1 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_1 :
    io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_78 = 3'h2 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_2 : _GEN_77; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_79 = 3'h3 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_3 : _GEN_78; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_80 = 3'h4 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_4 : _GEN_79; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_81 = 3'h5 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_5 : _GEN_80; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_82 = 3'h6 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_6 : _GEN_81; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_83 = 3'h7 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_valididx_7 : _GEN_82; // @[MMUBundle.scala 1017:{142,142}]
  wire  _p_hit_T_19 = p_hit_asid_hit & _p_hit_T_17 & _GEN_83; // @[MMUBundle.scala 1017:142]
  reg  p_hit_1; // @[TLB.scala 271:24]
  wire [23:0] _p_ppn_T_18 = {io_ptw_resp_bits_entry_ppn[20:15],io_requestor_1_req_bits_vaddr[29:12]}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_21 = {io_ptw_resp_bits_entry_ppn[20:6],io_requestor_1_req_bits_vaddr[20:12]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_85 = 3'h1 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_1 :
    io_ptw_resp_bits_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_86 = 3'h2 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_2 : _GEN_85; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_87 = 3'h3 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_3 : _GEN_86; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_88 = 3'h4 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_4 : _GEN_87; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_89 = 3'h5 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_5 : _GEN_88; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_90 = 3'h6 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_6 : _GEN_89; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_91 = 3'h7 == io_requestor_1_req_bits_vaddr[14:12] ? io_ptw_resp_bits_ppn_low_7 : _GEN_90; // @[Cat.scala 31:{58,58}]
  wire [23:0] _p_ppn_T_24 = {io_ptw_resp_bits_entry_ppn,_GEN_91}; // @[Cat.scala 31:58]
  reg [23:0] p_ppn_1; // @[Reg.scala 16:16]
  reg  p_perm_1_pf; // @[Reg.scala 16:16]
  reg  p_perm_1_af; // @[Reg.scala 16:16]
  reg  p_perm_1_a; // @[Reg.scala 16:16]
  reg  p_perm_1_u; // @[Reg.scala 16:16]
  reg  p_perm_1_x; // @[Reg.scala 16:16]
  reg  p_perm_1_r; // @[Reg.scala 16:16]
  wire  hit_read_1 = entries_io_rresp_1_bits_hit | p_hit_1; // @[TLB.scala 130:21]
  wire  miss_read_1 = ~hit_read_1 & portTranslateEnable_1; // @[TLB.scala 131:21]
  wire  fast_miss_1 = ~(entries_io_rresp_1_bits_super_hit | p_hit_1) & portTranslateEnable_1; // @[TLB.scala 132:45]
  wire [35:0] vaddr_1 = req_out_1_vaddr[35:0]; // @[BitUtils.scala 81:23]
  wire [23:0] ppn_1_0 = p_hit_1 ? p_ppn_1 : entries_io_rresp_1_bits_ppn_0; // @[TLB.scala 146:20]
  wire  perm_1_0_pf = p_hit_1 ? p_perm_1_pf : entries_io_rresp_1_bits_perm_0_pf; // @[TLB.scala 147:21]
  wire  perm_1_0_af = p_hit_1 ? p_perm_1_af : entries_io_rresp_1_bits_perm_0_af; // @[TLB.scala 147:21]
  wire  perm_1_0_a = p_hit_1 ? p_perm_1_a : entries_io_rresp_1_bits_perm_0_a; // @[TLB.scala 147:21]
  wire  perm_1_0_u = p_hit_1 ? p_perm_1_u : entries_io_rresp_1_bits_perm_0_u; // @[TLB.scala 147:21]
  wire  perm_1_0_x = p_hit_1 ? p_perm_1_x : entries_io_rresp_1_bits_perm_0_x; // @[TLB.scala 147:21]
  wire  perm_1_0_r = p_hit_1 ? p_perm_1_r : entries_io_rresp_1_bits_perm_0_r; // @[TLB.scala 147:21]
  wire [35:0] paddr_2 = {ppn_1_0,req_out_1_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [23:0] ppn_1_1 = p_hit_1 ? p_ppn_1 : entries_io_rresp_1_bits_ppn_1; // @[TLB.scala 146:20]
  wire [35:0] paddr_3 = {ppn_1_1,req_out_1_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [23:0] _pmp_paddr_T_3 = p_hit_1 ? p_ppn_1 : entries_io_rresp_1_bits_super_ppn; // @[TLB.scala 155:40]
  wire [35:0] _pmp_paddr_T_5 = {_pmp_paddr_T_3,req_out_1_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire  p_hit_hit0_2 = io_ptw_resp_bits_entry_tag[23:15] == 9'h0; // @[MMUBundle.scala 1012:76]
  wire  p_hit_hit1_2 = io_ptw_resp_bits_entry_tag[14:6] == 9'h0; // @[MMUBundle.scala 1013:90]
  wire  p_hit_hit2_2 = io_ptw_resp_bits_entry_tag[5:0] == 6'h0; // @[MMUBundle.scala 1014:61]
  wire  _p_hit_T_27 = io_ptw_resp_bits_entry_level == 2'h1 ? p_hit_hit1_2 & p_hit_hit0_2 : p_hit_hit0_2; // @[MMUBundle.scala 1017:84]
  wire  _p_hit_T_28 = io_ptw_resp_bits_entry_level == 2'h2 ? p_hit_hit2_2 & p_hit_hit1_2 & p_hit_hit0_2 : _p_hit_T_27; // @[MMUBundle.scala 1017:22]
  wire  _p_hit_T_30 = p_hit_asid_hit & _p_hit_T_28 & io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:142]
  reg  p_hit_2; // @[TLB.scala 271:24]
  wire [23:0] _p_ppn_T_34 = {io_ptw_resp_bits_entry_ppn[20:15],18'h0}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_37 = {io_ptw_resp_bits_entry_ppn[20:6],9'h0}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_40 = {io_ptw_resp_bits_entry_ppn,io_ptw_resp_bits_ppn_low_0}; // @[Cat.scala 31:58]
  reg [23:0] p_ppn_2; // @[Reg.scala 16:16]
  wire [23:0] _pmp_paddr_T_6 = p_hit_2 ? p_ppn_2 : 24'h0; // @[TLB.scala 155:40]
  wire [35:0] _pmp_paddr_T_8 = {_pmp_paddr_T_6,12'h0}; // @[Cat.scala 31:58]
  wire  _ldUpdate_T = ~perm_0_0_a; // @[TLB.scala 176:20]
  wire  _ldUpdate_T_2 = req_out_0_cmd[1:0] == 2'h0; // @[MMUBundle.scala 415:31]
  wire  _ldUpdate_T_4 = req_out_0_cmd == 3'h5; // @[MMUBundle.scala 420:25]
  wire  _ldUpdate_T_5 = ~_ldUpdate_T_4; // @[TLB.scala 176:53]
  wire  ldUpdate = ~perm_0_0_a & _ldUpdate_T_2 & ~_ldUpdate_T_4; // @[TLB.scala 176:50]
  wire  _stUpdate_T_4 = req_out_0_cmd[1:0] == 2'h1; // @[MMUBundle.scala 416:32]
  wire  _stUpdate_T_6 = _stUpdate_T_4 | _ldUpdate_T_4; // @[TLB.scala 177:65]
  wire  stUpdate = (_ldUpdate_T | ~perm_0_0_d) & (_stUpdate_T_4 | _ldUpdate_T_4); // @[TLB.scala 177:41]
  wire  modeCheck = ~(io_csr_priv_dmode == 2'h0 & ~perm_0_0_u | io_csr_priv_dmode == 2'h1 & perm_0_0_u & ~
    io_csr_priv_sum); // @[TLB.scala 179:21]
  wire  ldPermFail = ~(modeCheck & (perm_0_0_r | io_csr_priv_mxr & perm_0_0_x)); // @[TLB.scala 180:22]
  wire  stPermFail = ~(modeCheck & perm_0_0_w); // @[TLB.scala 181:22]
  wire  ldPf = (ldPermFail | perm_0_0_pf) & (_ldUpdate_T_2 & _ldUpdate_T_5); // @[TLB.scala 183:35]
  wire  stPf = (stPermFail | perm_0_0_pf) & _stUpdate_T_6; // @[TLB.scala 184:35]
  wire  _io_requestor_0_resp_bits_excp_0_pf_ld_T_2 = ~perm_0_0_af; // @[TLB.scala 187:78]
  wire  _ldUpdate_T_14 = req_out_1_cmd[1:0] == 2'h0; // @[MMUBundle.scala 415:31]
  wire  _ldUpdate_T_16 = req_out_1_cmd == 3'h5; // @[MMUBundle.scala 420:25]
  wire  _ldUpdate_T_17 = ~_ldUpdate_T_16; // @[TLB.scala 176:53]
  wire  ldUpdate_2 = ~perm_1_0_a & _ldUpdate_T_14 & ~_ldUpdate_T_16; // @[TLB.scala 176:50]
  wire  modeCheck_2 = ~(io_csr_priv_dmode == 2'h0 & ~perm_1_0_u | io_csr_priv_dmode == 2'h1 & perm_1_0_u & ~
    io_csr_priv_sum); // @[TLB.scala 179:21]
  wire  ldPermFail_2 = ~(modeCheck_2 & (perm_1_0_r | io_csr_priv_mxr & perm_1_0_x)); // @[TLB.scala 180:22]
  wire  ldPf_2 = (ldPermFail_2 | perm_1_0_pf) & (_ldUpdate_T_14 & _ldUpdate_T_17); // @[TLB.scala 183:35]
  wire  ptw_just_back_hit0 = io_ptw_resp_bits_entry_tag[23:15] == req_out_0_vaddr[38:30]; // @[MMUBundle.scala 1012:76]
  wire  ptw_just_back_hit1 = io_ptw_resp_bits_entry_tag[14:6] == req_out_0_vaddr[29:21]; // @[MMUBundle.scala 1013:90]
  wire  ptw_just_back_hit2 = io_ptw_resp_bits_entry_tag[5:0] == req_out_0_vaddr[20:15]; // @[MMUBundle.scala 1014:61]
  wire  _ptw_just_back_T_7 = io_ptw_resp_bits_entry_level == 2'h1 ? ptw_just_back_hit1 & ptw_just_back_hit0 :
    ptw_just_back_hit0; // @[MMUBundle.scala 1017:84]
  wire  _ptw_just_back_T_8 = io_ptw_resp_bits_entry_level == 2'h2 ? ptw_just_back_hit2 & ptw_just_back_hit1 &
    ptw_just_back_hit0 : _ptw_just_back_T_7; // @[MMUBundle.scala 1017:22]
  wire  _GEN_139 = 3'h1 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_140 = 3'h2 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_2 : _GEN_139; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_141 = 3'h3 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_3 : _GEN_140; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_142 = 3'h4 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_4 : _GEN_141; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_143 = 3'h5 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_5 : _GEN_142; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_144 = 3'h6 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_6 : _GEN_143; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_145 = 3'h7 == req_out_0_vaddr[14:12] ? io_ptw_resp_bits_valididx_7 : _GEN_144; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptw_just_back_T_10 = p_hit_asid_hit & _ptw_just_back_T_8 & _GEN_145; // @[MMUBundle.scala 1017:142]
  wire  ptw_just_back = _refill_T & _ptw_just_back_T_10; // @[TLB.scala 206:39]
  reg  io_ptw_req_0_valid_REG; // @[TLB.scala 207:38]
  reg  REG; // @[TLB.scala 208:56]
  reg  r; // @[Reg.scala 16:16]
  reg [26:0] io_ptw_req_0_bits_vpn_REG; // @[TLB.scala 211:40]
  wire  ptw_just_back_hit0_1 = io_ptw_resp_bits_entry_tag[23:15] == req_out_1_vaddr[38:30]; // @[MMUBundle.scala 1012:76]
  wire  ptw_just_back_hit1_1 = io_ptw_resp_bits_entry_tag[14:6] == req_out_1_vaddr[29:21]; // @[MMUBundle.scala 1013:90]
  wire  ptw_just_back_hit2_1 = io_ptw_resp_bits_entry_tag[5:0] == req_out_1_vaddr[20:15]; // @[MMUBundle.scala 1014:61]
  wire  _ptw_just_back_T_18 = io_ptw_resp_bits_entry_level == 2'h1 ? ptw_just_back_hit1_1 & ptw_just_back_hit0_1 :
    ptw_just_back_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _ptw_just_back_T_19 = io_ptw_resp_bits_entry_level == 2'h2 ? ptw_just_back_hit2_1 & ptw_just_back_hit1_1 &
    ptw_just_back_hit0_1 : _ptw_just_back_T_18; // @[MMUBundle.scala 1017:22]
  wire  _GEN_149 = 3'h1 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_150 = 3'h2 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_2 : _GEN_149; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_151 = 3'h3 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_3 : _GEN_150; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_152 = 3'h4 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_4 : _GEN_151; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_153 = 3'h5 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_5 : _GEN_152; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_154 = 3'h6 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_6 : _GEN_153; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_155 = 3'h7 == req_out_1_vaddr[14:12] ? io_ptw_resp_bits_valididx_7 : _GEN_154; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptw_just_back_T_21 = p_hit_asid_hit & _ptw_just_back_T_19 & _GEN_155; // @[MMUBundle.scala 1017:142]
  wire  ptw_just_back_1 = _refill_T & _ptw_just_back_T_21; // @[TLB.scala 206:39]
  reg  io_ptw_req_1_valid_REG; // @[TLB.scala 207:38]
  reg  REG_1; // @[TLB.scala 208:56]
  reg  r_1; // @[Reg.scala 16:16]
  reg [26:0] io_ptw_req_1_bits_vpn_REG; // @[TLB.scala 211:40]
  DelayN_19 sfence_delay ( // @[Hold.scala 97:23]
    .clock(sfence_delay_clock),
    .io_in_valid(sfence_delay_io_in_valid),
    .io_in_bits_rs1(sfence_delay_io_in_bits_rs1),
    .io_in_bits_rs2(sfence_delay_io_in_bits_rs2),
    .io_in_bits_addr(sfence_delay_io_in_bits_addr),
    .io_in_bits_asid(sfence_delay_io_in_bits_asid),
    .io_out_valid(sfence_delay_io_out_valid),
    .io_out_bits_rs1(sfence_delay_io_out_bits_rs1),
    .io_out_bits_rs2(sfence_delay_io_out_bits_rs2),
    .io_out_bits_addr(sfence_delay_io_out_bits_addr),
    .io_out_bits_asid(sfence_delay_io_out_bits_asid)
  );
  DelayN_20 satp_delay ( // @[Hold.scala 97:23]
    .clock(satp_delay_clock),
    .io_in_mode(satp_delay_io_in_mode),
    .io_in_asid(satp_delay_io_in_asid),
    .io_out_mode(satp_delay_io_out_mode),
    .io_out_asid(satp_delay_io_out_asid)
  );
  DelayN_6 flush_mmu_delay ( // @[Hold.scala 97:23]
    .clock(flush_mmu_delay_clock),
    .io_in(flush_mmu_delay_io_in),
    .io_out(flush_mmu_delay_io_out)
  );
  DelayN_6 mmu_flush_pipe_delay ( // @[Hold.scala 97:23]
    .clock(mmu_flush_pipe_delay_clock),
    .io_in(mmu_flush_pipe_delay_io_in),
    .io_out(mmu_flush_pipe_delay_io_out)
  );
  TlbStorageWrapper_1 entries ( // @[TLB.scala 86:23]
    .clock(entries_clock),
    .reset(entries_reset),
    .io_sfence_valid(entries_io_sfence_valid),
    .io_sfence_bits_rs1(entries_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(entries_io_sfence_bits_rs2),
    .io_sfence_bits_addr(entries_io_sfence_bits_addr),
    .io_sfence_bits_asid(entries_io_sfence_bits_asid),
    .io_csr_satp_asid(entries_io_csr_satp_asid),
    .io_rreq_0_valid(entries_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(entries_io_rreq_0_bits_vpn),
    .io_rreq_1_valid(entries_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(entries_io_rreq_1_bits_vpn),
    .io_rresp_0_bits_hit(entries_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn_0(entries_io_rresp_0_bits_ppn_0),
    .io_rresp_0_bits_ppn_1(entries_io_rresp_0_bits_ppn_1),
    .io_rresp_0_bits_perm_0_pf(entries_io_rresp_0_bits_perm_0_pf),
    .io_rresp_0_bits_perm_0_af(entries_io_rresp_0_bits_perm_0_af),
    .io_rresp_0_bits_perm_0_d(entries_io_rresp_0_bits_perm_0_d),
    .io_rresp_0_bits_perm_0_a(entries_io_rresp_0_bits_perm_0_a),
    .io_rresp_0_bits_perm_0_u(entries_io_rresp_0_bits_perm_0_u),
    .io_rresp_0_bits_perm_0_x(entries_io_rresp_0_bits_perm_0_x),
    .io_rresp_0_bits_perm_0_w(entries_io_rresp_0_bits_perm_0_w),
    .io_rresp_0_bits_perm_0_r(entries_io_rresp_0_bits_perm_0_r),
    .io_rresp_0_bits_super_hit(entries_io_rresp_0_bits_super_hit),
    .io_rresp_0_bits_super_ppn(entries_io_rresp_0_bits_super_ppn),
    .io_rresp_0_bits_spm_r(entries_io_rresp_0_bits_spm_r),
    .io_rresp_0_bits_spm_w(entries_io_rresp_0_bits_spm_w),
    .io_rresp_0_bits_spm_c(entries_io_rresp_0_bits_spm_c),
    .io_rresp_1_bits_hit(entries_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn_0(entries_io_rresp_1_bits_ppn_0),
    .io_rresp_1_bits_ppn_1(entries_io_rresp_1_bits_ppn_1),
    .io_rresp_1_bits_perm_0_pf(entries_io_rresp_1_bits_perm_0_pf),
    .io_rresp_1_bits_perm_0_af(entries_io_rresp_1_bits_perm_0_af),
    .io_rresp_1_bits_perm_0_a(entries_io_rresp_1_bits_perm_0_a),
    .io_rresp_1_bits_perm_0_u(entries_io_rresp_1_bits_perm_0_u),
    .io_rresp_1_bits_perm_0_x(entries_io_rresp_1_bits_perm_0_x),
    .io_rresp_1_bits_perm_0_r(entries_io_rresp_1_bits_perm_0_r),
    .io_rresp_1_bits_super_hit(entries_io_rresp_1_bits_super_hit),
    .io_rresp_1_bits_super_ppn(entries_io_rresp_1_bits_super_ppn),
    .io_rresp_1_bits_spm_r(entries_io_rresp_1_bits_spm_r),
    .io_rresp_1_bits_spm_c(entries_io_rresp_1_bits_spm_c),
    .io_wvalid(entries_io_wvalid),
    .io_wdata_entry_tag(entries_io_wdata_entry_tag),
    .io_wdata_entry_perm_d(entries_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(entries_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(entries_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(entries_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(entries_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(entries_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(entries_io_wdata_entry_perm_r),
    .io_wdata_entry_level(entries_io_wdata_entry_level),
    .io_wdata_entry_ppn(entries_io_wdata_entry_ppn),
    .io_wdata_ppn_low_0(entries_io_wdata_ppn_low_0),
    .io_wdata_ppn_low_1(entries_io_wdata_ppn_low_1),
    .io_wdata_ppn_low_2(entries_io_wdata_ppn_low_2),
    .io_wdata_ppn_low_3(entries_io_wdata_ppn_low_3),
    .io_wdata_ppn_low_4(entries_io_wdata_ppn_low_4),
    .io_wdata_ppn_low_5(entries_io_wdata_ppn_low_5),
    .io_wdata_ppn_low_6(entries_io_wdata_ppn_low_6),
    .io_wdata_ppn_low_7(entries_io_wdata_ppn_low_7),
    .io_wdata_valididx_0(entries_io_wdata_valididx_0),
    .io_wdata_valididx_1(entries_io_wdata_valididx_1),
    .io_wdata_valididx_2(entries_io_wdata_valididx_2),
    .io_wdata_valididx_3(entries_io_wdata_valididx_3),
    .io_wdata_valididx_4(entries_io_wdata_valididx_4),
    .io_wdata_valididx_5(entries_io_wdata_valididx_5),
    .io_wdata_valididx_6(entries_io_wdata_valididx_6),
    .io_wdata_valididx_7(entries_io_wdata_valididx_7),
    .io_wdata_pteidx_0(entries_io_wdata_pteidx_0),
    .io_wdata_pteidx_1(entries_io_wdata_pteidx_1),
    .io_wdata_pteidx_2(entries_io_wdata_pteidx_2),
    .io_wdata_pteidx_3(entries_io_wdata_pteidx_3),
    .io_wdata_pteidx_4(entries_io_wdata_pteidx_4),
    .io_wdata_pteidx_5(entries_io_wdata_pteidx_5),
    .io_wdata_pteidx_6(entries_io_wdata_pteidx_6),
    .io_wdata_pteidx_7(entries_io_wdata_pteidx_7),
    .io_wdata_pf(entries_io_wdata_pf),
    .io_wdata_af(entries_io_wdata_af),
    .io_wdata_replenish_0_c(entries_io_wdata_replenish_0_c),
    .io_wdata_replenish_0_atomic(entries_io_wdata_replenish_0_atomic),
    .io_wdata_replenish_0_x(entries_io_wdata_replenish_0_x),
    .io_wdata_replenish_0_w(entries_io_wdata_replenish_0_w),
    .io_wdata_replenish_0_r(entries_io_wdata_replenish_0_r),
    .io_wdata_replenish_1_c(entries_io_wdata_replenish_1_c),
    .io_wdata_replenish_1_atomic(entries_io_wdata_replenish_1_atomic),
    .io_wdata_replenish_1_x(entries_io_wdata_replenish_1_x),
    .io_wdata_replenish_1_w(entries_io_wdata_replenish_1_w),
    .io_wdata_replenish_1_r(entries_io_wdata_replenish_1_r),
    .io_wdata_replenish_2_c(entries_io_wdata_replenish_2_c),
    .io_wdata_replenish_2_atomic(entries_io_wdata_replenish_2_atomic),
    .io_wdata_replenish_2_x(entries_io_wdata_replenish_2_x),
    .io_wdata_replenish_2_w(entries_io_wdata_replenish_2_w),
    .io_wdata_replenish_2_r(entries_io_wdata_replenish_2_r),
    .io_wdata_replenish_3_c(entries_io_wdata_replenish_3_c),
    .io_wdata_replenish_3_atomic(entries_io_wdata_replenish_3_atomic),
    .io_wdata_replenish_3_x(entries_io_wdata_replenish_3_x),
    .io_wdata_replenish_3_w(entries_io_wdata_replenish_3_w),
    .io_wdata_replenish_3_r(entries_io_wdata_replenish_3_r),
    .io_wdata_replenish_4_c(entries_io_wdata_replenish_4_c),
    .io_wdata_replenish_4_atomic(entries_io_wdata_replenish_4_atomic),
    .io_wdata_replenish_4_x(entries_io_wdata_replenish_4_x),
    .io_wdata_replenish_4_w(entries_io_wdata_replenish_4_w),
    .io_wdata_replenish_4_r(entries_io_wdata_replenish_4_r),
    .io_wdata_replenish_5_c(entries_io_wdata_replenish_5_c),
    .io_wdata_replenish_5_atomic(entries_io_wdata_replenish_5_atomic),
    .io_wdata_replenish_5_x(entries_io_wdata_replenish_5_x),
    .io_wdata_replenish_5_w(entries_io_wdata_replenish_5_w),
    .io_wdata_replenish_5_r(entries_io_wdata_replenish_5_r),
    .io_wdata_replenish_6_c(entries_io_wdata_replenish_6_c),
    .io_wdata_replenish_6_atomic(entries_io_wdata_replenish_6_atomic),
    .io_wdata_replenish_6_x(entries_io_wdata_replenish_6_x),
    .io_wdata_replenish_6_w(entries_io_wdata_replenish_6_w),
    .io_wdata_replenish_6_r(entries_io_wdata_replenish_6_r),
    .io_wdata_replenish_7_c(entries_io_wdata_replenish_7_c),
    .io_wdata_replenish_7_atomic(entries_io_wdata_replenish_7_atomic),
    .io_wdata_replenish_7_x(entries_io_wdata_replenish_7_x),
    .io_wdata_replenish_7_w(entries_io_wdata_replenish_7_w),
    .io_wdata_replenish_7_r(entries_io_wdata_replenish_7_r)
  );
  assign io_requestor_0_req_ready = 1'h1; // @[TLB.scala 203:33]
  assign io_requestor_0_resp_valid = req_out_v_0; // @[TLB.scala 202:34]
  assign io_requestor_0_resp_bits_paddr_0 = portTranslateEnable_0 ? paddr : vaddr; // @[TLB.scala 150:35]
  assign io_requestor_0_resp_bits_paddr_1 = portTranslateEnable_0 ? paddr_1 : vaddr; // @[TLB.scala 150:35]
  assign io_requestor_0_resp_bits_miss = ~hit_read_0 & portTranslateEnable_0; // @[TLB.scala 131:21]
  assign io_requestor_0_resp_bits_fast_miss = ~(entries_io_rresp_0_bits_super_hit | p_hit) & portTranslateEnable_0; // @[TLB.scala 132:45]
  assign io_requestor_0_resp_bits_excp_0_pf_ld = (ldPf | ldUpdate) & portTranslateEnable_0 & ~perm_0_0_af; // @[TLB.scala 187:75]
  assign io_requestor_0_resp_bits_excp_0_pf_st = (stPf | stUpdate) & portTranslateEnable_0 &
    _io_requestor_0_resp_bits_excp_0_pf_ld_T_2; // @[TLB.scala 188:75]
  assign io_requestor_0_resp_bits_excp_0_af_ld = (perm_0_0_af | fast_miss & ~entries_io_rresp_0_bits_spm_r) &
    _ldUpdate_T_2 & portTranslateEnable_0; // @[TLB.scala 194:92]
  assign io_requestor_0_resp_bits_excp_0_af_st = (perm_0_0_af | fast_miss & ~entries_io_rresp_0_bits_spm_w) &
    _stUpdate_T_4 & portTranslateEnable_0; // @[TLB.scala 195:93]
  assign io_requestor_0_resp_bits_static_pm_valid = fast_miss & portTranslateEnable_0; // @[TLB.scala 197:45]
  assign io_requestor_0_resp_bits_static_pm_bits = ~entries_io_rresp_0_bits_spm_c; // @[TLB.scala 198:38]
  assign io_requestor_1_req_ready = 1'h1; // @[TLB.scala 203:33]
  assign io_requestor_1_resp_valid = req_out_v_1; // @[TLB.scala 202:34]
  assign io_requestor_1_resp_bits_paddr_0 = portTranslateEnable_1 ? paddr_2 : vaddr_1; // @[TLB.scala 150:35]
  assign io_requestor_1_resp_bits_paddr_1 = portTranslateEnable_1 ? paddr_3 : vaddr_1; // @[TLB.scala 150:35]
  assign io_requestor_1_resp_bits_miss = ~hit_read_1 & portTranslateEnable_1; // @[TLB.scala 131:21]
  assign io_requestor_1_resp_bits_fast_miss = ~(entries_io_rresp_1_bits_super_hit | p_hit_1) & portTranslateEnable_1; // @[TLB.scala 132:45]
  assign io_requestor_1_resp_bits_excp_0_pf_ld = (ldPf_2 | ldUpdate_2) & portTranslateEnable_1 & ~perm_1_0_af; // @[TLB.scala 187:75]
  assign io_requestor_1_resp_bits_excp_0_af_ld = (perm_1_0_af | fast_miss_1 & ~entries_io_rresp_1_bits_spm_r) &
    _ldUpdate_T_14 & portTranslateEnable_1; // @[TLB.scala 194:92]
  assign io_requestor_1_resp_bits_static_pm_valid = fast_miss_1 & portTranslateEnable_1; // @[TLB.scala 197:45]
  assign io_requestor_1_resp_bits_static_pm_bits = ~entries_io_rresp_1_bits_spm_c; // @[TLB.scala 198:38]
  assign io_requestor_2_resp_valid = 1'h0; // @[TLB.scala 202:34]
  assign io_ptw_req_0_valid = r ? 1'h0 : io_ptw_req_0_valid_REG; // @[TLB.scala 207:27 208:87 209:29]
  assign io_ptw_req_0_bits_vpn = io_ptw_req_0_bits_vpn_REG; // @[TLB.scala 211:30]
  assign io_ptw_req_1_valid = r_1 ? 1'h0 : io_ptw_req_1_valid_REG; // @[TLB.scala 207:27 208:87 209:29]
  assign io_ptw_req_1_bits_vpn = io_ptw_req_1_bits_vpn_REG; // @[TLB.scala 211:30]
  assign io_ptw_resp_ready = 1'h1; // @[TLB.scala 122:21]
  assign io_pmp_0_valid = io_requestor_0_resp_valid; // @[TLB.scala 164:20]
  assign io_pmp_0_bits_addr = portTranslateEnable_0 ? _pmp_paddr_T_2 : vaddr; // @[TLB.scala 155:24]
  assign io_pmp_0_bits_cmd = req_out_0_cmd; // @[TLB.scala 167:23]
  assign io_pmp_1_valid = io_requestor_1_resp_valid; // @[TLB.scala 164:20]
  assign io_pmp_1_bits_addr = portTranslateEnable_1 ? _pmp_paddr_T_5 : vaddr_1; // @[TLB.scala 155:24]
  assign io_pmp_1_bits_cmd = req_out_1_cmd; // @[TLB.scala 167:23]
  assign io_pmp_2_valid = io_requestor_2_resp_valid; // @[TLB.scala 164:20]
  assign io_pmp_2_bits_addr = vmEnable ? _pmp_paddr_T_8 : 36'h0; // @[TLB.scala 155:24]
  assign sfence_delay_clock = clock;
  assign sfence_delay_io_in_valid = io_sfence_valid; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_rs1 = io_sfence_bits_rs1; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_rs2 = io_sfence_bits_rs2; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_addr = io_sfence_bits_addr; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_asid = io_sfence_bits_asid; // @[Hold.scala 98:17]
  assign satp_delay_clock = clock;
  assign satp_delay_io_in_mode = io_csr_satp_mode; // @[Hold.scala 98:17]
  assign satp_delay_io_in_asid = io_csr_satp_asid; // @[Hold.scala 98:17]
  assign flush_mmu_delay_clock = clock;
  assign flush_mmu_delay_io_in = sfence_delay_io_out_valid | io_csr_satp_changed; // @[TLB.scala 65:39]
  assign mmu_flush_pipe_delay_clock = clock;
  assign mmu_flush_pipe_delay_io_in = 1'h0; // @[TLB.scala 66:44]
  assign entries_clock = clock;
  assign entries_reset = reset;
  assign entries_io_sfence_valid = sfence_delay_io_out_valid; // @[MMUBundle.scala 636:17]
  assign entries_io_sfence_bits_rs1 = sfence_delay_io_out_bits_rs1; // @[MMUBundle.scala 636:17]
  assign entries_io_sfence_bits_rs2 = sfence_delay_io_out_bits_rs2; // @[MMUBundle.scala 636:17]
  assign entries_io_sfence_bits_addr = sfence_delay_io_out_bits_addr; // @[MMUBundle.scala 636:17]
  assign entries_io_sfence_bits_asid = sfence_delay_io_out_bits_asid; // @[MMUBundle.scala 636:17]
  assign entries_io_csr_satp_asid = satp_delay_io_out_asid; // @[MMUBundle.scala 638:19]
  assign entries_io_rreq_0_valid = io_requestor_0_req_valid; // @[MMUBundle.scala 489:25]
  assign entries_io_rreq_0_bits_vpn = io_requestor_0_req_bits_vaddr[38:12]; // @[MMUConst.scala 107:9]
  assign entries_io_rreq_1_valid = io_requestor_1_req_valid; // @[MMUBundle.scala 489:25]
  assign entries_io_rreq_1_bits_vpn = io_requestor_1_req_bits_vaddr[38:12]; // @[MMUConst.scala 107:9]
  assign entries_io_wvalid = _refill_T & ~flush_mmu_delay_io_out & vmEnable; // @[TLB.scala 82:46]
  assign entries_io_wdata_entry_tag = io_ptw_resp_bits_entry_tag; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_d = io_ptw_resp_bits_entry_perm_d; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_a = io_ptw_resp_bits_entry_perm_a; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_g = io_ptw_resp_bits_entry_perm_g; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_u = io_ptw_resp_bits_entry_perm_u; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_x = io_ptw_resp_bits_entry_perm_x; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_w = io_ptw_resp_bits_entry_perm_w; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_perm_r = io_ptw_resp_bits_entry_perm_r; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_level = io_ptw_resp_bits_entry_level; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_entry_ppn = io_ptw_resp_bits_entry_ppn; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_0 = io_ptw_resp_bits_ppn_low_0; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_1 = io_ptw_resp_bits_ppn_low_1; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_2 = io_ptw_resp_bits_ppn_low_2; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_3 = io_ptw_resp_bits_ppn_low_3; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_4 = io_ptw_resp_bits_ppn_low_4; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_5 = io_ptw_resp_bits_ppn_low_5; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_6 = io_ptw_resp_bits_ppn_low_6; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_ppn_low_7 = io_ptw_resp_bits_ppn_low_7; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_0 = io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_1 = io_ptw_resp_bits_valididx_1; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_2 = io_ptw_resp_bits_valididx_2; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_3 = io_ptw_resp_bits_valididx_3; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_4 = io_ptw_resp_bits_valididx_4; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_5 = io_ptw_resp_bits_valididx_5; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_6 = io_ptw_resp_bits_valididx_6; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_valididx_7 = io_ptw_resp_bits_valididx_7; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_0 = io_ptw_resp_bits_pteidx_0; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_1 = io_ptw_resp_bits_pteidx_1; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_2 = io_ptw_resp_bits_pteidx_2; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_3 = io_ptw_resp_bits_pteidx_3; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_4 = io_ptw_resp_bits_pteidx_4; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_5 = io_ptw_resp_bits_pteidx_5; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_6 = io_ptw_resp_bits_pteidx_6; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pteidx_7 = io_ptw_resp_bits_pteidx_7; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_pf = io_ptw_resp_bits_pf; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_af = io_ptw_resp_bits_af; // @[MMUBundle.scala 500:22]
  assign entries_io_wdata_replenish_0_c = io_ptw_replenish_0_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_0_atomic = io_ptw_replenish_0_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_0_x = io_ptw_replenish_0_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_0_w = io_ptw_replenish_0_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_0_r = io_ptw_replenish_0_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_1_c = io_ptw_replenish_1_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_1_atomic = io_ptw_replenish_1_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_1_x = io_ptw_replenish_1_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_1_w = io_ptw_replenish_1_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_1_r = io_ptw_replenish_1_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_2_c = io_ptw_replenish_2_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_2_atomic = io_ptw_replenish_2_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_2_x = io_ptw_replenish_2_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_2_w = io_ptw_replenish_2_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_2_r = io_ptw_replenish_2_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_3_c = io_ptw_replenish_3_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_3_atomic = io_ptw_replenish_3_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_3_x = io_ptw_replenish_3_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_3_w = io_ptw_replenish_3_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_3_r = io_ptw_replenish_3_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_4_c = io_ptw_replenish_4_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_4_atomic = io_ptw_replenish_4_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_4_x = io_ptw_replenish_4_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_4_w = io_ptw_replenish_4_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_4_r = io_ptw_replenish_4_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_5_c = io_ptw_replenish_5_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_5_atomic = io_ptw_replenish_5_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_5_x = io_ptw_replenish_5_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_5_w = io_ptw_replenish_5_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_5_r = io_ptw_replenish_5_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_6_c = io_ptw_replenish_6_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_6_atomic = io_ptw_replenish_6_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_6_x = io_ptw_replenish_6_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_6_w = io_ptw_replenish_6_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_6_r = io_ptw_replenish_6_r; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_7_c = io_ptw_replenish_7_c; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_7_atomic = io_ptw_replenish_7_atomic; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_7_x = io_ptw_replenish_7_x; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_7_w = io_ptw_replenish_7_w; // @[MMUBundle.scala 501:32]
  assign entries_io_wdata_replenish_7_r = io_ptw_replenish_7_r; // @[MMUBundle.scala 501:32]
  always @(posedge clock) begin
    portTranslateEnable_REG <= ~io_requestor_0_req_bits_no_translate; // @[TLB.scala 76:74]
    portTranslateEnable_REG_1 <= ~io_requestor_1_req_bits_no_translate; // @[TLB.scala 76:74]
    if (_req_out_T) begin // @[Reg.scala 17:18]
      req_out_0_vaddr <= io_requestor_0_req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (_req_out_T) begin // @[Reg.scala 17:18]
      req_out_0_cmd <= io_requestor_0_req_bits_cmd; // @[Reg.scala 17:22]
    end
    if (_req_out_T_1) begin // @[Reg.scala 17:18]
      req_out_1_vaddr <= io_requestor_1_req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (_req_out_T_1) begin // @[Reg.scala 17:18]
      req_out_1_cmd <= io_requestor_1_req_bits_cmd; // @[Reg.scala 17:22]
    end
    p_hit <= _p_hit_T_8 & _refill_T; // @[TLB.scala 271:82]
    if (_refill_T) begin // @[Reg.scala 17:18]
      if (2'h2 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_8;
      end else if (2'h1 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_5;
      end else if (2'h0 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_2;
      end else begin
        p_ppn <= 24'h0;
      end
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_d <= p_perm_ptePerm_d; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_a <= p_perm_ptePerm_a; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_u <= p_perm_ptePerm_u; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_x <= p_perm_ptePerm_x; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_w <= p_perm_ptePerm_w; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_r <= p_perm_ptePerm_r; // @[Reg.scala 17:22]
    end
    p_hit_1 <= _p_hit_T_19 & _refill_T; // @[TLB.scala 271:82]
    if (_refill_T) begin // @[Reg.scala 17:18]
      if (2'h2 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_1 <= _p_ppn_T_24;
      end else if (2'h1 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_1 <= _p_ppn_T_21;
      end else if (2'h0 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_1 <= _p_ppn_T_18;
      end else begin
        p_ppn_1 <= 24'h0;
      end
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_a <= p_perm_ptePerm_a; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_u <= p_perm_ptePerm_u; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_x <= p_perm_ptePerm_x; // @[Reg.scala 17:22]
    end
    if (_refill_T) begin // @[Reg.scala 17:18]
      p_perm_1_r <= p_perm_ptePerm_r; // @[Reg.scala 17:22]
    end
    p_hit_2 <= _p_hit_T_30 & _refill_T; // @[TLB.scala 271:82]
    if (_refill_T) begin // @[Reg.scala 17:18]
      if (2'h2 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_2 <= _p_ppn_T_40;
      end else if (2'h1 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_2 <= _p_ppn_T_37;
      end else if (2'h0 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn_2 <= _p_ppn_T_34;
      end else begin
        p_ppn_2 <= 24'h0;
      end
    end
    REG <= io_requestor_0_req_ready & io_requestor_0_req_valid; // @[Decoupled.scala 50:35]
    if (REG) begin // @[Reg.scala 17:18]
      r <= io_requestor_0_req_kill; // @[Reg.scala 17:22]
    end
    io_ptw_req_0_bits_vpn_REG <= req_out_0_vaddr[38:12]; // @[MMUConst.scala 107:9]
    REG_1 <= io_requestor_1_req_ready & io_requestor_1_req_valid; // @[Decoupled.scala 50:35]
    if (REG_1) begin // @[Reg.scala 17:18]
      r_1 <= io_requestor_1_req_kill; // @[Reg.scala 17:22]
    end
    io_ptw_req_1_bits_vpn_REG <= req_out_1_vaddr[38:12]; // @[MMUConst.scala 107:9]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Hold.scala 42:19]
      req_out_v_0 <= 1'h0; // @[Hold.scala 42:27]
    end else begin
      req_out_v_0 <= _req_out_v_T_2 | _GEN_36;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Hold.scala 42:19]
      req_out_v_1 <= 1'h0; // @[Hold.scala 42:27]
    end else begin
      req_out_v_1 <= _req_out_v_T_6 | _GEN_39;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLB.scala 207:70]
      io_ptw_req_0_valid_REG <= 1'h0;
    end else begin
      io_ptw_req_0_valid_REG <= req_out_v_0 & miss_read_0 & ~ptw_just_back;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLB.scala 207:70]
      io_ptw_req_1_valid_REG <= 1'h0;
    end else begin
      io_ptw_req_1_valid_REG <= req_out_v_1 & miss_read_1 & ~ptw_just_back_1;
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
  portTranslateEnable_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  portTranslateEnable_REG_1 = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  req_out_0_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  req_out_0_cmd = _RAND_3[2:0];
  _RAND_4 = {2{`RANDOM}};
  req_out_1_vaddr = _RAND_4[38:0];
  _RAND_5 = {1{`RANDOM}};
  req_out_1_cmd = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  req_out_v_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  req_out_v_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  p_hit = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  p_ppn = _RAND_9[23:0];
  _RAND_10 = {1{`RANDOM}};
  p_perm_pf = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  p_perm_af = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  p_perm_d = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  p_perm_a = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  p_perm_u = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  p_perm_x = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  p_perm_w = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  p_perm_r = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  p_hit_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  p_ppn_1 = _RAND_19[23:0];
  _RAND_20 = {1{`RANDOM}};
  p_perm_1_pf = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  p_perm_1_af = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  p_perm_1_a = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  p_perm_1_u = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  p_perm_1_x = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  p_perm_1_r = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  p_hit_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  p_ppn_2 = _RAND_27[23:0];
  _RAND_28 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  r = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_ptw_req_0_bits_vpn_REG = _RAND_31[26:0];
  _RAND_32 = {1{`RANDOM}};
  io_ptw_req_1_valid_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  REG_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  r_1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_ptw_req_1_bits_vpn_REG = _RAND_35[26:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    req_out_v_0 = 1'h0;
  end
  if (reset) begin
    req_out_v_1 = 1'h0;
  end
  if (reset) begin
    io_ptw_req_0_valid_REG = 1'h0;
  end
  if (reset) begin
    io_ptw_req_1_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

