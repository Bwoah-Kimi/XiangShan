module TLBFA(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [15:0] io_csr_satp_asid,
  output        io_rreq_0_ready,
  input         io_rreq_0_valid,
  input  [26:0] io_rreq_0_bits_vpn,
  output        io_rreq_1_ready,
  input         io_rreq_1_valid,
  input  [26:0] io_rreq_1_bits_vpn,
  output        io_rreq_3_ready,
  input         io_rreq_3_valid,
  input  [26:0] io_rreq_3_bits_vpn,
  output        io_rresp_0_valid,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn_0,
  output        io_rresp_0_bits_perm_0_pf,
  output        io_rresp_0_bits_perm_0_af,
  output        io_rresp_0_bits_perm_0_a,
  output        io_rresp_0_bits_perm_0_u,
  output        io_rresp_0_bits_perm_0_x,
  output        io_rresp_1_valid,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn_0,
  output        io_rresp_1_bits_perm_0_pf,
  output        io_rresp_1_bits_perm_0_af,
  output        io_rresp_1_bits_perm_0_a,
  output        io_rresp_1_bits_perm_0_u,
  output        io_rresp_1_bits_perm_0_x,
  output        io_rresp_3_valid,
  output        io_rresp_3_bits_hit,
  output [23:0] io_rresp_3_bits_ppn_0,
  output        io_rresp_3_bits_perm_0_pf,
  output        io_rresp_3_bits_perm_0_af,
  output        io_rresp_3_bits_perm_0_a,
  output        io_rresp_3_bits_perm_0_u,
  output        io_rresp_3_bits_perm_0_x,
  input         io_wvalid,
  input  [1:0]  io_wwayIdx,
  input  [23:0] io_wdata_entry_tag,
  input         io_wdata_entry_perm_d,
  input         io_wdata_entry_perm_a,
  input         io_wdata_entry_perm_g,
  input         io_wdata_entry_perm_u,
  input         io_wdata_entry_perm_x,
  input         io_wdata_entry_perm_w,
  input         io_wdata_entry_perm_r,
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
  input         io_wdata_af,
  output        io_access_0_touch_ways_valid,
  output [1:0]  io_access_0_touch_ways_bits,
  output        io_access_1_touch_ways_valid,
  output [1:0]  io_access_1_touch_ways_bits,
  output        io_access_2_touch_ways_valid,
  output [1:0]  io_access_2_touch_ways_bits,
  output        io_access_3_touch_ways_valid,
  output [1:0]  io_access_3_touch_ways_bits
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
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
`endif // RANDOMIZE_REG_INIT
  reg  v_0; // @[TLBStorage.scala 100:18]
  reg  v_1; // @[TLBStorage.scala 100:18]
  reg  v_2; // @[TLBStorage.scala 100:18]
  reg  v_3; // @[TLBStorage.scala 100:18]
  reg [23:0] entries_0_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_0_asid; // @[TLBStorage.scala 101:20]
  reg [20:0] entries_0_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_r; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_0; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_1; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_2; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_3; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_4; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_5; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_6; // @[TLBStorage.scala 101:20]
  reg  entries_0_valididx_7; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_0; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_1; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_2; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_3; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_4; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_5; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_6; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_0_ppn_low_7; // @[TLBStorage.scala 101:20]
  reg [23:0] entries_1_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_1_asid; // @[TLBStorage.scala 101:20]
  reg [20:0] entries_1_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_r; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_0; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_1; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_2; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_3; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_4; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_5; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_6; // @[TLBStorage.scala 101:20]
  reg  entries_1_valididx_7; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_0; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_1; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_2; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_3; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_4; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_5; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_6; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_1_ppn_low_7; // @[TLBStorage.scala 101:20]
  reg [23:0] entries_2_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_2_asid; // @[TLBStorage.scala 101:20]
  reg [20:0] entries_2_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_2_perm_r; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_0; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_1; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_2; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_3; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_4; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_5; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_6; // @[TLBStorage.scala 101:20]
  reg  entries_2_valididx_7; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_0; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_1; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_2; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_3; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_4; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_5; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_6; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_2_ppn_low_7; // @[TLBStorage.scala 101:20]
  reg [23:0] entries_3_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_3_asid; // @[TLBStorage.scala 101:20]
  reg [20:0] entries_3_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_3_perm_r; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_0; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_1; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_2; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_3; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_4; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_5; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_6; // @[TLBStorage.scala 101:20]
  reg  entries_3_valididx_7; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_0; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_1; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_2; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_3; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_4; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_5; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_6; // @[TLBStorage.scala 101:20]
  reg [2:0] entries_3_ppn_low_7; // @[TLBStorage.scala 101:20]
  wire  _vpn_reg_T = io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg; // @[Reg.scala 16:16]
  wire [3:0] _refill_mask_T = 4'h1 << io_wwayIdx; // @[OneHot.scala 57:35]
  wire [3:0] refill_mask = io_wvalid ? _refill_mask_T : 4'h0; // @[TLBStorage.scala 113:26]
  wire  hitVec_asid_hit = entries_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 291:59]
  wire  _hitVec_T_7 = io_rreq_0_bits_vpn[26:3] == entries_0_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_2 = 3'h1 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_1 : entries_0_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_3 = 3'h2 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_2 : _GEN_2; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_4 = 3'h3 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_3 : _GEN_3; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_5 = 3'h4 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_4 : _GEN_4; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_6 = 3'h5 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_5 : _GEN_5; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_7 = 3'h6 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_6 : _GEN_6; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_8 = 3'h7 == io_rreq_0_bits_vpn[2:0] ? entries_0_valididx_7 : _GEN_7; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_9 = hitVec_asid_hit & _hitVec_T_7 & _GEN_8; // @[MMUBundle.scala 296:99]
  wire  hitVec__0 = _hitVec_T_9 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  hitVec_asid_hit_1 = entries_1_asid == io_csr_satp_asid; // @[MMUBundle.scala 291:59]
  wire  _hitVec_T_16 = io_rreq_0_bits_vpn[26:3] == entries_1_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_10 = 3'h1 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_1 : entries_1_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_11 = 3'h2 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_2 : _GEN_10; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_12 = 3'h3 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_3 : _GEN_11; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_13 = 3'h4 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_4 : _GEN_12; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_14 = 3'h5 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_5 : _GEN_13; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_15 = 3'h6 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_6 : _GEN_14; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_16 = 3'h7 == io_rreq_0_bits_vpn[2:0] ? entries_1_valididx_7 : _GEN_15; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_18 = hitVec_asid_hit_1 & _hitVec_T_16 & _GEN_16; // @[MMUBundle.scala 296:99]
  wire  hitVec__1 = _hitVec_T_18 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  wire  hitVec_asid_hit_2 = entries_2_asid == io_csr_satp_asid; // @[MMUBundle.scala 291:59]
  wire  _hitVec_T_25 = io_rreq_0_bits_vpn[26:3] == entries_2_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_18 = 3'h1 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_1 : entries_2_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_19 = 3'h2 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_2 : _GEN_18; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_20 = 3'h3 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_3 : _GEN_19; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_21 = 3'h4 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_4 : _GEN_20; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_22 = 3'h5 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_5 : _GEN_21; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_23 = 3'h6 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_6 : _GEN_22; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_24 = 3'h7 == io_rreq_0_bits_vpn[2:0] ? entries_2_valididx_7 : _GEN_23; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_27 = hitVec_asid_hit_2 & _hitVec_T_25 & _GEN_24; // @[MMUBundle.scala 296:99]
  wire  hitVec__2 = _hitVec_T_27 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 114:139]
  wire  hitVec_asid_hit_3 = entries_3_asid == io_csr_satp_asid; // @[MMUBundle.scala 291:59]
  wire  _hitVec_T_34 = io_rreq_0_bits_vpn[26:3] == entries_3_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_26 = 3'h1 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_1 : entries_3_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_27 = 3'h2 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_2 : _GEN_26; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_28 = 3'h3 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_3 : _GEN_27; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_29 = 3'h4 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_4 : _GEN_28; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_30 = 3'h5 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_5 : _GEN_29; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_31 = 3'h6 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_6 : _GEN_30; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_32 = 3'h7 == io_rreq_0_bits_vpn[2:0] ? entries_3_valididx_7 : _GEN_31; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_36 = hitVec_asid_hit_3 & _hitVec_T_34 & _GEN_32; // @[MMUBundle.scala 296:99]
  wire  hitVec__3 = _hitVec_T_36 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg__0; // @[Reg.scala 16:16]
  reg  hitVecReg__1; // @[Reg.scala 16:16]
  reg  hitVecReg__2; // @[Reg.scala 16:16]
  reg  hitVecReg__3; // @[Reg.scala 16:16]
  reg  io_rresp_0_valid_REG; // @[TLBStorage.scala 123:26]
  wire [3:0] _io_rresp_0_bits_hit_T = {hitVecReg__0,hitVecReg__1,hitVecReg__2,hitVecReg__3}; // @[Cat.scala 31:58]
  wire  _io_rresp_0_bits_hit_T_1 = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 124:37]
  wire [2:0] _GEN_38 = 3'h1 == vpn_reg[2:0] ? entries_0_ppn_low_1 : entries_0_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_39 = 3'h2 == vpn_reg[2:0] ? entries_0_ppn_low_2 : _GEN_38; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_40 = 3'h3 == vpn_reg[2:0] ? entries_0_ppn_low_3 : _GEN_39; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_41 = 3'h4 == vpn_reg[2:0] ? entries_0_ppn_low_4 : _GEN_40; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_42 = 3'h5 == vpn_reg[2:0] ? entries_0_ppn_low_5 : _GEN_41; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_43 = 3'h6 == vpn_reg[2:0] ? entries_0_ppn_low_6 : _GEN_42; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_44 = 3'h7 == vpn_reg[2:0] ? entries_0_ppn_low_7 : _GEN_43; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res = {entries_0_ppn,_GEN_44}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_46 = 3'h1 == vpn_reg[2:0] ? entries_1_ppn_low_1 : entries_1_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_47 = 3'h2 == vpn_reg[2:0] ? entries_1_ppn_low_2 : _GEN_46; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_48 = 3'h3 == vpn_reg[2:0] ? entries_1_ppn_low_3 : _GEN_47; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_49 = 3'h4 == vpn_reg[2:0] ? entries_1_ppn_low_4 : _GEN_48; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_50 = 3'h5 == vpn_reg[2:0] ? entries_1_ppn_low_5 : _GEN_49; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_51 = 3'h6 == vpn_reg[2:0] ? entries_1_ppn_low_6 : _GEN_50; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_52 = 3'h7 == vpn_reg[2:0] ? entries_1_ppn_low_7 : _GEN_51; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res_1 = {entries_1_ppn,_GEN_52}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_54 = 3'h1 == vpn_reg[2:0] ? entries_2_ppn_low_1 : entries_2_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_55 = 3'h2 == vpn_reg[2:0] ? entries_2_ppn_low_2 : _GEN_54; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_56 = 3'h3 == vpn_reg[2:0] ? entries_2_ppn_low_3 : _GEN_55; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_57 = 3'h4 == vpn_reg[2:0] ? entries_2_ppn_low_4 : _GEN_56; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_58 = 3'h5 == vpn_reg[2:0] ? entries_2_ppn_low_5 : _GEN_57; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_59 = 3'h6 == vpn_reg[2:0] ? entries_2_ppn_low_6 : _GEN_58; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_60 = 3'h7 == vpn_reg[2:0] ? entries_2_ppn_low_7 : _GEN_59; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res_2 = {entries_2_ppn,_GEN_60}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_62 = 3'h1 == vpn_reg[2:0] ? entries_3_ppn_low_1 : entries_3_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_63 = 3'h2 == vpn_reg[2:0] ? entries_3_ppn_low_2 : _GEN_62; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_64 = 3'h3 == vpn_reg[2:0] ? entries_3_ppn_low_3 : _GEN_63; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_65 = 3'h4 == vpn_reg[2:0] ? entries_3_ppn_low_4 : _GEN_64; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_66 = 3'h5 == vpn_reg[2:0] ? entries_3_ppn_low_5 : _GEN_65; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_67 = 3'h6 == vpn_reg[2:0] ? entries_3_ppn_low_6 : _GEN_66; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_68 = 3'h7 == vpn_reg[2:0] ? entries_3_ppn_low_7 : _GEN_67; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res_3 = {entries_3_ppn,_GEN_68}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_0 = hitVecReg__0 ? io_rresp_0_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_1 = hitVecReg__1 ? io_rresp_0_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_2 = hitVecReg__2 ? io_rresp_0_bits_ppn_0_ppn_res_2 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_3 = hitVecReg__3 ? io_rresp_0_bits_ppn_0_ppn_res_3 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] _io_rresp_0_bits_ppn_0_T = io_rresp_0_bits_ppn_0_xs_0 | io_rresp_0_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  wire [23:0] _io_rresp_0_bits_ppn_0_T_1 = io_rresp_0_bits_ppn_0_xs_2 | io_rresp_0_bits_ppn_0_xs_3; // @[ParallelMux.scala 36:53]
  wire  io_rresp_0_bits_perm_0_xs_0_pf = hitVecReg__0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_af = hitVecReg__0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_d = hitVecReg__0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_a = hitVecReg__0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_g = hitVecReg__0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_u = hitVecReg__0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_x = hitVecReg__0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_w = hitVecReg__0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_r = hitVecReg__0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_pf = hitVecReg__1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_af = hitVecReg__1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_d = hitVecReg__1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_a = hitVecReg__1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_g = hitVecReg__1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_u = hitVecReg__1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_x = hitVecReg__1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_w = hitVecReg__1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_r = hitVecReg__1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_pf = hitVecReg__2 & entries_2_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_af = hitVecReg__2 & entries_2_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_d = hitVecReg__2 & entries_2_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_a = hitVecReg__2 & entries_2_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_g = hitVecReg__2 & entries_2_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_u = hitVecReg__2 & entries_2_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_x = hitVecReg__2 & entries_2_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_w = hitVecReg__2 & entries_2_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_2_r = hitVecReg__2 & entries_2_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_pf = hitVecReg__3 & entries_3_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_af = hitVecReg__3 & entries_3_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_d = hitVecReg__3 & entries_3_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_a = hitVecReg__3 & entries_3_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_g = hitVecReg__3 & entries_3_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_u = hitVecReg__3 & entries_3_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_x = hitVecReg__3 & entries_3_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_w = hitVecReg__3 & entries_3_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_3_r = hitVecReg__3 & entries_3_perm_r; // @[ParallelMux.scala 64:44]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo = {io_rresp_0_bits_perm_0_xs_0_w,io_rresp_0_bits_perm_0_xs_0_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_0_bits_perm_0_T = {io_rresp_0_bits_perm_0_xs_0_pf,io_rresp_0_bits_perm_0_xs_0_af,
    io_rresp_0_bits_perm_0_xs_0_d,io_rresp_0_bits_perm_0_xs_0_a,io_rresp_0_bits_perm_0_xs_0_g,
    io_rresp_0_bits_perm_0_xs_0_u,io_rresp_0_bits_perm_0_xs_0_x,io_rresp_0_bits_perm_0_hi_hi_lo,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo_1 = {io_rresp_0_bits_perm_0_xs_1_w,io_rresp_0_bits_perm_0_xs_1_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_1 = {io_rresp_0_bits_perm_0_xs_1_pf,io_rresp_0_bits_perm_0_xs_1_af,
    io_rresp_0_bits_perm_0_xs_1_d,io_rresp_0_bits_perm_0_xs_1_a,io_rresp_0_bits_perm_0_xs_1_g,
    io_rresp_0_bits_perm_0_xs_1_u,io_rresp_0_bits_perm_0_xs_1_x,io_rresp_0_bits_perm_0_hi_hi_lo_1,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_2 = _io_rresp_0_bits_perm_0_T | _io_rresp_0_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo_2 = {io_rresp_0_bits_perm_0_xs_2_w,io_rresp_0_bits_perm_0_xs_2_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_0_bits_perm_0_T_52 = {io_rresp_0_bits_perm_0_xs_2_pf,io_rresp_0_bits_perm_0_xs_2_af,
    io_rresp_0_bits_perm_0_xs_2_d,io_rresp_0_bits_perm_0_xs_2_a,io_rresp_0_bits_perm_0_xs_2_g,
    io_rresp_0_bits_perm_0_xs_2_u,io_rresp_0_bits_perm_0_xs_2_x,io_rresp_0_bits_perm_0_hi_hi_lo_2,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo_3 = {io_rresp_0_bits_perm_0_xs_3_w,io_rresp_0_bits_perm_0_xs_3_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_53 = {io_rresp_0_bits_perm_0_xs_3_pf,io_rresp_0_bits_perm_0_xs_3_af,
    io_rresp_0_bits_perm_0_xs_3_d,io_rresp_0_bits_perm_0_xs_3_a,io_rresp_0_bits_perm_0_xs_3_g,
    io_rresp_0_bits_perm_0_xs_3_u,io_rresp_0_bits_perm_0_xs_3_x,io_rresp_0_bits_perm_0_hi_hi_lo_3,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_54 = _io_rresp_0_bits_perm_0_T_52 | _io_rresp_0_bits_perm_0_T_53; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_0_bits_perm_0_lo_lo_lo_4 = {_io_rresp_0_bits_perm_0_T_2[5],_io_rresp_0_bits_perm_0_T_2[4],
    _io_rresp_0_bits_perm_0_T_2[3],_io_rresp_0_bits_perm_0_T_2[2],_io_rresp_0_bits_perm_0_T_2[1],
    _io_rresp_0_bits_perm_0_T_2[0]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_0_bits_perm_0_lo_lo_4 = {_io_rresp_0_bits_perm_0_T_2[11],_io_rresp_0_bits_perm_0_T_2[10],
    _io_rresp_0_bits_perm_0_T_2[9],_io_rresp_0_bits_perm_0_T_2[8],_io_rresp_0_bits_perm_0_T_2[7],
    _io_rresp_0_bits_perm_0_T_2[6],io_rresp_0_bits_perm_0_lo_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_lo_hi_lo_4 = {_io_rresp_0_bits_perm_0_T_2[17],_io_rresp_0_bits_perm_0_T_2[16],
    _io_rresp_0_bits_perm_0_T_2[15],_io_rresp_0_bits_perm_0_T_2[14],_io_rresp_0_bits_perm_0_T_2[13],
    _io_rresp_0_bits_perm_0_T_2[12]}; // @[ParallelMux.scala 36:46]
  wire [23:0] io_rresp_0_bits_perm_0_lo_4 = {_io_rresp_0_bits_perm_0_T_2[23],_io_rresp_0_bits_perm_0_T_2[22],
    _io_rresp_0_bits_perm_0_T_2[21],_io_rresp_0_bits_perm_0_T_2[20],_io_rresp_0_bits_perm_0_T_2[19],
    _io_rresp_0_bits_perm_0_T_2[18],io_rresp_0_bits_perm_0_lo_hi_lo_4,io_rresp_0_bits_perm_0_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_hi_lo_lo_4 = {_io_rresp_0_bits_perm_0_T_2[29],_io_rresp_0_bits_perm_0_T_2[28],
    _io_rresp_0_bits_perm_0_T_2[27],_io_rresp_0_bits_perm_0_T_2[26],_io_rresp_0_bits_perm_0_T_2[25],
    _io_rresp_0_bits_perm_0_T_2[24]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_0_bits_perm_0_hi_lo_4 = {_io_rresp_0_bits_perm_0_T_2[35],_io_rresp_0_bits_perm_0_T_2[34],
    _io_rresp_0_bits_perm_0_T_2[33],_io_rresp_0_bits_perm_0_T_2[32],_io_rresp_0_bits_perm_0_T_2[31],
    _io_rresp_0_bits_perm_0_T_2[30],io_rresp_0_bits_perm_0_hi_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo_4 = {_io_rresp_0_bits_perm_0_T_2[41],_io_rresp_0_bits_perm_0_T_2[40],
    _io_rresp_0_bits_perm_0_T_2[39],_io_rresp_0_bits_perm_0_T_2[38],_io_rresp_0_bits_perm_0_T_2[37],
    _io_rresp_0_bits_perm_0_T_2[36]}; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_0_bits_perm_0_T_104 = {_io_rresp_0_bits_perm_0_T_2[48],_io_rresp_0_bits_perm_0_T_2[47],
    _io_rresp_0_bits_perm_0_T_2[46],_io_rresp_0_bits_perm_0_T_2[45],_io_rresp_0_bits_perm_0_T_2[44],
    _io_rresp_0_bits_perm_0_T_2[43],_io_rresp_0_bits_perm_0_T_2[42],io_rresp_0_bits_perm_0_hi_hi_lo_4,
    io_rresp_0_bits_perm_0_hi_lo_4,io_rresp_0_bits_perm_0_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_0_bits_perm_0_lo_lo_lo_5 = {_io_rresp_0_bits_perm_0_T_54[5],_io_rresp_0_bits_perm_0_T_54[4],
    _io_rresp_0_bits_perm_0_T_54[3],_io_rresp_0_bits_perm_0_T_54[2],_io_rresp_0_bits_perm_0_T_54[1],
    _io_rresp_0_bits_perm_0_T_54[0]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_0_bits_perm_0_lo_lo_5 = {_io_rresp_0_bits_perm_0_T_54[11],_io_rresp_0_bits_perm_0_T_54[10],
    _io_rresp_0_bits_perm_0_T_54[9],_io_rresp_0_bits_perm_0_T_54[8],_io_rresp_0_bits_perm_0_T_54[7],
    _io_rresp_0_bits_perm_0_T_54[6],io_rresp_0_bits_perm_0_lo_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_0_bits_perm_0_lo_hi_lo_5 = {_io_rresp_0_bits_perm_0_T_54[17],_io_rresp_0_bits_perm_0_T_54[16],
    _io_rresp_0_bits_perm_0_T_54[15],_io_rresp_0_bits_perm_0_T_54[14],_io_rresp_0_bits_perm_0_T_54[13],
    _io_rresp_0_bits_perm_0_T_54[12]}; // @[ParallelMux.scala 36:57]
  wire [23:0] io_rresp_0_bits_perm_0_lo_5 = {_io_rresp_0_bits_perm_0_T_54[23],_io_rresp_0_bits_perm_0_T_54[22],
    _io_rresp_0_bits_perm_0_T_54[21],_io_rresp_0_bits_perm_0_T_54[20],_io_rresp_0_bits_perm_0_T_54[19],
    _io_rresp_0_bits_perm_0_T_54[18],io_rresp_0_bits_perm_0_lo_hi_lo_5,io_rresp_0_bits_perm_0_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_0_bits_perm_0_hi_lo_lo_5 = {_io_rresp_0_bits_perm_0_T_54[29],_io_rresp_0_bits_perm_0_T_54[28],
    _io_rresp_0_bits_perm_0_T_54[27],_io_rresp_0_bits_perm_0_T_54[26],_io_rresp_0_bits_perm_0_T_54[25],
    _io_rresp_0_bits_perm_0_T_54[24]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_0_bits_perm_0_hi_lo_5 = {_io_rresp_0_bits_perm_0_T_54[35],_io_rresp_0_bits_perm_0_T_54[34],
    _io_rresp_0_bits_perm_0_T_54[33],_io_rresp_0_bits_perm_0_T_54[32],_io_rresp_0_bits_perm_0_T_54[31],
    _io_rresp_0_bits_perm_0_T_54[30],io_rresp_0_bits_perm_0_hi_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_0_bits_perm_0_hi_hi_lo_5 = {_io_rresp_0_bits_perm_0_T_54[41],_io_rresp_0_bits_perm_0_T_54[40],
    _io_rresp_0_bits_perm_0_T_54[39],_io_rresp_0_bits_perm_0_T_54[38],_io_rresp_0_bits_perm_0_T_54[37],
    _io_rresp_0_bits_perm_0_T_54[36]}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_105 = {_io_rresp_0_bits_perm_0_T_54[48],_io_rresp_0_bits_perm_0_T_54[47],
    _io_rresp_0_bits_perm_0_T_54[46],_io_rresp_0_bits_perm_0_T_54[45],_io_rresp_0_bits_perm_0_T_54[44],
    _io_rresp_0_bits_perm_0_T_54[43],_io_rresp_0_bits_perm_0_T_54[42],io_rresp_0_bits_perm_0_hi_hi_lo_5,
    io_rresp_0_bits_perm_0_hi_lo_5,io_rresp_0_bits_perm_0_lo_5}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_0_bits_perm_0_T_106 = _io_rresp_0_bits_perm_0_T_104 | _io_rresp_0_bits_perm_0_T_105; // @[ParallelMux.scala 36:53]
  wire [3:0] _io_access_0_touch_ways_bits_T = {hitVecReg__3,hitVecReg__2,hitVecReg__1,hitVecReg__0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_0_touch_ways_bits_hi_1 = _io_access_0_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_0_touch_ways_bits_lo_1 = _io_access_0_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_0_touch_ways_bits_T_1 = |io_access_0_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_0_touch_ways_bits_T_2 = io_access_0_touch_ways_bits_hi_1 | io_access_0_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_0_touch_ways_bits_T_4 = {_io_access_0_touch_ways_bits_T_1,_io_access_0_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_1 = io_rreq_1_ready & io_rreq_1_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_1; // @[Reg.scala 16:16]
  wire  _hitVec_T_47 = io_rreq_1_bits_vpn[26:3] == entries_0_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_71 = 3'h1 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_1 : entries_0_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_72 = 3'h2 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_2 : _GEN_71; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_73 = 3'h3 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_3 : _GEN_72; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_74 = 3'h4 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_4 : _GEN_73; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_75 = 3'h5 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_5 : _GEN_74; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_76 = 3'h6 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_6 : _GEN_75; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_77 = 3'h7 == io_rreq_1_bits_vpn[2:0] ? entries_0_valididx_7 : _GEN_76; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_49 = hitVec_asid_hit & _hitVec_T_47 & _GEN_77; // @[MMUBundle.scala 296:99]
  wire  hitVec_1_0 = _hitVec_T_49 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_56 = io_rreq_1_bits_vpn[26:3] == entries_1_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_79 = 3'h1 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_1 : entries_1_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_80 = 3'h2 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_2 : _GEN_79; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_81 = 3'h3 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_3 : _GEN_80; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_82 = 3'h4 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_4 : _GEN_81; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_83 = 3'h5 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_5 : _GEN_82; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_84 = 3'h6 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_6 : _GEN_83; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_85 = 3'h7 == io_rreq_1_bits_vpn[2:0] ? entries_1_valididx_7 : _GEN_84; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_58 = hitVec_asid_hit_1 & _hitVec_T_56 & _GEN_85; // @[MMUBundle.scala 296:99]
  wire  hitVec_1_1 = _hitVec_T_58 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_65 = io_rreq_1_bits_vpn[26:3] == entries_2_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_87 = 3'h1 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_1 : entries_2_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_88 = 3'h2 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_2 : _GEN_87; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_89 = 3'h3 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_3 : _GEN_88; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_90 = 3'h4 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_4 : _GEN_89; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_91 = 3'h5 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_5 : _GEN_90; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_92 = 3'h6 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_6 : _GEN_91; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_93 = 3'h7 == io_rreq_1_bits_vpn[2:0] ? entries_2_valididx_7 : _GEN_92; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_67 = hitVec_asid_hit_2 & _hitVec_T_65 & _GEN_93; // @[MMUBundle.scala 296:99]
  wire  hitVec_1_2 = _hitVec_T_67 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_74 = io_rreq_1_bits_vpn[26:3] == entries_3_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_95 = 3'h1 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_1 : entries_3_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_96 = 3'h2 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_2 : _GEN_95; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_97 = 3'h3 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_3 : _GEN_96; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_98 = 3'h4 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_4 : _GEN_97; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_99 = 3'h5 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_5 : _GEN_98; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_100 = 3'h6 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_6 : _GEN_99; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_101 = 3'h7 == io_rreq_1_bits_vpn[2:0] ? entries_3_valididx_7 : _GEN_100; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_76 = hitVec_asid_hit_3 & _hitVec_T_74 & _GEN_101; // @[MMUBundle.scala 296:99]
  wire  hitVec_1_3 = _hitVec_T_76 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg_1_0; // @[Reg.scala 16:16]
  reg  hitVecReg_1_1; // @[Reg.scala 16:16]
  reg  hitVecReg_1_2; // @[Reg.scala 16:16]
  reg  hitVecReg_1_3; // @[Reg.scala 16:16]
  reg  io_rresp_1_valid_REG; // @[TLBStorage.scala 123:26]
  wire [3:0] _io_rresp_1_bits_hit_T = {hitVecReg_1_0,hitVecReg_1_1,hitVecReg_1_2,hitVecReg_1_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_1_bits_hit_T_1 = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 124:37]
  wire [2:0] _GEN_107 = 3'h1 == vpn_reg_1[2:0] ? entries_0_ppn_low_1 : entries_0_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_108 = 3'h2 == vpn_reg_1[2:0] ? entries_0_ppn_low_2 : _GEN_107; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_109 = 3'h3 == vpn_reg_1[2:0] ? entries_0_ppn_low_3 : _GEN_108; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_110 = 3'h4 == vpn_reg_1[2:0] ? entries_0_ppn_low_4 : _GEN_109; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_111 = 3'h5 == vpn_reg_1[2:0] ? entries_0_ppn_low_5 : _GEN_110; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_112 = 3'h6 == vpn_reg_1[2:0] ? entries_0_ppn_low_6 : _GEN_111; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_113 = 3'h7 == vpn_reg_1[2:0] ? entries_0_ppn_low_7 : _GEN_112; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res = {entries_0_ppn,_GEN_113}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_115 = 3'h1 == vpn_reg_1[2:0] ? entries_1_ppn_low_1 : entries_1_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_116 = 3'h2 == vpn_reg_1[2:0] ? entries_1_ppn_low_2 : _GEN_115; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_117 = 3'h3 == vpn_reg_1[2:0] ? entries_1_ppn_low_3 : _GEN_116; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_118 = 3'h4 == vpn_reg_1[2:0] ? entries_1_ppn_low_4 : _GEN_117; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_119 = 3'h5 == vpn_reg_1[2:0] ? entries_1_ppn_low_5 : _GEN_118; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_120 = 3'h6 == vpn_reg_1[2:0] ? entries_1_ppn_low_6 : _GEN_119; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_121 = 3'h7 == vpn_reg_1[2:0] ? entries_1_ppn_low_7 : _GEN_120; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res_1 = {entries_1_ppn,_GEN_121}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_123 = 3'h1 == vpn_reg_1[2:0] ? entries_2_ppn_low_1 : entries_2_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_124 = 3'h2 == vpn_reg_1[2:0] ? entries_2_ppn_low_2 : _GEN_123; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_125 = 3'h3 == vpn_reg_1[2:0] ? entries_2_ppn_low_3 : _GEN_124; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_126 = 3'h4 == vpn_reg_1[2:0] ? entries_2_ppn_low_4 : _GEN_125; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_127 = 3'h5 == vpn_reg_1[2:0] ? entries_2_ppn_low_5 : _GEN_126; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_128 = 3'h6 == vpn_reg_1[2:0] ? entries_2_ppn_low_6 : _GEN_127; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_129 = 3'h7 == vpn_reg_1[2:0] ? entries_2_ppn_low_7 : _GEN_128; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res_2 = {entries_2_ppn,_GEN_129}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_131 = 3'h1 == vpn_reg_1[2:0] ? entries_3_ppn_low_1 : entries_3_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_132 = 3'h2 == vpn_reg_1[2:0] ? entries_3_ppn_low_2 : _GEN_131; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_133 = 3'h3 == vpn_reg_1[2:0] ? entries_3_ppn_low_3 : _GEN_132; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_134 = 3'h4 == vpn_reg_1[2:0] ? entries_3_ppn_low_4 : _GEN_133; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_135 = 3'h5 == vpn_reg_1[2:0] ? entries_3_ppn_low_5 : _GEN_134; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_136 = 3'h6 == vpn_reg_1[2:0] ? entries_3_ppn_low_6 : _GEN_135; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_137 = 3'h7 == vpn_reg_1[2:0] ? entries_3_ppn_low_7 : _GEN_136; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res_3 = {entries_3_ppn,_GEN_137}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_0 = hitVecReg_1_0 ? io_rresp_1_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_1 = hitVecReg_1_1 ? io_rresp_1_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_2 = hitVecReg_1_2 ? io_rresp_1_bits_ppn_0_ppn_res_2 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_3 = hitVecReg_1_3 ? io_rresp_1_bits_ppn_0_ppn_res_3 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] _io_rresp_1_bits_ppn_0_T = io_rresp_1_bits_ppn_0_xs_0 | io_rresp_1_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  wire [23:0] _io_rresp_1_bits_ppn_0_T_1 = io_rresp_1_bits_ppn_0_xs_2 | io_rresp_1_bits_ppn_0_xs_3; // @[ParallelMux.scala 36:53]
  wire  io_rresp_1_bits_perm_0_xs_0_pf = hitVecReg_1_0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_af = hitVecReg_1_0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_d = hitVecReg_1_0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_a = hitVecReg_1_0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_g = hitVecReg_1_0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_u = hitVecReg_1_0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_x = hitVecReg_1_0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_w = hitVecReg_1_0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_r = hitVecReg_1_0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_pf = hitVecReg_1_1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_af = hitVecReg_1_1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_d = hitVecReg_1_1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_a = hitVecReg_1_1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_g = hitVecReg_1_1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_u = hitVecReg_1_1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_x = hitVecReg_1_1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_w = hitVecReg_1_1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_r = hitVecReg_1_1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_pf = hitVecReg_1_2 & entries_2_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_af = hitVecReg_1_2 & entries_2_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_d = hitVecReg_1_2 & entries_2_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_a = hitVecReg_1_2 & entries_2_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_g = hitVecReg_1_2 & entries_2_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_u = hitVecReg_1_2 & entries_2_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_x = hitVecReg_1_2 & entries_2_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_w = hitVecReg_1_2 & entries_2_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_2_r = hitVecReg_1_2 & entries_2_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_pf = hitVecReg_1_3 & entries_3_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_af = hitVecReg_1_3 & entries_3_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_d = hitVecReg_1_3 & entries_3_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_a = hitVecReg_1_3 & entries_3_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_g = hitVecReg_1_3 & entries_3_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_u = hitVecReg_1_3 & entries_3_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_x = hitVecReg_1_3 & entries_3_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_w = hitVecReg_1_3 & entries_3_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_3_r = hitVecReg_1_3 & entries_3_perm_r; // @[ParallelMux.scala 64:44]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo = {io_rresp_1_bits_perm_0_xs_0_w,io_rresp_1_bits_perm_0_xs_0_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_1_bits_perm_0_T = {io_rresp_1_bits_perm_0_xs_0_pf,io_rresp_1_bits_perm_0_xs_0_af,
    io_rresp_1_bits_perm_0_xs_0_d,io_rresp_1_bits_perm_0_xs_0_a,io_rresp_1_bits_perm_0_xs_0_g,
    io_rresp_1_bits_perm_0_xs_0_u,io_rresp_1_bits_perm_0_xs_0_x,io_rresp_1_bits_perm_0_hi_hi_lo,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo_1 = {io_rresp_1_bits_perm_0_xs_1_w,io_rresp_1_bits_perm_0_xs_1_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_1 = {io_rresp_1_bits_perm_0_xs_1_pf,io_rresp_1_bits_perm_0_xs_1_af,
    io_rresp_1_bits_perm_0_xs_1_d,io_rresp_1_bits_perm_0_xs_1_a,io_rresp_1_bits_perm_0_xs_1_g,
    io_rresp_1_bits_perm_0_xs_1_u,io_rresp_1_bits_perm_0_xs_1_x,io_rresp_1_bits_perm_0_hi_hi_lo_1,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_2 = _io_rresp_1_bits_perm_0_T | _io_rresp_1_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo_2 = {io_rresp_1_bits_perm_0_xs_2_w,io_rresp_1_bits_perm_0_xs_2_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_1_bits_perm_0_T_52 = {io_rresp_1_bits_perm_0_xs_2_pf,io_rresp_1_bits_perm_0_xs_2_af,
    io_rresp_1_bits_perm_0_xs_2_d,io_rresp_1_bits_perm_0_xs_2_a,io_rresp_1_bits_perm_0_xs_2_g,
    io_rresp_1_bits_perm_0_xs_2_u,io_rresp_1_bits_perm_0_xs_2_x,io_rresp_1_bits_perm_0_hi_hi_lo_2,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo_3 = {io_rresp_1_bits_perm_0_xs_3_w,io_rresp_1_bits_perm_0_xs_3_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_53 = {io_rresp_1_bits_perm_0_xs_3_pf,io_rresp_1_bits_perm_0_xs_3_af,
    io_rresp_1_bits_perm_0_xs_3_d,io_rresp_1_bits_perm_0_xs_3_a,io_rresp_1_bits_perm_0_xs_3_g,
    io_rresp_1_bits_perm_0_xs_3_u,io_rresp_1_bits_perm_0_xs_3_x,io_rresp_1_bits_perm_0_hi_hi_lo_3,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_54 = _io_rresp_1_bits_perm_0_T_52 | _io_rresp_1_bits_perm_0_T_53; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_1_bits_perm_0_lo_lo_lo_4 = {_io_rresp_1_bits_perm_0_T_2[5],_io_rresp_1_bits_perm_0_T_2[4],
    _io_rresp_1_bits_perm_0_T_2[3],_io_rresp_1_bits_perm_0_T_2[2],_io_rresp_1_bits_perm_0_T_2[1],
    _io_rresp_1_bits_perm_0_T_2[0]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_1_bits_perm_0_lo_lo_4 = {_io_rresp_1_bits_perm_0_T_2[11],_io_rresp_1_bits_perm_0_T_2[10],
    _io_rresp_1_bits_perm_0_T_2[9],_io_rresp_1_bits_perm_0_T_2[8],_io_rresp_1_bits_perm_0_T_2[7],
    _io_rresp_1_bits_perm_0_T_2[6],io_rresp_1_bits_perm_0_lo_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_lo_hi_lo_4 = {_io_rresp_1_bits_perm_0_T_2[17],_io_rresp_1_bits_perm_0_T_2[16],
    _io_rresp_1_bits_perm_0_T_2[15],_io_rresp_1_bits_perm_0_T_2[14],_io_rresp_1_bits_perm_0_T_2[13],
    _io_rresp_1_bits_perm_0_T_2[12]}; // @[ParallelMux.scala 36:46]
  wire [23:0] io_rresp_1_bits_perm_0_lo_4 = {_io_rresp_1_bits_perm_0_T_2[23],_io_rresp_1_bits_perm_0_T_2[22],
    _io_rresp_1_bits_perm_0_T_2[21],_io_rresp_1_bits_perm_0_T_2[20],_io_rresp_1_bits_perm_0_T_2[19],
    _io_rresp_1_bits_perm_0_T_2[18],io_rresp_1_bits_perm_0_lo_hi_lo_4,io_rresp_1_bits_perm_0_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_hi_lo_lo_4 = {_io_rresp_1_bits_perm_0_T_2[29],_io_rresp_1_bits_perm_0_T_2[28],
    _io_rresp_1_bits_perm_0_T_2[27],_io_rresp_1_bits_perm_0_T_2[26],_io_rresp_1_bits_perm_0_T_2[25],
    _io_rresp_1_bits_perm_0_T_2[24]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_1_bits_perm_0_hi_lo_4 = {_io_rresp_1_bits_perm_0_T_2[35],_io_rresp_1_bits_perm_0_T_2[34],
    _io_rresp_1_bits_perm_0_T_2[33],_io_rresp_1_bits_perm_0_T_2[32],_io_rresp_1_bits_perm_0_T_2[31],
    _io_rresp_1_bits_perm_0_T_2[30],io_rresp_1_bits_perm_0_hi_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo_4 = {_io_rresp_1_bits_perm_0_T_2[41],_io_rresp_1_bits_perm_0_T_2[40],
    _io_rresp_1_bits_perm_0_T_2[39],_io_rresp_1_bits_perm_0_T_2[38],_io_rresp_1_bits_perm_0_T_2[37],
    _io_rresp_1_bits_perm_0_T_2[36]}; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_1_bits_perm_0_T_104 = {_io_rresp_1_bits_perm_0_T_2[48],_io_rresp_1_bits_perm_0_T_2[47],
    _io_rresp_1_bits_perm_0_T_2[46],_io_rresp_1_bits_perm_0_T_2[45],_io_rresp_1_bits_perm_0_T_2[44],
    _io_rresp_1_bits_perm_0_T_2[43],_io_rresp_1_bits_perm_0_T_2[42],io_rresp_1_bits_perm_0_hi_hi_lo_4,
    io_rresp_1_bits_perm_0_hi_lo_4,io_rresp_1_bits_perm_0_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_1_bits_perm_0_lo_lo_lo_5 = {_io_rresp_1_bits_perm_0_T_54[5],_io_rresp_1_bits_perm_0_T_54[4],
    _io_rresp_1_bits_perm_0_T_54[3],_io_rresp_1_bits_perm_0_T_54[2],_io_rresp_1_bits_perm_0_T_54[1],
    _io_rresp_1_bits_perm_0_T_54[0]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_1_bits_perm_0_lo_lo_5 = {_io_rresp_1_bits_perm_0_T_54[11],_io_rresp_1_bits_perm_0_T_54[10],
    _io_rresp_1_bits_perm_0_T_54[9],_io_rresp_1_bits_perm_0_T_54[8],_io_rresp_1_bits_perm_0_T_54[7],
    _io_rresp_1_bits_perm_0_T_54[6],io_rresp_1_bits_perm_0_lo_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_1_bits_perm_0_lo_hi_lo_5 = {_io_rresp_1_bits_perm_0_T_54[17],_io_rresp_1_bits_perm_0_T_54[16],
    _io_rresp_1_bits_perm_0_T_54[15],_io_rresp_1_bits_perm_0_T_54[14],_io_rresp_1_bits_perm_0_T_54[13],
    _io_rresp_1_bits_perm_0_T_54[12]}; // @[ParallelMux.scala 36:57]
  wire [23:0] io_rresp_1_bits_perm_0_lo_5 = {_io_rresp_1_bits_perm_0_T_54[23],_io_rresp_1_bits_perm_0_T_54[22],
    _io_rresp_1_bits_perm_0_T_54[21],_io_rresp_1_bits_perm_0_T_54[20],_io_rresp_1_bits_perm_0_T_54[19],
    _io_rresp_1_bits_perm_0_T_54[18],io_rresp_1_bits_perm_0_lo_hi_lo_5,io_rresp_1_bits_perm_0_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_1_bits_perm_0_hi_lo_lo_5 = {_io_rresp_1_bits_perm_0_T_54[29],_io_rresp_1_bits_perm_0_T_54[28],
    _io_rresp_1_bits_perm_0_T_54[27],_io_rresp_1_bits_perm_0_T_54[26],_io_rresp_1_bits_perm_0_T_54[25],
    _io_rresp_1_bits_perm_0_T_54[24]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_1_bits_perm_0_hi_lo_5 = {_io_rresp_1_bits_perm_0_T_54[35],_io_rresp_1_bits_perm_0_T_54[34],
    _io_rresp_1_bits_perm_0_T_54[33],_io_rresp_1_bits_perm_0_T_54[32],_io_rresp_1_bits_perm_0_T_54[31],
    _io_rresp_1_bits_perm_0_T_54[30],io_rresp_1_bits_perm_0_hi_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_1_bits_perm_0_hi_hi_lo_5 = {_io_rresp_1_bits_perm_0_T_54[41],_io_rresp_1_bits_perm_0_T_54[40],
    _io_rresp_1_bits_perm_0_T_54[39],_io_rresp_1_bits_perm_0_T_54[38],_io_rresp_1_bits_perm_0_T_54[37],
    _io_rresp_1_bits_perm_0_T_54[36]}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_105 = {_io_rresp_1_bits_perm_0_T_54[48],_io_rresp_1_bits_perm_0_T_54[47],
    _io_rresp_1_bits_perm_0_T_54[46],_io_rresp_1_bits_perm_0_T_54[45],_io_rresp_1_bits_perm_0_T_54[44],
    _io_rresp_1_bits_perm_0_T_54[43],_io_rresp_1_bits_perm_0_T_54[42],io_rresp_1_bits_perm_0_hi_hi_lo_5,
    io_rresp_1_bits_perm_0_hi_lo_5,io_rresp_1_bits_perm_0_lo_5}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_1_bits_perm_0_T_106 = _io_rresp_1_bits_perm_0_T_104 | _io_rresp_1_bits_perm_0_T_105; // @[ParallelMux.scala 36:53]
  wire [3:0] _io_access_1_touch_ways_bits_T = {hitVecReg_1_3,hitVecReg_1_2,hitVecReg_1_1,hitVecReg_1_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_1_touch_ways_bits_hi_1 = _io_access_1_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_1_touch_ways_bits_lo_1 = _io_access_1_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_1_touch_ways_bits_T_1 = |io_access_1_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_1_touch_ways_bits_T_2 = io_access_1_touch_ways_bits_hi_1 | io_access_1_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_1_touch_ways_bits_T_4 = {_io_access_1_touch_ways_bits_T_1,_io_access_1_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_3 = io_rreq_3_ready & io_rreq_3_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_3; // @[Reg.scala 16:16]
  wire  _hitVec_T_127 = io_rreq_3_bits_vpn[26:3] == entries_0_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_209 = 3'h1 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_1 : entries_0_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_210 = 3'h2 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_2 : _GEN_209; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_211 = 3'h3 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_3 : _GEN_210; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_212 = 3'h4 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_4 : _GEN_211; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_213 = 3'h5 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_5 : _GEN_212; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_214 = 3'h6 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_6 : _GEN_213; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_215 = 3'h7 == io_rreq_3_bits_vpn[2:0] ? entries_0_valididx_7 : _GEN_214; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_129 = hitVec_asid_hit & _hitVec_T_127 & _GEN_215; // @[MMUBundle.scala 296:99]
  wire  hitVec_3_0 = _hitVec_T_129 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_136 = io_rreq_3_bits_vpn[26:3] == entries_1_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_217 = 3'h1 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_1 : entries_1_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_218 = 3'h2 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_2 : _GEN_217; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_219 = 3'h3 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_3 : _GEN_218; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_220 = 3'h4 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_4 : _GEN_219; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_221 = 3'h5 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_5 : _GEN_220; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_222 = 3'h6 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_6 : _GEN_221; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_223 = 3'h7 == io_rreq_3_bits_vpn[2:0] ? entries_1_valididx_7 : _GEN_222; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_138 = hitVec_asid_hit_1 & _hitVec_T_136 & _GEN_223; // @[MMUBundle.scala 296:99]
  wire  hitVec_3_1 = _hitVec_T_138 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_145 = io_rreq_3_bits_vpn[26:3] == entries_2_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_225 = 3'h1 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_1 : entries_2_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_226 = 3'h2 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_2 : _GEN_225; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_227 = 3'h3 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_3 : _GEN_226; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_228 = 3'h4 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_4 : _GEN_227; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_229 = 3'h5 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_5 : _GEN_228; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_230 = 3'h6 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_6 : _GEN_229; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_231 = 3'h7 == io_rreq_3_bits_vpn[2:0] ? entries_2_valididx_7 : _GEN_230; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_147 = hitVec_asid_hit_2 & _hitVec_T_145 & _GEN_231; // @[MMUBundle.scala 296:99]
  wire  hitVec_3_2 = _hitVec_T_147 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 114:139]
  wire  _hitVec_T_154 = io_rreq_3_bits_vpn[26:3] == entries_3_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_233 = 3'h1 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_1 : entries_3_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_234 = 3'h2 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_2 : _GEN_233; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_235 = 3'h3 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_3 : _GEN_234; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_236 = 3'h4 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_4 : _GEN_235; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_237 = 3'h5 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_5 : _GEN_236; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_238 = 3'h6 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_6 : _GEN_237; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_239 = 3'h7 == io_rreq_3_bits_vpn[2:0] ? entries_3_valididx_7 : _GEN_238; // @[MMUBundle.scala 296:{99,99}]
  wire  _hitVec_T_156 = hitVec_asid_hit_3 & _hitVec_T_154 & _GEN_239; // @[MMUBundle.scala 296:99]
  wire  hitVec_3_3 = _hitVec_T_156 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg_3_0; // @[Reg.scala 16:16]
  reg  hitVecReg_3_1; // @[Reg.scala 16:16]
  reg  hitVecReg_3_2; // @[Reg.scala 16:16]
  reg  hitVecReg_3_3; // @[Reg.scala 16:16]
  reg  io_rresp_3_valid_REG; // @[TLBStorage.scala 123:26]
  wire [3:0] _io_rresp_3_bits_hit_T = {hitVecReg_3_0,hitVecReg_3_1,hitVecReg_3_2,hitVecReg_3_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_3_bits_hit_T_1 = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 124:37]
  wire [2:0] _GEN_245 = 3'h1 == vpn_reg_3[2:0] ? entries_0_ppn_low_1 : entries_0_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_246 = 3'h2 == vpn_reg_3[2:0] ? entries_0_ppn_low_2 : _GEN_245; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_247 = 3'h3 == vpn_reg_3[2:0] ? entries_0_ppn_low_3 : _GEN_246; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_248 = 3'h4 == vpn_reg_3[2:0] ? entries_0_ppn_low_4 : _GEN_247; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_249 = 3'h5 == vpn_reg_3[2:0] ? entries_0_ppn_low_5 : _GEN_248; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_250 = 3'h6 == vpn_reg_3[2:0] ? entries_0_ppn_low_6 : _GEN_249; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_251 = 3'h7 == vpn_reg_3[2:0] ? entries_0_ppn_low_7 : _GEN_250; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res = {entries_0_ppn,_GEN_251}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_253 = 3'h1 == vpn_reg_3[2:0] ? entries_1_ppn_low_1 : entries_1_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_254 = 3'h2 == vpn_reg_3[2:0] ? entries_1_ppn_low_2 : _GEN_253; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_255 = 3'h3 == vpn_reg_3[2:0] ? entries_1_ppn_low_3 : _GEN_254; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_256 = 3'h4 == vpn_reg_3[2:0] ? entries_1_ppn_low_4 : _GEN_255; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_257 = 3'h5 == vpn_reg_3[2:0] ? entries_1_ppn_low_5 : _GEN_256; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_258 = 3'h6 == vpn_reg_3[2:0] ? entries_1_ppn_low_6 : _GEN_257; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_259 = 3'h7 == vpn_reg_3[2:0] ? entries_1_ppn_low_7 : _GEN_258; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res_1 = {entries_1_ppn,_GEN_259}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_261 = 3'h1 == vpn_reg_3[2:0] ? entries_2_ppn_low_1 : entries_2_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_262 = 3'h2 == vpn_reg_3[2:0] ? entries_2_ppn_low_2 : _GEN_261; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_263 = 3'h3 == vpn_reg_3[2:0] ? entries_2_ppn_low_3 : _GEN_262; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_264 = 3'h4 == vpn_reg_3[2:0] ? entries_2_ppn_low_4 : _GEN_263; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_265 = 3'h5 == vpn_reg_3[2:0] ? entries_2_ppn_low_5 : _GEN_264; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_266 = 3'h6 == vpn_reg_3[2:0] ? entries_2_ppn_low_6 : _GEN_265; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_267 = 3'h7 == vpn_reg_3[2:0] ? entries_2_ppn_low_7 : _GEN_266; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res_2 = {entries_2_ppn,_GEN_267}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_269 = 3'h1 == vpn_reg_3[2:0] ? entries_3_ppn_low_1 : entries_3_ppn_low_0; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_270 = 3'h2 == vpn_reg_3[2:0] ? entries_3_ppn_low_2 : _GEN_269; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_271 = 3'h3 == vpn_reg_3[2:0] ? entries_3_ppn_low_3 : _GEN_270; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_272 = 3'h4 == vpn_reg_3[2:0] ? entries_3_ppn_low_4 : _GEN_271; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_273 = 3'h5 == vpn_reg_3[2:0] ? entries_3_ppn_low_5 : _GEN_272; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_274 = 3'h6 == vpn_reg_3[2:0] ? entries_3_ppn_low_6 : _GEN_273; // @[Cat.scala 31:{58,58}]
  wire [2:0] _GEN_275 = 3'h7 == vpn_reg_3[2:0] ? entries_3_ppn_low_7 : _GEN_274; // @[Cat.scala 31:{58,58}]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res_3 = {entries_3_ppn,_GEN_275}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_0 = hitVecReg_3_0 ? io_rresp_3_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_1 = hitVecReg_3_1 ? io_rresp_3_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_2 = hitVecReg_3_2 ? io_rresp_3_bits_ppn_0_ppn_res_2 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_3 = hitVecReg_3_3 ? io_rresp_3_bits_ppn_0_ppn_res_3 : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] _io_rresp_3_bits_ppn_0_T = io_rresp_3_bits_ppn_0_xs_0 | io_rresp_3_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  wire [23:0] _io_rresp_3_bits_ppn_0_T_1 = io_rresp_3_bits_ppn_0_xs_2 | io_rresp_3_bits_ppn_0_xs_3; // @[ParallelMux.scala 36:53]
  wire  io_rresp_3_bits_perm_0_xs_0_pf = hitVecReg_3_0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_af = hitVecReg_3_0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_d = hitVecReg_3_0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_a = hitVecReg_3_0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_g = hitVecReg_3_0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_u = hitVecReg_3_0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_x = hitVecReg_3_0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_w = hitVecReg_3_0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_r = hitVecReg_3_0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_pf = hitVecReg_3_1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_af = hitVecReg_3_1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_d = hitVecReg_3_1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_a = hitVecReg_3_1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_g = hitVecReg_3_1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_u = hitVecReg_3_1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_x = hitVecReg_3_1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_w = hitVecReg_3_1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_r = hitVecReg_3_1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_pf = hitVecReg_3_2 & entries_2_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_af = hitVecReg_3_2 & entries_2_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_d = hitVecReg_3_2 & entries_2_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_a = hitVecReg_3_2 & entries_2_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_g = hitVecReg_3_2 & entries_2_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_u = hitVecReg_3_2 & entries_2_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_x = hitVecReg_3_2 & entries_2_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_w = hitVecReg_3_2 & entries_2_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_2_r = hitVecReg_3_2 & entries_2_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_pf = hitVecReg_3_3 & entries_3_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_af = hitVecReg_3_3 & entries_3_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_d = hitVecReg_3_3 & entries_3_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_a = hitVecReg_3_3 & entries_3_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_g = hitVecReg_3_3 & entries_3_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_u = hitVecReg_3_3 & entries_3_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_x = hitVecReg_3_3 & entries_3_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_w = hitVecReg_3_3 & entries_3_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_3_r = hitVecReg_3_3 & entries_3_perm_r; // @[ParallelMux.scala 64:44]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo = {io_rresp_3_bits_perm_0_xs_0_w,io_rresp_3_bits_perm_0_xs_0_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_3_bits_perm_0_T = {io_rresp_3_bits_perm_0_xs_0_pf,io_rresp_3_bits_perm_0_xs_0_af,
    io_rresp_3_bits_perm_0_xs_0_d,io_rresp_3_bits_perm_0_xs_0_a,io_rresp_3_bits_perm_0_xs_0_g,
    io_rresp_3_bits_perm_0_xs_0_u,io_rresp_3_bits_perm_0_xs_0_x,io_rresp_3_bits_perm_0_hi_hi_lo,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo_1 = {io_rresp_3_bits_perm_0_xs_1_w,io_rresp_3_bits_perm_0_xs_1_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_1 = {io_rresp_3_bits_perm_0_xs_1_pf,io_rresp_3_bits_perm_0_xs_1_af,
    io_rresp_3_bits_perm_0_xs_1_d,io_rresp_3_bits_perm_0_xs_1_a,io_rresp_3_bits_perm_0_xs_1_g,
    io_rresp_3_bits_perm_0_xs_1_u,io_rresp_3_bits_perm_0_xs_1_x,io_rresp_3_bits_perm_0_hi_hi_lo_1,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_2 = _io_rresp_3_bits_perm_0_T | _io_rresp_3_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo_2 = {io_rresp_3_bits_perm_0_xs_2_w,io_rresp_3_bits_perm_0_xs_2_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_3_bits_perm_0_T_52 = {io_rresp_3_bits_perm_0_xs_2_pf,io_rresp_3_bits_perm_0_xs_2_af,
    io_rresp_3_bits_perm_0_xs_2_d,io_rresp_3_bits_perm_0_xs_2_a,io_rresp_3_bits_perm_0_xs_2_g,
    io_rresp_3_bits_perm_0_xs_2_u,io_rresp_3_bits_perm_0_xs_2_x,io_rresp_3_bits_perm_0_hi_hi_lo_2,12'h0,24'h0}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo_3 = {io_rresp_3_bits_perm_0_xs_3_w,io_rresp_3_bits_perm_0_xs_3_r,1'h0,3'h0
    }; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_53 = {io_rresp_3_bits_perm_0_xs_3_pf,io_rresp_3_bits_perm_0_xs_3_af,
    io_rresp_3_bits_perm_0_xs_3_d,io_rresp_3_bits_perm_0_xs_3_a,io_rresp_3_bits_perm_0_xs_3_g,
    io_rresp_3_bits_perm_0_xs_3_u,io_rresp_3_bits_perm_0_xs_3_x,io_rresp_3_bits_perm_0_hi_hi_lo_3,12'h0,24'h0}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_54 = _io_rresp_3_bits_perm_0_T_52 | _io_rresp_3_bits_perm_0_T_53; // @[ParallelMux.scala 36:53]
  wire [5:0] io_rresp_3_bits_perm_0_lo_lo_lo_4 = {_io_rresp_3_bits_perm_0_T_2[5],_io_rresp_3_bits_perm_0_T_2[4],
    _io_rresp_3_bits_perm_0_T_2[3],_io_rresp_3_bits_perm_0_T_2[2],_io_rresp_3_bits_perm_0_T_2[1],
    _io_rresp_3_bits_perm_0_T_2[0]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_3_bits_perm_0_lo_lo_4 = {_io_rresp_3_bits_perm_0_T_2[11],_io_rresp_3_bits_perm_0_T_2[10],
    _io_rresp_3_bits_perm_0_T_2[9],_io_rresp_3_bits_perm_0_T_2[8],_io_rresp_3_bits_perm_0_T_2[7],
    _io_rresp_3_bits_perm_0_T_2[6],io_rresp_3_bits_perm_0_lo_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_lo_hi_lo_4 = {_io_rresp_3_bits_perm_0_T_2[17],_io_rresp_3_bits_perm_0_T_2[16],
    _io_rresp_3_bits_perm_0_T_2[15],_io_rresp_3_bits_perm_0_T_2[14],_io_rresp_3_bits_perm_0_T_2[13],
    _io_rresp_3_bits_perm_0_T_2[12]}; // @[ParallelMux.scala 36:46]
  wire [23:0] io_rresp_3_bits_perm_0_lo_4 = {_io_rresp_3_bits_perm_0_T_2[23],_io_rresp_3_bits_perm_0_T_2[22],
    _io_rresp_3_bits_perm_0_T_2[21],_io_rresp_3_bits_perm_0_T_2[20],_io_rresp_3_bits_perm_0_T_2[19],
    _io_rresp_3_bits_perm_0_T_2[18],io_rresp_3_bits_perm_0_lo_hi_lo_4,io_rresp_3_bits_perm_0_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_hi_lo_lo_4 = {_io_rresp_3_bits_perm_0_T_2[29],_io_rresp_3_bits_perm_0_T_2[28],
    _io_rresp_3_bits_perm_0_T_2[27],_io_rresp_3_bits_perm_0_T_2[26],_io_rresp_3_bits_perm_0_T_2[25],
    _io_rresp_3_bits_perm_0_T_2[24]}; // @[ParallelMux.scala 36:46]
  wire [11:0] io_rresp_3_bits_perm_0_hi_lo_4 = {_io_rresp_3_bits_perm_0_T_2[35],_io_rresp_3_bits_perm_0_T_2[34],
    _io_rresp_3_bits_perm_0_T_2[33],_io_rresp_3_bits_perm_0_T_2[32],_io_rresp_3_bits_perm_0_T_2[31],
    _io_rresp_3_bits_perm_0_T_2[30],io_rresp_3_bits_perm_0_hi_lo_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo_4 = {_io_rresp_3_bits_perm_0_T_2[41],_io_rresp_3_bits_perm_0_T_2[40],
    _io_rresp_3_bits_perm_0_T_2[39],_io_rresp_3_bits_perm_0_T_2[38],_io_rresp_3_bits_perm_0_T_2[37],
    _io_rresp_3_bits_perm_0_T_2[36]}; // @[ParallelMux.scala 36:46]
  wire [48:0] _io_rresp_3_bits_perm_0_T_104 = {_io_rresp_3_bits_perm_0_T_2[48],_io_rresp_3_bits_perm_0_T_2[47],
    _io_rresp_3_bits_perm_0_T_2[46],_io_rresp_3_bits_perm_0_T_2[45],_io_rresp_3_bits_perm_0_T_2[44],
    _io_rresp_3_bits_perm_0_T_2[43],_io_rresp_3_bits_perm_0_T_2[42],io_rresp_3_bits_perm_0_hi_hi_lo_4,
    io_rresp_3_bits_perm_0_hi_lo_4,io_rresp_3_bits_perm_0_lo_4}; // @[ParallelMux.scala 36:46]
  wire [5:0] io_rresp_3_bits_perm_0_lo_lo_lo_5 = {_io_rresp_3_bits_perm_0_T_54[5],_io_rresp_3_bits_perm_0_T_54[4],
    _io_rresp_3_bits_perm_0_T_54[3],_io_rresp_3_bits_perm_0_T_54[2],_io_rresp_3_bits_perm_0_T_54[1],
    _io_rresp_3_bits_perm_0_T_54[0]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_3_bits_perm_0_lo_lo_5 = {_io_rresp_3_bits_perm_0_T_54[11],_io_rresp_3_bits_perm_0_T_54[10],
    _io_rresp_3_bits_perm_0_T_54[9],_io_rresp_3_bits_perm_0_T_54[8],_io_rresp_3_bits_perm_0_T_54[7],
    _io_rresp_3_bits_perm_0_T_54[6],io_rresp_3_bits_perm_0_lo_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_3_bits_perm_0_lo_hi_lo_5 = {_io_rresp_3_bits_perm_0_T_54[17],_io_rresp_3_bits_perm_0_T_54[16],
    _io_rresp_3_bits_perm_0_T_54[15],_io_rresp_3_bits_perm_0_T_54[14],_io_rresp_3_bits_perm_0_T_54[13],
    _io_rresp_3_bits_perm_0_T_54[12]}; // @[ParallelMux.scala 36:57]
  wire [23:0] io_rresp_3_bits_perm_0_lo_5 = {_io_rresp_3_bits_perm_0_T_54[23],_io_rresp_3_bits_perm_0_T_54[22],
    _io_rresp_3_bits_perm_0_T_54[21],_io_rresp_3_bits_perm_0_T_54[20],_io_rresp_3_bits_perm_0_T_54[19],
    _io_rresp_3_bits_perm_0_T_54[18],io_rresp_3_bits_perm_0_lo_hi_lo_5,io_rresp_3_bits_perm_0_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_3_bits_perm_0_hi_lo_lo_5 = {_io_rresp_3_bits_perm_0_T_54[29],_io_rresp_3_bits_perm_0_T_54[28],
    _io_rresp_3_bits_perm_0_T_54[27],_io_rresp_3_bits_perm_0_T_54[26],_io_rresp_3_bits_perm_0_T_54[25],
    _io_rresp_3_bits_perm_0_T_54[24]}; // @[ParallelMux.scala 36:57]
  wire [11:0] io_rresp_3_bits_perm_0_hi_lo_5 = {_io_rresp_3_bits_perm_0_T_54[35],_io_rresp_3_bits_perm_0_T_54[34],
    _io_rresp_3_bits_perm_0_T_54[33],_io_rresp_3_bits_perm_0_T_54[32],_io_rresp_3_bits_perm_0_T_54[31],
    _io_rresp_3_bits_perm_0_T_54[30],io_rresp_3_bits_perm_0_hi_lo_lo_5}; // @[ParallelMux.scala 36:57]
  wire [5:0] io_rresp_3_bits_perm_0_hi_hi_lo_5 = {_io_rresp_3_bits_perm_0_T_54[41],_io_rresp_3_bits_perm_0_T_54[40],
    _io_rresp_3_bits_perm_0_T_54[39],_io_rresp_3_bits_perm_0_T_54[38],_io_rresp_3_bits_perm_0_T_54[37],
    _io_rresp_3_bits_perm_0_T_54[36]}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_105 = {_io_rresp_3_bits_perm_0_T_54[48],_io_rresp_3_bits_perm_0_T_54[47],
    _io_rresp_3_bits_perm_0_T_54[46],_io_rresp_3_bits_perm_0_T_54[45],_io_rresp_3_bits_perm_0_T_54[44],
    _io_rresp_3_bits_perm_0_T_54[43],_io_rresp_3_bits_perm_0_T_54[42],io_rresp_3_bits_perm_0_hi_hi_lo_5,
    io_rresp_3_bits_perm_0_hi_lo_5,io_rresp_3_bits_perm_0_lo_5}; // @[ParallelMux.scala 36:57]
  wire [48:0] _io_rresp_3_bits_perm_0_T_106 = _io_rresp_3_bits_perm_0_T_104 | _io_rresp_3_bits_perm_0_T_105; // @[ParallelMux.scala 36:53]
  wire [3:0] _io_access_3_touch_ways_bits_T = {hitVecReg_3_3,hitVecReg_3_2,hitVecReg_3_1,hitVecReg_3_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_3_touch_ways_bits_hi_1 = _io_access_3_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_3_touch_ways_bits_lo_1 = _io_access_3_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_3_touch_ways_bits_T_1 = |io_access_3_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_3_touch_ways_bits_T_2 = io_access_3_touch_ways_bits_hi_1 | io_access_3_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_3_touch_ways_bits_T_4 = {_io_access_3_touch_ways_bits_T_1,_io_access_3_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _GEN_276 = 2'h0 == io_wwayIdx | v_0; // @[TLBStorage.scala 100:18 143:{25,25}]
  wire  _GEN_277 = 2'h1 == io_wwayIdx | v_1; // @[TLBStorage.scala 100:18 143:{25,25}]
  wire  _GEN_278 = 2'h2 == io_wwayIdx | v_2; // @[TLBStorage.scala 100:18 143:{25,25}]
  wire  _GEN_279 = 2'h3 == io_wwayIdx | v_3; // @[TLBStorage.scala 100:18 143:{25,25}]
  wire [6:0] _ptePerm_T = {io_wdata_entry_perm_d,io_wdata_entry_perm_a,io_wdata_entry_perm_g,
    io_wdata_entry_perm_u,io_wdata_entry_perm_x,io_wdata_entry_perm_w,io_wdata_entry_perm_r}; // @[MMUBundle.scala 124:47]
  wire  ptePerm_r = _ptePerm_T[0]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_w = _ptePerm_T[1]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_x = _ptePerm_T[2]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_u = _ptePerm_T[3]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_g = _ptePerm_T[4]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_a = _ptePerm_T[5]; // @[MMUBundle.scala 124:47]
  wire  ptePerm_d = _ptePerm_T[6]; // @[MMUBundle.scala 124:47]
  reg [1:0] refill_wayIdx_reg; // @[TLBStorage.scala 151:34]
  reg  REG; // @[TLBStorage.scala 152:16]
  wire  sfenceHit_asid_hit = entries_0_asid == io_sfence_bits_asid; // @[MMUBundle.scala 291:59]
  wire  _sfenceHit_T_3 = io_sfence_bits_addr[38:15] == entries_0_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_905 = 3'h1 == io_sfence_bits_addr[14:12] ? entries_0_valididx_1 : entries_0_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_906 = 3'h2 == io_sfence_bits_addr[14:12] ? entries_0_valididx_2 : _GEN_905; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_907 = 3'h3 == io_sfence_bits_addr[14:12] ? entries_0_valididx_3 : _GEN_906; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_908 = 3'h4 == io_sfence_bits_addr[14:12] ? entries_0_valididx_4 : _GEN_907; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_909 = 3'h5 == io_sfence_bits_addr[14:12] ? entries_0_valididx_5 : _GEN_908; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_910 = 3'h6 == io_sfence_bits_addr[14:12] ? entries_0_valididx_6 : _GEN_909; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_911 = 3'h7 == io_sfence_bits_addr[14:12] ? entries_0_valididx_7 : _GEN_910; // @[MMUBundle.scala 296:{99,99}]
  wire  sfenceHit_0 = sfenceHit_asid_hit & _sfenceHit_T_3 & _GEN_911; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_asid_hit_1 = entries_1_asid == io_sfence_bits_asid; // @[MMUBundle.scala 291:59]
  wire  _sfenceHit_T_8 = io_sfence_bits_addr[38:15] == entries_1_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_913 = 3'h1 == io_sfence_bits_addr[14:12] ? entries_1_valididx_1 : entries_1_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_914 = 3'h2 == io_sfence_bits_addr[14:12] ? entries_1_valididx_2 : _GEN_913; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_915 = 3'h3 == io_sfence_bits_addr[14:12] ? entries_1_valididx_3 : _GEN_914; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_916 = 3'h4 == io_sfence_bits_addr[14:12] ? entries_1_valididx_4 : _GEN_915; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_917 = 3'h5 == io_sfence_bits_addr[14:12] ? entries_1_valididx_5 : _GEN_916; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_918 = 3'h6 == io_sfence_bits_addr[14:12] ? entries_1_valididx_6 : _GEN_917; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_919 = 3'h7 == io_sfence_bits_addr[14:12] ? entries_1_valididx_7 : _GEN_918; // @[MMUBundle.scala 296:{99,99}]
  wire  sfenceHit_1 = sfenceHit_asid_hit_1 & _sfenceHit_T_8 & _GEN_919; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_asid_hit_2 = entries_2_asid == io_sfence_bits_asid; // @[MMUBundle.scala 291:59]
  wire  _sfenceHit_T_13 = io_sfence_bits_addr[38:15] == entries_2_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_921 = 3'h1 == io_sfence_bits_addr[14:12] ? entries_2_valididx_1 : entries_2_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_922 = 3'h2 == io_sfence_bits_addr[14:12] ? entries_2_valididx_2 : _GEN_921; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_923 = 3'h3 == io_sfence_bits_addr[14:12] ? entries_2_valididx_3 : _GEN_922; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_924 = 3'h4 == io_sfence_bits_addr[14:12] ? entries_2_valididx_4 : _GEN_923; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_925 = 3'h5 == io_sfence_bits_addr[14:12] ? entries_2_valididx_5 : _GEN_924; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_926 = 3'h6 == io_sfence_bits_addr[14:12] ? entries_2_valididx_6 : _GEN_925; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_927 = 3'h7 == io_sfence_bits_addr[14:12] ? entries_2_valididx_7 : _GEN_926; // @[MMUBundle.scala 296:{99,99}]
  wire  sfenceHit_2 = sfenceHit_asid_hit_2 & _sfenceHit_T_13 & _GEN_927; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_asid_hit_3 = entries_3_asid == io_sfence_bits_asid; // @[MMUBundle.scala 291:59]
  wire  _sfenceHit_T_18 = io_sfence_bits_addr[38:15] == entries_3_tag; // @[MMUConst.scala 131:33]
  wire  _GEN_929 = 3'h1 == io_sfence_bits_addr[14:12] ? entries_3_valididx_1 : entries_3_valididx_0; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_930 = 3'h2 == io_sfence_bits_addr[14:12] ? entries_3_valididx_2 : _GEN_929; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_931 = 3'h3 == io_sfence_bits_addr[14:12] ? entries_3_valididx_3 : _GEN_930; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_932 = 3'h4 == io_sfence_bits_addr[14:12] ? entries_3_valididx_4 : _GEN_931; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_933 = 3'h5 == io_sfence_bits_addr[14:12] ? entries_3_valididx_5 : _GEN_932; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_934 = 3'h6 == io_sfence_bits_addr[14:12] ? entries_3_valididx_6 : _GEN_933; // @[MMUBundle.scala 296:{99,99}]
  wire  _GEN_935 = 3'h7 == io_sfence_bits_addr[14:12] ? entries_3_valididx_7 : _GEN_934; // @[MMUBundle.scala 296:{99,99}]
  wire  sfenceHit_3 = sfenceHit_asid_hit_3 & _sfenceHit_T_18 & _GEN_935; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_noasid_0 = _sfenceHit_T_3 & _GEN_911; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_noasid_1 = _sfenceHit_T_8 & _GEN_919; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_noasid_2 = _sfenceHit_T_13 & _GEN_927; // @[MMUBundle.scala 296:99]
  wire  sfenceHit_noasid_3 = _sfenceHit_T_18 & _GEN_935; // @[MMUBundle.scala 296:99]
  assign io_rreq_0_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rreq_1_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rreq_3_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rresp_0_valid = io_rresp_0_valid_REG; // @[TLBStorage.scala 123:16]
  assign io_rresp_0_bits_hit = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 124:37]
  assign io_rresp_0_bits_ppn_0 = _io_rresp_0_bits_ppn_0_T | _io_rresp_0_bits_ppn_0_T_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_0_bits_perm_0_pf = _io_rresp_0_bits_perm_0_T_106[48]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_af = _io_rresp_0_bits_perm_0_T_106[47]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_a = _io_rresp_0_bits_perm_0_T_106[45]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_u = _io_rresp_0_bits_perm_0_T_106[43]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_x = _io_rresp_0_bits_perm_0_T_106[42]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_valid = io_rresp_1_valid_REG; // @[TLBStorage.scala 123:16]
  assign io_rresp_1_bits_hit = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 124:37]
  assign io_rresp_1_bits_ppn_0 = _io_rresp_1_bits_ppn_0_T | _io_rresp_1_bits_ppn_0_T_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_1_bits_perm_0_pf = _io_rresp_1_bits_perm_0_T_106[48]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_af = _io_rresp_1_bits_perm_0_T_106[47]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_a = _io_rresp_1_bits_perm_0_T_106[45]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_u = _io_rresp_1_bits_perm_0_T_106[43]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_x = _io_rresp_1_bits_perm_0_T_106[42]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_valid = io_rresp_3_valid_REG; // @[TLBStorage.scala 123:16]
  assign io_rresp_3_bits_hit = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 124:37]
  assign io_rresp_3_bits_ppn_0 = _io_rresp_3_bits_ppn_0_T | _io_rresp_3_bits_ppn_0_T_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_3_bits_perm_0_pf = _io_rresp_3_bits_perm_0_T_106[48]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_af = _io_rresp_3_bits_perm_0_T_106[47]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_a = _io_rresp_3_bits_perm_0_T_106[45]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_u = _io_rresp_3_bits_perm_0_T_106[43]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_x = _io_rresp_3_bits_perm_0_T_106[42]; // @[ParallelMux.scala 36:73]
  assign io_access_0_touch_ways_valid = REG | io_rresp_0_valid & _io_rresp_0_bits_hit_T_1; // @[TLBStorage.scala 134:29 152:30 155:31]
  assign io_access_0_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_0_touch_ways_bits_T_4; // @[TLBStorage.scala 135:28 152:30 156:30]
  assign io_access_1_touch_ways_valid = REG | io_rresp_1_valid & _io_rresp_1_bits_hit_T_1; // @[TLBStorage.scala 134:29 152:30 155:31]
  assign io_access_1_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_1_touch_ways_bits_T_4; // @[TLBStorage.scala 135:28 152:30 156:30]
  assign io_access_2_touch_ways_valid = REG; // @[TLBStorage.scala 134:29 152:30 155:31]
  assign io_access_2_touch_ways_bits = REG ? refill_wayIdx_reg : 2'h0; // @[TLBStorage.scala 135:28 152:30 156:30]
  assign io_access_3_touch_ways_valid = REG | io_rresp_3_valid & _io_rresp_3_bits_hit_T_1; // @[TLBStorage.scala 134:29 152:30 155:31]
  assign io_access_3_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_3_touch_ways_bits_T_4; // @[TLBStorage.scala 135:28 152:30 156:30]
  always @(posedge clock) begin
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 353:14]
        entries_0_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 353:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 354:15]
        entries_0_asid <= io_csr_satp_asid; // @[MMUBundle.scala 354:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 362:14]
        entries_0_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 362:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 125:13]
        entries_0_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 125:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 126:13]
        entries_0_perm_af <= io_wdata_af; // @[MMUBundle.scala 126:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 127:12]
        entries_0_perm_d <= ptePerm_d; // @[MMUBundle.scala 127:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 128:12]
        entries_0_perm_a <= ptePerm_a; // @[MMUBundle.scala 128:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 129:12]
        entries_0_perm_g <= ptePerm_g; // @[MMUBundle.scala 129:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 130:12]
        entries_0_perm_u <= ptePerm_u; // @[MMUBundle.scala 130:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 131:12]
        entries_0_perm_x <= ptePerm_x; // @[MMUBundle.scala 131:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 132:12]
        entries_0_perm_w <= ptePerm_w; // @[MMUBundle.scala 132:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 133:12]
        entries_0_perm_r <= ptePerm_r; // @[MMUBundle.scala 133:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_0 <= io_wdata_valididx_0; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_1 <= io_wdata_valididx_1; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_2 <= io_wdata_valididx_2; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_3 <= io_wdata_valididx_3; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_4 <= io_wdata_valididx_4; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_5 <= io_wdata_valididx_5; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_6 <= io_wdata_valididx_6; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_0_valididx_7 <= io_wdata_valididx_7; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_0 <= io_wdata_ppn_low_0; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_1 <= io_wdata_ppn_low_1; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_2 <= io_wdata_ppn_low_2; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_3 <= io_wdata_ppn_low_3; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_4 <= io_wdata_ppn_low_4; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_5 <= io_wdata_ppn_low_5; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_6 <= io_wdata_ppn_low_6; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_0_ppn_low_7 <= io_wdata_ppn_low_7; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 353:14]
        entries_1_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 353:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 354:15]
        entries_1_asid <= io_csr_satp_asid; // @[MMUBundle.scala 354:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 362:14]
        entries_1_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 362:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 125:13]
        entries_1_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 125:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 126:13]
        entries_1_perm_af <= io_wdata_af; // @[MMUBundle.scala 126:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 127:12]
        entries_1_perm_d <= ptePerm_d; // @[MMUBundle.scala 127:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 128:12]
        entries_1_perm_a <= ptePerm_a; // @[MMUBundle.scala 128:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 129:12]
        entries_1_perm_g <= ptePerm_g; // @[MMUBundle.scala 129:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 130:12]
        entries_1_perm_u <= ptePerm_u; // @[MMUBundle.scala 130:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 131:12]
        entries_1_perm_x <= ptePerm_x; // @[MMUBundle.scala 131:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 132:12]
        entries_1_perm_w <= ptePerm_w; // @[MMUBundle.scala 132:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 133:12]
        entries_1_perm_r <= ptePerm_r; // @[MMUBundle.scala 133:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_0 <= io_wdata_valididx_0; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_1 <= io_wdata_valididx_1; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_2 <= io_wdata_valididx_2; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_3 <= io_wdata_valididx_3; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_4 <= io_wdata_valididx_4; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_5 <= io_wdata_valididx_5; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_6 <= io_wdata_valididx_6; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_1_valididx_7 <= io_wdata_valididx_7; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_0 <= io_wdata_ppn_low_0; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_1 <= io_wdata_ppn_low_1; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_2 <= io_wdata_ppn_low_2; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_3 <= io_wdata_ppn_low_3; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_4 <= io_wdata_ppn_low_4; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_5 <= io_wdata_ppn_low_5; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_6 <= io_wdata_ppn_low_6; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_1_ppn_low_7 <= io_wdata_ppn_low_7; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 353:14]
        entries_2_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 353:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 354:15]
        entries_2_asid <= io_csr_satp_asid; // @[MMUBundle.scala 354:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 362:14]
        entries_2_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 362:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 125:13]
        entries_2_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 125:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 126:13]
        entries_2_perm_af <= io_wdata_af; // @[MMUBundle.scala 126:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 127:12]
        entries_2_perm_d <= ptePerm_d; // @[MMUBundle.scala 127:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 128:12]
        entries_2_perm_a <= ptePerm_a; // @[MMUBundle.scala 128:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 129:12]
        entries_2_perm_g <= ptePerm_g; // @[MMUBundle.scala 129:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 130:12]
        entries_2_perm_u <= ptePerm_u; // @[MMUBundle.scala 130:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 131:12]
        entries_2_perm_x <= ptePerm_x; // @[MMUBundle.scala 131:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 132:12]
        entries_2_perm_w <= ptePerm_w; // @[MMUBundle.scala 132:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 133:12]
        entries_2_perm_r <= ptePerm_r; // @[MMUBundle.scala 133:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_0 <= io_wdata_valididx_0; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_1 <= io_wdata_valididx_1; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_2 <= io_wdata_valididx_2; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_3 <= io_wdata_valididx_3; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_4 <= io_wdata_valididx_4; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_5 <= io_wdata_valididx_5; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_6 <= io_wdata_valididx_6; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_2_valididx_7 <= io_wdata_valididx_7; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_0 <= io_wdata_ppn_low_0; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_1 <= io_wdata_ppn_low_1; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_2 <= io_wdata_ppn_low_2; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_3 <= io_wdata_ppn_low_3; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_4 <= io_wdata_ppn_low_4; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_5 <= io_wdata_ppn_low_5; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_6 <= io_wdata_ppn_low_6; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_2_ppn_low_7 <= io_wdata_ppn_low_7; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 353:14]
        entries_3_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 353:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 354:15]
        entries_3_asid <= io_csr_satp_asid; // @[MMUBundle.scala 354:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 362:14]
        entries_3_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 362:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 125:13]
        entries_3_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 125:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 126:13]
        entries_3_perm_af <= io_wdata_af; // @[MMUBundle.scala 126:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 127:12]
        entries_3_perm_d <= ptePerm_d; // @[MMUBundle.scala 127:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 128:12]
        entries_3_perm_a <= ptePerm_a; // @[MMUBundle.scala 128:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 129:12]
        entries_3_perm_g <= ptePerm_g; // @[MMUBundle.scala 129:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 130:12]
        entries_3_perm_u <= ptePerm_u; // @[MMUBundle.scala 130:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 131:12]
        entries_3_perm_x <= ptePerm_x; // @[MMUBundle.scala 131:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 132:12]
        entries_3_perm_w <= ptePerm_w; // @[MMUBundle.scala 132:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 133:12]
        entries_3_perm_r <= ptePerm_r; // @[MMUBundle.scala 133:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_0 <= io_wdata_valididx_0; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_1 <= io_wdata_valididx_1; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_2 <= io_wdata_valididx_2; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_3 <= io_wdata_valididx_3; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_4 <= io_wdata_valididx_4; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_5 <= io_wdata_valididx_5; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_6 <= io_wdata_valididx_6; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 366:19]
        entries_3_valididx_7 <= io_wdata_valididx_7; // @[MMUBundle.scala 366:19]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_0 <= io_wdata_ppn_low_0; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_1 <= io_wdata_ppn_low_1; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_2 <= io_wdata_ppn_low_2; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_3 <= io_wdata_ppn_low_3; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_4 <= io_wdata_ppn_low_4; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_5 <= io_wdata_ppn_low_5; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_6 <= io_wdata_ppn_low_6; // @[MMUBundle.scala 365:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 142:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 365:18]
        entries_3_ppn_low_7 <= io_wdata_ppn_low_7; // @[MMUBundle.scala 365:18]
      end
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      vpn_reg <= io_rreq_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__0 <= hitVec__0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__1 <= hitVec__1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__2 <= hitVec__2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__3 <= hitVec__3; // @[Reg.scala 17:22]
    end
    io_rresp_0_valid_REG <= io_rreq_0_valid; // @[TLBStorage.scala 123:26]
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      vpn_reg_1 <= io_rreq_1_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_0 <= hitVec_1_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_1 <= hitVec_1_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_2 <= hitVec_1_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_3 <= hitVec_1_3; // @[Reg.scala 17:22]
    end
    io_rresp_1_valid_REG <= io_rreq_1_valid; // @[TLBStorage.scala 123:26]
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      vpn_reg_3 <= io_rreq_3_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_0 <= hitVec_3_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_1 <= hitVec_3_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_2 <= hitVec_3_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_3 <= hitVec_3_3; // @[Reg.scala 17:22]
    end
    io_rresp_3_valid_REG <= io_rreq_3_valid; // @[TLBStorage.scala 123:26]
    refill_wayIdx_reg <= io_wwayIdx; // @[TLBStorage.scala 151:34]
    REG <= io_wvalid; // @[TLBStorage.scala 152:16]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 165:26]
      v_0 <= 1'h0; // @[TLBStorage.scala 166:28 167:30 169:17 172:45 175:30 177:45 180:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 142:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_0 <= 1'h0;
        end else begin
          v_0 <= v_0 & (entries_0_perm_g | ~sfenceHit_asid_hit);
        end
      end else if (io_sfence_bits_rs2) begin
        v_0 <= v_0 & ~sfenceHit_noasid_0;
      end else begin
        v_0 <= v_0 & ~(sfenceHit_0 & ~entries_0_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_0 <= _GEN_276;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 165:26]
      v_1 <= 1'h0; // @[TLBStorage.scala 166:28 167:30 169:17 172:45 175:30 177:45 180:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 142:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_1 <= 1'h0;
        end else begin
          v_1 <= v_1 & (entries_1_perm_g | ~sfenceHit_asid_hit_1);
        end
      end else if (io_sfence_bits_rs2) begin
        v_1 <= v_1 & ~sfenceHit_noasid_1;
      end else begin
        v_1 <= v_1 & ~(sfenceHit_1 & ~entries_1_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_1 <= _GEN_277;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 165:26]
      v_2 <= 1'h0; // @[TLBStorage.scala 166:28 167:30 169:17 172:45 175:30 177:45 180:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 142:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_2 <= 1'h0;
        end else begin
          v_2 <= v_2 & (entries_2_perm_g | ~sfenceHit_asid_hit_2);
        end
      end else if (io_sfence_bits_rs2) begin
        v_2 <= v_2 & ~sfenceHit_noasid_2;
      end else begin
        v_2 <= v_2 & ~(sfenceHit_2 & ~entries_2_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_2 <= _GEN_278;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 165:26]
      v_3 <= 1'h0; // @[TLBStorage.scala 166:28 167:30 169:17 172:45 175:30 177:45 180:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 142:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_3 <= 1'h0;
        end else begin
          v_3 <= v_3 & (entries_3_perm_g | ~sfenceHit_asid_hit_3);
        end
      end else if (io_sfence_bits_rs2) begin
        v_3 <= v_3 & ~sfenceHit_noasid_3;
      end else begin
        v_3 <= v_3 & ~(sfenceHit_3 & ~entries_3_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_3 <= _GEN_279;
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
  v_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  v_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  v_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  v_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  entries_0_tag = _RAND_4[23:0];
  _RAND_5 = {1{`RANDOM}};
  entries_0_asid = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  entries_0_ppn = _RAND_6[20:0];
  _RAND_7 = {1{`RANDOM}};
  entries_0_perm_pf = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  entries_0_perm_af = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  entries_0_perm_d = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  entries_0_perm_a = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  entries_0_perm_g = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  entries_0_perm_u = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  entries_0_perm_x = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  entries_0_perm_w = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_0_perm_r = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  entries_0_valididx_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  entries_0_valididx_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  entries_0_valididx_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  entries_0_valididx_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_0_valididx_4 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  entries_0_valididx_5 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  entries_0_valididx_6 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  entries_0_valididx_7 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  entries_0_ppn_low_0 = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  entries_0_ppn_low_1 = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  entries_0_ppn_low_2 = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  entries_0_ppn_low_3 = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  entries_0_ppn_low_4 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  entries_0_ppn_low_5 = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  entries_0_ppn_low_6 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  entries_0_ppn_low_7 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  entries_1_tag = _RAND_32[23:0];
  _RAND_33 = {1{`RANDOM}};
  entries_1_asid = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  entries_1_ppn = _RAND_34[20:0];
  _RAND_35 = {1{`RANDOM}};
  entries_1_perm_pf = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  entries_1_perm_af = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  entries_1_perm_d = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  entries_1_perm_a = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  entries_1_perm_g = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  entries_1_perm_u = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  entries_1_perm_x = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  entries_1_perm_w = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  entries_1_perm_r = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  entries_1_valididx_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  entries_1_valididx_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  entries_1_valididx_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  entries_1_valididx_3 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  entries_1_valididx_4 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  entries_1_valididx_5 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  entries_1_valididx_6 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  entries_1_valididx_7 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  entries_1_ppn_low_0 = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  entries_1_ppn_low_1 = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  entries_1_ppn_low_2 = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  entries_1_ppn_low_3 = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  entries_1_ppn_low_4 = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  entries_1_ppn_low_5 = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  entries_1_ppn_low_6 = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  entries_1_ppn_low_7 = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  entries_2_tag = _RAND_60[23:0];
  _RAND_61 = {1{`RANDOM}};
  entries_2_asid = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  entries_2_ppn = _RAND_62[20:0];
  _RAND_63 = {1{`RANDOM}};
  entries_2_perm_pf = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  entries_2_perm_af = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  entries_2_perm_d = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  entries_2_perm_a = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  entries_2_perm_g = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  entries_2_perm_u = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  entries_2_perm_x = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  entries_2_perm_w = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  entries_2_perm_r = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  entries_2_valididx_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  entries_2_valididx_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  entries_2_valididx_2 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  entries_2_valididx_3 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  entries_2_valididx_4 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  entries_2_valididx_5 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  entries_2_valididx_6 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  entries_2_valididx_7 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  entries_2_ppn_low_0 = _RAND_80[2:0];
  _RAND_81 = {1{`RANDOM}};
  entries_2_ppn_low_1 = _RAND_81[2:0];
  _RAND_82 = {1{`RANDOM}};
  entries_2_ppn_low_2 = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  entries_2_ppn_low_3 = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  entries_2_ppn_low_4 = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  entries_2_ppn_low_5 = _RAND_85[2:0];
  _RAND_86 = {1{`RANDOM}};
  entries_2_ppn_low_6 = _RAND_86[2:0];
  _RAND_87 = {1{`RANDOM}};
  entries_2_ppn_low_7 = _RAND_87[2:0];
  _RAND_88 = {1{`RANDOM}};
  entries_3_tag = _RAND_88[23:0];
  _RAND_89 = {1{`RANDOM}};
  entries_3_asid = _RAND_89[15:0];
  _RAND_90 = {1{`RANDOM}};
  entries_3_ppn = _RAND_90[20:0];
  _RAND_91 = {1{`RANDOM}};
  entries_3_perm_pf = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  entries_3_perm_af = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  entries_3_perm_d = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  entries_3_perm_a = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  entries_3_perm_g = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  entries_3_perm_u = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  entries_3_perm_x = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  entries_3_perm_w = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  entries_3_perm_r = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  entries_3_valididx_0 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  entries_3_valididx_1 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  entries_3_valididx_2 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  entries_3_valididx_3 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  entries_3_valididx_4 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  entries_3_valididx_5 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  entries_3_valididx_6 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  entries_3_valididx_7 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  entries_3_ppn_low_0 = _RAND_108[2:0];
  _RAND_109 = {1{`RANDOM}};
  entries_3_ppn_low_1 = _RAND_109[2:0];
  _RAND_110 = {1{`RANDOM}};
  entries_3_ppn_low_2 = _RAND_110[2:0];
  _RAND_111 = {1{`RANDOM}};
  entries_3_ppn_low_3 = _RAND_111[2:0];
  _RAND_112 = {1{`RANDOM}};
  entries_3_ppn_low_4 = _RAND_112[2:0];
  _RAND_113 = {1{`RANDOM}};
  entries_3_ppn_low_5 = _RAND_113[2:0];
  _RAND_114 = {1{`RANDOM}};
  entries_3_ppn_low_6 = _RAND_114[2:0];
  _RAND_115 = {1{`RANDOM}};
  entries_3_ppn_low_7 = _RAND_115[2:0];
  _RAND_116 = {1{`RANDOM}};
  vpn_reg = _RAND_116[26:0];
  _RAND_117 = {1{`RANDOM}};
  hitVecReg__0 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  hitVecReg__1 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  hitVecReg__2 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  hitVecReg__3 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  io_rresp_0_valid_REG = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  vpn_reg_1 = _RAND_122[26:0];
  _RAND_123 = {1{`RANDOM}};
  hitVecReg_1_0 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  hitVecReg_1_1 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  hitVecReg_1_2 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  hitVecReg_1_3 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  io_rresp_1_valid_REG = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  vpn_reg_3 = _RAND_128[26:0];
  _RAND_129 = {1{`RANDOM}};
  hitVecReg_3_0 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  hitVecReg_3_1 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  hitVecReg_3_2 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  hitVecReg_3_3 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  io_rresp_3_valid_REG = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  refill_wayIdx_reg = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  REG = _RAND_135[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    v_0 = 1'h0;
  end
  if (reset) begin
    v_1 = 1'h0;
  end
  if (reset) begin
    v_2 = 1'h0;
  end
  if (reset) begin
    v_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

