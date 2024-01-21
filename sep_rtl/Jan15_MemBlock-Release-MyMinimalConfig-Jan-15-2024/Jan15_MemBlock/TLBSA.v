module TLBSA(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_csr_satp_asid,
  output        io_rreq_0_ready,
  input         io_rreq_0_valid,
  input  [26:0] io_rreq_0_bits_vpn,
  output        io_rreq_1_ready,
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
  output        io_rresp_0_bits_perm_0_pm_0_r,
  output        io_rresp_0_bits_perm_0_pm_0_w,
  output        io_rresp_0_bits_perm_0_pm_0_c,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn_0,
  output [23:0] io_rresp_1_bits_ppn_1,
  output        io_rresp_1_bits_perm_0_pf,
  output        io_rresp_1_bits_perm_0_af,
  output        io_rresp_1_bits_perm_0_a,
  output        io_rresp_1_bits_perm_0_u,
  output        io_rresp_1_bits_perm_0_x,
  output        io_rresp_1_bits_perm_0_r,
  output        io_rresp_1_bits_perm_0_pm_0_r,
  output        io_rresp_1_bits_perm_0_pm_0_c,
  input         io_victim_in_valid,
  input  [26:0] io_victim_in_bits_entry_tag,
  input  [15:0] io_victim_in_bits_entry_asid,
  input  [23:0] io_victim_in_bits_entry_ppn,
  input         io_victim_in_bits_entry_perm_pf,
  input         io_victim_in_bits_entry_perm_af,
  input         io_victim_in_bits_entry_perm_d,
  input         io_victim_in_bits_entry_perm_a,
  input         io_victim_in_bits_entry_perm_u,
  input         io_victim_in_bits_entry_perm_x,
  input         io_victim_in_bits_entry_perm_w,
  input         io_victim_in_bits_entry_perm_r,
  input         io_victim_in_bits_entry_perm_pm_r,
  input         io_victim_in_bits_entry_perm_pm_w,
  input         io_victim_in_bits_entry_perm_pm_c
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
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
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
`endif // RANDOMIZE_REG_INIT
  wire  entries_clock; // @[TLBStorage.scala 249:23]
  wire [3:0] entries_io_raddr_0; // @[TLBStorage.scala 249:23]
  wire [3:0] entries_io_raddr_1; // @[TLBStorage.scala 249:23]
  wire [26:0] entries_io_rdata_0_0_tag; // @[TLBStorage.scala 249:23]
  wire [15:0] entries_io_rdata_0_0_asid; // @[TLBStorage.scala 249:23]
  wire [23:0] entries_io_rdata_0_0_ppn; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_pf; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_af; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_d; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_a; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_u; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_x; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_w; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_pm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_pm_w; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_0_0_perm_pm_c; // @[TLBStorage.scala 249:23]
  wire [23:0] entries_io_rdata_0_1_ppn; // @[TLBStorage.scala 249:23]
  wire [26:0] entries_io_rdata_1_0_tag; // @[TLBStorage.scala 249:23]
  wire [15:0] entries_io_rdata_1_0_asid; // @[TLBStorage.scala 249:23]
  wire [23:0] entries_io_rdata_1_0_ppn; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_pf; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_af; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_a; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_u; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_x; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_pm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_rdata_1_0_perm_pm_c; // @[TLBStorage.scala 249:23]
  wire [23:0] entries_io_rdata_1_1_ppn; // @[TLBStorage.scala 249:23]
  wire  entries_io_wen; // @[TLBStorage.scala 249:23]
  wire [3:0] entries_io_waddr; // @[TLBStorage.scala 249:23]
  wire [26:0] entries_io_wdata_tag; // @[TLBStorage.scala 249:23]
  wire [15:0] entries_io_wdata_asid; // @[TLBStorage.scala 249:23]
  wire [23:0] entries_io_wdata_ppn; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_pf; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_af; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_d; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_a; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_u; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_x; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_w; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_pm_r; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_pm_w; // @[TLBStorage.scala 249:23]
  wire  entries_io_wdata_perm_pm_c; // @[TLBStorage.scala 249:23]
  reg  v_0_0; // @[TLBStorage.scala 248:18]
  reg  v_1_0; // @[TLBStorage.scala 248:18]
  reg  v_2_0; // @[TLBStorage.scala 248:18]
  reg  v_3_0; // @[TLBStorage.scala 248:18]
  reg  v_4_0; // @[TLBStorage.scala 248:18]
  reg  v_5_0; // @[TLBStorage.scala 248:18]
  reg  v_6_0; // @[TLBStorage.scala 248:18]
  reg  v_7_0; // @[TLBStorage.scala 248:18]
  reg  v_8_0; // @[TLBStorage.scala 248:18]
  reg  v_9_0; // @[TLBStorage.scala 248:18]
  reg  v_10_0; // @[TLBStorage.scala 248:18]
  reg  v_11_0; // @[TLBStorage.scala 248:18]
  reg  v_12_0; // @[TLBStorage.scala 248:18]
  reg  v_13_0; // @[TLBStorage.scala 248:18]
  reg  v_14_0; // @[TLBStorage.scala 248:18]
  reg  v_15_0; // @[TLBStorage.scala 248:18]
  wire  _vpn_reg_T = io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg; // @[Reg.scala 16:16]
  wire [3:0] ridx = io_rreq_0_bits_vpn[3:0]; // @[MMUConst.scala 116:8]
  wire [7:0] v_resize_lo = {v_7_0,v_6_0,v_5_0,v_4_0,v_3_0,v_2_0,v_1_0,v_0_0}; // @[TLBStorage.scala 260:30]
  wire [15:0] _v_resize_T = {v_15_0,v_14_0,v_13_0,v_12_0,v_11_0,v_10_0,v_9_0,v_8_0,v_resize_lo}; // @[TLBStorage.scala 260:30]
  wire  v_resize__0_0 = _v_resize_T[0]; // @[TLBStorage.scala 260:30]
  wire  v_resize__0_1 = _v_resize_T[1]; // @[TLBStorage.scala 260:30]
  wire  v_resize__1_0 = _v_resize_T[2]; // @[TLBStorage.scala 260:30]
  wire  v_resize__1_1 = _v_resize_T[3]; // @[TLBStorage.scala 260:30]
  wire  v_resize__2_0 = _v_resize_T[4]; // @[TLBStorage.scala 260:30]
  wire  v_resize__2_1 = _v_resize_T[5]; // @[TLBStorage.scala 260:30]
  wire  v_resize__3_0 = _v_resize_T[6]; // @[TLBStorage.scala 260:30]
  wire  v_resize__3_1 = _v_resize_T[7]; // @[TLBStorage.scala 260:30]
  wire  v_resize__4_0 = _v_resize_T[8]; // @[TLBStorage.scala 260:30]
  wire  v_resize__4_1 = _v_resize_T[9]; // @[TLBStorage.scala 260:30]
  wire  v_resize__5_0 = _v_resize_T[10]; // @[TLBStorage.scala 260:30]
  wire  v_resize__5_1 = _v_resize_T[11]; // @[TLBStorage.scala 260:30]
  wire  v_resize__6_0 = _v_resize_T[12]; // @[TLBStorage.scala 260:30]
  wire  v_resize__6_1 = _v_resize_T[13]; // @[TLBStorage.scala 260:30]
  wire  v_resize__7_0 = _v_resize_T[14]; // @[TLBStorage.scala 260:30]
  wire  v_resize__7_1 = _v_resize_T[15]; // @[TLBStorage.scala 260:30]
  reg  vidx_resize__0; // @[TLBStorage.scala 261:30]
  reg  vidx_resize__1; // @[TLBStorage.scala 261:30]
  wire  _GEN_2 = 3'h1 == io_rreq_0_bits_vpn[3:1] ? v_resize__1_0 : v_resize__0_0; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_3 = 3'h2 == io_rreq_0_bits_vpn[3:1] ? v_resize__2_0 : _GEN_2; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_4 = 3'h3 == io_rreq_0_bits_vpn[3:1] ? v_resize__3_0 : _GEN_3; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_10 = 3'h1 == io_rreq_0_bits_vpn[3:1] ? v_resize__1_1 : v_resize__0_1; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_11 = 3'h2 == io_rreq_0_bits_vpn[3:1] ? v_resize__2_1 : _GEN_10; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_12 = 3'h3 == io_rreq_0_bits_vpn[3:1] ? v_resize__3_1 : _GEN_11; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_18 = vpn_reg[0] ? vidx_resize__1 : vidx_resize__0; // @[TLBStorage.scala 262:{64,64}]
  reg  vidx_REG; // @[TLBStorage.scala 262:88]
  wire  vidx_0 = _GEN_18 & vidx_REG; // @[TLBStorage.scala 262:78]
  reg  vidx_bypass; // @[TLBStorage.scala 263:30]
  wire  hit_asid_hit = entries_io_rdata_0_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 199:59]
  wire  _hit_T_2 = vpn_reg[26:4] == entries_io_rdata_0_0_tag[26:4]; // @[MMUConst.scala 131:33]
  wire  _hit_T_3 = hit_asid_hit & _hit_T_2; // @[MMUBundle.scala 203:30]
  wire  _vpn_reg_T_1 = io_rreq_1_ready & io_rreq_1_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_1; // @[Reg.scala 16:16]
  wire [3:0] ridx_1 = io_rreq_1_bits_vpn[3:0]; // @[MMUConst.scala 116:8]
  reg  vidx_resize_1_0; // @[TLBStorage.scala 261:30]
  reg  vidx_resize_1_1; // @[TLBStorage.scala 261:30]
  wire  _GEN_21 = 3'h1 == io_rreq_1_bits_vpn[3:1] ? v_resize__1_0 : v_resize__0_0; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_22 = 3'h2 == io_rreq_1_bits_vpn[3:1] ? v_resize__2_0 : _GEN_21; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_23 = 3'h3 == io_rreq_1_bits_vpn[3:1] ? v_resize__3_0 : _GEN_22; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_29 = 3'h1 == io_rreq_1_bits_vpn[3:1] ? v_resize__1_1 : v_resize__0_1; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_30 = 3'h2 == io_rreq_1_bits_vpn[3:1] ? v_resize__2_1 : _GEN_29; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_31 = 3'h3 == io_rreq_1_bits_vpn[3:1] ? v_resize__3_1 : _GEN_30; // @[TLBStorage.scala 261:{30,30}]
  wire  _GEN_37 = vpn_reg_1[0] ? vidx_resize_1_1 : vidx_resize_1_0; // @[TLBStorage.scala 262:{64,64}]
  reg  vidx_REG_1; // @[TLBStorage.scala 262:88]
  wire  vidx_0_1 = _GEN_37 & vidx_REG_1; // @[TLBStorage.scala 262:78]
  reg  vidx_bypass_1; // @[TLBStorage.scala 263:30]
  wire  hit_asid_hit_1 = entries_io_rdata_1_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 199:59]
  wire  _hit_T_7 = vpn_reg_1[26:4] == entries_io_rdata_1_0_tag[26:4]; // @[MMUConst.scala 131:33]
  wire  _hit_T_8 = hit_asid_hit_1 & _hit_T_7; // @[MMUBundle.scala 203:30]
  wire  _GEN_105 = 4'h0 == io_victim_in_bits_entry_tag[3:0] | v_0_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_106 = 4'h1 == io_victim_in_bits_entry_tag[3:0] | v_1_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_107 = 4'h2 == io_victim_in_bits_entry_tag[3:0] | v_2_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_108 = 4'h3 == io_victim_in_bits_entry_tag[3:0] | v_3_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_109 = 4'h4 == io_victim_in_bits_entry_tag[3:0] | v_4_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_110 = 4'h5 == io_victim_in_bits_entry_tag[3:0] | v_5_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_111 = 4'h6 == io_victim_in_bits_entry_tag[3:0] | v_6_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_112 = 4'h7 == io_victim_in_bits_entry_tag[3:0] | v_7_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_113 = 4'h8 == io_victim_in_bits_entry_tag[3:0] | v_8_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_114 = 4'h9 == io_victim_in_bits_entry_tag[3:0] | v_9_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_115 = 4'ha == io_victim_in_bits_entry_tag[3:0] | v_10_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_116 = 4'hb == io_victim_in_bits_entry_tag[3:0] | v_11_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_117 = 4'hc == io_victim_in_bits_entry_tag[3:0] | v_12_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_118 = 4'hd == io_victim_in_bits_entry_tag[3:0] | v_13_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_119 = 4'he == io_victim_in_bits_entry_tag[3:0] | v_14_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_120 = 4'hf == io_victim_in_bits_entry_tag[3:0] | v_15_0; // @[TLBStorage.scala 248:18 305:{74,74}]
  wire  _GEN_121 = io_victim_in_valid ? _GEN_105 : v_0_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_122 = io_victim_in_valid ? _GEN_106 : v_1_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_123 = io_victim_in_valid ? _GEN_107 : v_2_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_124 = io_victim_in_valid ? _GEN_108 : v_3_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_125 = io_victim_in_valid ? _GEN_109 : v_4_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_126 = io_victim_in_valid ? _GEN_110 : v_5_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_127 = io_victim_in_valid ? _GEN_111 : v_6_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_128 = io_victim_in_valid ? _GEN_112 : v_7_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_129 = io_victim_in_valid ? _GEN_113 : v_8_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_130 = io_victim_in_valid ? _GEN_114 : v_9_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_131 = io_victim_in_valid ? _GEN_115 : v_10_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_132 = io_victim_in_valid ? _GEN_116 : v_11_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_133 = io_victim_in_valid ? _GEN_117 : v_12_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_134 = io_victim_in_valid ? _GEN_118 : v_13_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_135 = io_victim_in_valid ? _GEN_119 : v_14_0; // @[TLBStorage.scala 248:18 304:29]
  wire  _GEN_136 = io_victim_in_valid ? _GEN_120 : v_15_0; // @[TLBStorage.scala 248:18 304:29]
  BankedAsyncDataModuleTemplateWithDup entries ( // @[TLBStorage.scala 249:23]
    .clock(entries_clock),
    .io_raddr_0(entries_io_raddr_0),
    .io_raddr_1(entries_io_raddr_1),
    .io_rdata_0_0_tag(entries_io_rdata_0_0_tag),
    .io_rdata_0_0_asid(entries_io_rdata_0_0_asid),
    .io_rdata_0_0_ppn(entries_io_rdata_0_0_ppn),
    .io_rdata_0_0_perm_pf(entries_io_rdata_0_0_perm_pf),
    .io_rdata_0_0_perm_af(entries_io_rdata_0_0_perm_af),
    .io_rdata_0_0_perm_d(entries_io_rdata_0_0_perm_d),
    .io_rdata_0_0_perm_a(entries_io_rdata_0_0_perm_a),
    .io_rdata_0_0_perm_u(entries_io_rdata_0_0_perm_u),
    .io_rdata_0_0_perm_x(entries_io_rdata_0_0_perm_x),
    .io_rdata_0_0_perm_w(entries_io_rdata_0_0_perm_w),
    .io_rdata_0_0_perm_r(entries_io_rdata_0_0_perm_r),
    .io_rdata_0_0_perm_pm_r(entries_io_rdata_0_0_perm_pm_r),
    .io_rdata_0_0_perm_pm_w(entries_io_rdata_0_0_perm_pm_w),
    .io_rdata_0_0_perm_pm_c(entries_io_rdata_0_0_perm_pm_c),
    .io_rdata_0_1_ppn(entries_io_rdata_0_1_ppn),
    .io_rdata_1_0_tag(entries_io_rdata_1_0_tag),
    .io_rdata_1_0_asid(entries_io_rdata_1_0_asid),
    .io_rdata_1_0_ppn(entries_io_rdata_1_0_ppn),
    .io_rdata_1_0_perm_pf(entries_io_rdata_1_0_perm_pf),
    .io_rdata_1_0_perm_af(entries_io_rdata_1_0_perm_af),
    .io_rdata_1_0_perm_a(entries_io_rdata_1_0_perm_a),
    .io_rdata_1_0_perm_u(entries_io_rdata_1_0_perm_u),
    .io_rdata_1_0_perm_x(entries_io_rdata_1_0_perm_x),
    .io_rdata_1_0_perm_r(entries_io_rdata_1_0_perm_r),
    .io_rdata_1_0_perm_pm_r(entries_io_rdata_1_0_perm_pm_r),
    .io_rdata_1_0_perm_pm_c(entries_io_rdata_1_0_perm_pm_c),
    .io_rdata_1_1_ppn(entries_io_rdata_1_1_ppn),
    .io_wen(entries_io_wen),
    .io_waddr(entries_io_waddr),
    .io_wdata_tag(entries_io_wdata_tag),
    .io_wdata_asid(entries_io_wdata_asid),
    .io_wdata_ppn(entries_io_wdata_ppn),
    .io_wdata_perm_pf(entries_io_wdata_perm_pf),
    .io_wdata_perm_af(entries_io_wdata_perm_af),
    .io_wdata_perm_d(entries_io_wdata_perm_d),
    .io_wdata_perm_a(entries_io_wdata_perm_a),
    .io_wdata_perm_u(entries_io_wdata_perm_u),
    .io_wdata_perm_x(entries_io_wdata_perm_x),
    .io_wdata_perm_w(entries_io_wdata_perm_w),
    .io_wdata_perm_r(entries_io_wdata_perm_r),
    .io_wdata_perm_pm_r(entries_io_wdata_perm_pm_r),
    .io_wdata_perm_pm_w(entries_io_wdata_perm_pm_w),
    .io_wdata_perm_pm_c(entries_io_wdata_perm_pm_c)
  );
  assign io_rreq_0_ready = 1'h1; // @[TLBStorage.scala 247:24]
  assign io_rreq_1_ready = 1'h1; // @[TLBStorage.scala 247:24]
  assign io_rresp_0_bits_hit = _hit_T_3 & (vidx_0 | vidx_bypass); // @[TLBStorage.scala 267:61]
  assign io_rresp_0_bits_ppn_0 = entries_io_rdata_0_0_ppn; // @[TLBStorage.scala 270:24]
  assign io_rresp_0_bits_ppn_1 = entries_io_rdata_0_1_ppn; // @[TLBStorage.scala 270:24]
  assign io_rresp_0_bits_perm_0_pf = entries_io_rdata_0_0_perm_pf; // @[TLBStorage.scala 271:28]
  assign io_rresp_0_bits_perm_0_af = entries_io_rdata_0_0_perm_af; // @[TLBStorage.scala 272:28]
  assign io_rresp_0_bits_perm_0_d = entries_io_rdata_0_0_perm_d; // @[TLBStorage.scala 273:27]
  assign io_rresp_0_bits_perm_0_a = entries_io_rdata_0_0_perm_a; // @[TLBStorage.scala 274:27]
  assign io_rresp_0_bits_perm_0_u = entries_io_rdata_0_0_perm_u; // @[TLBStorage.scala 276:27]
  assign io_rresp_0_bits_perm_0_x = entries_io_rdata_0_0_perm_x; // @[TLBStorage.scala 277:27]
  assign io_rresp_0_bits_perm_0_w = entries_io_rdata_0_0_perm_w; // @[TLBStorage.scala 278:27]
  assign io_rresp_0_bits_perm_0_r = entries_io_rdata_0_0_perm_r; // @[TLBStorage.scala 279:27]
  assign io_rresp_0_bits_perm_0_pm_0_r = entries_io_rdata_0_0_perm_pm_r; // @[TLBStorage.scala 281:33]
  assign io_rresp_0_bits_perm_0_pm_0_w = entries_io_rdata_0_0_perm_pm_w; // @[TLBStorage.scala 281:33]
  assign io_rresp_0_bits_perm_0_pm_0_c = entries_io_rdata_0_0_perm_pm_c; // @[TLBStorage.scala 281:33]
  assign io_rresp_1_bits_hit = _hit_T_8 & (vidx_0_1 | vidx_bypass_1); // @[TLBStorage.scala 267:61]
  assign io_rresp_1_bits_ppn_0 = entries_io_rdata_1_0_ppn; // @[TLBStorage.scala 270:24]
  assign io_rresp_1_bits_ppn_1 = entries_io_rdata_1_1_ppn; // @[TLBStorage.scala 270:24]
  assign io_rresp_1_bits_perm_0_pf = entries_io_rdata_1_0_perm_pf; // @[TLBStorage.scala 271:28]
  assign io_rresp_1_bits_perm_0_af = entries_io_rdata_1_0_perm_af; // @[TLBStorage.scala 272:28]
  assign io_rresp_1_bits_perm_0_a = entries_io_rdata_1_0_perm_a; // @[TLBStorage.scala 274:27]
  assign io_rresp_1_bits_perm_0_u = entries_io_rdata_1_0_perm_u; // @[TLBStorage.scala 276:27]
  assign io_rresp_1_bits_perm_0_x = entries_io_rdata_1_0_perm_x; // @[TLBStorage.scala 277:27]
  assign io_rresp_1_bits_perm_0_r = entries_io_rdata_1_0_perm_r; // @[TLBStorage.scala 279:27]
  assign io_rresp_1_bits_perm_0_pm_0_r = entries_io_rdata_1_0_perm_pm_r; // @[TLBStorage.scala 281:33]
  assign io_rresp_1_bits_perm_0_pm_0_c = entries_io_rdata_1_0_perm_pm_c; // @[TLBStorage.scala 281:33]
  assign entries_clock = clock;
  assign entries_io_raddr_0 = io_rreq_0_bits_vpn[3:0]; // @[MMUConst.scala 116:8]
  assign entries_io_raddr_1 = io_rreq_1_bits_vpn[3:0]; // @[MMUConst.scala 116:8]
  assign entries_io_wen = io_victim_in_valid; // @[TLBStorage.scala 296:32]
  assign entries_io_waddr = io_victim_in_bits_entry_tag[3:0]; // @[MMUConst.scala 116:8]
  assign entries_io_wdata_tag = io_victim_in_bits_entry_tag; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_asid = io_victim_in_bits_entry_asid; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_ppn = io_victim_in_bits_entry_ppn; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_pf = io_victim_in_bits_entry_perm_pf; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_af = io_victim_in_bits_entry_perm_af; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_d = io_victim_in_bits_entry_perm_d; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_a = io_victim_in_bits_entry_perm_a; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_u = io_victim_in_bits_entry_perm_u; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_x = io_victim_in_bits_entry_perm_x; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_w = io_victim_in_bits_entry_perm_w; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_r = io_victim_in_bits_entry_perm_r; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_pm_r = io_victim_in_bits_entry_perm_pm_r; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_pm_w = io_victim_in_bits_entry_perm_pm_w; // @[TLBStorage.scala 300:26]
  assign entries_io_wdata_perm_pm_c = io_victim_in_bits_entry_perm_pm_c; // @[TLBStorage.scala 300:26]
  always @(posedge clock) begin
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      vpn_reg <= io_rreq_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (3'h7 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__0 <= v_resize__7_0; // @[TLBStorage.scala 261:30]
    end else if (3'h6 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__0 <= v_resize__6_0; // @[TLBStorage.scala 261:30]
    end else if (3'h5 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__0 <= v_resize__5_0; // @[TLBStorage.scala 261:30]
    end else if (3'h4 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__0 <= v_resize__4_0; // @[TLBStorage.scala 261:30]
    end else begin
      vidx_resize__0 <= _GEN_4;
    end
    if (3'h7 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__1 <= v_resize__7_1; // @[TLBStorage.scala 261:30]
    end else if (3'h6 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__1 <= v_resize__6_1; // @[TLBStorage.scala 261:30]
    end else if (3'h5 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__1 <= v_resize__5_1; // @[TLBStorage.scala 261:30]
    end else if (3'h4 == io_rreq_0_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize__1 <= v_resize__4_1; // @[TLBStorage.scala 261:30]
    end else begin
      vidx_resize__1 <= _GEN_12;
    end
    vidx_REG <= io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
    vidx_bypass <= entries_io_waddr == ridx & entries_io_wen; // @[TLBStorage.scala 263:59]
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      vpn_reg_1 <= io_rreq_1_bits_vpn; // @[Reg.scala 17:22]
    end
    if (3'h7 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_0 <= v_resize__7_0; // @[TLBStorage.scala 261:30]
    end else if (3'h6 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_0 <= v_resize__6_0; // @[TLBStorage.scala 261:30]
    end else if (3'h5 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_0 <= v_resize__5_0; // @[TLBStorage.scala 261:30]
    end else if (3'h4 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_0 <= v_resize__4_0; // @[TLBStorage.scala 261:30]
    end else begin
      vidx_resize_1_0 <= _GEN_23;
    end
    if (3'h7 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_1 <= v_resize__7_1; // @[TLBStorage.scala 261:30]
    end else if (3'h6 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_1 <= v_resize__6_1; // @[TLBStorage.scala 261:30]
    end else if (3'h5 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_1 <= v_resize__5_1; // @[TLBStorage.scala 261:30]
    end else if (3'h4 == io_rreq_1_bits_vpn[3:1]) begin // @[TLBStorage.scala 261:30]
      vidx_resize_1_1 <= v_resize__4_1; // @[TLBStorage.scala 261:30]
    end else begin
      vidx_resize_1_1 <= _GEN_31;
    end
    vidx_REG_1 <= io_rreq_1_ready & io_rreq_1_valid; // @[Decoupled.scala 50:35]
    vidx_bypass_1 <= entries_io_waddr == ridx_1 & entries_io_wen; // @[TLBStorage.scala 263:59]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_0_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_0_0 <= 1'h0;
      end else if (4'h0 == io_sfence_bits_addr[15:12]) begin
        v_0_0 <= 1'h0;
      end else begin
        v_0_0 <= _GEN_121;
      end
    end else begin
      v_0_0 <= _GEN_121;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_1_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_1_0 <= 1'h0;
      end else if (4'h1 == io_sfence_bits_addr[15:12]) begin
        v_1_0 <= 1'h0;
      end else begin
        v_1_0 <= _GEN_122;
      end
    end else begin
      v_1_0 <= _GEN_122;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_2_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_2_0 <= 1'h0;
      end else if (4'h2 == io_sfence_bits_addr[15:12]) begin
        v_2_0 <= 1'h0;
      end else begin
        v_2_0 <= _GEN_123;
      end
    end else begin
      v_2_0 <= _GEN_123;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_3_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_3_0 <= 1'h0;
      end else if (4'h3 == io_sfence_bits_addr[15:12]) begin
        v_3_0 <= 1'h0;
      end else begin
        v_3_0 <= _GEN_124;
      end
    end else begin
      v_3_0 <= _GEN_124;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_4_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_4_0 <= 1'h0;
      end else if (4'h4 == io_sfence_bits_addr[15:12]) begin
        v_4_0 <= 1'h0;
      end else begin
        v_4_0 <= _GEN_125;
      end
    end else begin
      v_4_0 <= _GEN_125;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_5_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_5_0 <= 1'h0;
      end else if (4'h5 == io_sfence_bits_addr[15:12]) begin
        v_5_0 <= 1'h0;
      end else begin
        v_5_0 <= _GEN_126;
      end
    end else begin
      v_5_0 <= _GEN_126;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_6_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_6_0 <= 1'h0;
      end else if (4'h6 == io_sfence_bits_addr[15:12]) begin
        v_6_0 <= 1'h0;
      end else begin
        v_6_0 <= _GEN_127;
      end
    end else begin
      v_6_0 <= _GEN_127;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_7_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_7_0 <= 1'h0;
      end else if (4'h7 == io_sfence_bits_addr[15:12]) begin
        v_7_0 <= 1'h0;
      end else begin
        v_7_0 <= _GEN_128;
      end
    end else begin
      v_7_0 <= _GEN_128;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_8_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_8_0 <= 1'h0;
      end else if (4'h8 == io_sfence_bits_addr[15:12]) begin
        v_8_0 <= 1'h0;
      end else begin
        v_8_0 <= _GEN_129;
      end
    end else begin
      v_8_0 <= _GEN_129;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_9_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_9_0 <= 1'h0;
      end else if (4'h9 == io_sfence_bits_addr[15:12]) begin
        v_9_0 <= 1'h0;
      end else begin
        v_9_0 <= _GEN_130;
      end
    end else begin
      v_9_0 <= _GEN_130;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_10_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_10_0 <= 1'h0;
      end else if (4'ha == io_sfence_bits_addr[15:12]) begin
        v_10_0 <= 1'h0;
      end else begin
        v_10_0 <= _GEN_131;
      end
    end else begin
      v_10_0 <= _GEN_131;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_11_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_11_0 <= 1'h0;
      end else if (4'hb == io_sfence_bits_addr[15:12]) begin
        v_11_0 <= 1'h0;
      end else begin
        v_11_0 <= _GEN_132;
      end
    end else begin
      v_11_0 <= _GEN_132;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_12_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_12_0 <= 1'h0;
      end else if (4'hc == io_sfence_bits_addr[15:12]) begin
        v_12_0 <= 1'h0;
      end else begin
        v_12_0 <= _GEN_133;
      end
    end else begin
      v_12_0 <= _GEN_133;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_13_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_13_0 <= 1'h0;
      end else if (4'hd == io_sfence_bits_addr[15:12]) begin
        v_13_0 <= 1'h0;
      end else begin
        v_13_0 <= _GEN_134;
      end
    end else begin
      v_13_0 <= _GEN_134;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_14_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_14_0 <= 1'h0;
      end else if (4'he == io_sfence_bits_addr[15:12]) begin
        v_14_0 <= 1'h0;
      end else begin
        v_14_0 <= _GEN_135;
      end
    end else begin
      v_14_0 <= _GEN_135;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 324:26]
      v_15_0 <= 1'h0; // @[TLBStorage.scala 325:28 326:33 329:{49,49}]
    end else if (io_sfence_valid) begin
      if (io_sfence_bits_rs1) begin
        v_15_0 <= 1'h0;
      end else if (4'hf == io_sfence_bits_addr[15:12]) begin
        v_15_0 <= 1'h0;
      end else begin
        v_15_0 <= _GEN_136;
      end
    end else begin
      v_15_0 <= _GEN_136;
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
  v_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  v_1_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  v_2_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  v_3_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  v_4_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  v_5_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  v_6_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  v_7_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  v_8_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  v_9_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  v_10_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  v_11_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  v_12_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  v_13_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  v_14_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  v_15_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  vpn_reg = _RAND_16[26:0];
  _RAND_17 = {1{`RANDOM}};
  vidx_resize__0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  vidx_resize__1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  vidx_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  vidx_bypass = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  vpn_reg_1 = _RAND_21[26:0];
  _RAND_22 = {1{`RANDOM}};
  vidx_resize_1_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  vidx_resize_1_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  vidx_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  vidx_bypass_1 = _RAND_25[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    v_0_0 = 1'h0;
  end
  if (reset) begin
    v_1_0 = 1'h0;
  end
  if (reset) begin
    v_2_0 = 1'h0;
  end
  if (reset) begin
    v_3_0 = 1'h0;
  end
  if (reset) begin
    v_4_0 = 1'h0;
  end
  if (reset) begin
    v_5_0 = 1'h0;
  end
  if (reset) begin
    v_6_0 = 1'h0;
  end
  if (reset) begin
    v_7_0 = 1'h0;
  end
  if (reset) begin
    v_8_0 = 1'h0;
  end
  if (reset) begin
    v_9_0 = 1'h0;
  end
  if (reset) begin
    v_10_0 = 1'h0;
  end
  if (reset) begin
    v_11_0 = 1'h0;
  end
  if (reset) begin
    v_12_0 = 1'h0;
  end
  if (reset) begin
    v_13_0 = 1'h0;
  end
  if (reset) begin
    v_14_0 = 1'h0;
  end
  if (reset) begin
    v_15_0 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

