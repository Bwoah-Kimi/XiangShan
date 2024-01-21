module StatusArray_6(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  output [7:0] io_isValid,
  output [7:0] io_isValidNext,
  output [7:0] io_canIssue,
  output [7:0] io_flushed,
  input        io_update_0_enable,
  input  [7:0] io_update_0_addr,
  input        io_update_0_data_scheduled,
  input        io_update_0_data_srcState_0,
  input        io_update_0_data_srcState_1,
  input        io_update_0_data_srcState_2,
  input        io_update_0_data_midState,
  input  [5:0] io_update_0_data_psrc_0,
  input  [5:0] io_update_0_data_psrc_1,
  input  [5:0] io_update_0_data_psrc_2,
  input  [1:0] io_update_0_data_srcType_0,
  input  [1:0] io_update_0_data_srcType_1,
  input  [1:0] io_update_0_data_srcType_2,
  input        io_update_0_data_robIdx_flag,
  input  [4:0] io_update_0_data_robIdx_value,
  input        io_update_0_data_isFirstIssue,
  input        io_wakeup_0_valid,
  input        io_wakeup_0_bits_ctrl_fpWen,
  input  [5:0] io_wakeup_0_bits_pdest,
  input        io_wakeup_1_valid,
  input        io_wakeup_1_bits_ctrl_fpWen,
  input  [5:0] io_wakeup_1_bits_pdest,
  input        io_wakeup_2_valid,
  input        io_wakeup_2_bits_ctrl_fpWen,
  input  [5:0] io_wakeup_2_bits_pdest,
  input        io_wakeup_3_valid,
  input        io_wakeup_3_bits_ctrl_fpWen,
  input  [5:0] io_wakeup_3_bits_pdest,
  input        io_wakeup_4_valid,
  input        io_wakeup_4_bits_ctrl_fpWen,
  input  [5:0] io_wakeup_4_bits_pdest,
  output [4:0] io_wakeupMatch_0_0,
  output [4:0] io_wakeupMatch_0_1,
  output [4:0] io_wakeupMatch_0_2,
  output [4:0] io_wakeupMatch_1_0,
  output [4:0] io_wakeupMatch_1_1,
  output [4:0] io_wakeupMatch_1_2,
  output [4:0] io_wakeupMatch_2_0,
  output [4:0] io_wakeupMatch_2_1,
  output [4:0] io_wakeupMatch_2_2,
  output [4:0] io_wakeupMatch_3_0,
  output [4:0] io_wakeupMatch_3_1,
  output [4:0] io_wakeupMatch_3_2,
  output [4:0] io_wakeupMatch_4_0,
  output [4:0] io_wakeupMatch_4_1,
  output [4:0] io_wakeupMatch_4_2,
  output [4:0] io_wakeupMatch_5_0,
  output [4:0] io_wakeupMatch_5_1,
  output [4:0] io_wakeupMatch_5_2,
  output [4:0] io_wakeupMatch_6_0,
  output [4:0] io_wakeupMatch_6_1,
  output [4:0] io_wakeupMatch_6_2,
  output [4:0] io_wakeupMatch_7_0,
  output [4:0] io_wakeupMatch_7_1,
  output [4:0] io_wakeupMatch_7_2,
  input        io_issueGranted_0_valid,
  input  [7:0] io_issueGranted_0_bits,
  input        io_issueGranted_1_valid,
  input  [7:0] io_issueGranted_1_bits,
  input        io_issueGranted_2_valid,
  input  [7:0] io_issueGranted_2_bits,
  output       io_isFirstIssue_1,
  output       io_isFirstIssue_2,
  output       io_allSrcReady_1,
  output       io_allSrcReady_2,
  input  [7:0] io_updateMidState,
  input        io_deqResp_0_valid,
  input  [7:0] io_deqResp_0_bits_rsMask,
  input        io_deqResp_0_bits_success,
  input        io_deqResp_1_valid,
  input  [7:0] io_deqResp_1_bits_rsMask,
  input        io_deqResp_1_bits_success,
  input        io_deqResp_2_valid,
  input  [7:0] io_deqResp_2_bits_rsMask,
  input        io_deqResp_2_bits_success
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
  reg  statusArrayValid_0; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_1; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_2; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_3; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_4; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_5; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_6; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_7; // @[StatusArray.scala 105:33]
  reg  statusArray_0_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_0_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_0_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_0_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_0_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_0_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_0_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_1_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_1_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_1_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_1_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_1_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_2_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_2_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_2_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_2_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_2_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_3_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_3_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_3_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_3_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_3_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_4_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_4_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_4_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_4_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_4_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_5_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_5_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_5_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_5_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_5_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_6_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_6_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_6_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_6_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_6_isFirstIssue; // @[StatusArray.scala 107:24]
  reg  statusArray_7_scheduled; // @[StatusArray.scala 107:24]
  reg [3:0] statusArray_7_credit; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_1; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_2; // @[StatusArray.scala 107:24]
  reg  statusArray_7_midState; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_2; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_2; // @[StatusArray.scala 107:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_7_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_7_isFirstIssue; // @[StatusArray.scala 107:24]
  wire  readyVec_midStateReady = statusArray_0_srcState_2 & statusArray_0_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_1 = statusArray_1_srcState_2 & statusArray_1_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_2 = statusArray_2_srcState_2 & statusArray_2_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_3 = statusArray_3_srcState_2 & statusArray_3_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_4 = statusArray_4_srcState_2 & statusArray_4_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_5 = statusArray_5_srcState_2 & statusArray_5_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_6 = statusArray_6_srcState_2 & statusArray_6_midState; // @[StatusArray.scala 60:63]
  wire  readyVec_midStateReady_7 = statusArray_7_srcState_2 & statusArray_7_midState; // @[StatusArray.scala 60:63]
  wire  _hasIssued_T_5 = io_issueGranted_2_valid & io_issueGranted_2_bits[0]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_3 = io_issueGranted_1_valid & io_issueGranted_1_bits[0]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_1 = io_issueGranted_0_valid & io_issueGranted_0_bits[0]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_6 = {_hasIssued_T_5,_hasIssued_T_3,_hasIssued_T_1}; // @[StatusArray.scala 178:83]
  wire  hasIssued = |_hasIssued_T_6; // @[StatusArray.scala 178:90]
  wire  updateVec_0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 148:57]
  wire  updateValid_0 = |updateVec_0; // @[StatusArray.scala 151:23]
  wire  mask__2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T = {mask__2,mask__1,mask__0}; // @[StatusArray.scala 140:25]
  wire  deqValid = |_deqValid_T; // @[StatusArray.scala 140:32]
  wire  xs_0 = mask__0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1 = mask__1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2 = mask__2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_207 = xs_0 | (xs_1 | xs_2); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted = deqValid & ~_T_207; // @[StatusArray.scala 179:38]
  wire  noCredit = statusArrayValid_0 & statusArray_0_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled = statusArray_0_scheduled & ~deqNotGranted & ~noCredit; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_0_scheduled_T = updateValid_0 ? 1'h0 : keepScheduled; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_0_scheduled = hasIssued | _statusArrayNext_0_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond = ~statusArrayNext_0_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_0_psrc_2 = updateValid_0 ? io_update_0_data_psrc_2 : statusArray_0_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_14 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_14 = pdestMatch_14 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_2 = io_wakeup_4_valid & stateCond_14; // @[StatusArray.scala 129:16]
  wire  pdestMatch_13 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_13 = pdestMatch_13 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_2 = io_wakeup_3_valid & stateCond_13; // @[StatusArray.scala 129:16]
  wire  pdestMatch_12 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_12 = pdestMatch_12 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_2 = io_wakeup_2_valid & stateCond_12; // @[StatusArray.scala 129:16]
  wire  pdestMatch_11 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_11 = pdestMatch_11 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_2 = io_wakeup_1_valid & stateCond_11; // @[StatusArray.scala 129:16]
  wire  pdestMatch_10 = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_10 = pdestMatch_10 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_2 = io_wakeup_0_valid & stateCond_10; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_2 = {stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,stateMatchVec_1_2,
    stateMatchVec_0_2}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2 = |_stateMatch_T_2; // @[StatusArray.scala 131:52]
  wire  _T_431 = updateValid_0 ? io_update_0_data_srcState_2 : statusArray_0_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_2 = stateWakeupEn_2 | _T_431; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_0_midState = ~updateValid_0 & (io_updateMidState[0] | statusArray_0_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady = statusArrayNext_0_srcState_2 & statusArrayNext_0_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_0_psrc_1 = updateValid_0 ? io_update_0_data_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_9 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_9 = pdestMatch_9 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_1 = io_wakeup_4_valid & stateCond_9; // @[StatusArray.scala 129:16]
  wire  pdestMatch_8 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_8 = pdestMatch_8 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_1 = io_wakeup_3_valid & stateCond_8; // @[StatusArray.scala 129:16]
  wire  pdestMatch_7 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_7 = pdestMatch_7 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_1 = io_wakeup_2_valid & stateCond_7; // @[StatusArray.scala 129:16]
  wire  pdestMatch_6 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_6 = pdestMatch_6 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_1 = io_wakeup_1_valid & stateCond_6; // @[StatusArray.scala 129:16]
  wire  pdestMatch_5 = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_5 = pdestMatch_5 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_1 = io_wakeup_0_valid & stateCond_5; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_1 = {stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,stateMatchVec_1_1,
    stateMatchVec_0_1}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 131:52]
  wire  _T_429 = updateValid_0 ? io_update_0_data_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_429; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_0_psrc_0 = updateValid_0 ? io_update_0_data_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_4 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_4 = pdestMatch_4 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4 = io_wakeup_4_valid & stateCond_4; // @[StatusArray.scala 129:16]
  wire  pdestMatch_3 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_3 = pdestMatch_3 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3 = io_wakeup_3_valid & stateCond_3; // @[StatusArray.scala 129:16]
  wire  pdestMatch_2 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_2 = pdestMatch_2 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2 = io_wakeup_2_valid & stateCond_2; // @[StatusArray.scala 129:16]
  wire  pdestMatch_1 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_1 = pdestMatch_1 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1 = io_wakeup_1_valid & stateCond_1; // @[StatusArray.scala 129:16]
  wire  pdestMatch = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond = pdestMatch & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0 = io_wakeup_0_valid & stateCond; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T = {stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 131:52]
  wire  _T_427 = updateValid_0 ? io_update_0_data_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_427; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_0 = &_readyVecNext_T & readyVecNext_scheduledCond | readyVecNext_midStateReady; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_12 = io_issueGranted_2_valid & io_issueGranted_2_bits[1]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_10 = io_issueGranted_1_valid & io_issueGranted_1_bits[1]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_8 = io_issueGranted_0_valid & io_issueGranted_0_bits[1]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_13 = {_hasIssued_T_12,_hasIssued_T_10,_hasIssued_T_8}; // @[StatusArray.scala 178:83]
  wire  hasIssued_1 = |_hasIssued_T_13; // @[StatusArray.scala 178:90]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 148:57]
  wire  updateValid_1 = |updateVec_1_0; // @[StatusArray.scala 151:23]
  wire  mask_1_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_1 = {mask_1_2,mask_1_1,mask_1_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_1 = |_deqValid_T_1; // @[StatusArray.scala 140:32]
  wire  xs_0_1 = mask_1_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_1 = mask_1_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_1 = mask_1_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_230 = xs_0_1 | (xs_1_1 | xs_2_1); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_1 = deqValid_1 & ~_T_230; // @[StatusArray.scala 179:38]
  wire  noCredit_1 = statusArrayValid_1 & statusArray_1_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_1 = statusArray_1_scheduled & ~deqNotGranted_1 & ~noCredit_1; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_1_scheduled_T = updateValid_1 ? 1'h0 : keepScheduled_1; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_1_scheduled = hasIssued_1 | _statusArrayNext_1_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_1 = ~statusArrayNext_1_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_1_psrc_2 = updateValid_1 ? io_update_0_data_psrc_2 : statusArray_1_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_29 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_29 = pdestMatch_29 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_5 = io_wakeup_4_valid & stateCond_29; // @[StatusArray.scala 129:16]
  wire  pdestMatch_28 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_28 = pdestMatch_28 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_5 = io_wakeup_3_valid & stateCond_28; // @[StatusArray.scala 129:16]
  wire  pdestMatch_27 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_27 = pdestMatch_27 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_5 = io_wakeup_2_valid & stateCond_27; // @[StatusArray.scala 129:16]
  wire  pdestMatch_26 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_26 = pdestMatch_26 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_5 = io_wakeup_1_valid & stateCond_26; // @[StatusArray.scala 129:16]
  wire  pdestMatch_25 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_25 = pdestMatch_25 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_5 = io_wakeup_0_valid & stateCond_25; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_5 = {stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,stateMatchVec_1_5,
    stateMatchVec_0_5}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_1 = |_stateMatch_T_5; // @[StatusArray.scala 131:52]
  wire  _T_483 = updateValid_1 ? io_update_0_data_srcState_2 : statusArray_1_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_2 = stateWakeupEn_2_1 | _T_483; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_1_midState = ~updateValid_1 & (io_updateMidState[1] | statusArray_1_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_1 = statusArrayNext_1_srcState_2 & statusArrayNext_1_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_1_psrc_1 = updateValid_1 ? io_update_0_data_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_24 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_24 = pdestMatch_24 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_4 = io_wakeup_4_valid & stateCond_24; // @[StatusArray.scala 129:16]
  wire  pdestMatch_23 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_23 = pdestMatch_23 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_4 = io_wakeup_3_valid & stateCond_23; // @[StatusArray.scala 129:16]
  wire  pdestMatch_22 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_22 = pdestMatch_22 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_4 = io_wakeup_2_valid & stateCond_22; // @[StatusArray.scala 129:16]
  wire  pdestMatch_21 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_21 = pdestMatch_21 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_4 = io_wakeup_1_valid & stateCond_21; // @[StatusArray.scala 129:16]
  wire  pdestMatch_20 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_20 = pdestMatch_20 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_4 = io_wakeup_0_valid & stateCond_20; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_4 = {stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,stateMatchVec_1_4,
    stateMatchVec_0_4}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_4; // @[StatusArray.scala 131:52]
  wire  _T_481 = updateValid_1 ? io_update_0_data_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_481; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_1_psrc_0 = updateValid_1 ? io_update_0_data_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_19 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_19 = pdestMatch_19 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_3 = io_wakeup_4_valid & stateCond_19; // @[StatusArray.scala 129:16]
  wire  pdestMatch_18 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_18 = pdestMatch_18 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_3 = io_wakeup_3_valid & stateCond_18; // @[StatusArray.scala 129:16]
  wire  pdestMatch_17 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_17 = pdestMatch_17 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_3 = io_wakeup_2_valid & stateCond_17; // @[StatusArray.scala 129:16]
  wire  pdestMatch_16 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_16 = pdestMatch_16 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_3 = io_wakeup_1_valid & stateCond_16; // @[StatusArray.scala 129:16]
  wire  pdestMatch_15 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_15 = pdestMatch_15 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_3 = io_wakeup_0_valid & stateCond_15; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_3 = {stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,stateMatchVec_1_3,
    stateMatchVec_0_3}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_3; // @[StatusArray.scala 131:52]
  wire  _T_479 = updateValid_1 ? io_update_0_data_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_479; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5 & readyVecNext_scheduledCond_1 | readyVecNext_midStateReady_1; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_19 = io_issueGranted_2_valid & io_issueGranted_2_bits[2]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_17 = io_issueGranted_1_valid & io_issueGranted_1_bits[2]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_15 = io_issueGranted_0_valid & io_issueGranted_0_bits[2]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_20 = {_hasIssued_T_19,_hasIssued_T_17,_hasIssued_T_15}; // @[StatusArray.scala 178:83]
  wire  hasIssued_2 = |_hasIssued_T_20; // @[StatusArray.scala 178:90]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 148:57]
  wire  updateValid_2 = |updateVec_2_0; // @[StatusArray.scala 151:23]
  wire  mask_2_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_2 = {mask_2_2,mask_2_1,mask_2_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_2 = |_deqValid_T_2; // @[StatusArray.scala 140:32]
  wire  xs_0_2 = mask_2_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_2 = mask_2_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_2 = mask_2_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_253 = xs_0_2 | (xs_1_2 | xs_2_2); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_2 = deqValid_2 & ~_T_253; // @[StatusArray.scala 179:38]
  wire  noCredit_2 = statusArrayValid_2 & statusArray_2_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_2 = statusArray_2_scheduled & ~deqNotGranted_2 & ~noCredit_2; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_2_scheduled_T = updateValid_2 ? 1'h0 : keepScheduled_2; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_2_scheduled = hasIssued_2 | _statusArrayNext_2_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_2 = ~statusArrayNext_2_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_2_psrc_2 = updateValid_2 ? io_update_0_data_psrc_2 : statusArray_2_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_44 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_44 = pdestMatch_44 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_8 = io_wakeup_4_valid & stateCond_44; // @[StatusArray.scala 129:16]
  wire  pdestMatch_43 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_43 = pdestMatch_43 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_8 = io_wakeup_3_valid & stateCond_43; // @[StatusArray.scala 129:16]
  wire  pdestMatch_42 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_42 = pdestMatch_42 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_8 = io_wakeup_2_valid & stateCond_42; // @[StatusArray.scala 129:16]
  wire  pdestMatch_41 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_41 = pdestMatch_41 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_8 = io_wakeup_1_valid & stateCond_41; // @[StatusArray.scala 129:16]
  wire  pdestMatch_40 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_40 = pdestMatch_40 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_8 = io_wakeup_0_valid & stateCond_40; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_8 = {stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,stateMatchVec_1_8,
    stateMatchVec_0_8}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_2 = |_stateMatch_T_8; // @[StatusArray.scala 131:52]
  wire  _T_535 = updateValid_2 ? io_update_0_data_srcState_2 : statusArray_2_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_2 = stateWakeupEn_2_2 | _T_535; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_2_midState = ~updateValid_2 & (io_updateMidState[2] | statusArray_2_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_2 = statusArrayNext_2_srcState_2 & statusArrayNext_2_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_2_psrc_1 = updateValid_2 ? io_update_0_data_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_39 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_39 = pdestMatch_39 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_7 = io_wakeup_4_valid & stateCond_39; // @[StatusArray.scala 129:16]
  wire  pdestMatch_38 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_38 = pdestMatch_38 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_7 = io_wakeup_3_valid & stateCond_38; // @[StatusArray.scala 129:16]
  wire  pdestMatch_37 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_37 = pdestMatch_37 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_7 = io_wakeup_2_valid & stateCond_37; // @[StatusArray.scala 129:16]
  wire  pdestMatch_36 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_36 = pdestMatch_36 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_7 = io_wakeup_1_valid & stateCond_36; // @[StatusArray.scala 129:16]
  wire  pdestMatch_35 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_35 = pdestMatch_35 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_7 = io_wakeup_0_valid & stateCond_35; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_7 = {stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,stateMatchVec_1_7,
    stateMatchVec_0_7}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_7; // @[StatusArray.scala 131:52]
  wire  _T_533 = updateValid_2 ? io_update_0_data_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_533; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_2_psrc_0 = updateValid_2 ? io_update_0_data_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_34 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_34 = pdestMatch_34 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_6 = io_wakeup_4_valid & stateCond_34; // @[StatusArray.scala 129:16]
  wire  pdestMatch_33 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_33 = pdestMatch_33 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_6 = io_wakeup_3_valid & stateCond_33; // @[StatusArray.scala 129:16]
  wire  pdestMatch_32 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_32 = pdestMatch_32 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_6 = io_wakeup_2_valid & stateCond_32; // @[StatusArray.scala 129:16]
  wire  pdestMatch_31 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_31 = pdestMatch_31 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_6 = io_wakeup_1_valid & stateCond_31; // @[StatusArray.scala 129:16]
  wire  pdestMatch_30 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_30 = pdestMatch_30 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_6 = io_wakeup_0_valid & stateCond_30; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_6 = {stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,stateMatchVec_1_6,
    stateMatchVec_0_6}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_6; // @[StatusArray.scala 131:52]
  wire  _T_531 = updateValid_2 ? io_update_0_data_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_531; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10 & readyVecNext_scheduledCond_2 | readyVecNext_midStateReady_2; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_26 = io_issueGranted_2_valid & io_issueGranted_2_bits[3]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_24 = io_issueGranted_1_valid & io_issueGranted_1_bits[3]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_22 = io_issueGranted_0_valid & io_issueGranted_0_bits[3]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_27 = {_hasIssued_T_26,_hasIssued_T_24,_hasIssued_T_22}; // @[StatusArray.scala 178:83]
  wire  hasIssued_3 = |_hasIssued_T_27; // @[StatusArray.scala 178:90]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 148:57]
  wire  updateValid_3 = |updateVec_3_0; // @[StatusArray.scala 151:23]
  wire  mask_3_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_3 = {mask_3_2,mask_3_1,mask_3_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_3 = |_deqValid_T_3; // @[StatusArray.scala 140:32]
  wire  xs_0_3 = mask_3_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_3 = mask_3_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_3 = mask_3_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_276 = xs_0_3 | (xs_1_3 | xs_2_3); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_3 = deqValid_3 & ~_T_276; // @[StatusArray.scala 179:38]
  wire  noCredit_3 = statusArrayValid_3 & statusArray_3_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_3 = statusArray_3_scheduled & ~deqNotGranted_3 & ~noCredit_3; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_3_scheduled_T = updateValid_3 ? 1'h0 : keepScheduled_3; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_3_scheduled = hasIssued_3 | _statusArrayNext_3_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_3 = ~statusArrayNext_3_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_3_psrc_2 = updateValid_3 ? io_update_0_data_psrc_2 : statusArray_3_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_59 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_59 = pdestMatch_59 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_11 = io_wakeup_4_valid & stateCond_59; // @[StatusArray.scala 129:16]
  wire  pdestMatch_58 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_58 = pdestMatch_58 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_11 = io_wakeup_3_valid & stateCond_58; // @[StatusArray.scala 129:16]
  wire  pdestMatch_57 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_57 = pdestMatch_57 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_11 = io_wakeup_2_valid & stateCond_57; // @[StatusArray.scala 129:16]
  wire  pdestMatch_56 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_56 = pdestMatch_56 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_11 = io_wakeup_1_valid & stateCond_56; // @[StatusArray.scala 129:16]
  wire  pdestMatch_55 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_55 = pdestMatch_55 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_11 = io_wakeup_0_valid & stateCond_55; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_11 = {stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,stateMatchVec_1_11,
    stateMatchVec_0_11}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_3 = |_stateMatch_T_11; // @[StatusArray.scala 131:52]
  wire  _T_587 = updateValid_3 ? io_update_0_data_srcState_2 : statusArray_3_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_2 = stateWakeupEn_2_3 | _T_587; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_3_midState = ~updateValid_3 & (io_updateMidState[3] | statusArray_3_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_3 = statusArrayNext_3_srcState_2 & statusArrayNext_3_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_3_psrc_1 = updateValid_3 ? io_update_0_data_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_54 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_54 = pdestMatch_54 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_10 = io_wakeup_4_valid & stateCond_54; // @[StatusArray.scala 129:16]
  wire  pdestMatch_53 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_53 = pdestMatch_53 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_10 = io_wakeup_3_valid & stateCond_53; // @[StatusArray.scala 129:16]
  wire  pdestMatch_52 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_52 = pdestMatch_52 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_10 = io_wakeup_2_valid & stateCond_52; // @[StatusArray.scala 129:16]
  wire  pdestMatch_51 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_51 = pdestMatch_51 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_10 = io_wakeup_1_valid & stateCond_51; // @[StatusArray.scala 129:16]
  wire  pdestMatch_50 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_50 = pdestMatch_50 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_10 = io_wakeup_0_valid & stateCond_50; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_10 = {stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,stateMatchVec_1_10,
    stateMatchVec_0_10}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_10; // @[StatusArray.scala 131:52]
  wire  _T_585 = updateValid_3 ? io_update_0_data_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_585; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_3_psrc_0 = updateValid_3 ? io_update_0_data_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_49 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_49 = pdestMatch_49 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_9 = io_wakeup_4_valid & stateCond_49; // @[StatusArray.scala 129:16]
  wire  pdestMatch_48 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_48 = pdestMatch_48 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_9 = io_wakeup_3_valid & stateCond_48; // @[StatusArray.scala 129:16]
  wire  pdestMatch_47 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_47 = pdestMatch_47 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_9 = io_wakeup_2_valid & stateCond_47; // @[StatusArray.scala 129:16]
  wire  pdestMatch_46 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_46 = pdestMatch_46 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_9 = io_wakeup_1_valid & stateCond_46; // @[StatusArray.scala 129:16]
  wire  pdestMatch_45 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_45 = pdestMatch_45 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_9 = io_wakeup_0_valid & stateCond_45; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_9 = {stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,stateMatchVec_1_9,
    stateMatchVec_0_9}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_9; // @[StatusArray.scala 131:52]
  wire  _T_583 = updateValid_3 ? io_update_0_data_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_583; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15 & readyVecNext_scheduledCond_3 | readyVecNext_midStateReady_3; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_33 = io_issueGranted_2_valid & io_issueGranted_2_bits[4]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_31 = io_issueGranted_1_valid & io_issueGranted_1_bits[4]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_29 = io_issueGranted_0_valid & io_issueGranted_0_bits[4]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_34 = {_hasIssued_T_33,_hasIssued_T_31,_hasIssued_T_29}; // @[StatusArray.scala 178:83]
  wire  hasIssued_4 = |_hasIssued_T_34; // @[StatusArray.scala 178:90]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 148:57]
  wire  updateValid_4 = |updateVec_4_0; // @[StatusArray.scala 151:23]
  wire  mask_4_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_4 = {mask_4_2,mask_4_1,mask_4_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_4 = |_deqValid_T_4; // @[StatusArray.scala 140:32]
  wire  xs_0_4 = mask_4_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_4 = mask_4_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_4 = mask_4_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_299 = xs_0_4 | (xs_1_4 | xs_2_4); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_4 = deqValid_4 & ~_T_299; // @[StatusArray.scala 179:38]
  wire  noCredit_4 = statusArrayValid_4 & statusArray_4_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_4 = statusArray_4_scheduled & ~deqNotGranted_4 & ~noCredit_4; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_4_scheduled_T = updateValid_4 ? 1'h0 : keepScheduled_4; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_4_scheduled = hasIssued_4 | _statusArrayNext_4_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_4 = ~statusArrayNext_4_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_4_psrc_2 = updateValid_4 ? io_update_0_data_psrc_2 : statusArray_4_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_74 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_74 = pdestMatch_74 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_14 = io_wakeup_4_valid & stateCond_74; // @[StatusArray.scala 129:16]
  wire  pdestMatch_73 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_73 = pdestMatch_73 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_14 = io_wakeup_3_valid & stateCond_73; // @[StatusArray.scala 129:16]
  wire  pdestMatch_72 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_72 = pdestMatch_72 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_14 = io_wakeup_2_valid & stateCond_72; // @[StatusArray.scala 129:16]
  wire  pdestMatch_71 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_71 = pdestMatch_71 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_14 = io_wakeup_1_valid & stateCond_71; // @[StatusArray.scala 129:16]
  wire  pdestMatch_70 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_70 = pdestMatch_70 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_14 = io_wakeup_0_valid & stateCond_70; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_14 = {stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,stateMatchVec_1_14,
    stateMatchVec_0_14}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_4 = |_stateMatch_T_14; // @[StatusArray.scala 131:52]
  wire  _T_639 = updateValid_4 ? io_update_0_data_srcState_2 : statusArray_4_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_2 = stateWakeupEn_2_4 | _T_639; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_4_midState = ~updateValid_4 & (io_updateMidState[4] | statusArray_4_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_4 = statusArrayNext_4_srcState_2 & statusArrayNext_4_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_4_psrc_1 = updateValid_4 ? io_update_0_data_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_69 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_69 = pdestMatch_69 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_13 = io_wakeup_4_valid & stateCond_69; // @[StatusArray.scala 129:16]
  wire  pdestMatch_68 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_68 = pdestMatch_68 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_13 = io_wakeup_3_valid & stateCond_68; // @[StatusArray.scala 129:16]
  wire  pdestMatch_67 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_67 = pdestMatch_67 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_13 = io_wakeup_2_valid & stateCond_67; // @[StatusArray.scala 129:16]
  wire  pdestMatch_66 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_66 = pdestMatch_66 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_13 = io_wakeup_1_valid & stateCond_66; // @[StatusArray.scala 129:16]
  wire  pdestMatch_65 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_65 = pdestMatch_65 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_13 = io_wakeup_0_valid & stateCond_65; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_13 = {stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,stateMatchVec_1_13,
    stateMatchVec_0_13}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_13; // @[StatusArray.scala 131:52]
  wire  _T_637 = updateValid_4 ? io_update_0_data_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_637; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_4_psrc_0 = updateValid_4 ? io_update_0_data_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_64 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_64 = pdestMatch_64 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_12 = io_wakeup_4_valid & stateCond_64; // @[StatusArray.scala 129:16]
  wire  pdestMatch_63 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_63 = pdestMatch_63 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_12 = io_wakeup_3_valid & stateCond_63; // @[StatusArray.scala 129:16]
  wire  pdestMatch_62 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_62 = pdestMatch_62 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_12 = io_wakeup_2_valid & stateCond_62; // @[StatusArray.scala 129:16]
  wire  pdestMatch_61 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_61 = pdestMatch_61 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_12 = io_wakeup_1_valid & stateCond_61; // @[StatusArray.scala 129:16]
  wire  pdestMatch_60 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_60 = pdestMatch_60 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_12 = io_wakeup_0_valid & stateCond_60; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_12 = {stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,stateMatchVec_1_12,
    stateMatchVec_0_12}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_12; // @[StatusArray.scala 131:52]
  wire  _T_635 = updateValid_4 ? io_update_0_data_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_635; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20 & readyVecNext_scheduledCond_4 | readyVecNext_midStateReady_4; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_40 = io_issueGranted_2_valid & io_issueGranted_2_bits[5]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_38 = io_issueGranted_1_valid & io_issueGranted_1_bits[5]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_36 = io_issueGranted_0_valid & io_issueGranted_0_bits[5]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_41 = {_hasIssued_T_40,_hasIssued_T_38,_hasIssued_T_36}; // @[StatusArray.scala 178:83]
  wire  hasIssued_5 = |_hasIssued_T_41; // @[StatusArray.scala 178:90]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 148:57]
  wire  updateValid_5 = |updateVec_5_0; // @[StatusArray.scala 151:23]
  wire  mask_5_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_5 = {mask_5_2,mask_5_1,mask_5_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_5 = |_deqValid_T_5; // @[StatusArray.scala 140:32]
  wire  xs_0_5 = mask_5_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_5 = mask_5_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_5 = mask_5_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_322 = xs_0_5 | (xs_1_5 | xs_2_5); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_5 = deqValid_5 & ~_T_322; // @[StatusArray.scala 179:38]
  wire  noCredit_5 = statusArrayValid_5 & statusArray_5_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_5 = statusArray_5_scheduled & ~deqNotGranted_5 & ~noCredit_5; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_5_scheduled_T = updateValid_5 ? 1'h0 : keepScheduled_5; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_5_scheduled = hasIssued_5 | _statusArrayNext_5_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_5 = ~statusArrayNext_5_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_5_psrc_2 = updateValid_5 ? io_update_0_data_psrc_2 : statusArray_5_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_89 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_89 = pdestMatch_89 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_17 = io_wakeup_4_valid & stateCond_89; // @[StatusArray.scala 129:16]
  wire  pdestMatch_88 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_88 = pdestMatch_88 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_17 = io_wakeup_3_valid & stateCond_88; // @[StatusArray.scala 129:16]
  wire  pdestMatch_87 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_87 = pdestMatch_87 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_17 = io_wakeup_2_valid & stateCond_87; // @[StatusArray.scala 129:16]
  wire  pdestMatch_86 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_86 = pdestMatch_86 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_17 = io_wakeup_1_valid & stateCond_86; // @[StatusArray.scala 129:16]
  wire  pdestMatch_85 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_85 = pdestMatch_85 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_17 = io_wakeup_0_valid & stateCond_85; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_17 = {stateMatchVec_4_17,stateMatchVec_3_17,stateMatchVec_2_17,stateMatchVec_1_17,
    stateMatchVec_0_17}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_5 = |_stateMatch_T_17; // @[StatusArray.scala 131:52]
  wire  _T_691 = updateValid_5 ? io_update_0_data_srcState_2 : statusArray_5_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_2 = stateWakeupEn_2_5 | _T_691; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_5_midState = ~updateValid_5 & (io_updateMidState[5] | statusArray_5_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_5 = statusArrayNext_5_srcState_2 & statusArrayNext_5_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_5_psrc_1 = updateValid_5 ? io_update_0_data_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_84 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_84 = pdestMatch_84 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_16 = io_wakeup_4_valid & stateCond_84; // @[StatusArray.scala 129:16]
  wire  pdestMatch_83 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_83 = pdestMatch_83 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_16 = io_wakeup_3_valid & stateCond_83; // @[StatusArray.scala 129:16]
  wire  pdestMatch_82 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_82 = pdestMatch_82 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_16 = io_wakeup_2_valid & stateCond_82; // @[StatusArray.scala 129:16]
  wire  pdestMatch_81 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_81 = pdestMatch_81 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_16 = io_wakeup_1_valid & stateCond_81; // @[StatusArray.scala 129:16]
  wire  pdestMatch_80 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_80 = pdestMatch_80 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_16 = io_wakeup_0_valid & stateCond_80; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_16 = {stateMatchVec_4_16,stateMatchVec_3_16,stateMatchVec_2_16,stateMatchVec_1_16,
    stateMatchVec_0_16}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_16; // @[StatusArray.scala 131:52]
  wire  _T_689 = updateValid_5 ? io_update_0_data_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_689; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_5_psrc_0 = updateValid_5 ? io_update_0_data_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_79 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_79 = pdestMatch_79 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_15 = io_wakeup_4_valid & stateCond_79; // @[StatusArray.scala 129:16]
  wire  pdestMatch_78 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_78 = pdestMatch_78 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_15 = io_wakeup_3_valid & stateCond_78; // @[StatusArray.scala 129:16]
  wire  pdestMatch_77 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_77 = pdestMatch_77 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_15 = io_wakeup_2_valid & stateCond_77; // @[StatusArray.scala 129:16]
  wire  pdestMatch_76 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_76 = pdestMatch_76 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_15 = io_wakeup_1_valid & stateCond_76; // @[StatusArray.scala 129:16]
  wire  pdestMatch_75 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_75 = pdestMatch_75 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_15 = io_wakeup_0_valid & stateCond_75; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_15 = {stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,stateMatchVec_1_15,
    stateMatchVec_0_15}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_15; // @[StatusArray.scala 131:52]
  wire  _T_687 = updateValid_5 ? io_update_0_data_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_687; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25 & readyVecNext_scheduledCond_5 | readyVecNext_midStateReady_5; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_47 = io_issueGranted_2_valid & io_issueGranted_2_bits[6]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_45 = io_issueGranted_1_valid & io_issueGranted_1_bits[6]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_43 = io_issueGranted_0_valid & io_issueGranted_0_bits[6]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_48 = {_hasIssued_T_47,_hasIssued_T_45,_hasIssued_T_43}; // @[StatusArray.scala 178:83]
  wire  hasIssued_6 = |_hasIssued_T_48; // @[StatusArray.scala 178:90]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 148:57]
  wire  updateValid_6 = |updateVec_6_0; // @[StatusArray.scala 151:23]
  wire  mask_6_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_6 = {mask_6_2,mask_6_1,mask_6_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_6 = |_deqValid_T_6; // @[StatusArray.scala 140:32]
  wire  xs_0_6 = mask_6_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_6 = mask_6_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_6 = mask_6_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_345 = xs_0_6 | (xs_1_6 | xs_2_6); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_6 = deqValid_6 & ~_T_345; // @[StatusArray.scala 179:38]
  wire  noCredit_6 = statusArrayValid_6 & statusArray_6_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_6 = statusArray_6_scheduled & ~deqNotGranted_6 & ~noCredit_6; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_6_scheduled_T = updateValid_6 ? 1'h0 : keepScheduled_6; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_6_scheduled = hasIssued_6 | _statusArrayNext_6_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_6 = ~statusArrayNext_6_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_6_psrc_2 = updateValid_6 ? io_update_0_data_psrc_2 : statusArray_6_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_104 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_104 = pdestMatch_104 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_20 = io_wakeup_4_valid & stateCond_104; // @[StatusArray.scala 129:16]
  wire  pdestMatch_103 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_103 = pdestMatch_103 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_20 = io_wakeup_3_valid & stateCond_103; // @[StatusArray.scala 129:16]
  wire  pdestMatch_102 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_102 = pdestMatch_102 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_20 = io_wakeup_2_valid & stateCond_102; // @[StatusArray.scala 129:16]
  wire  pdestMatch_101 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_101 = pdestMatch_101 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_20 = io_wakeup_1_valid & stateCond_101; // @[StatusArray.scala 129:16]
  wire  pdestMatch_100 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_100 = pdestMatch_100 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_20 = io_wakeup_0_valid & stateCond_100; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_20 = {stateMatchVec_4_20,stateMatchVec_3_20,stateMatchVec_2_20,stateMatchVec_1_20,
    stateMatchVec_0_20}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_6 = |_stateMatch_T_20; // @[StatusArray.scala 131:52]
  wire  _T_743 = updateValid_6 ? io_update_0_data_srcState_2 : statusArray_6_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_2 = stateWakeupEn_2_6 | _T_743; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_6_midState = ~updateValid_6 & (io_updateMidState[6] | statusArray_6_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_6 = statusArrayNext_6_srcState_2 & statusArrayNext_6_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_6_psrc_1 = updateValid_6 ? io_update_0_data_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_99 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_99 = pdestMatch_99 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_19 = io_wakeup_4_valid & stateCond_99; // @[StatusArray.scala 129:16]
  wire  pdestMatch_98 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_98 = pdestMatch_98 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_19 = io_wakeup_3_valid & stateCond_98; // @[StatusArray.scala 129:16]
  wire  pdestMatch_97 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_97 = pdestMatch_97 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_19 = io_wakeup_2_valid & stateCond_97; // @[StatusArray.scala 129:16]
  wire  pdestMatch_96 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_96 = pdestMatch_96 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_19 = io_wakeup_1_valid & stateCond_96; // @[StatusArray.scala 129:16]
  wire  pdestMatch_95 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_95 = pdestMatch_95 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_19 = io_wakeup_0_valid & stateCond_95; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_19 = {stateMatchVec_4_19,stateMatchVec_3_19,stateMatchVec_2_19,stateMatchVec_1_19,
    stateMatchVec_0_19}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_19; // @[StatusArray.scala 131:52]
  wire  _T_741 = updateValid_6 ? io_update_0_data_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_741; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_6_psrc_0 = updateValid_6 ? io_update_0_data_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_94 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_94 = pdestMatch_94 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_18 = io_wakeup_4_valid & stateCond_94; // @[StatusArray.scala 129:16]
  wire  pdestMatch_93 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_93 = pdestMatch_93 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_18 = io_wakeup_3_valid & stateCond_93; // @[StatusArray.scala 129:16]
  wire  pdestMatch_92 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_92 = pdestMatch_92 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_18 = io_wakeup_2_valid & stateCond_92; // @[StatusArray.scala 129:16]
  wire  pdestMatch_91 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_91 = pdestMatch_91 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_18 = io_wakeup_1_valid & stateCond_91; // @[StatusArray.scala 129:16]
  wire  pdestMatch_90 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_90 = pdestMatch_90 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_18 = io_wakeup_0_valid & stateCond_90; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_18 = {stateMatchVec_4_18,stateMatchVec_3_18,stateMatchVec_2_18,stateMatchVec_1_18,
    stateMatchVec_0_18}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_18; // @[StatusArray.scala 131:52]
  wire  _T_739 = updateValid_6 ? io_update_0_data_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_739; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30 & readyVecNext_scheduledCond_6 | readyVecNext_midStateReady_6; // @[StatusArray.scala 61:60]
  wire  _hasIssued_T_54 = io_issueGranted_2_valid & io_issueGranted_2_bits[7]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_52 = io_issueGranted_1_valid & io_issueGranted_1_bits[7]; // @[StatusArray.scala 178:66]
  wire  _hasIssued_T_50 = io_issueGranted_0_valid & io_issueGranted_0_bits[7]; // @[StatusArray.scala 178:66]
  wire [2:0] _hasIssued_T_55 = {_hasIssued_T_54,_hasIssued_T_52,_hasIssued_T_50}; // @[StatusArray.scala 178:83]
  wire  hasIssued_7 = |_hasIssued_T_55; // @[StatusArray.scala 178:90]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 148:57]
  wire  updateValid_7 = |updateVec_7_0; // @[StatusArray.scala 151:23]
  wire  mask_7_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire [2:0] _deqValid_T_7 = {mask_7_2,mask_7_1,mask_7_0}; // @[StatusArray.scala 140:25]
  wire  deqValid_7 = |_deqValid_T_7; // @[StatusArray.scala 140:32]
  wire  xs_0_7 = mask_7_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_7 = mask_7_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_7 = mask_7_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_368 = xs_0_7 | (xs_1_7 | xs_2_7); // @[ParallelMux.scala 36:53]
  wire  deqNotGranted_7 = deqValid_7 & ~_T_368; // @[StatusArray.scala 179:38]
  wire  noCredit_7 = statusArrayValid_7 & statusArray_7_credit == 4'h1; // @[StatusArray.scala 184:34]
  wire  keepScheduled_7 = statusArray_7_scheduled & ~deqNotGranted_7 & ~noCredit_7; // @[StatusArray.scala 185:62]
  wire  _statusArrayNext_7_scheduled_T = updateValid_7 ? 1'h0 : keepScheduled_7; // @[StatusArray.scala 187:47]
  wire  statusArrayNext_7_scheduled = hasIssued_7 | _statusArrayNext_7_scheduled_T; // @[StatusArray.scala 187:41]
  wire  readyVecNext_scheduledCond_7 = ~statusArrayNext_7_scheduled; // @[StatusArray.scala 57:54]
  wire [5:0] statusArrayNext_7_psrc_2 = updateValid_7 ? io_update_0_data_psrc_2 : statusArray_7_psrc_2; // @[StatusArray.scala 243:27]
  wire  pdestMatch_119 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_119 = pdestMatch_119 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_23 = io_wakeup_4_valid & stateCond_119; // @[StatusArray.scala 129:16]
  wire  pdestMatch_118 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_118 = pdestMatch_118 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_23 = io_wakeup_3_valid & stateCond_118; // @[StatusArray.scala 129:16]
  wire  pdestMatch_117 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_117 = pdestMatch_117 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_23 = io_wakeup_2_valid & stateCond_117; // @[StatusArray.scala 129:16]
  wire  pdestMatch_116 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_116 = pdestMatch_116 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_23 = io_wakeup_1_valid & stateCond_116; // @[StatusArray.scala 129:16]
  wire  pdestMatch_115 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_2; // @[Bundle.scala 266:30]
  wire  stateCond_115 = pdestMatch_115 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_23 = io_wakeup_0_valid & stateCond_115; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_23 = {stateMatchVec_4_23,stateMatchVec_3_23,stateMatchVec_2_23,stateMatchVec_1_23,
    stateMatchVec_0_23}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_2_7 = |_stateMatch_T_23; // @[StatusArray.scala 131:52]
  wire  _T_795 = updateValid_7 ? io_update_0_data_srcState_2 : statusArray_7_srcState_2; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_2 = stateWakeupEn_2_7 | _T_795; // @[StatusArray.scala 236:50]
  wire  statusArrayNext_7_midState = ~updateValid_7 & (io_updateMidState[7] | statusArray_7_midState); // @[StatusArray.scala 240:44]
  wire  readyVecNext_midStateReady_7 = statusArrayNext_7_srcState_2 & statusArrayNext_7_midState; // @[StatusArray.scala 60:63]
  wire [5:0] statusArrayNext_7_psrc_1 = updateValid_7 ? io_update_0_data_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_114 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_114 = pdestMatch_114 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_22 = io_wakeup_4_valid & stateCond_114; // @[StatusArray.scala 129:16]
  wire  pdestMatch_113 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_113 = pdestMatch_113 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_22 = io_wakeup_3_valid & stateCond_113; // @[StatusArray.scala 129:16]
  wire  pdestMatch_112 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_112 = pdestMatch_112 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_22 = io_wakeup_2_valid & stateCond_112; // @[StatusArray.scala 129:16]
  wire  pdestMatch_111 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_111 = pdestMatch_111 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_22 = io_wakeup_1_valid & stateCond_111; // @[StatusArray.scala 129:16]
  wire  pdestMatch_110 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_110 = pdestMatch_110 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_22 = io_wakeup_0_valid & stateCond_110; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_22 = {stateMatchVec_4_22,stateMatchVec_3_22,stateMatchVec_2_22,stateMatchVec_1_22,
    stateMatchVec_0_22}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_22; // @[StatusArray.scala 131:52]
  wire  _T_793 = updateValid_7 ? io_update_0_data_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_793; // @[StatusArray.scala 236:50]
  wire [5:0] statusArrayNext_7_psrc_0 = updateValid_7 ? io_update_0_data_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_109 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_109 = pdestMatch_109 & io_wakeup_4_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_21 = io_wakeup_4_valid & stateCond_109; // @[StatusArray.scala 129:16]
  wire  pdestMatch_108 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_108 = pdestMatch_108 & io_wakeup_3_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_21 = io_wakeup_3_valid & stateCond_108; // @[StatusArray.scala 129:16]
  wire  pdestMatch_107 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_107 = pdestMatch_107 & io_wakeup_2_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_21 = io_wakeup_2_valid & stateCond_107; // @[StatusArray.scala 129:16]
  wire  pdestMatch_106 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_106 = pdestMatch_106 & io_wakeup_1_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_21 = io_wakeup_1_valid & stateCond_106; // @[StatusArray.scala 129:16]
  wire  pdestMatch_105 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_105 = pdestMatch_105 & io_wakeup_0_bits_ctrl_fpWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_21 = io_wakeup_0_valid & stateCond_105; // @[StatusArray.scala 129:16]
  wire [4:0] _stateMatch_T_21 = {stateMatchVec_4_21,stateMatchVec_3_21,stateMatchVec_2_21,stateMatchVec_1_21,
    stateMatchVec_0_21}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_21; // @[StatusArray.scala 131:52]
  wire  _T_791 = updateValid_7 ? io_update_0_data_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_791; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35 & readyVecNext_scheduledCond_7 | readyVecNext_midStateReady_7; // @[StatusArray.scala 61:60]
  wire  realValid = updateValid_0 | statusArrayValid_0; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_0_robIdx_flag = updateValid_0 ? io_update_0_data_robIdx_flag : statusArray_0_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_0_robIdx_value = updateValid_0 ? io_update_0_data_robIdx_value : statusArray_0_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_1 = {statusArrayNext_0_robIdx_flag,statusArrayNext_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag = statusArrayNext_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare = statusArrayNext_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 143:20]
  wire  _flushedVec_0_T_1 = deqValid & _T_207; // @[StatusArray.scala 166:64]
  wire  flushedVec_0 = realValid & isFlushed | deqValid & _T_207; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_0 = realValid & ~(isFlushed | _flushedVec_0_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_2 = statusArray_0_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? io_update_0_data_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond = pdestMatch & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0 = io_wakeup_0_valid & dataCond; // @[StatusArray.scala 129:39]
  wire  dataCond_1 = pdestMatch_1 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1 = io_wakeup_1_valid & dataCond_1; // @[StatusArray.scala 129:39]
  wire  dataCond_2 = pdestMatch_2 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2 = io_wakeup_2_valid & dataCond_2; // @[StatusArray.scala 129:39]
  wire  dataCond_3 = pdestMatch_3 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3 = io_wakeup_3_valid & dataCond_3; // @[StatusArray.scala 129:39]
  wire  dataCond_4 = pdestMatch_4 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4 = io_wakeup_4_valid & dataCond_4; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0 = {dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? io_update_0_data_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_5 = pdestMatch_5 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_1 = io_wakeup_0_valid & dataCond_5; // @[StatusArray.scala 129:39]
  wire  dataCond_6 = pdestMatch_6 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_1 = io_wakeup_1_valid & dataCond_6; // @[StatusArray.scala 129:39]
  wire  dataCond_7 = pdestMatch_7 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_1 = io_wakeup_2_valid & dataCond_7; // @[StatusArray.scala 129:39]
  wire  dataCond_8 = pdestMatch_8 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_1 = io_wakeup_3_valid & dataCond_8; // @[StatusArray.scala 129:39]
  wire  dataCond_9 = pdestMatch_9 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_1 = io_wakeup_4_valid & dataCond_9; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1 = {dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_0_srcType_2 = updateValid_0 ? io_update_0_data_srcType_2 : statusArray_0_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_10 = pdestMatch_10 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_2 = io_wakeup_0_valid & dataCond_10; // @[StatusArray.scala 129:39]
  wire  dataCond_11 = pdestMatch_11 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_2 = io_wakeup_1_valid & dataCond_11; // @[StatusArray.scala 129:39]
  wire  dataCond_12 = pdestMatch_12 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_2 = io_wakeup_2_valid & dataCond_12; // @[StatusArray.scala 129:39]
  wire  dataCond_13 = pdestMatch_13 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_2 = io_wakeup_3_valid & dataCond_13; // @[StatusArray.scala 129:39]
  wire  dataCond_14 = pdestMatch_14 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_0_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_2 = io_wakeup_4_valid & dataCond_14; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2 = {dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_435 = {statusArray_0_srcState_2,statusArray_0_srcState_1,statusArray_0_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_1 = updateValid_1 | statusArrayValid_1; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_1_robIdx_flag = updateValid_1 ? io_update_0_data_robIdx_flag : statusArray_1_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_1_robIdx_value = updateValid_1 ? io_update_0_data_robIdx_value : statusArray_1_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_5 = {statusArrayNext_1_robIdx_flag,statusArrayNext_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_1 = statusArrayNext_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_1 = statusArrayNext_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_1 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 143:20]
  wire  _flushedVec_1_T_1 = deqValid_1 & _T_230; // @[StatusArray.scala 166:64]
  wire  flushedVec_1 = realValid_1 & isFlushed_1 | deqValid_1 & _T_230; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_1 = realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_5 = statusArray_1_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? io_update_0_data_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_15 = pdestMatch_15 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_3 = io_wakeup_0_valid & dataCond_15; // @[StatusArray.scala 129:39]
  wire  dataCond_16 = pdestMatch_16 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_3 = io_wakeup_1_valid & dataCond_16; // @[StatusArray.scala 129:39]
  wire  dataCond_17 = pdestMatch_17 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_3 = io_wakeup_2_valid & dataCond_17; // @[StatusArray.scala 129:39]
  wire  dataCond_18 = pdestMatch_18 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_3 = io_wakeup_3_valid & dataCond_18; // @[StatusArray.scala 129:39]
  wire  dataCond_19 = pdestMatch_19 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_3 = io_wakeup_4_valid & dataCond_19; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_1 = {dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? io_update_0_data_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_20 = pdestMatch_20 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_4 = io_wakeup_0_valid & dataCond_20; // @[StatusArray.scala 129:39]
  wire  dataCond_21 = pdestMatch_21 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_4 = io_wakeup_1_valid & dataCond_21; // @[StatusArray.scala 129:39]
  wire  dataCond_22 = pdestMatch_22 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_4 = io_wakeup_2_valid & dataCond_22; // @[StatusArray.scala 129:39]
  wire  dataCond_23 = pdestMatch_23 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_4 = io_wakeup_3_valid & dataCond_23; // @[StatusArray.scala 129:39]
  wire  dataCond_24 = pdestMatch_24 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_4 = io_wakeup_4_valid & dataCond_24; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_1 = {dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_1_srcType_2 = updateValid_1 ? io_update_0_data_srcType_2 : statusArray_1_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_25 = pdestMatch_25 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_5 = io_wakeup_0_valid & dataCond_25; // @[StatusArray.scala 129:39]
  wire  dataCond_26 = pdestMatch_26 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_5 = io_wakeup_1_valid & dataCond_26; // @[StatusArray.scala 129:39]
  wire  dataCond_27 = pdestMatch_27 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_5 = io_wakeup_2_valid & dataCond_27; // @[StatusArray.scala 129:39]
  wire  dataCond_28 = pdestMatch_28 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_5 = io_wakeup_3_valid & dataCond_28; // @[StatusArray.scala 129:39]
  wire  dataCond_29 = pdestMatch_29 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_1_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_5 = io_wakeup_4_valid & dataCond_29; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_1 = {dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5
    }; // @[StatusArray.scala 132:43]
  wire [2:0] _T_487 = {statusArray_1_srcState_2,statusArray_1_srcState_1,statusArray_1_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_2 = updateValid_2 | statusArrayValid_2; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_2_robIdx_flag = updateValid_2 ? io_update_0_data_robIdx_flag : statusArray_2_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_2_robIdx_value = updateValid_2 ? io_update_0_data_robIdx_value : statusArray_2_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_9 = {statusArrayNext_2_robIdx_flag,statusArrayNext_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_2 = statusArrayNext_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_2 = statusArrayNext_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_4 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_2 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_4); // @[Rob.scala 143:20]
  wire  _flushedVec_2_T_1 = deqValid_2 & _T_253; // @[StatusArray.scala 166:64]
  wire  flushedVec_2 = realValid_2 & isFlushed_2 | deqValid_2 & _T_253; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_2 = realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_8 = statusArray_2_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? io_update_0_data_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_30 = pdestMatch_30 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_6 = io_wakeup_0_valid & dataCond_30; // @[StatusArray.scala 129:39]
  wire  dataCond_31 = pdestMatch_31 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_6 = io_wakeup_1_valid & dataCond_31; // @[StatusArray.scala 129:39]
  wire  dataCond_32 = pdestMatch_32 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_6 = io_wakeup_2_valid & dataCond_32; // @[StatusArray.scala 129:39]
  wire  dataCond_33 = pdestMatch_33 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_6 = io_wakeup_3_valid & dataCond_33; // @[StatusArray.scala 129:39]
  wire  dataCond_34 = pdestMatch_34 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_6 = io_wakeup_4_valid & dataCond_34; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_2 = {dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? io_update_0_data_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_35 = pdestMatch_35 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_7 = io_wakeup_0_valid & dataCond_35; // @[StatusArray.scala 129:39]
  wire  dataCond_36 = pdestMatch_36 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_7 = io_wakeup_1_valid & dataCond_36; // @[StatusArray.scala 129:39]
  wire  dataCond_37 = pdestMatch_37 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_7 = io_wakeup_2_valid & dataCond_37; // @[StatusArray.scala 129:39]
  wire  dataCond_38 = pdestMatch_38 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_7 = io_wakeup_3_valid & dataCond_38; // @[StatusArray.scala 129:39]
  wire  dataCond_39 = pdestMatch_39 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_7 = io_wakeup_4_valid & dataCond_39; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_2 = {dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_2_srcType_2 = updateValid_2 ? io_update_0_data_srcType_2 : statusArray_2_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_40 = pdestMatch_40 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_8 = io_wakeup_0_valid & dataCond_40; // @[StatusArray.scala 129:39]
  wire  dataCond_41 = pdestMatch_41 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_8 = io_wakeup_1_valid & dataCond_41; // @[StatusArray.scala 129:39]
  wire  dataCond_42 = pdestMatch_42 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_8 = io_wakeup_2_valid & dataCond_42; // @[StatusArray.scala 129:39]
  wire  dataCond_43 = pdestMatch_43 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_8 = io_wakeup_3_valid & dataCond_43; // @[StatusArray.scala 129:39]
  wire  dataCond_44 = pdestMatch_44 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_2_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_8 = io_wakeup_4_valid & dataCond_44; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_2 = {dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8
    }; // @[StatusArray.scala 132:43]
  wire [2:0] _T_539 = {statusArray_2_srcState_2,statusArray_2_srcState_1,statusArray_2_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_3 = updateValid_3 | statusArrayValid_3; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_3_robIdx_flag = updateValid_3 ? io_update_0_data_robIdx_flag : statusArray_3_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_3_robIdx_value = updateValid_3 ? io_update_0_data_robIdx_value : statusArray_3_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_13 = {statusArrayNext_3_robIdx_flag,statusArrayNext_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_3 = statusArrayNext_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_3 = statusArrayNext_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_3 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_6); // @[Rob.scala 143:20]
  wire  _flushedVec_3_T_1 = deqValid_3 & _T_276; // @[StatusArray.scala 166:64]
  wire  flushedVec_3 = realValid_3 & isFlushed_3 | deqValid_3 & _T_276; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_3 = realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_11 = statusArray_3_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? io_update_0_data_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_45 = pdestMatch_45 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_9 = io_wakeup_0_valid & dataCond_45; // @[StatusArray.scala 129:39]
  wire  dataCond_46 = pdestMatch_46 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_9 = io_wakeup_1_valid & dataCond_46; // @[StatusArray.scala 129:39]
  wire  dataCond_47 = pdestMatch_47 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_9 = io_wakeup_2_valid & dataCond_47; // @[StatusArray.scala 129:39]
  wire  dataCond_48 = pdestMatch_48 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_9 = io_wakeup_3_valid & dataCond_48; // @[StatusArray.scala 129:39]
  wire  dataCond_49 = pdestMatch_49 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_9 = io_wakeup_4_valid & dataCond_49; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_3 = {dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9
    }; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? io_update_0_data_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_50 = pdestMatch_50 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_10 = io_wakeup_0_valid & dataCond_50; // @[StatusArray.scala 129:39]
  wire  dataCond_51 = pdestMatch_51 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_10 = io_wakeup_1_valid & dataCond_51; // @[StatusArray.scala 129:39]
  wire  dataCond_52 = pdestMatch_52 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_10 = io_wakeup_2_valid & dataCond_52; // @[StatusArray.scala 129:39]
  wire  dataCond_53 = pdestMatch_53 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_10 = io_wakeup_3_valid & dataCond_53; // @[StatusArray.scala 129:39]
  wire  dataCond_54 = pdestMatch_54 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_10 = io_wakeup_4_valid & dataCond_54; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_3 = {dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,dataMatchVec_1_10,
    dataMatchVec_0_10}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_3_srcType_2 = updateValid_3 ? io_update_0_data_srcType_2 : statusArray_3_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_55 = pdestMatch_55 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_11 = io_wakeup_0_valid & dataCond_55; // @[StatusArray.scala 129:39]
  wire  dataCond_56 = pdestMatch_56 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_11 = io_wakeup_1_valid & dataCond_56; // @[StatusArray.scala 129:39]
  wire  dataCond_57 = pdestMatch_57 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_11 = io_wakeup_2_valid & dataCond_57; // @[StatusArray.scala 129:39]
  wire  dataCond_58 = pdestMatch_58 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_11 = io_wakeup_3_valid & dataCond_58; // @[StatusArray.scala 129:39]
  wire  dataCond_59 = pdestMatch_59 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_3_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_11 = io_wakeup_4_valid & dataCond_59; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_3 = {dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,dataMatchVec_1_11,
    dataMatchVec_0_11}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_591 = {statusArray_3_srcState_2,statusArray_3_srcState_1,statusArray_3_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_4 = updateValid_4 | statusArrayValid_4; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_4_robIdx_flag = updateValid_4 ? io_update_0_data_robIdx_flag : statusArray_4_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_4_robIdx_value = updateValid_4 ? io_update_0_data_robIdx_value : statusArray_4_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_17 = {statusArrayNext_4_robIdx_flag,statusArrayNext_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_19 = _isFlushed_flushItself_T_17 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_4 = io_redirect_bits_level & _isFlushed_flushItself_T_19; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_4 = statusArrayNext_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_4 = statusArrayNext_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_8 = isFlushed_differentFlag_4 ^ isFlushed_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_4 = io_redirect_valid & (isFlushed_flushItself_4 | _isFlushed_T_8); // @[Rob.scala 143:20]
  wire  _flushedVec_4_T_1 = deqValid_4 & _T_299; // @[StatusArray.scala 166:64]
  wire  flushedVec_4 = realValid_4 & isFlushed_4 | deqValid_4 & _T_299; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_4 = realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_14 = statusArray_4_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? io_update_0_data_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_60 = pdestMatch_60 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_12 = io_wakeup_0_valid & dataCond_60; // @[StatusArray.scala 129:39]
  wire  dataCond_61 = pdestMatch_61 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_12 = io_wakeup_1_valid & dataCond_61; // @[StatusArray.scala 129:39]
  wire  dataCond_62 = pdestMatch_62 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_12 = io_wakeup_2_valid & dataCond_62; // @[StatusArray.scala 129:39]
  wire  dataCond_63 = pdestMatch_63 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_12 = io_wakeup_3_valid & dataCond_63; // @[StatusArray.scala 129:39]
  wire  dataCond_64 = pdestMatch_64 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_12 = io_wakeup_4_valid & dataCond_64; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_4 = {dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,dataMatchVec_1_12,
    dataMatchVec_0_12}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? io_update_0_data_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_65 = pdestMatch_65 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_13 = io_wakeup_0_valid & dataCond_65; // @[StatusArray.scala 129:39]
  wire  dataCond_66 = pdestMatch_66 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_13 = io_wakeup_1_valid & dataCond_66; // @[StatusArray.scala 129:39]
  wire  dataCond_67 = pdestMatch_67 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_13 = io_wakeup_2_valid & dataCond_67; // @[StatusArray.scala 129:39]
  wire  dataCond_68 = pdestMatch_68 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_13 = io_wakeup_3_valid & dataCond_68; // @[StatusArray.scala 129:39]
  wire  dataCond_69 = pdestMatch_69 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_13 = io_wakeup_4_valid & dataCond_69; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_4 = {dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,dataMatchVec_1_13,
    dataMatchVec_0_13}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_4_srcType_2 = updateValid_4 ? io_update_0_data_srcType_2 : statusArray_4_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_70 = pdestMatch_70 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_14 = io_wakeup_0_valid & dataCond_70; // @[StatusArray.scala 129:39]
  wire  dataCond_71 = pdestMatch_71 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_14 = io_wakeup_1_valid & dataCond_71; // @[StatusArray.scala 129:39]
  wire  dataCond_72 = pdestMatch_72 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_14 = io_wakeup_2_valid & dataCond_72; // @[StatusArray.scala 129:39]
  wire  dataCond_73 = pdestMatch_73 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_14 = io_wakeup_3_valid & dataCond_73; // @[StatusArray.scala 129:39]
  wire  dataCond_74 = pdestMatch_74 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_4_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_14 = io_wakeup_4_valid & dataCond_74; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_4 = {dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,dataMatchVec_1_14,
    dataMatchVec_0_14}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_643 = {statusArray_4_srcState_2,statusArray_4_srcState_1,statusArray_4_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_5 = updateValid_5 | statusArrayValid_5; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_5_robIdx_flag = updateValid_5 ? io_update_0_data_robIdx_flag : statusArray_5_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_5_robIdx_value = updateValid_5 ? io_update_0_data_robIdx_value : statusArray_5_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_21 = {statusArrayNext_5_robIdx_flag,statusArrayNext_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_23 = _isFlushed_flushItself_T_21 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_5 = io_redirect_bits_level & _isFlushed_flushItself_T_23; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_5 = statusArrayNext_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_5 = statusArrayNext_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_10 = isFlushed_differentFlag_5 ^ isFlushed_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_5 = io_redirect_valid & (isFlushed_flushItself_5 | _isFlushed_T_10); // @[Rob.scala 143:20]
  wire  _flushedVec_5_T_1 = deqValid_5 & _T_322; // @[StatusArray.scala 166:64]
  wire  flushedVec_5 = realValid_5 & isFlushed_5 | deqValid_5 & _T_322; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_5 = realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_17 = statusArray_5_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? io_update_0_data_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_75 = pdestMatch_75 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_15 = io_wakeup_0_valid & dataCond_75; // @[StatusArray.scala 129:39]
  wire  dataCond_76 = pdestMatch_76 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_15 = io_wakeup_1_valid & dataCond_76; // @[StatusArray.scala 129:39]
  wire  dataCond_77 = pdestMatch_77 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_15 = io_wakeup_2_valid & dataCond_77; // @[StatusArray.scala 129:39]
  wire  dataCond_78 = pdestMatch_78 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_15 = io_wakeup_3_valid & dataCond_78; // @[StatusArray.scala 129:39]
  wire  dataCond_79 = pdestMatch_79 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_15 = io_wakeup_4_valid & dataCond_79; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_5 = {dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,dataMatchVec_1_15,
    dataMatchVec_0_15}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? io_update_0_data_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_80 = pdestMatch_80 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_16 = io_wakeup_0_valid & dataCond_80; // @[StatusArray.scala 129:39]
  wire  dataCond_81 = pdestMatch_81 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_16 = io_wakeup_1_valid & dataCond_81; // @[StatusArray.scala 129:39]
  wire  dataCond_82 = pdestMatch_82 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_16 = io_wakeup_2_valid & dataCond_82; // @[StatusArray.scala 129:39]
  wire  dataCond_83 = pdestMatch_83 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_16 = io_wakeup_3_valid & dataCond_83; // @[StatusArray.scala 129:39]
  wire  dataCond_84 = pdestMatch_84 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_16 = io_wakeup_4_valid & dataCond_84; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_5 = {dataMatchVec_4_16,dataMatchVec_3_16,dataMatchVec_2_16,dataMatchVec_1_16,
    dataMatchVec_0_16}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_5_srcType_2 = updateValid_5 ? io_update_0_data_srcType_2 : statusArray_5_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_85 = pdestMatch_85 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_17 = io_wakeup_0_valid & dataCond_85; // @[StatusArray.scala 129:39]
  wire  dataCond_86 = pdestMatch_86 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_17 = io_wakeup_1_valid & dataCond_86; // @[StatusArray.scala 129:39]
  wire  dataCond_87 = pdestMatch_87 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_17 = io_wakeup_2_valid & dataCond_87; // @[StatusArray.scala 129:39]
  wire  dataCond_88 = pdestMatch_88 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_17 = io_wakeup_3_valid & dataCond_88; // @[StatusArray.scala 129:39]
  wire  dataCond_89 = pdestMatch_89 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_5_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_17 = io_wakeup_4_valid & dataCond_89; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_5 = {dataMatchVec_4_17,dataMatchVec_3_17,dataMatchVec_2_17,dataMatchVec_1_17,
    dataMatchVec_0_17}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_695 = {statusArray_5_srcState_2,statusArray_5_srcState_1,statusArray_5_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_6 = updateValid_6 | statusArrayValid_6; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_6_robIdx_flag = updateValid_6 ? io_update_0_data_robIdx_flag : statusArray_6_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_6_robIdx_value = updateValid_6 ? io_update_0_data_robIdx_value : statusArray_6_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_25 = {statusArrayNext_6_robIdx_flag,statusArrayNext_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_27 = _isFlushed_flushItself_T_25 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_6 = io_redirect_bits_level & _isFlushed_flushItself_T_27; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_6 = statusArrayNext_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_6 = statusArrayNext_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_12 = isFlushed_differentFlag_6 ^ isFlushed_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_6 = io_redirect_valid & (isFlushed_flushItself_6 | _isFlushed_T_12); // @[Rob.scala 143:20]
  wire  _flushedVec_6_T_1 = deqValid_6 & _T_345; // @[StatusArray.scala 166:64]
  wire  flushedVec_6 = realValid_6 & isFlushed_6 | deqValid_6 & _T_345; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_6 = realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_20 = statusArray_6_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? io_update_0_data_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_90 = pdestMatch_90 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_18 = io_wakeup_0_valid & dataCond_90; // @[StatusArray.scala 129:39]
  wire  dataCond_91 = pdestMatch_91 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_18 = io_wakeup_1_valid & dataCond_91; // @[StatusArray.scala 129:39]
  wire  dataCond_92 = pdestMatch_92 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_18 = io_wakeup_2_valid & dataCond_92; // @[StatusArray.scala 129:39]
  wire  dataCond_93 = pdestMatch_93 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_18 = io_wakeup_3_valid & dataCond_93; // @[StatusArray.scala 129:39]
  wire  dataCond_94 = pdestMatch_94 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_18 = io_wakeup_4_valid & dataCond_94; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_6 = {dataMatchVec_4_18,dataMatchVec_3_18,dataMatchVec_2_18,dataMatchVec_1_18,
    dataMatchVec_0_18}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? io_update_0_data_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_95 = pdestMatch_95 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_19 = io_wakeup_0_valid & dataCond_95; // @[StatusArray.scala 129:39]
  wire  dataCond_96 = pdestMatch_96 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_19 = io_wakeup_1_valid & dataCond_96; // @[StatusArray.scala 129:39]
  wire  dataCond_97 = pdestMatch_97 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_19 = io_wakeup_2_valid & dataCond_97; // @[StatusArray.scala 129:39]
  wire  dataCond_98 = pdestMatch_98 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_19 = io_wakeup_3_valid & dataCond_98; // @[StatusArray.scala 129:39]
  wire  dataCond_99 = pdestMatch_99 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_19 = io_wakeup_4_valid & dataCond_99; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_6 = {dataMatchVec_4_19,dataMatchVec_3_19,dataMatchVec_2_19,dataMatchVec_1_19,
    dataMatchVec_0_19}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_6_srcType_2 = updateValid_6 ? io_update_0_data_srcType_2 : statusArray_6_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_100 = pdestMatch_100 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_20 = io_wakeup_0_valid & dataCond_100; // @[StatusArray.scala 129:39]
  wire  dataCond_101 = pdestMatch_101 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_20 = io_wakeup_1_valid & dataCond_101; // @[StatusArray.scala 129:39]
  wire  dataCond_102 = pdestMatch_102 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_20 = io_wakeup_2_valid & dataCond_102; // @[StatusArray.scala 129:39]
  wire  dataCond_103 = pdestMatch_103 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_20 = io_wakeup_3_valid & dataCond_103; // @[StatusArray.scala 129:39]
  wire  dataCond_104 = pdestMatch_104 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_6_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_20 = io_wakeup_4_valid & dataCond_104; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_6 = {dataMatchVec_4_20,dataMatchVec_3_20,dataMatchVec_2_20,dataMatchVec_1_20,
    dataMatchVec_0_20}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_747 = {statusArray_6_srcState_2,statusArray_6_srcState_1,statusArray_6_srcState_0}; // @[StatusArray.scala 70:37]
  wire  realValid_7 = updateValid_7 | statusArrayValid_7; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_7_robIdx_flag = updateValid_7 ? io_update_0_data_robIdx_flag : statusArray_7_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_7_robIdx_value = updateValid_7 ? io_update_0_data_robIdx_value : statusArray_7_robIdx_value
    ; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_29 = {statusArrayNext_7_robIdx_flag,statusArrayNext_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_31 = _isFlushed_flushItself_T_29 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_7 = io_redirect_bits_level & _isFlushed_flushItself_T_31; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_7 = statusArrayNext_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_7 = statusArrayNext_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_14 = isFlushed_differentFlag_7 ^ isFlushed_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_7 = io_redirect_valid & (isFlushed_flushItself_7 | _isFlushed_T_14); // @[Rob.scala 143:20]
  wire  _flushedVec_7_T_1 = deqValid_7 & _T_368; // @[StatusArray.scala 166:64]
  wire  flushedVec_7 = realValid_7 & isFlushed_7 | deqValid_7 & _T_368; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_7 = realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1); // @[StatusArray.scala 168:34]
  wire [3:0] _creditStep_T_23 = statusArray_7_credit - 4'h1; // @[StatusArray.scala 224:61]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? io_update_0_data_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 244:30]
  wire  dataCond_105 = pdestMatch_105 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_21 = io_wakeup_0_valid & dataCond_105; // @[StatusArray.scala 129:39]
  wire  dataCond_106 = pdestMatch_106 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_21 = io_wakeup_1_valid & dataCond_106; // @[StatusArray.scala 129:39]
  wire  dataCond_107 = pdestMatch_107 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_21 = io_wakeup_2_valid & dataCond_107; // @[StatusArray.scala 129:39]
  wire  dataCond_108 = pdestMatch_108 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_21 = io_wakeup_3_valid & dataCond_108; // @[StatusArray.scala 129:39]
  wire  dataCond_109 = pdestMatch_109 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_0[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_21 = io_wakeup_4_valid & dataCond_109; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_0_7 = {dataMatchVec_4_21,dataMatchVec_3_21,dataMatchVec_2_21,dataMatchVec_1_21,
    dataMatchVec_0_21}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? io_update_0_data_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 244:30]
  wire  dataCond_110 = pdestMatch_110 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_22 = io_wakeup_0_valid & dataCond_110; // @[StatusArray.scala 129:39]
  wire  dataCond_111 = pdestMatch_111 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_22 = io_wakeup_1_valid & dataCond_111; // @[StatusArray.scala 129:39]
  wire  dataCond_112 = pdestMatch_112 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_22 = io_wakeup_2_valid & dataCond_112; // @[StatusArray.scala 129:39]
  wire  dataCond_113 = pdestMatch_113 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_22 = io_wakeup_3_valid & dataCond_113; // @[StatusArray.scala 129:39]
  wire  dataCond_114 = pdestMatch_114 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_1[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_22 = io_wakeup_4_valid & dataCond_114; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_1_7 = {dataMatchVec_4_22,dataMatchVec_3_22,dataMatchVec_2_22,dataMatchVec_1_22,
    dataMatchVec_0_22}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_7_srcType_2 = updateValid_7 ? io_update_0_data_srcType_2 : statusArray_7_srcType_2; // @[StatusArray.scala 244:30]
  wire  dataCond_115 = pdestMatch_115 & (io_wakeup_0_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_23 = io_wakeup_0_valid & dataCond_115; // @[StatusArray.scala 129:39]
  wire  dataCond_116 = pdestMatch_116 & (io_wakeup_1_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_23 = io_wakeup_1_valid & dataCond_116; // @[StatusArray.scala 129:39]
  wire  dataCond_117 = pdestMatch_117 & (io_wakeup_2_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_23 = io_wakeup_2_valid & dataCond_117; // @[StatusArray.scala 129:39]
  wire  dataCond_118 = pdestMatch_118 & (io_wakeup_3_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_23 = io_wakeup_3_valid & dataCond_118; // @[StatusArray.scala 129:39]
  wire  dataCond_119 = pdestMatch_119 & (io_wakeup_4_bits_ctrl_fpWen & statusArrayNext_7_srcType_2[1]); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_23 = io_wakeup_4_valid & dataCond_119; // @[StatusArray.scala 129:39]
  wire [4:0] dataWakeupEnVec_2_7 = {dataMatchVec_4_23,dataMatchVec_3_23,dataMatchVec_2_23,dataMatchVec_1_23,
    dataMatchVec_0_23}; // @[StatusArray.scala 132:43]
  wire [2:0] _T_799 = {statusArray_7_srcState_2,statusArray_7_srcState_1,statusArray_7_srcState_0}; // @[StatusArray.scala 70:37]
  wire [3:0] io_isValid_lo = {statusArrayValid_3,statusArrayValid_2,statusArrayValid_1,statusArrayValid_0}; // @[StatusArray.scala 255:34]
  wire [3:0] io_isValid_hi = {statusArrayValid_7,statusArrayValid_6,statusArrayValid_5,statusArrayValid_4}; // @[StatusArray.scala 255:34]
  wire [3:0] io_isValidNext_lo = {statusArrayValidNext_3,statusArrayValidNext_2,statusArrayValidNext_1,
    statusArrayValidNext_0}; // @[StatusArray.scala 256:42]
  wire [3:0] io_isValidNext_hi = {statusArrayValidNext_7,statusArrayValidNext_6,statusArrayValidNext_5,
    statusArrayValidNext_4}; // @[StatusArray.scala 256:42]
  reg  io_canIssue_REG; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_1; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_2; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_3; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_4; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_5; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_6; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_7; // @[StatusArray.scala 257:92]
  wire [3:0] io_canIssue_lo = {io_canIssue_REG_3,io_canIssue_REG_2,io_canIssue_REG_1,io_canIssue_REG}; // @[StatusArray.scala 257:104]
  wire [3:0] io_canIssue_hi = {io_canIssue_REG_7,io_canIssue_REG_6,io_canIssue_REG_5,io_canIssue_REG_4}; // @[StatusArray.scala 257:104]
  wire  _T_871 = &_T_435 | readyVec_midStateReady; // @[StatusArray.scala 66:26]
  wire  _T_874 = &_T_487 | readyVec_midStateReady_1; // @[StatusArray.scala 66:26]
  wire  _T_877 = &_T_539 | readyVec_midStateReady_2; // @[StatusArray.scala 66:26]
  wire  _T_880 = &_T_591 | readyVec_midStateReady_3; // @[StatusArray.scala 66:26]
  wire  _T_883 = &_T_643 | readyVec_midStateReady_4; // @[StatusArray.scala 66:26]
  wire  _T_886 = &_T_695 | readyVec_midStateReady_5; // @[StatusArray.scala 66:26]
  wire  _T_889 = &_T_747 | readyVec_midStateReady_6; // @[StatusArray.scala 66:26]
  wire  _T_892 = &_T_799 | readyVec_midStateReady_7; // @[StatusArray.scala 66:26]
  wire [3:0] io_flushed_lo = {flushedVec_3,flushedVec_2,flushedVec_1,flushedVec_0}; // @[StatusArray.scala 260:28]
  wire [3:0] io_flushed_hi = {flushedVec_7,flushedVec_6,flushedVec_5,flushedVec_4}; // @[StatusArray.scala 260:28]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 255:34]
  assign io_isValidNext = {io_isValidNext_hi,io_isValidNext_lo}; // @[StatusArray.scala 256:42]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 257:104]
  assign io_flushed = {io_flushed_hi,io_flushed_lo}; // @[StatusArray.scala 260:28]
  assign io_wakeupMatch_0_0 = realValid ? dataWakeupEnVec_0 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_0_1 = realValid ? dataWakeupEnVec_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_0_2 = realValid ? dataWakeupEnVec_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_0 = realValid_1 ? dataWakeupEnVec_0_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_1 = realValid_1 ? dataWakeupEnVec_1_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_2 = realValid_1 ? dataWakeupEnVec_2_1 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_0 = realValid_2 ? dataWakeupEnVec_0_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_1 = realValid_2 ? dataWakeupEnVec_1_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_2 = realValid_2 ? dataWakeupEnVec_2_2 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_0 = realValid_3 ? dataWakeupEnVec_0_3 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_1 = realValid_3 ? dataWakeupEnVec_1_3 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_2 = realValid_3 ? dataWakeupEnVec_2_3 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_0 = realValid_4 ? dataWakeupEnVec_0_4 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_1 = realValid_4 ? dataWakeupEnVec_1_4 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_2 = realValid_4 ? dataWakeupEnVec_2_4 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_0 = realValid_5 ? dataWakeupEnVec_0_5 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_1 = realValid_5 ? dataWakeupEnVec_1_5 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_2 = realValid_5 ? dataWakeupEnVec_2_5 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_0 = realValid_6 ? dataWakeupEnVec_0_6 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_1 = realValid_6 ? dataWakeupEnVec_1_6 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_2 = realValid_6 ? dataWakeupEnVec_2_6 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_0 = realValid_7 ? dataWakeupEnVec_0_7 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_1 = realValid_7 ? dataWakeupEnVec_1_7 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_2 = realValid_7 ? dataWakeupEnVec_2_7 : 5'h0; // @[StatusArray.scala 231:55]
  assign io_isFirstIssue_1 = io_issueGranted_1_bits[0] & statusArray_0_isFirstIssue | io_issueGranted_1_bits[1] &
    statusArray_1_isFirstIssue | io_issueGranted_1_bits[2] & statusArray_2_isFirstIssue | io_issueGranted_1_bits[3] &
    statusArray_3_isFirstIssue | io_issueGranted_1_bits[4] & statusArray_4_isFirstIssue | io_issueGranted_1_bits[5] &
    statusArray_5_isFirstIssue | io_issueGranted_1_bits[6] & statusArray_6_isFirstIssue | io_issueGranted_1_bits[7] &
    statusArray_7_isFirstIssue; // @[Mux.scala 27:73]
  assign io_isFirstIssue_2 = io_issueGranted_2_bits[0] & statusArray_0_isFirstIssue | io_issueGranted_2_bits[1] &
    statusArray_1_isFirstIssue | io_issueGranted_2_bits[2] & statusArray_2_isFirstIssue | io_issueGranted_2_bits[3] &
    statusArray_3_isFirstIssue | io_issueGranted_2_bits[4] & statusArray_4_isFirstIssue | io_issueGranted_2_bits[5] &
    statusArray_5_isFirstIssue | io_issueGranted_2_bits[6] & statusArray_6_isFirstIssue | io_issueGranted_2_bits[7] &
    statusArray_7_isFirstIssue; // @[Mux.scala 27:73]
  assign io_allSrcReady_1 = io_issueGranted_1_bits[0] & _T_871 | io_issueGranted_1_bits[1] & _T_874 |
    io_issueGranted_1_bits[2] & _T_877 | io_issueGranted_1_bits[3] & _T_880 | io_issueGranted_1_bits[4] & _T_883 |
    io_issueGranted_1_bits[5] & _T_886 | io_issueGranted_1_bits[6] & _T_889 | io_issueGranted_1_bits[7] & _T_892; // @[Mux.scala 27:73]
  assign io_allSrcReady_2 = io_issueGranted_2_bits[0] & _T_871 | io_issueGranted_2_bits[1] & _T_874 |
    io_issueGranted_2_bits[2] & _T_877 | io_issueGranted_2_bits[3] & _T_880 | io_issueGranted_2_bits[4] & _T_883 |
    io_issueGranted_2_bits[5] & _T_886 | io_issueGranted_2_bits[6] & _T_889 | io_issueGranted_2_bits[7] & _T_892; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    statusArray_0_scheduled <= hasIssued | _statusArrayNext_0_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_0) begin // @[StatusArray.scala 225:29]
      statusArray_0_credit <= 4'h0;
    end else if (statusArray_0_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_0_credit <= _creditStep_T_2;
    end
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_427; // @[StatusArray.scala 236:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_429; // @[StatusArray.scala 236:50]
    statusArray_0_srcState_2 <= stateWakeupEn_2 | _T_431; // @[StatusArray.scala 236:50]
    statusArray_0_midState <= ~updateValid_0 & (io_updateMidState[0] | statusArray_0_midState); // @[StatusArray.scala 240:44]
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued) begin // @[StatusArray.scala 250:35]
      statusArray_0_isFirstIssue <= 1'h0;
    end else begin
      statusArray_0_isFirstIssue <= updateValid_0 | statusArray_0_isFirstIssue;
    end
    statusArray_1_scheduled <= hasIssued_1 | _statusArrayNext_1_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_1) begin // @[StatusArray.scala 225:29]
      statusArray_1_credit <= 4'h0;
    end else if (statusArray_1_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_1_credit <= _creditStep_T_5;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_479; // @[StatusArray.scala 236:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_481; // @[StatusArray.scala 236:50]
    statusArray_1_srcState_2 <= stateWakeupEn_2_1 | _T_483; // @[StatusArray.scala 236:50]
    statusArray_1_midState <= ~updateValid_1 & (io_updateMidState[1] | statusArray_1_midState); // @[StatusArray.scala 240:44]
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_1) begin // @[StatusArray.scala 250:35]
      statusArray_1_isFirstIssue <= 1'h0;
    end else begin
      statusArray_1_isFirstIssue <= updateValid_1 | statusArray_1_isFirstIssue;
    end
    statusArray_2_scheduled <= hasIssued_2 | _statusArrayNext_2_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_2) begin // @[StatusArray.scala 225:29]
      statusArray_2_credit <= 4'h0;
    end else if (statusArray_2_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_2_credit <= _creditStep_T_8;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_531; // @[StatusArray.scala 236:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_533; // @[StatusArray.scala 236:50]
    statusArray_2_srcState_2 <= stateWakeupEn_2_2 | _T_535; // @[StatusArray.scala 236:50]
    statusArray_2_midState <= ~updateValid_2 & (io_updateMidState[2] | statusArray_2_midState); // @[StatusArray.scala 240:44]
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_2) begin // @[StatusArray.scala 250:35]
      statusArray_2_isFirstIssue <= 1'h0;
    end else begin
      statusArray_2_isFirstIssue <= updateValid_2 | statusArray_2_isFirstIssue;
    end
    statusArray_3_scheduled <= hasIssued_3 | _statusArrayNext_3_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_3) begin // @[StatusArray.scala 225:29]
      statusArray_3_credit <= 4'h0;
    end else if (statusArray_3_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_3_credit <= _creditStep_T_11;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_583; // @[StatusArray.scala 236:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_585; // @[StatusArray.scala 236:50]
    statusArray_3_srcState_2 <= stateWakeupEn_2_3 | _T_587; // @[StatusArray.scala 236:50]
    statusArray_3_midState <= ~updateValid_3 & (io_updateMidState[3] | statusArray_3_midState); // @[StatusArray.scala 240:44]
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_3) begin // @[StatusArray.scala 250:35]
      statusArray_3_isFirstIssue <= 1'h0;
    end else begin
      statusArray_3_isFirstIssue <= updateValid_3 | statusArray_3_isFirstIssue;
    end
    statusArray_4_scheduled <= hasIssued_4 | _statusArrayNext_4_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_4) begin // @[StatusArray.scala 225:29]
      statusArray_4_credit <= 4'h0;
    end else if (statusArray_4_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_4_credit <= _creditStep_T_14;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_635; // @[StatusArray.scala 236:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_637; // @[StatusArray.scala 236:50]
    statusArray_4_srcState_2 <= stateWakeupEn_2_4 | _T_639; // @[StatusArray.scala 236:50]
    statusArray_4_midState <= ~updateValid_4 & (io_updateMidState[4] | statusArray_4_midState); // @[StatusArray.scala 240:44]
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_4) begin // @[StatusArray.scala 250:35]
      statusArray_4_isFirstIssue <= 1'h0;
    end else begin
      statusArray_4_isFirstIssue <= updateValid_4 | statusArray_4_isFirstIssue;
    end
    statusArray_5_scheduled <= hasIssued_5 | _statusArrayNext_5_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_5) begin // @[StatusArray.scala 225:29]
      statusArray_5_credit <= 4'h0;
    end else if (statusArray_5_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_5_credit <= _creditStep_T_17;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_687; // @[StatusArray.scala 236:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_689; // @[StatusArray.scala 236:50]
    statusArray_5_srcState_2 <= stateWakeupEn_2_5 | _T_691; // @[StatusArray.scala 236:50]
    statusArray_5_midState <= ~updateValid_5 & (io_updateMidState[5] | statusArray_5_midState); // @[StatusArray.scala 240:44]
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_5) begin // @[StatusArray.scala 250:35]
      statusArray_5_isFirstIssue <= 1'h0;
    end else begin
      statusArray_5_isFirstIssue <= updateValid_5 | statusArray_5_isFirstIssue;
    end
    statusArray_6_scheduled <= hasIssued_6 | _statusArrayNext_6_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_6) begin // @[StatusArray.scala 225:29]
      statusArray_6_credit <= 4'h0;
    end else if (statusArray_6_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_6_credit <= _creditStep_T_20;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_739; // @[StatusArray.scala 236:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_741; // @[StatusArray.scala 236:50]
    statusArray_6_srcState_2 <= stateWakeupEn_2_6 | _T_743; // @[StatusArray.scala 236:50]
    statusArray_6_midState <= ~updateValid_6 & (io_updateMidState[6] | statusArray_6_midState); // @[StatusArray.scala 240:44]
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_6) begin // @[StatusArray.scala 250:35]
      statusArray_6_isFirstIssue <= 1'h0;
    end else begin
      statusArray_6_isFirstIssue <= updateValid_6 | statusArray_6_isFirstIssue;
    end
    statusArray_7_scheduled <= hasIssued_7 | _statusArrayNext_7_scheduled_T; // @[StatusArray.scala 187:41]
    if (updateValid_7) begin // @[StatusArray.scala 225:29]
      statusArray_7_credit <= 4'h0;
    end else if (statusArray_7_credit > 4'h0) begin // @[StatusArray.scala 224:25]
      statusArray_7_credit <= _creditStep_T_23;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_791; // @[StatusArray.scala 236:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_793; // @[StatusArray.scala 236:50]
    statusArray_7_srcState_2 <= stateWakeupEn_2_7 | _T_795; // @[StatusArray.scala 236:50]
    statusArray_7_midState <= ~updateValid_7 & (io_updateMidState[7] | statusArray_7_midState); // @[StatusArray.scala 240:44]
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_0 <= io_update_0_data_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_1 <= io_update_0_data_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_2 <= io_update_0_data_psrc_2;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_0 <= io_update_0_data_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_1 <= io_update_0_data_srcType_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_2 <= io_update_0_data_srcType_2;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_flag <= io_update_0_data_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_value <= io_update_0_data_robIdx_value;
    end
    if (hasIssued_7) begin // @[StatusArray.scala 250:35]
      statusArray_7_isFirstIssue <= 1'h0;
    end else begin
      statusArray_7_isFirstIssue <= updateValid_7 | statusArray_7_isFirstIssue;
    end
    io_canIssue_REG <= statusArrayValidNext_0 & readyVecNext_0; // @[StatusArray.scala 257:95]
    io_canIssue_REG_1 <= statusArrayValidNext_1 & readyVecNext_1; // @[StatusArray.scala 257:95]
    io_canIssue_REG_2 <= statusArrayValidNext_2 & readyVecNext_2; // @[StatusArray.scala 257:95]
    io_canIssue_REG_3 <= statusArrayValidNext_3 & readyVecNext_3; // @[StatusArray.scala 257:95]
    io_canIssue_REG_4 <= statusArrayValidNext_4 & readyVecNext_4; // @[StatusArray.scala 257:95]
    io_canIssue_REG_5 <= statusArrayValidNext_5 & readyVecNext_5; // @[StatusArray.scala 257:95]
    io_canIssue_REG_6 <= statusArrayValidNext_6 & readyVecNext_6; // @[StatusArray.scala 257:95]
    io_canIssue_REG_7 <= statusArrayValidNext_7 & readyVecNext_7; // @[StatusArray.scala 257:95]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_0 <= 1'h0;
    end else begin
      statusArrayValid_0 <= realValid & ~(isFlushed | _flushedVec_0_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_1 <= 1'h0;
    end else begin
      statusArrayValid_1 <= realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_2 <= 1'h0;
    end else begin
      statusArrayValid_2 <= realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_3 <= 1'h0;
    end else begin
      statusArrayValid_3 <= realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_4 <= 1'h0;
    end else begin
      statusArrayValid_4 <= realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_5 <= 1'h0;
    end else begin
      statusArrayValid_5 <= realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_6 <= 1'h0;
    end else begin
      statusArrayValid_6 <= realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_7 <= 1'h0;
    end else begin
      statusArrayValid_7 <= realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1);
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
  statusArrayValid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  statusArrayValid_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  statusArrayValid_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  statusArrayValid_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  statusArrayValid_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  statusArrayValid_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  statusArrayValid_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  statusArrayValid_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  statusArray_0_scheduled = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  statusArray_0_credit = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  statusArray_0_srcState_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArray_0_srcState_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  statusArray_0_midState = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  statusArray_0_psrc_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_0_psrc_2 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_0_srcType_1 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_0_srcType_2 = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_0_isFirstIssue = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_1_scheduled = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_1_credit = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_1_srcState_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_1_srcState_2 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_1_midState = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_1_psrc_1 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_1_psrc_2 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_1_srcType_1 = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_1_srcType_2 = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_1_isFirstIssue = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_2_scheduled = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_2_credit = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_2_srcState_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_2_srcState_2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_2_midState = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_2_psrc_1 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_2_psrc_2 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_47[1:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_2_srcType_1 = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_2_srcType_2 = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_51[4:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_2_isFirstIssue = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_3_scheduled = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_3_credit = _RAND_54[3:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_3_srcState_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_3_srcState_2 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_3_midState = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_3_psrc_1 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_3_psrc_2 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_62[1:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_3_srcType_1 = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_3_srcType_2 = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_66[4:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_3_isFirstIssue = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_4_scheduled = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_4_credit = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_4_srcState_1 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_4_srcState_2 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_4_midState = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_74[5:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_4_psrc_1 = _RAND_75[5:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_4_psrc_2 = _RAND_76[5:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_4_srcType_1 = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_4_srcType_2 = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_81[4:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_4_isFirstIssue = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_5_scheduled = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_5_credit = _RAND_84[3:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_5_srcState_1 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_5_srcState_2 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_5_midState = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_89[5:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_5_psrc_1 = _RAND_90[5:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_5_psrc_2 = _RAND_91[5:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_5_srcType_1 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_5_srcType_2 = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_96[4:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_5_isFirstIssue = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_6_scheduled = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_6_credit = _RAND_99[3:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_6_srcState_1 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_6_srcState_2 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_6_midState = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_104[5:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_6_psrc_1 = _RAND_105[5:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_6_psrc_2 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_6_srcType_1 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_6_srcType_2 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_111[4:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_6_isFirstIssue = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_7_scheduled = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_7_credit = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_7_srcState_1 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_7_srcState_2 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_7_midState = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_7_psrc_1 = _RAND_120[5:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_7_psrc_2 = _RAND_121[5:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_7_srcType_1 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_7_srcType_2 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_126[4:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_7_isFirstIssue = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  io_canIssue_REG = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  io_canIssue_REG_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  io_canIssue_REG_2 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  io_canIssue_REG_3 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  io_canIssue_REG_4 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  io_canIssue_REG_5 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  io_canIssue_REG_6 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  io_canIssue_REG_7 = _RAND_135[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    statusArrayValid_0 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_1 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_2 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_3 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_4 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_5 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_6 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_7 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

