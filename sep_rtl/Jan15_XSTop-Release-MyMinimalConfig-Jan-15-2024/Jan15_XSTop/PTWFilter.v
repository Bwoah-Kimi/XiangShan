module PTWFilter(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  input         io_tlb_req_0_valid,
  input  [26:0] io_tlb_req_0_bits_vpn,
  input         io_tlb_req_1_valid,
  input  [26:0] io_tlb_req_1_bits_vpn,
  output        io_tlb_req_3_ready,
  input         io_tlb_req_3_valid,
  input  [26:0] io_tlb_req_3_bits_vpn,
  output        io_tlb_resp_valid,
  output [23:0] io_tlb_resp_bits_data_entry_tag,
  output [15:0] io_tlb_resp_bits_data_entry_asid,
  output        io_tlb_resp_bits_data_entry_perm_d,
  output        io_tlb_resp_bits_data_entry_perm_a,
  output        io_tlb_resp_bits_data_entry_perm_g,
  output        io_tlb_resp_bits_data_entry_perm_u,
  output        io_tlb_resp_bits_data_entry_perm_x,
  output        io_tlb_resp_bits_data_entry_perm_w,
  output        io_tlb_resp_bits_data_entry_perm_r,
  output [1:0]  io_tlb_resp_bits_data_entry_level,
  output [20:0] io_tlb_resp_bits_data_entry_ppn,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_0,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_1,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_2,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_3,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_4,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_5,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_6,
  output [2:0]  io_tlb_resp_bits_data_ppn_low_7,
  output        io_tlb_resp_bits_data_valididx_0,
  output        io_tlb_resp_bits_data_valididx_1,
  output        io_tlb_resp_bits_data_valididx_2,
  output        io_tlb_resp_bits_data_valididx_3,
  output        io_tlb_resp_bits_data_valididx_4,
  output        io_tlb_resp_bits_data_valididx_5,
  output        io_tlb_resp_bits_data_valididx_6,
  output        io_tlb_resp_bits_data_valididx_7,
  output        io_tlb_resp_bits_data_pf,
  output        io_tlb_resp_bits_data_af,
  input         io_ptw_req_0_ready,
  output        io_ptw_req_0_valid,
  output [26:0] io_ptw_req_0_bits_vpn,
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
  input         io_ptw_resp_bits_pf,
  input         io_ptw_resp_bits_af
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
  wire  _T = io_ptw_req_0_ready & io_ptw_req_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_1 = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
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
  reg  ptwResp_pf; // @[Reg.scala 16:16]
  reg  ptwResp_af; // @[Reg.scala 16:16]
  wire  ptwResp_OldMatchVec_hit0 = io_ptw_resp_bits_entry_tag[23:15] == vpn_0[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1 = io_ptw_resp_bits_entry_tag[14:6] == vpn_0[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2 = io_ptw_resp_bits_entry_tag[5:0] == vpn_0[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_5 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1 &
    ptwResp_OldMatchVec_hit0 : ptwResp_OldMatchVec_hit0; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_6 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2 &
    ptwResp_OldMatchVec_hit1 & ptwResp_OldMatchVec_hit0 : _ptwResp_OldMatchVec_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_42 = 3'h1 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_43 = 3'h2 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_42; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_44 = 3'h3 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_43; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_45 = 3'h4 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_44; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_46 = 3'h5 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_45; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_47 = 3'h6 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_46; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_48 = 3'h7 == vpn_0[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_47; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_8 = _ptwResp_OldMatchVec_T_6 & _GEN_48; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_0 = v_0 & _ptwResp_OldMatchVec_T_8; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_1 = io_ptw_resp_bits_entry_tag[23:15] == vpn_1[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_1 = io_ptw_resp_bits_entry_tag[14:6] == vpn_1[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_1 = io_ptw_resp_bits_entry_tag[5:0] == vpn_1[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_14 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_1 &
    ptwResp_OldMatchVec_hit0_1 : ptwResp_OldMatchVec_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_15 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_1 &
    ptwResp_OldMatchVec_hit1_1 & ptwResp_OldMatchVec_hit0_1 : _ptwResp_OldMatchVec_T_14; // @[MMUBundle.scala 1017:22]
  wire  _GEN_50 = 3'h1 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_51 = 3'h2 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_50; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_52 = 3'h3 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_51; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_53 = 3'h4 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_52; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_54 = 3'h5 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_53; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_55 = 3'h6 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_54; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_56 = 3'h7 == vpn_1[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_55; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_17 = _ptwResp_OldMatchVec_T_15 & _GEN_56; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_1 = v_1 & _ptwResp_OldMatchVec_T_17; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_2 = io_ptw_resp_bits_entry_tag[23:15] == vpn_2[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_2 = io_ptw_resp_bits_entry_tag[14:6] == vpn_2[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_2 = io_ptw_resp_bits_entry_tag[5:0] == vpn_2[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_23 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_2 &
    ptwResp_OldMatchVec_hit0_2 : ptwResp_OldMatchVec_hit0_2; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_24 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_2 &
    ptwResp_OldMatchVec_hit1_2 & ptwResp_OldMatchVec_hit0_2 : _ptwResp_OldMatchVec_T_23; // @[MMUBundle.scala 1017:22]
  wire  _GEN_58 = 3'h1 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_59 = 3'h2 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_58; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_60 = 3'h3 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_59; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_61 = 3'h4 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_60; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_62 = 3'h5 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_61; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_63 = 3'h6 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_62; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_64 = 3'h7 == vpn_2[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_63; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_26 = _ptwResp_OldMatchVec_T_24 & _GEN_64; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_2 = v_2 & _ptwResp_OldMatchVec_T_26; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_3 = io_ptw_resp_bits_entry_tag[23:15] == vpn_3[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_3 = io_ptw_resp_bits_entry_tag[14:6] == vpn_3[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_3 = io_ptw_resp_bits_entry_tag[5:0] == vpn_3[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_32 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_3 &
    ptwResp_OldMatchVec_hit0_3 : ptwResp_OldMatchVec_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_33 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_3 &
    ptwResp_OldMatchVec_hit1_3 & ptwResp_OldMatchVec_hit0_3 : _ptwResp_OldMatchVec_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_66 = 3'h1 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_67 = 3'h2 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_66; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_68 = 3'h3 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_67; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_69 = 3'h4 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_68; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_70 = 3'h5 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_69; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_71 = 3'h6 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_70; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_72 = 3'h7 == vpn_3[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_71; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_35 = _ptwResp_OldMatchVec_T_33 & _GEN_72; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_3 = v_3 & _ptwResp_OldMatchVec_T_35; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_4 = io_ptw_resp_bits_entry_tag[23:15] == vpn_4[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_4 = io_ptw_resp_bits_entry_tag[14:6] == vpn_4[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_4 = io_ptw_resp_bits_entry_tag[5:0] == vpn_4[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_41 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_4 &
    ptwResp_OldMatchVec_hit0_4 : ptwResp_OldMatchVec_hit0_4; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_42 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_4 &
    ptwResp_OldMatchVec_hit1_4 & ptwResp_OldMatchVec_hit0_4 : _ptwResp_OldMatchVec_T_41; // @[MMUBundle.scala 1017:22]
  wire  _GEN_74 = 3'h1 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_75 = 3'h2 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_74; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_76 = 3'h3 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_75; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_77 = 3'h4 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_76; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_78 = 3'h5 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_77; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_79 = 3'h6 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_78; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_80 = 3'h7 == vpn_4[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_79; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_44 = _ptwResp_OldMatchVec_T_42 & _GEN_80; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_4 = v_4 & _ptwResp_OldMatchVec_T_44; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_5 = io_ptw_resp_bits_entry_tag[23:15] == vpn_5[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_5 = io_ptw_resp_bits_entry_tag[14:6] == vpn_5[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_5 = io_ptw_resp_bits_entry_tag[5:0] == vpn_5[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_50 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_5 &
    ptwResp_OldMatchVec_hit0_5 : ptwResp_OldMatchVec_hit0_5; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_51 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_5 &
    ptwResp_OldMatchVec_hit1_5 & ptwResp_OldMatchVec_hit0_5 : _ptwResp_OldMatchVec_T_50; // @[MMUBundle.scala 1017:22]
  wire  _GEN_82 = 3'h1 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_83 = 3'h2 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_82; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_84 = 3'h3 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_83; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_85 = 3'h4 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_84; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_86 = 3'h5 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_85; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_87 = 3'h6 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_86; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_88 = 3'h7 == vpn_5[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_87; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_53 = _ptwResp_OldMatchVec_T_51 & _GEN_88; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_5 = v_5 & _ptwResp_OldMatchVec_T_53; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_6 = io_ptw_resp_bits_entry_tag[23:15] == vpn_6[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_6 = io_ptw_resp_bits_entry_tag[14:6] == vpn_6[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_6 = io_ptw_resp_bits_entry_tag[5:0] == vpn_6[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_59 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_6 &
    ptwResp_OldMatchVec_hit0_6 : ptwResp_OldMatchVec_hit0_6; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_60 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_6 &
    ptwResp_OldMatchVec_hit1_6 & ptwResp_OldMatchVec_hit0_6 : _ptwResp_OldMatchVec_T_59; // @[MMUBundle.scala 1017:22]
  wire  _GEN_90 = 3'h1 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_91 = 3'h2 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_90; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_92 = 3'h3 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_91; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_93 = 3'h4 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_92; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_94 = 3'h5 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_93; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_95 = 3'h6 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_94; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_96 = 3'h7 == vpn_6[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_95; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_62 = _ptwResp_OldMatchVec_T_60 & _GEN_96; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_6 = v_6 & _ptwResp_OldMatchVec_T_62; // @[Repeater.scala 182:8]
  wire  ptwResp_OldMatchVec_hit0_7 = io_ptw_resp_bits_entry_tag[23:15] == vpn_7[26:18]; // @[MMUBundle.scala 1012:76]
  wire  ptwResp_OldMatchVec_hit1_7 = io_ptw_resp_bits_entry_tag[14:6] == vpn_7[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_OldMatchVec_hit2_7 = io_ptw_resp_bits_entry_tag[5:0] == vpn_7[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _ptwResp_OldMatchVec_T_68 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_7 &
    ptwResp_OldMatchVec_hit0_7 : ptwResp_OldMatchVec_hit0_7; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_OldMatchVec_T_69 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_7 &
    ptwResp_OldMatchVec_hit1_7 & ptwResp_OldMatchVec_hit0_7 : _ptwResp_OldMatchVec_T_68; // @[MMUBundle.scala 1017:22]
  wire  _GEN_98 = 3'h1 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_99 = 3'h2 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_98; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_100 = 3'h3 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_99; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_101 = 3'h4 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_100; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_102 = 3'h5 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_101; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_103 = 3'h6 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_102; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_104 = 3'h7 == vpn_7[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_103; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_OldMatchVec_T_71 = _ptwResp_OldMatchVec_T_69 & _GEN_104; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_OldMatchVec_7 = v_7 & _ptwResp_OldMatchVec_T_71; // @[Repeater.scala 182:8]
  wire [7:0] _ptwResp_valid_T_1 = {ptwResp_OldMatchVec_0,ptwResp_OldMatchVec_1,ptwResp_OldMatchVec_2,
    ptwResp_OldMatchVec_3,ptwResp_OldMatchVec_4,ptwResp_OldMatchVec_5,ptwResp_OldMatchVec_6,ptwResp_OldMatchVec_7}; // @[Cat.scala 31:58]
  reg  ptwResp_valid; // @[Repeater.scala 183:30]
  wire  oldMatchVec_early_0_0 = v_0 & vpn_0 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_1 = v_1 & vpn_1 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_2 = v_2 & vpn_2 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_3 = v_3 & vpn_3 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_4 = v_4 & vpn_4 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_5 = v_5 & vpn_5 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_6 = v_6 & vpn_6 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_0_7 = v_7 & vpn_7 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_0 = v_0 & vpn_0 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_1 = v_1 & vpn_1 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_2 = v_2 & vpn_2 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_3 = v_3 & vpn_3 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_4 = v_4 & vpn_4 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_5 = v_5 & vpn_5 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_6 = v_6 & vpn_6 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_1_7 = v_7 & vpn_7 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_0 = v_0 & vpn_0 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_1 = v_1 & vpn_1 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_2 = v_2 & vpn_2 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_3 = v_3 & vpn_3 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_4 = v_4 & vpn_4 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_5 = v_5 & vpn_5 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_6 = v_6 & vpn_6 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  wire  oldMatchVec_early_3_7 = v_7 & vpn_7 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 185:83]
  reg [26:0] tlb_req_0_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_0_valid_REG; // @[Repeater.scala 190:32]
  wire  ptwResp_newMatchVec_hit2 = ptwResp_entry_tag[5:0] == tlb_req_0_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1 = ptwResp_entry_tag[14:6] == tlb_req_0_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0 = ptwResp_entry_tag[23:15] == tlb_req_0_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_5 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1 & ptwResp_newMatchVec_hit0 :
    ptwResp_newMatchVec_hit0; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_6 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2 & ptwResp_newMatchVec_hit1 &
    ptwResp_newMatchVec_hit0 : _ptwResp_newMatchVec_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_154 = 3'h1 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_155 = 3'h2 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_154; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_156 = 3'h3 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_155; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_157 = 3'h4 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_156; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_158 = 3'h5 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_157; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_159 = 3'h6 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_158; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_160 = 3'h7 == tlb_req_0_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_159; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_8 = _ptwResp_newMatchVec_T_6 & _GEN_160; // @[MMUBundle.scala 1017:142]
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
  wire  _GEN_162 = 3'h1 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_163 = 3'h2 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_162; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_164 = 3'h3 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_163; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_165 = 3'h4 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_164; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_166 = 3'h5 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_165; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_167 = 3'h6 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_166; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_168 = 3'h7 == tlb_req_1_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_167; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_17 = _ptwResp_newMatchVec_T_15 & _GEN_168; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_1 = ptwResp_valid & _ptwResp_newMatchVec_T_17; // @[Repeater.scala 202:19]
  reg  oldMatchVec_1; // @[Repeater.scala 197:55]
  reg  newMatchVec_REG_4; // @[Repeater.scala 199:12]
  wire  newMatchVec_1_0 = newMatchVec_REG_4 & tlb_req_0_valid_REG; // @[Repeater.scala 199:38]
  wire  _reqs_reqs_merge_T_3 = |newMatchVec_1_0; // @[Repeater.scala 212:41]
  wire  reqs_reqs_merge_1 = ptwResp_newMatchVec_1 | oldMatchVec_1 | _reqs_reqs_merge_T_3; // @[Repeater.scala 211:54]
  reg  tlb_req_1_valid_REG; // @[Repeater.scala 190:32]
  wire  reqs_1_valid = ~reqs_reqs_merge_1 & tlb_req_1_valid_REG; // @[Repeater.scala 220:27]
  wire [1:0] _enqNum_T = reqs_0_valid + reqs_1_valid; // @[Bitwise.scala 48:55]
  reg [26:0] tlb_req_3_bits_rvpn; // @[Reg.scala 16:16]
  wire  ptwResp_newMatchVec_hit2_3 = ptwResp_entry_tag[5:0] == tlb_req_3_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  ptwResp_newMatchVec_hit1_3 = ptwResp_entry_tag[14:6] == tlb_req_3_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  ptwResp_newMatchVec_hit0_3 = ptwResp_entry_tag[23:15] == tlb_req_3_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  _ptwResp_newMatchVec_T_32 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_3 &
    ptwResp_newMatchVec_hit0_3 : ptwResp_newMatchVec_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _ptwResp_newMatchVec_T_33 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_3 &
    ptwResp_newMatchVec_hit1_3 & ptwResp_newMatchVec_hit0_3 : _ptwResp_newMatchVec_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_178 = 3'h1 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_179 = 3'h2 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_2 : _GEN_178; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_180 = 3'h3 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_3 : _GEN_179; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_181 = 3'h4 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_4 : _GEN_180; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_182 = 3'h5 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_5 : _GEN_181; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_183 = 3'h6 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_6 : _GEN_182; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_184 = 3'h7 == tlb_req_3_bits_rvpn[2:0] ? ptwResp_valididx_7 : _GEN_183; // @[MMUBundle.scala 1017:{142,142}]
  wire  _ptwResp_newMatchVec_T_35 = _ptwResp_newMatchVec_T_33 & _GEN_184; // @[MMUBundle.scala 1017:142]
  wire  ptwResp_newMatchVec_3 = ptwResp_valid & _ptwResp_newMatchVec_T_35; // @[Repeater.scala 202:19]
  reg  oldMatchVec_3; // @[Repeater.scala 197:55]
  reg  newMatchVec_REG_12; // @[Repeater.scala 199:12]
  wire  newMatchVec_3_0 = newMatchVec_REG_12 & tlb_req_0_valid_REG; // @[Repeater.scala 199:38]
  reg  newMatchVec_REG_13; // @[Repeater.scala 199:12]
  wire  newMatchVec_3_1 = newMatchVec_REG_13 & tlb_req_1_valid_REG; // @[Repeater.scala 199:38]
  wire [2:0] _reqs_reqs_merge_T_8 = {newMatchVec_3_0,newMatchVec_3_1,1'h0}; // @[Cat.scala 31:58]
  wire  _reqs_reqs_merge_T_9 = |_reqs_reqs_merge_T_8; // @[Repeater.scala 212:41]
  wire  reqs_reqs_merge_3 = ptwResp_newMatchVec_3 | oldMatchVec_3 | _reqs_reqs_merge_T_9; // @[Repeater.scala 211:54]
  reg  tlb_req_3_valid_REG; // @[Repeater.scala 190:32]
  wire  reqs_3_valid = ~reqs_reqs_merge_3 & tlb_req_3_valid_REG; // @[Repeater.scala 220:27]
  wire [1:0] _enqNum_T_2 = {{1'd0}, reqs_3_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] enqNum = _enqNum_T + _enqNum_T_2; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_958 = {{1'd0}, enqNum}; // @[Repeater.scala 235:25]
  wire [4:0] _canEnqueue_T = counter + _GEN_958; // @[Repeater.scala 235:25]
  wire  canEnqueue = _canEnqueue_T <= 5'h8; // @[Repeater.scala 235:35]
  wire  lastReqMatchVec_early_0_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_0_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_0_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_0_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_1_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_1_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  lastReqMatchVec_early_3_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_3_bits_vpn & canEnqueue; // @[Repeater.scala 186:106]
  wire  tlb_req_0_valid_hit0 = ptwResp_entry_tag[23:15] == io_tlb_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_0_valid_hit1 = ptwResp_entry_tag[14:6] == io_tlb_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_0_valid_hit2 = ptwResp_entry_tag[5:0] == io_tlb_req_0_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_0_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_0_valid_hit1 & tlb_req_0_valid_hit0 :
    tlb_req_0_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_0_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_0_valid_hit2 & tlb_req_0_valid_hit1 &
    tlb_req_0_valid_hit0 : _tlb_req_0_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_106 = 3'h1 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_107 = 3'h2 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_106; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_108 = 3'h3 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_107; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_109 = 3'h4 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_108; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_110 = 3'h5 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_109; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_111 = 3'h6 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_110; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_112 = 3'h7 == io_tlb_req_0_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_111; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_0_valid_T_8 = _tlb_req_0_valid_T_6 & _GEN_112; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_0_valid_T_10 = ~(ptwResp_valid & _tlb_req_0_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_0_valid_T_11 = io_tlb_req_0_valid & _tlb_req_0_valid_T_10; // @[Repeater.scala 190:53]
  wire [3:0] _tlb_req_0_valid_T_12 = {lastReqMatchVec_early_0_0,lastReqMatchVec_early_0_1,1'h0,lastReqMatchVec_early_0_3
    }; // @[Cat.scala 31:58]
  wire  _tlb_req_0_valid_T_14 = ~(|_tlb_req_0_valid_T_12); // @[Repeater.scala 192:7]
  wire  tlb_req_1_valid_hit0 = ptwResp_entry_tag[23:15] == io_tlb_req_1_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_1_valid_hit1 = ptwResp_entry_tag[14:6] == io_tlb_req_1_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_1_valid_hit2 = ptwResp_entry_tag[5:0] == io_tlb_req_1_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_1_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_1_valid_hit1 & tlb_req_1_valid_hit0 :
    tlb_req_1_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_1_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_1_valid_hit2 & tlb_req_1_valid_hit1 &
    tlb_req_1_valid_hit0 : _tlb_req_1_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_118 = 3'h1 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_119 = 3'h2 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_118; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_120 = 3'h3 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_119; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_121 = 3'h4 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_120; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_122 = 3'h5 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_121; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_123 = 3'h6 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_122; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_124 = 3'h7 == io_tlb_req_1_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_123; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_1_valid_T_8 = _tlb_req_1_valid_T_6 & _GEN_124; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_1_valid_T_10 = ~(ptwResp_valid & _tlb_req_1_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_1_valid_T_11 = io_tlb_req_1_valid & _tlb_req_1_valid_T_10; // @[Repeater.scala 190:53]
  wire [3:0] _tlb_req_1_valid_T_12 = {lastReqMatchVec_early_1_0,lastReqMatchVec_early_1_1,1'h0,lastReqMatchVec_early_1_3
    }; // @[Cat.scala 31:58]
  wire  _tlb_req_1_valid_T_14 = ~(|_tlb_req_1_valid_T_12); // @[Repeater.scala 192:7]
  wire  tlb_req_3_valid_hit0 = ptwResp_entry_tag[23:15] == io_tlb_req_3_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_3_valid_hit1 = ptwResp_entry_tag[14:6] == io_tlb_req_3_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_3_valid_hit2 = ptwResp_entry_tag[5:0] == io_tlb_req_3_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_3_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_3_valid_hit1 & tlb_req_3_valid_hit0 :
    tlb_req_3_valid_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_3_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_3_valid_hit2 & tlb_req_3_valid_hit1 &
    tlb_req_3_valid_hit0 : _tlb_req_3_valid_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_142 = 3'h1 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_143 = 3'h2 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_142; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_144 = 3'h3 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_143; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_145 = 3'h4 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_144; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_146 = 3'h5 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_145; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_147 = 3'h6 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_146; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_148 = 3'h7 == io_tlb_req_3_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_147; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_3_valid_T_8 = _tlb_req_3_valid_T_6 & _GEN_148; // @[MMUBundle.scala 1017:142]
  wire  _tlb_req_3_valid_T_10 = ~(ptwResp_valid & _tlb_req_3_valid_T_8); // @[Repeater.scala 191:7]
  wire  _tlb_req_3_valid_T_11 = io_tlb_req_3_valid & _tlb_req_3_valid_T_10; // @[Repeater.scala 190:53]
  wire [3:0] _tlb_req_3_valid_T_12 = {lastReqMatchVec_early_3_0,lastReqMatchVec_early_3_1,1'h0,lastReqMatchVec_early_3_3
    }; // @[Cat.scala 31:58]
  wire  _tlb_req_3_valid_T_14 = ~(|_tlb_req_3_valid_T_12); // @[Repeater.scala 192:7]
  wire [7:0] _oldMatchVec_T = {oldMatchVec_early_0_0,oldMatchVec_early_0_1,oldMatchVec_early_0_2,oldMatchVec_early_0_3,
    oldMatchVec_early_0_4,oldMatchVec_early_0_5,oldMatchVec_early_0_6,oldMatchVec_early_0_7}; // @[Cat.scala 31:58]
  wire [7:0] _oldMatchVec_T_2 = {oldMatchVec_early_1_0,oldMatchVec_early_1_1,oldMatchVec_early_1_2,oldMatchVec_early_1_3
    ,oldMatchVec_early_1_4,oldMatchVec_early_1_5,oldMatchVec_early_1_6,oldMatchVec_early_1_7}; // @[Cat.scala 31:58]
  wire [7:0] _oldMatchVec_T_6 = {oldMatchVec_early_3_0,oldMatchVec_early_3_1,oldMatchVec_early_3_2,oldMatchVec_early_3_3
    ,oldMatchVec_early_3_4,oldMatchVec_early_3_5,oldMatchVec_early_3_6,oldMatchVec_early_3_7}; // @[Cat.scala 31:58]
  wire  _isFull_T = enqPtr == deqPtr; // @[Repeater.scala 228:23]
  wire  isEmptyDeq = _isFull_T & ~mayFullDeq; // @[Repeater.scala 229:38]
  wire  isEmptyIss = enqPtr == issPtr & ~mayFullIss; // @[Repeater.scala 230:38]
  wire [1:0] _accumEnqNum_T_1 = {{1'd0}, reqs_1_valid}; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_959 = {{1'd0}, reqs_0_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _accumEnqNum_T_3 = _GEN_959 + _accumEnqNum_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] accumEnqNum_3 = _accumEnqNum_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _enqPtrVecInit_T = {{1'd0}, enqPtr}; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_0 = _enqPtrVecInit_T[2:0]; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_1 = enqPtr + 3'h1; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_2 = enqPtr + 3'h2; // @[Repeater.scala 232:63]
  wire [2:0] enqPtrVecInit_3 = enqPtr + 3'h3; // @[Repeater.scala 232:63]
  wire [2:0] _GEN_190 = reqs_0_valid ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_191 = 2'h2 == _GEN_959 ? enqPtrVecInit_2 : _GEN_190; // @[Repeater.scala 233:{26,26}]
  wire [2:0] enqPtrVec_1 = 2'h3 == _GEN_959 ? enqPtrVecInit_3 : _GEN_191; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_198 = 2'h1 == accumEnqNum_3 ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 233:{26,26}]
  wire [2:0] _GEN_199 = 2'h2 == accumEnqNum_3 ? enqPtrVecInit_2 : _GEN_198; // @[Repeater.scala 233:{26,26}]
  wire [2:0] enqPtrVec_3 = 2'h3 == accumEnqNum_3 ? enqPtrVecInit_3 : _GEN_199; // @[Repeater.scala 233:{26,26}]
  wire [1:0] _enqNum_fake_T = io_tlb_req_0_valid + io_tlb_req_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _enqNum_fake_T_2 = {{1'd0}, io_tlb_req_3_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] enqNum_fake = _enqNum_fake_T + _enqNum_fake_T_2; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_962 = {{1'd0}, enqNum_fake}; // @[Repeater.scala 239:33]
  wire [4:0] _canEnqueue_fake_T = counter + _GEN_962; // @[Repeater.scala 239:33]
  wire  tlb_req_flushed_hit0 = io_ptw_resp_bits_entry_tag[23:15] == tlb_req_0_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1 = io_ptw_resp_bits_entry_tag[14:6] == tlb_req_0_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2 = io_ptw_resp_bits_entry_tag[5:0] == tlb_req_0_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_5 = io_ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1 & tlb_req_flushed_hit0 :
    tlb_req_flushed_hit0; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_6 = io_ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2 & tlb_req_flushed_hit1 &
    tlb_req_flushed_hit0 : _tlb_req_flushed_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_202 = 3'h1 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_203 = 3'h2 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_202; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_204 = 3'h3 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_203; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_205 = 3'h4 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_204; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_206 = 3'h5 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_205; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_207 = 3'h6 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_206; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_208 = 3'h7 == tlb_req_0_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_207; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_8 = _tlb_req_flushed_T_6 & _GEN_208; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_0 = io_ptw_resp_valid & _tlb_req_flushed_T_8; // @[Repeater.scala 244:57]
  wire  tlb_req_flushed_hit0_1 = io_ptw_resp_bits_entry_tag[23:15] == tlb_req_1_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1_1 = io_ptw_resp_bits_entry_tag[14:6] == tlb_req_1_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2_1 = io_ptw_resp_bits_entry_tag[5:0] == tlb_req_1_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_14 = io_ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1_1 & tlb_req_flushed_hit0_1
     : tlb_req_flushed_hit0_1; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_15 = io_ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2_1 & tlb_req_flushed_hit1_1
     & tlb_req_flushed_hit0_1 : _tlb_req_flushed_T_14; // @[MMUBundle.scala 1017:22]
  wire  _GEN_210 = 3'h1 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_211 = 3'h2 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_210; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_212 = 3'h3 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_211; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_213 = 3'h4 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_212; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_214 = 3'h5 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_213; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_215 = 3'h6 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_214; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_216 = 3'h7 == tlb_req_1_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_215; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_17 = _tlb_req_flushed_T_15 & _GEN_216; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_1 = io_ptw_resp_valid & _tlb_req_flushed_T_17; // @[Repeater.scala 244:57]
  wire  tlb_req_flushed_hit0_3 = io_ptw_resp_bits_entry_tag[23:15] == tlb_req_3_bits_rvpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  tlb_req_flushed_hit1_3 = io_ptw_resp_bits_entry_tag[14:6] == tlb_req_3_bits_rvpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  tlb_req_flushed_hit2_3 = io_ptw_resp_bits_entry_tag[5:0] == tlb_req_3_bits_rvpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _tlb_req_flushed_T_32 = io_ptw_resp_bits_entry_level == 2'h1 ? tlb_req_flushed_hit1_3 & tlb_req_flushed_hit0_3
     : tlb_req_flushed_hit0_3; // @[MMUBundle.scala 1017:84]
  wire  _tlb_req_flushed_T_33 = io_ptw_resp_bits_entry_level == 2'h2 ? tlb_req_flushed_hit2_3 & tlb_req_flushed_hit1_3
     & tlb_req_flushed_hit0_3 : _tlb_req_flushed_T_32; // @[MMUBundle.scala 1017:22]
  wire  _GEN_226 = 3'h1 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_1 : io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_227 = 3'h2 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_2 : _GEN_226; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_228 = 3'h3 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_3 : _GEN_227; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_229 = 3'h4 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_4 : _GEN_228; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_230 = 3'h5 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_5 : _GEN_229; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_231 = 3'h6 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_6 : _GEN_230; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_232 = 3'h7 == tlb_req_3_bits_rvpn[2:0] ? io_ptw_resp_bits_valididx_7 : _GEN_231; // @[MMUBundle.scala 1017:{142,142}]
  wire  _tlb_req_flushed_T_35 = _tlb_req_flushed_T_33 & _GEN_232; // @[MMUBundle.scala 1017:142]
  wire  tlb_req_flushed_3 = io_ptw_resp_valid & _tlb_req_flushed_T_35; // @[Repeater.scala 244:57]
  wire  _issue_valid_T = ~isEmptyIss; // @[Repeater.scala 257:34]
  wire  _GEN_258 = 3'h1 == issPtr ? v_1 : v_0; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_259 = 3'h2 == issPtr ? v_2 : _GEN_258; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_260 = 3'h3 == issPtr ? v_3 : _GEN_259; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_261 = 3'h4 == issPtr ? v_4 : _GEN_260; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_262 = 3'h5 == issPtr ? v_5 : _GEN_261; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_263 = 3'h6 == issPtr ? v_6 : _GEN_262; // @[Repeater.scala 257:{31,31}]
  wire  _GEN_264 = 3'h7 == issPtr ? v_7 : _GEN_263; // @[Repeater.scala 257:{31,31}]
  wire  issue_valid = _GEN_264 & ~isEmptyIss & ~inflight_full; // @[Repeater.scala 257:46]
  wire  issue_filtered_hit0 = ptwResp_entry_tag[23:15] == io_ptw_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 1012:76]
  wire  issue_filtered_hit1 = ptwResp_entry_tag[14:6] == io_ptw_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 1013:90]
  wire  issue_filtered_hit2 = ptwResp_entry_tag[5:0] == io_ptw_req_0_bits_vpn[8:3]; // @[MMUBundle.scala 1014:61]
  wire  _issue_filtered_T_5 = ptwResp_entry_level == 2'h1 ? issue_filtered_hit1 & issue_filtered_hit0 :
    issue_filtered_hit0; // @[MMUBundle.scala 1017:84]
  wire  _issue_filtered_T_6 = ptwResp_entry_level == 2'h2 ? issue_filtered_hit2 & issue_filtered_hit1 &
    issue_filtered_hit0 : _issue_filtered_T_5; // @[MMUBundle.scala 1017:22]
  wire  _GEN_266 = 3'h1 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_1 : ptwResp_valididx_0; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_267 = 3'h2 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_2 : _GEN_266; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_268 = 3'h3 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_3 : _GEN_267; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_269 = 3'h4 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_4 : _GEN_268; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_270 = 3'h5 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_5 : _GEN_269; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_271 = 3'h6 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_6 : _GEN_270; // @[MMUBundle.scala 1017:{142,142}]
  wire  _GEN_272 = 3'h7 == io_ptw_req_0_bits_vpn[2:0] ? ptwResp_valididx_7 : _GEN_271; // @[MMUBundle.scala 1017:{142,142}]
  wire  _issue_filtered_T_8 = _issue_filtered_T_6 & _GEN_272; // @[MMUBundle.scala 1017:142]
  wire  issue_filtered = ptwResp_valid & _issue_filtered_T_8; // @[Repeater.scala 258:38]
  wire  issue_fire_fake = issue_valid & io_ptw_req_0_ready; // @[Repeater.scala 259:37]
  wire [26:0] _GEN_274 = 3'h1 == issPtr ? vpn_1 : vpn_0; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_275 = 3'h2 == issPtr ? vpn_2 : _GEN_274; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_276 = 3'h3 == issPtr ? vpn_3 : _GEN_275; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_277 = 3'h4 == issPtr ? vpn_4 : _GEN_276; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_278 = 3'h5 == issPtr ? vpn_5 : _GEN_277; // @[Repeater.scala 261:{26,26}]
  wire [26:0] _GEN_279 = 3'h6 == issPtr ? vpn_6 : _GEN_278; // @[Repeater.scala 261:{26,26}]
  wire  _GEN_281 = 3'h0 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_0; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_282 = 3'h1 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_1; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_283 = 3'h2 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_2; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_284 = 3'h3 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_3; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_285 = 3'h4 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_4; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_286 = 3'h5 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_5; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_287 = 3'h6 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_6; // @[Repeater.scala 158:18 267:{25,25}]
  wire  _GEN_288 = 3'h7 == enqPtrVecInit_0 ? ~tlb_req_flushed_0 : v_7; // @[Repeater.scala 158:18 267:{25,25}]
  wire [26:0] _GEN_289 = 3'h0 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_0; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_290 = 3'h1 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_1; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_291 = 3'h2 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_2; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_292 = 3'h3 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_3; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_293 = 3'h4 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_4; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_294 = 3'h5 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_5; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_295 = 3'h6 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_6; // @[Repeater.scala 160:16 268:{27,27}]
  wire [26:0] _GEN_296 = 3'h7 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_7; // @[Repeater.scala 160:16 268:{27,27}]
  wire  _GEN_353 = reqs_0_valid & canEnqueue ? _GEN_281 : v_0; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_354 = reqs_0_valid & canEnqueue ? _GEN_282 : v_1; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_355 = reqs_0_valid & canEnqueue ? _GEN_283 : v_2; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_356 = reqs_0_valid & canEnqueue ? _GEN_284 : v_3; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_357 = reqs_0_valid & canEnqueue ? _GEN_285 : v_4; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_358 = reqs_0_valid & canEnqueue ? _GEN_286 : v_5; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_359 = reqs_0_valid & canEnqueue ? _GEN_287 : v_6; // @[Repeater.scala 158:18 266:38]
  wire  _GEN_360 = reqs_0_valid & canEnqueue ? _GEN_288 : v_7; // @[Repeater.scala 158:18 266:38]
  wire [26:0] _GEN_361 = reqs_0_valid & canEnqueue ? _GEN_289 : vpn_0; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_362 = reqs_0_valid & canEnqueue ? _GEN_290 : vpn_1; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_363 = reqs_0_valid & canEnqueue ? _GEN_291 : vpn_2; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_364 = reqs_0_valid & canEnqueue ? _GEN_292 : vpn_3; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_365 = reqs_0_valid & canEnqueue ? _GEN_293 : vpn_4; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_366 = reqs_0_valid & canEnqueue ? _GEN_294 : vpn_5; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_367 = reqs_0_valid & canEnqueue ? _GEN_295 : vpn_6; // @[Repeater.scala 160:16 266:38]
  wire [26:0] _GEN_368 = reqs_0_valid & canEnqueue ? _GEN_296 : vpn_7; // @[Repeater.scala 160:16 266:38]
  wire  _GEN_425 = 3'h0 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_353; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_426 = 3'h1 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_354; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_427 = 3'h2 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_355; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_428 = 3'h3 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_356; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_429 = 3'h4 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_357; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_430 = 3'h5 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_358; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_431 = 3'h6 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_359; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_432 = 3'h7 == enqPtrVec_1 ? ~tlb_req_flushed_1 : _GEN_360; // @[Repeater.scala 267:{25,25}]
  wire [26:0] _GEN_433 = 3'h0 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_361; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_434 = 3'h1 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_362; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_435 = 3'h2 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_363; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_436 = 3'h3 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_364; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_437 = 3'h4 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_365; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_438 = 3'h5 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_366; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_439 = 3'h6 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_367; // @[Repeater.scala 268:{27,27}]
  wire [26:0] _GEN_440 = 3'h7 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_368; // @[Repeater.scala 268:{27,27}]
  wire  _GEN_497 = reqs_1_valid & canEnqueue ? _GEN_425 : _GEN_353; // @[Repeater.scala 266:38]
  wire  _GEN_498 = reqs_1_valid & canEnqueue ? _GEN_426 : _GEN_354; // @[Repeater.scala 266:38]
  wire  _GEN_499 = reqs_1_valid & canEnqueue ? _GEN_427 : _GEN_355; // @[Repeater.scala 266:38]
  wire  _GEN_500 = reqs_1_valid & canEnqueue ? _GEN_428 : _GEN_356; // @[Repeater.scala 266:38]
  wire  _GEN_501 = reqs_1_valid & canEnqueue ? _GEN_429 : _GEN_357; // @[Repeater.scala 266:38]
  wire  _GEN_502 = reqs_1_valid & canEnqueue ? _GEN_430 : _GEN_358; // @[Repeater.scala 266:38]
  wire  _GEN_503 = reqs_1_valid & canEnqueue ? _GEN_431 : _GEN_359; // @[Repeater.scala 266:38]
  wire  _GEN_504 = reqs_1_valid & canEnqueue ? _GEN_432 : _GEN_360; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_505 = reqs_1_valid & canEnqueue ? _GEN_433 : _GEN_361; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_506 = reqs_1_valid & canEnqueue ? _GEN_434 : _GEN_362; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_507 = reqs_1_valid & canEnqueue ? _GEN_435 : _GEN_363; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_508 = reqs_1_valid & canEnqueue ? _GEN_436 : _GEN_364; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_509 = reqs_1_valid & canEnqueue ? _GEN_437 : _GEN_365; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_510 = reqs_1_valid & canEnqueue ? _GEN_438 : _GEN_366; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_511 = reqs_1_valid & canEnqueue ? _GEN_439 : _GEN_367; // @[Repeater.scala 266:38]
  wire [26:0] _GEN_512 = reqs_1_valid & canEnqueue ? _GEN_440 : _GEN_368; // @[Repeater.scala 266:38]
  wire  _GEN_713 = 3'h0 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_497; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_714 = 3'h1 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_498; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_715 = 3'h2 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_499; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_716 = 3'h3 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_500; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_717 = 3'h4 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_501; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_718 = 3'h5 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_502; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_719 = 3'h6 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_503; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_720 = 3'h7 == enqPtrVec_3 ? ~tlb_req_flushed_3 : _GEN_504; // @[Repeater.scala 267:{25,25}]
  wire  _GEN_785 = reqs_3_valid & canEnqueue ? _GEN_713 : _GEN_497; // @[Repeater.scala 266:38]
  wire  _GEN_786 = reqs_3_valid & canEnqueue ? _GEN_714 : _GEN_498; // @[Repeater.scala 266:38]
  wire  _GEN_787 = reqs_3_valid & canEnqueue ? _GEN_715 : _GEN_499; // @[Repeater.scala 266:38]
  wire  _GEN_788 = reqs_3_valid & canEnqueue ? _GEN_716 : _GEN_500; // @[Repeater.scala 266:38]
  wire  _GEN_789 = reqs_3_valid & canEnqueue ? _GEN_717 : _GEN_501; // @[Repeater.scala 266:38]
  wire  _GEN_790 = reqs_3_valid & canEnqueue ? _GEN_718 : _GEN_502; // @[Repeater.scala 266:38]
  wire  _GEN_791 = reqs_3_valid & canEnqueue ? _GEN_719 : _GEN_503; // @[Repeater.scala 266:38]
  wire  _GEN_792 = reqs_3_valid & canEnqueue ? _GEN_720 : _GEN_504; // @[Repeater.scala 266:38]
  wire [3:0] _do_enq_T = {reqs_0_valid,reqs_1_valid,1'h0,reqs_3_valid}; // @[Cat.scala 31:58]
  wire  do_enq = canEnqueue & |_do_enq_T; // @[Repeater.scala 279:27]
  wire  _GEN_890 = 3'h1 == deqPtr ? v_1 : v_0; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_891 = 3'h2 == deqPtr ? v_2 : _GEN_890; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_892 = 3'h3 == deqPtr ? v_3 : _GEN_891; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_893 = 3'h4 == deqPtr ? v_4 : _GEN_892; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_894 = 3'h5 == deqPtr ? v_5 : _GEN_893; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_895 = 3'h6 == deqPtr ? v_6 : _GEN_894; // @[Repeater.scala 280:{17,17}]
  wire  _GEN_896 = 3'h7 == deqPtr ? v_7 : _GEN_895; // @[Repeater.scala 280:{17,17}]
  wire  do_deq = ~_GEN_896 & ~isEmptyDeq; // @[Repeater.scala 280:28]
  wire  do_iss = issue_fire_fake | ~_GEN_264 & _issue_valid_T; // @[Repeater.scala 281:32]
  wire [2:0] _enqPtr_T_1 = enqPtr + enqNum; // @[Repeater.scala 283:22]
  wire [2:0] _deqPtr_T_1 = deqPtr + 3'h1; // @[Repeater.scala 286:22]
  wire [2:0] _issPtr_T_1 = issPtr + 3'h1; // @[Repeater.scala 289:22]
  wire  _GEN_900 = 3'h0 == issPtr ? 1'h0 : _GEN_785; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_901 = 3'h1 == issPtr ? 1'h0 : _GEN_786; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_902 = 3'h2 == issPtr ? 1'h0 : _GEN_787; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_903 = 3'h3 == issPtr ? 1'h0 : _GEN_788; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_904 = 3'h4 == issPtr ? 1'h0 : _GEN_789; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_905 = 3'h5 == issPtr ? 1'h0 : _GEN_790; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_906 = 3'h6 == issPtr ? 1'h0 : _GEN_791; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_907 = 3'h7 == issPtr ? 1'h0 : _GEN_792; // @[Repeater.scala 292:{15,15}]
  wire  _GEN_908 = issue_fire_fake & issue_filtered ? _GEN_900 : _GEN_785; // @[Repeater.scala 291:44]
  wire  _GEN_909 = issue_fire_fake & issue_filtered ? _GEN_901 : _GEN_786; // @[Repeater.scala 291:44]
  wire  _GEN_910 = issue_fire_fake & issue_filtered ? _GEN_902 : _GEN_787; // @[Repeater.scala 291:44]
  wire  _GEN_911 = issue_fire_fake & issue_filtered ? _GEN_903 : _GEN_788; // @[Repeater.scala 291:44]
  wire  _GEN_912 = issue_fire_fake & issue_filtered ? _GEN_904 : _GEN_789; // @[Repeater.scala 291:44]
  wire  _GEN_913 = issue_fire_fake & issue_filtered ? _GEN_905 : _GEN_790; // @[Repeater.scala 291:44]
  wire  _GEN_914 = issue_fire_fake & issue_filtered ? _GEN_906 : _GEN_791; // @[Repeater.scala 291:44]
  wire  _GEN_915 = issue_fire_fake & issue_filtered ? _GEN_907 : _GEN_792; // @[Repeater.scala 291:44]
  wire [3:0] _GEN_963 = {{3'd0}, do_deq}; // @[Repeater.scala 305:22]
  wire [3:0] _counter_T_1 = counter - _GEN_963; // @[Repeater.scala 305:22]
  wire [2:0] _counter_T_2 = do_enq ? enqNum : 3'h0; // @[Repeater.scala 305:36]
  wire [3:0] _GEN_964 = {{1'd0}, _counter_T_2}; // @[Repeater.scala 305:31]
  wire [3:0] _counter_T_4 = _counter_T_1 + _GEN_964; // @[Repeater.scala 305:31]
  DelayN_6 flush_delay ( // @[Hold.scala 97:23]
    .clock(flush_delay_clock),
    .io_in(flush_delay_io_in),
    .io_out(flush_delay_io_out)
  );
  assign io_tlb_req_3_ready = _canEnqueue_fake_T <= 5'h8; // @[Repeater.scala 239:48]
  assign io_tlb_resp_valid = ptwResp_valid; // @[Repeater.scala 246:21]
  assign io_tlb_resp_bits_data_entry_tag = ptwResp_entry_tag; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_asid = ptwResp_entry_asid; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_d = ptwResp_entry_perm_d; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_a = ptwResp_entry_perm_a; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_g = ptwResp_entry_perm_g; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_u = ptwResp_entry_perm_u; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_x = ptwResp_entry_perm_x; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_w = ptwResp_entry_perm_w; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_perm_r = ptwResp_entry_perm_r; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_level = ptwResp_entry_level; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_entry_ppn = ptwResp_entry_ppn; // @[Repeater.scala 247:31]
  assign io_tlb_resp_bits_data_ppn_low_0 = ptwResp_ppn_low_0; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_1 = ptwResp_ppn_low_1; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_2 = ptwResp_ppn_low_2; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_3 = ptwResp_ppn_low_3; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_4 = ptwResp_ppn_low_4; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_5 = ptwResp_ppn_low_5; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_6 = ptwResp_ppn_low_6; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_ppn_low_7 = ptwResp_ppn_low_7; // @[Repeater.scala 249:33]
  assign io_tlb_resp_bits_data_valididx_0 = ptwResp_valididx_0; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_1 = ptwResp_valididx_1; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_2 = ptwResp_valididx_2; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_3 = ptwResp_valididx_3; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_4 = ptwResp_valididx_4; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_5 = ptwResp_valididx_5; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_6 = ptwResp_valididx_6; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_valididx_7 = ptwResp_valididx_7; // @[Repeater.scala 250:34]
  assign io_tlb_resp_bits_data_pf = ptwResp_pf; // @[Repeater.scala 252:28]
  assign io_tlb_resp_bits_data_af = ptwResp_af; // @[Repeater.scala 253:28]
  assign io_ptw_req_0_valid = issue_valid & ~issue_filtered; // @[Repeater.scala 260:38]
  assign io_ptw_req_0_bits_vpn = 3'h7 == issPtr ? vpn_7 : _GEN_279; // @[Repeater.scala 261:{26,26}]
  assign io_ptw_resp_ready = 1'h1; // @[Repeater.scala 262:21]
  assign flush_delay_clock = clock;
  assign flush_delay_io_in = io_sfence_valid | io_csr_satp_changed; // @[Repeater.scala 169:38]
  always @(posedge clock) begin
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_0 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_0 <= _GEN_505;
      end
    end else begin
      vpn_0 <= _GEN_505;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_1 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_1 <= _GEN_506;
      end
    end else begin
      vpn_1 <= _GEN_506;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_2 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_2 <= _GEN_507;
      end
    end else begin
      vpn_2 <= _GEN_507;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_3 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_3 <= _GEN_508;
      end
    end else begin
      vpn_3 <= _GEN_508;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_4 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_4 <= _GEN_509;
      end
    end else begin
      vpn_4 <= _GEN_509;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_5 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_5 <= _GEN_510;
      end
    end else begin
      vpn_5 <= _GEN_510;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_6 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_6 <= _GEN_511;
      end
    end else begin
      vpn_6 <= _GEN_511;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 266:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 268:27]
        vpn_7 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 268:27]
      end else begin
        vpn_7 <= _GEN_512;
      end
    end else begin
      vpn_7 <= _GEN_512;
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_tag <= io_ptw_resp_bits_entry_tag; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_asid <= io_ptw_resp_bits_entry_asid; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_d <= io_ptw_resp_bits_entry_perm_d; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_a <= io_ptw_resp_bits_entry_perm_a; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_g <= io_ptw_resp_bits_entry_perm_g; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_u <= io_ptw_resp_bits_entry_perm_u; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_x <= io_ptw_resp_bits_entry_perm_x; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_w <= io_ptw_resp_bits_entry_perm_w; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_r <= io_ptw_resp_bits_entry_perm_r; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_level <= io_ptw_resp_bits_entry_level; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_entry_ppn <= io_ptw_resp_bits_entry_ppn; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_0 <= io_ptw_resp_bits_ppn_low_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_1 <= io_ptw_resp_bits_ppn_low_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_2 <= io_ptw_resp_bits_ppn_low_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_3 <= io_ptw_resp_bits_ppn_low_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_4 <= io_ptw_resp_bits_ppn_low_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_5 <= io_ptw_resp_bits_ppn_low_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_6 <= io_ptw_resp_bits_ppn_low_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_ppn_low_7 <= io_ptw_resp_bits_ppn_low_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_0 <= io_ptw_resp_bits_valididx_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_1 <= io_ptw_resp_bits_valididx_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_2 <= io_ptw_resp_bits_valididx_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_3 <= io_ptw_resp_bits_valididx_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_4 <= io_ptw_resp_bits_valididx_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_5 <= io_ptw_resp_bits_valididx_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_6 <= io_ptw_resp_bits_valididx_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_valididx_7 <= io_ptw_resp_bits_valididx_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      ptwResp_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (io_tlb_req_0_valid) begin // @[Reg.scala 17:18]
      tlb_req_0_bits_rvpn <= io_tlb_req_0_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_0 <= |_oldMatchVec_T; // @[Repeater.scala 197:63]
    if (io_tlb_req_1_valid) begin // @[Reg.scala 17:18]
      tlb_req_1_bits_rvpn <= io_tlb_req_1_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_1 <= |_oldMatchVec_T_2; // @[Repeater.scala 197:63]
    newMatchVec_REG_4 <= io_tlb_req_1_bits_vpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 187:78]
    if (io_tlb_req_3_valid) begin // @[Reg.scala 17:18]
      tlb_req_3_bits_rvpn <= io_tlb_req_3_bits_vpn; // @[Reg.scala 17:22]
    end
    oldMatchVec_3 <= |_oldMatchVec_T_6; // @[Repeater.scala 197:63]
    newMatchVec_REG_12 <= io_tlb_req_3_bits_vpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 187:78]
    newMatchVec_REG_13 <= io_tlb_req_3_bits_vpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 187:78]
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
        v_0 <= _GEN_908;
      end
    end else begin
      v_0 <= _GEN_908;
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
        v_1 <= _GEN_909;
      end
    end else begin
      v_1 <= _GEN_909;
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
        v_2 <= _GEN_910;
      end
    end else begin
      v_2 <= _GEN_910;
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
        v_3 <= _GEN_911;
      end
    end else begin
      v_3 <= _GEN_911;
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
        v_4 <= _GEN_912;
      end
    end else begin
      v_4 <= _GEN_912;
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
        v_5 <= _GEN_913;
      end
    end else begin
      v_5 <= _GEN_913;
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
        v_6 <= _GEN_914;
      end
    end else begin
      v_6 <= _GEN_914;
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
        v_7 <= _GEN_915;
      end
    end else begin
      v_7 <= _GEN_915;
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
  vpn_0 = _RAND_8[26:0];
  _RAND_9 = {1{`RANDOM}};
  vpn_1 = _RAND_9[26:0];
  _RAND_10 = {1{`RANDOM}};
  vpn_2 = _RAND_10[26:0];
  _RAND_11 = {1{`RANDOM}};
  vpn_3 = _RAND_11[26:0];
  _RAND_12 = {1{`RANDOM}};
  vpn_4 = _RAND_12[26:0];
  _RAND_13 = {1{`RANDOM}};
  vpn_5 = _RAND_13[26:0];
  _RAND_14 = {1{`RANDOM}};
  vpn_6 = _RAND_14[26:0];
  _RAND_15 = {1{`RANDOM}};
  vpn_7 = _RAND_15[26:0];
  _RAND_16 = {1{`RANDOM}};
  enqPtr = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  issPtr = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  deqPtr = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  mayFullDeq = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mayFullIss = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  counter = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  inflight_counter = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  ptwResp_entry_tag = _RAND_23[23:0];
  _RAND_24 = {1{`RANDOM}};
  ptwResp_entry_asid = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  ptwResp_entry_perm_d = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  ptwResp_entry_perm_a = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  ptwResp_entry_perm_g = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  ptwResp_entry_perm_u = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  ptwResp_entry_perm_x = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  ptwResp_entry_perm_w = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  ptwResp_entry_perm_r = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  ptwResp_entry_level = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  ptwResp_entry_ppn = _RAND_33[20:0];
  _RAND_34 = {1{`RANDOM}};
  ptwResp_ppn_low_0 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  ptwResp_ppn_low_1 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  ptwResp_ppn_low_2 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  ptwResp_ppn_low_3 = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  ptwResp_ppn_low_4 = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  ptwResp_ppn_low_5 = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  ptwResp_ppn_low_6 = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  ptwResp_ppn_low_7 = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  ptwResp_valididx_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  ptwResp_valididx_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  ptwResp_valididx_2 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  ptwResp_valididx_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  ptwResp_valididx_4 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  ptwResp_valididx_5 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  ptwResp_valididx_6 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ptwResp_valididx_7 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ptwResp_pf = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ptwResp_af = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ptwResp_valid = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  tlb_req_0_bits_rvpn = _RAND_53[26:0];
  _RAND_54 = {1{`RANDOM}};
  tlb_req_0_valid_REG = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  oldMatchVec_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  tlb_req_1_bits_rvpn = _RAND_56[26:0];
  _RAND_57 = {1{`RANDOM}};
  oldMatchVec_1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  newMatchVec_REG_4 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  tlb_req_1_valid_REG = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  tlb_req_3_bits_rvpn = _RAND_60[26:0];
  _RAND_61 = {1{`RANDOM}};
  oldMatchVec_3 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  newMatchVec_REG_12 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  newMatchVec_REG_13 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  tlb_req_3_valid_REG = _RAND_64[0:0];
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
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

