module PTWFilter_1(
  input         clock,
  input         reset,
  input         io__sfence_valid,
  input         io__csr_satp_changed,
  input         io__tlb_req_0_valid,
  input  [26:0] io__tlb_req_0_bits_vpn,
  input         io__tlb_req_1_valid,
  input  [26:0] io__tlb_req_1_bits_vpn,
  input         io__tlb_req_3_valid,
  input  [26:0] io__tlb_req_3_bits_vpn,
  input         io__tlb_req_4_valid,
  input  [26:0] io__tlb_req_4_bits_vpn,
  output        io__tlb_resp_valid,
  output [23:0] io__tlb_resp_bits_data_entry_tag,
  output [15:0] io__tlb_resp_bits_data_entry_asid,
  output        io__tlb_resp_bits_data_entry_perm_d,
  output        io__tlb_resp_bits_data_entry_perm_a,
  output        io__tlb_resp_bits_data_entry_perm_g,
  output        io__tlb_resp_bits_data_entry_perm_u,
  output        io__tlb_resp_bits_data_entry_perm_x,
  output        io__tlb_resp_bits_data_entry_perm_w,
  output        io__tlb_resp_bits_data_entry_perm_r,
  output [1:0]  io__tlb_resp_bits_data_entry_level,
  output [20:0] io__tlb_resp_bits_data_entry_ppn,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_0,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_1,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_2,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_3,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_4,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_5,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_6,
  output [2:0]  io__tlb_resp_bits_data_ppn_low_7,
  output        io__tlb_resp_bits_data_valididx_0,
  output        io__tlb_resp_bits_data_valididx_1,
  output        io__tlb_resp_bits_data_valididx_2,
  output        io__tlb_resp_bits_data_valididx_3,
  output        io__tlb_resp_bits_data_valididx_4,
  output        io__tlb_resp_bits_data_valididx_5,
  output        io__tlb_resp_bits_data_valididx_6,
  output        io__tlb_resp_bits_data_valididx_7,
  output        io__tlb_resp_bits_data_pteidx_0,
  output        io__tlb_resp_bits_data_pteidx_1,
  output        io__tlb_resp_bits_data_pteidx_2,
  output        io__tlb_resp_bits_data_pteidx_3,
  output        io__tlb_resp_bits_data_pteidx_4,
  output        io__tlb_resp_bits_data_pteidx_5,
  output        io__tlb_resp_bits_data_pteidx_6,
  output        io__tlb_resp_bits_data_pteidx_7,
  output        io__tlb_resp_bits_data_pf,
  output        io__tlb_resp_bits_data_af,
  output        io__tlb_resp_bits_vector_0,
  output        io__tlb_resp_bits_vector_1,
  output        io__tlb_resp_bits_vector_2,
  output        io__tlb_resp_bits_vector_3,
  output        io__tlb_resp_bits_vector_4,
  output        io__tlb_resp_bits_vector_5,
  input         io__ptw_req_0_ready,
  output        io__ptw_req_0_valid,
  output [26:0] io__ptw_req_0_bits_vpn,
  output        io__ptw_resp_ready,
  input         io__ptw_resp_valid,
  input  [23:0] io__ptw_resp_bits_entry_tag,
  input  [15:0] io__ptw_resp_bits_entry_asid,
  input         io__ptw_resp_bits_entry_perm_d,
  input         io__ptw_resp_bits_entry_perm_a,
  input         io__ptw_resp_bits_entry_perm_g,
  input         io__ptw_resp_bits_entry_perm_u,
  input         io__ptw_resp_bits_entry_perm_x,
  input         io__ptw_resp_bits_entry_perm_w,
  input         io__ptw_resp_bits_entry_perm_r,
  input  [1:0]  io__ptw_resp_bits_entry_level,
  input  [20:0] io__ptw_resp_bits_entry_ppn,
  input  [2:0]  io__ptw_resp_bits_ppn_low_0,
  input  [2:0]  io__ptw_resp_bits_ppn_low_1,
  input  [2:0]  io__ptw_resp_bits_ppn_low_2,
  input  [2:0]  io__ptw_resp_bits_ppn_low_3,
  input  [2:0]  io__ptw_resp_bits_ppn_low_4,
  input  [2:0]  io__ptw_resp_bits_ppn_low_5,
  input  [2:0]  io__ptw_resp_bits_ppn_low_6,
  input  [2:0]  io__ptw_resp_bits_ppn_low_7,
  input         io__ptw_resp_bits_valididx_0,
  input         io__ptw_resp_bits_valididx_1,
  input         io__ptw_resp_bits_valididx_2,
  input         io__ptw_resp_bits_valididx_3,
  input         io__ptw_resp_bits_valididx_4,
  input         io__ptw_resp_bits_valididx_5,
  input         io__ptw_resp_bits_valididx_6,
  input         io__ptw_resp_bits_valididx_7,
  input         io__ptw_resp_bits_pteidx_0,
  input         io__ptw_resp_bits_pteidx_1,
  input         io__ptw_resp_bits_pteidx_2,
  input         io__ptw_resp_bits_pteidx_3,
  input         io__ptw_resp_bits_pteidx_4,
  input         io__ptw_resp_bits_pteidx_5,
  input         io__ptw_resp_bits_pteidx_6,
  input         io__ptw_resp_bits_pteidx_7,
  input         io__ptw_resp_bits_pf,
  input         io__ptw_resp_bits_af,
  output        io__rob_head_miss_in_tlb,
  output        io_rob_head_miss_in_tlb,
  input         rob_head_vaddr_0_valid,
  input  [38:0] rob_head_vaddr_0_bits
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
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
`endif // RANDOMIZE_REG_INIT
  wire  flush_delay_clock; // @[Hold.scala 97:23]
  wire  flush_delay_io_in; // @[Hold.scala 97:23]
  wire  flush_delay_io_out; // @[Hold.scala 97:23]
  reg  v_0; // @[Repeater.scala 158:18]
  reg  v_1; // @[Repeater.scala 158:18]
  reg  v_2; // @[Repeater.scala 158:18]
  reg  v_3; // @[Repeater.scala 158:18]
  reg  v_4; // @[Repeater.scala 158:18]
  reg  v_5; // @[Repeater.scala 158:18]
  reg  v_6; // @[Repeater.scala 158:18]
  reg  v_7; // @[Repeater.scala 158:18]
  reg  ports_0_0; // @[Repeater.scala 159:18]
  reg  ports_0_1; // @[Repeater.scala 159:18]
  reg  ports_0_2; // @[Repeater.scala 159:18]
  reg  ports_0_3; // @[Repeater.scala 159:18]
  reg  ports_0_4; // @[Repeater.scala 159:18]
  reg  ports_0_5; // @[Repeater.scala 159:18]
  reg  ports_1_0; // @[Repeater.scala 159:18]
  reg  ports_1_1; // @[Repeater.scala 159:18]
  reg  ports_1_2; // @[Repeater.scala 159:18]
  reg  ports_1_3; // @[Repeater.scala 159:18]
  reg  ports_1_4; // @[Repeater.scala 159:18]
  reg  ports_1_5; // @[Repeater.scala 159:18]
  reg  ports_2_0; // @[Repeater.scala 159:18]
  reg  ports_2_1; // @[Repeater.scala 159:18]
  reg  ports_2_2; // @[Repeater.scala 159:18]
  reg  ports_2_3; // @[Repeater.scala 159:18]
  reg  ports_2_4; // @[Repeater.scala 159:18]
  reg  ports_2_5; // @[Repeater.scala 159:18]
  reg  ports_3_0; // @[Repeater.scala 159:18]
  reg  ports_3_1; // @[Repeater.scala 159:18]
  reg  ports_3_2; // @[Repeater.scala 159:18]
  reg  ports_3_3; // @[Repeater.scala 159:18]
  reg  ports_3_4; // @[Repeater.scala 159:18]
  reg  ports_3_5; // @[Repeater.scala 159:18]
  reg  ports_4_0; // @[Repeater.scala 159:18]
  reg  ports_4_1; // @[Repeater.scala 159:18]
  reg  ports_4_2; // @[Repeater.scala 159:18]
  reg  ports_4_3; // @[Repeater.scala 159:18]
  reg  ports_4_4; // @[Repeater.scala 159:18]
  reg  ports_4_5; // @[Repeater.scala 159:18]
  reg  ports_5_0; // @[Repeater.scala 159:18]
  reg  ports_5_1; // @[Repeater.scala 159:18]
  reg  ports_5_2; // @[Repeater.scala 159:18]
  reg  ports_5_3; // @[Repeater.scala 159:18]
  reg  ports_5_4; // @[Repeater.scala 159:18]
  reg  ports_5_5; // @[Repeater.scala 159:18]
  reg  ports_6_0; // @[Repeater.scala 159:18]
  reg  ports_6_1; // @[Repeater.scala 159:18]
  reg  ports_6_2; // @[Repeater.scala 159:18]
  reg  ports_6_3; // @[Repeater.scala 159:18]
  reg  ports_6_4; // @[Repeater.scala 159:18]
  reg  ports_6_5; // @[Repeater.scala 159:18]
  reg  ports_7_0; // @[Repeater.scala 159:18]
  reg  ports_7_1; // @[Repeater.scala 159:18]
  reg  ports_7_2; // @[Repeater.scala 159:18]
  reg  ports_7_3; // @[Repeater.scala 159:18]
  reg  ports_7_4; // @[Repeater.scala 159:18]
  reg  ports_7_5; // @[Repeater.scala 159:18]
  reg [26:0] vpn_0; // @[Repeater.scala 160:16]
  reg [26:0] vpn_1; // @[Repeater.scala 160:16]
  reg [26:0] vpn_2; // @[Repeater.scala 160:16]
  reg [26:0] vpn_3; // @[Repeater.scala 160:16]
  reg [26:0] vpn_4; // @[Repeater.scala 160:16]
  reg [26:0] vpn_5; // @[Repeater.scala 160:16]
  reg [26:0] vpn_6; // @[Repeater.scala 160:16]
  reg [26:0] vpn_7; // @[Repeater.scala 160:16]
  reg [2:0] enqPtr; // @[Repeater.scala 162:23]
  reg [2:0] issPtr; // @[Repeater.scala 163:23]
  reg [2:0] deqPtr; // @[Repeater.scala 164:23]
  reg  mayFullDeq; // @[Repeater.scala 165:27]
  reg  mayFullIss; // @[Repeater.scala 166:27]
  reg [3:0] counter; // @[Repeater.scala 167:24]
  reg [3:0] inflight_counter; // @[Repeater.scala 173:33]
  wire  inflight_full = inflight_counter == 4'h8; // @[Repeater.scala 174:40]
  wire  _T = io__ptw_req_0_ready & io__ptw_req_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_1 = io__ptw_resp_ready & io__ptw_resp_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _inflight_counter_T_2 = inflight_counter + 4'h1; // @[Repeater.scala 176:68]
  wire [3:0] _inflight_counter_T_4 = inflight_counter - 4'h1; // @[Repeater.scala 176:92]
  reg [23:0] ptwResp_entry_tag; // @[Reg.scala 16:16]
  reg [15:0] ptwResp_entry_asid; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_d; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_a; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_g; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_u; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_x; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_w; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_r; // @[Reg.scala 16:16]
  reg [1:0] ptwResp_entry_level; // @[Reg.scala 16:16]
  reg [20:0] ptwResp_entry_ppn; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_0; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_1; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_2; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_3; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_4; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_5; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_6; // @[Reg.scala 16:16]
  reg [2:0] ptwResp_ppn_low_7; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_0; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_1; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_2; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_3; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_4; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_5; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_6; // @[Reg.scala 16:16]
  reg  ptwResp_valididx_7; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_0; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_1; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_2; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_3; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_4; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_5; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_6; // @[Reg.scala 16:16]
  reg  ptwResp_pteidx_7; // @[Reg.scala 16:16]
  reg  ptwResp_pf; // @[Reg.scala 16:16]
  reg  ptwResp_af; // @[Reg.scala 16:16]
  wire  ptwResp_OldMatchVec_hit0 = io__ptw_resp_bits_entry_tag[23:15] == vpn_0[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1 = io__ptw_resp_bits_entry_tag[14:6] == vpn_0[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2 = io__ptw_resp_bits_entry_tag[5:0] == vpn_0[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_5 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1 &
    ptwResp_OldMatchVec_hit0 : ptwResp_OldMatchVec_hit0; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_6 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2 &
    ptwResp_OldMatchVec_hit1 & ptwResp_OldMatchVec_hit0 : _ptwResp_OldMatchVec_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_42 = 3'h1 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_43 = 3'h2 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_42; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_44 = 3'h3 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_43; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_45 = 3'h4 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_44; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_46 = 3'h5 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_45; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_47 = 3'h6 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_46; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_48 = 3'h7 == vpn_0[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_47; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_8 = _ptwResp_OldMatchVec_T_6 & _GEN_48; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_0 = v_0 & _ptwResp_OldMatchVec_T_8; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_1 = io__ptw_resp_bits_entry_tag[23:15] == vpn_1[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_1 = io__ptw_resp_bits_entry_tag[14:6] == vpn_1[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_1 = io__ptw_resp_bits_entry_tag[5:0] == vpn_1[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_14 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_1 &
    ptwResp_OldMatchVec_hit0_1 : ptwResp_OldMatchVec_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_15 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_1 &
    ptwResp_OldMatchVec_hit1_1 & ptwResp_OldMatchVec_hit0_1 : _ptwResp_OldMatchVec_T_14; // @[MMUBundle.scala 1017:22]
  wire  _GEN_50 = 3'h1 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_51 = 3'h2 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_50; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_52 = 3'h3 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_51; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_53 = 3'h4 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_52; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_54 = 3'h5 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_53; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_55 = 3'h6 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_54; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_56 = 3'h7 == vpn_1[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_55; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_17 = _ptwResp_OldMatchVec_T_15 & _GEN_56; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_1 = v_1 & _ptwResp_OldMatchVec_T_17; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_2 = io__ptw_resp_bits_entry_tag[23:15] == vpn_2[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_2 = io__ptw_resp_bits_entry_tag[14:6] == vpn_2[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_2 = io__ptw_resp_bits_entry_tag[5:0] == vpn_2[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_23 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_2 &
    ptwResp_OldMatchVec_hit0_2 : ptwResp_OldMatchVec_hit0_2; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_24 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_2 &
    ptwResp_OldMatchVec_hit1_2 & ptwResp_OldMatchVec_hit0_2 : _ptwResp_OldMatchVec_T_23; // @[MMUBundle.scala 1017:22]
  wire  _GEN_58 = 3'h1 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_59 = 3'h2 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_58; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_60 = 3'h3 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_59; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_61 = 3'h4 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_60; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_62 = 3'h5 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_61; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_63 = 3'h6 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_62; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_64 = 3'h7 == vpn_2[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_63; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_26 = _ptwResp_OldMatchVec_T_24 & _GEN_64; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_2 = v_2 & _ptwResp_OldMatchVec_T_26; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_3 = io__ptw_resp_bits_entry_tag[23:15] == vpn_3[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_3 = io__ptw_resp_bits_entry_tag[14:6] == vpn_3[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_3 = io__ptw_resp_bits_entry_tag[5:0] == vpn_3[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_32 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_3 &
    ptwResp_OldMatchVec_hit0_3 : ptwResp_OldMatchVec_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_33 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_3 &
    ptwResp_OldMatchVec_hit1_3 & ptwResp_OldMatchVec_hit0_3 : _ptwResp_OldMatchVec_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_66 = 3'h1 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_67 = 3'h2 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_66; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_68 = 3'h3 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_67; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_69 = 3'h4 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_68; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_70 = 3'h5 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_69; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_71 = 3'h6 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_70; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_72 = 3'h7 == vpn_3[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_71; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_35 = _ptwResp_OldMatchVec_T_33 & _GEN_72; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_3 = v_3 & _ptwResp_OldMatchVec_T_35; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_4 = io__ptw_resp_bits_entry_tag[23:15] == vpn_4[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_4 = io__ptw_resp_bits_entry_tag[14:6] == vpn_4[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_4 = io__ptw_resp_bits_entry_tag[5:0] == vpn_4[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_41 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_4 &
    ptwResp_OldMatchVec_hit0_4 : ptwResp_OldMatchVec_hit0_4; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_42 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_4 &
    ptwResp_OldMatchVec_hit1_4 & ptwResp_OldMatchVec_hit0_4 : _ptwResp_OldMatchVec_T_41; // @[MMUBundle.scala 1017:22]
  wire  _GEN_74 = 3'h1 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_75 = 3'h2 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_74; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_76 = 3'h3 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_75; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_77 = 3'h4 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_76; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_78 = 3'h5 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_77; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_79 = 3'h6 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_78; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_80 = 3'h7 == vpn_4[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_79; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_44 = _ptwResp_OldMatchVec_T_42 & _GEN_80; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_4 = v_4 & _ptwResp_OldMatchVec_T_44; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_5 = io__ptw_resp_bits_entry_tag[23:15] == vpn_5[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_5 = io__ptw_resp_bits_entry_tag[14:6] == vpn_5[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_5 = io__ptw_resp_bits_entry_tag[5:0] == vpn_5[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_50 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_5 &
    ptwResp_OldMatchVec_hit0_5 : ptwResp_OldMatchVec_hit0_5; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_51 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_5 &
    ptwResp_OldMatchVec_hit1_5 & ptwResp_OldMatchVec_hit0_5 : _ptwResp_OldMatchVec_T_50; // @[MMUBundle.scala 1017:22]
  wire  _GEN_82 = 3'h1 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_83 = 3'h2 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_82; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_84 = 3'h3 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_83; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_85 = 3'h4 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_84; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_86 = 3'h5 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_85; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_87 = 3'h6 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_86; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_88 = 3'h7 == vpn_5[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_87; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_53 = _ptwResp_OldMatchVec_T_51 & _GEN_88; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_5 = v_5 & _ptwResp_OldMatchVec_T_53; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_6 = io__ptw_resp_bits_entry_tag[23:15] == vpn_6[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_6 = io__ptw_resp_bits_entry_tag[14:6] == vpn_6[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_6 = io__ptw_resp_bits_entry_tag[5:0] == vpn_6[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_59 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_6 &
    ptwResp_OldMatchVec_hit0_6 : ptwResp_OldMatchVec_hit0_6; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_60 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_6 &
    ptwResp_OldMatchVec_hit1_6 & ptwResp_OldMatchVec_hit0_6 : _ptwResp_OldMatchVec_T_59; // @[MMUBundle.scala 1017:22]
  wire  _GEN_90 = 3'h1 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_91 = 3'h2 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_90; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_92 = 3'h3 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_91; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_93 = 3'h4 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_92; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_94 = 3'h5 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_93; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_95 = 3'h6 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_94; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_96 = 3'h7 == vpn_6[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_95; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_62 = _ptwResp_OldMatchVec_T_60 & _GEN_96; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_6 = v_6 & _ptwResp_OldMatchVec_T_62; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_7 = io__ptw_resp_bits_entry_tag[23:15] == vpn_7[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_7 = io__ptw_resp_bits_entry_tag[14:6] == vpn_7[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_7 = io__ptw_resp_bits_entry_tag[5:0] == vpn_7[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_68 = io__ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_7 &
    ptwResp_OldMatchVec_hit0_7 : ptwResp_OldMatchVec_hit0_7; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_69 = io__ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_7 &
    ptwResp_OldMatchVec_hit1_7 & ptwResp_OldMatchVec_hit0_7 : _ptwResp_OldMatchVec_T_68; // @[MMUBundle.scala 1017:22]
  wire  _GEN_98 = 3'h1 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_99 = 3'h2 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_98; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_100 = 3'h3 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_99; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_101 = 3'h4 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_100; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_102 = 3'h5 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_101; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_103 = 3'h6 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_102; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_104 = 3'h7 == vpn_7[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_103; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_71 = _ptwResp_OldMatchVec_T_69 & _GEN_104; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_7 = v_7 & _ptwResp_OldMatchVec_T_71; // @[Repeater.scala 182:8]
  wire [7:0] _ptwResp_valid_T_1 = {ptwResp_OldMatchVec_0,ptwResp_OldMatchVec_1,ptwResp_OldMatchVec_2,
    ptwResp_OldMatchVec_3,ptwResp_OldMatchVec_4,ptwResp_OldMatchVec_5,ptwResp_OldMatchVec_6,ptwResp_OldMatchVec_7}; // @[Cat.scala 31:58]
  reg  ptwResp_valid; // @[Repeater.scala 183:30]
  wire  oldMatchVec_early_0_0 = v_0 & vpn_0 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_1 = v_1 & vpn_1 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_2 = v_2 & vpn_2 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_3 = v_3 & vpn_3 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_4 = v_4 & vpn_4 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_5 = v_5 & vpn_5 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_6 = v_6 & vpn_6 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_7 = v_7 & vpn_7 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_0 = v_0 & vpn_0 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_1 = v_1 & vpn_1 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_2 = v_2 & vpn_2 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_3 = v_3 & vpn_3 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_4 = v_4 & vpn_4 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_5 = v_5 & vpn_5 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_6 = v_6 & vpn_6 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_7 = v_7 & vpn_7 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_0 = v_0 & vpn_0 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_1 = v_1 & vpn_1 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_2 = v_2 & vpn_2 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_3 = v_3 & vpn_3 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_4 = v_4 & vpn_4 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_5 = v_5 & vpn_5 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_6 = v_6 & vpn_6 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_7 = v_7 & vpn_7 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_0 = v_0 & vpn_0 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_1 = v_1 & vpn_1 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_2 = v_2 & vpn_2 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_3 = v_3 & vpn_3 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_4 = v_4 & vpn_4 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_5 = v_5 & vpn_5 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_6 = v_6 & vpn_6 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_4_7 = v_7 & vpn_7 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
  reg [26:0] tlb_req_0_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_0_valid_REG; // @[Repeater.scala 190:32]
  wire  ptwResp_newMatchVec_hit2 = ptwResp_entry_tag[5:0] == tlb_req_0_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1 = ptwResp_entry_tag[14:6] == tlb_req_0_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0 = ptwResp_entry_tag[23:15] == tlb_req_0_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_5 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1 & ptwResp_newMatchVec_hit0 :
    ptwResp_newMatchVec_hit0; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_6 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2 & ptwResp_newMatchVec_hit1 &
    ptwResp_newMatchVec_hit0 : _ptwResp_newMatchVec_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_178 = 3'h1 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_179 = 3'h2 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_178; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_180 = 3'h3 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_179; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_181 = 3'h4 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_180; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_182 = 3'h5 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_181; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_183 = 3'h6 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_182; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_184 = 3'h7 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_183; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_8 = _ptwResp_newMatchVec_T_6 & _GEN_184; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_0 = ptwResp_valid & _ptwResp_newMatchVec_T_8; // @[Repeater.scala 202:19]
  reg  oldMatchVec_0; // @[Repeater.scala 197:55]
  wire  reqs_reqs_merge = ptwResp_newMatchVec_0 | oldMatchVec_0; // @[Repeater.scala 211:32]
  wire  reqs_0_valid = ~reqs_reqs_merge & tlb_req_0_valid_REG; // @[Repeater.scala 220:27]
  reg [26:0] tlb_req_1_bits_rvpn; // @[Reg.scala 16:16]
  wire  ptwResp_newMatchVec_hit2_1 = ptwResp_entry_tag[5:0] == tlb_req_1_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1_1 = ptwResp_entry_tag[14:6] == tlb_req_1_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0_1 = ptwResp_entry_tag[23:15] == tlb_req_1_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_14 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_1 &
    ptwResp_newMatchVec_hit0_1 : ptwResp_newMatchVec_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_15 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_1 &
    ptwResp_newMatchVec_hit1_1 & ptwResp_newMatchVec_hit0_1 : _ptwResp_newMatchVec_T_14; // @[MMUBundle.scala 1017:22]
  wire  _GEN_186 = 3'h1 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_187 = 3'h2 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_186; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_188 = 3'h3 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_187; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_189 = 3'h4 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_188; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_190 = 3'h5 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_189; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_191 = 3'h6 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_190; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_192 = 3'h7 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_191; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_17 = _ptwResp_newMatchVec_T_15 & _GEN_192; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_1 = ptwResp_valid & _ptwResp_newMatchVec_T_17; // @[Repeater.scala 202:19]
  reg  oldMatchVec_1; // @[Repeater.scala 197:55]
  reg  newMatchVec_REG_6; // @[Repeater.scala 199:12]
  wire  newMatchVec_1_0 = newMatchVec_REG_6 & tlb_req_0_valid_REG; // @[Repeater.scala 199:38]
  wire  _reqs_reqs_merge_T_3 = |newMatchVec_1_0; // @[Repeater.scala 212:41]
  wire  reqs_reqs_merge_1 = ptwResp_newMatchVec_1 | oldMatchVec_1 | _reqs_reqs_merge_T_3; // @[Repeater.scala 211:54]
  reg  tlb_req_1_valid_REG; // @[Repeater.scala 190:32]
  wire  reqs_1_valid = ~reqs_reqs_merge_1 & tlb_req_1_valid_REG; // @[Repeater.scala 220:27]
  wire [1:0] _enqNum_T = {{1'd0}, reqs_1_valid}; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_1530 = {{1'd0}, reqs_0_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _enqNum_T_2 = _GEN_1530 + _enqNum_T; // @[Bitwise.scala 48:55]
  reg [26:0] tlb_req_3_bits_rvpn; // @[Reg.scala 16:16]
  wire  ptwResp_newMatchVec_hit2_3 = ptwResp_entry_tag[5:0] == tlb_req_3_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1_3 = ptwResp_entry_tag[14:6] == tlb_req_3_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0_3 = ptwResp_entry_tag[23:15] == tlb_req_3_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_32 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_3 &
    ptwResp_newMatchVec_hit0_3 : ptwResp_newMatchVec_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_33 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_3 &
    ptwResp_newMatchVec_hit1_3 & ptwResp_newMatchVec_hit0_3 : _ptwResp_newMatchVec_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_202 = 3'h1 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_203 = 3'h2 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_202; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_204 = 3'h3 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_203; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_205 = 3'h4 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_204; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_206 = 3'h5 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_205; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_207 = 3'h6 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_206; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_208 = 3'h7 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_207; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_35 = _ptwResp_newMatchVec_T_33 & _GEN_208; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_3 = ptwResp_valid & _ptwResp_newMatchVec_T_35; // @[Repeater.scala 202:19]
  reg  oldMatchVec_3; // @[Repeater.scala 197:55]
  reg  newMatchVec_REG_18; // @[Repeater.scala 199:12]
  wire  newMatchVec_3_0 = newMatchVec_REG_18 & tlb_req_0_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_19; // @[Repeater.scala 199:12]
  wire  newMatchVec_3_1 = newMatchVec_REG_19 & tlb_req_1_valid_REG; // @[Repeater.scala 199:38]
  wire [2:0] _reqs_reqs_merge_T_8 = {newMatchVec_3_0,newMatchVec_3_1,1'h0}; // @[Cat.scala 31:58]
  wire  _reqs_reqs_merge_T_9 = |_reqs_reqs_merge_T_8; // @[Repeater.scala 212:41]
  wire  reqs_reqs_merge_3 = ptwResp_newMatchVec_3 | oldMatchVec_3 | _reqs_reqs_merge_T_9; // @[Repeater.scala 211:54]
  reg  tlb_req_3_valid_REG; // @[Repeater.scala 190:32]
  wire  reqs_3_valid = ~reqs_reqs_merge_3 & tlb_req_3_valid_REG; // @[Repeater.scala 220:27]
  reg [26:0] tlb_req_4_bits_rvpn; // @[Reg.scala 16:16]
  wire  ptwResp_newMatchVec_hit2_4 = ptwResp_entry_tag[5:0] == tlb_req_4_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1_4 = ptwResp_entry_tag[14:6] == tlb_req_4_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0_4 = ptwResp_entry_tag[23:15] == tlb_req_4_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_41 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_4 &
    ptwResp_newMatchVec_hit0_4 : ptwResp_newMatchVec_hit0_4; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_42 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_4 &
    ptwResp_newMatchVec_hit1_4 & ptwResp_newMatchVec_hit0_4 : _ptwResp_newMatchVec_T_41; // @[MMUBundle.scala 1017:22]
  wire  _GEN_210 = 3'h1 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_211 = 3'h2 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_210; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_212 = 3'h3 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_211; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_213 = 3'h4 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_212; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_214 = 3'h5 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_213; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_215 = 3'h6 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_214; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_216 = 3'h7 == tlb_req_4_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_215; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_44 = _ptwResp_newMatchVec_T_42 & _GEN_216; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_4 = ptwResp_valid & _ptwResp_newMatchVec_T_44; // @[Repeater.scala 202:19]
  reg  oldMatchVec_4; // @[Repeater.scala 197:55]
  reg  newMatchVec_REG_24; // @[Repeater.scala 199:12]
  wire  newMatchVec_4_0 = newMatchVec_REG_24 & tlb_req_0_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_25; // @[Repeater.scala 199:12]
  wire  newMatchVec_4_1 = newMatchVec_REG_25 & tlb_req_1_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_27; // @[Repeater.scala 199:12]
  wire  newMatchVec_4_3 = newMatchVec_REG_27 & tlb_req_3_valid_REG; // @[Repeater.scala 199:38]
  wire [3:0] _reqs_reqs_merge_T_11 = {newMatchVec_4_0,newMatchVec_4_1,1'h0,newMatchVec_4_3}; // @[Cat.scala 31:58]
  wire  _reqs_reqs_merge_T_12 = |_reqs_reqs_merge_T_11; // @[Repeater.scala 212:41]
  wire  reqs_reqs_merge_4 = ptwResp_newMatchVec_4 | oldMatchVec_4 | _reqs_reqs_merge_T_12; // @[Repeater.scala 211:54]
  reg  tlb_req_4_valid_REG; // @[Repeater.scala 190:32]
  wire  reqs_4_valid = ~reqs_reqs_merge_4 & tlb_req_4_valid_REG; // @[Repeater.scala 220:27]
  wire [1:0] _enqNum_T_4 = {{1'd0}, reqs_4_valid}; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_1531 = {{1'd0}, reqs_3_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _enqNum_T_6 = _GEN_1531 + _enqNum_T_4; // @[Bitwise.scala 48:55]
  wire [2:0] enqNum = _enqNum_T_2[1:0] + _enqNum_T_6[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_1532 = {{1'd0}, enqNum}; // @[Repeater.scala 235:25]
  wire [4:0] _canEnqueue_T = counter + _GEN_1532; // @[Repeater.scala 235:25]
  wire  canEnqueue = _canEnqueue_T <= 5'h8; // @[Repeater.scala 235:35]
  wire  lastReqMatchVec_early_0_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io__tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_0_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io__tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_0_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io__tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_0_4 = tlb_req_4_valid_REG & tlb_req_4_bits_rvpn == io__tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io__tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io__tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io__tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_4 = tlb_req_4_valid_REG & tlb_req_4_bits_rvpn == io__tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io__tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io__tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io__tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_4 = tlb_req_4_valid_REG & tlb_req_4_bits_rvpn == io__tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_4_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io__tlb_req_4_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_4_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io__tlb_req_4_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_4_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io__tlb_req_4_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_4_4 = tlb_req_4_valid_REG & tlb_req_4_bits_rvpn == io__tlb_req_4_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  tlb_req_0_valid_hit0 = ptwResp_entry_tag[23:15] == io__tlb_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_0_valid_hit1 = ptwResp_entry_tag[14:6] == io__tlb_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_0_valid_hit2 = ptwResp_entry_tag[5:0] == io__tlb_req_0_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_0_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_0_valid_hit1 & tlb_req_0_valid_hit0 :
    tlb_req_0_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_0_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_0_valid_hit2 & tlb_req_0_valid_hit1 &
    tlb_req_0_valid_hit0 : _tlb_req_0_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_106 = 3'h1 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_107 = 3'h2 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_106; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_108 = 3'h3 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_107; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_109 = 3'h4 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_108; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_110 = 3'h5 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_109; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_111 = 3'h6 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_110; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_112 = 3'h7 == io__tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_111; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_0_valid_T_8 = _tlb_req_0_valid_T_6 & _GEN_112; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_0_valid_T_10 = ~(ptwResp_valid & _tlb_req_0_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_0_valid_T_11 = io__tlb_req_0_valid & _tlb_req_0_valid_T_10; // @[Repeater.scala 190:53]
  wire [5:0] _tlb_req_0_valid_T_12 = {lastReqMatchVec_early_0_0,lastReqMatchVec_early_0_1,1'h0,lastReqMatchVec_early_0_3
    ,lastReqMatchVec_early_0_4,1'h0}; // @[Cat.scala 31:58]
  wire  _tlb_req_0_valid_T_14 = ~(|_tlb_req_0_valid_T_12); // @[Repeater.scala 192:7]
  wire  tlb_req_1_valid_hit0 = ptwResp_entry_tag[23:15] == io__tlb_req_1_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_1_valid_hit1 = ptwResp_entry_tag[14:6] == io__tlb_req_1_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_1_valid_hit2 = ptwResp_entry_tag[5:0] == io__tlb_req_1_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_1_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_1_valid_hit1 & tlb_req_1_valid_hit0 :
    tlb_req_1_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_1_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_1_valid_hit2 & tlb_req_1_valid_hit1 &
    tlb_req_1_valid_hit0 : _tlb_req_1_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_118 = 3'h1 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_119 = 3'h2 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_118; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_120 = 3'h3 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_119; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_121 = 3'h4 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_120; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_122 = 3'h5 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_121; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_123 = 3'h6 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_122; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_124 = 3'h7 == io__tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_123; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_1_valid_T_8 = _tlb_req_1_valid_T_6 & _GEN_124; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_1_valid_T_10 = ~(ptwResp_valid & _tlb_req_1_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_1_valid_T_11 = io__tlb_req_1_valid & _tlb_req_1_valid_T_10; // @[Repeater.scala 190:53]
  wire [5:0] _tlb_req_1_valid_T_12 = {lastReqMatchVec_early_1_0,lastReqMatchVec_early_1_1,1'h0,lastReqMatchVec_early_1_3
    ,lastReqMatchVec_early_1_4,1'h0}; // @[Cat.scala 31:58]
  wire  _tlb_req_1_valid_T_14 = ~(|_tlb_req_1_valid_T_12); // @[Repeater.scala 192:7]
  wire  tlb_req_3_valid_hit0 = ptwResp_entry_tag[23:15] == io__tlb_req_3_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_3_valid_hit1 = ptwResp_entry_tag[14:6] == io__tlb_req_3_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_3_valid_hit2 = ptwResp_entry_tag[5:0] == io__tlb_req_3_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_3_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_3_valid_hit1 & tlb_req_3_valid_hit0 :
    tlb_req_3_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_3_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_3_valid_hit2 & tlb_req_3_valid_hit1 &
    tlb_req_3_valid_hit0 : _tlb_req_3_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_142 = 3'h1 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_143 = 3'h2 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_142; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_144 = 3'h3 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_143; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_145 = 3'h4 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_144; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_146 = 3'h5 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_145; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_147 = 3'h6 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_146; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_148 = 3'h7 == io__tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_147; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_3_valid_T_8 = _tlb_req_3_valid_T_6 & _GEN_148; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_3_valid_T_10 = ~(ptwResp_valid & _tlb_req_3_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_3_valid_T_11 = io__tlb_req_3_valid & _tlb_req_3_valid_T_10; // @[Repeater.scala 190:53]
  wire [5:0] _tlb_req_3_valid_T_12 = {lastReqMatchVec_early_3_0,lastReqMatchVec_early_3_1,1'h0,lastReqMatchVec_early_3_3
    ,lastReqMatchVec_early_3_4,1'h0}; // @[Cat.scala 31:58]
  wire  _tlb_req_3_valid_T_14 = ~(|_tlb_req_3_valid_T_12); // @[Repeater.scala 192:7]
  wire  tlb_req_4_valid_hit0 = ptwResp_entry_tag[23:15] == io__tlb_req_4_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_4_valid_hit1 = ptwResp_entry_tag[14:6] == io__tlb_req_4_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_4_valid_hit2 = ptwResp_entry_tag[5:0] == io__tlb_req_4_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_4_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_4_valid_hit1 & tlb_req_4_valid_hit0 :
    tlb_req_4_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_4_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_4_valid_hit2 & tlb_req_4_valid_hit1 &
    tlb_req_4_valid_hit0 : _tlb_req_4_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_154 = 3'h1 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_155 = 3'h2 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_154; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_156 = 3'h3 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_155; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_157 = 3'h4 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_156; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_158 = 3'h5 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_157; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_159 = 3'h6 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_158; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_160 = 3'h7 == io__tlb_req_4_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_159; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_4_valid_T_8 = _tlb_req_4_valid_T_6 & _GEN_160; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_4_valid_T_10 = ~(ptwResp_valid & _tlb_req_4_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_4_valid_T_11 = io__tlb_req_4_valid & _tlb_req_4_valid_T_10; // @[Repeater.scala 190:53]
  wire [5:0] _tlb_req_4_valid_T_12 = {lastReqMatchVec_early_4_0,lastReqMatchVec_early_4_1,1'h0,lastReqMatchVec_early_4_3
    ,lastReqMatchVec_early_4_4,1'h0}; // @[Cat.scala 31:58]
  wire  _tlb_req_4_valid_T_14 = ~(|_tlb_req_4_valid_T_12); // @[Repeater.scala 192:7]
  wire [7:0] _oldMatchVec_T = {oldMatchVec_early_0_0,oldMatchVec_early_0_1,oldMatchVec_early_0_2,oldMatchVec_early_0_3,
    oldMatchVec_early_0_4,oldMatchVec_early_0_5,oldMatchVec_early_0_6,oldMatchVec_early_0_7}; // @[Cat.scala 31:58]
  wire [7:0] _oldMatchVec_T_2 = {oldMatchVec_early_1_0,oldMatchVec_early_1_1,oldMatchVec_early_1_2,oldMatchVec_early_1_3
    ,oldMatchVec_early_1_4,oldMatchVec_early_1_5,oldMatchVec_early_1_6,oldMatchVec_early_1_7}; // @[Cat.scala 31:58]
  wire [7:0] _oldMatchVec_T_6 = {oldMatchVec_early_3_0,oldMatchVec_early_3_1,oldMatchVec_early_3_2,oldMatchVec_early_3_3
    ,oldMatchVec_early_3_4,oldMatchVec_early_3_5,oldMatchVec_early_3_6,oldMatchVec_early_3_7}; // @[Cat.scala 31:58]
  wire [7:0] _oldMatchVec_T_8 = {oldMatchVec_early_4_0,oldMatchVec_early_4_1,oldMatchVec_early_4_2,oldMatchVec_early_4_3
    ,oldMatchVec_early_4_4,oldMatchVec_early_4_5,oldMatchVec_early_4_6,oldMatchVec_early_4_7}; // @[Cat.scala 31:58]
  reg  newMatchVec_REG_1; // @[Repeater.scala 199:12]
  wire  newMatchVec_0_1 = newMatchVec_REG_1 & tlb_req_1_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_3; // @[Repeater.scala 199:12]
  wire  newMatchVec_0_3 = newMatchVec_REG_3 & tlb_req_3_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_4; // @[Repeater.scala 199:12]
  wire  newMatchVec_0_4 = newMatchVec_REG_4 & tlb_req_4_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_9; // @[Repeater.scala 199:12]
  wire  newMatchVec_1_3 = newMatchVec_REG_9 & tlb_req_3_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_10; // @[Repeater.scala 199:12]
  wire  newMatchVec_1_4 = newMatchVec_REG_10 & tlb_req_4_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_22; // @[Repeater.scala 199:12]
  wire  newMatchVec_3_4 = newMatchVec_REG_22 & tlb_req_4_valid_REG; // @[Repeater.scala 199:38]
  reg  oldMatchVec2_REG; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_1; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_2; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_3; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_4; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_5; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_6; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_7; // @[Repeater.scala 204:79]
  wire  oldMatchVec2_0_0 = oldMatchVec2_REG & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_1 = oldMatchVec2_REG_1 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_2 = oldMatchVec2_REG_2 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_3 = oldMatchVec2_REG_3 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_4 = oldMatchVec2_REG_4 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_5 = oldMatchVec2_REG_5 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_6 = oldMatchVec2_REG_6 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_0_7 = oldMatchVec2_REG_7 & tlb_req_0_valid_REG; // @[Repeater.scala 204:90]
  reg  oldMatchVec2_REG_8; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_9; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_10; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_11; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_12; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_13; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_14; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_15; // @[Repeater.scala 204:79]
  wire  oldMatchVec2_1_0 = oldMatchVec2_REG_8 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_1 = oldMatchVec2_REG_9 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_2 = oldMatchVec2_REG_10 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_3 = oldMatchVec2_REG_11 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_4 = oldMatchVec2_REG_12 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_5 = oldMatchVec2_REG_13 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_6 = oldMatchVec2_REG_14 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_1_7 = oldMatchVec2_REG_15 & tlb_req_1_valid_REG; // @[Repeater.scala 204:90]
  reg  oldMatchVec2_REG_24; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_25; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_26; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_27; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_28; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_29; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_30; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_31; // @[Repeater.scala 204:79]
  wire  oldMatchVec2_3_0 = oldMatchVec2_REG_24 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_1 = oldMatchVec2_REG_25 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_2 = oldMatchVec2_REG_26 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_3 = oldMatchVec2_REG_27 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_4 = oldMatchVec2_REG_28 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_5 = oldMatchVec2_REG_29 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_6 = oldMatchVec2_REG_30 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_3_7 = oldMatchVec2_REG_31 & tlb_req_3_valid_REG; // @[Repeater.scala 204:90]
  reg  oldMatchVec2_REG_32; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_33; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_34; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_35; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_36; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_37; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_38; // @[Repeater.scala 204:79]
  reg  oldMatchVec2_REG_39; // @[Repeater.scala 204:79]
  wire  oldMatchVec2_4_0 = oldMatchVec2_REG_32 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_1 = oldMatchVec2_REG_33 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_2 = oldMatchVec2_REG_34 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_3 = oldMatchVec2_REG_35 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_4 = oldMatchVec2_REG_36 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_5 = oldMatchVec2_REG_37 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_6 = oldMatchVec2_REG_38 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire  oldMatchVec2_4_7 = oldMatchVec2_REG_39 & tlb_req_4_valid_REG; // @[Repeater.scala 204:90]
  wire [5:0] filter_ports_xs_0 = tlb_req_0_valid_REG ? 6'h1 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_1 = newMatchVec_0_1 ? 6'h2 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_3 = newMatchVec_0_3 ? 6'h8 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_4 = newMatchVec_0_4 ? 6'h10 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] _filter_ports_T_1 = filter_ports_xs_0 | filter_ports_xs_1; // @[ParallelMux.scala 36:53]
  wire [5:0] _filter_ports_T_3 = filter_ports_xs_3 | filter_ports_xs_4; // @[ParallelMux.scala 36:53]
  wire [5:0] filter_ports_0 = _filter_ports_T_1 | _filter_ports_T_3; // @[ParallelMux.scala 36:53]
  wire [5:0] filter_ports_xs_0_1 = tlb_req_1_valid_REG ? 6'h2 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_2_1 = newMatchVec_1_3 ? 6'h8 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_3_1 = newMatchVec_1_4 ? 6'h10 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] _filter_ports_T_7 = filter_ports_xs_2_1 | filter_ports_xs_3_1; // @[ParallelMux.scala 36:53]
  wire [5:0] filter_ports_1 = filter_ports_xs_0_1 | _filter_ports_T_7; // @[ParallelMux.scala 36:53]
  wire [5:0] filter_ports_xs_0_3 = tlb_req_3_valid_REG ? 6'h8 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_xs_1_3 = newMatchVec_3_4 ? 6'h10 : 6'h0; // @[ParallelMux.scala 64:44]
  wire [5:0] filter_ports_3 = filter_ports_xs_0_3 | filter_ports_xs_1_3; // @[ParallelMux.scala 36:53]
  wire [5:0] filter_ports_xs_0_4 = tlb_req_4_valid_REG ? 6'h10 : 6'h0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_0 = ptwResp_OldMatchVec_0 & ports_0_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_1 = ptwResp_OldMatchVec_0 & ports_0_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_2 = ptwResp_OldMatchVec_0 & ports_0_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_3 = ptwResp_OldMatchVec_0 & ports_0_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_4 = ptwResp_OldMatchVec_0 & ports_0_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_0_5 = ptwResp_OldMatchVec_0 & ports_0_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_0 = ptwResp_OldMatchVec_1 & ports_1_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_1 = ptwResp_OldMatchVec_1 & ports_1_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_2 = ptwResp_OldMatchVec_1 & ports_1_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_3 = ptwResp_OldMatchVec_1 & ports_1_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_4 = ptwResp_OldMatchVec_1 & ports_1_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_1_5 = ptwResp_OldMatchVec_1 & ports_1_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_0 = ptwResp_OldMatchVec_2 & ports_2_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_1 = ptwResp_OldMatchVec_2 & ports_2_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_2 = ptwResp_OldMatchVec_2 & ports_2_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_3 = ptwResp_OldMatchVec_2 & ports_2_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_4 = ptwResp_OldMatchVec_2 & ports_2_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_2_5 = ptwResp_OldMatchVec_2 & ports_2_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_0 = ptwResp_OldMatchVec_3 & ports_3_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_1 = ptwResp_OldMatchVec_3 & ports_3_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_2 = ptwResp_OldMatchVec_3 & ports_3_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_3 = ptwResp_OldMatchVec_3 & ports_3_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_4 = ptwResp_OldMatchVec_3 & ports_3_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_3_5 = ptwResp_OldMatchVec_3 & ports_3_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_0 = ptwResp_OldMatchVec_4 & ports_4_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_1 = ptwResp_OldMatchVec_4 & ports_4_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_2 = ptwResp_OldMatchVec_4 & ports_4_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_3 = ptwResp_OldMatchVec_4 & ports_4_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_4 = ptwResp_OldMatchVec_4 & ports_4_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_4_5 = ptwResp_OldMatchVec_4 & ports_4_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_0 = ptwResp_OldMatchVec_5 & ports_5_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_1 = ptwResp_OldMatchVec_5 & ports_5_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_2 = ptwResp_OldMatchVec_5 & ports_5_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_3 = ptwResp_OldMatchVec_5 & ports_5_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_4 = ptwResp_OldMatchVec_5 & ports_5_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_5_5 = ptwResp_OldMatchVec_5 & ports_5_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_0 = ptwResp_OldMatchVec_6 & ports_6_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_1 = ptwResp_OldMatchVec_6 & ports_6_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_2 = ptwResp_OldMatchVec_6 & ports_6_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_3 = ptwResp_OldMatchVec_6 & ports_6_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_4 = ptwResp_OldMatchVec_6 & ports_6_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_6_5 = ptwResp_OldMatchVec_6 & ports_6_5; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_0 = ptwResp_OldMatchVec_7 & ports_7_0; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_1 = ptwResp_OldMatchVec_7 & ports_7_1; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_2 = ptwResp_OldMatchVec_7 & ports_7_2; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_3 = ptwResp_OldMatchVec_7 & ports_7_3; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_4 = ptwResp_OldMatchVec_7 & ports_7_4; // @[ParallelMux.scala 64:44]
  wire  resp_vector_xs_7_5 = ptwResp_OldMatchVec_7 & ports_7_5; // @[ParallelMux.scala 64:44]
  wire [5:0] _resp_vector_T = {resp_vector_xs_0_5,resp_vector_xs_0_4,resp_vector_xs_0_3,resp_vector_xs_0_2,
    resp_vector_xs_0_1,resp_vector_xs_0_0}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_1 = {resp_vector_xs_1_5,resp_vector_xs_1_4,resp_vector_xs_1_3,resp_vector_xs_1_2,
    resp_vector_xs_1_1,resp_vector_xs_1_0}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_2 = _resp_vector_T | _resp_vector_T_1; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_9 = {resp_vector_xs_2_5,resp_vector_xs_2_4,resp_vector_xs_2_3,resp_vector_xs_2_2,
    resp_vector_xs_2_1,resp_vector_xs_2_0}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_10 = {resp_vector_xs_3_5,resp_vector_xs_3_4,resp_vector_xs_3_3,resp_vector_xs_3_2,
    resp_vector_xs_3_1,resp_vector_xs_3_0}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_11 = _resp_vector_T_9 | _resp_vector_T_10; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_18 = {_resp_vector_T_2[5],_resp_vector_T_2[4],_resp_vector_T_2[3],_resp_vector_T_2[2],
    _resp_vector_T_2[1],_resp_vector_T_2[0]}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_19 = {_resp_vector_T_11[5],_resp_vector_T_11[4],_resp_vector_T_11[3],_resp_vector_T_11[2],
    _resp_vector_T_11[1],_resp_vector_T_11[0]}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_20 = _resp_vector_T_18 | _resp_vector_T_19; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_27 = {resp_vector_xs_4_5,resp_vector_xs_4_4,resp_vector_xs_4_3,resp_vector_xs_4_2,
    resp_vector_xs_4_1,resp_vector_xs_4_0}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_28 = {resp_vector_xs_5_5,resp_vector_xs_5_4,resp_vector_xs_5_3,resp_vector_xs_5_2,
    resp_vector_xs_5_1,resp_vector_xs_5_0}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_29 = _resp_vector_T_27 | _resp_vector_T_28; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_36 = {resp_vector_xs_6_5,resp_vector_xs_6_4,resp_vector_xs_6_3,resp_vector_xs_6_2,
    resp_vector_xs_6_1,resp_vector_xs_6_0}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_37 = {resp_vector_xs_7_5,resp_vector_xs_7_4,resp_vector_xs_7_3,resp_vector_xs_7_2,
    resp_vector_xs_7_1,resp_vector_xs_7_0}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_38 = _resp_vector_T_36 | _resp_vector_T_37; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_45 = {_resp_vector_T_29[5],_resp_vector_T_29[4],_resp_vector_T_29[3],_resp_vector_T_29[2],
    _resp_vector_T_29[1],_resp_vector_T_29[0]}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_46 = {_resp_vector_T_38[5],_resp_vector_T_38[4],_resp_vector_T_38[3],_resp_vector_T_38[2],
    _resp_vector_T_38[1],_resp_vector_T_38[0]}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_47 = _resp_vector_T_45 | _resp_vector_T_46; // @[ParallelMux.scala 36:53]
  wire [5:0] _resp_vector_T_54 = {_resp_vector_T_20[5],_resp_vector_T_20[4],_resp_vector_T_20[3],_resp_vector_T_20[2],
    _resp_vector_T_20[1],_resp_vector_T_20[0]}; // @[ParallelMux.scala 36:46]
  wire [5:0] _resp_vector_T_55 = {_resp_vector_T_47[5],_resp_vector_T_47[4],_resp_vector_T_47[3],_resp_vector_T_47[2],
    _resp_vector_T_47[1],_resp_vector_T_47[0]}; // @[ParallelMux.scala 36:57]
  wire [5:0] _resp_vector_T_56 = _resp_vector_T_54 | _resp_vector_T_55; // @[ParallelMux.scala 36:53]
  reg  resp_vector_0; // @[Reg.scala 16:16]
  reg  resp_vector_1; // @[Reg.scala 16:16]
  reg  resp_vector_2; // @[Reg.scala 16:16]
  reg  resp_vector_3; // @[Reg.scala 16:16]
  reg  resp_vector_4; // @[Reg.scala 16:16]
  reg  resp_vector_5; // @[Reg.scala 16:16]
  wire  _isFull_T = enqPtr == deqPtr; // @[Repeater.scala 228:23]
  wire  isEmptyDeq = _isFull_T & ~mayFullDeq; // @[Repeater.scala 229:38]
  wire  isEmptyIss = enqPtr == issPtr & ~mayFullIss; // @[Repeater.scala 230:38]
  wire [1:0] accumEnqNum_2 = reqs_0_valid + reqs_1_valid; // @[Bitwise.scala 48:55]
  wire [2:0] accumEnqNum_4 = accumEnqNum_2 + _GEN_1531; // @[Bitwise.scala 48:55]
  wire [3:0] _enqPtrVecInit_T = {{1'd0}, enqPtr}; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_0 = _enqPtrVecInit_T[2:0]; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_1 = enqPtr + 3'h1; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_2 = enqPtr + 3'h2; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_3 = enqPtr + 3'h3; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_4 = enqPtr + 3'h4; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_5 = enqPtr + 3'h5; // @[Repeater.scala 232:63]
  wire [2:0] _GEN_232 = reqs_0_valid ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_233 = 2'h2 == _GEN_1530 ? enqPtrVecInit_2 : _GEN_232; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_234 = 2'h3 == _GEN_1530 ? enqPtrVecInit_3 : _GEN_233; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_1536 = {{2'd0}, reqs_0_valid}; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_235 = 3'h4 == _GEN_1536 ? enqPtrVecInit_4 : _GEN_234; // @[Repeater.scala 233:{26,26}]
  wire [2:0] enqPtrVec_1 = 3'h5 == _GEN_1536 ? enqPtrVecInit_5 : _GEN_235; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_244 = 2'h1 == _enqNum_T_2[1:0] ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_245 = 2'h2 == _enqNum_T_2[1:0] ? enqPtrVecInit_2 : _GEN_244; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_246 = 2'h3 == _enqNum_T_2[1:0] ? enqPtrVecInit_3 : _GEN_245; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_1540 = {{1'd0}, _enqNum_T_2[1:0]}; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_247 = 3'h4 == _GEN_1540 ? enqPtrVecInit_4 : _GEN_246; // @[Repeater.scala 233:{26,26}]
  wire [2:0] enqPtrVec_3 = 3'h5 == _GEN_1540 ? enqPtrVecInit_5 : _GEN_247; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_250 = 3'h1 == accumEnqNum_4 ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_251 = 3'h2 == accumEnqNum_4 ? enqPtrVecInit_2 : _GEN_250; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_252 = 3'h3 == accumEnqNum_4 ? enqPtrVecInit_3 : _GEN_251; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_253 = 3'h4 == accumEnqNum_4 ? enqPtrVecInit_4 : _GEN_252; // @[Repeater.scala 233:{26,26}]
  wire [2:0] enqPtrVec_4 = 3'h5 == accumEnqNum_4 ? enqPtrVecInit_5 : _GEN_253; // @[Repeater.scala 233:{26,26}]
  wire  tlb_req_flushed_hit0 = io__ptw_resp_bits_entry_tag[23:15] == tlb_req_0_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1 = io__ptw_resp_bits_entry_tag[14:6] == tlb_req_0_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2 = io__ptw_resp_bits_entry_tag[5:0] == tlb_req_0_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_5 = io__ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1 & tlb_req_flushed_hit0 :
    tlb_req_flushed_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_6 = io__ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2 & tlb_req_flushed_hit1 &
    tlb_req_flushed_hit0 : _tlb_req_flushed_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_262 = 3'h1 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_263 = 3'h2 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_262; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_264 = 3'h3 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_263; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_265 = 3'h4 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_264; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_266 = 3'h5 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_265; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_267 = 3'h6 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_266; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_268 = 3'h7 == tlb_req_0_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_267; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_8 = _tlb_req_flushed_T_6 & _GEN_268; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_0 = io__ptw_resp_valid & _tlb_req_flushed_T_8; // @[Repeater.scala 244:57]
  wire  tlb_req_flushed_hit0_1 = io__ptw_resp_bits_entry_tag[23:15] == tlb_req_1_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1_1 = io__ptw_resp_bits_entry_tag[14:6] == tlb_req_1_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2_1 = io__ptw_resp_bits_entry_tag[5:0] == tlb_req_1_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_14 = io__ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1_1 & tlb_req_flushed_hit0_1
     : tlb_req_flushed_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_15 = io__ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2_1 & tlb_req_flushed_hit1_1
     & tlb_req_flushed_hit0_1 : _tlb_req_flushed_T_14; // @[MMUBundle.scala 1017:22]
  wire  _GEN_270 = 3'h1 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_271 = 3'h2 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_270; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_272 = 3'h3 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_271; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_273 = 3'h4 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_272; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_274 = 3'h5 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_273; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_275 = 3'h6 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_274; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_276 = 3'h7 == tlb_req_1_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_275; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_17 = _tlb_req_flushed_T_15 & _GEN_276; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_1 = io__ptw_resp_valid & _tlb_req_flushed_T_17; // @[Repeater.scala 244:57]
  wire  tlb_req_flushed_hit0_3 = io__ptw_resp_bits_entry_tag[23:15] == tlb_req_3_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1_3 = io__ptw_resp_bits_entry_tag[14:6] == tlb_req_3_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2_3 = io__ptw_resp_bits_entry_tag[5:0] == tlb_req_3_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_32 = io__ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1_3 & tlb_req_flushed_hit0_3
     : tlb_req_flushed_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_33 = io__ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2_3 & tlb_req_flushed_hit1_3
     & tlb_req_flushed_hit0_3 : _tlb_req_flushed_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_286 = 3'h1 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_287 = 3'h2 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_286; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_288 = 3'h3 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_287; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_289 = 3'h4 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_288; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_290 = 3'h5 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_289; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_291 = 3'h6 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_290; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_292 = 3'h7 == tlb_req_3_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_291; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_35 = _tlb_req_flushed_T_33 & _GEN_292; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_3 = io__ptw_resp_valid & _tlb_req_flushed_T_35; // @[Repeater.scala 244:57]
  wire  tlb_req_flushed_hit0_4 = io__ptw_resp_bits_entry_tag[23:15] == tlb_req_4_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1_4 = io__ptw_resp_bits_entry_tag[14:6] == tlb_req_4_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2_4 = io__ptw_resp_bits_entry_tag[5:0] == tlb_req_4_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_41 = io__ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1_4 & tlb_req_flushed_hit0_4
     : tlb_req_flushed_hit0_4; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_42 = io__ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2_4 & tlb_req_flushed_hit1_4
     & tlb_req_flushed_hit0_4 : _tlb_req_flushed_T_41; // @[MMUBundle.scala 1017:22]
  wire  _GEN_294 = 3'h1 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_1 : io__ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_295 = 3'h2 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_2 : _GEN_294; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_296 = 3'h3 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_3 : _GEN_295; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_297 = 3'h4 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_4 : _GEN_296; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_298 = 3'h5 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_5 : _GEN_297; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_299 = 3'h6 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_6 : _GEN_298; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_300 = 3'h7 == tlb_req_4_bits_rvpn[2:0] ? io__ptw_resp_bits_valididx_7 : _GEN_299; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_44 = _tlb_req_flushed_T_42 & _GEN_300; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_4 = io__ptw_resp_valid & _tlb_req_flushed_T_44; // @[Repeater.scala 244:57]
  wire  _issue_valid_T = ~isEmptyIss; // @[Repeater.scala 257:34]
  wire  _GEN_334 = 3'h1 == issPtr ? v_1 : v_0; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_335 = 3'h2 == issPtr ? v_2 : _GEN_334; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_336 = 3'h3 == issPtr ? v_3 : _GEN_335; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_337 = 3'h4 == issPtr ? v_4 : _GEN_336; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_338 = 3'h5 == issPtr ? v_5 : _GEN_337; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_339 = 3'h6 == issPtr ? v_6 : _GEN_338; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_340 = 3'h7 == issPtr ? v_7 : _GEN_339; // @[Repeater.scala 257:{31,31}]
  wire  issue_valid = _GEN_340 & ~isEmptyIss & ~inflight_full; // @[Repeater.scala 257:46]
  wire  issue_filtered_hit0 = ptwResp_entry_tag[23:15] == io__ptw_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  issue_filtered_hit1 = ptwResp_entry_tag[14:6] == io__ptw_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  issue_filtered_hit2 = ptwResp_entry_tag[5:0] == io__ptw_req_0_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _issue_filtered_T_5 = ptwResp_entry_level == 2'h1 ? issue_filtered_hit1 & issue_filtered_hit0 :
    issue_filtered_hit0; // @[MMUBundle.scala 1017:84]
  wire  _issue_filtered_T_6 = ptwResp_entry_level == 2'h2 ? issue_filtered_hit2 & issue_filtered_hit1 &
    issue_filtered_hit0 : _issue_filtered_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_342 = 3'h1 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_343 = 3'h2 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_342; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_344 = 3'h3 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_343; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_345 = 3'h4 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_344; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_346 = 3'h5 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_345; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_347 = 3'h6 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_346; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_348 = 3'h7 == io__ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_347; // @[MMUBundle.scala 1017:{142,142}]
  wire  _issue_filtered_T_8 = _issue_filtered_T_6 & _GEN_348; // @[MMUBundle.scala 1017:142]
  wire  issue_filtered = ptwResp_valid & _issue_filtered_T_8; // @[Repeater.scala 258:38]
  wire  issue_fire_fake = issue_valid & io__ptw_req_0_ready; // @[Repeater.scala 259:37]
  wire [26:0] _GEN_350 = 3'h1 == issPtr ? vpn_1 : vpn_0; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_351 = 3'h2 == issPtr ? vpn_2 : _GEN_350; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_352 = 3'h3 == issPtr ? vpn_3 : _GEN_351; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_353 = 3'h4 == issPtr ? vpn_4 : _GEN_352; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_354 = 3'h5 == issPtr ? vpn_5 : _GEN_353; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_355 = 3'h6 == issPtr ? vpn_6 : _GEN_354; // @[Repeater.scala 261:{26,26}]
  wire  _GEN_357 = 3'h0 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_0; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_358 = 3'h1 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_1; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_359 = 3'h2 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_2; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_360 = 3'h3 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_3; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_361 = 3'h4 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_4; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_362 = 3'h5 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_5; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_363 = 3'h6 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_6; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_364 = 3'h7 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_7; // @[Repeater.scala 158:18 267:{25,25}]
  wire [26:0] _GEN_365 = 3'h0 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_0; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_366 = 3'h1 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_1; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_367 = 3'h2 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_2; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_368 = 3'h3 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_3; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_369 = 3'h4 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_4; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_370 = 3'h5 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_5; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_371 = 3'h6 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_6; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_372 = 3'h7 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_7; // @[Repeater.scala 160:16 268:{27,27}]
  wire  _GEN_397 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_0_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_398 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_1_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_399 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_2_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_400 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_3_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_401 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_4_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_402 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_5_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_403 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_6_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_404 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_7_0; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_405 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_0_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_406 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_1_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_407 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_2_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_408 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_3_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_409 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_4_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_410 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_5_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_411 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_6_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_412 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_7_1; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_413 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_0_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_414 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_1_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_415 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_2_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_416 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_3_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_417 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_4_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_418 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_5_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_419 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_6_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_420 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_7_2; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_421 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_0_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_422 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_1_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_423 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_2_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_424 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_3_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_425 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_4_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_426 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_5_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_427 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_6_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_428 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_7_3; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_429 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_0_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_430 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_1_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_431 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_2_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_432 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_3_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_433 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_4_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_434 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_5_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_435 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_6_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_436 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[4] : ports_7_4; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_437 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_0_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_438 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_1_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_439 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_2_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_440 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_3_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_441 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_4_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_442 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_5_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_443 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_6_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_444 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[5] : ports_7_5; // @[Repeater.scala 159:18 270:{29,29}]
  wire  _GEN_445 = reqs_0_valid & canEnqueue ? _GEN_357 : v_0; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_446 = reqs_0_valid & canEnqueue ? _GEN_358 : v_1; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_447 = reqs_0_valid & canEnqueue ? _GEN_359 : v_2; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_448 = reqs_0_valid & canEnqueue ? _GEN_360 : v_3; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_449 = reqs_0_valid & canEnqueue ? _GEN_361 : v_4; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_450 = reqs_0_valid & canEnqueue ? _GEN_362 : v_5; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_451 = reqs_0_valid & canEnqueue ? _GEN_363 : v_6; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_452 = reqs_0_valid & canEnqueue ? _GEN_364 : v_7; // @[Repeater.scala 158:18 266:38]
  wire [26:0] _GEN_453 = reqs_0_valid & canEnqueue ? _GEN_365 : vpn_0; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_454 = reqs_0_valid & canEnqueue ? _GEN_366 : vpn_1; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_455 = reqs_0_valid & canEnqueue ? _GEN_367 : vpn_2; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_456 = reqs_0_valid & canEnqueue ? _GEN_368 : vpn_3; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_457 = reqs_0_valid & canEnqueue ? _GEN_369 : vpn_4; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_458 = reqs_0_valid & canEnqueue ? _GEN_370 : vpn_5; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_459 = reqs_0_valid & canEnqueue ? _GEN_371 : vpn_6; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_460 = reqs_0_valid & canEnqueue ? _GEN_372 : vpn_7; // @[Repeater.scala 160:16 266:38]
  wire  _GEN_485 = reqs_0_valid & canEnqueue ? _GEN_397 : ports_0_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_486 = reqs_0_valid & canEnqueue ? _GEN_398 : ports_1_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_487 = reqs_0_valid & canEnqueue ? _GEN_399 : ports_2_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_488 = reqs_0_valid & canEnqueue ? _GEN_400 : ports_3_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_489 = reqs_0_valid & canEnqueue ? _GEN_401 : ports_4_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_490 = reqs_0_valid & canEnqueue ? _GEN_402 : ports_5_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_491 = reqs_0_valid & canEnqueue ? _GEN_403 : ports_6_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_492 = reqs_0_valid & canEnqueue ? _GEN_404 : ports_7_0; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_493 = reqs_0_valid & canEnqueue ? _GEN_405 : ports_0_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_494 = reqs_0_valid & canEnqueue ? _GEN_406 : ports_1_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_495 = reqs_0_valid & canEnqueue ? _GEN_407 : ports_2_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_496 = reqs_0_valid & canEnqueue ? _GEN_408 : ports_3_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_497 = reqs_0_valid & canEnqueue ? _GEN_409 : ports_4_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_498 = reqs_0_valid & canEnqueue ? _GEN_410 : ports_5_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_499 = reqs_0_valid & canEnqueue ? _GEN_411 : ports_6_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_500 = reqs_0_valid & canEnqueue ? _GEN_412 : ports_7_1; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_501 = reqs_0_valid & canEnqueue ? _GEN_413 : ports_0_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_502 = reqs_0_valid & canEnqueue ? _GEN_414 : ports_1_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_503 = reqs_0_valid & canEnqueue ? _GEN_415 : ports_2_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_504 = reqs_0_valid & canEnqueue ? _GEN_416 : ports_3_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_505 = reqs_0_valid & canEnqueue ? _GEN_417 : ports_4_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_506 = reqs_0_valid & canEnqueue ? _GEN_418 : ports_5_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_507 = reqs_0_valid & canEnqueue ? _GEN_419 : ports_6_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_508 = reqs_0_valid & canEnqueue ? _GEN_420 : ports_7_2; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_509 = reqs_0_valid & canEnqueue ? _GEN_421 : ports_0_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_510 = reqs_0_valid & canEnqueue ? _GEN_422 : ports_1_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_511 = reqs_0_valid & canEnqueue ? _GEN_423 : ports_2_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_512 = reqs_0_valid & canEnqueue ? _GEN_424 : ports_3_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_513 = reqs_0_valid & canEnqueue ? _GEN_425 : ports_4_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_514 = reqs_0_valid & canEnqueue ? _GEN_426 : ports_5_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_515 = reqs_0_valid & canEnqueue ? _GEN_427 : ports_6_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_516 = reqs_0_valid & canEnqueue ? _GEN_428 : ports_7_3; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_517 = reqs_0_valid & canEnqueue ? _GEN_429 : ports_0_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_518 = reqs_0_valid & canEnqueue ? _GEN_430 : ports_1_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_519 = reqs_0_valid & canEnqueue ? _GEN_431 : ports_2_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_520 = reqs_0_valid & canEnqueue ? _GEN_432 : ports_3_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_521 = reqs_0_valid & canEnqueue ? _GEN_433 : ports_4_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_522 = reqs_0_valid & canEnqueue ? _GEN_434 : ports_5_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_523 = reqs_0_valid & canEnqueue ? _GEN_435 : ports_6_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_524 = reqs_0_valid & canEnqueue ? _GEN_436 : ports_7_4; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_525 = reqs_0_valid & canEnqueue ? _GEN_437 : ports_0_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_526 = reqs_0_valid & canEnqueue ? _GEN_438 : ports_1_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_527 = reqs_0_valid & canEnqueue ? _GEN_439 : ports_2_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_528 = reqs_0_valid & canEnqueue ? _GEN_440 : ports_3_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_529 = reqs_0_valid & canEnqueue ? _GEN_441 : ports_4_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_530 = reqs_0_valid & canEnqueue ? _GEN_442 : ports_5_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_531 = reqs_0_valid & canEnqueue ? _GEN_443 : ports_6_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_532 = reqs_0_valid & canEnqueue ? _GEN_444 : ports_7_5; // @[Repeater.scala 159:18 266:38]
  wire  _GEN_533 = 3'h0 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_445; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_534 = 3'h1 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_446; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_535 = 3'h2 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_447; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_536 = 3'h3 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_448; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_537 = 3'h4 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_449; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_538 = 3'h5 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_450; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_539 = 3'h6 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_451; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_540 = 3'h7 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_452; // @[Repeater.scala 267:{25,25}]
  wire [26:0] _GEN_541 = 3'h0 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_453; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_542 = 3'h1 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_454; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_543 = 3'h2 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_455; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_544 = 3'h3 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_456; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_545 = 3'h4 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_457; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_546 = 3'h5 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_458; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_547 = 3'h6 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_459; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_548 = 3'h7 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_460; // @[Repeater.scala 268:{27,27}]
  wire  _GEN_573 = 3'h0 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_485; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_574 = 3'h1 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_486; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_575 = 3'h2 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_487; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_576 = 3'h3 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_488; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_577 = 3'h4 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_489; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_578 = 3'h5 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_490; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_579 = 3'h6 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_491; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_580 = 3'h7 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_492; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_581 = 3'h0 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_493; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_582 = 3'h1 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_494; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_583 = 3'h2 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_495; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_584 = 3'h3 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_496; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_585 = 3'h4 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_497; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_586 = 3'h5 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_498; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_587 = 3'h6 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_499; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_588 = 3'h7 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_500; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_589 = 3'h0 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_501; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_590 = 3'h1 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_502; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_591 = 3'h2 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_503; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_592 = 3'h3 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_504; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_593 = 3'h4 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_505; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_594 = 3'h5 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_506; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_595 = 3'h6 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_507; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_596 = 3'h7 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_508; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_597 = 3'h0 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_509; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_598 = 3'h1 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_510; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_599 = 3'h2 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_511; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_600 = 3'h3 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_512; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_601 = 3'h4 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_513; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_602 = 3'h5 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_514; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_603 = 3'h6 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_515; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_604 = 3'h7 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_516; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_605 = 3'h0 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_517; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_606 = 3'h1 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_518; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_607 = 3'h2 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_519; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_608 = 3'h3 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_520; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_609 = 3'h4 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_521; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_610 = 3'h5 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_522; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_611 = 3'h6 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_523; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_612 = 3'h7 == enqPtrVec_1 ? filter_ports_1[4] : _GEN_524; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_613 = 3'h0 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_525; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_614 = 3'h1 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_526; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_615 = 3'h2 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_527; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_616 = 3'h3 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_528; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_617 = 3'h4 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_529; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_618 = 3'h5 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_530; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_619 = 3'h6 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_531; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_620 = 3'h7 == enqPtrVec_1 ? filter_ports_1[5] : _GEN_532; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_621 = reqs_1_valid & canEnqueue ? _GEN_533 : _GEN_445; // @[Repeater.scala 266:38]
  wire  _GEN_622 = reqs_1_valid & canEnqueue ? _GEN_534 : _GEN_446; // @[Repeater.scala 266:38]
  wire  _GEN_623 = reqs_1_valid & canEnqueue ? _GEN_535 : _GEN_447; // @[Repeater.scala 266:38]
  wire  _GEN_624 = reqs_1_valid & canEnqueue ? _GEN_536 : _GEN_448; // @[Repeater.scala 266:38]
  wire  _GEN_625 = reqs_1_valid & canEnqueue ? _GEN_537 : _GEN_449; // @[Repeater.scala 266:38]
  wire  _GEN_626 = reqs_1_valid & canEnqueue ? _GEN_538 : _GEN_450; // @[Repeater.scala 266:38]
  wire  _GEN_627 = reqs_1_valid & canEnqueue ? _GEN_539 : _GEN_451; // @[Repeater.scala 266:38]
  wire  _GEN_628 = reqs_1_valid & canEnqueue ? _GEN_540 : _GEN_452; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_629 = reqs_1_valid & canEnqueue ? _GEN_541 : _GEN_453; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_630 = reqs_1_valid & canEnqueue ? _GEN_542 : _GEN_454; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_631 = reqs_1_valid & canEnqueue ? _GEN_543 : _GEN_455; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_632 = reqs_1_valid & canEnqueue ? _GEN_544 : _GEN_456; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_633 = reqs_1_valid & canEnqueue ? _GEN_545 : _GEN_457; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_634 = reqs_1_valid & canEnqueue ? _GEN_546 : _GEN_458; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_635 = reqs_1_valid & canEnqueue ? _GEN_547 : _GEN_459; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_636 = reqs_1_valid & canEnqueue ? _GEN_548 : _GEN_460; // @[Repeater.scala 266:38]
  wire  _GEN_661 = reqs_1_valid & canEnqueue ? _GEN_573 : _GEN_485; // @[Repeater.scala 266:38]
  wire  _GEN_662 = reqs_1_valid & canEnqueue ? _GEN_574 : _GEN_486; // @[Repeater.scala 266:38]
  wire  _GEN_663 = reqs_1_valid & canEnqueue ? _GEN_575 : _GEN_487; // @[Repeater.scala 266:38]
  wire  _GEN_664 = reqs_1_valid & canEnqueue ? _GEN_576 : _GEN_488; // @[Repeater.scala 266:38]
  wire  _GEN_665 = reqs_1_valid & canEnqueue ? _GEN_577 : _GEN_489; // @[Repeater.scala 266:38]
  wire  _GEN_666 = reqs_1_valid & canEnqueue ? _GEN_578 : _GEN_490; // @[Repeater.scala 266:38]
  wire  _GEN_667 = reqs_1_valid & canEnqueue ? _GEN_579 : _GEN_491; // @[Repeater.scala 266:38]
  wire  _GEN_668 = reqs_1_valid & canEnqueue ? _GEN_580 : _GEN_492; // @[Repeater.scala 266:38]
  wire  _GEN_669 = reqs_1_valid & canEnqueue ? _GEN_581 : _GEN_493; // @[Repeater.scala 266:38]
  wire  _GEN_670 = reqs_1_valid & canEnqueue ? _GEN_582 : _GEN_494; // @[Repeater.scala 266:38]
  wire  _GEN_671 = reqs_1_valid & canEnqueue ? _GEN_583 : _GEN_495; // @[Repeater.scala 266:38]
  wire  _GEN_672 = reqs_1_valid & canEnqueue ? _GEN_584 : _GEN_496; // @[Repeater.scala 266:38]
  wire  _GEN_673 = reqs_1_valid & canEnqueue ? _GEN_585 : _GEN_497; // @[Repeater.scala 266:38]
  wire  _GEN_674 = reqs_1_valid & canEnqueue ? _GEN_586 : _GEN_498; // @[Repeater.scala 266:38]
  wire  _GEN_675 = reqs_1_valid & canEnqueue ? _GEN_587 : _GEN_499; // @[Repeater.scala 266:38]
  wire  _GEN_676 = reqs_1_valid & canEnqueue ? _GEN_588 : _GEN_500; // @[Repeater.scala 266:38]
  wire  _GEN_677 = reqs_1_valid & canEnqueue ? _GEN_589 : _GEN_501; // @[Repeater.scala 266:38]
  wire  _GEN_678 = reqs_1_valid & canEnqueue ? _GEN_590 : _GEN_502; // @[Repeater.scala 266:38]
  wire  _GEN_679 = reqs_1_valid & canEnqueue ? _GEN_591 : _GEN_503; // @[Repeater.scala 266:38]
  wire  _GEN_680 = reqs_1_valid & canEnqueue ? _GEN_592 : _GEN_504; // @[Repeater.scala 266:38]
  wire  _GEN_681 = reqs_1_valid & canEnqueue ? _GEN_593 : _GEN_505; // @[Repeater.scala 266:38]
  wire  _GEN_682 = reqs_1_valid & canEnqueue ? _GEN_594 : _GEN_506; // @[Repeater.scala 266:38]
  wire  _GEN_683 = reqs_1_valid & canEnqueue ? _GEN_595 : _GEN_507; // @[Repeater.scala 266:38]
  wire  _GEN_684 = reqs_1_valid & canEnqueue ? _GEN_596 : _GEN_508; // @[Repeater.scala 266:38]
  wire  _GEN_685 = reqs_1_valid & canEnqueue ? _GEN_597 : _GEN_509; // @[Repeater.scala 266:38]
  wire  _GEN_686 = reqs_1_valid & canEnqueue ? _GEN_598 : _GEN_510; // @[Repeater.scala 266:38]
  wire  _GEN_687 = reqs_1_valid & canEnqueue ? _GEN_599 : _GEN_511; // @[Repeater.scala 266:38]
  wire  _GEN_688 = reqs_1_valid & canEnqueue ? _GEN_600 : _GEN_512; // @[Repeater.scala 266:38]
  wire  _GEN_689 = reqs_1_valid & canEnqueue ? _GEN_601 : _GEN_513; // @[Repeater.scala 266:38]
  wire  _GEN_690 = reqs_1_valid & canEnqueue ? _GEN_602 : _GEN_514; // @[Repeater.scala 266:38]
  wire  _GEN_691 = reqs_1_valid & canEnqueue ? _GEN_603 : _GEN_515; // @[Repeater.scala 266:38]
  wire  _GEN_692 = reqs_1_valid & canEnqueue ? _GEN_604 : _GEN_516; // @[Repeater.scala 266:38]
  wire  _GEN_693 = reqs_1_valid & canEnqueue ? _GEN_605 : _GEN_517; // @[Repeater.scala 266:38]
  wire  _GEN_694 = reqs_1_valid & canEnqueue ? _GEN_606 : _GEN_518; // @[Repeater.scala 266:38]
  wire  _GEN_695 = reqs_1_valid & canEnqueue ? _GEN_607 : _GEN_519; // @[Repeater.scala 266:38]
  wire  _GEN_696 = reqs_1_valid & canEnqueue ? _GEN_608 : _GEN_520; // @[Repeater.scala 266:38]
  wire  _GEN_697 = reqs_1_valid & canEnqueue ? _GEN_609 : _GEN_521; // @[Repeater.scala 266:38]
  wire  _GEN_698 = reqs_1_valid & canEnqueue ? _GEN_610 : _GEN_522; // @[Repeater.scala 266:38]
  wire  _GEN_699 = reqs_1_valid & canEnqueue ? _GEN_611 : _GEN_523; // @[Repeater.scala 266:38]
  wire  _GEN_700 = reqs_1_valid & canEnqueue ? _GEN_612 : _GEN_524; // @[Repeater.scala 266:38]
  wire  _GEN_701 = reqs_1_valid & canEnqueue ? _GEN_613 : _GEN_525; // @[Repeater.scala 266:38]
  wire  _GEN_702 = reqs_1_valid & canEnqueue ? _GEN_614 : _GEN_526; // @[Repeater.scala 266:38]
  wire  _GEN_703 = reqs_1_valid & canEnqueue ? _GEN_615 : _GEN_527; // @[Repeater.scala 266:38]
  wire  _GEN_704 = reqs_1_valid & canEnqueue ? _GEN_616 : _GEN_528; // @[Repeater.scala 266:38]
  wire  _GEN_705 = reqs_1_valid & canEnqueue ? _GEN_617 : _GEN_529; // @[Repeater.scala 266:38]
  wire  _GEN_706 = reqs_1_valid & canEnqueue ? _GEN_618 : _GEN_530; // @[Repeater.scala 266:38]
  wire  _GEN_707 = reqs_1_valid & canEnqueue ? _GEN_619 : _GEN_531; // @[Repeater.scala 266:38]
  wire  _GEN_708 = reqs_1_valid & canEnqueue ? _GEN_620 : _GEN_532; // @[Repeater.scala 266:38]
  wire  _GEN_885 = 3'h0 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_621; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_886 = 3'h1 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_622; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_887 = 3'h2 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_623; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_888 = 3'h3 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_624; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_889 = 3'h4 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_625; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_890 = 3'h5 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_626; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_891 = 3'h6 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_627; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_892 = 3'h7 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_628; // @[Repeater.scala 267:{25,25}]
  wire [26:0] _GEN_893 = 3'h0 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_629; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_894 = 3'h1 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_630; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_895 = 3'h2 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_631; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_896 = 3'h3 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_632; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_897 = 3'h4 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_633; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_898 = 3'h5 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_634; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_899 = 3'h6 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_635; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_900 = 3'h7 == enqPtrVec_3 ? tlb_req_3_bits_rvpn : _GEN_636; // @[Repeater.scala 268:{27,27}]
  wire  _GEN_925 = 3'h0 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_661; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_926 = 3'h1 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_662; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_927 = 3'h2 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_663; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_928 = 3'h3 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_664; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_929 = 3'h4 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_665; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_930 = 3'h5 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_666; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_931 = 3'h6 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_667; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_932 = 3'h7 == enqPtrVec_3 ? filter_ports_3[0] : _GEN_668; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_933 = 3'h0 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_669; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_934 = 3'h1 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_670; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_935 = 3'h2 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_671; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_936 = 3'h3 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_672; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_937 = 3'h4 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_673; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_938 = 3'h5 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_674; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_939 = 3'h6 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_675; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_940 = 3'h7 == enqPtrVec_3 ? filter_ports_3[1] : _GEN_676; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_941 = 3'h0 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_677; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_942 = 3'h1 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_678; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_943 = 3'h2 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_679; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_944 = 3'h3 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_680; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_945 = 3'h4 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_681; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_946 = 3'h5 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_682; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_947 = 3'h6 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_683; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_948 = 3'h7 == enqPtrVec_3 ? filter_ports_3[2] : _GEN_684; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_949 = 3'h0 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_685; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_950 = 3'h1 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_686; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_951 = 3'h2 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_687; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_952 = 3'h3 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_688; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_953 = 3'h4 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_689; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_954 = 3'h5 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_690; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_955 = 3'h6 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_691; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_956 = 3'h7 == enqPtrVec_3 ? filter_ports_3[3] : _GEN_692; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_957 = 3'h0 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_693; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_958 = 3'h1 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_694; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_959 = 3'h2 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_695; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_960 = 3'h3 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_696; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_961 = 3'h4 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_697; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_962 = 3'h5 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_698; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_963 = 3'h6 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_699; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_964 = 3'h7 == enqPtrVec_3 ? filter_ports_3[4] : _GEN_700; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_965 = 3'h0 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_701; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_966 = 3'h1 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_702; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_967 = 3'h2 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_703; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_968 = 3'h3 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_704; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_969 = 3'h4 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_705; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_970 = 3'h5 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_706; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_971 = 3'h6 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_707; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_972 = 3'h7 == enqPtrVec_3 ? filter_ports_3[5] : _GEN_708; // @[Repeater.scala 270:{29,29}]
  wire  _GEN_973 = reqs_3_valid & canEnqueue ? _GEN_885 : _GEN_621; // @[Repeater.scala 266:38]
  wire  _GEN_974 = reqs_3_valid & canEnqueue ? _GEN_886 : _GEN_622; // @[Repeater.scala 266:38]
  wire  _GEN_975 = reqs_3_valid & canEnqueue ? _GEN_887 : _GEN_623; // @[Repeater.scala 266:38]
  wire  _GEN_976 = reqs_3_valid & canEnqueue ? _GEN_888 : _GEN_624; // @[Repeater.scala 266:38]
  wire  _GEN_977 = reqs_3_valid & canEnqueue ? _GEN_889 : _GEN_625; // @[Repeater.scala 266:38]
  wire  _GEN_978 = reqs_3_valid & canEnqueue ? _GEN_890 : _GEN_626; // @[Repeater.scala 266:38]
  wire  _GEN_979 = reqs_3_valid & canEnqueue ? _GEN_891 : _GEN_627; // @[Repeater.scala 266:38]
  wire  _GEN_980 = reqs_3_valid & canEnqueue ? _GEN_892 : _GEN_628; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_981 = reqs_3_valid & canEnqueue ? _GEN_893 : _GEN_629; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_982 = reqs_3_valid & canEnqueue ? _GEN_894 : _GEN_630; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_983 = reqs_3_valid & canEnqueue ? _GEN_895 : _GEN_631; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_984 = reqs_3_valid & canEnqueue ? _GEN_896 : _GEN_632; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_985 = reqs_3_valid & canEnqueue ? _GEN_897 : _GEN_633; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_986 = reqs_3_valid & canEnqueue ? _GEN_898 : _GEN_634; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_987 = reqs_3_valid & canEnqueue ? _GEN_899 : _GEN_635; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_988 = reqs_3_valid & canEnqueue ? _GEN_900 : _GEN_636; // @[Repeater.scala 266:38]
  wire  _GEN_1013 = reqs_3_valid & canEnqueue ? _GEN_925 : _GEN_661; // @[Repeater.scala 266:38]
  wire  _GEN_1014 = reqs_3_valid & canEnqueue ? _GEN_926 : _GEN_662; // @[Repeater.scala 266:38]
  wire  _GEN_1015 = reqs_3_valid & canEnqueue ? _GEN_927 : _GEN_663; // @[Repeater.scala 266:38]
  wire  _GEN_1016 = reqs_3_valid & canEnqueue ? _GEN_928 : _GEN_664; // @[Repeater.scala 266:38]
  wire  _GEN_1017 = reqs_3_valid & canEnqueue ? _GEN_929 : _GEN_665; // @[Repeater.scala 266:38]
  wire  _GEN_1018 = reqs_3_valid & canEnqueue ? _GEN_930 : _GEN_666; // @[Repeater.scala 266:38]
  wire  _GEN_1019 = reqs_3_valid & canEnqueue ? _GEN_931 : _GEN_667; // @[Repeater.scala 266:38]
  wire  _GEN_1020 = reqs_3_valid & canEnqueue ? _GEN_932 : _GEN_668; // @[Repeater.scala 266:38]
  wire  _GEN_1021 = reqs_3_valid & canEnqueue ? _GEN_933 : _GEN_669; // @[Repeater.scala 266:38]
  wire  _GEN_1022 = reqs_3_valid & canEnqueue ? _GEN_934 : _GEN_670; // @[Repeater.scala 266:38]
  wire  _GEN_1023 = reqs_3_valid & canEnqueue ? _GEN_935 : _GEN_671; // @[Repeater.scala 266:38]
  wire  _GEN_1024 = reqs_3_valid & canEnqueue ? _GEN_936 : _GEN_672; // @[Repeater.scala 266:38]
  wire  _GEN_1025 = reqs_3_valid & canEnqueue ? _GEN_937 : _GEN_673; // @[Repeater.scala 266:38]
  wire  _GEN_1026 = reqs_3_valid & canEnqueue ? _GEN_938 : _GEN_674; // @[Repeater.scala 266:38]
  wire  _GEN_1027 = reqs_3_valid & canEnqueue ? _GEN_939 : _GEN_675; // @[Repeater.scala 266:38]
  wire  _GEN_1028 = reqs_3_valid & canEnqueue ? _GEN_940 : _GEN_676; // @[Repeater.scala 266:38]
  wire  _GEN_1029 = reqs_3_valid & canEnqueue ? _GEN_941 : _GEN_677; // @[Repeater.scala 266:38]
  wire  _GEN_1030 = reqs_3_valid & canEnqueue ? _GEN_942 : _GEN_678; // @[Repeater.scala 266:38]
  wire  _GEN_1031 = reqs_3_valid & canEnqueue ? _GEN_943 : _GEN_679; // @[Repeater.scala 266:38]
  wire  _GEN_1032 = reqs_3_valid & canEnqueue ? _GEN_944 : _GEN_680; // @[Repeater.scala 266:38]
  wire  _GEN_1033 = reqs_3_valid & canEnqueue ? _GEN_945 : _GEN_681; // @[Repeater.scala 266:38]
  wire  _GEN_1034 = reqs_3_valid & canEnqueue ? _GEN_946 : _GEN_682; // @[Repeater.scala 266:38]
  wire  _GEN_1035 = reqs_3_valid & canEnqueue ? _GEN_947 : _GEN_683; // @[Repeater.scala 266:38]
  wire  _GEN_1036 = reqs_3_valid & canEnqueue ? _GEN_948 : _GEN_684; // @[Repeater.scala 266:38]
  wire  _GEN_1037 = reqs_3_valid & canEnqueue ? _GEN_949 : _GEN_685; // @[Repeater.scala 266:38]
  wire  _GEN_1038 = reqs_3_valid & canEnqueue ? _GEN_950 : _GEN_686; // @[Repeater.scala 266:38]
  wire  _GEN_1039 = reqs_3_valid & canEnqueue ? _GEN_951 : _GEN_687; // @[Repeater.scala 266:38]
  wire  _GEN_1040 = reqs_3_valid & canEnqueue ? _GEN_952 : _GEN_688; // @[Repeater.scala 266:38]
  wire  _GEN_1041 = reqs_3_valid & canEnqueue ? _GEN_953 : _GEN_689; // @[Repeater.scala 266:38]
  wire  _GEN_1042 = reqs_3_valid & canEnqueue ? _GEN_954 : _GEN_690; // @[Repeater.scala 266:38]
  wire  _GEN_1043 = reqs_3_valid & canEnqueue ? _GEN_955 : _GEN_691; // @[Repeater.scala 266:38]
  wire  _GEN_1044 = reqs_3_valid & canEnqueue ? _GEN_956 : _GEN_692; // @[Repeater.scala 266:38]
  wire  _GEN_1045 = reqs_3_valid & canEnqueue ? _GEN_957 : _GEN_693; // @[Repeater.scala 266:38]
  wire  _GEN_1046 = reqs_3_valid & canEnqueue ? _GEN_958 : _GEN_694; // @[Repeater.scala 266:38]
  wire  _GEN_1047 = reqs_3_valid & canEnqueue ? _GEN_959 : _GEN_695; // @[Repeater.scala 266:38]
  wire  _GEN_1048 = reqs_3_valid & canEnqueue ? _GEN_960 : _GEN_696; // @[Repeater.scala 266:38]
  wire  _GEN_1049 = reqs_3_valid & canEnqueue ? _GEN_961 : _GEN_697; // @[Repeater.scala 266:38]
  wire  _GEN_1050 = reqs_3_valid & canEnqueue ? _GEN_962 : _GEN_698; // @[Repeater.scala 266:38]
  wire  _GEN_1051 = reqs_3_valid & canEnqueue ? _GEN_963 : _GEN_699; // @[Repeater.scala 266:38]
  wire  _GEN_1052 = reqs_3_valid & canEnqueue ? _GEN_964 : _GEN_700; // @[Repeater.scala 266:38]
  wire  _GEN_1053 = reqs_3_valid & canEnqueue ? _GEN_965 : _GEN_701; // @[Repeater.scala 266:38]
  wire  _GEN_1054 = reqs_3_valid & canEnqueue ? _GEN_966 : _GEN_702; // @[Repeater.scala 266:38]
  wire  _GEN_1055 = reqs_3_valid & canEnqueue ? _GEN_967 : _GEN_703; // @[Repeater.scala 266:38]
  wire  _GEN_1056 = reqs_3_valid & canEnqueue ? _GEN_968 : _GEN_704; // @[Repeater.scala 266:38]
  wire  _GEN_1057 = reqs_3_valid & canEnqueue ? _GEN_969 : _GEN_705; // @[Repeater.scala 266:38]
  wire  _GEN_1058 = reqs_3_valid & canEnqueue ? _GEN_970 : _GEN_706; // @[Repeater.scala 266:38]
  wire  _GEN_1059 = reqs_3_valid & canEnqueue ? _GEN_971 : _GEN_707; // @[Repeater.scala 266:38]
  wire  _GEN_1060 = reqs_3_valid & canEnqueue ? _GEN_972 : _GEN_708; // @[Repeater.scala 266:38]
  wire  _GEN_1061 = 3'h0 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_973; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1062 = 3'h1 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_974; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1063 = 3'h2 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_975; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1064 = 3'h3 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_976; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1065 = 3'h4 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_977; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1066 = 3'h5 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_978; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1067 = 3'h6 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_979; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1068 = 3'h7 == enqPtrVec_4 ? ~tlb_req_flushed_4 : _GEN_980; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_1149 = reqs_4_valid & canEnqueue ? _GEN_1061 : _GEN_973; // @[Repeater.scala 266:38]
  wire  _GEN_1150 = reqs_4_valid & canEnqueue ? _GEN_1062 : _GEN_974; // @[Repeater.scala 266:38]
  wire  _GEN_1151 = reqs_4_valid & canEnqueue ? _GEN_1063 : _GEN_975; // @[Repeater.scala 266:38]
  wire  _GEN_1152 = reqs_4_valid & canEnqueue ? _GEN_1064 : _GEN_976; // @[Repeater.scala 266:38]
  wire  _GEN_1153 = reqs_4_valid & canEnqueue ? _GEN_1065 : _GEN_977; // @[Repeater.scala 266:38]
  wire  _GEN_1154 = reqs_4_valid & canEnqueue ? _GEN_1066 : _GEN_978; // @[Repeater.scala 266:38]
  wire  _GEN_1155 = reqs_4_valid & canEnqueue ? _GEN_1067 : _GEN_979; // @[Repeater.scala 266:38]
  wire  _GEN_1156 = reqs_4_valid & canEnqueue ? _GEN_1068 : _GEN_980; // @[Repeater.scala 266:38]
  wire [5:0] _do_enq_T = {reqs_0_valid,reqs_1_valid,1'h0,reqs_3_valid,reqs_4_valid,1'h0}; // @[Cat.scala 31:58]
  wire  do_enq = canEnqueue & |_do_enq_T; // @[Repeater.scala 279:27]
  wire  _GEN_1462 = 3'h1 == deqPtr ? v_1 : v_0; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1463 = 3'h2 == deqPtr ? v_2 : _GEN_1462; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1464 = 3'h3 == deqPtr ? v_3 : _GEN_1463; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1465 = 3'h4 == deqPtr ? v_4 : _GEN_1464; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1466 = 3'h5 == deqPtr ? v_5 : _GEN_1465; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1467 = 3'h6 == deqPtr ? v_6 : _GEN_1466; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_1468 = 3'h7 == deqPtr ? v_7 : _GEN_1467; // @[Repeater.scala 280:{17,17}]
  wire  do_deq = ~_GEN_1468 & ~isEmptyDeq; // @[Repeater.scala 280:28]
  wire  do_iss = issue_fire_fake | ~_GEN_340 & _issue_valid_T; // @[Repeater.scala 281:32]
  wire [2:0] _enqPtr_T_1 = enqPtr + enqNum; // @[Repeater.scala 283:22]
  wire [2:0] _deqPtr_T_1 = deqPtr + 3'h1; // @[Repeater.scala 286:22]
  wire [2:0] _issPtr_T_1 = issPtr + 3'h1; // @[Repeater.scala 289:22]
  wire  _GEN_1472 = 3'h0 == issPtr ? 1'h0 : _GEN_1149; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1473 = 3'h1 == issPtr ? 1'h0 : _GEN_1150; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1474 = 3'h2 == issPtr ? 1'h0 : _GEN_1151; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1475 = 3'h3 == issPtr ? 1'h0 : _GEN_1152; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1476 = 3'h4 == issPtr ? 1'h0 : _GEN_1153; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1477 = 3'h5 == issPtr ? 1'h0 : _GEN_1154; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1478 = 3'h6 == issPtr ? 1'h0 : _GEN_1155; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1479 = 3'h7 == issPtr ? 1'h0 : _GEN_1156; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_1480 = issue_fire_fake & issue_filtered ? _GEN_1472 : _GEN_1149; // @[Repeater.scala 291:44]
  wire  _GEN_1481 = issue_fire_fake & issue_filtered ? _GEN_1473 : _GEN_1150; // @[Repeater.scala 291:44]
  wire  _GEN_1482 = issue_fire_fake & issue_filtered ? _GEN_1474 : _GEN_1151; // @[Repeater.scala 291:44]
  wire  _GEN_1483 = issue_fire_fake & issue_filtered ? _GEN_1475 : _GEN_1152; // @[Repeater.scala 291:44]
  wire  _GEN_1484 = issue_fire_fake & issue_filtered ? _GEN_1476 : _GEN_1153; // @[Repeater.scala 291:44]
  wire  _GEN_1485 = issue_fire_fake & issue_filtered ? _GEN_1477 : _GEN_1154; // @[Repeater.scala 291:44]
  wire  _GEN_1486 = issue_fire_fake & issue_filtered ? _GEN_1478 : _GEN_1155; // @[Repeater.scala 291:44]
  wire  _GEN_1487 = issue_fire_fake & issue_filtered ? _GEN_1479 : _GEN_1156; // @[Repeater.scala 291:44]
  wire [3:0] _GEN_1569 = {{3'd0}, do_deq}; // @[Repeater.scala 305:22]
  wire [3:0] _counter_T_1 = counter - _GEN_1569; // @[Repeater.scala 305:22]
  wire [2:0] _counter_T_2 = do_enq ? enqNum : 3'h0; // @[Repeater.scala 305:36]
  wire [3:0] _GEN_1570 = {{1'd0}, _counter_T_2}; // @[Repeater.scala 305:31]
  wire [3:0] _counter_T_4 = _counter_T_1 + _GEN_1570; // @[Repeater.scala 305:31]
  wire  _io_rob_head_miss_in_tlb_T_3 = v_0 & rob_head_vaddr_0_valid & vpn_0 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_7 = v_1 & rob_head_vaddr_0_valid & vpn_1 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_11 = v_2 & rob_head_vaddr_0_valid & vpn_2 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_15 = v_3 & rob_head_vaddr_0_valid & vpn_3 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_19 = v_4 & rob_head_vaddr_0_valid & vpn_4 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_23 = v_5 & rob_head_vaddr_0_valid & vpn_5 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_27 = v_6 & rob_head_vaddr_0_valid & vpn_6 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire  _io_rob_head_miss_in_tlb_T_31 = v_7 & rob_head_vaddr_0_valid & vpn_7 == rob_head_vaddr_0_bits[38:12]; // @[Repeater.scala 333:29]
  wire [7:0] _io_rob_head_miss_in_tlb_T_32 = {_io_rob_head_miss_in_tlb_T_31,_io_rob_head_miss_in_tlb_T_27,
    _io_rob_head_miss_in_tlb_T_23,_io_rob_head_miss_in_tlb_T_19,_io_rob_head_miss_in_tlb_T_15,
    _io_rob_head_miss_in_tlb_T_11,_io_rob_head_miss_in_tlb_T_7,_io_rob_head_miss_in_tlb_T_3}; // @[Repeater.scala 334:7]
  DelayN_6 flush_delay ( // @[Hold.scala 97:23]
    .clock(flush_delay_clock),
    .io_in(flush_delay_io_in),
    .io_out(flush_delay_io_out)
  );
  assign io__tlb_resp_valid = ptwResp_valid; // @[Repeater.scala 246:21]
  assign io__tlb_resp_bits_data_entry_tag = ptwResp_entry_tag; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_asid = ptwResp_entry_asid; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_d = ptwResp_entry_perm_d; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_a = ptwResp_entry_perm_a; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_g = ptwResp_entry_perm_g; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_u = ptwResp_entry_perm_u; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_x = ptwResp_entry_perm_x; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_w = ptwResp_entry_perm_w; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_perm_r = ptwResp_entry_perm_r; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_level = ptwResp_entry_level; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_entry_ppn = ptwResp_entry_ppn; // @[Repeater.scala 247:31]
  assign io__tlb_resp_bits_data_ppn_low_0 = ptwResp_ppn_low_0; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_1 = ptwResp_ppn_low_1; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_2 = ptwResp_ppn_low_2; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_3 = ptwResp_ppn_low_3; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_4 = ptwResp_ppn_low_4; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_5 = ptwResp_ppn_low_5; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_6 = ptwResp_ppn_low_6; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_ppn_low_7 = ptwResp_ppn_low_7; // @[Repeater.scala 249:33]
  assign io__tlb_resp_bits_data_valididx_0 = ptwResp_valididx_0; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_1 = ptwResp_valididx_1; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_2 = ptwResp_valididx_2; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_3 = ptwResp_valididx_3; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_4 = ptwResp_valididx_4; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_5 = ptwResp_valididx_5; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_6 = ptwResp_valididx_6; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_valididx_7 = ptwResp_valididx_7; // @[Repeater.scala 250:34]
  assign io__tlb_resp_bits_data_pteidx_0 = ptwResp_pteidx_0; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_1 = ptwResp_pteidx_1; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_2 = ptwResp_pteidx_2; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_3 = ptwResp_pteidx_3; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_4 = ptwResp_pteidx_4; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_5 = ptwResp_pteidx_5; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_6 = ptwResp_pteidx_6; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pteidx_7 = ptwResp_pteidx_7; // @[Repeater.scala 251:32]
  assign io__tlb_resp_bits_data_pf = ptwResp_pf; // @[Repeater.scala 252:28]
  assign io__tlb_resp_bits_data_af = ptwResp_af; // @[Repeater.scala 253:28]
  assign io__tlb_resp_bits_vector_0 = resp_vector_0; // @[Repeater.scala 255:27]
  assign io__tlb_resp_bits_vector_1 = resp_vector_1; // @[Repeater.scala 255:27]
  assign io__tlb_resp_bits_vector_2 = resp_vector_2; // @[Repeater.scala 255:27]
  assign io__tlb_resp_bits_vector_3 = resp_vector_3; // @[Repeater.scala 255:27]
  assign io__tlb_resp_bits_vector_4 = resp_vector_4; // @[Repeater.scala 255:27]
  assign io__tlb_resp_bits_vector_5 = resp_vector_5; // @[Repeater.scala 255:27]
  assign io__ptw_req_0_valid = issue_valid & ~issue_filtered; // @[Repeater.scala 260:38]
  assign io__ptw_req_0_bits_vpn = 3'h7 == issPtr ? vpn_7 : _GEN_355; // @[Repeater.scala 261:{26,26}]
  assign io__ptw_resp_ready = 1'h1; // @[Repeater.scala 262:21]
  assign io__rob_head_miss_in_tlb = |_io_rob_head_miss_in_tlb_T_32; // @[Repeater.scala 334:14]
  assign io_rob_head_miss_in_tlb = io__rob_head_miss_in_tlb;
  assign flush_delay_clock = clock;
  assign flush_delay_io_in = io__sfence_valid | io__csr_satp_changed; // @[Repeater.scala 169:38]
  always @(posedge clock) begin
    if (v_0) begin // @[Repeater.scala 274:17]
      ports_0_0 <= ports_0_0 | oldMatchVec2_0_0; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_0_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_0_0 <= _GEN_1013;
      end
    end else begin
      ports_0_0 <= _GEN_1013;
    end
    if (v_0) begin // @[Repeater.scala 274:17]
      ports_0_1 <= ports_0_1 | oldMatchVec2_1_0; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_0_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_0_1 <= _GEN_1021;
      end
    end else begin
      ports_0_1 <= _GEN_1021;
    end
    if (!(v_0)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_0_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_0_2 <= _GEN_1029;
        end
      end else begin
        ports_0_2 <= _GEN_1029;
      end
    end
    if (v_0) begin // @[Repeater.scala 274:17]
      ports_0_3 <= ports_0_3 | oldMatchVec2_3_0; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_0_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_0_3 <= _GEN_1037;
      end
    end else begin
      ports_0_3 <= _GEN_1037;
    end
    if (v_0) begin // @[Repeater.scala 274:17]
      ports_0_4 <= ports_0_4 | oldMatchVec2_4_0; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_0_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_0_4 <= _GEN_1045;
      end
    end else begin
      ports_0_4 <= _GEN_1045;
    end
    if (!(v_0)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_0_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_0_5 <= _GEN_1053;
        end
      end else begin
        ports_0_5 <= _GEN_1053;
      end
    end
    if (v_1) begin // @[Repeater.scala 274:17]
      ports_1_0 <= ports_1_0 | oldMatchVec2_0_1; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_1_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_1_0 <= _GEN_1014;
      end
    end else begin
      ports_1_0 <= _GEN_1014;
    end
    if (v_1) begin // @[Repeater.scala 274:17]
      ports_1_1 <= ports_1_1 | oldMatchVec2_1_1; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_1_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_1_1 <= _GEN_1022;
      end
    end else begin
      ports_1_1 <= _GEN_1022;
    end
    if (!(v_1)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_1_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_1_2 <= _GEN_1030;
        end
      end else begin
        ports_1_2 <= _GEN_1030;
      end
    end
    if (v_1) begin // @[Repeater.scala 274:17]
      ports_1_3 <= ports_1_3 | oldMatchVec2_3_1; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_1_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_1_3 <= _GEN_1038;
      end
    end else begin
      ports_1_3 <= _GEN_1038;
    end
    if (v_1) begin // @[Repeater.scala 274:17]
      ports_1_4 <= ports_1_4 | oldMatchVec2_4_1; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_1_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_1_4 <= _GEN_1046;
      end
    end else begin
      ports_1_4 <= _GEN_1046;
    end
    if (!(v_1)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_1_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_1_5 <= _GEN_1054;
        end
      end else begin
        ports_1_5 <= _GEN_1054;
      end
    end
    if (v_2) begin // @[Repeater.scala 274:17]
      ports_2_0 <= ports_2_0 | oldMatchVec2_0_2; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_2_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_2_0 <= _GEN_1015;
      end
    end else begin
      ports_2_0 <= _GEN_1015;
    end
    if (v_2) begin // @[Repeater.scala 274:17]
      ports_2_1 <= ports_2_1 | oldMatchVec2_1_2; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_2_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_2_1 <= _GEN_1023;
      end
    end else begin
      ports_2_1 <= _GEN_1023;
    end
    if (!(v_2)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_2_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_2_2 <= _GEN_1031;
        end
      end else begin
        ports_2_2 <= _GEN_1031;
      end
    end
    if (v_2) begin // @[Repeater.scala 274:17]
      ports_2_3 <= ports_2_3 | oldMatchVec2_3_2; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_2_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_2_3 <= _GEN_1039;
      end
    end else begin
      ports_2_3 <= _GEN_1039;
    end
    if (v_2) begin // @[Repeater.scala 274:17]
      ports_2_4 <= ports_2_4 | oldMatchVec2_4_2; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_2_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_2_4 <= _GEN_1047;
      end
    end else begin
      ports_2_4 <= _GEN_1047;
    end
    if (!(v_2)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_2_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_2_5 <= _GEN_1055;
        end
      end else begin
        ports_2_5 <= _GEN_1055;
      end
    end
    if (v_3) begin // @[Repeater.scala 274:17]
      ports_3_0 <= ports_3_0 | oldMatchVec2_0_3; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_3_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_3_0 <= _GEN_1016;
      end
    end else begin
      ports_3_0 <= _GEN_1016;
    end
    if (v_3) begin // @[Repeater.scala 274:17]
      ports_3_1 <= ports_3_1 | oldMatchVec2_1_3; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_3_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_3_1 <= _GEN_1024;
      end
    end else begin
      ports_3_1 <= _GEN_1024;
    end
    if (!(v_3)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_3_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_3_2 <= _GEN_1032;
        end
      end else begin
        ports_3_2 <= _GEN_1032;
      end
    end
    if (v_3) begin // @[Repeater.scala 274:17]
      ports_3_3 <= ports_3_3 | oldMatchVec2_3_3; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_3_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_3_3 <= _GEN_1040;
      end
    end else begin
      ports_3_3 <= _GEN_1040;
    end
    if (v_3) begin // @[Repeater.scala 274:17]
      ports_3_4 <= ports_3_4 | oldMatchVec2_4_3; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_3_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_3_4 <= _GEN_1048;
      end
    end else begin
      ports_3_4 <= _GEN_1048;
    end
    if (!(v_3)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_3_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_3_5 <= _GEN_1056;
        end
      end else begin
        ports_3_5 <= _GEN_1056;
      end
    end
    if (v_4) begin // @[Repeater.scala 274:17]
      ports_4_0 <= ports_4_0 | oldMatchVec2_0_4; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_4_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_4_0 <= _GEN_1017;
      end
    end else begin
      ports_4_0 <= _GEN_1017;
    end
    if (v_4) begin // @[Repeater.scala 274:17]
      ports_4_1 <= ports_4_1 | oldMatchVec2_1_4; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_4_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_4_1 <= _GEN_1025;
      end
    end else begin
      ports_4_1 <= _GEN_1025;
    end
    if (!(v_4)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_4_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_4_2 <= _GEN_1033;
        end
      end else begin
        ports_4_2 <= _GEN_1033;
      end
    end
    if (v_4) begin // @[Repeater.scala 274:17]
      ports_4_3 <= ports_4_3 | oldMatchVec2_3_4; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_4_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_4_3 <= _GEN_1041;
      end
    end else begin
      ports_4_3 <= _GEN_1041;
    end
    if (v_4) begin // @[Repeater.scala 274:17]
      ports_4_4 <= ports_4_4 | oldMatchVec2_4_4; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_4_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_4_4 <= _GEN_1049;
      end
    end else begin
      ports_4_4 <= _GEN_1049;
    end
    if (!(v_4)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_4_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_4_5 <= _GEN_1057;
        end
      end else begin
        ports_4_5 <= _GEN_1057;
      end
    end
    if (v_5) begin // @[Repeater.scala 274:17]
      ports_5_0 <= ports_5_0 | oldMatchVec2_0_5; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_5_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_5_0 <= _GEN_1018;
      end
    end else begin
      ports_5_0 <= _GEN_1018;
    end
    if (v_5) begin // @[Repeater.scala 274:17]
      ports_5_1 <= ports_5_1 | oldMatchVec2_1_5; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_5_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_5_1 <= _GEN_1026;
      end
    end else begin
      ports_5_1 <= _GEN_1026;
    end
    if (!(v_5)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_5_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_5_2 <= _GEN_1034;
        end
      end else begin
        ports_5_2 <= _GEN_1034;
      end
    end
    if (v_5) begin // @[Repeater.scala 274:17]
      ports_5_3 <= ports_5_3 | oldMatchVec2_3_5; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_5_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_5_3 <= _GEN_1042;
      end
    end else begin
      ports_5_3 <= _GEN_1042;
    end
    if (v_5) begin // @[Repeater.scala 274:17]
      ports_5_4 <= ports_5_4 | oldMatchVec2_4_5; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_5_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_5_4 <= _GEN_1050;
      end
    end else begin
      ports_5_4 <= _GEN_1050;
    end
    if (!(v_5)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_5_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_5_5 <= _GEN_1058;
        end
      end else begin
        ports_5_5 <= _GEN_1058;
      end
    end
    if (v_6) begin // @[Repeater.scala 274:17]
      ports_6_0 <= ports_6_0 | oldMatchVec2_0_6; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_6_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_6_0 <= _GEN_1019;
      end
    end else begin
      ports_6_0 <= _GEN_1019;
    end
    if (v_6) begin // @[Repeater.scala 274:17]
      ports_6_1 <= ports_6_1 | oldMatchVec2_1_6; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_6_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_6_1 <= _GEN_1027;
      end
    end else begin
      ports_6_1 <= _GEN_1027;
    end
    if (!(v_6)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_6_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_6_2 <= _GEN_1035;
        end
      end else begin
        ports_6_2 <= _GEN_1035;
      end
    end
    if (v_6) begin // @[Repeater.scala 274:17]
      ports_6_3 <= ports_6_3 | oldMatchVec2_3_6; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_6_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_6_3 <= _GEN_1043;
      end
    end else begin
      ports_6_3 <= _GEN_1043;
    end
    if (v_6) begin // @[Repeater.scala 274:17]
      ports_6_4 <= ports_6_4 | oldMatchVec2_4_6; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_6_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_6_4 <= _GEN_1051;
      end
    end else begin
      ports_6_4 <= _GEN_1051;
    end
    if (!(v_6)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_6_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_6_5 <= _GEN_1059;
        end
      end else begin
        ports_6_5 <= _GEN_1059;
      end
    end
    if (v_7) begin // @[Repeater.scala 274:17]
      ports_7_0 <= ports_7_0 | oldMatchVec2_0_7; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_7_0 <= filter_ports_xs_0_4[0]; // @[Repeater.scala 270:29]
      end else begin
        ports_7_0 <= _GEN_1020;
      end
    end else begin
      ports_7_0 <= _GEN_1020;
    end
    if (v_7) begin // @[Repeater.scala 274:17]
      ports_7_1 <= ports_7_1 | oldMatchVec2_1_7; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_7_1 <= filter_ports_xs_0_4[1]; // @[Repeater.scala 270:29]
      end else begin
        ports_7_1 <= _GEN_1028;
      end
    end else begin
      ports_7_1 <= _GEN_1028;
    end
    if (!(v_7)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_7_2 <= filter_ports_xs_0_4[2]; // @[Repeater.scala 270:29]
        end else begin
          ports_7_2 <= _GEN_1036;
        end
      end else begin
        ports_7_2 <= _GEN_1036;
      end
    end
    if (v_7) begin // @[Repeater.scala 274:17]
      ports_7_3 <= ports_7_3 | oldMatchVec2_3_7; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_7_3 <= filter_ports_xs_0_4[3]; // @[Repeater.scala 270:29]
      end else begin
        ports_7_3 <= _GEN_1044;
      end
    end else begin
      ports_7_3 <= _GEN_1044;
    end
    if (v_7) begin // @[Repeater.scala 274:17]
      ports_7_4 <= ports_7_4 | oldMatchVec2_4_7; // @[Repeater.scala 275:16]
    end else if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
        ports_7_4 <= filter_ports_xs_0_4[4]; // @[Repeater.scala 270:29]
      end else begin
        ports_7_4 <= _GEN_1052;
      end
    end else begin
      ports_7_4 <= _GEN_1052;
    end
    if (!(v_7)) begin // @[Repeater.scala 274:17]
      if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
        if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 270:29]
          ports_7_5 <= filter_ports_xs_0_4[5]; // @[Repeater.scala 270:29]
        end else begin
          ports_7_5 <= _GEN_1060;
        end
      end else begin
        ports_7_5 <= _GEN_1060;
      end
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_0 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_0 <= _GEN_981;
      end
    end else begin
      vpn_0 <= _GEN_981;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_1 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_1 <= _GEN_982;
      end
    end else begin
      vpn_1 <= _GEN_982;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_2 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_2 <= _GEN_983;
      end
    end else begin
      vpn_2 <= _GEN_983;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_3 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_3 <= _GEN_984;
      end
    end else begin
      vpn_3 <= _GEN_984;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_4 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_4 <= _GEN_985;
      end
    end else begin
      vpn_4 <= _GEN_985;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_5 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_5 <= _GEN_986;
      end
    end else begin
      vpn_5 <= _GEN_986;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_6 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_6 <= _GEN_987;
      end
    end else begin
      vpn_6 <= _GEN_987;
    end
    if (reqs_4_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_4) begin // @[Repeater.scala 268:27]
        vpn_7 <= tlb_req_4_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_7 <= _GEN_988;
      end
    end else begin
      vpn_7 <= _GEN_988;
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_tag <= io__ptw_resp_bits_entry_tag; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_asid <= io__ptw_resp_bits_entry_asid; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_d <= io__ptw_resp_bits_entry_perm_d; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_a <= io__ptw_resp_bits_entry_perm_a; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_g <= io__ptw_resp_bits_entry_perm_g; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_u <= io__ptw_resp_bits_entry_perm_u; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_x <= io__ptw_resp_bits_entry_perm_x; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_w <= io__ptw_resp_bits_entry_perm_w; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_r <= io__ptw_resp_bits_entry_perm_r; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_level <= io__ptw_resp_bits_entry_level; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_ppn <= io__ptw_resp_bits_entry_ppn; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_0 <= io__ptw_resp_bits_ppn_low_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_1 <= io__ptw_resp_bits_ppn_low_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_2 <= io__ptw_resp_bits_ppn_low_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_3 <= io__ptw_resp_bits_ppn_low_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_4 <= io__ptw_resp_bits_ppn_low_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_5 <= io__ptw_resp_bits_ppn_low_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_6 <= io__ptw_resp_bits_ppn_low_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_7 <= io__ptw_resp_bits_ppn_low_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_0 <= io__ptw_resp_bits_valididx_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_1 <= io__ptw_resp_bits_valididx_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_2 <= io__ptw_resp_bits_valididx_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_3 <= io__ptw_resp_bits_valididx_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_4 <= io__ptw_resp_bits_valididx_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_5 <= io__ptw_resp_bits_valididx_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_6 <= io__ptw_resp_bits_valididx_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_7 <= io__ptw_resp_bits_valididx_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_0 <= io__ptw_resp_bits_pteidx_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_1 <= io__ptw_resp_bits_pteidx_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_2 <= io__ptw_resp_bits_pteidx_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_3 <= io__ptw_resp_bits_pteidx_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_4 <= io__ptw_resp_bits_pteidx_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_5 <= io__ptw_resp_bits_pteidx_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_6 <= io__ptw_resp_bits_pteidx_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pteidx_7 <= io__ptw_resp_bits_pteidx_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pf <= io__ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_af <= io__ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (io__tlb_req_0_valid) begin // @[Reg.scala 17:18]
      tlb_req_0_bits_rvpn <= io__tlb_req_0_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_0 <= |_oldMatchVec_T; // @[Repeater.scala 197:63]
    if (io__tlb_req_1_valid) begin // @[Reg.scala 17:18]
      tlb_req_1_bits_rvpn <= io__tlb_req_1_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_1 <= |_oldMatchVec_T_2; // @[Repeater.scala 197:63]
    newMatchVec_REG_6 <= io__tlb_req_1_bits_vpn == io__tlb_req_0_bits_vpn; // @[Repeater.scala 187:78]
    if (io__tlb_req_3_valid) begin // @[Reg.scala 17:18]
      tlb_req_3_bits_rvpn <= io__tlb_req_3_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_3 <= |_oldMatchVec_T_6; // @[Repeater.scala 197:63]
    newMatchVec_REG_18 <= io__tlb_req_3_bits_vpn == io__tlb_req_0_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_19 <= io__tlb_req_3_bits_vpn == io__tlb_req_1_bits_vpn; // @[Repeater.scala 187:78]
    if (io__tlb_req_4_valid) begin // @[Reg.scala 17:18]
      tlb_req_4_bits_rvpn <= io__tlb_req_4_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_4 <= |_oldMatchVec_T_8; // @[Repeater.scala 197:63]
    newMatchVec_REG_24 <= io__tlb_req_4_bits_vpn == io__tlb_req_0_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_25 <= io__tlb_req_4_bits_vpn == io__tlb_req_1_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_27 <= io__tlb_req_4_bits_vpn == io__tlb_req_3_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_1 <= io__tlb_req_0_bits_vpn == io__tlb_req_1_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_3 <= io__tlb_req_0_bits_vpn == io__tlb_req_3_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_4 <= io__tlb_req_0_bits_vpn == io__tlb_req_4_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_9 <= io__tlb_req_1_bits_vpn == io__tlb_req_3_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_10 <= io__tlb_req_1_bits_vpn == io__tlb_req_4_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_22 <= io__tlb_req_3_bits_vpn == io__tlb_req_4_bits_vpn; // @[Repeater.scala 187:78]
    oldMatchVec2_REG <= v_0 & vpn_0 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_1 <= v_1 & vpn_1 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_2 <= v_2 & vpn_2 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_3 <= v_3 & vpn_3 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_4 <= v_4 & vpn_4 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_5 <= v_5 & vpn_5 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_6 <= v_6 & vpn_6 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_7 <= v_7 & vpn_7 == io__tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_8 <= v_0 & vpn_0 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_9 <= v_1 & vpn_1 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_10 <= v_2 & vpn_2 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_11 <= v_3 & vpn_3 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_12 <= v_4 & vpn_4 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_13 <= v_5 & vpn_5 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_14 <= v_6 & vpn_6 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_15 <= v_7 & vpn_7 == io__tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_24 <= v_0 & vpn_0 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_25 <= v_1 & vpn_1 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_26 <= v_2 & vpn_2 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_27 <= v_3 & vpn_3 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_28 <= v_4 & vpn_4 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_29 <= v_5 & vpn_5 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_30 <= v_6 & vpn_6 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_31 <= v_7 & vpn_7 == io__tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_32 <= v_0 & vpn_0 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_33 <= v_1 & vpn_1 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_34 <= v_2 & vpn_2 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_35 <= v_3 & vpn_3 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_36 <= v_4 & vpn_4 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_37 <= v_5 & vpn_5 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_38 <= v_6 & vpn_6 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    oldMatchVec2_REG_39 <= v_7 & vpn_7 == io__tlb_req_4_bits_vpn; // @[Repeater.scala 185:83]
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_0 <= _resp_vector_T_56[0]; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_1 <= _resp_vector_T_56[1]; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_2 <= _resp_vector_T_56[2]; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_3 <= _resp_vector_T_56[3]; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_4 <= _resp_vector_T_56[4]; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      resp_vector_5 <= _resp_vector_T_56[5]; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_0 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_0 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_0) begin
        v_0 <= 1'h0;
      end else begin
        v_0 <= _GEN_1480;
      end
    end else begin
      v_0 <= _GEN_1480;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_1 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_1 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_1) begin
        v_1 <= 1'h0;
      end else begin
        v_1 <= _GEN_1481;
      end
    end else begin
      v_1 <= _GEN_1481;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_2 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_2 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_2) begin
        v_2 <= 1'h0;
      end else begin
        v_2 <= _GEN_1482;
      end
    end else begin
      v_2 <= _GEN_1482;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_3 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_3 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_3) begin
        v_3 <= 1'h0;
      end else begin
        v_3 <= _GEN_1483;
      end
    end else begin
      v_3 <= _GEN_1483;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_4 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_4 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_4) begin
        v_4 <= 1'h0;
      end else begin
        v_4 <= _GEN_1484;
      end
    end else begin
      v_4 <= _GEN_1484;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_5 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_5 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_5) begin
        v_5 <= 1'h0;
      end else begin
        v_5 <= _GEN_1485;
      end
    end else begin
      v_5 <= _GEN_1485;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_6 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_6 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_6) begin
        v_6 <= 1'h0;
      end else begin
        v_6 <= _GEN_1486;
      end
    end else begin
      v_6 <= _GEN_1486;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      v_7 <= 1'h0; // @[Repeater.scala 317:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 301:29]
      v_7 <= 1'h0; // @[Repeater.scala 302:{64,69}]
    end else if (_T_1) begin
      if (ptwResp_OldMatchVec_7) begin
        v_7 <= 1'h0;
      end else begin
        v_7 <= _GEN_1487;
      end
    end else begin
      v_7 <= _GEN_1487;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      enqPtr <= 3'h0; // @[Repeater.scala 319:12]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 282:17]
      enqPtr <= 3'h0; // @[Repeater.scala 283:12]
    end else if (do_enq) begin // @[Repeater.scala 162:23]
      enqPtr <= _enqPtr_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      issPtr <= 3'h0; // @[Repeater.scala 320:12]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 288:17]
      issPtr <= 3'h0; // @[Repeater.scala 289:12]
    end else if (do_iss) begin // @[Repeater.scala 163:23]
      issPtr <= _issPtr_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      deqPtr <= 3'h0; // @[Repeater.scala 318:12]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 285:17]
      deqPtr <= 3'h0; // @[Repeater.scala 286:12]
    end else if (do_deq) begin // @[Repeater.scala 164:23]
      deqPtr <= _deqPtr_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      mayFullDeq <= 1'h0; // @[Repeater.scala 322:16]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 294:28]
      mayFullDeq <= 1'h0; // @[Repeater.scala 295:16]
    end else if (do_enq != do_deq) begin // @[Repeater.scala 165:27]
      mayFullDeq <= do_enq;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      mayFullIss <= 1'h0; // @[Repeater.scala 323:16]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 297:28]
      mayFullIss <= 1'h0; // @[Repeater.scala 298:16]
    end else if (do_enq != do_iss) begin // @[Repeater.scala 166:27]
      mayFullIss <= do_enq;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      counter <= 4'h0; // @[Repeater.scala 324:13]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 305:11]
      counter <= 4'h0;
    end else begin
      counter <= _counter_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      inflight_counter <= 4'h0; // @[Repeater.scala 325:22]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 175:54]
      inflight_counter <= 4'h0; // @[Repeater.scala 176:28]
    end else if (_T != _T_1) begin // @[Repeater.scala 173:33]
      if (_T) begin
        inflight_counter <= _inflight_counter_T_2;
      end else begin
        inflight_counter <= _inflight_counter_T_4;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 316:16]
      ptwResp_valid <= 1'h0; // @[Repeater.scala 321:19]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 183:30]
      ptwResp_valid <= 1'h0;
    end else begin
      ptwResp_valid <= _T_1 & |_ptwResp_valid_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 191:80]
      tlb_req_0_valid_REG <= 1'h0;
    end else begin
      tlb_req_0_valid_REG <= _tlb_req_0_valid_T_11 & _tlb_req_0_valid_T_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 191:80]
      tlb_req_1_valid_REG <= 1'h0;
    end else begin
      tlb_req_1_valid_REG <= _tlb_req_1_valid_T_11 & _tlb_req_1_valid_T_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 191:80]
      tlb_req_3_valid_REG <= 1'h0;
    end else begin
      tlb_req_3_valid_REG <= _tlb_req_3_valid_T_11 & _tlb_req_3_valid_T_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Repeater.scala 191:80]
      tlb_req_4_valid_REG <= 1'h0;
    end else begin
      tlb_req_4_valid_REG <= _tlb_req_4_valid_T_11 & _tlb_req_4_valid_T_14;
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
  v_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  v_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  v_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  v_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ports_0_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ports_0_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ports_0_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ports_0_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  ports_0_4 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  ports_0_5 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  ports_1_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  ports_1_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  ports_1_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  ports_1_3 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  ports_1_4 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ports_1_5 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ports_2_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  ports_2_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  ports_2_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  ports_2_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  ports_2_4 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  ports_2_5 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  ports_3_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  ports_3_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  ports_3_2 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  ports_3_3 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  ports_3_4 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  ports_3_5 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  ports_4_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  ports_4_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  ports_4_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  ports_4_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  ports_4_4 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  ports_4_5 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  ports_5_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  ports_5_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  ports_5_2 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  ports_5_3 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  ports_5_4 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  ports_5_5 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  ports_6_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  ports_6_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  ports_6_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  ports_6_3 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  ports_6_4 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ports_6_5 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ports_7_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ports_7_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ports_7_2 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  ports_7_3 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ports_7_4 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ports_7_5 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  vpn_0 = _RAND_56[26:0];
  _RAND_57 = {1{`RANDOM}};
  vpn_1 = _RAND_57[26:0];
  _RAND_58 = {1{`RANDOM}};
  vpn_2 = _RAND_58[26:0];
  _RAND_59 = {1{`RANDOM}};
  vpn_3 = _RAND_59[26:0];
  _RAND_60 = {1{`RANDOM}};
  vpn_4 = _RAND_60[26:0];
  _RAND_61 = {1{`RANDOM}};
  vpn_5 = _RAND_61[26:0];
  _RAND_62 = {1{`RANDOM}};
  vpn_6 = _RAND_62[26:0];
  _RAND_63 = {1{`RANDOM}};
  vpn_7 = _RAND_63[26:0];
  _RAND_64 = {1{`RANDOM}};
  enqPtr = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  issPtr = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  deqPtr = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  mayFullDeq = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  mayFullIss = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  counter = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  inflight_counter = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  ptwResp_entry_tag = _RAND_71[23:0];
  _RAND_72 = {1{`RANDOM}};
  ptwResp_entry_asid = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  ptwResp_entry_perm_d = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  ptwResp_entry_perm_a = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  ptwResp_entry_perm_g = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  ptwResp_entry_perm_u = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  ptwResp_entry_perm_x = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  ptwResp_entry_perm_w = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  ptwResp_entry_perm_r = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  ptwResp_entry_level = _RAND_80[1:0];
  _RAND_81 = {1{`RANDOM}};
  ptwResp_entry_ppn = _RAND_81[20:0];
  _RAND_82 = {1{`RANDOM}};
  ptwResp_ppn_low_0 = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  ptwResp_ppn_low_1 = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  ptwResp_ppn_low_2 = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  ptwResp_ppn_low_3 = _RAND_85[2:0];
  _RAND_86 = {1{`RANDOM}};
  ptwResp_ppn_low_4 = _RAND_86[2:0];
  _RAND_87 = {1{`RANDOM}};
  ptwResp_ppn_low_5 = _RAND_87[2:0];
  _RAND_88 = {1{`RANDOM}};
  ptwResp_ppn_low_6 = _RAND_88[2:0];
  _RAND_89 = {1{`RANDOM}};
  ptwResp_ppn_low_7 = _RAND_89[2:0];
  _RAND_90 = {1{`RANDOM}};
  ptwResp_valididx_0 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  ptwResp_valididx_1 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  ptwResp_valididx_2 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  ptwResp_valididx_3 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  ptwResp_valididx_4 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  ptwResp_valididx_5 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  ptwResp_valididx_6 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  ptwResp_valididx_7 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  ptwResp_pteidx_0 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  ptwResp_pteidx_1 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  ptwResp_pteidx_2 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  ptwResp_pteidx_3 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  ptwResp_pteidx_4 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  ptwResp_pteidx_5 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  ptwResp_pteidx_6 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  ptwResp_pteidx_7 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  ptwResp_pf = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  ptwResp_af = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  ptwResp_valid = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  tlb_req_0_bits_rvpn = _RAND_109[26:0];
  _RAND_110 = {1{`RANDOM}};
  tlb_req_0_valid_REG = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  oldMatchVec_0 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  tlb_req_1_bits_rvpn = _RAND_112[26:0];
  _RAND_113 = {1{`RANDOM}};
  oldMatchVec_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  newMatchVec_REG_6 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  tlb_req_1_valid_REG = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  tlb_req_3_bits_rvpn = _RAND_116[26:0];
  _RAND_117 = {1{`RANDOM}};
  oldMatchVec_3 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  newMatchVec_REG_18 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  newMatchVec_REG_19 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  tlb_req_3_valid_REG = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  tlb_req_4_bits_rvpn = _RAND_121[26:0];
  _RAND_122 = {1{`RANDOM}};
  oldMatchVec_4 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  newMatchVec_REG_24 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  newMatchVec_REG_25 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  newMatchVec_REG_27 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  tlb_req_4_valid_REG = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  newMatchVec_REG_1 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  newMatchVec_REG_3 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  newMatchVec_REG_4 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  newMatchVec_REG_9 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  newMatchVec_REG_10 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  newMatchVec_REG_22 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  oldMatchVec2_REG = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  oldMatchVec2_REG_1 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  oldMatchVec2_REG_2 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  oldMatchVec2_REG_3 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  oldMatchVec2_REG_4 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  oldMatchVec2_REG_5 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  oldMatchVec2_REG_6 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  oldMatchVec2_REG_7 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  oldMatchVec2_REG_8 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  oldMatchVec2_REG_9 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  oldMatchVec2_REG_10 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  oldMatchVec2_REG_11 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  oldMatchVec2_REG_12 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  oldMatchVec2_REG_13 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  oldMatchVec2_REG_14 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  oldMatchVec2_REG_15 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  oldMatchVec2_REG_24 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  oldMatchVec2_REG_25 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  oldMatchVec2_REG_26 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  oldMatchVec2_REG_27 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  oldMatchVec2_REG_28 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  oldMatchVec2_REG_29 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  oldMatchVec2_REG_30 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  oldMatchVec2_REG_31 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  oldMatchVec2_REG_32 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  oldMatchVec2_REG_33 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  oldMatchVec2_REG_34 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  oldMatchVec2_REG_35 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  oldMatchVec2_REG_36 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  oldMatchVec2_REG_37 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  oldMatchVec2_REG_38 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  oldMatchVec2_REG_39 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  resp_vector_0 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  resp_vector_1 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  resp_vector_2 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  resp_vector_3 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  resp_vector_4 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  resp_vector_5 = _RAND_170[0:0];
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
  if (reset) begin
    v_4 = 1'h0;
  end
  if (reset) begin
    v_5 = 1'h0;
  end
  if (reset) begin
    v_6 = 1'h0;
  end
  if (reset) begin
    v_7 = 1'h0;
  end
  if (reset) begin
    enqPtr = 3'h0;
  end
  if (reset) begin
    issPtr = 3'h0;
  end
  if (reset) begin
    deqPtr = 3'h0;
  end
  if (reset) begin
    mayFullDeq = 1'h0;
  end
  if (reset) begin
    mayFullIss = 1'h0;
  end
  if (reset) begin
    counter = 4'h0;
  end
  if (reset) begin
    inflight_counter = 4'h0;
  end
  if (reset) begin
    ptwResp_valid = 1'h0;
  end
  if (reset) begin
    tlb_req_0_valid_REG = 1'h0;
  end
  if (reset) begin
    tlb_req_1_valid_REG = 1'h0;
  end
  if (reset) begin
    tlb_req_3_valid_REG = 1'h0;
  end
  if (reset) begin
    tlb_req_4_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

