module StatusArray(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [15:0] io_isValid,
  output [15:0] io_isValidNext,
  output [15:0] io_canIssue,
  output [15:0] io_flushed,
  input         io_update_0_enable,
  input  [15:0] io_update_0_addr,
  input         io_update_0_data_srcState_0,
  input         io_update_0_data_srcState_1,
  input  [5:0]  io_update_0_data_psrc_0,
  input  [5:0]  io_update_0_data_psrc_1,
  input  [1:0]  io_update_0_data_srcType_0,
  input  [1:0]  io_update_0_data_srcType_1,
  input         io_update_0_data_robIdx_flag,
  input  [4:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [15:0] io_update_1_addr,
  input         io_update_1_data_srcState_0,
  input         io_update_1_data_srcState_1,
  input  [5:0]  io_update_1_data_psrc_0,
  input  [5:0]  io_update_1_data_psrc_1,
  input  [1:0]  io_update_1_data_srcType_0,
  input  [1:0]  io_update_1_data_srcType_1,
  input         io_update_1_data_robIdx_flag,
  input  [4:0]  io_update_1_data_robIdx_value,
  input         io_wakeup_0_valid,
  input         io_wakeup_0_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_0_bits_pdest,
  input         io_wakeup_1_valid,
  input         io_wakeup_1_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_1_bits_pdest,
  input         io_wakeup_2_valid,
  input         io_wakeup_2_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_2_bits_pdest,
  input         io_wakeup_3_valid,
  input         io_wakeup_3_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_3_bits_pdest,
  input         io_wakeup_4_valid,
  input         io_wakeup_4_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_4_bits_pdest,
  input         io_wakeup_5_valid,
  input         io_wakeup_5_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_5_bits_pdest,
  input         io_wakeup_6_valid,
  input         io_wakeup_6_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_6_bits_pdest,
  input         io_wakeup_7_valid,
  input         io_wakeup_7_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_7_bits_pdest,
  input         io_wakeup_8_valid,
  input         io_wakeup_8_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_8_bits_pdest,
  input         io_wakeup_9_valid,
  input         io_wakeup_9_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_9_bits_pdest,
  output [9:0]  io_wakeupMatch_0_0,
  output [9:0]  io_wakeupMatch_0_1,
  output [9:0]  io_wakeupMatch_1_0,
  output [9:0]  io_wakeupMatch_1_1,
  output [9:0]  io_wakeupMatch_2_0,
  output [9:0]  io_wakeupMatch_2_1,
  output [9:0]  io_wakeupMatch_3_0,
  output [9:0]  io_wakeupMatch_3_1,
  output [9:0]  io_wakeupMatch_4_0,
  output [9:0]  io_wakeupMatch_4_1,
  output [9:0]  io_wakeupMatch_5_0,
  output [9:0]  io_wakeupMatch_5_1,
  output [9:0]  io_wakeupMatch_6_0,
  output [9:0]  io_wakeupMatch_6_1,
  output [9:0]  io_wakeupMatch_7_0,
  output [9:0]  io_wakeupMatch_7_1,
  output [9:0]  io_wakeupMatch_8_0,
  output [9:0]  io_wakeupMatch_8_1,
  output [9:0]  io_wakeupMatch_9_0,
  output [9:0]  io_wakeupMatch_9_1,
  output [9:0]  io_wakeupMatch_10_0,
  output [9:0]  io_wakeupMatch_10_1,
  output [9:0]  io_wakeupMatch_11_0,
  output [9:0]  io_wakeupMatch_11_1,
  output [9:0]  io_wakeupMatch_12_0,
  output [9:0]  io_wakeupMatch_12_1,
  output [9:0]  io_wakeupMatch_13_0,
  output [9:0]  io_wakeupMatch_13_1,
  output [9:0]  io_wakeupMatch_14_0,
  output [9:0]  io_wakeupMatch_14_1,
  output [9:0]  io_wakeupMatch_15_0,
  output [9:0]  io_wakeupMatch_15_1,
  input         io_deqResp_0_valid,
  input  [15:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success,
  input         io_deqResp_1_valid,
  input  [15:0] io_deqResp_1_bits_rsMask,
  input         io_deqResp_1_bits_success,
  input         io_deqResp_2_valid,
  input  [15:0] io_deqResp_2_bits_rsMask,
  input         io_deqResp_2_bits_success,
  input         io_deqResp_3_valid,
  input  [15:0] io_deqResp_3_bits_rsMask,
  input         io_deqResp_3_bits_success,
  input         io_deqResp_4_valid,
  input  [15:0] io_deqResp_4_bits_rsMask,
  input         io_deqResp_4_bits_success
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
`endif // RANDOMIZE_REG_INIT
  reg  statusArrayValid_0; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_1; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_2; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_3; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_4; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_5; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_6; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_7; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_8; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_9; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_10; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_11; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_12; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_13; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_14; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_15; // @[StatusArray.scala 105:33]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_0_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_0_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_1_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_2_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_3_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_4_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_5_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_6_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_7_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_8_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_8_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_8_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_8_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_8_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_9_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_9_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_9_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_9_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_9_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_10_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_10_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_10_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_10_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_10_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_11_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_11_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_11_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_11_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_11_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_12_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_12_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_12_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_12_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_12_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_13_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_13_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_13_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_13_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_13_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_14_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_14_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_14_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_14_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_14_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 107:24]
  reg  statusArray_15_srcState_1; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_15_psrc_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_15_psrc_1; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_15_srcType_1; // @[StatusArray.scala 107:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_15_robIdx_value; // @[StatusArray.scala 107:24]
  wire  updateVec__1 = io_update_1_enable & io_update_1_addr[0]; // @[StatusArray.scala 148:57]
  wire  updateVec__0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_395 = {updateVec__1,updateVec__0}; // @[StatusArray.scala 151:16]
  wire  updateValid_0 = |_T_395; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_42 = updateVec__0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_43 = updateVec__1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_0_psrc_1 = _updateStatus_T_42 | _updateStatus_T_43; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_0_psrc_1 = updateValid_0 ? updateVal_0_psrc_1 : statusArray_0_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_19 = io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_19 = pdestMatch_19 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_1 = io_wakeup_9_valid & stateCond_19; // @[StatusArray.scala 129:16]
  wire  pdestMatch_18 = io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_18 = pdestMatch_18 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_1 = io_wakeup_8_valid & stateCond_18; // @[StatusArray.scala 129:16]
  wire  pdestMatch_17 = io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_17 = pdestMatch_17 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_1 = io_wakeup_7_valid & stateCond_17; // @[StatusArray.scala 129:16]
  wire  pdestMatch_16 = io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_16 = pdestMatch_16 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_1 = io_wakeup_6_valid & stateCond_16; // @[StatusArray.scala 129:16]
  wire  pdestMatch_15 = io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_15 = pdestMatch_15 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_1 = io_wakeup_5_valid & stateCond_15; // @[StatusArray.scala 129:16]
  wire  pdestMatch_14 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_14 = pdestMatch_14 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_1 = io_wakeup_4_valid & stateCond_14; // @[StatusArray.scala 129:16]
  wire  pdestMatch_13 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_13 = pdestMatch_13 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_1 = io_wakeup_3_valid & stateCond_13; // @[StatusArray.scala 129:16]
  wire  pdestMatch_12 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_12 = pdestMatch_12 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_1 = io_wakeup_2_valid & stateCond_12; // @[StatusArray.scala 129:16]
  wire  pdestMatch_11 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_11 = pdestMatch_11 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_1 = io_wakeup_1_valid & stateCond_11; // @[StatusArray.scala 129:16]
  wire  pdestMatch_10 = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_10 = pdestMatch_10 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_1 = io_wakeup_0_valid & stateCond_10; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_1 = {stateMatchVec_9_1,stateMatchVec_8_1,stateMatchVec_7_1,stateMatchVec_6_1,
    stateMatchVec_5_1,stateMatchVec_4_1,stateMatchVec_3_1,stateMatchVec_2_1,stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1 = |_stateMatch_T_1; // @[StatusArray.scala 131:52]
  wire  updateVal_0_srcState_1 = updateVec__0 & io_update_0_data_srcState_1 | updateVec__1 & io_update_1_data_srcState_1
    ; // @[Mux.scala 27:73]
  wire  _T_1166 = updateValid_0 ? updateVal_0_srcState_1 : statusArray_0_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_1 = stateWakeupEn_1 | _T_1166; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_39 = updateVec__0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_40 = updateVec__1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_0_psrc_0 = _updateStatus_T_39 | _updateStatus_T_40; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_9 = io_wakeup_9_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_9 = pdestMatch_9 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9 = io_wakeup_9_valid & stateCond_9; // @[StatusArray.scala 129:16]
  wire  pdestMatch_8 = io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_8 = pdestMatch_8 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8 = io_wakeup_8_valid & stateCond_8; // @[StatusArray.scala 129:16]
  wire  pdestMatch_7 = io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_7 = pdestMatch_7 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7 = io_wakeup_7_valid & stateCond_7; // @[StatusArray.scala 129:16]
  wire  pdestMatch_6 = io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_6 = pdestMatch_6 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6 = io_wakeup_6_valid & stateCond_6; // @[StatusArray.scala 129:16]
  wire  pdestMatch_5 = io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_5 = pdestMatch_5 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5 = io_wakeup_5_valid & stateCond_5; // @[StatusArray.scala 129:16]
  wire  pdestMatch_4 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_4 = pdestMatch_4 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4 = io_wakeup_4_valid & stateCond_4; // @[StatusArray.scala 129:16]
  wire  pdestMatch_3 = io_wakeup_3_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_3 = pdestMatch_3 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3 = io_wakeup_3_valid & stateCond_3; // @[StatusArray.scala 129:16]
  wire  pdestMatch_2 = io_wakeup_2_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_2 = pdestMatch_2 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2 = io_wakeup_2_valid & stateCond_2; // @[StatusArray.scala 129:16]
  wire  pdestMatch_1 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_1 = pdestMatch_1 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1 = io_wakeup_1_valid & stateCond_1; // @[StatusArray.scala 129:16]
  wire  pdestMatch = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond = pdestMatch & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0 = io_wakeup_0_valid & stateCond; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T = {stateMatchVec_9,stateMatchVec_8,stateMatchVec_7,stateMatchVec_6,stateMatchVec_5,
    stateMatchVec_4,stateMatchVec_3,stateMatchVec_2,stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 131:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_1164 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_1164; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T = {statusArrayNext_0_srcState_1,statusArrayNext_0_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_0 = &_readyVecNext_T; // @[StatusArray.scala 61:38]
  wire  updateVec_1_1 = io_update_1_enable & io_update_1_addr[1]; // @[StatusArray.scala 148:57]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_399 = {updateVec_1_1,updateVec_1_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_1 = |_T_399; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_105 = updateVec_1_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_106 = updateVec_1_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_1_psrc_1 = _updateStatus_T_105 | _updateStatus_T_106; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_1_psrc_1 = updateValid_1 ? updateVal_1_psrc_1 : statusArray_1_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_39 = io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_39 = pdestMatch_39 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_3 = io_wakeup_9_valid & stateCond_39; // @[StatusArray.scala 129:16]
  wire  pdestMatch_38 = io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_38 = pdestMatch_38 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_3 = io_wakeup_8_valid & stateCond_38; // @[StatusArray.scala 129:16]
  wire  pdestMatch_37 = io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_37 = pdestMatch_37 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_3 = io_wakeup_7_valid & stateCond_37; // @[StatusArray.scala 129:16]
  wire  pdestMatch_36 = io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_36 = pdestMatch_36 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_3 = io_wakeup_6_valid & stateCond_36; // @[StatusArray.scala 129:16]
  wire  pdestMatch_35 = io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_35 = pdestMatch_35 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_3 = io_wakeup_5_valid & stateCond_35; // @[StatusArray.scala 129:16]
  wire  pdestMatch_34 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_34 = pdestMatch_34 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_3 = io_wakeup_4_valid & stateCond_34; // @[StatusArray.scala 129:16]
  wire  pdestMatch_33 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_33 = pdestMatch_33 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_3 = io_wakeup_3_valid & stateCond_33; // @[StatusArray.scala 129:16]
  wire  pdestMatch_32 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_32 = pdestMatch_32 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_3 = io_wakeup_2_valid & stateCond_32; // @[StatusArray.scala 129:16]
  wire  pdestMatch_31 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_31 = pdestMatch_31 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_3 = io_wakeup_1_valid & stateCond_31; // @[StatusArray.scala 129:16]
  wire  pdestMatch_30 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_30 = pdestMatch_30 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_3 = io_wakeup_0_valid & stateCond_30; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_3 = {stateMatchVec_9_3,stateMatchVec_8_3,stateMatchVec_7_3,stateMatchVec_6_3,
    stateMatchVec_5_3,stateMatchVec_4_3,stateMatchVec_3_3,stateMatchVec_2_3,stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_1 = |_stateMatch_T_3; // @[StatusArray.scala 131:52]
  wire  updateVal_1_srcState_1 = updateVec_1_0 & io_update_0_data_srcState_1 | updateVec_1_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1225 = updateValid_1 ? updateVal_1_srcState_1 : statusArray_1_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_1 = stateWakeupEn_1_1 | _T_1225; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_102 = updateVec_1_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_103 = updateVec_1_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_1_psrc_0 = _updateStatus_T_102 | _updateStatus_T_103; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_29 = io_wakeup_9_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_29 = pdestMatch_29 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_2 = io_wakeup_9_valid & stateCond_29; // @[StatusArray.scala 129:16]
  wire  pdestMatch_28 = io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_28 = pdestMatch_28 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_2 = io_wakeup_8_valid & stateCond_28; // @[StatusArray.scala 129:16]
  wire  pdestMatch_27 = io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_27 = pdestMatch_27 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_2 = io_wakeup_7_valid & stateCond_27; // @[StatusArray.scala 129:16]
  wire  pdestMatch_26 = io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_26 = pdestMatch_26 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_2 = io_wakeup_6_valid & stateCond_26; // @[StatusArray.scala 129:16]
  wire  pdestMatch_25 = io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_25 = pdestMatch_25 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_2 = io_wakeup_5_valid & stateCond_25; // @[StatusArray.scala 129:16]
  wire  pdestMatch_24 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_24 = pdestMatch_24 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_2 = io_wakeup_4_valid & stateCond_24; // @[StatusArray.scala 129:16]
  wire  pdestMatch_23 = io_wakeup_3_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_23 = pdestMatch_23 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_2 = io_wakeup_3_valid & stateCond_23; // @[StatusArray.scala 129:16]
  wire  pdestMatch_22 = io_wakeup_2_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_22 = pdestMatch_22 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_2 = io_wakeup_2_valid & stateCond_22; // @[StatusArray.scala 129:16]
  wire  pdestMatch_21 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_21 = pdestMatch_21 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_2 = io_wakeup_1_valid & stateCond_21; // @[StatusArray.scala 129:16]
  wire  pdestMatch_20 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_20 = pdestMatch_20 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_2 = io_wakeup_0_valid & stateCond_20; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_2 = {stateMatchVec_9_2,stateMatchVec_8_2,stateMatchVec_7_2,stateMatchVec_6_2,
    stateMatchVec_5_2,stateMatchVec_4_2,stateMatchVec_3_2,stateMatchVec_2_2,stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_2; // @[StatusArray.scala 131:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1223 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1223; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_5 = {statusArrayNext_1_srcState_1,statusArrayNext_1_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_1 = &_readyVecNext_T_5; // @[StatusArray.scala 61:38]
  wire  updateVec_2_1 = io_update_1_enable & io_update_1_addr[2]; // @[StatusArray.scala 148:57]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_403 = {updateVec_2_1,updateVec_2_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_2 = |_T_403; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_168 = updateVec_2_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_169 = updateVec_2_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_2_psrc_1 = _updateStatus_T_168 | _updateStatus_T_169; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_2_psrc_1 = updateValid_2 ? updateVal_2_psrc_1 : statusArray_2_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_59 = io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_59 = pdestMatch_59 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_5 = io_wakeup_9_valid & stateCond_59; // @[StatusArray.scala 129:16]
  wire  pdestMatch_58 = io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_58 = pdestMatch_58 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_5 = io_wakeup_8_valid & stateCond_58; // @[StatusArray.scala 129:16]
  wire  pdestMatch_57 = io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_57 = pdestMatch_57 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_5 = io_wakeup_7_valid & stateCond_57; // @[StatusArray.scala 129:16]
  wire  pdestMatch_56 = io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_56 = pdestMatch_56 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_5 = io_wakeup_6_valid & stateCond_56; // @[StatusArray.scala 129:16]
  wire  pdestMatch_55 = io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_55 = pdestMatch_55 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_5 = io_wakeup_5_valid & stateCond_55; // @[StatusArray.scala 129:16]
  wire  pdestMatch_54 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_54 = pdestMatch_54 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_5 = io_wakeup_4_valid & stateCond_54; // @[StatusArray.scala 129:16]
  wire  pdestMatch_53 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_53 = pdestMatch_53 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_5 = io_wakeup_3_valid & stateCond_53; // @[StatusArray.scala 129:16]
  wire  pdestMatch_52 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_52 = pdestMatch_52 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_5 = io_wakeup_2_valid & stateCond_52; // @[StatusArray.scala 129:16]
  wire  pdestMatch_51 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_51 = pdestMatch_51 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_5 = io_wakeup_1_valid & stateCond_51; // @[StatusArray.scala 129:16]
  wire  pdestMatch_50 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_50 = pdestMatch_50 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_5 = io_wakeup_0_valid & stateCond_50; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_5 = {stateMatchVec_9_5,stateMatchVec_8_5,stateMatchVec_7_5,stateMatchVec_6_5,
    stateMatchVec_5_5,stateMatchVec_4_5,stateMatchVec_3_5,stateMatchVec_2_5,stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_2 = |_stateMatch_T_5; // @[StatusArray.scala 131:52]
  wire  updateVal_2_srcState_1 = updateVec_2_0 & io_update_0_data_srcState_1 | updateVec_2_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1284 = updateValid_2 ? updateVal_2_srcState_1 : statusArray_2_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_1 = stateWakeupEn_1_2 | _T_1284; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_165 = updateVec_2_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_166 = updateVec_2_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_2_psrc_0 = _updateStatus_T_165 | _updateStatus_T_166; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_49 = io_wakeup_9_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_49 = pdestMatch_49 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_4 = io_wakeup_9_valid & stateCond_49; // @[StatusArray.scala 129:16]
  wire  pdestMatch_48 = io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_48 = pdestMatch_48 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_4 = io_wakeup_8_valid & stateCond_48; // @[StatusArray.scala 129:16]
  wire  pdestMatch_47 = io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_47 = pdestMatch_47 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_4 = io_wakeup_7_valid & stateCond_47; // @[StatusArray.scala 129:16]
  wire  pdestMatch_46 = io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_46 = pdestMatch_46 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_4 = io_wakeup_6_valid & stateCond_46; // @[StatusArray.scala 129:16]
  wire  pdestMatch_45 = io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_45 = pdestMatch_45 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_4 = io_wakeup_5_valid & stateCond_45; // @[StatusArray.scala 129:16]
  wire  pdestMatch_44 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_44 = pdestMatch_44 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_4 = io_wakeup_4_valid & stateCond_44; // @[StatusArray.scala 129:16]
  wire  pdestMatch_43 = io_wakeup_3_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_43 = pdestMatch_43 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_4 = io_wakeup_3_valid & stateCond_43; // @[StatusArray.scala 129:16]
  wire  pdestMatch_42 = io_wakeup_2_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_42 = pdestMatch_42 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_4 = io_wakeup_2_valid & stateCond_42; // @[StatusArray.scala 129:16]
  wire  pdestMatch_41 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_41 = pdestMatch_41 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_4 = io_wakeup_1_valid & stateCond_41; // @[StatusArray.scala 129:16]
  wire  pdestMatch_40 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_40 = pdestMatch_40 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_4 = io_wakeup_0_valid & stateCond_40; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_4 = {stateMatchVec_9_4,stateMatchVec_8_4,stateMatchVec_7_4,stateMatchVec_6_4,
    stateMatchVec_5_4,stateMatchVec_4_4,stateMatchVec_3_4,stateMatchVec_2_4,stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_4; // @[StatusArray.scala 131:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1282 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1282; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_10 = {statusArrayNext_2_srcState_1,statusArrayNext_2_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_2 = &_readyVecNext_T_10; // @[StatusArray.scala 61:38]
  wire  updateVec_3_1 = io_update_1_enable & io_update_1_addr[3]; // @[StatusArray.scala 148:57]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_407 = {updateVec_3_1,updateVec_3_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_3 = |_T_407; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_231 = updateVec_3_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_232 = updateVec_3_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_3_psrc_1 = _updateStatus_T_231 | _updateStatus_T_232; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_3_psrc_1 = updateValid_3 ? updateVal_3_psrc_1 : statusArray_3_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_79 = io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_79 = pdestMatch_79 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_7 = io_wakeup_9_valid & stateCond_79; // @[StatusArray.scala 129:16]
  wire  pdestMatch_78 = io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_78 = pdestMatch_78 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_7 = io_wakeup_8_valid & stateCond_78; // @[StatusArray.scala 129:16]
  wire  pdestMatch_77 = io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_77 = pdestMatch_77 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_7 = io_wakeup_7_valid & stateCond_77; // @[StatusArray.scala 129:16]
  wire  pdestMatch_76 = io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_76 = pdestMatch_76 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_7 = io_wakeup_6_valid & stateCond_76; // @[StatusArray.scala 129:16]
  wire  pdestMatch_75 = io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_75 = pdestMatch_75 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_7 = io_wakeup_5_valid & stateCond_75; // @[StatusArray.scala 129:16]
  wire  pdestMatch_74 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_74 = pdestMatch_74 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_7 = io_wakeup_4_valid & stateCond_74; // @[StatusArray.scala 129:16]
  wire  pdestMatch_73 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_73 = pdestMatch_73 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_7 = io_wakeup_3_valid & stateCond_73; // @[StatusArray.scala 129:16]
  wire  pdestMatch_72 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_72 = pdestMatch_72 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_7 = io_wakeup_2_valid & stateCond_72; // @[StatusArray.scala 129:16]
  wire  pdestMatch_71 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_71 = pdestMatch_71 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_7 = io_wakeup_1_valid & stateCond_71; // @[StatusArray.scala 129:16]
  wire  pdestMatch_70 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_70 = pdestMatch_70 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_7 = io_wakeup_0_valid & stateCond_70; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_7 = {stateMatchVec_9_7,stateMatchVec_8_7,stateMatchVec_7_7,stateMatchVec_6_7,
    stateMatchVec_5_7,stateMatchVec_4_7,stateMatchVec_3_7,stateMatchVec_2_7,stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_3 = |_stateMatch_T_7; // @[StatusArray.scala 131:52]
  wire  updateVal_3_srcState_1 = updateVec_3_0 & io_update_0_data_srcState_1 | updateVec_3_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1343 = updateValid_3 ? updateVal_3_srcState_1 : statusArray_3_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_1 = stateWakeupEn_1_3 | _T_1343; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_228 = updateVec_3_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_229 = updateVec_3_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_3_psrc_0 = _updateStatus_T_228 | _updateStatus_T_229; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_69 = io_wakeup_9_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_69 = pdestMatch_69 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_6 = io_wakeup_9_valid & stateCond_69; // @[StatusArray.scala 129:16]
  wire  pdestMatch_68 = io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_68 = pdestMatch_68 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_6 = io_wakeup_8_valid & stateCond_68; // @[StatusArray.scala 129:16]
  wire  pdestMatch_67 = io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_67 = pdestMatch_67 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_6 = io_wakeup_7_valid & stateCond_67; // @[StatusArray.scala 129:16]
  wire  pdestMatch_66 = io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_66 = pdestMatch_66 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_6 = io_wakeup_6_valid & stateCond_66; // @[StatusArray.scala 129:16]
  wire  pdestMatch_65 = io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_65 = pdestMatch_65 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_6 = io_wakeup_5_valid & stateCond_65; // @[StatusArray.scala 129:16]
  wire  pdestMatch_64 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_64 = pdestMatch_64 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_6 = io_wakeup_4_valid & stateCond_64; // @[StatusArray.scala 129:16]
  wire  pdestMatch_63 = io_wakeup_3_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_63 = pdestMatch_63 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_6 = io_wakeup_3_valid & stateCond_63; // @[StatusArray.scala 129:16]
  wire  pdestMatch_62 = io_wakeup_2_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_62 = pdestMatch_62 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_6 = io_wakeup_2_valid & stateCond_62; // @[StatusArray.scala 129:16]
  wire  pdestMatch_61 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_61 = pdestMatch_61 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_6 = io_wakeup_1_valid & stateCond_61; // @[StatusArray.scala 129:16]
  wire  pdestMatch_60 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_60 = pdestMatch_60 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_6 = io_wakeup_0_valid & stateCond_60; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_6 = {stateMatchVec_9_6,stateMatchVec_8_6,stateMatchVec_7_6,stateMatchVec_6_6,
    stateMatchVec_5_6,stateMatchVec_4_6,stateMatchVec_3_6,stateMatchVec_2_6,stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_6; // @[StatusArray.scala 131:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1341 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1341; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_15 = {statusArrayNext_3_srcState_1,statusArrayNext_3_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_3 = &_readyVecNext_T_15; // @[StatusArray.scala 61:38]
  wire  updateVec_4_1 = io_update_1_enable & io_update_1_addr[4]; // @[StatusArray.scala 148:57]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_411 = {updateVec_4_1,updateVec_4_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_4 = |_T_411; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_294 = updateVec_4_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_295 = updateVec_4_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_4_psrc_1 = _updateStatus_T_294 | _updateStatus_T_295; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_4_psrc_1 = updateValid_4 ? updateVal_4_psrc_1 : statusArray_4_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_99 = io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_99 = pdestMatch_99 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_9 = io_wakeup_9_valid & stateCond_99; // @[StatusArray.scala 129:16]
  wire  pdestMatch_98 = io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_98 = pdestMatch_98 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_9 = io_wakeup_8_valid & stateCond_98; // @[StatusArray.scala 129:16]
  wire  pdestMatch_97 = io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_97 = pdestMatch_97 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_9 = io_wakeup_7_valid & stateCond_97; // @[StatusArray.scala 129:16]
  wire  pdestMatch_96 = io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_96 = pdestMatch_96 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_9 = io_wakeup_6_valid & stateCond_96; // @[StatusArray.scala 129:16]
  wire  pdestMatch_95 = io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_95 = pdestMatch_95 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_9 = io_wakeup_5_valid & stateCond_95; // @[StatusArray.scala 129:16]
  wire  pdestMatch_94 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_94 = pdestMatch_94 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_9 = io_wakeup_4_valid & stateCond_94; // @[StatusArray.scala 129:16]
  wire  pdestMatch_93 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_93 = pdestMatch_93 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_9 = io_wakeup_3_valid & stateCond_93; // @[StatusArray.scala 129:16]
  wire  pdestMatch_92 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_92 = pdestMatch_92 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_9 = io_wakeup_2_valid & stateCond_92; // @[StatusArray.scala 129:16]
  wire  pdestMatch_91 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_91 = pdestMatch_91 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_9 = io_wakeup_1_valid & stateCond_91; // @[StatusArray.scala 129:16]
  wire  pdestMatch_90 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_90 = pdestMatch_90 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_9 = io_wakeup_0_valid & stateCond_90; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_9 = {stateMatchVec_9_9,stateMatchVec_8_9,stateMatchVec_7_9,stateMatchVec_6_9,
    stateMatchVec_5_9,stateMatchVec_4_9,stateMatchVec_3_9,stateMatchVec_2_9,stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_4 = |_stateMatch_T_9; // @[StatusArray.scala 131:52]
  wire  updateVal_4_srcState_1 = updateVec_4_0 & io_update_0_data_srcState_1 | updateVec_4_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1402 = updateValid_4 ? updateVal_4_srcState_1 : statusArray_4_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_1 = stateWakeupEn_1_4 | _T_1402; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_291 = updateVec_4_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_292 = updateVec_4_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_4_psrc_0 = _updateStatus_T_291 | _updateStatus_T_292; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_89 = io_wakeup_9_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_89 = pdestMatch_89 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_8 = io_wakeup_9_valid & stateCond_89; // @[StatusArray.scala 129:16]
  wire  pdestMatch_88 = io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_88 = pdestMatch_88 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_8 = io_wakeup_8_valid & stateCond_88; // @[StatusArray.scala 129:16]
  wire  pdestMatch_87 = io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_87 = pdestMatch_87 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_8 = io_wakeup_7_valid & stateCond_87; // @[StatusArray.scala 129:16]
  wire  pdestMatch_86 = io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_86 = pdestMatch_86 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_8 = io_wakeup_6_valid & stateCond_86; // @[StatusArray.scala 129:16]
  wire  pdestMatch_85 = io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_85 = pdestMatch_85 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_8 = io_wakeup_5_valid & stateCond_85; // @[StatusArray.scala 129:16]
  wire  pdestMatch_84 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_84 = pdestMatch_84 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_8 = io_wakeup_4_valid & stateCond_84; // @[StatusArray.scala 129:16]
  wire  pdestMatch_83 = io_wakeup_3_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_83 = pdestMatch_83 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_8 = io_wakeup_3_valid & stateCond_83; // @[StatusArray.scala 129:16]
  wire  pdestMatch_82 = io_wakeup_2_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_82 = pdestMatch_82 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_8 = io_wakeup_2_valid & stateCond_82; // @[StatusArray.scala 129:16]
  wire  pdestMatch_81 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_81 = pdestMatch_81 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_8 = io_wakeup_1_valid & stateCond_81; // @[StatusArray.scala 129:16]
  wire  pdestMatch_80 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_80 = pdestMatch_80 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_8 = io_wakeup_0_valid & stateCond_80; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_8 = {stateMatchVec_9_8,stateMatchVec_8_8,stateMatchVec_7_8,stateMatchVec_6_8,
    stateMatchVec_5_8,stateMatchVec_4_8,stateMatchVec_3_8,stateMatchVec_2_8,stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_8; // @[StatusArray.scala 131:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1400 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_1400; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_20 = {statusArrayNext_4_srcState_1,statusArrayNext_4_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_4 = &_readyVecNext_T_20; // @[StatusArray.scala 61:38]
  wire  updateVec_5_1 = io_update_1_enable & io_update_1_addr[5]; // @[StatusArray.scala 148:57]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_415 = {updateVec_5_1,updateVec_5_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_5 = |_T_415; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_357 = updateVec_5_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_358 = updateVec_5_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_5_psrc_1 = _updateStatus_T_357 | _updateStatus_T_358; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_5_psrc_1 = updateValid_5 ? updateVal_5_psrc_1 : statusArray_5_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_119 = io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_119 = pdestMatch_119 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_11 = io_wakeup_9_valid & stateCond_119; // @[StatusArray.scala 129:16]
  wire  pdestMatch_118 = io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_118 = pdestMatch_118 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_11 = io_wakeup_8_valid & stateCond_118; // @[StatusArray.scala 129:16]
  wire  pdestMatch_117 = io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_117 = pdestMatch_117 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_11 = io_wakeup_7_valid & stateCond_117; // @[StatusArray.scala 129:16]
  wire  pdestMatch_116 = io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_116 = pdestMatch_116 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_11 = io_wakeup_6_valid & stateCond_116; // @[StatusArray.scala 129:16]
  wire  pdestMatch_115 = io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_115 = pdestMatch_115 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_11 = io_wakeup_5_valid & stateCond_115; // @[StatusArray.scala 129:16]
  wire  pdestMatch_114 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_114 = pdestMatch_114 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_11 = io_wakeup_4_valid & stateCond_114; // @[StatusArray.scala 129:16]
  wire  pdestMatch_113 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_113 = pdestMatch_113 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_11 = io_wakeup_3_valid & stateCond_113; // @[StatusArray.scala 129:16]
  wire  pdestMatch_112 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_112 = pdestMatch_112 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_11 = io_wakeup_2_valid & stateCond_112; // @[StatusArray.scala 129:16]
  wire  pdestMatch_111 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_111 = pdestMatch_111 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_11 = io_wakeup_1_valid & stateCond_111; // @[StatusArray.scala 129:16]
  wire  pdestMatch_110 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_110 = pdestMatch_110 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_11 = io_wakeup_0_valid & stateCond_110; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_11 = {stateMatchVec_9_11,stateMatchVec_8_11,stateMatchVec_7_11,stateMatchVec_6_11,
    stateMatchVec_5_11,stateMatchVec_4_11,stateMatchVec_3_11,stateMatchVec_2_11,stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_5 = |_stateMatch_T_11; // @[StatusArray.scala 131:52]
  wire  updateVal_5_srcState_1 = updateVec_5_0 & io_update_0_data_srcState_1 | updateVec_5_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1461 = updateValid_5 ? updateVal_5_srcState_1 : statusArray_5_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_1 = stateWakeupEn_1_5 | _T_1461; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_354 = updateVec_5_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_355 = updateVec_5_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_5_psrc_0 = _updateStatus_T_354 | _updateStatus_T_355; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_109 = io_wakeup_9_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_109 = pdestMatch_109 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_10 = io_wakeup_9_valid & stateCond_109; // @[StatusArray.scala 129:16]
  wire  pdestMatch_108 = io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_108 = pdestMatch_108 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_10 = io_wakeup_8_valid & stateCond_108; // @[StatusArray.scala 129:16]
  wire  pdestMatch_107 = io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_107 = pdestMatch_107 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_10 = io_wakeup_7_valid & stateCond_107; // @[StatusArray.scala 129:16]
  wire  pdestMatch_106 = io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_106 = pdestMatch_106 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_10 = io_wakeup_6_valid & stateCond_106; // @[StatusArray.scala 129:16]
  wire  pdestMatch_105 = io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_105 = pdestMatch_105 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_10 = io_wakeup_5_valid & stateCond_105; // @[StatusArray.scala 129:16]
  wire  pdestMatch_104 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_104 = pdestMatch_104 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_10 = io_wakeup_4_valid & stateCond_104; // @[StatusArray.scala 129:16]
  wire  pdestMatch_103 = io_wakeup_3_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_103 = pdestMatch_103 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_10 = io_wakeup_3_valid & stateCond_103; // @[StatusArray.scala 129:16]
  wire  pdestMatch_102 = io_wakeup_2_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_102 = pdestMatch_102 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_10 = io_wakeup_2_valid & stateCond_102; // @[StatusArray.scala 129:16]
  wire  pdestMatch_101 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_101 = pdestMatch_101 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_10 = io_wakeup_1_valid & stateCond_101; // @[StatusArray.scala 129:16]
  wire  pdestMatch_100 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_100 = pdestMatch_100 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_10 = io_wakeup_0_valid & stateCond_100; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_10 = {stateMatchVec_9_10,stateMatchVec_8_10,stateMatchVec_7_10,stateMatchVec_6_10,
    stateMatchVec_5_10,stateMatchVec_4_10,stateMatchVec_3_10,stateMatchVec_2_10,stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_10; // @[StatusArray.scala 131:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1459 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_1459; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_25 = {statusArrayNext_5_srcState_1,statusArrayNext_5_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_5 = &_readyVecNext_T_25; // @[StatusArray.scala 61:38]
  wire  updateVec_6_1 = io_update_1_enable & io_update_1_addr[6]; // @[StatusArray.scala 148:57]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_419 = {updateVec_6_1,updateVec_6_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_6 = |_T_419; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_420 = updateVec_6_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_421 = updateVec_6_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_6_psrc_1 = _updateStatus_T_420 | _updateStatus_T_421; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_6_psrc_1 = updateValid_6 ? updateVal_6_psrc_1 : statusArray_6_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_139 = io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_139 = pdestMatch_139 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_13 = io_wakeup_9_valid & stateCond_139; // @[StatusArray.scala 129:16]
  wire  pdestMatch_138 = io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_138 = pdestMatch_138 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_13 = io_wakeup_8_valid & stateCond_138; // @[StatusArray.scala 129:16]
  wire  pdestMatch_137 = io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_137 = pdestMatch_137 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_13 = io_wakeup_7_valid & stateCond_137; // @[StatusArray.scala 129:16]
  wire  pdestMatch_136 = io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_136 = pdestMatch_136 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_13 = io_wakeup_6_valid & stateCond_136; // @[StatusArray.scala 129:16]
  wire  pdestMatch_135 = io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_135 = pdestMatch_135 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_13 = io_wakeup_5_valid & stateCond_135; // @[StatusArray.scala 129:16]
  wire  pdestMatch_134 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_134 = pdestMatch_134 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_13 = io_wakeup_4_valid & stateCond_134; // @[StatusArray.scala 129:16]
  wire  pdestMatch_133 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_133 = pdestMatch_133 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_13 = io_wakeup_3_valid & stateCond_133; // @[StatusArray.scala 129:16]
  wire  pdestMatch_132 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_132 = pdestMatch_132 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_13 = io_wakeup_2_valid & stateCond_132; // @[StatusArray.scala 129:16]
  wire  pdestMatch_131 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_131 = pdestMatch_131 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_13 = io_wakeup_1_valid & stateCond_131; // @[StatusArray.scala 129:16]
  wire  pdestMatch_130 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_130 = pdestMatch_130 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_13 = io_wakeup_0_valid & stateCond_130; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_13 = {stateMatchVec_9_13,stateMatchVec_8_13,stateMatchVec_7_13,stateMatchVec_6_13,
    stateMatchVec_5_13,stateMatchVec_4_13,stateMatchVec_3_13,stateMatchVec_2_13,stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_6 = |_stateMatch_T_13; // @[StatusArray.scala 131:52]
  wire  updateVal_6_srcState_1 = updateVec_6_0 & io_update_0_data_srcState_1 | updateVec_6_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1520 = updateValid_6 ? updateVal_6_srcState_1 : statusArray_6_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_1 = stateWakeupEn_1_6 | _T_1520; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_417 = updateVec_6_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_418 = updateVec_6_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_6_psrc_0 = _updateStatus_T_417 | _updateStatus_T_418; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_129 = io_wakeup_9_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_129 = pdestMatch_129 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_12 = io_wakeup_9_valid & stateCond_129; // @[StatusArray.scala 129:16]
  wire  pdestMatch_128 = io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_128 = pdestMatch_128 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_12 = io_wakeup_8_valid & stateCond_128; // @[StatusArray.scala 129:16]
  wire  pdestMatch_127 = io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_127 = pdestMatch_127 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_12 = io_wakeup_7_valid & stateCond_127; // @[StatusArray.scala 129:16]
  wire  pdestMatch_126 = io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_126 = pdestMatch_126 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_12 = io_wakeup_6_valid & stateCond_126; // @[StatusArray.scala 129:16]
  wire  pdestMatch_125 = io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_125 = pdestMatch_125 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_12 = io_wakeup_5_valid & stateCond_125; // @[StatusArray.scala 129:16]
  wire  pdestMatch_124 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_124 = pdestMatch_124 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_12 = io_wakeup_4_valid & stateCond_124; // @[StatusArray.scala 129:16]
  wire  pdestMatch_123 = io_wakeup_3_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_123 = pdestMatch_123 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_12 = io_wakeup_3_valid & stateCond_123; // @[StatusArray.scala 129:16]
  wire  pdestMatch_122 = io_wakeup_2_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_122 = pdestMatch_122 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_12 = io_wakeup_2_valid & stateCond_122; // @[StatusArray.scala 129:16]
  wire  pdestMatch_121 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_121 = pdestMatch_121 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_12 = io_wakeup_1_valid & stateCond_121; // @[StatusArray.scala 129:16]
  wire  pdestMatch_120 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_120 = pdestMatch_120 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_12 = io_wakeup_0_valid & stateCond_120; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_12 = {stateMatchVec_9_12,stateMatchVec_8_12,stateMatchVec_7_12,stateMatchVec_6_12,
    stateMatchVec_5_12,stateMatchVec_4_12,stateMatchVec_3_12,stateMatchVec_2_12,stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_12; // @[StatusArray.scala 131:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1518 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_1518; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_30 = {statusArrayNext_6_srcState_1,statusArrayNext_6_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_6 = &_readyVecNext_T_30; // @[StatusArray.scala 61:38]
  wire  updateVec_7_1 = io_update_1_enable & io_update_1_addr[7]; // @[StatusArray.scala 148:57]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_423 = {updateVec_7_1,updateVec_7_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_7 = |_T_423; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_483 = updateVec_7_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_484 = updateVec_7_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_7_psrc_1 = _updateStatus_T_483 | _updateStatus_T_484; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_7_psrc_1 = updateValid_7 ? updateVal_7_psrc_1 : statusArray_7_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_159 = io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_159 = pdestMatch_159 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_15 = io_wakeup_9_valid & stateCond_159; // @[StatusArray.scala 129:16]
  wire  pdestMatch_158 = io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_158 = pdestMatch_158 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_15 = io_wakeup_8_valid & stateCond_158; // @[StatusArray.scala 129:16]
  wire  pdestMatch_157 = io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_157 = pdestMatch_157 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_15 = io_wakeup_7_valid & stateCond_157; // @[StatusArray.scala 129:16]
  wire  pdestMatch_156 = io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_156 = pdestMatch_156 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_15 = io_wakeup_6_valid & stateCond_156; // @[StatusArray.scala 129:16]
  wire  pdestMatch_155 = io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_155 = pdestMatch_155 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_15 = io_wakeup_5_valid & stateCond_155; // @[StatusArray.scala 129:16]
  wire  pdestMatch_154 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_154 = pdestMatch_154 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_15 = io_wakeup_4_valid & stateCond_154; // @[StatusArray.scala 129:16]
  wire  pdestMatch_153 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_153 = pdestMatch_153 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_15 = io_wakeup_3_valid & stateCond_153; // @[StatusArray.scala 129:16]
  wire  pdestMatch_152 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_152 = pdestMatch_152 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_15 = io_wakeup_2_valid & stateCond_152; // @[StatusArray.scala 129:16]
  wire  pdestMatch_151 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_151 = pdestMatch_151 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_15 = io_wakeup_1_valid & stateCond_151; // @[StatusArray.scala 129:16]
  wire  pdestMatch_150 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_150 = pdestMatch_150 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_15 = io_wakeup_0_valid & stateCond_150; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_15 = {stateMatchVec_9_15,stateMatchVec_8_15,stateMatchVec_7_15,stateMatchVec_6_15,
    stateMatchVec_5_15,stateMatchVec_4_15,stateMatchVec_3_15,stateMatchVec_2_15,stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_7 = |_stateMatch_T_15; // @[StatusArray.scala 131:52]
  wire  updateVal_7_srcState_1 = updateVec_7_0 & io_update_0_data_srcState_1 | updateVec_7_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1579 = updateValid_7 ? updateVal_7_srcState_1 : statusArray_7_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_1 = stateWakeupEn_1_7 | _T_1579; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_480 = updateVec_7_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_481 = updateVec_7_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_7_psrc_0 = _updateStatus_T_480 | _updateStatus_T_481; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_149 = io_wakeup_9_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_149 = pdestMatch_149 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_14 = io_wakeup_9_valid & stateCond_149; // @[StatusArray.scala 129:16]
  wire  pdestMatch_148 = io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_148 = pdestMatch_148 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_14 = io_wakeup_8_valid & stateCond_148; // @[StatusArray.scala 129:16]
  wire  pdestMatch_147 = io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_147 = pdestMatch_147 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_14 = io_wakeup_7_valid & stateCond_147; // @[StatusArray.scala 129:16]
  wire  pdestMatch_146 = io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_146 = pdestMatch_146 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_14 = io_wakeup_6_valid & stateCond_146; // @[StatusArray.scala 129:16]
  wire  pdestMatch_145 = io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_145 = pdestMatch_145 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_14 = io_wakeup_5_valid & stateCond_145; // @[StatusArray.scala 129:16]
  wire  pdestMatch_144 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_144 = pdestMatch_144 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_14 = io_wakeup_4_valid & stateCond_144; // @[StatusArray.scala 129:16]
  wire  pdestMatch_143 = io_wakeup_3_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_143 = pdestMatch_143 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_14 = io_wakeup_3_valid & stateCond_143; // @[StatusArray.scala 129:16]
  wire  pdestMatch_142 = io_wakeup_2_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_142 = pdestMatch_142 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_14 = io_wakeup_2_valid & stateCond_142; // @[StatusArray.scala 129:16]
  wire  pdestMatch_141 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_141 = pdestMatch_141 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_14 = io_wakeup_1_valid & stateCond_141; // @[StatusArray.scala 129:16]
  wire  pdestMatch_140 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_140 = pdestMatch_140 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_14 = io_wakeup_0_valid & stateCond_140; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_14 = {stateMatchVec_9_14,stateMatchVec_8_14,stateMatchVec_7_14,stateMatchVec_6_14,
    stateMatchVec_5_14,stateMatchVec_4_14,stateMatchVec_3_14,stateMatchVec_2_14,stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_14; // @[StatusArray.scala 131:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1577 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_1577; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_35 = {statusArrayNext_7_srcState_1,statusArrayNext_7_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_7 = &_readyVecNext_T_35; // @[StatusArray.scala 61:38]
  wire  updateVec_8_1 = io_update_1_enable & io_update_1_addr[8]; // @[StatusArray.scala 148:57]
  wire  updateVec_8_0 = io_update_0_enable & io_update_0_addr[8]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_427 = {updateVec_8_1,updateVec_8_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_8 = |_T_427; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_546 = updateVec_8_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_547 = updateVec_8_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_8_psrc_1 = _updateStatus_T_546 | _updateStatus_T_547; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_8_psrc_1 = updateValid_8 ? updateVal_8_psrc_1 : statusArray_8_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_179 = io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_179 = pdestMatch_179 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_17 = io_wakeup_9_valid & stateCond_179; // @[StatusArray.scala 129:16]
  wire  pdestMatch_178 = io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_178 = pdestMatch_178 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_17 = io_wakeup_8_valid & stateCond_178; // @[StatusArray.scala 129:16]
  wire  pdestMatch_177 = io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_177 = pdestMatch_177 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_17 = io_wakeup_7_valid & stateCond_177; // @[StatusArray.scala 129:16]
  wire  pdestMatch_176 = io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_176 = pdestMatch_176 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_17 = io_wakeup_6_valid & stateCond_176; // @[StatusArray.scala 129:16]
  wire  pdestMatch_175 = io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_175 = pdestMatch_175 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_17 = io_wakeup_5_valid & stateCond_175; // @[StatusArray.scala 129:16]
  wire  pdestMatch_174 = io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_174 = pdestMatch_174 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_17 = io_wakeup_4_valid & stateCond_174; // @[StatusArray.scala 129:16]
  wire  pdestMatch_173 = io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_173 = pdestMatch_173 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_17 = io_wakeup_3_valid & stateCond_173; // @[StatusArray.scala 129:16]
  wire  pdestMatch_172 = io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_172 = pdestMatch_172 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_17 = io_wakeup_2_valid & stateCond_172; // @[StatusArray.scala 129:16]
  wire  pdestMatch_171 = io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_171 = pdestMatch_171 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_17 = io_wakeup_1_valid & stateCond_171; // @[StatusArray.scala 129:16]
  wire  pdestMatch_170 = io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_170 = pdestMatch_170 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_17 = io_wakeup_0_valid & stateCond_170; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_17 = {stateMatchVec_9_17,stateMatchVec_8_17,stateMatchVec_7_17,stateMatchVec_6_17,
    stateMatchVec_5_17,stateMatchVec_4_17,stateMatchVec_3_17,stateMatchVec_2_17,stateMatchVec_1_17,stateMatchVec_0_17}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_8 = |_stateMatch_T_17; // @[StatusArray.scala 131:52]
  wire  updateVal_8_srcState_1 = updateVec_8_0 & io_update_0_data_srcState_1 | updateVec_8_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1638 = updateValid_8 ? updateVal_8_srcState_1 : statusArray_8_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_8_srcState_1 = stateWakeupEn_1_8 | _T_1638; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_543 = updateVec_8_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_544 = updateVec_8_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_8_psrc_0 = _updateStatus_T_543 | _updateStatus_T_544; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_169 = io_wakeup_9_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_169 = pdestMatch_169 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_16 = io_wakeup_9_valid & stateCond_169; // @[StatusArray.scala 129:16]
  wire  pdestMatch_168 = io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_168 = pdestMatch_168 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_16 = io_wakeup_8_valid & stateCond_168; // @[StatusArray.scala 129:16]
  wire  pdestMatch_167 = io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_167 = pdestMatch_167 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_16 = io_wakeup_7_valid & stateCond_167; // @[StatusArray.scala 129:16]
  wire  pdestMatch_166 = io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_166 = pdestMatch_166 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_16 = io_wakeup_6_valid & stateCond_166; // @[StatusArray.scala 129:16]
  wire  pdestMatch_165 = io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_165 = pdestMatch_165 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_16 = io_wakeup_5_valid & stateCond_165; // @[StatusArray.scala 129:16]
  wire  pdestMatch_164 = io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_164 = pdestMatch_164 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_16 = io_wakeup_4_valid & stateCond_164; // @[StatusArray.scala 129:16]
  wire  pdestMatch_163 = io_wakeup_3_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_163 = pdestMatch_163 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_16 = io_wakeup_3_valid & stateCond_163; // @[StatusArray.scala 129:16]
  wire  pdestMatch_162 = io_wakeup_2_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_162 = pdestMatch_162 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_16 = io_wakeup_2_valid & stateCond_162; // @[StatusArray.scala 129:16]
  wire  pdestMatch_161 = io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_161 = pdestMatch_161 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_16 = io_wakeup_1_valid & stateCond_161; // @[StatusArray.scala 129:16]
  wire  pdestMatch_160 = io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_160 = pdestMatch_160 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_16 = io_wakeup_0_valid & stateCond_160; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_16 = {stateMatchVec_9_16,stateMatchVec_8_16,stateMatchVec_7_16,stateMatchVec_6_16,
    stateMatchVec_5_16,stateMatchVec_4_16,stateMatchVec_3_16,stateMatchVec_2_16,stateMatchVec_1_16,stateMatchVec_0_16}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_16; // @[StatusArray.scala 131:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1636 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_1636; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_40 = {statusArrayNext_8_srcState_1,statusArrayNext_8_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_8 = &_readyVecNext_T_40; // @[StatusArray.scala 61:38]
  wire  updateVec_9_1 = io_update_1_enable & io_update_1_addr[9]; // @[StatusArray.scala 148:57]
  wire  updateVec_9_0 = io_update_0_enable & io_update_0_addr[9]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_431 = {updateVec_9_1,updateVec_9_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_9 = |_T_431; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_609 = updateVec_9_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_610 = updateVec_9_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_9_psrc_1 = _updateStatus_T_609 | _updateStatus_T_610; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_9_psrc_1 = updateValid_9 ? updateVal_9_psrc_1 : statusArray_9_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_199 = io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_199 = pdestMatch_199 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_19 = io_wakeup_9_valid & stateCond_199; // @[StatusArray.scala 129:16]
  wire  pdestMatch_198 = io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_198 = pdestMatch_198 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_19 = io_wakeup_8_valid & stateCond_198; // @[StatusArray.scala 129:16]
  wire  pdestMatch_197 = io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_197 = pdestMatch_197 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_19 = io_wakeup_7_valid & stateCond_197; // @[StatusArray.scala 129:16]
  wire  pdestMatch_196 = io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_196 = pdestMatch_196 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_19 = io_wakeup_6_valid & stateCond_196; // @[StatusArray.scala 129:16]
  wire  pdestMatch_195 = io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_195 = pdestMatch_195 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_19 = io_wakeup_5_valid & stateCond_195; // @[StatusArray.scala 129:16]
  wire  pdestMatch_194 = io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_194 = pdestMatch_194 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_19 = io_wakeup_4_valid & stateCond_194; // @[StatusArray.scala 129:16]
  wire  pdestMatch_193 = io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_193 = pdestMatch_193 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_19 = io_wakeup_3_valid & stateCond_193; // @[StatusArray.scala 129:16]
  wire  pdestMatch_192 = io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_192 = pdestMatch_192 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_19 = io_wakeup_2_valid & stateCond_192; // @[StatusArray.scala 129:16]
  wire  pdestMatch_191 = io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_191 = pdestMatch_191 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_19 = io_wakeup_1_valid & stateCond_191; // @[StatusArray.scala 129:16]
  wire  pdestMatch_190 = io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_190 = pdestMatch_190 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_19 = io_wakeup_0_valid & stateCond_190; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_19 = {stateMatchVec_9_19,stateMatchVec_8_19,stateMatchVec_7_19,stateMatchVec_6_19,
    stateMatchVec_5_19,stateMatchVec_4_19,stateMatchVec_3_19,stateMatchVec_2_19,stateMatchVec_1_19,stateMatchVec_0_19}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_9 = |_stateMatch_T_19; // @[StatusArray.scala 131:52]
  wire  updateVal_9_srcState_1 = updateVec_9_0 & io_update_0_data_srcState_1 | updateVec_9_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1697 = updateValid_9 ? updateVal_9_srcState_1 : statusArray_9_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_9_srcState_1 = stateWakeupEn_1_9 | _T_1697; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_606 = updateVec_9_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_607 = updateVec_9_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_9_psrc_0 = _updateStatus_T_606 | _updateStatus_T_607; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_189 = io_wakeup_9_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_189 = pdestMatch_189 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_18 = io_wakeup_9_valid & stateCond_189; // @[StatusArray.scala 129:16]
  wire  pdestMatch_188 = io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_188 = pdestMatch_188 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_18 = io_wakeup_8_valid & stateCond_188; // @[StatusArray.scala 129:16]
  wire  pdestMatch_187 = io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_187 = pdestMatch_187 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_18 = io_wakeup_7_valid & stateCond_187; // @[StatusArray.scala 129:16]
  wire  pdestMatch_186 = io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_186 = pdestMatch_186 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_18 = io_wakeup_6_valid & stateCond_186; // @[StatusArray.scala 129:16]
  wire  pdestMatch_185 = io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_185 = pdestMatch_185 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_18 = io_wakeup_5_valid & stateCond_185; // @[StatusArray.scala 129:16]
  wire  pdestMatch_184 = io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_184 = pdestMatch_184 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_18 = io_wakeup_4_valid & stateCond_184; // @[StatusArray.scala 129:16]
  wire  pdestMatch_183 = io_wakeup_3_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_183 = pdestMatch_183 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_18 = io_wakeup_3_valid & stateCond_183; // @[StatusArray.scala 129:16]
  wire  pdestMatch_182 = io_wakeup_2_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_182 = pdestMatch_182 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_18 = io_wakeup_2_valid & stateCond_182; // @[StatusArray.scala 129:16]
  wire  pdestMatch_181 = io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_181 = pdestMatch_181 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_18 = io_wakeup_1_valid & stateCond_181; // @[StatusArray.scala 129:16]
  wire  pdestMatch_180 = io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_180 = pdestMatch_180 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_18 = io_wakeup_0_valid & stateCond_180; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_18 = {stateMatchVec_9_18,stateMatchVec_8_18,stateMatchVec_7_18,stateMatchVec_6_18,
    stateMatchVec_5_18,stateMatchVec_4_18,stateMatchVec_3_18,stateMatchVec_2_18,stateMatchVec_1_18,stateMatchVec_0_18}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_18; // @[StatusArray.scala 131:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1695 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_1695; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_45 = {statusArrayNext_9_srcState_1,statusArrayNext_9_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_9 = &_readyVecNext_T_45; // @[StatusArray.scala 61:38]
  wire  updateVec_10_1 = io_update_1_enable & io_update_1_addr[10]; // @[StatusArray.scala 148:57]
  wire  updateVec_10_0 = io_update_0_enable & io_update_0_addr[10]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_435 = {updateVec_10_1,updateVec_10_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_10 = |_T_435; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_672 = updateVec_10_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_673 = updateVec_10_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_10_psrc_1 = _updateStatus_T_672 | _updateStatus_T_673; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_10_psrc_1 = updateValid_10 ? updateVal_10_psrc_1 : statusArray_10_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_219 = io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_219 = pdestMatch_219 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_21 = io_wakeup_9_valid & stateCond_219; // @[StatusArray.scala 129:16]
  wire  pdestMatch_218 = io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_218 = pdestMatch_218 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_21 = io_wakeup_8_valid & stateCond_218; // @[StatusArray.scala 129:16]
  wire  pdestMatch_217 = io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_217 = pdestMatch_217 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_21 = io_wakeup_7_valid & stateCond_217; // @[StatusArray.scala 129:16]
  wire  pdestMatch_216 = io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_216 = pdestMatch_216 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_21 = io_wakeup_6_valid & stateCond_216; // @[StatusArray.scala 129:16]
  wire  pdestMatch_215 = io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_215 = pdestMatch_215 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_21 = io_wakeup_5_valid & stateCond_215; // @[StatusArray.scala 129:16]
  wire  pdestMatch_214 = io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_214 = pdestMatch_214 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_21 = io_wakeup_4_valid & stateCond_214; // @[StatusArray.scala 129:16]
  wire  pdestMatch_213 = io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_213 = pdestMatch_213 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_21 = io_wakeup_3_valid & stateCond_213; // @[StatusArray.scala 129:16]
  wire  pdestMatch_212 = io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_212 = pdestMatch_212 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_21 = io_wakeup_2_valid & stateCond_212; // @[StatusArray.scala 129:16]
  wire  pdestMatch_211 = io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_211 = pdestMatch_211 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_21 = io_wakeup_1_valid & stateCond_211; // @[StatusArray.scala 129:16]
  wire  pdestMatch_210 = io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_210 = pdestMatch_210 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_21 = io_wakeup_0_valid & stateCond_210; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_21 = {stateMatchVec_9_21,stateMatchVec_8_21,stateMatchVec_7_21,stateMatchVec_6_21,
    stateMatchVec_5_21,stateMatchVec_4_21,stateMatchVec_3_21,stateMatchVec_2_21,stateMatchVec_1_21,stateMatchVec_0_21}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_10 = |_stateMatch_T_21; // @[StatusArray.scala 131:52]
  wire  updateVal_10_srcState_1 = updateVec_10_0 & io_update_0_data_srcState_1 | updateVec_10_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1756 = updateValid_10 ? updateVal_10_srcState_1 : statusArray_10_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_10_srcState_1 = stateWakeupEn_1_10 | _T_1756; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_669 = updateVec_10_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_670 = updateVec_10_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_10_psrc_0 = _updateStatus_T_669 | _updateStatus_T_670; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_209 = io_wakeup_9_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_209 = pdestMatch_209 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_20 = io_wakeup_9_valid & stateCond_209; // @[StatusArray.scala 129:16]
  wire  pdestMatch_208 = io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_208 = pdestMatch_208 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_20 = io_wakeup_8_valid & stateCond_208; // @[StatusArray.scala 129:16]
  wire  pdestMatch_207 = io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_207 = pdestMatch_207 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_20 = io_wakeup_7_valid & stateCond_207; // @[StatusArray.scala 129:16]
  wire  pdestMatch_206 = io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_206 = pdestMatch_206 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_20 = io_wakeup_6_valid & stateCond_206; // @[StatusArray.scala 129:16]
  wire  pdestMatch_205 = io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_205 = pdestMatch_205 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_20 = io_wakeup_5_valid & stateCond_205; // @[StatusArray.scala 129:16]
  wire  pdestMatch_204 = io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_204 = pdestMatch_204 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_20 = io_wakeup_4_valid & stateCond_204; // @[StatusArray.scala 129:16]
  wire  pdestMatch_203 = io_wakeup_3_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_203 = pdestMatch_203 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_20 = io_wakeup_3_valid & stateCond_203; // @[StatusArray.scala 129:16]
  wire  pdestMatch_202 = io_wakeup_2_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_202 = pdestMatch_202 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_20 = io_wakeup_2_valid & stateCond_202; // @[StatusArray.scala 129:16]
  wire  pdestMatch_201 = io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_201 = pdestMatch_201 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_20 = io_wakeup_1_valid & stateCond_201; // @[StatusArray.scala 129:16]
  wire  pdestMatch_200 = io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_200 = pdestMatch_200 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_20 = io_wakeup_0_valid & stateCond_200; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_20 = {stateMatchVec_9_20,stateMatchVec_8_20,stateMatchVec_7_20,stateMatchVec_6_20,
    stateMatchVec_5_20,stateMatchVec_4_20,stateMatchVec_3_20,stateMatchVec_2_20,stateMatchVec_1_20,stateMatchVec_0_20}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_20; // @[StatusArray.scala 131:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1754 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_1754; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_50 = {statusArrayNext_10_srcState_1,statusArrayNext_10_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_10 = &_readyVecNext_T_50; // @[StatusArray.scala 61:38]
  wire  updateVec_11_1 = io_update_1_enable & io_update_1_addr[11]; // @[StatusArray.scala 148:57]
  wire  updateVec_11_0 = io_update_0_enable & io_update_0_addr[11]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_439 = {updateVec_11_1,updateVec_11_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_11 = |_T_439; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_735 = updateVec_11_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_736 = updateVec_11_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_11_psrc_1 = _updateStatus_T_735 | _updateStatus_T_736; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_11_psrc_1 = updateValid_11 ? updateVal_11_psrc_1 : statusArray_11_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_239 = io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_239 = pdestMatch_239 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_23 = io_wakeup_9_valid & stateCond_239; // @[StatusArray.scala 129:16]
  wire  pdestMatch_238 = io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_238 = pdestMatch_238 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_23 = io_wakeup_8_valid & stateCond_238; // @[StatusArray.scala 129:16]
  wire  pdestMatch_237 = io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_237 = pdestMatch_237 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_23 = io_wakeup_7_valid & stateCond_237; // @[StatusArray.scala 129:16]
  wire  pdestMatch_236 = io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_236 = pdestMatch_236 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_23 = io_wakeup_6_valid & stateCond_236; // @[StatusArray.scala 129:16]
  wire  pdestMatch_235 = io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_235 = pdestMatch_235 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_23 = io_wakeup_5_valid & stateCond_235; // @[StatusArray.scala 129:16]
  wire  pdestMatch_234 = io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_234 = pdestMatch_234 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_23 = io_wakeup_4_valid & stateCond_234; // @[StatusArray.scala 129:16]
  wire  pdestMatch_233 = io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_233 = pdestMatch_233 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_23 = io_wakeup_3_valid & stateCond_233; // @[StatusArray.scala 129:16]
  wire  pdestMatch_232 = io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_232 = pdestMatch_232 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_23 = io_wakeup_2_valid & stateCond_232; // @[StatusArray.scala 129:16]
  wire  pdestMatch_231 = io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_231 = pdestMatch_231 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_23 = io_wakeup_1_valid & stateCond_231; // @[StatusArray.scala 129:16]
  wire  pdestMatch_230 = io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_230 = pdestMatch_230 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_23 = io_wakeup_0_valid & stateCond_230; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_23 = {stateMatchVec_9_23,stateMatchVec_8_23,stateMatchVec_7_23,stateMatchVec_6_23,
    stateMatchVec_5_23,stateMatchVec_4_23,stateMatchVec_3_23,stateMatchVec_2_23,stateMatchVec_1_23,stateMatchVec_0_23}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_11 = |_stateMatch_T_23; // @[StatusArray.scala 131:52]
  wire  updateVal_11_srcState_1 = updateVec_11_0 & io_update_0_data_srcState_1 | updateVec_11_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1815 = updateValid_11 ? updateVal_11_srcState_1 : statusArray_11_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_11_srcState_1 = stateWakeupEn_1_11 | _T_1815; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_732 = updateVec_11_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_733 = updateVec_11_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_11_psrc_0 = _updateStatus_T_732 | _updateStatus_T_733; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_229 = io_wakeup_9_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_229 = pdestMatch_229 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_22 = io_wakeup_9_valid & stateCond_229; // @[StatusArray.scala 129:16]
  wire  pdestMatch_228 = io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_228 = pdestMatch_228 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_22 = io_wakeup_8_valid & stateCond_228; // @[StatusArray.scala 129:16]
  wire  pdestMatch_227 = io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_227 = pdestMatch_227 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_22 = io_wakeup_7_valid & stateCond_227; // @[StatusArray.scala 129:16]
  wire  pdestMatch_226 = io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_226 = pdestMatch_226 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_22 = io_wakeup_6_valid & stateCond_226; // @[StatusArray.scala 129:16]
  wire  pdestMatch_225 = io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_225 = pdestMatch_225 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_22 = io_wakeup_5_valid & stateCond_225; // @[StatusArray.scala 129:16]
  wire  pdestMatch_224 = io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_224 = pdestMatch_224 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_22 = io_wakeup_4_valid & stateCond_224; // @[StatusArray.scala 129:16]
  wire  pdestMatch_223 = io_wakeup_3_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_223 = pdestMatch_223 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_22 = io_wakeup_3_valid & stateCond_223; // @[StatusArray.scala 129:16]
  wire  pdestMatch_222 = io_wakeup_2_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_222 = pdestMatch_222 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_22 = io_wakeup_2_valid & stateCond_222; // @[StatusArray.scala 129:16]
  wire  pdestMatch_221 = io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_221 = pdestMatch_221 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_22 = io_wakeup_1_valid & stateCond_221; // @[StatusArray.scala 129:16]
  wire  pdestMatch_220 = io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_220 = pdestMatch_220 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_22 = io_wakeup_0_valid & stateCond_220; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_22 = {stateMatchVec_9_22,stateMatchVec_8_22,stateMatchVec_7_22,stateMatchVec_6_22,
    stateMatchVec_5_22,stateMatchVec_4_22,stateMatchVec_3_22,stateMatchVec_2_22,stateMatchVec_1_22,stateMatchVec_0_22}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_22; // @[StatusArray.scala 131:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1813 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_1813; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_55 = {statusArrayNext_11_srcState_1,statusArrayNext_11_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_11 = &_readyVecNext_T_55; // @[StatusArray.scala 61:38]
  wire  updateVec_12_1 = io_update_1_enable & io_update_1_addr[12]; // @[StatusArray.scala 148:57]
  wire  updateVec_12_0 = io_update_0_enable & io_update_0_addr[12]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_443 = {updateVec_12_1,updateVec_12_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_12 = |_T_443; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_798 = updateVec_12_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_799 = updateVec_12_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_12_psrc_1 = _updateStatus_T_798 | _updateStatus_T_799; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_12_psrc_1 = updateValid_12 ? updateVal_12_psrc_1 : statusArray_12_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_259 = io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_259 = pdestMatch_259 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_25 = io_wakeup_9_valid & stateCond_259; // @[StatusArray.scala 129:16]
  wire  pdestMatch_258 = io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_258 = pdestMatch_258 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_25 = io_wakeup_8_valid & stateCond_258; // @[StatusArray.scala 129:16]
  wire  pdestMatch_257 = io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_257 = pdestMatch_257 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_25 = io_wakeup_7_valid & stateCond_257; // @[StatusArray.scala 129:16]
  wire  pdestMatch_256 = io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_256 = pdestMatch_256 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_25 = io_wakeup_6_valid & stateCond_256; // @[StatusArray.scala 129:16]
  wire  pdestMatch_255 = io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_255 = pdestMatch_255 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_25 = io_wakeup_5_valid & stateCond_255; // @[StatusArray.scala 129:16]
  wire  pdestMatch_254 = io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_254 = pdestMatch_254 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_25 = io_wakeup_4_valid & stateCond_254; // @[StatusArray.scala 129:16]
  wire  pdestMatch_253 = io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_253 = pdestMatch_253 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_25 = io_wakeup_3_valid & stateCond_253; // @[StatusArray.scala 129:16]
  wire  pdestMatch_252 = io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_252 = pdestMatch_252 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_25 = io_wakeup_2_valid & stateCond_252; // @[StatusArray.scala 129:16]
  wire  pdestMatch_251 = io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_251 = pdestMatch_251 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_25 = io_wakeup_1_valid & stateCond_251; // @[StatusArray.scala 129:16]
  wire  pdestMatch_250 = io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_250 = pdestMatch_250 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_25 = io_wakeup_0_valid & stateCond_250; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_25 = {stateMatchVec_9_25,stateMatchVec_8_25,stateMatchVec_7_25,stateMatchVec_6_25,
    stateMatchVec_5_25,stateMatchVec_4_25,stateMatchVec_3_25,stateMatchVec_2_25,stateMatchVec_1_25,stateMatchVec_0_25}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_12 = |_stateMatch_T_25; // @[StatusArray.scala 131:52]
  wire  updateVal_12_srcState_1 = updateVec_12_0 & io_update_0_data_srcState_1 | updateVec_12_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1874 = updateValid_12 ? updateVal_12_srcState_1 : statusArray_12_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_12_srcState_1 = stateWakeupEn_1_12 | _T_1874; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_795 = updateVec_12_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_796 = updateVec_12_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_12_psrc_0 = _updateStatus_T_795 | _updateStatus_T_796; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_249 = io_wakeup_9_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_249 = pdestMatch_249 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_24 = io_wakeup_9_valid & stateCond_249; // @[StatusArray.scala 129:16]
  wire  pdestMatch_248 = io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_248 = pdestMatch_248 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_24 = io_wakeup_8_valid & stateCond_248; // @[StatusArray.scala 129:16]
  wire  pdestMatch_247 = io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_247 = pdestMatch_247 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_24 = io_wakeup_7_valid & stateCond_247; // @[StatusArray.scala 129:16]
  wire  pdestMatch_246 = io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_246 = pdestMatch_246 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_24 = io_wakeup_6_valid & stateCond_246; // @[StatusArray.scala 129:16]
  wire  pdestMatch_245 = io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_245 = pdestMatch_245 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_24 = io_wakeup_5_valid & stateCond_245; // @[StatusArray.scala 129:16]
  wire  pdestMatch_244 = io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_244 = pdestMatch_244 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_24 = io_wakeup_4_valid & stateCond_244; // @[StatusArray.scala 129:16]
  wire  pdestMatch_243 = io_wakeup_3_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_243 = pdestMatch_243 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_24 = io_wakeup_3_valid & stateCond_243; // @[StatusArray.scala 129:16]
  wire  pdestMatch_242 = io_wakeup_2_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_242 = pdestMatch_242 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_24 = io_wakeup_2_valid & stateCond_242; // @[StatusArray.scala 129:16]
  wire  pdestMatch_241 = io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_241 = pdestMatch_241 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_24 = io_wakeup_1_valid & stateCond_241; // @[StatusArray.scala 129:16]
  wire  pdestMatch_240 = io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_240 = pdestMatch_240 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_24 = io_wakeup_0_valid & stateCond_240; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_24 = {stateMatchVec_9_24,stateMatchVec_8_24,stateMatchVec_7_24,stateMatchVec_6_24,
    stateMatchVec_5_24,stateMatchVec_4_24,stateMatchVec_3_24,stateMatchVec_2_24,stateMatchVec_1_24,stateMatchVec_0_24}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_24; // @[StatusArray.scala 131:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1872 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_1872; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_60 = {statusArrayNext_12_srcState_1,statusArrayNext_12_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_12 = &_readyVecNext_T_60; // @[StatusArray.scala 61:38]
  wire  updateVec_13_1 = io_update_1_enable & io_update_1_addr[13]; // @[StatusArray.scala 148:57]
  wire  updateVec_13_0 = io_update_0_enable & io_update_0_addr[13]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_447 = {updateVec_13_1,updateVec_13_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_13 = |_T_447; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_861 = updateVec_13_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_862 = updateVec_13_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_13_psrc_1 = _updateStatus_T_861 | _updateStatus_T_862; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_13_psrc_1 = updateValid_13 ? updateVal_13_psrc_1 : statusArray_13_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_279 = io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_279 = pdestMatch_279 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_27 = io_wakeup_9_valid & stateCond_279; // @[StatusArray.scala 129:16]
  wire  pdestMatch_278 = io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_278 = pdestMatch_278 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_27 = io_wakeup_8_valid & stateCond_278; // @[StatusArray.scala 129:16]
  wire  pdestMatch_277 = io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_277 = pdestMatch_277 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_27 = io_wakeup_7_valid & stateCond_277; // @[StatusArray.scala 129:16]
  wire  pdestMatch_276 = io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_276 = pdestMatch_276 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_27 = io_wakeup_6_valid & stateCond_276; // @[StatusArray.scala 129:16]
  wire  pdestMatch_275 = io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_275 = pdestMatch_275 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_27 = io_wakeup_5_valid & stateCond_275; // @[StatusArray.scala 129:16]
  wire  pdestMatch_274 = io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_274 = pdestMatch_274 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_27 = io_wakeup_4_valid & stateCond_274; // @[StatusArray.scala 129:16]
  wire  pdestMatch_273 = io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_273 = pdestMatch_273 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_27 = io_wakeup_3_valid & stateCond_273; // @[StatusArray.scala 129:16]
  wire  pdestMatch_272 = io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_272 = pdestMatch_272 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_27 = io_wakeup_2_valid & stateCond_272; // @[StatusArray.scala 129:16]
  wire  pdestMatch_271 = io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_271 = pdestMatch_271 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_27 = io_wakeup_1_valid & stateCond_271; // @[StatusArray.scala 129:16]
  wire  pdestMatch_270 = io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_270 = pdestMatch_270 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_27 = io_wakeup_0_valid & stateCond_270; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_27 = {stateMatchVec_9_27,stateMatchVec_8_27,stateMatchVec_7_27,stateMatchVec_6_27,
    stateMatchVec_5_27,stateMatchVec_4_27,stateMatchVec_3_27,stateMatchVec_2_27,stateMatchVec_1_27,stateMatchVec_0_27}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_13 = |_stateMatch_T_27; // @[StatusArray.scala 131:52]
  wire  updateVal_13_srcState_1 = updateVec_13_0 & io_update_0_data_srcState_1 | updateVec_13_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1933 = updateValid_13 ? updateVal_13_srcState_1 : statusArray_13_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_13_srcState_1 = stateWakeupEn_1_13 | _T_1933; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_858 = updateVec_13_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_859 = updateVec_13_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_13_psrc_0 = _updateStatus_T_858 | _updateStatus_T_859; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_269 = io_wakeup_9_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_269 = pdestMatch_269 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_26 = io_wakeup_9_valid & stateCond_269; // @[StatusArray.scala 129:16]
  wire  pdestMatch_268 = io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_268 = pdestMatch_268 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_26 = io_wakeup_8_valid & stateCond_268; // @[StatusArray.scala 129:16]
  wire  pdestMatch_267 = io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_267 = pdestMatch_267 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_26 = io_wakeup_7_valid & stateCond_267; // @[StatusArray.scala 129:16]
  wire  pdestMatch_266 = io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_266 = pdestMatch_266 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_26 = io_wakeup_6_valid & stateCond_266; // @[StatusArray.scala 129:16]
  wire  pdestMatch_265 = io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_265 = pdestMatch_265 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_26 = io_wakeup_5_valid & stateCond_265; // @[StatusArray.scala 129:16]
  wire  pdestMatch_264 = io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_264 = pdestMatch_264 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_26 = io_wakeup_4_valid & stateCond_264; // @[StatusArray.scala 129:16]
  wire  pdestMatch_263 = io_wakeup_3_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_263 = pdestMatch_263 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_26 = io_wakeup_3_valid & stateCond_263; // @[StatusArray.scala 129:16]
  wire  pdestMatch_262 = io_wakeup_2_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_262 = pdestMatch_262 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_26 = io_wakeup_2_valid & stateCond_262; // @[StatusArray.scala 129:16]
  wire  pdestMatch_261 = io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_261 = pdestMatch_261 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_26 = io_wakeup_1_valid & stateCond_261; // @[StatusArray.scala 129:16]
  wire  pdestMatch_260 = io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_260 = pdestMatch_260 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_26 = io_wakeup_0_valid & stateCond_260; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_26 = {stateMatchVec_9_26,stateMatchVec_8_26,stateMatchVec_7_26,stateMatchVec_6_26,
    stateMatchVec_5_26,stateMatchVec_4_26,stateMatchVec_3_26,stateMatchVec_2_26,stateMatchVec_1_26,stateMatchVec_0_26}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_26; // @[StatusArray.scala 131:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1931 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_1931; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_65 = {statusArrayNext_13_srcState_1,statusArrayNext_13_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_13 = &_readyVecNext_T_65; // @[StatusArray.scala 61:38]
  wire  updateVec_14_1 = io_update_1_enable & io_update_1_addr[14]; // @[StatusArray.scala 148:57]
  wire  updateVec_14_0 = io_update_0_enable & io_update_0_addr[14]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_451 = {updateVec_14_1,updateVec_14_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_14 = |_T_451; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_924 = updateVec_14_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_925 = updateVec_14_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_14_psrc_1 = _updateStatus_T_924 | _updateStatus_T_925; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_14_psrc_1 = updateValid_14 ? updateVal_14_psrc_1 : statusArray_14_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_299 = io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_299 = pdestMatch_299 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_29 = io_wakeup_9_valid & stateCond_299; // @[StatusArray.scala 129:16]
  wire  pdestMatch_298 = io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_298 = pdestMatch_298 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_29 = io_wakeup_8_valid & stateCond_298; // @[StatusArray.scala 129:16]
  wire  pdestMatch_297 = io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_297 = pdestMatch_297 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_29 = io_wakeup_7_valid & stateCond_297; // @[StatusArray.scala 129:16]
  wire  pdestMatch_296 = io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_296 = pdestMatch_296 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_29 = io_wakeup_6_valid & stateCond_296; // @[StatusArray.scala 129:16]
  wire  pdestMatch_295 = io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_295 = pdestMatch_295 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_29 = io_wakeup_5_valid & stateCond_295; // @[StatusArray.scala 129:16]
  wire  pdestMatch_294 = io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_294 = pdestMatch_294 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_29 = io_wakeup_4_valid & stateCond_294; // @[StatusArray.scala 129:16]
  wire  pdestMatch_293 = io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_293 = pdestMatch_293 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_29 = io_wakeup_3_valid & stateCond_293; // @[StatusArray.scala 129:16]
  wire  pdestMatch_292 = io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_292 = pdestMatch_292 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_29 = io_wakeup_2_valid & stateCond_292; // @[StatusArray.scala 129:16]
  wire  pdestMatch_291 = io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_291 = pdestMatch_291 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_29 = io_wakeup_1_valid & stateCond_291; // @[StatusArray.scala 129:16]
  wire  pdestMatch_290 = io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_290 = pdestMatch_290 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_29 = io_wakeup_0_valid & stateCond_290; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_29 = {stateMatchVec_9_29,stateMatchVec_8_29,stateMatchVec_7_29,stateMatchVec_6_29,
    stateMatchVec_5_29,stateMatchVec_4_29,stateMatchVec_3_29,stateMatchVec_2_29,stateMatchVec_1_29,stateMatchVec_0_29}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_14 = |_stateMatch_T_29; // @[StatusArray.scala 131:52]
  wire  updateVal_14_srcState_1 = updateVec_14_0 & io_update_0_data_srcState_1 | updateVec_14_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_1992 = updateValid_14 ? updateVal_14_srcState_1 : statusArray_14_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_14_srcState_1 = stateWakeupEn_1_14 | _T_1992; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_921 = updateVec_14_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_922 = updateVec_14_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_14_psrc_0 = _updateStatus_T_921 | _updateStatus_T_922; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_289 = io_wakeup_9_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_289 = pdestMatch_289 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_28 = io_wakeup_9_valid & stateCond_289; // @[StatusArray.scala 129:16]
  wire  pdestMatch_288 = io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_288 = pdestMatch_288 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_28 = io_wakeup_8_valid & stateCond_288; // @[StatusArray.scala 129:16]
  wire  pdestMatch_287 = io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_287 = pdestMatch_287 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_28 = io_wakeup_7_valid & stateCond_287; // @[StatusArray.scala 129:16]
  wire  pdestMatch_286 = io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_286 = pdestMatch_286 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_28 = io_wakeup_6_valid & stateCond_286; // @[StatusArray.scala 129:16]
  wire  pdestMatch_285 = io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_285 = pdestMatch_285 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_28 = io_wakeup_5_valid & stateCond_285; // @[StatusArray.scala 129:16]
  wire  pdestMatch_284 = io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_284 = pdestMatch_284 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_28 = io_wakeup_4_valid & stateCond_284; // @[StatusArray.scala 129:16]
  wire  pdestMatch_283 = io_wakeup_3_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_283 = pdestMatch_283 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_28 = io_wakeup_3_valid & stateCond_283; // @[StatusArray.scala 129:16]
  wire  pdestMatch_282 = io_wakeup_2_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_282 = pdestMatch_282 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_28 = io_wakeup_2_valid & stateCond_282; // @[StatusArray.scala 129:16]
  wire  pdestMatch_281 = io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_281 = pdestMatch_281 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_28 = io_wakeup_1_valid & stateCond_281; // @[StatusArray.scala 129:16]
  wire  pdestMatch_280 = io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_280 = pdestMatch_280 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_28 = io_wakeup_0_valid & stateCond_280; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_28 = {stateMatchVec_9_28,stateMatchVec_8_28,stateMatchVec_7_28,stateMatchVec_6_28,
    stateMatchVec_5_28,stateMatchVec_4_28,stateMatchVec_3_28,stateMatchVec_2_28,stateMatchVec_1_28,stateMatchVec_0_28}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_28; // @[StatusArray.scala 131:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1990 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_1990; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_70 = {statusArrayNext_14_srcState_1,statusArrayNext_14_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_14 = &_readyVecNext_T_70; // @[StatusArray.scala 61:38]
  wire  updateVec_15_1 = io_update_1_enable & io_update_1_addr[15]; // @[StatusArray.scala 148:57]
  wire  updateVec_15_0 = io_update_0_enable & io_update_0_addr[15]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_455 = {updateVec_15_1,updateVec_15_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_15 = |_T_455; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_987 = updateVec_15_0 ? io_update_0_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_988 = updateVec_15_1 ? io_update_1_data_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_15_psrc_1 = _updateStatus_T_987 | _updateStatus_T_988; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_15_psrc_1 = updateValid_15 ? updateVal_15_psrc_1 : statusArray_15_psrc_1; // @[StatusArray.scala 243:27]
  wire  pdestMatch_319 = io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_319 = pdestMatch_319 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_31 = io_wakeup_9_valid & stateCond_319; // @[StatusArray.scala 129:16]
  wire  pdestMatch_318 = io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_318 = pdestMatch_318 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_31 = io_wakeup_8_valid & stateCond_318; // @[StatusArray.scala 129:16]
  wire  pdestMatch_317 = io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_317 = pdestMatch_317 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_31 = io_wakeup_7_valid & stateCond_317; // @[StatusArray.scala 129:16]
  wire  pdestMatch_316 = io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_316 = pdestMatch_316 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_31 = io_wakeup_6_valid & stateCond_316; // @[StatusArray.scala 129:16]
  wire  pdestMatch_315 = io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_315 = pdestMatch_315 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_31 = io_wakeup_5_valid & stateCond_315; // @[StatusArray.scala 129:16]
  wire  pdestMatch_314 = io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_314 = pdestMatch_314 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_31 = io_wakeup_4_valid & stateCond_314; // @[StatusArray.scala 129:16]
  wire  pdestMatch_313 = io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_313 = pdestMatch_313 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_31 = io_wakeup_3_valid & stateCond_313; // @[StatusArray.scala 129:16]
  wire  pdestMatch_312 = io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_312 = pdestMatch_312 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_31 = io_wakeup_2_valid & stateCond_312; // @[StatusArray.scala 129:16]
  wire  pdestMatch_311 = io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_311 = pdestMatch_311 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_31 = io_wakeup_1_valid & stateCond_311; // @[StatusArray.scala 129:16]
  wire  pdestMatch_310 = io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_1; // @[Bundle.scala 266:30]
  wire  stateCond_310 = pdestMatch_310 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_31 = io_wakeup_0_valid & stateCond_310; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_31 = {stateMatchVec_9_31,stateMatchVec_8_31,stateMatchVec_7_31,stateMatchVec_6_31,
    stateMatchVec_5_31,stateMatchVec_4_31,stateMatchVec_3_31,stateMatchVec_2_31,stateMatchVec_1_31,stateMatchVec_0_31}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_1_15 = |_stateMatch_T_31; // @[StatusArray.scala 131:52]
  wire  updateVal_15_srcState_1 = updateVec_15_0 & io_update_0_data_srcState_1 | updateVec_15_1 &
    io_update_1_data_srcState_1; // @[Mux.scala 27:73]
  wire  _T_2051 = updateValid_15 ? updateVal_15_srcState_1 : statusArray_15_srcState_1; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_15_srcState_1 = stateWakeupEn_1_15 | _T_2051; // @[StatusArray.scala 236:50]
  wire [5:0] _updateStatus_T_984 = updateVec_15_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_985 = updateVec_15_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_15_psrc_0 = _updateStatus_T_984 | _updateStatus_T_985; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_309 = io_wakeup_9_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_309 = pdestMatch_309 & io_wakeup_9_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_9_30 = io_wakeup_9_valid & stateCond_309; // @[StatusArray.scala 129:16]
  wire  pdestMatch_308 = io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_308 = pdestMatch_308 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_8_30 = io_wakeup_8_valid & stateCond_308; // @[StatusArray.scala 129:16]
  wire  pdestMatch_307 = io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_307 = pdestMatch_307 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_7_30 = io_wakeup_7_valid & stateCond_307; // @[StatusArray.scala 129:16]
  wire  pdestMatch_306 = io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_306 = pdestMatch_306 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_6_30 = io_wakeup_6_valid & stateCond_306; // @[StatusArray.scala 129:16]
  wire  pdestMatch_305 = io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_305 = pdestMatch_305 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_5_30 = io_wakeup_5_valid & stateCond_305; // @[StatusArray.scala 129:16]
  wire  pdestMatch_304 = io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_304 = pdestMatch_304 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_4_30 = io_wakeup_4_valid & stateCond_304; // @[StatusArray.scala 129:16]
  wire  pdestMatch_303 = io_wakeup_3_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_303 = pdestMatch_303 & io_wakeup_3_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_3_30 = io_wakeup_3_valid & stateCond_303; // @[StatusArray.scala 129:16]
  wire  pdestMatch_302 = io_wakeup_2_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_302 = pdestMatch_302 & io_wakeup_2_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_2_30 = io_wakeup_2_valid & stateCond_302; // @[StatusArray.scala 129:16]
  wire  pdestMatch_301 = io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_301 = pdestMatch_301 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_1_30 = io_wakeup_1_valid & stateCond_301; // @[StatusArray.scala 129:16]
  wire  pdestMatch_300 = io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_300 = pdestMatch_300 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  stateMatchVec_0_30 = io_wakeup_0_valid & stateCond_300; // @[StatusArray.scala 129:16]
  wire [9:0] _stateMatch_T_30 = {stateMatchVec_9_30,stateMatchVec_8_30,stateMatchVec_7_30,stateMatchVec_6_30,
    stateMatchVec_5_30,stateMatchVec_4_30,stateMatchVec_3_30,stateMatchVec_2_30,stateMatchVec_1_30,stateMatchVec_0_30}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_30; // @[StatusArray.scala 131:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_2049 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_2049; // @[StatusArray.scala 236:50]
  wire [1:0] _readyVecNext_T_75 = {statusArrayNext_15_srcState_1,statusArrayNext_15_srcState_0}; // @[StatusArray.scala 61:31]
  wire  readyVecNext_15 = &_readyVecNext_T_75; // @[StatusArray.scala 61:38]
  wire [4:0] _updateStatus_T_27 = updateVec__0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_28 = updateVec__1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_0_robIdx_value = _updateStatus_T_27 | _updateStatus_T_28; // @[Mux.scala 27:73]
  wire  updateVal_0_robIdx_flag = updateVec__0 & io_update_0_data_robIdx_flag | updateVec__1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_33 = updateVec__0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_34 = updateVec__1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_0 = _updateStatus_T_33 | _updateStatus_T_34; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_36 = updateVec__0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_37 = updateVec__1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_1 = _updateStatus_T_36 | _updateStatus_T_37; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_90 = updateVec_1_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_91 = updateVec_1_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_1_robIdx_value = _updateStatus_T_90 | _updateStatus_T_91; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_96 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_97 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_96 | _updateStatus_T_97; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_99 = updateVec_1_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_100 = updateVec_1_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_1 = _updateStatus_T_99 | _updateStatus_T_100; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_153 = updateVec_2_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_154 = updateVec_2_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_2_robIdx_value = _updateStatus_T_153 | _updateStatus_T_154; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_159 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_160 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_159 | _updateStatus_T_160; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_162 = updateVec_2_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_163 = updateVec_2_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_1 = _updateStatus_T_162 | _updateStatus_T_163; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_216 = updateVec_3_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_217 = updateVec_3_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_3_robIdx_value = _updateStatus_T_216 | _updateStatus_T_217; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_222 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_223 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_222 | _updateStatus_T_223; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_225 = updateVec_3_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_226 = updateVec_3_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_1 = _updateStatus_T_225 | _updateStatus_T_226; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_279 = updateVec_4_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_280 = updateVec_4_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_4_robIdx_value = _updateStatus_T_279 | _updateStatus_T_280; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_285 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_286 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_285 | _updateStatus_T_286; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_288 = updateVec_4_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_289 = updateVec_4_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_1 = _updateStatus_T_288 | _updateStatus_T_289; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_342 = updateVec_5_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_343 = updateVec_5_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_5_robIdx_value = _updateStatus_T_342 | _updateStatus_T_343; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_348 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_349 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_348 | _updateStatus_T_349; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_351 = updateVec_5_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_352 = updateVec_5_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_1 = _updateStatus_T_351 | _updateStatus_T_352; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_405 = updateVec_6_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_406 = updateVec_6_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_6_robIdx_value = _updateStatus_T_405 | _updateStatus_T_406; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_411 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_412 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_411 | _updateStatus_T_412; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_414 = updateVec_6_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_415 = updateVec_6_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_1 = _updateStatus_T_414 | _updateStatus_T_415; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_468 = updateVec_7_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_469 = updateVec_7_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_7_robIdx_value = _updateStatus_T_468 | _updateStatus_T_469; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_474 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_475 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_474 | _updateStatus_T_475; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_477 = updateVec_7_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_478 = updateVec_7_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_1 = _updateStatus_T_477 | _updateStatus_T_478; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_531 = updateVec_8_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_532 = updateVec_8_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_8_robIdx_value = _updateStatus_T_531 | _updateStatus_T_532; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_537 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_538 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_537 | _updateStatus_T_538; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_540 = updateVec_8_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_541 = updateVec_8_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_1 = _updateStatus_T_540 | _updateStatus_T_541; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_594 = updateVec_9_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_595 = updateVec_9_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_9_robIdx_value = _updateStatus_T_594 | _updateStatus_T_595; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_600 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_601 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_600 | _updateStatus_T_601; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_603 = updateVec_9_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_604 = updateVec_9_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_1 = _updateStatus_T_603 | _updateStatus_T_604; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_657 = updateVec_10_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_658 = updateVec_10_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_10_robIdx_value = _updateStatus_T_657 | _updateStatus_T_658; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_663 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_664 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_663 | _updateStatus_T_664; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_666 = updateVec_10_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_667 = updateVec_10_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_1 = _updateStatus_T_666 | _updateStatus_T_667; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_720 = updateVec_11_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_721 = updateVec_11_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_11_robIdx_value = _updateStatus_T_720 | _updateStatus_T_721; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_726 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_727 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_726 | _updateStatus_T_727; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_729 = updateVec_11_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_730 = updateVec_11_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_1 = _updateStatus_T_729 | _updateStatus_T_730; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_783 = updateVec_12_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_784 = updateVec_12_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_12_robIdx_value = _updateStatus_T_783 | _updateStatus_T_784; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_789 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_790 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_789 | _updateStatus_T_790; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_792 = updateVec_12_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_793 = updateVec_12_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_1 = _updateStatus_T_792 | _updateStatus_T_793; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_846 = updateVec_13_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_847 = updateVec_13_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_13_robIdx_value = _updateStatus_T_846 | _updateStatus_T_847; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_852 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_853 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_852 | _updateStatus_T_853; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_855 = updateVec_13_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_856 = updateVec_13_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_1 = _updateStatus_T_855 | _updateStatus_T_856; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_909 = updateVec_14_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_910 = updateVec_14_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_14_robIdx_value = _updateStatus_T_909 | _updateStatus_T_910; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_915 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_916 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_915 | _updateStatus_T_916; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_918 = updateVec_14_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_919 = updateVec_14_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_1 = _updateStatus_T_918 | _updateStatus_T_919; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_972 = updateVec_15_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_973 = updateVec_15_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_15_robIdx_value = _updateStatus_T_972 | _updateStatus_T_973; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_978 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_979 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_978 | _updateStatus_T_979; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_981 = updateVec_15_0 ? io_update_0_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_982 = updateVec_15_1 ? io_update_1_data_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_1 = _updateStatus_T_981 | _updateStatus_T_982; // @[Mux.scala 27:73]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_465 = {mask__4,mask__3,mask__2,mask__1,mask__0}; // @[StatusArray.scala 139:63]
  wire  deqValid = |_T_465; // @[StatusArray.scala 140:32]
  wire  xs_4 = mask__4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_469 = mask__0 | mask__1 | (mask__2 | (mask__3 | xs_4)); // @[ParallelMux.scala 36:53]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_506 = {mask_1_4,mask_1_3,mask_1_2,mask_1_1,mask_1_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_1 = |_T_506; // @[StatusArray.scala 140:32]
  wire  xs_4_1 = mask_1_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_510 = mask_1_0 | mask_1_1 | (mask_1_2 | (mask_1_3 | xs_4_1)); // @[ParallelMux.scala 36:53]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_547 = {mask_2_4,mask_2_3,mask_2_2,mask_2_1,mask_2_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_2 = |_T_547; // @[StatusArray.scala 140:32]
  wire  xs_4_2 = mask_2_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_551 = mask_2_0 | mask_2_1 | (mask_2_2 | (mask_2_3 | xs_4_2)); // @[ParallelMux.scala 36:53]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_588 = {mask_3_4,mask_3_3,mask_3_2,mask_3_1,mask_3_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_3 = |_T_588; // @[StatusArray.scala 140:32]
  wire  xs_4_3 = mask_3_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_592 = mask_3_0 | mask_3_1 | (mask_3_2 | (mask_3_3 | xs_4_3)); // @[ParallelMux.scala 36:53]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_629 = {mask_4_4,mask_4_3,mask_4_2,mask_4_1,mask_4_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_4 = |_T_629; // @[StatusArray.scala 140:32]
  wire  xs_4_4 = mask_4_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_633 = mask_4_0 | mask_4_1 | (mask_4_2 | (mask_4_3 | xs_4_4)); // @[ParallelMux.scala 36:53]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_670 = {mask_5_4,mask_5_3,mask_5_2,mask_5_1,mask_5_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_5 = |_T_670; // @[StatusArray.scala 140:32]
  wire  xs_4_5 = mask_5_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_674 = mask_5_0 | mask_5_1 | (mask_5_2 | (mask_5_3 | xs_4_5)); // @[ParallelMux.scala 36:53]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_711 = {mask_6_4,mask_6_3,mask_6_2,mask_6_1,mask_6_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_6 = |_T_711; // @[StatusArray.scala 140:32]
  wire  xs_4_6 = mask_6_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_715 = mask_6_0 | mask_6_1 | (mask_6_2 | (mask_6_3 | xs_4_6)); // @[ParallelMux.scala 36:53]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_752 = {mask_7_4,mask_7_3,mask_7_2,mask_7_1,mask_7_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_7 = |_T_752; // @[StatusArray.scala 140:32]
  wire  xs_4_7 = mask_7_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_756 = mask_7_0 | mask_7_1 | (mask_7_2 | (mask_7_3 | xs_4_7)); // @[ParallelMux.scala 36:53]
  wire  mask_8_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_793 = {mask_8_4,mask_8_3,mask_8_2,mask_8_1,mask_8_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_8 = |_T_793; // @[StatusArray.scala 140:32]
  wire  xs_4_8 = mask_8_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_797 = mask_8_0 | mask_8_1 | (mask_8_2 | (mask_8_3 | xs_4_8)); // @[ParallelMux.scala 36:53]
  wire  mask_9_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_834 = {mask_9_4,mask_9_3,mask_9_2,mask_9_1,mask_9_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_9 = |_T_834; // @[StatusArray.scala 140:32]
  wire  xs_4_9 = mask_9_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_838 = mask_9_0 | mask_9_1 | (mask_9_2 | (mask_9_3 | xs_4_9)); // @[ParallelMux.scala 36:53]
  wire  mask_10_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_875 = {mask_10_4,mask_10_3,mask_10_2,mask_10_1,mask_10_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_10 = |_T_875; // @[StatusArray.scala 140:32]
  wire  xs_4_10 = mask_10_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_879 = mask_10_0 | mask_10_1 | (mask_10_2 | (mask_10_3 | xs_4_10)); // @[ParallelMux.scala 36:53]
  wire  mask_11_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_916 = {mask_11_4,mask_11_3,mask_11_2,mask_11_1,mask_11_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_11 = |_T_916; // @[StatusArray.scala 140:32]
  wire  xs_4_11 = mask_11_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_920 = mask_11_0 | mask_11_1 | (mask_11_2 | (mask_11_3 | xs_4_11)); // @[ParallelMux.scala 36:53]
  wire  mask_12_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_957 = {mask_12_4,mask_12_3,mask_12_2,mask_12_1,mask_12_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_12 = |_T_957; // @[StatusArray.scala 140:32]
  wire  xs_4_12 = mask_12_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_961 = mask_12_0 | mask_12_1 | (mask_12_2 | (mask_12_3 | xs_4_12)); // @[ParallelMux.scala 36:53]
  wire  mask_13_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_998 = {mask_13_4,mask_13_3,mask_13_2,mask_13_1,mask_13_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_13 = |_T_998; // @[StatusArray.scala 140:32]
  wire  xs_4_13 = mask_13_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_1002 = mask_13_0 | mask_13_1 | (mask_13_2 | (mask_13_3 | xs_4_13)); // @[ParallelMux.scala 36:53]
  wire  mask_14_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_1039 = {mask_14_4,mask_14_3,mask_14_2,mask_14_1,mask_14_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_14 = |_T_1039; // @[StatusArray.scala 140:32]
  wire  xs_4_14 = mask_14_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_1043 = mask_14_0 | mask_14_1 | (mask_14_2 | (mask_14_3 | xs_4_14)); // @[ParallelMux.scala 36:53]
  wire  mask_15_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_1080 = {mask_15_4,mask_15_3,mask_15_2,mask_15_1,mask_15_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_15 = |_T_1080; // @[StatusArray.scala 140:32]
  wire  xs_4_15 = mask_15_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_1084 = mask_15_0 | mask_15_1 | (mask_15_2 | (mask_15_3 | xs_4_15)); // @[ParallelMux.scala 36:53]
  wire  realValid = updateValid_0 | statusArrayValid_0; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_0_robIdx_flag = updateValid_0 ? updateVal_0_robIdx_flag : statusArray_0_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_0_robIdx_value = updateValid_0 ? updateVal_0_robIdx_value : statusArray_0_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_1 = {statusArrayNext_0_robIdx_flag,statusArrayNext_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag = statusArrayNext_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare = statusArrayNext_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 143:20]
  wire  _flushedVec_0_T_1 = deqValid & _T_469; // @[StatusArray.scala 166:64]
  wire  flushedVec_0 = realValid & isFlushed | deqValid & _T_469; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_0 = realValid & ~(isFlushed | _flushedVec_0_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond = pdestMatch & (rfDataMatch & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0 = io_wakeup_0_valid & dataCond; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_1 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_1 = pdestMatch_1 & (rfDataMatch_1 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1 = io_wakeup_1_valid & dataCond_1; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_2 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_2 = pdestMatch_2 & (rfDataMatch_2 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2 = io_wakeup_2_valid & dataCond_2; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_3 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_3 = pdestMatch_3 & (rfDataMatch_3 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3 = io_wakeup_3_valid & dataCond_3; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_4 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_4 = pdestMatch_4 & (rfDataMatch_4 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4 = io_wakeup_4_valid & dataCond_4; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_5 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_5 = pdestMatch_5 & (rfDataMatch_5 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5 = io_wakeup_5_valid & dataCond_5; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_6 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_6 = pdestMatch_6 & (rfDataMatch_6 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6 = io_wakeup_6_valid & dataCond_6; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_7 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_7 = pdestMatch_7 & (rfDataMatch_7 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7 = io_wakeup_7_valid & dataCond_7; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_8 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_8 = pdestMatch_8 & (rfDataMatch_8 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8 = io_wakeup_8_valid & dataCond_8; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_9 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_9 = pdestMatch_9 & (rfDataMatch_9 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9 = io_wakeup_9_valid & dataCond_9; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0 = {dataMatchVec_9,dataMatchVec_8,dataMatchVec_7,dataMatchVec_6,dataMatchVec_5,
    dataMatchVec_4,dataMatchVec_3,dataMatchVec_2,dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_0_srcType_1 = updateValid_0 ? updateVal_0_srcType_1 : statusArray_0_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_10 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_50 = statusArrayNext_0_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_10 = pdestMatch_10 & (rfDataMatch_10 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_1 = io_wakeup_0_valid & dataCond_10; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_11 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_11 = pdestMatch_11 & (rfDataMatch_11 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_1 = io_wakeup_1_valid & dataCond_11; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_12 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_12 = pdestMatch_12 & (rfDataMatch_12 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_1 = io_wakeup_2_valid & dataCond_12; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_13 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_13 = pdestMatch_13 & (rfDataMatch_13 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_1 = io_wakeup_3_valid & dataCond_13; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_14 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_14 = pdestMatch_14 & (rfDataMatch_14 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_1 = io_wakeup_4_valid & dataCond_14; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_15 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_15 = pdestMatch_15 & (rfDataMatch_15 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_1 = io_wakeup_5_valid & dataCond_15; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_16 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_16 = pdestMatch_16 & (rfDataMatch_16 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_1 = io_wakeup_6_valid & dataCond_16; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_17 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_17 = pdestMatch_17 & (rfDataMatch_17 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_1 = io_wakeup_7_valid & dataCond_17; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_18 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_18 = pdestMatch_18 & (rfDataMatch_18 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_1 = io_wakeup_8_valid & dataCond_18; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_19 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_0_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_19 = pdestMatch_19 & (rfDataMatch_19 & _dataCond_T_50); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_1 = io_wakeup_9_valid & dataCond_19; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1 = {dataMatchVec_9_1,dataMatchVec_8_1,dataMatchVec_7_1,dataMatchVec_6_1,dataMatchVec_5_1,
    dataMatchVec_4_1,dataMatchVec_3_1,dataMatchVec_2_1,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 132:43]
  wire  realValid_1 = updateValid_1 | statusArrayValid_1; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_1_robIdx_flag = updateValid_1 ? updateVal_1_robIdx_flag : statusArray_1_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_1_robIdx_value = updateValid_1 ? updateVal_1_robIdx_value : statusArray_1_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_5 = {statusArrayNext_1_robIdx_flag,statusArrayNext_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_1 = statusArrayNext_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_1 = statusArrayNext_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_1 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 143:20]
  wire  _flushedVec_1_T_1 = deqValid_1 & _T_510; // @[StatusArray.scala 166:64]
  wire  flushedVec_1 = realValid_1 & isFlushed_1 | deqValid_1 & _T_510; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_1 = realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_20 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_100 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_20 = pdestMatch_20 & (rfDataMatch_20 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_2 = io_wakeup_0_valid & dataCond_20; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_21 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_21 = pdestMatch_21 & (rfDataMatch_21 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_2 = io_wakeup_1_valid & dataCond_21; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_22 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_22 = pdestMatch_22 & (rfDataMatch_22 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_2 = io_wakeup_2_valid & dataCond_22; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_23 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_23 = pdestMatch_23 & (rfDataMatch_23 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_2 = io_wakeup_3_valid & dataCond_23; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_24 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_24 = pdestMatch_24 & (rfDataMatch_24 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_2 = io_wakeup_4_valid & dataCond_24; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_25 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_25 = pdestMatch_25 & (rfDataMatch_25 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_2 = io_wakeup_5_valid & dataCond_25; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_26 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_26 = pdestMatch_26 & (rfDataMatch_26 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_2 = io_wakeup_6_valid & dataCond_26; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_27 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_27 = pdestMatch_27 & (rfDataMatch_27 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_2 = io_wakeup_7_valid & dataCond_27; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_28 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_28 = pdestMatch_28 & (rfDataMatch_28 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_2 = io_wakeup_8_valid & dataCond_28; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_29 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_29 = pdestMatch_29 & (rfDataMatch_29 & _dataCond_T_100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_2 = io_wakeup_9_valid & dataCond_29; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_1 = {dataMatchVec_9_2,dataMatchVec_8_2,dataMatchVec_7_2,dataMatchVec_6_2,dataMatchVec_5_2
    ,dataMatchVec_4_2,dataMatchVec_3_2,dataMatchVec_2_2,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_1_srcType_1 = updateValid_1 ? updateVal_1_srcType_1 : statusArray_1_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_30 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_150 = statusArrayNext_1_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_30 = pdestMatch_30 & (rfDataMatch_30 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_3 = io_wakeup_0_valid & dataCond_30; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_31 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_31 = pdestMatch_31 & (rfDataMatch_31 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_3 = io_wakeup_1_valid & dataCond_31; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_32 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_32 = pdestMatch_32 & (rfDataMatch_32 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_3 = io_wakeup_2_valid & dataCond_32; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_33 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_33 = pdestMatch_33 & (rfDataMatch_33 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_3 = io_wakeup_3_valid & dataCond_33; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_34 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_34 = pdestMatch_34 & (rfDataMatch_34 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_3 = io_wakeup_4_valid & dataCond_34; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_35 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_35 = pdestMatch_35 & (rfDataMatch_35 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_3 = io_wakeup_5_valid & dataCond_35; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_36 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_36 = pdestMatch_36 & (rfDataMatch_36 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_3 = io_wakeup_6_valid & dataCond_36; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_37 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_37 = pdestMatch_37 & (rfDataMatch_37 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_3 = io_wakeup_7_valid & dataCond_37; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_38 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_38 = pdestMatch_38 & (rfDataMatch_38 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_3 = io_wakeup_8_valid & dataCond_38; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_39 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_1_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_39 = pdestMatch_39 & (rfDataMatch_39 & _dataCond_T_150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_3 = io_wakeup_9_valid & dataCond_39; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_1 = {dataMatchVec_9_3,dataMatchVec_8_3,dataMatchVec_7_3,dataMatchVec_6_3,dataMatchVec_5_3
    ,dataMatchVec_4_3,dataMatchVec_3_3,dataMatchVec_2_3,dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 132:43]
  wire  realValid_2 = updateValid_2 | statusArrayValid_2; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_2_robIdx_flag = updateValid_2 ? updateVal_2_robIdx_flag : statusArray_2_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_2_robIdx_value = updateValid_2 ? updateVal_2_robIdx_value : statusArray_2_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_9 = {statusArrayNext_2_robIdx_flag,statusArrayNext_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_2 = statusArrayNext_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_2 = statusArrayNext_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_4 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_2 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_4); // @[Rob.scala 143:20]
  wire  _flushedVec_2_T_1 = deqValid_2 & _T_551; // @[StatusArray.scala 166:64]
  wire  flushedVec_2 = realValid_2 & isFlushed_2 | deqValid_2 & _T_551; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_2 = realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_40 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_200 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_40 = pdestMatch_40 & (rfDataMatch_40 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_4 = io_wakeup_0_valid & dataCond_40; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_41 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_41 = pdestMatch_41 & (rfDataMatch_41 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_4 = io_wakeup_1_valid & dataCond_41; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_42 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_42 = pdestMatch_42 & (rfDataMatch_42 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_4 = io_wakeup_2_valid & dataCond_42; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_43 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_43 = pdestMatch_43 & (rfDataMatch_43 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_4 = io_wakeup_3_valid & dataCond_43; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_44 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_44 = pdestMatch_44 & (rfDataMatch_44 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_4 = io_wakeup_4_valid & dataCond_44; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_45 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_45 = pdestMatch_45 & (rfDataMatch_45 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_4 = io_wakeup_5_valid & dataCond_45; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_46 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_46 = pdestMatch_46 & (rfDataMatch_46 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_4 = io_wakeup_6_valid & dataCond_46; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_47 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_47 = pdestMatch_47 & (rfDataMatch_47 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_4 = io_wakeup_7_valid & dataCond_47; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_48 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_48 = pdestMatch_48 & (rfDataMatch_48 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_4 = io_wakeup_8_valid & dataCond_48; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_49 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_49 = pdestMatch_49 & (rfDataMatch_49 & _dataCond_T_200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_4 = io_wakeup_9_valid & dataCond_49; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_2 = {dataMatchVec_9_4,dataMatchVec_8_4,dataMatchVec_7_4,dataMatchVec_6_4,dataMatchVec_5_4
    ,dataMatchVec_4_4,dataMatchVec_3_4,dataMatchVec_2_4,dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_2_srcType_1 = updateValid_2 ? updateVal_2_srcType_1 : statusArray_2_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_50 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_250 = statusArrayNext_2_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_50 = pdestMatch_50 & (rfDataMatch_50 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_5 = io_wakeup_0_valid & dataCond_50; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_51 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_51 = pdestMatch_51 & (rfDataMatch_51 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_5 = io_wakeup_1_valid & dataCond_51; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_52 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_52 = pdestMatch_52 & (rfDataMatch_52 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_5 = io_wakeup_2_valid & dataCond_52; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_53 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_53 = pdestMatch_53 & (rfDataMatch_53 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_5 = io_wakeup_3_valid & dataCond_53; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_54 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_54 = pdestMatch_54 & (rfDataMatch_54 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_5 = io_wakeup_4_valid & dataCond_54; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_55 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_55 = pdestMatch_55 & (rfDataMatch_55 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_5 = io_wakeup_5_valid & dataCond_55; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_56 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_56 = pdestMatch_56 & (rfDataMatch_56 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_5 = io_wakeup_6_valid & dataCond_56; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_57 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_57 = pdestMatch_57 & (rfDataMatch_57 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_5 = io_wakeup_7_valid & dataCond_57; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_58 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_58 = pdestMatch_58 & (rfDataMatch_58 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_5 = io_wakeup_8_valid & dataCond_58; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_59 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_2_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_59 = pdestMatch_59 & (rfDataMatch_59 & _dataCond_T_250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_5 = io_wakeup_9_valid & dataCond_59; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_2 = {dataMatchVec_9_5,dataMatchVec_8_5,dataMatchVec_7_5,dataMatchVec_6_5,dataMatchVec_5_5
    ,dataMatchVec_4_5,dataMatchVec_3_5,dataMatchVec_2_5,dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 132:43]
  wire  realValid_3 = updateValid_3 | statusArrayValid_3; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_3_robIdx_flag = updateValid_3 ? updateVal_3_robIdx_flag : statusArray_3_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_3_robIdx_value = updateValid_3 ? updateVal_3_robIdx_value : statusArray_3_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_13 = {statusArrayNext_3_robIdx_flag,statusArrayNext_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_3 = statusArrayNext_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_3 = statusArrayNext_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_3 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_6); // @[Rob.scala 143:20]
  wire  _flushedVec_3_T_1 = deqValid_3 & _T_592; // @[StatusArray.scala 166:64]
  wire  flushedVec_3 = realValid_3 & isFlushed_3 | deqValid_3 & _T_592; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_3 = realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_60 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_300 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_60 = pdestMatch_60 & (rfDataMatch_60 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_6 = io_wakeup_0_valid & dataCond_60; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_61 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_61 = pdestMatch_61 & (rfDataMatch_61 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_6 = io_wakeup_1_valid & dataCond_61; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_62 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_62 = pdestMatch_62 & (rfDataMatch_62 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_6 = io_wakeup_2_valid & dataCond_62; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_63 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_63 = pdestMatch_63 & (rfDataMatch_63 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_6 = io_wakeup_3_valid & dataCond_63; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_64 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_64 = pdestMatch_64 & (rfDataMatch_64 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_6 = io_wakeup_4_valid & dataCond_64; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_65 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_65 = pdestMatch_65 & (rfDataMatch_65 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_6 = io_wakeup_5_valid & dataCond_65; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_66 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_66 = pdestMatch_66 & (rfDataMatch_66 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_6 = io_wakeup_6_valid & dataCond_66; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_67 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_67 = pdestMatch_67 & (rfDataMatch_67 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_6 = io_wakeup_7_valid & dataCond_67; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_68 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_68 = pdestMatch_68 & (rfDataMatch_68 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_6 = io_wakeup_8_valid & dataCond_68; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_69 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_69 = pdestMatch_69 & (rfDataMatch_69 & _dataCond_T_300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_6 = io_wakeup_9_valid & dataCond_69; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_3 = {dataMatchVec_9_6,dataMatchVec_8_6,dataMatchVec_7_6,dataMatchVec_6_6,dataMatchVec_5_6
    ,dataMatchVec_4_6,dataMatchVec_3_6,dataMatchVec_2_6,dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_3_srcType_1 = updateValid_3 ? updateVal_3_srcType_1 : statusArray_3_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_70 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_350 = statusArrayNext_3_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_70 = pdestMatch_70 & (rfDataMatch_70 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_7 = io_wakeup_0_valid & dataCond_70; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_71 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_71 = pdestMatch_71 & (rfDataMatch_71 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_7 = io_wakeup_1_valid & dataCond_71; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_72 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_72 = pdestMatch_72 & (rfDataMatch_72 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_7 = io_wakeup_2_valid & dataCond_72; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_73 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_73 = pdestMatch_73 & (rfDataMatch_73 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_7 = io_wakeup_3_valid & dataCond_73; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_74 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_74 = pdestMatch_74 & (rfDataMatch_74 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_7 = io_wakeup_4_valid & dataCond_74; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_75 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_75 = pdestMatch_75 & (rfDataMatch_75 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_7 = io_wakeup_5_valid & dataCond_75; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_76 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_76 = pdestMatch_76 & (rfDataMatch_76 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_7 = io_wakeup_6_valid & dataCond_76; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_77 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_77 = pdestMatch_77 & (rfDataMatch_77 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_7 = io_wakeup_7_valid & dataCond_77; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_78 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_78 = pdestMatch_78 & (rfDataMatch_78 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_7 = io_wakeup_8_valid & dataCond_78; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_79 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_3_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_79 = pdestMatch_79 & (rfDataMatch_79 & _dataCond_T_350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_7 = io_wakeup_9_valid & dataCond_79; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_3 = {dataMatchVec_9_7,dataMatchVec_8_7,dataMatchVec_7_7,dataMatchVec_6_7,dataMatchVec_5_7
    ,dataMatchVec_4_7,dataMatchVec_3_7,dataMatchVec_2_7,dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 132:43]
  wire  realValid_4 = updateValid_4 | statusArrayValid_4; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_4_robIdx_flag = updateValid_4 ? updateVal_4_robIdx_flag : statusArray_4_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_4_robIdx_value = updateValid_4 ? updateVal_4_robIdx_value : statusArray_4_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_17 = {statusArrayNext_4_robIdx_flag,statusArrayNext_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_19 = _isFlushed_flushItself_T_17 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_4 = io_redirect_bits_level & _isFlushed_flushItself_T_19; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_4 = statusArrayNext_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_4 = statusArrayNext_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_8 = isFlushed_differentFlag_4 ^ isFlushed_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_4 = io_redirect_valid & (isFlushed_flushItself_4 | _isFlushed_T_8); // @[Rob.scala 143:20]
  wire  _flushedVec_4_T_1 = deqValid_4 & _T_633; // @[StatusArray.scala 166:64]
  wire  flushedVec_4 = realValid_4 & isFlushed_4 | deqValid_4 & _T_633; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_4 = realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_80 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_400 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_80 = pdestMatch_80 & (rfDataMatch_80 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_8 = io_wakeup_0_valid & dataCond_80; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_81 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_81 = pdestMatch_81 & (rfDataMatch_81 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_8 = io_wakeup_1_valid & dataCond_81; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_82 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_82 = pdestMatch_82 & (rfDataMatch_82 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_8 = io_wakeup_2_valid & dataCond_82; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_83 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_83 = pdestMatch_83 & (rfDataMatch_83 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_8 = io_wakeup_3_valid & dataCond_83; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_84 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_84 = pdestMatch_84 & (rfDataMatch_84 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_8 = io_wakeup_4_valid & dataCond_84; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_85 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_85 = pdestMatch_85 & (rfDataMatch_85 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_8 = io_wakeup_5_valid & dataCond_85; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_86 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_86 = pdestMatch_86 & (rfDataMatch_86 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_8 = io_wakeup_6_valid & dataCond_86; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_87 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_87 = pdestMatch_87 & (rfDataMatch_87 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_8 = io_wakeup_7_valid & dataCond_87; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_88 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_88 = pdestMatch_88 & (rfDataMatch_88 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_8 = io_wakeup_8_valid & dataCond_88; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_89 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_89 = pdestMatch_89 & (rfDataMatch_89 & _dataCond_T_400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_8 = io_wakeup_9_valid & dataCond_89; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_4 = {dataMatchVec_9_8,dataMatchVec_8_8,dataMatchVec_7_8,dataMatchVec_6_8,dataMatchVec_5_8
    ,dataMatchVec_4_8,dataMatchVec_3_8,dataMatchVec_2_8,dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_4_srcType_1 = updateValid_4 ? updateVal_4_srcType_1 : statusArray_4_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_90 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_450 = statusArrayNext_4_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_90 = pdestMatch_90 & (rfDataMatch_90 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_9 = io_wakeup_0_valid & dataCond_90; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_91 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_91 = pdestMatch_91 & (rfDataMatch_91 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_9 = io_wakeup_1_valid & dataCond_91; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_92 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_92 = pdestMatch_92 & (rfDataMatch_92 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_9 = io_wakeup_2_valid & dataCond_92; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_93 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_93 = pdestMatch_93 & (rfDataMatch_93 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_9 = io_wakeup_3_valid & dataCond_93; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_94 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_94 = pdestMatch_94 & (rfDataMatch_94 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_9 = io_wakeup_4_valid & dataCond_94; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_95 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_95 = pdestMatch_95 & (rfDataMatch_95 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_9 = io_wakeup_5_valid & dataCond_95; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_96 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_96 = pdestMatch_96 & (rfDataMatch_96 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_9 = io_wakeup_6_valid & dataCond_96; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_97 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_97 = pdestMatch_97 & (rfDataMatch_97 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_9 = io_wakeup_7_valid & dataCond_97; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_98 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_98 = pdestMatch_98 & (rfDataMatch_98 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_9 = io_wakeup_8_valid & dataCond_98; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_99 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_4_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_99 = pdestMatch_99 & (rfDataMatch_99 & _dataCond_T_450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_9 = io_wakeup_9_valid & dataCond_99; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_4 = {dataMatchVec_9_9,dataMatchVec_8_9,dataMatchVec_7_9,dataMatchVec_6_9,dataMatchVec_5_9
    ,dataMatchVec_4_9,dataMatchVec_3_9,dataMatchVec_2_9,dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 132:43]
  wire  realValid_5 = updateValid_5 | statusArrayValid_5; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_5_robIdx_flag = updateValid_5 ? updateVal_5_robIdx_flag : statusArray_5_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_5_robIdx_value = updateValid_5 ? updateVal_5_robIdx_value : statusArray_5_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_21 = {statusArrayNext_5_robIdx_flag,statusArrayNext_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_23 = _isFlushed_flushItself_T_21 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_5 = io_redirect_bits_level & _isFlushed_flushItself_T_23; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_5 = statusArrayNext_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_5 = statusArrayNext_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_10 = isFlushed_differentFlag_5 ^ isFlushed_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_5 = io_redirect_valid & (isFlushed_flushItself_5 | _isFlushed_T_10); // @[Rob.scala 143:20]
  wire  _flushedVec_5_T_1 = deqValid_5 & _T_674; // @[StatusArray.scala 166:64]
  wire  flushedVec_5 = realValid_5 & isFlushed_5 | deqValid_5 & _T_674; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_5 = realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_100 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_500 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_100 = pdestMatch_100 & (rfDataMatch_100 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_10 = io_wakeup_0_valid & dataCond_100; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_101 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_101 = pdestMatch_101 & (rfDataMatch_101 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_10 = io_wakeup_1_valid & dataCond_101; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_102 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_102 = pdestMatch_102 & (rfDataMatch_102 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_10 = io_wakeup_2_valid & dataCond_102; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_103 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_103 = pdestMatch_103 & (rfDataMatch_103 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_10 = io_wakeup_3_valid & dataCond_103; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_104 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_104 = pdestMatch_104 & (rfDataMatch_104 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_10 = io_wakeup_4_valid & dataCond_104; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_105 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_105 = pdestMatch_105 & (rfDataMatch_105 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_10 = io_wakeup_5_valid & dataCond_105; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_106 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_106 = pdestMatch_106 & (rfDataMatch_106 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_10 = io_wakeup_6_valid & dataCond_106; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_107 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_107 = pdestMatch_107 & (rfDataMatch_107 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_10 = io_wakeup_7_valid & dataCond_107; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_108 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_108 = pdestMatch_108 & (rfDataMatch_108 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_10 = io_wakeup_8_valid & dataCond_108; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_109 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_109 = pdestMatch_109 & (rfDataMatch_109 & _dataCond_T_500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_10 = io_wakeup_9_valid & dataCond_109; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_5 = {dataMatchVec_9_10,dataMatchVec_8_10,dataMatchVec_7_10,dataMatchVec_6_10,
    dataMatchVec_5_10,dataMatchVec_4_10,dataMatchVec_3_10,dataMatchVec_2_10,dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_5_srcType_1 = updateValid_5 ? updateVal_5_srcType_1 : statusArray_5_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_110 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_550 = statusArrayNext_5_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_110 = pdestMatch_110 & (rfDataMatch_110 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_11 = io_wakeup_0_valid & dataCond_110; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_111 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_111 = pdestMatch_111 & (rfDataMatch_111 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_11 = io_wakeup_1_valid & dataCond_111; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_112 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_112 = pdestMatch_112 & (rfDataMatch_112 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_11 = io_wakeup_2_valid & dataCond_112; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_113 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_113 = pdestMatch_113 & (rfDataMatch_113 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_11 = io_wakeup_3_valid & dataCond_113; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_114 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_114 = pdestMatch_114 & (rfDataMatch_114 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_11 = io_wakeup_4_valid & dataCond_114; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_115 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_115 = pdestMatch_115 & (rfDataMatch_115 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_11 = io_wakeup_5_valid & dataCond_115; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_116 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_116 = pdestMatch_116 & (rfDataMatch_116 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_11 = io_wakeup_6_valid & dataCond_116; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_117 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_117 = pdestMatch_117 & (rfDataMatch_117 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_11 = io_wakeup_7_valid & dataCond_117; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_118 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_118 = pdestMatch_118 & (rfDataMatch_118 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_11 = io_wakeup_8_valid & dataCond_118; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_119 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_5_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_119 = pdestMatch_119 & (rfDataMatch_119 & _dataCond_T_550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_11 = io_wakeup_9_valid & dataCond_119; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_5 = {dataMatchVec_9_11,dataMatchVec_8_11,dataMatchVec_7_11,dataMatchVec_6_11,
    dataMatchVec_5_11,dataMatchVec_4_11,dataMatchVec_3_11,dataMatchVec_2_11,dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 132:43]
  wire  realValid_6 = updateValid_6 | statusArrayValid_6; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_6_robIdx_flag = updateValid_6 ? updateVal_6_robIdx_flag : statusArray_6_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_6_robIdx_value = updateValid_6 ? updateVal_6_robIdx_value : statusArray_6_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_25 = {statusArrayNext_6_robIdx_flag,statusArrayNext_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_27 = _isFlushed_flushItself_T_25 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_6 = io_redirect_bits_level & _isFlushed_flushItself_T_27; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_6 = statusArrayNext_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_6 = statusArrayNext_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_12 = isFlushed_differentFlag_6 ^ isFlushed_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_6 = io_redirect_valid & (isFlushed_flushItself_6 | _isFlushed_T_12); // @[Rob.scala 143:20]
  wire  _flushedVec_6_T_1 = deqValid_6 & _T_715; // @[StatusArray.scala 166:64]
  wire  flushedVec_6 = realValid_6 & isFlushed_6 | deqValid_6 & _T_715; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_6 = realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_120 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_600 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_120 = pdestMatch_120 & (rfDataMatch_120 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_12 = io_wakeup_0_valid & dataCond_120; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_121 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_121 = pdestMatch_121 & (rfDataMatch_121 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_12 = io_wakeup_1_valid & dataCond_121; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_122 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_122 = pdestMatch_122 & (rfDataMatch_122 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_12 = io_wakeup_2_valid & dataCond_122; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_123 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_123 = pdestMatch_123 & (rfDataMatch_123 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_12 = io_wakeup_3_valid & dataCond_123; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_124 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_124 = pdestMatch_124 & (rfDataMatch_124 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_12 = io_wakeup_4_valid & dataCond_124; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_125 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_125 = pdestMatch_125 & (rfDataMatch_125 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_12 = io_wakeup_5_valid & dataCond_125; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_126 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_126 = pdestMatch_126 & (rfDataMatch_126 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_12 = io_wakeup_6_valid & dataCond_126; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_127 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_127 = pdestMatch_127 & (rfDataMatch_127 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_12 = io_wakeup_7_valid & dataCond_127; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_128 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_128 = pdestMatch_128 & (rfDataMatch_128 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_12 = io_wakeup_8_valid & dataCond_128; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_129 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_129 = pdestMatch_129 & (rfDataMatch_129 & _dataCond_T_600); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_12 = io_wakeup_9_valid & dataCond_129; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_6 = {dataMatchVec_9_12,dataMatchVec_8_12,dataMatchVec_7_12,dataMatchVec_6_12,
    dataMatchVec_5_12,dataMatchVec_4_12,dataMatchVec_3_12,dataMatchVec_2_12,dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_6_srcType_1 = updateValid_6 ? updateVal_6_srcType_1 : statusArray_6_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_130 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_650 = statusArrayNext_6_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_130 = pdestMatch_130 & (rfDataMatch_130 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_13 = io_wakeup_0_valid & dataCond_130; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_131 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_131 = pdestMatch_131 & (rfDataMatch_131 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_13 = io_wakeup_1_valid & dataCond_131; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_132 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_132 = pdestMatch_132 & (rfDataMatch_132 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_13 = io_wakeup_2_valid & dataCond_132; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_133 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_133 = pdestMatch_133 & (rfDataMatch_133 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_13 = io_wakeup_3_valid & dataCond_133; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_134 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_134 = pdestMatch_134 & (rfDataMatch_134 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_13 = io_wakeup_4_valid & dataCond_134; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_135 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_135 = pdestMatch_135 & (rfDataMatch_135 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_13 = io_wakeup_5_valid & dataCond_135; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_136 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_136 = pdestMatch_136 & (rfDataMatch_136 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_13 = io_wakeup_6_valid & dataCond_136; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_137 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_137 = pdestMatch_137 & (rfDataMatch_137 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_13 = io_wakeup_7_valid & dataCond_137; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_138 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_138 = pdestMatch_138 & (rfDataMatch_138 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_13 = io_wakeup_8_valid & dataCond_138; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_139 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_6_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_139 = pdestMatch_139 & (rfDataMatch_139 & _dataCond_T_650); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_13 = io_wakeup_9_valid & dataCond_139; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_6 = {dataMatchVec_9_13,dataMatchVec_8_13,dataMatchVec_7_13,dataMatchVec_6_13,
    dataMatchVec_5_13,dataMatchVec_4_13,dataMatchVec_3_13,dataMatchVec_2_13,dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 132:43]
  wire  realValid_7 = updateValid_7 | statusArrayValid_7; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_7_robIdx_flag = updateValid_7 ? updateVal_7_robIdx_flag : statusArray_7_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_7_robIdx_value = updateValid_7 ? updateVal_7_robIdx_value : statusArray_7_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_29 = {statusArrayNext_7_robIdx_flag,statusArrayNext_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_31 = _isFlushed_flushItself_T_29 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_7 = io_redirect_bits_level & _isFlushed_flushItself_T_31; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_7 = statusArrayNext_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_7 = statusArrayNext_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_14 = isFlushed_differentFlag_7 ^ isFlushed_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_7 = io_redirect_valid & (isFlushed_flushItself_7 | _isFlushed_T_14); // @[Rob.scala 143:20]
  wire  _flushedVec_7_T_1 = deqValid_7 & _T_756; // @[StatusArray.scala 166:64]
  wire  flushedVec_7 = realValid_7 & isFlushed_7 | deqValid_7 & _T_756; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_7 = realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_140 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_700 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_140 = pdestMatch_140 & (rfDataMatch_140 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_14 = io_wakeup_0_valid & dataCond_140; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_141 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_141 = pdestMatch_141 & (rfDataMatch_141 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_14 = io_wakeup_1_valid & dataCond_141; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_142 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_142 = pdestMatch_142 & (rfDataMatch_142 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_14 = io_wakeup_2_valid & dataCond_142; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_143 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_143 = pdestMatch_143 & (rfDataMatch_143 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_14 = io_wakeup_3_valid & dataCond_143; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_144 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_144 = pdestMatch_144 & (rfDataMatch_144 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_14 = io_wakeup_4_valid & dataCond_144; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_145 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_145 = pdestMatch_145 & (rfDataMatch_145 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_14 = io_wakeup_5_valid & dataCond_145; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_146 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_146 = pdestMatch_146 & (rfDataMatch_146 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_14 = io_wakeup_6_valid & dataCond_146; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_147 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_147 = pdestMatch_147 & (rfDataMatch_147 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_14 = io_wakeup_7_valid & dataCond_147; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_148 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_148 = pdestMatch_148 & (rfDataMatch_148 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_14 = io_wakeup_8_valid & dataCond_148; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_149 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_149 = pdestMatch_149 & (rfDataMatch_149 & _dataCond_T_700); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_14 = io_wakeup_9_valid & dataCond_149; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_7 = {dataMatchVec_9_14,dataMatchVec_8_14,dataMatchVec_7_14,dataMatchVec_6_14,
    dataMatchVec_5_14,dataMatchVec_4_14,dataMatchVec_3_14,dataMatchVec_2_14,dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_7_srcType_1 = updateValid_7 ? updateVal_7_srcType_1 : statusArray_7_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_150 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_750 = statusArrayNext_7_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_150 = pdestMatch_150 & (rfDataMatch_150 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_15 = io_wakeup_0_valid & dataCond_150; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_151 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_151 = pdestMatch_151 & (rfDataMatch_151 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_15 = io_wakeup_1_valid & dataCond_151; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_152 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_152 = pdestMatch_152 & (rfDataMatch_152 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_15 = io_wakeup_2_valid & dataCond_152; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_153 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_153 = pdestMatch_153 & (rfDataMatch_153 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_15 = io_wakeup_3_valid & dataCond_153; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_154 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_154 = pdestMatch_154 & (rfDataMatch_154 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_15 = io_wakeup_4_valid & dataCond_154; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_155 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_155 = pdestMatch_155 & (rfDataMatch_155 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_15 = io_wakeup_5_valid & dataCond_155; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_156 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_156 = pdestMatch_156 & (rfDataMatch_156 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_15 = io_wakeup_6_valid & dataCond_156; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_157 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_157 = pdestMatch_157 & (rfDataMatch_157 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_15 = io_wakeup_7_valid & dataCond_157; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_158 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_158 = pdestMatch_158 & (rfDataMatch_158 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_15 = io_wakeup_8_valid & dataCond_158; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_159 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_7_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_159 = pdestMatch_159 & (rfDataMatch_159 & _dataCond_T_750); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_15 = io_wakeup_9_valid & dataCond_159; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_7 = {dataMatchVec_9_15,dataMatchVec_8_15,dataMatchVec_7_15,dataMatchVec_6_15,
    dataMatchVec_5_15,dataMatchVec_4_15,dataMatchVec_3_15,dataMatchVec_2_15,dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 132:43]
  wire  realValid_8 = updateValid_8 | statusArrayValid_8; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_8_robIdx_flag = updateValid_8 ? updateVal_8_robIdx_flag : statusArray_8_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_8_robIdx_value = updateValid_8 ? updateVal_8_robIdx_value : statusArray_8_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_33 = {statusArrayNext_8_robIdx_flag,statusArrayNext_8_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_35 = _isFlushed_flushItself_T_33 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_8 = io_redirect_bits_level & _isFlushed_flushItself_T_35; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_8 = statusArrayNext_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_8 = statusArrayNext_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_16 = isFlushed_differentFlag_8 ^ isFlushed_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_8 = io_redirect_valid & (isFlushed_flushItself_8 | _isFlushed_T_16); // @[Rob.scala 143:20]
  wire  _flushedVec_8_T_1 = deqValid_8 & _T_797; // @[StatusArray.scala 166:64]
  wire  flushedVec_8 = realValid_8 & isFlushed_8 | deqValid_8 & _T_797; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_8 = realValid_8 & ~(isFlushed_8 | _flushedVec_8_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_160 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_800 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_160 = pdestMatch_160 & (rfDataMatch_160 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_16 = io_wakeup_0_valid & dataCond_160; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_161 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_161 = pdestMatch_161 & (rfDataMatch_161 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_16 = io_wakeup_1_valid & dataCond_161; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_162 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_162 = pdestMatch_162 & (rfDataMatch_162 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_16 = io_wakeup_2_valid & dataCond_162; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_163 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_163 = pdestMatch_163 & (rfDataMatch_163 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_16 = io_wakeup_3_valid & dataCond_163; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_164 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_164 = pdestMatch_164 & (rfDataMatch_164 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_16 = io_wakeup_4_valid & dataCond_164; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_165 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_165 = pdestMatch_165 & (rfDataMatch_165 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_16 = io_wakeup_5_valid & dataCond_165; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_166 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_166 = pdestMatch_166 & (rfDataMatch_166 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_16 = io_wakeup_6_valid & dataCond_166; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_167 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_167 = pdestMatch_167 & (rfDataMatch_167 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_16 = io_wakeup_7_valid & dataCond_167; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_168 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_168 = pdestMatch_168 & (rfDataMatch_168 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_16 = io_wakeup_8_valid & dataCond_168; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_169 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_169 = pdestMatch_169 & (rfDataMatch_169 & _dataCond_T_800); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_16 = io_wakeup_9_valid & dataCond_169; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_8 = {dataMatchVec_9_16,dataMatchVec_8_16,dataMatchVec_7_16,dataMatchVec_6_16,
    dataMatchVec_5_16,dataMatchVec_4_16,dataMatchVec_3_16,dataMatchVec_2_16,dataMatchVec_1_16,dataMatchVec_0_16}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_8_srcType_1 = updateValid_8 ? updateVal_8_srcType_1 : statusArray_8_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_170 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_850 = statusArrayNext_8_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_170 = pdestMatch_170 & (rfDataMatch_170 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_17 = io_wakeup_0_valid & dataCond_170; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_171 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_171 = pdestMatch_171 & (rfDataMatch_171 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_17 = io_wakeup_1_valid & dataCond_171; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_172 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_172 = pdestMatch_172 & (rfDataMatch_172 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_17 = io_wakeup_2_valid & dataCond_172; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_173 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_173 = pdestMatch_173 & (rfDataMatch_173 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_17 = io_wakeup_3_valid & dataCond_173; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_174 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_174 = pdestMatch_174 & (rfDataMatch_174 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_17 = io_wakeup_4_valid & dataCond_174; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_175 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_175 = pdestMatch_175 & (rfDataMatch_175 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_17 = io_wakeup_5_valid & dataCond_175; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_176 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_176 = pdestMatch_176 & (rfDataMatch_176 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_17 = io_wakeup_6_valid & dataCond_176; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_177 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_177 = pdestMatch_177 & (rfDataMatch_177 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_17 = io_wakeup_7_valid & dataCond_177; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_178 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_178 = pdestMatch_178 & (rfDataMatch_178 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_17 = io_wakeup_8_valid & dataCond_178; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_179 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_8_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_179 = pdestMatch_179 & (rfDataMatch_179 & _dataCond_T_850); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_17 = io_wakeup_9_valid & dataCond_179; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_8 = {dataMatchVec_9_17,dataMatchVec_8_17,dataMatchVec_7_17,dataMatchVec_6_17,
    dataMatchVec_5_17,dataMatchVec_4_17,dataMatchVec_3_17,dataMatchVec_2_17,dataMatchVec_1_17,dataMatchVec_0_17}; // @[StatusArray.scala 132:43]
  wire  realValid_9 = updateValid_9 | statusArrayValid_9; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_9_robIdx_flag = updateValid_9 ? updateVal_9_robIdx_flag : statusArray_9_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_9_robIdx_value = updateValid_9 ? updateVal_9_robIdx_value : statusArray_9_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_37 = {statusArrayNext_9_robIdx_flag,statusArrayNext_9_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_39 = _isFlushed_flushItself_T_37 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_9 = io_redirect_bits_level & _isFlushed_flushItself_T_39; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_9 = statusArrayNext_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_9 = statusArrayNext_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_18 = isFlushed_differentFlag_9 ^ isFlushed_compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_9 = io_redirect_valid & (isFlushed_flushItself_9 | _isFlushed_T_18); // @[Rob.scala 143:20]
  wire  _flushedVec_9_T_1 = deqValid_9 & _T_838; // @[StatusArray.scala 166:64]
  wire  flushedVec_9 = realValid_9 & isFlushed_9 | deqValid_9 & _T_838; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_9 = realValid_9 & ~(isFlushed_9 | _flushedVec_9_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_180 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_900 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_180 = pdestMatch_180 & (rfDataMatch_180 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_18 = io_wakeup_0_valid & dataCond_180; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_181 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_181 = pdestMatch_181 & (rfDataMatch_181 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_18 = io_wakeup_1_valid & dataCond_181; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_182 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_182 = pdestMatch_182 & (rfDataMatch_182 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_18 = io_wakeup_2_valid & dataCond_182; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_183 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_183 = pdestMatch_183 & (rfDataMatch_183 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_18 = io_wakeup_3_valid & dataCond_183; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_184 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_184 = pdestMatch_184 & (rfDataMatch_184 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_18 = io_wakeup_4_valid & dataCond_184; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_185 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_185 = pdestMatch_185 & (rfDataMatch_185 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_18 = io_wakeup_5_valid & dataCond_185; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_186 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_186 = pdestMatch_186 & (rfDataMatch_186 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_18 = io_wakeup_6_valid & dataCond_186; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_187 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_187 = pdestMatch_187 & (rfDataMatch_187 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_18 = io_wakeup_7_valid & dataCond_187; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_188 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_188 = pdestMatch_188 & (rfDataMatch_188 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_18 = io_wakeup_8_valid & dataCond_188; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_189 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_189 = pdestMatch_189 & (rfDataMatch_189 & _dataCond_T_900); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_18 = io_wakeup_9_valid & dataCond_189; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_9 = {dataMatchVec_9_18,dataMatchVec_8_18,dataMatchVec_7_18,dataMatchVec_6_18,
    dataMatchVec_5_18,dataMatchVec_4_18,dataMatchVec_3_18,dataMatchVec_2_18,dataMatchVec_1_18,dataMatchVec_0_18}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_9_srcType_1 = updateValid_9 ? updateVal_9_srcType_1 : statusArray_9_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_190 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_950 = statusArrayNext_9_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_190 = pdestMatch_190 & (rfDataMatch_190 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_19 = io_wakeup_0_valid & dataCond_190; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_191 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_191 = pdestMatch_191 & (rfDataMatch_191 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_19 = io_wakeup_1_valid & dataCond_191; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_192 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_192 = pdestMatch_192 & (rfDataMatch_192 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_19 = io_wakeup_2_valid & dataCond_192; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_193 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_193 = pdestMatch_193 & (rfDataMatch_193 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_19 = io_wakeup_3_valid & dataCond_193; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_194 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_194 = pdestMatch_194 & (rfDataMatch_194 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_19 = io_wakeup_4_valid & dataCond_194; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_195 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_195 = pdestMatch_195 & (rfDataMatch_195 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_19 = io_wakeup_5_valid & dataCond_195; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_196 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_196 = pdestMatch_196 & (rfDataMatch_196 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_19 = io_wakeup_6_valid & dataCond_196; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_197 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_197 = pdestMatch_197 & (rfDataMatch_197 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_19 = io_wakeup_7_valid & dataCond_197; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_198 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_198 = pdestMatch_198 & (rfDataMatch_198 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_19 = io_wakeup_8_valid & dataCond_198; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_199 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_9_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_199 = pdestMatch_199 & (rfDataMatch_199 & _dataCond_T_950); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_19 = io_wakeup_9_valid & dataCond_199; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_9 = {dataMatchVec_9_19,dataMatchVec_8_19,dataMatchVec_7_19,dataMatchVec_6_19,
    dataMatchVec_5_19,dataMatchVec_4_19,dataMatchVec_3_19,dataMatchVec_2_19,dataMatchVec_1_19,dataMatchVec_0_19}; // @[StatusArray.scala 132:43]
  wire  realValid_10 = updateValid_10 | statusArrayValid_10; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_10_robIdx_flag = updateValid_10 ? updateVal_10_robIdx_flag : statusArray_10_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_10_robIdx_value = updateValid_10 ? updateVal_10_robIdx_value : statusArray_10_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_41 = {statusArrayNext_10_robIdx_flag,statusArrayNext_10_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_43 = _isFlushed_flushItself_T_41 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_10 = io_redirect_bits_level & _isFlushed_flushItself_T_43; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_10 = statusArrayNext_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_10 = statusArrayNext_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_20 = isFlushed_differentFlag_10 ^ isFlushed_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_10 = io_redirect_valid & (isFlushed_flushItself_10 | _isFlushed_T_20); // @[Rob.scala 143:20]
  wire  _flushedVec_10_T_1 = deqValid_10 & _T_879; // @[StatusArray.scala 166:64]
  wire  flushedVec_10 = realValid_10 & isFlushed_10 | deqValid_10 & _T_879; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_10 = realValid_10 & ~(isFlushed_10 | _flushedVec_10_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_200 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1000 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_200 = pdestMatch_200 & (rfDataMatch_200 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_20 = io_wakeup_0_valid & dataCond_200; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_201 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_201 = pdestMatch_201 & (rfDataMatch_201 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_20 = io_wakeup_1_valid & dataCond_201; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_202 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_202 = pdestMatch_202 & (rfDataMatch_202 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_20 = io_wakeup_2_valid & dataCond_202; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_203 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_203 = pdestMatch_203 & (rfDataMatch_203 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_20 = io_wakeup_3_valid & dataCond_203; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_204 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_204 = pdestMatch_204 & (rfDataMatch_204 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_20 = io_wakeup_4_valid & dataCond_204; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_205 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_205 = pdestMatch_205 & (rfDataMatch_205 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_20 = io_wakeup_5_valid & dataCond_205; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_206 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_206 = pdestMatch_206 & (rfDataMatch_206 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_20 = io_wakeup_6_valid & dataCond_206; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_207 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_207 = pdestMatch_207 & (rfDataMatch_207 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_20 = io_wakeup_7_valid & dataCond_207; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_208 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_208 = pdestMatch_208 & (rfDataMatch_208 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_20 = io_wakeup_8_valid & dataCond_208; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_209 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_209 = pdestMatch_209 & (rfDataMatch_209 & _dataCond_T_1000); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_20 = io_wakeup_9_valid & dataCond_209; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_10 = {dataMatchVec_9_20,dataMatchVec_8_20,dataMatchVec_7_20,dataMatchVec_6_20,
    dataMatchVec_5_20,dataMatchVec_4_20,dataMatchVec_3_20,dataMatchVec_2_20,dataMatchVec_1_20,dataMatchVec_0_20}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_10_srcType_1 = updateValid_10 ? updateVal_10_srcType_1 : statusArray_10_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_210 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1050 = statusArrayNext_10_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_210 = pdestMatch_210 & (rfDataMatch_210 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_21 = io_wakeup_0_valid & dataCond_210; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_211 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_211 = pdestMatch_211 & (rfDataMatch_211 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_21 = io_wakeup_1_valid & dataCond_211; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_212 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_212 = pdestMatch_212 & (rfDataMatch_212 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_21 = io_wakeup_2_valid & dataCond_212; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_213 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_213 = pdestMatch_213 & (rfDataMatch_213 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_21 = io_wakeup_3_valid & dataCond_213; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_214 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_214 = pdestMatch_214 & (rfDataMatch_214 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_21 = io_wakeup_4_valid & dataCond_214; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_215 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_215 = pdestMatch_215 & (rfDataMatch_215 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_21 = io_wakeup_5_valid & dataCond_215; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_216 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_216 = pdestMatch_216 & (rfDataMatch_216 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_21 = io_wakeup_6_valid & dataCond_216; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_217 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_217 = pdestMatch_217 & (rfDataMatch_217 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_21 = io_wakeup_7_valid & dataCond_217; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_218 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_218 = pdestMatch_218 & (rfDataMatch_218 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_21 = io_wakeup_8_valid & dataCond_218; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_219 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_10_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_219 = pdestMatch_219 & (rfDataMatch_219 & _dataCond_T_1050); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_21 = io_wakeup_9_valid & dataCond_219; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_10 = {dataMatchVec_9_21,dataMatchVec_8_21,dataMatchVec_7_21,dataMatchVec_6_21,
    dataMatchVec_5_21,dataMatchVec_4_21,dataMatchVec_3_21,dataMatchVec_2_21,dataMatchVec_1_21,dataMatchVec_0_21}; // @[StatusArray.scala 132:43]
  wire  realValid_11 = updateValid_11 | statusArrayValid_11; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_11_robIdx_flag = updateValid_11 ? updateVal_11_robIdx_flag : statusArray_11_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_11_robIdx_value = updateValid_11 ? updateVal_11_robIdx_value : statusArray_11_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_45 = {statusArrayNext_11_robIdx_flag,statusArrayNext_11_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_47 = _isFlushed_flushItself_T_45 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_11 = io_redirect_bits_level & _isFlushed_flushItself_T_47; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_11 = statusArrayNext_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_11 = statusArrayNext_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_22 = isFlushed_differentFlag_11 ^ isFlushed_compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_11 = io_redirect_valid & (isFlushed_flushItself_11 | _isFlushed_T_22); // @[Rob.scala 143:20]
  wire  _flushedVec_11_T_1 = deqValid_11 & _T_920; // @[StatusArray.scala 166:64]
  wire  flushedVec_11 = realValid_11 & isFlushed_11 | deqValid_11 & _T_920; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_11 = realValid_11 & ~(isFlushed_11 | _flushedVec_11_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_220 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1100 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_220 = pdestMatch_220 & (rfDataMatch_220 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_22 = io_wakeup_0_valid & dataCond_220; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_221 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_221 = pdestMatch_221 & (rfDataMatch_221 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_22 = io_wakeup_1_valid & dataCond_221; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_222 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_222 = pdestMatch_222 & (rfDataMatch_222 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_22 = io_wakeup_2_valid & dataCond_222; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_223 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_223 = pdestMatch_223 & (rfDataMatch_223 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_22 = io_wakeup_3_valid & dataCond_223; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_224 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_224 = pdestMatch_224 & (rfDataMatch_224 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_22 = io_wakeup_4_valid & dataCond_224; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_225 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_225 = pdestMatch_225 & (rfDataMatch_225 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_22 = io_wakeup_5_valid & dataCond_225; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_226 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_226 = pdestMatch_226 & (rfDataMatch_226 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_22 = io_wakeup_6_valid & dataCond_226; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_227 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_227 = pdestMatch_227 & (rfDataMatch_227 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_22 = io_wakeup_7_valid & dataCond_227; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_228 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_228 = pdestMatch_228 & (rfDataMatch_228 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_22 = io_wakeup_8_valid & dataCond_228; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_229 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_229 = pdestMatch_229 & (rfDataMatch_229 & _dataCond_T_1100); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_22 = io_wakeup_9_valid & dataCond_229; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_11 = {dataMatchVec_9_22,dataMatchVec_8_22,dataMatchVec_7_22,dataMatchVec_6_22,
    dataMatchVec_5_22,dataMatchVec_4_22,dataMatchVec_3_22,dataMatchVec_2_22,dataMatchVec_1_22,dataMatchVec_0_22}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_11_srcType_1 = updateValid_11 ? updateVal_11_srcType_1 : statusArray_11_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_230 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1150 = statusArrayNext_11_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_230 = pdestMatch_230 & (rfDataMatch_230 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_23 = io_wakeup_0_valid & dataCond_230; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_231 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_231 = pdestMatch_231 & (rfDataMatch_231 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_23 = io_wakeup_1_valid & dataCond_231; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_232 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_232 = pdestMatch_232 & (rfDataMatch_232 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_23 = io_wakeup_2_valid & dataCond_232; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_233 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_233 = pdestMatch_233 & (rfDataMatch_233 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_23 = io_wakeup_3_valid & dataCond_233; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_234 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_234 = pdestMatch_234 & (rfDataMatch_234 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_23 = io_wakeup_4_valid & dataCond_234; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_235 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_235 = pdestMatch_235 & (rfDataMatch_235 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_23 = io_wakeup_5_valid & dataCond_235; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_236 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_236 = pdestMatch_236 & (rfDataMatch_236 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_23 = io_wakeup_6_valid & dataCond_236; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_237 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_237 = pdestMatch_237 & (rfDataMatch_237 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_23 = io_wakeup_7_valid & dataCond_237; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_238 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_238 = pdestMatch_238 & (rfDataMatch_238 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_23 = io_wakeup_8_valid & dataCond_238; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_239 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_11_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_239 = pdestMatch_239 & (rfDataMatch_239 & _dataCond_T_1150); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_23 = io_wakeup_9_valid & dataCond_239; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_11 = {dataMatchVec_9_23,dataMatchVec_8_23,dataMatchVec_7_23,dataMatchVec_6_23,
    dataMatchVec_5_23,dataMatchVec_4_23,dataMatchVec_3_23,dataMatchVec_2_23,dataMatchVec_1_23,dataMatchVec_0_23}; // @[StatusArray.scala 132:43]
  wire  realValid_12 = updateValid_12 | statusArrayValid_12; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_12_robIdx_flag = updateValid_12 ? updateVal_12_robIdx_flag : statusArray_12_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_12_robIdx_value = updateValid_12 ? updateVal_12_robIdx_value : statusArray_12_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_49 = {statusArrayNext_12_robIdx_flag,statusArrayNext_12_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_51 = _isFlushed_flushItself_T_49 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_12 = io_redirect_bits_level & _isFlushed_flushItself_T_51; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_12 = statusArrayNext_12_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_12 = statusArrayNext_12_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_24 = isFlushed_differentFlag_12 ^ isFlushed_compare_12; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_12 = io_redirect_valid & (isFlushed_flushItself_12 | _isFlushed_T_24); // @[Rob.scala 143:20]
  wire  _flushedVec_12_T_1 = deqValid_12 & _T_961; // @[StatusArray.scala 166:64]
  wire  flushedVec_12 = realValid_12 & isFlushed_12 | deqValid_12 & _T_961; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_12 = realValid_12 & ~(isFlushed_12 | _flushedVec_12_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_240 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1200 = statusArrayNext_12_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_240 = pdestMatch_240 & (rfDataMatch_240 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_24 = io_wakeup_0_valid & dataCond_240; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_241 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_241 = pdestMatch_241 & (rfDataMatch_241 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_24 = io_wakeup_1_valid & dataCond_241; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_242 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_242 = pdestMatch_242 & (rfDataMatch_242 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_24 = io_wakeup_2_valid & dataCond_242; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_243 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_243 = pdestMatch_243 & (rfDataMatch_243 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_24 = io_wakeup_3_valid & dataCond_243; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_244 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_244 = pdestMatch_244 & (rfDataMatch_244 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_24 = io_wakeup_4_valid & dataCond_244; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_245 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_245 = pdestMatch_245 & (rfDataMatch_245 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_24 = io_wakeup_5_valid & dataCond_245; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_246 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_246 = pdestMatch_246 & (rfDataMatch_246 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_24 = io_wakeup_6_valid & dataCond_246; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_247 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_247 = pdestMatch_247 & (rfDataMatch_247 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_24 = io_wakeup_7_valid & dataCond_247; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_248 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_248 = pdestMatch_248 & (rfDataMatch_248 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_24 = io_wakeup_8_valid & dataCond_248; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_249 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_249 = pdestMatch_249 & (rfDataMatch_249 & _dataCond_T_1200); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_24 = io_wakeup_9_valid & dataCond_249; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_12 = {dataMatchVec_9_24,dataMatchVec_8_24,dataMatchVec_7_24,dataMatchVec_6_24,
    dataMatchVec_5_24,dataMatchVec_4_24,dataMatchVec_3_24,dataMatchVec_2_24,dataMatchVec_1_24,dataMatchVec_0_24}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_12_srcType_1 = updateValid_12 ? updateVal_12_srcType_1 : statusArray_12_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_250 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1250 = statusArrayNext_12_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_250 = pdestMatch_250 & (rfDataMatch_250 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_25 = io_wakeup_0_valid & dataCond_250; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_251 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_251 = pdestMatch_251 & (rfDataMatch_251 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_25 = io_wakeup_1_valid & dataCond_251; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_252 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_252 = pdestMatch_252 & (rfDataMatch_252 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_25 = io_wakeup_2_valid & dataCond_252; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_253 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_253 = pdestMatch_253 & (rfDataMatch_253 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_25 = io_wakeup_3_valid & dataCond_253; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_254 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_254 = pdestMatch_254 & (rfDataMatch_254 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_25 = io_wakeup_4_valid & dataCond_254; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_255 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_255 = pdestMatch_255 & (rfDataMatch_255 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_25 = io_wakeup_5_valid & dataCond_255; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_256 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_256 = pdestMatch_256 & (rfDataMatch_256 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_25 = io_wakeup_6_valid & dataCond_256; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_257 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_257 = pdestMatch_257 & (rfDataMatch_257 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_25 = io_wakeup_7_valid & dataCond_257; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_258 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_258 = pdestMatch_258 & (rfDataMatch_258 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_25 = io_wakeup_8_valid & dataCond_258; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_259 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_12_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_259 = pdestMatch_259 & (rfDataMatch_259 & _dataCond_T_1250); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_25 = io_wakeup_9_valid & dataCond_259; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_12 = {dataMatchVec_9_25,dataMatchVec_8_25,dataMatchVec_7_25,dataMatchVec_6_25,
    dataMatchVec_5_25,dataMatchVec_4_25,dataMatchVec_3_25,dataMatchVec_2_25,dataMatchVec_1_25,dataMatchVec_0_25}; // @[StatusArray.scala 132:43]
  wire  realValid_13 = updateValid_13 | statusArrayValid_13; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_13_robIdx_flag = updateValid_13 ? updateVal_13_robIdx_flag : statusArray_13_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_13_robIdx_value = updateValid_13 ? updateVal_13_robIdx_value : statusArray_13_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_53 = {statusArrayNext_13_robIdx_flag,statusArrayNext_13_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_55 = _isFlushed_flushItself_T_53 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_13 = io_redirect_bits_level & _isFlushed_flushItself_T_55; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_13 = statusArrayNext_13_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_13 = statusArrayNext_13_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_26 = isFlushed_differentFlag_13 ^ isFlushed_compare_13; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_13 = io_redirect_valid & (isFlushed_flushItself_13 | _isFlushed_T_26); // @[Rob.scala 143:20]
  wire  _flushedVec_13_T_1 = deqValid_13 & _T_1002; // @[StatusArray.scala 166:64]
  wire  flushedVec_13 = realValid_13 & isFlushed_13 | deqValid_13 & _T_1002; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_13 = realValid_13 & ~(isFlushed_13 | _flushedVec_13_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_260 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1300 = statusArrayNext_13_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_260 = pdestMatch_260 & (rfDataMatch_260 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_26 = io_wakeup_0_valid & dataCond_260; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_261 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_261 = pdestMatch_261 & (rfDataMatch_261 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_26 = io_wakeup_1_valid & dataCond_261; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_262 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_262 = pdestMatch_262 & (rfDataMatch_262 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_26 = io_wakeup_2_valid & dataCond_262; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_263 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_263 = pdestMatch_263 & (rfDataMatch_263 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_26 = io_wakeup_3_valid & dataCond_263; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_264 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_264 = pdestMatch_264 & (rfDataMatch_264 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_26 = io_wakeup_4_valid & dataCond_264; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_265 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_265 = pdestMatch_265 & (rfDataMatch_265 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_26 = io_wakeup_5_valid & dataCond_265; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_266 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_266 = pdestMatch_266 & (rfDataMatch_266 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_26 = io_wakeup_6_valid & dataCond_266; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_267 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_267 = pdestMatch_267 & (rfDataMatch_267 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_26 = io_wakeup_7_valid & dataCond_267; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_268 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_268 = pdestMatch_268 & (rfDataMatch_268 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_26 = io_wakeup_8_valid & dataCond_268; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_269 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_269 = pdestMatch_269 & (rfDataMatch_269 & _dataCond_T_1300); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_26 = io_wakeup_9_valid & dataCond_269; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_13 = {dataMatchVec_9_26,dataMatchVec_8_26,dataMatchVec_7_26,dataMatchVec_6_26,
    dataMatchVec_5_26,dataMatchVec_4_26,dataMatchVec_3_26,dataMatchVec_2_26,dataMatchVec_1_26,dataMatchVec_0_26}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_13_srcType_1 = updateValid_13 ? updateVal_13_srcType_1 : statusArray_13_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_270 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1350 = statusArrayNext_13_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_270 = pdestMatch_270 & (rfDataMatch_270 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_27 = io_wakeup_0_valid & dataCond_270; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_271 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_271 = pdestMatch_271 & (rfDataMatch_271 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_27 = io_wakeup_1_valid & dataCond_271; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_272 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_272 = pdestMatch_272 & (rfDataMatch_272 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_27 = io_wakeup_2_valid & dataCond_272; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_273 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_273 = pdestMatch_273 & (rfDataMatch_273 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_27 = io_wakeup_3_valid & dataCond_273; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_274 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_274 = pdestMatch_274 & (rfDataMatch_274 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_27 = io_wakeup_4_valid & dataCond_274; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_275 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_275 = pdestMatch_275 & (rfDataMatch_275 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_27 = io_wakeup_5_valid & dataCond_275; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_276 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_276 = pdestMatch_276 & (rfDataMatch_276 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_27 = io_wakeup_6_valid & dataCond_276; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_277 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_277 = pdestMatch_277 & (rfDataMatch_277 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_27 = io_wakeup_7_valid & dataCond_277; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_278 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_278 = pdestMatch_278 & (rfDataMatch_278 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_27 = io_wakeup_8_valid & dataCond_278; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_279 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_13_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_279 = pdestMatch_279 & (rfDataMatch_279 & _dataCond_T_1350); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_27 = io_wakeup_9_valid & dataCond_279; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_13 = {dataMatchVec_9_27,dataMatchVec_8_27,dataMatchVec_7_27,dataMatchVec_6_27,
    dataMatchVec_5_27,dataMatchVec_4_27,dataMatchVec_3_27,dataMatchVec_2_27,dataMatchVec_1_27,dataMatchVec_0_27}; // @[StatusArray.scala 132:43]
  wire  realValid_14 = updateValid_14 | statusArrayValid_14; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_14_robIdx_flag = updateValid_14 ? updateVal_14_robIdx_flag : statusArray_14_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_14_robIdx_value = updateValid_14 ? updateVal_14_robIdx_value : statusArray_14_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_57 = {statusArrayNext_14_robIdx_flag,statusArrayNext_14_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_59 = _isFlushed_flushItself_T_57 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_14 = io_redirect_bits_level & _isFlushed_flushItself_T_59; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_14 = statusArrayNext_14_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_14 = statusArrayNext_14_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_28 = isFlushed_differentFlag_14 ^ isFlushed_compare_14; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_14 = io_redirect_valid & (isFlushed_flushItself_14 | _isFlushed_T_28); // @[Rob.scala 143:20]
  wire  _flushedVec_14_T_1 = deqValid_14 & _T_1043; // @[StatusArray.scala 166:64]
  wire  flushedVec_14 = realValid_14 & isFlushed_14 | deqValid_14 & _T_1043; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_14 = realValid_14 & ~(isFlushed_14 | _flushedVec_14_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_280 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1400 = statusArrayNext_14_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_280 = pdestMatch_280 & (rfDataMatch_280 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_28 = io_wakeup_0_valid & dataCond_280; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_281 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_281 = pdestMatch_281 & (rfDataMatch_281 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_28 = io_wakeup_1_valid & dataCond_281; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_282 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_282 = pdestMatch_282 & (rfDataMatch_282 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_28 = io_wakeup_2_valid & dataCond_282; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_283 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_283 = pdestMatch_283 & (rfDataMatch_283 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_28 = io_wakeup_3_valid & dataCond_283; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_284 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_284 = pdestMatch_284 & (rfDataMatch_284 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_28 = io_wakeup_4_valid & dataCond_284; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_285 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_285 = pdestMatch_285 & (rfDataMatch_285 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_28 = io_wakeup_5_valid & dataCond_285; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_286 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_286 = pdestMatch_286 & (rfDataMatch_286 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_28 = io_wakeup_6_valid & dataCond_286; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_287 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_287 = pdestMatch_287 & (rfDataMatch_287 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_28 = io_wakeup_7_valid & dataCond_287; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_288 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_288 = pdestMatch_288 & (rfDataMatch_288 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_28 = io_wakeup_8_valid & dataCond_288; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_289 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_289 = pdestMatch_289 & (rfDataMatch_289 & _dataCond_T_1400); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_28 = io_wakeup_9_valid & dataCond_289; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_14 = {dataMatchVec_9_28,dataMatchVec_8_28,dataMatchVec_7_28,dataMatchVec_6_28,
    dataMatchVec_5_28,dataMatchVec_4_28,dataMatchVec_3_28,dataMatchVec_2_28,dataMatchVec_1_28,dataMatchVec_0_28}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_14_srcType_1 = updateValid_14 ? updateVal_14_srcType_1 : statusArray_14_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_290 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1450 = statusArrayNext_14_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_290 = pdestMatch_290 & (rfDataMatch_290 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_29 = io_wakeup_0_valid & dataCond_290; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_291 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_291 = pdestMatch_291 & (rfDataMatch_291 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_29 = io_wakeup_1_valid & dataCond_291; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_292 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_292 = pdestMatch_292 & (rfDataMatch_292 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_29 = io_wakeup_2_valid & dataCond_292; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_293 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_293 = pdestMatch_293 & (rfDataMatch_293 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_29 = io_wakeup_3_valid & dataCond_293; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_294 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_294 = pdestMatch_294 & (rfDataMatch_294 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_29 = io_wakeup_4_valid & dataCond_294; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_295 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_295 = pdestMatch_295 & (rfDataMatch_295 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_29 = io_wakeup_5_valid & dataCond_295; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_296 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_296 = pdestMatch_296 & (rfDataMatch_296 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_29 = io_wakeup_6_valid & dataCond_296; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_297 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_297 = pdestMatch_297 & (rfDataMatch_297 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_29 = io_wakeup_7_valid & dataCond_297; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_298 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_298 = pdestMatch_298 & (rfDataMatch_298 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_29 = io_wakeup_8_valid & dataCond_298; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_299 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_14_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_299 = pdestMatch_299 & (rfDataMatch_299 & _dataCond_T_1450); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_29 = io_wakeup_9_valid & dataCond_299; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_14 = {dataMatchVec_9_29,dataMatchVec_8_29,dataMatchVec_7_29,dataMatchVec_6_29,
    dataMatchVec_5_29,dataMatchVec_4_29,dataMatchVec_3_29,dataMatchVec_2_29,dataMatchVec_1_29,dataMatchVec_0_29}; // @[StatusArray.scala 132:43]
  wire  realValid_15 = updateValid_15 | statusArrayValid_15; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_15_robIdx_flag = updateValid_15 ? updateVal_15_robIdx_flag : statusArray_15_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_15_robIdx_value = updateValid_15 ? updateVal_15_robIdx_value : statusArray_15_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_61 = {statusArrayNext_15_robIdx_flag,statusArrayNext_15_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _isFlushed_flushItself_T_63 = _isFlushed_flushItself_T_61 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  isFlushed_flushItself_15 = io_redirect_bits_level & _isFlushed_flushItself_T_63; // @[Rob.scala 142:51]
  wire  isFlushed_differentFlag_15 = statusArrayNext_15_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  isFlushed_compare_15 = statusArrayNext_15_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _isFlushed_T_30 = isFlushed_differentFlag_15 ^ isFlushed_compare_15; // @[CircularQueuePtr.scala 68:19]
  wire  isFlushed_15 = io_redirect_valid & (isFlushed_flushItself_15 | _isFlushed_T_30); // @[Rob.scala 143:20]
  wire  _flushedVec_15_T_1 = deqValid_15 & _T_1084; // @[StatusArray.scala 166:64]
  wire  flushedVec_15 = realValid_15 & isFlushed_15 | deqValid_15 & _T_1084; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_15 = realValid_15 & ~(isFlushed_15 | _flushedVec_15_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_300 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1500 = statusArrayNext_15_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_300 = pdestMatch_300 & (rfDataMatch_300 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_30 = io_wakeup_0_valid & dataCond_300; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_301 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_301 = pdestMatch_301 & (rfDataMatch_301 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_30 = io_wakeup_1_valid & dataCond_301; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_302 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_302 = pdestMatch_302 & (rfDataMatch_302 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_30 = io_wakeup_2_valid & dataCond_302; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_303 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_303 = pdestMatch_303 & (rfDataMatch_303 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_30 = io_wakeup_3_valid & dataCond_303; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_304 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_304 = pdestMatch_304 & (rfDataMatch_304 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_30 = io_wakeup_4_valid & dataCond_304; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_305 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_305 = pdestMatch_305 & (rfDataMatch_305 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_30 = io_wakeup_5_valid & dataCond_305; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_306 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_306 = pdestMatch_306 & (rfDataMatch_306 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_30 = io_wakeup_6_valid & dataCond_306; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_307 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_307 = pdestMatch_307 & (rfDataMatch_307 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_30 = io_wakeup_7_valid & dataCond_307; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_308 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_308 = pdestMatch_308 & (rfDataMatch_308 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_30 = io_wakeup_8_valid & dataCond_308; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_309 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_309 = pdestMatch_309 & (rfDataMatch_309 & _dataCond_T_1500); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_30 = io_wakeup_9_valid & dataCond_309; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_0_15 = {dataMatchVec_9_30,dataMatchVec_8_30,dataMatchVec_7_30,dataMatchVec_6_30,
    dataMatchVec_5_30,dataMatchVec_4_30,dataMatchVec_3_30,dataMatchVec_2_30,dataMatchVec_1_30,dataMatchVec_0_30}; // @[StatusArray.scala 132:43]
  wire [1:0] statusArrayNext_15_srcType_1 = updateValid_15 ? updateVal_15_srcType_1 : statusArray_15_srcType_1; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_310 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_1550 = statusArrayNext_15_srcType_1 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_310 = pdestMatch_310 & (rfDataMatch_310 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_0_31 = io_wakeup_0_valid & dataCond_310; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_311 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_311 = pdestMatch_311 & (rfDataMatch_311 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_1_31 = io_wakeup_1_valid & dataCond_311; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_312 = io_wakeup_2_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_312 = pdestMatch_312 & (rfDataMatch_312 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_2_31 = io_wakeup_2_valid & dataCond_312; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_313 = io_wakeup_3_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_313 = pdestMatch_313 & (rfDataMatch_313 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_3_31 = io_wakeup_3_valid & dataCond_313; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_314 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_314 = pdestMatch_314 & (rfDataMatch_314 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_4_31 = io_wakeup_4_valid & dataCond_314; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_315 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_315 = pdestMatch_315 & (rfDataMatch_315 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_5_31 = io_wakeup_5_valid & dataCond_315; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_316 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_316 = pdestMatch_316 & (rfDataMatch_316 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_6_31 = io_wakeup_6_valid & dataCond_316; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_317 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_317 = pdestMatch_317 & (rfDataMatch_317 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_7_31 = io_wakeup_7_valid & dataCond_317; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_318 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_318 = pdestMatch_318 & (rfDataMatch_318 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_8_31 = io_wakeup_8_valid & dataCond_318; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_319 = io_wakeup_9_bits_ctrl_rfWen & statusArrayNext_15_psrc_1 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_319 = pdestMatch_319 & (rfDataMatch_319 & _dataCond_T_1550); // @[Bundle.scala 275:33]
  wire  dataMatchVec_9_31 = io_wakeup_9_valid & dataCond_319; // @[StatusArray.scala 129:39]
  wire [9:0] dataWakeupEnVec_1_15 = {dataMatchVec_9_31,dataMatchVec_8_31,dataMatchVec_7_31,dataMatchVec_6_31,
    dataMatchVec_5_31,dataMatchVec_4_31,dataMatchVec_3_31,dataMatchVec_2_31,dataMatchVec_1_31,dataMatchVec_0_31}; // @[StatusArray.scala 132:43]
  wire [7:0] io_isValid_lo = {statusArrayValid_7,statusArrayValid_6,statusArrayValid_5,statusArrayValid_4,
    statusArrayValid_3,statusArrayValid_2,statusArrayValid_1,statusArrayValid_0}; // @[StatusArray.scala 255:34]
  wire [7:0] io_isValid_hi = {statusArrayValid_15,statusArrayValid_14,statusArrayValid_13,statusArrayValid_12,
    statusArrayValid_11,statusArrayValid_10,statusArrayValid_9,statusArrayValid_8}; // @[StatusArray.scala 255:34]
  wire [7:0] io_isValidNext_lo = {statusArrayValidNext_7,statusArrayValidNext_6,statusArrayValidNext_5,
    statusArrayValidNext_4,statusArrayValidNext_3,statusArrayValidNext_2,statusArrayValidNext_1,statusArrayValidNext_0}; // @[StatusArray.scala 256:42]
  wire [7:0] io_isValidNext_hi = {statusArrayValidNext_15,statusArrayValidNext_14,statusArrayValidNext_13,
    statusArrayValidNext_12,statusArrayValidNext_11,statusArrayValidNext_10,statusArrayValidNext_9,
    statusArrayValidNext_8}; // @[StatusArray.scala 256:42]
  reg  io_canIssue_REG; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_1; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_2; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_3; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_4; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_5; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_6; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_7; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_8; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_9; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_10; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_11; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_12; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_13; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_14; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_15; // @[StatusArray.scala 257:92]
  wire [7:0] io_canIssue_lo = {io_canIssue_REG_7,io_canIssue_REG_6,io_canIssue_REG_5,io_canIssue_REG_4,io_canIssue_REG_3
    ,io_canIssue_REG_2,io_canIssue_REG_1,io_canIssue_REG}; // @[StatusArray.scala 257:104]
  wire [7:0] io_canIssue_hi = {io_canIssue_REG_15,io_canIssue_REG_14,io_canIssue_REG_13,io_canIssue_REG_12,
    io_canIssue_REG_11,io_canIssue_REG_10,io_canIssue_REG_9,io_canIssue_REG_8}; // @[StatusArray.scala 257:104]
  wire [7:0] io_flushed_lo = {flushedVec_7,flushedVec_6,flushedVec_5,flushedVec_4,flushedVec_3,flushedVec_2,flushedVec_1
    ,flushedVec_0}; // @[StatusArray.scala 260:28]
  wire [7:0] io_flushed_hi = {flushedVec_15,flushedVec_14,flushedVec_13,flushedVec_12,flushedVec_11,flushedVec_10,
    flushedVec_9,flushedVec_8}; // @[StatusArray.scala 260:28]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 255:34]
  assign io_isValidNext = {io_isValidNext_hi,io_isValidNext_lo}; // @[StatusArray.scala 256:42]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 257:104]
  assign io_flushed = {io_flushed_hi,io_flushed_lo}; // @[StatusArray.scala 260:28]
  assign io_wakeupMatch_0_0 = realValid ? dataWakeupEnVec_0 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_0_1 = realValid ? dataWakeupEnVec_1 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_0 = realValid_1 ? dataWakeupEnVec_0_1 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_1 = realValid_1 ? dataWakeupEnVec_1_1 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_0 = realValid_2 ? dataWakeupEnVec_0_2 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_1 = realValid_2 ? dataWakeupEnVec_1_2 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_0 = realValid_3 ? dataWakeupEnVec_0_3 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_1 = realValid_3 ? dataWakeupEnVec_1_3 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_0 = realValid_4 ? dataWakeupEnVec_0_4 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_1 = realValid_4 ? dataWakeupEnVec_1_4 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_0 = realValid_5 ? dataWakeupEnVec_0_5 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_1 = realValid_5 ? dataWakeupEnVec_1_5 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_0 = realValid_6 ? dataWakeupEnVec_0_6 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_1 = realValid_6 ? dataWakeupEnVec_1_6 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_0 = realValid_7 ? dataWakeupEnVec_0_7 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_1 = realValid_7 ? dataWakeupEnVec_1_7 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_8_0 = realValid_8 ? dataWakeupEnVec_0_8 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_8_1 = realValid_8 ? dataWakeupEnVec_1_8 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_9_0 = realValid_9 ? dataWakeupEnVec_0_9 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_9_1 = realValid_9 ? dataWakeupEnVec_1_9 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_10_0 = realValid_10 ? dataWakeupEnVec_0_10 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_10_1 = realValid_10 ? dataWakeupEnVec_1_10 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_11_0 = realValid_11 ? dataWakeupEnVec_0_11 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_11_1 = realValid_11 ? dataWakeupEnVec_1_11 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_12_0 = realValid_12 ? dataWakeupEnVec_0_12 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_12_1 = realValid_12 ? dataWakeupEnVec_1_12 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_13_0 = realValid_13 ? dataWakeupEnVec_0_13 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_13_1 = realValid_13 ? dataWakeupEnVec_1_13 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_14_0 = realValid_14 ? dataWakeupEnVec_0_14 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_14_1 = realValid_14 ? dataWakeupEnVec_1_14 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_15_0 = realValid_15 ? dataWakeupEnVec_0_15 : 10'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_15_1 = realValid_15 ? dataWakeupEnVec_1_15 : 10'h0; // @[StatusArray.scala 231:55]
  always @(posedge clock) begin
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_1164; // @[StatusArray.scala 236:50]
    statusArray_0_srcState_1 <= stateWakeupEn_1 | _T_1166; // @[StatusArray.scala 236:50]
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_0 <= updateVal_0_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_1 <= updateVal_0_psrc_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_0 <= updateVal_0_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_1 <= updateVal_0_srcType_1;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_flag <= updateVal_0_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_value <= updateVal_0_robIdx_value;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1223; // @[StatusArray.scala 236:50]
    statusArray_1_srcState_1 <= stateWakeupEn_1_1 | _T_1225; // @[StatusArray.scala 236:50]
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_0 <= updateVal_1_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_1 <= updateVal_1_psrc_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_0 <= updateVal_1_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_1 <= updateVal_1_srcType_1;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_flag <= updateVal_1_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_value <= updateVal_1_robIdx_value;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1282; // @[StatusArray.scala 236:50]
    statusArray_2_srcState_1 <= stateWakeupEn_1_2 | _T_1284; // @[StatusArray.scala 236:50]
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_0 <= updateVal_2_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_1 <= updateVal_2_psrc_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_0 <= updateVal_2_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_1 <= updateVal_2_srcType_1;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_flag <= updateVal_2_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_value <= updateVal_2_robIdx_value;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1341; // @[StatusArray.scala 236:50]
    statusArray_3_srcState_1 <= stateWakeupEn_1_3 | _T_1343; // @[StatusArray.scala 236:50]
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_0 <= updateVal_3_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_1 <= updateVal_3_psrc_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_0 <= updateVal_3_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_1 <= updateVal_3_srcType_1;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_flag <= updateVal_3_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_value <= updateVal_3_robIdx_value;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_1400; // @[StatusArray.scala 236:50]
    statusArray_4_srcState_1 <= stateWakeupEn_1_4 | _T_1402; // @[StatusArray.scala 236:50]
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_0 <= updateVal_4_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_1 <= updateVal_4_psrc_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_0 <= updateVal_4_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_1 <= updateVal_4_srcType_1;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_flag <= updateVal_4_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_value <= updateVal_4_robIdx_value;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_1459; // @[StatusArray.scala 236:50]
    statusArray_5_srcState_1 <= stateWakeupEn_1_5 | _T_1461; // @[StatusArray.scala 236:50]
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_0 <= updateVal_5_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_1 <= updateVal_5_psrc_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_0 <= updateVal_5_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_1 <= updateVal_5_srcType_1;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_flag <= updateVal_5_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_value <= updateVal_5_robIdx_value;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_1518; // @[StatusArray.scala 236:50]
    statusArray_6_srcState_1 <= stateWakeupEn_1_6 | _T_1520; // @[StatusArray.scala 236:50]
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_0 <= updateVal_6_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_1 <= updateVal_6_psrc_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_0 <= updateVal_6_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_1 <= updateVal_6_srcType_1;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_flag <= updateVal_6_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_value <= updateVal_6_robIdx_value;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_1577; // @[StatusArray.scala 236:50]
    statusArray_7_srcState_1 <= stateWakeupEn_1_7 | _T_1579; // @[StatusArray.scala 236:50]
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_0 <= updateVal_7_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_1 <= updateVal_7_psrc_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_0 <= updateVal_7_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_1 <= updateVal_7_srcType_1;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_flag <= updateVal_7_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_value <= updateVal_7_robIdx_value;
    end
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_1636; // @[StatusArray.scala 236:50]
    statusArray_8_srcState_1 <= stateWakeupEn_1_8 | _T_1638; // @[StatusArray.scala 236:50]
    if (updateValid_8) begin // @[StatusArray.scala 243:27]
      statusArray_8_psrc_0 <= updateVal_8_psrc_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 243:27]
      statusArray_8_psrc_1 <= updateVal_8_psrc_1;
    end
    if (updateValid_8) begin // @[StatusArray.scala 244:30]
      statusArray_8_srcType_0 <= updateVal_8_srcType_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 244:30]
      statusArray_8_srcType_1 <= updateVal_8_srcType_1;
    end
    if (updateValid_8) begin // @[StatusArray.scala 245:29]
      statusArray_8_robIdx_flag <= updateVal_8_robIdx_flag;
    end
    if (updateValid_8) begin // @[StatusArray.scala 245:29]
      statusArray_8_robIdx_value <= updateVal_8_robIdx_value;
    end
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_1695; // @[StatusArray.scala 236:50]
    statusArray_9_srcState_1 <= stateWakeupEn_1_9 | _T_1697; // @[StatusArray.scala 236:50]
    if (updateValid_9) begin // @[StatusArray.scala 243:27]
      statusArray_9_psrc_0 <= updateVal_9_psrc_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 243:27]
      statusArray_9_psrc_1 <= updateVal_9_psrc_1;
    end
    if (updateValid_9) begin // @[StatusArray.scala 244:30]
      statusArray_9_srcType_0 <= updateVal_9_srcType_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 244:30]
      statusArray_9_srcType_1 <= updateVal_9_srcType_1;
    end
    if (updateValid_9) begin // @[StatusArray.scala 245:29]
      statusArray_9_robIdx_flag <= updateVal_9_robIdx_flag;
    end
    if (updateValid_9) begin // @[StatusArray.scala 245:29]
      statusArray_9_robIdx_value <= updateVal_9_robIdx_value;
    end
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_1754; // @[StatusArray.scala 236:50]
    statusArray_10_srcState_1 <= stateWakeupEn_1_10 | _T_1756; // @[StatusArray.scala 236:50]
    if (updateValid_10) begin // @[StatusArray.scala 243:27]
      statusArray_10_psrc_0 <= updateVal_10_psrc_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 243:27]
      statusArray_10_psrc_1 <= updateVal_10_psrc_1;
    end
    if (updateValid_10) begin // @[StatusArray.scala 244:30]
      statusArray_10_srcType_0 <= updateVal_10_srcType_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 244:30]
      statusArray_10_srcType_1 <= updateVal_10_srcType_1;
    end
    if (updateValid_10) begin // @[StatusArray.scala 245:29]
      statusArray_10_robIdx_flag <= updateVal_10_robIdx_flag;
    end
    if (updateValid_10) begin // @[StatusArray.scala 245:29]
      statusArray_10_robIdx_value <= updateVal_10_robIdx_value;
    end
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_1813; // @[StatusArray.scala 236:50]
    statusArray_11_srcState_1 <= stateWakeupEn_1_11 | _T_1815; // @[StatusArray.scala 236:50]
    if (updateValid_11) begin // @[StatusArray.scala 243:27]
      statusArray_11_psrc_0 <= updateVal_11_psrc_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 243:27]
      statusArray_11_psrc_1 <= updateVal_11_psrc_1;
    end
    if (updateValid_11) begin // @[StatusArray.scala 244:30]
      statusArray_11_srcType_0 <= updateVal_11_srcType_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 244:30]
      statusArray_11_srcType_1 <= updateVal_11_srcType_1;
    end
    if (updateValid_11) begin // @[StatusArray.scala 245:29]
      statusArray_11_robIdx_flag <= updateVal_11_robIdx_flag;
    end
    if (updateValid_11) begin // @[StatusArray.scala 245:29]
      statusArray_11_robIdx_value <= updateVal_11_robIdx_value;
    end
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_1872; // @[StatusArray.scala 236:50]
    statusArray_12_srcState_1 <= stateWakeupEn_1_12 | _T_1874; // @[StatusArray.scala 236:50]
    if (updateValid_12) begin // @[StatusArray.scala 243:27]
      statusArray_12_psrc_0 <= updateVal_12_psrc_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 243:27]
      statusArray_12_psrc_1 <= updateVal_12_psrc_1;
    end
    if (updateValid_12) begin // @[StatusArray.scala 244:30]
      statusArray_12_srcType_0 <= updateVal_12_srcType_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 244:30]
      statusArray_12_srcType_1 <= updateVal_12_srcType_1;
    end
    if (updateValid_12) begin // @[StatusArray.scala 245:29]
      statusArray_12_robIdx_flag <= updateVal_12_robIdx_flag;
    end
    if (updateValid_12) begin // @[StatusArray.scala 245:29]
      statusArray_12_robIdx_value <= updateVal_12_robIdx_value;
    end
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_1931; // @[StatusArray.scala 236:50]
    statusArray_13_srcState_1 <= stateWakeupEn_1_13 | _T_1933; // @[StatusArray.scala 236:50]
    if (updateValid_13) begin // @[StatusArray.scala 243:27]
      statusArray_13_psrc_0 <= updateVal_13_psrc_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 243:27]
      statusArray_13_psrc_1 <= updateVal_13_psrc_1;
    end
    if (updateValid_13) begin // @[StatusArray.scala 244:30]
      statusArray_13_srcType_0 <= updateVal_13_srcType_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 244:30]
      statusArray_13_srcType_1 <= updateVal_13_srcType_1;
    end
    if (updateValid_13) begin // @[StatusArray.scala 245:29]
      statusArray_13_robIdx_flag <= updateVal_13_robIdx_flag;
    end
    if (updateValid_13) begin // @[StatusArray.scala 245:29]
      statusArray_13_robIdx_value <= updateVal_13_robIdx_value;
    end
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_1990; // @[StatusArray.scala 236:50]
    statusArray_14_srcState_1 <= stateWakeupEn_1_14 | _T_1992; // @[StatusArray.scala 236:50]
    if (updateValid_14) begin // @[StatusArray.scala 243:27]
      statusArray_14_psrc_0 <= updateVal_14_psrc_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 243:27]
      statusArray_14_psrc_1 <= updateVal_14_psrc_1;
    end
    if (updateValid_14) begin // @[StatusArray.scala 244:30]
      statusArray_14_srcType_0 <= updateVal_14_srcType_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 244:30]
      statusArray_14_srcType_1 <= updateVal_14_srcType_1;
    end
    if (updateValid_14) begin // @[StatusArray.scala 245:29]
      statusArray_14_robIdx_flag <= updateVal_14_robIdx_flag;
    end
    if (updateValid_14) begin // @[StatusArray.scala 245:29]
      statusArray_14_robIdx_value <= updateVal_14_robIdx_value;
    end
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_2049; // @[StatusArray.scala 236:50]
    statusArray_15_srcState_1 <= stateWakeupEn_1_15 | _T_2051; // @[StatusArray.scala 236:50]
    if (updateValid_15) begin // @[StatusArray.scala 243:27]
      statusArray_15_psrc_0 <= updateVal_15_psrc_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 243:27]
      statusArray_15_psrc_1 <= updateVal_15_psrc_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 244:30]
      statusArray_15_srcType_0 <= updateVal_15_srcType_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 244:30]
      statusArray_15_srcType_1 <= updateVal_15_srcType_1;
    end
    if (updateValid_15) begin // @[StatusArray.scala 245:29]
      statusArray_15_robIdx_flag <= updateVal_15_robIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 245:29]
      statusArray_15_robIdx_value <= updateVal_15_robIdx_value;
    end
    io_canIssue_REG <= statusArrayValidNext_0 & readyVecNext_0; // @[StatusArray.scala 257:95]
    io_canIssue_REG_1 <= statusArrayValidNext_1 & readyVecNext_1; // @[StatusArray.scala 257:95]
    io_canIssue_REG_2 <= statusArrayValidNext_2 & readyVecNext_2; // @[StatusArray.scala 257:95]
    io_canIssue_REG_3 <= statusArrayValidNext_3 & readyVecNext_3; // @[StatusArray.scala 257:95]
    io_canIssue_REG_4 <= statusArrayValidNext_4 & readyVecNext_4; // @[StatusArray.scala 257:95]
    io_canIssue_REG_5 <= statusArrayValidNext_5 & readyVecNext_5; // @[StatusArray.scala 257:95]
    io_canIssue_REG_6 <= statusArrayValidNext_6 & readyVecNext_6; // @[StatusArray.scala 257:95]
    io_canIssue_REG_7 <= statusArrayValidNext_7 & readyVecNext_7; // @[StatusArray.scala 257:95]
    io_canIssue_REG_8 <= statusArrayValidNext_8 & readyVecNext_8; // @[StatusArray.scala 257:95]
    io_canIssue_REG_9 <= statusArrayValidNext_9 & readyVecNext_9; // @[StatusArray.scala 257:95]
    io_canIssue_REG_10 <= statusArrayValidNext_10 & readyVecNext_10; // @[StatusArray.scala 257:95]
    io_canIssue_REG_11 <= statusArrayValidNext_11 & readyVecNext_11; // @[StatusArray.scala 257:95]
    io_canIssue_REG_12 <= statusArrayValidNext_12 & readyVecNext_12; // @[StatusArray.scala 257:95]
    io_canIssue_REG_13 <= statusArrayValidNext_13 & readyVecNext_13; // @[StatusArray.scala 257:95]
    io_canIssue_REG_14 <= statusArrayValidNext_14 & readyVecNext_14; // @[StatusArray.scala 257:95]
    io_canIssue_REG_15 <= statusArrayValidNext_15 & readyVecNext_15; // @[StatusArray.scala 257:95]
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
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_8 <= 1'h0;
    end else begin
      statusArrayValid_8 <= realValid_8 & ~(isFlushed_8 | _flushedVec_8_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_9 <= 1'h0;
    end else begin
      statusArrayValid_9 <= realValid_9 & ~(isFlushed_9 | _flushedVec_9_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_10 <= 1'h0;
    end else begin
      statusArrayValid_10 <= realValid_10 & ~(isFlushed_10 | _flushedVec_10_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_11 <= 1'h0;
    end else begin
      statusArrayValid_11 <= realValid_11 & ~(isFlushed_11 | _flushedVec_11_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_12 <= 1'h0;
    end else begin
      statusArrayValid_12 <= realValid_12 & ~(isFlushed_12 | _flushedVec_12_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_13 <= 1'h0;
    end else begin
      statusArrayValid_13 <= realValid_13 & ~(isFlushed_13 | _flushedVec_13_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_14 <= 1'h0;
    end else begin
      statusArrayValid_14 <= realValid_14 & ~(isFlushed_14 | _flushedVec_14_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_15 <= 1'h0;
    end else begin
      statusArrayValid_15 <= realValid_15 & ~(isFlushed_15 | _flushedVec_15_T_1);
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
  statusArrayValid_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  statusArrayValid_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  statusArrayValid_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  statusArrayValid_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArrayValid_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  statusArrayValid_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  statusArrayValid_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  statusArrayValid_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_0_srcState_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_0_psrc_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_0_srcType_1 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_1_srcState_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_1_psrc_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_1_srcType_1 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_2_srcState_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_2_psrc_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_2_srcType_1 = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_3_srcState_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_3_psrc_1 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_3_srcType_1 = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_47[4:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_4_srcState_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_4_psrc_1 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_4_srcType_1 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_55[4:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_5_srcState_1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_5_psrc_1 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_5_srcType_1 = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_63[4:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_6_srcState_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_6_psrc_1 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_6_srcType_1 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_71[4:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_7_srcState_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_74[5:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_7_psrc_1 = _RAND_75[5:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_7_srcType_1 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_79[4:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_8_srcState_1 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_82[5:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_8_psrc_1 = _RAND_83[5:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_84[1:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_8_srcType_1 = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_87[4:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_9_srcState_1 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_90[5:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_9_psrc_1 = _RAND_91[5:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_9_srcType_1 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_95[4:0];
  _RAND_96 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  statusArray_10_srcState_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_98[5:0];
  _RAND_99 = {1{`RANDOM}};
  statusArray_10_psrc_1 = _RAND_99[5:0];
  _RAND_100 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_100[1:0];
  _RAND_101 = {1{`RANDOM}};
  statusArray_10_srcType_1 = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_103[4:0];
  _RAND_104 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  statusArray_11_srcState_1 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  statusArray_11_psrc_1 = _RAND_107[5:0];
  _RAND_108 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  statusArray_11_srcType_1 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_111[4:0];
  _RAND_112 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  statusArray_12_srcState_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_114[5:0];
  _RAND_115 = {1{`RANDOM}};
  statusArray_12_psrc_1 = _RAND_115[5:0];
  _RAND_116 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_116[1:0];
  _RAND_117 = {1{`RANDOM}};
  statusArray_12_srcType_1 = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_119[4:0];
  _RAND_120 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  statusArray_13_srcState_1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_122[5:0];
  _RAND_123 = {1{`RANDOM}};
  statusArray_13_psrc_1 = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  statusArray_13_srcType_1 = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_127[4:0];
  _RAND_128 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  statusArray_14_srcState_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_130[5:0];
  _RAND_131 = {1{`RANDOM}};
  statusArray_14_psrc_1 = _RAND_131[5:0];
  _RAND_132 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  statusArray_14_srcType_1 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_135[4:0];
  _RAND_136 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  statusArray_15_srcState_1 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_138[5:0];
  _RAND_139 = {1{`RANDOM}};
  statusArray_15_psrc_1 = _RAND_139[5:0];
  _RAND_140 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  statusArray_15_srcType_1 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_143[4:0];
  _RAND_144 = {1{`RANDOM}};
  io_canIssue_REG = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  io_canIssue_REG_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  io_canIssue_REG_2 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  io_canIssue_REG_3 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  io_canIssue_REG_4 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  io_canIssue_REG_5 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  io_canIssue_REG_6 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  io_canIssue_REG_7 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  io_canIssue_REG_8 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  io_canIssue_REG_9 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  io_canIssue_REG_10 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  io_canIssue_REG_11 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  io_canIssue_REG_12 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  io_canIssue_REG_13 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  io_canIssue_REG_14 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  io_canIssue_REG_15 = _RAND_159[0:0];
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
  if (reset) begin
    statusArrayValid_8 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_9 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_10 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_11 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_12 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_13 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_14 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_15 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

