module ReservationStation_4(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_fromDispatch_0_ready,
  input         io_fromDispatch_0_valid,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_0_bits_cf_pd_brType,
  input         io_fromDispatch_0_bits_cf_pd_isCall,
  input         io_fromDispatch_0_bits_cf_pd_isRet,
  input         io_fromDispatch_0_bits_cf_pred_taken,
  input         io_fromDispatch_0_bits_cf_storeSetHit,
  input         io_fromDispatch_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromDispatch_0_bits_cf_ssid,
  input         io_fromDispatch_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_0_bits_ctrl_fuOpType,
  input         io_fromDispatch_0_bits_ctrl_rfWen,
  input         io_fromDispatch_0_bits_ctrl_fpWen,
  input  [19:0] io_fromDispatch_0_bits_ctrl_imm,
  input         io_fromDispatch_0_bits_srcState_0,
  input  [5:0]  io_fromDispatch_0_bits_psrc_0,
  input  [5:0]  io_fromDispatch_0_bits_pdest,
  input         io_fromDispatch_0_bits_robIdx_flag,
  input  [4:0]  io_fromDispatch_0_bits_robIdx_value,
  input         io_fromDispatch_0_bits_lqIdx_flag,
  input  [3:0]  io_fromDispatch_0_bits_lqIdx_value,
  input         io_fromDispatch_0_bits_sqIdx_flag,
  input  [3:0]  io_fromDispatch_0_bits_sqIdx_value,
  output        io_fromDispatch_1_ready,
  input         io_fromDispatch_1_valid,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_1_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_1_bits_cf_pd_brType,
  input         io_fromDispatch_1_bits_cf_pd_isCall,
  input         io_fromDispatch_1_bits_cf_pd_isRet,
  input         io_fromDispatch_1_bits_cf_pred_taken,
  input         io_fromDispatch_1_bits_cf_storeSetHit,
  input         io_fromDispatch_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromDispatch_1_bits_cf_ssid,
  input         io_fromDispatch_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromDispatch_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_1_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_0,
  input  [3:0]  io_fromDispatch_1_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_1_bits_ctrl_fuOpType,
  input         io_fromDispatch_1_bits_ctrl_rfWen,
  input         io_fromDispatch_1_bits_ctrl_fpWen,
  input  [19:0] io_fromDispatch_1_bits_ctrl_imm,
  input         io_fromDispatch_1_bits_srcState_0,
  input  [5:0]  io_fromDispatch_1_bits_psrc_0,
  input  [5:0]  io_fromDispatch_1_bits_pdest,
  input         io_fromDispatch_1_bits_robIdx_flag,
  input  [4:0]  io_fromDispatch_1_bits_robIdx_value,
  input         io_fromDispatch_1_bits_lqIdx_flag,
  input  [3:0]  io_fromDispatch_1_bits_lqIdx_value,
  input         io_fromDispatch_1_bits_sqIdx_flag,
  input  [3:0]  io_fromDispatch_1_bits_sqIdx_value,
  input  [63:0] io_srcRegValue_0_0,
  input  [63:0] io_srcRegValue_1_0,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output        io_deq_0_bits_uop_cf_trigger_backendEn_0,
  output        io_deq_0_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_deq_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_deq_0_bits_uop_cf_ftqOffset,
  output [3:0]  io_deq_0_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_0_bits_uop_ctrl_fuOpType,
  output        io_deq_0_bits_uop_ctrl_rfWen,
  output        io_deq_0_bits_uop_ctrl_fpWen,
  output [19:0] io_deq_0_bits_uop_ctrl_imm,
  output [5:0]  io_deq_0_bits_uop_pdest,
  output        io_deq_0_bits_uop_robIdx_flag,
  output [4:0]  io_deq_0_bits_uop_robIdx_value,
  output        io_deq_0_bits_uop_lqIdx_flag,
  output [3:0]  io_deq_0_bits_uop_lqIdx_value,
  output        io_deq_0_bits_uop_sqIdx_flag,
  output [3:0]  io_deq_0_bits_uop_sqIdx_value,
  output [63:0] io_deq_0_bits_src_0,
  input         io_deq_1_ready,
  output        io_deq_1_valid,
  output        io_deq_1_bits_uop_cf_trigger_backendEn_0,
  output        io_deq_1_bits_uop_cf_trigger_backendEn_1,
  output [2:0]  io_deq_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_deq_1_bits_uop_cf_ftqOffset,
  output [3:0]  io_deq_1_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_1_bits_uop_ctrl_fuOpType,
  output        io_deq_1_bits_uop_ctrl_rfWen,
  output        io_deq_1_bits_uop_ctrl_fpWen,
  output [19:0] io_deq_1_bits_uop_ctrl_imm,
  output [5:0]  io_deq_1_bits_uop_pdest,
  output        io_deq_1_bits_uop_robIdx_flag,
  output [4:0]  io_deq_1_bits_uop_robIdx_value,
  output        io_deq_1_bits_uop_lqIdx_flag,
  output [3:0]  io_deq_1_bits_uop_lqIdx_value,
  output        io_deq_1_bits_uop_sqIdx_flag,
  output [3:0]  io_deq_1_bits_uop_sqIdx_value,
  output [63:0] io_deq_1_bits_src_0,
  input         io_fastUopsIn_0_valid,
  input         io_fastUopsIn_0_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_0_bits_pdest,
  input         io_fastUopsIn_1_valid,
  input         io_fastUopsIn_1_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_1_bits_pdest,
  input  [63:0] io_fastDatas_0,
  input  [63:0] io_fastDatas_1,
  input         io_slowPorts_0_valid,
  input         io_slowPorts_0_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_0_bits_uop_pdest,
  input  [63:0] io_slowPorts_0_bits_data,
  input         io_slowPorts_1_valid,
  input         io_slowPorts_1_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_1_bits_uop_pdest,
  input  [63:0] io_slowPorts_1_bits_data,
  input         io_slowPorts_2_valid,
  input         io_slowPorts_2_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_2_bits_uop_pdest,
  input  [63:0] io_slowPorts_2_bits_data,
  input         io_slowPorts_3_valid,
  input         io_slowPorts_3_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_3_bits_uop_pdest,
  input  [63:0] io_slowPorts_3_bits_data,
  input         io_slowPorts_4_valid,
  input         io_slowPorts_4_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_4_bits_uop_pdest,
  input  [63:0] io_slowPorts_4_bits_data,
  input         io_feedback_0_feedbackSlow_valid,
  input  [3:0]  io_feedback_0_feedbackSlow_bits_rsIdx,
  input         io_feedback_0_feedbackSlow_bits_hit,
  output [3:0]  io_feedback_0_rsIdx,
  input         io_feedback_1_feedbackSlow_valid,
  input  [3:0]  io_feedback_1_feedbackSlow_bits_rsIdx,
  input         io_feedback_1_feedbackSlow_bits_hit,
  output [3:0]  io_feedback_1_rsIdx,
  output [5:0]  io_perf_0_value
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
  reg [63:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [63:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [63:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [63:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [63:0] _RAND_145;
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
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
`endif // RANDOMIZE_REG_INIT
  wire  statusArray_clock; // @[ReservationStation.scala 260:27]
  wire  statusArray_reset; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_redirect_bits_level; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_isValid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_isValidNext; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_canIssue; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_flushed; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_enable; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_update_0_addr; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_scheduled; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_srcState_0; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_update_0_data_psrc_0; // @[ReservationStation.scala 260:27]
  wire [1:0] statusArray_io_update_0_data_srcType_0; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_0_data_robIdx_flag; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_update_0_data_robIdx_value; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_1_enable; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_update_1_addr; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_1_data_scheduled; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_1_data_srcState_0; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_update_1_data_psrc_0; // @[ReservationStation.scala 260:27]
  wire [1:0] statusArray_io_update_1_data_srcType_0; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_update_1_data_robIdx_flag; // @[ReservationStation.scala 260:27]
  wire [4:0] statusArray_io_update_1_data_robIdx_value; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_0_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_0_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_1_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_1_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_2_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_2_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_2_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_3_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_3_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_3_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_4_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_4_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_4_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_5_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_5_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_5_bits_pdest; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_6_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_wakeup_6_bits_ctrl_rfWen; // @[ReservationStation.scala 260:27]
  wire [5:0] statusArray_io_wakeup_6_bits_pdest; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_0_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_1_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_2_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_3_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_4_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_5_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_6_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_7_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_8_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_9_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_10_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_11_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_12_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_13_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_14_0; // @[ReservationStation.scala 260:27]
  wire [6:0] statusArray_io_wakeupMatch_15_0; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_issueGranted_0_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_issueGranted_0_bits; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_issueGranted_1_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_issueGranted_1_bits; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_issueGranted_2_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_issueGranted_2_bits; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_issueGranted_3_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_issueGranted_3_bits; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_issueGranted_4_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_issueGranted_4_bits; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_0_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_deqResp_0_bits_rsMask; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_0_bits_success; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_1_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_1_bits_success; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_2_valid; // @[ReservationStation.scala 260:27]
  wire [15:0] statusArray_io_deqResp_2_bits_rsMask; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_2_bits_success; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_3_valid; // @[ReservationStation.scala 260:27]
  wire  statusArray_io_deqResp_3_bits_success; // @[ReservationStation.scala 260:27]
  wire  select_clock; // @[ReservationStation.scala 261:22]
  wire  select_reset; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_validVec; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_allocate_0_bits; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_allocate_1_bits; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_request; // @[ReservationStation.scala 261:22]
  wire  select_io_grant_0_valid; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_grant_0_bits; // @[ReservationStation.scala 261:22]
  wire  select_io_grant_1_valid; // @[ReservationStation.scala 261:22]
  wire [15:0] select_io_grant_1_bits; // @[ReservationStation.scala 261:22]
  wire  select_io_balance_tick; // @[ReservationStation.scala 261:22]
  wire  select_io_balance_out; // @[ReservationStation.scala 261:22]
  wire  dataArray_clock; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_read_0_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_0_data_0; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_read_1_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_1_data_0; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_read_2_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_read_2_data_0; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_0_enable; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_0_mask_0; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_write_0_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_write_0_data_0; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_1_enable; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_write_1_mask_0; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_write_1_addr; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_write_1_data_0; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_0_enable; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_0_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_1_enable; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_1_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_2_enable; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_2_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_3_enable; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_3_data; // @[ReservationStation.scala 262:25]
  wire  dataArray_io_multiWrite_4_enable; // @[ReservationStation.scala 262:25]
  wire [15:0] dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 262:25]
  wire [63:0] dataArray_io_multiWrite_4_data; // @[ReservationStation.scala 262:25]
  wire  payloadArray_clock; // @[ReservationStation.scala 263:28]
  wire [15:0] payloadArray_io_read_0_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_trigger_backendEn_0; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_trigger_backendEn_1; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_0_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_storeSetHit; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_loadWaitStrict; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_0_data_cf_ssid; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_0_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_0_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_0_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_read_0_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_read_0_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_read_0_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_0_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_0_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_0_data_sqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_0_data_sqIdx_value; // @[ReservationStation.scala 263:28]
  wire [15:0] payloadArray_io_read_1_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_trigger_backendEn_0; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_trigger_backendEn_1; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_1_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_storeSetHit; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_loadWaitStrict; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_1_data_cf_ssid; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_1_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_1_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_1_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_read_1_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_read_1_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_read_1_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_1_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_1_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_1_data_sqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_1_data_sqIdx_value; // @[ReservationStation.scala 263:28]
  wire [15:0] payloadArray_io_read_2_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_trigger_backendEn_0; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_trigger_backendEn_1; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_read_2_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_storeSetHit; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_loadWaitStrict; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_2_data_cf_ssid; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_2_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_read_2_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_2_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_read_2_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_read_2_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_read_2_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_read_2_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_2_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_read_2_data_sqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_read_2_data_sqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_enable; // @[ReservationStation.scala 263:28]
  wire [15:0] payloadArray_io_write_0_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_trigger_backendEn_0; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_trigger_backendEn_1; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_0_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_storeSetHit; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_loadWaitStrict; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_write_0_data_cf_ssid; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_0_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_0_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_0_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_write_0_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_write_0_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_write_0_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_write_0_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_0_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_0_data_sqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_0_data_sqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_enable; // @[ReservationStation.scala 263:28]
  wire [15:0] payloadArray_io_write_1_addr; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_trigger_backendEn_0; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_trigger_backendEn_1; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_pd_isRVC; // @[ReservationStation.scala 263:28]
  wire [1:0] payloadArray_io_write_1_data_cf_pd_brType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_pd_isCall; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_pd_isRet; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_pred_taken; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_storeSetHit; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_loadWaitStrict; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_write_1_data_cf_ssid; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_cf_ftqPtr_flag; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_1_data_cf_ftqPtr_value; // @[ReservationStation.scala 263:28]
  wire [2:0] payloadArray_io_write_1_data_cf_ftqOffset; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_1_data_ctrl_fuType; // @[ReservationStation.scala 263:28]
  wire [6:0] payloadArray_io_write_1_data_ctrl_fuOpType; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_ctrl_rfWen; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_ctrl_fpWen; // @[ReservationStation.scala 263:28]
  wire [19:0] payloadArray_io_write_1_data_ctrl_imm; // @[ReservationStation.scala 263:28]
  wire [5:0] payloadArray_io_write_1_data_pdest; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_robIdx_flag; // @[ReservationStation.scala 263:28]
  wire [4:0] payloadArray_io_write_1_data_robIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_lqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_1_data_lqIdx_value; // @[ReservationStation.scala 263:28]
  wire  payloadArray_io_write_1_data_sqIdx_flag; // @[ReservationStation.scala 263:28]
  wire [3:0] payloadArray_io_write_1_data_sqIdx_value; // @[ReservationStation.scala 263:28]
  wire  s1_oldestSel_age_clock; // @[SelectPolicy.scala 174:21]
  wire  s1_oldestSel_age_reset; // @[SelectPolicy.scala 174:21]
  wire [15:0] s1_oldestSel_age_io_enq_0; // @[SelectPolicy.scala 174:21]
  wire [15:0] s1_oldestSel_age_io_enq_1; // @[SelectPolicy.scala 174:21]
  wire [15:0] s1_oldestSel_age_io_deq; // @[SelectPolicy.scala 174:21]
  wire [15:0] s1_oldestSel_age_io_out; // @[SelectPolicy.scala 174:21]
  wire  oldestSelection_io_in_1_valid; // @[ReservationStation.scala 498:33]
  wire [15:0] oldestSelection_io_in_1_bits; // @[ReservationStation.scala 498:33]
  wire  oldestSelection_io_oldest_valid; // @[ReservationStation.scala 498:33]
  wire [15:0] oldestSelection_io_oldest_bits; // @[ReservationStation.scala 498:33]
  wire  oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 498:33]
  wire [63:0] immExt_io_data_in_0; // @[DataArray.scala 161:18]
  wire [63:0] immExt_io_data_out_0; // @[DataArray.scala 161:18]
  wire [63:0] immExt_1_io_data_in_0; // @[DataArray.scala 161:18]
  wire [63:0] immExt_1_io_data_out_0; // @[DataArray.scala 161:18]
  wire  dataSelect_io_doOverride_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_0_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_1_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_readData_2_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_0_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_1_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_2_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_3_0; // @[ReservationStation.scala 690:26]
  wire [4:0] dataSelect_io_fromSlowPorts_4_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_1; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_2; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_3; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_slowData_4; // @[ReservationStation.scala 690:26]
  wire  dataSelect_io_enqBypass_0_0; // @[ReservationStation.scala 690:26]
  wire  dataSelect_io_enqBypass_1_1; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_enqData_0_0_bits; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_enqData_1_0_bits; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_deqData_0_0; // @[ReservationStation.scala 690:26]
  wire [63:0] dataSelect_io_deqData_1_0; // @[ReservationStation.scala 690:26]
  wire  bypassNetwork_clock; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_io_hold; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_io_source_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_io_target_0; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_io_bypass_0_valid_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_io_bypass_0_data; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_io_bypass_1_valid_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_io_bypass_1_data; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_1_clock; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_1_io_hold; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_1_io_source_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_1_io_target_0; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_1_io_bypass_0_valid_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_1_io_bypass_0_data; // @[BypassNetwork.scala 111:13]
  wire  bypassNetwork_1_io_bypass_1_valid_0; // @[BypassNetwork.scala 111:13]
  wire [63:0] bypassNetwork_1_io_bypass_1_data; // @[BypassNetwork.scala 111:13]
  wire [15:0] s0_allocatePtrOH_0 = select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
  wire [15:0] s0_allocatePtrOH_1 = select_io_allocate_1_bits; // @[ReservationStation.scala 272:{33,33}]
  reg [15:0] validAfterAllocate; // @[ReservationStation.scala 281:35]
  wire  _s0_doEnqueue_0_T = io_fromDispatch_0_ready & io_fromDispatch_0_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _s0_enqFlushed_0_flushItself_T_1 = {io_fromDispatch_0_bits_robIdx_flag,io_fromDispatch_0_bits_robIdx_value}
    ; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s0_enqFlushed_0_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_enqFlushed_0_flushItself_T_3 = _s0_enqFlushed_0_flushItself_T_1 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_enqFlushed_0_flushItself = io_redirect_bits_level & _s0_enqFlushed_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s0_enqFlushed_0_differentFlag = io_fromDispatch_0_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_enqFlushed_0_compare = io_fromDispatch_0_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_enqFlushed_0_T = s0_enqFlushed_0_differentFlag ^ s0_enqFlushed_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s0_enqFlushed_0 = io_redirect_valid & (s0_enqFlushed_0_flushItself | _s0_enqFlushed_0_T); // @[Rob.scala 143:20]
  wire  _s0_doEnqueue_0_T_1 = ~s0_enqFlushed_0; // @[ReservationStation.scala 335:51]
  wire  s0_doEnqueue_0 = _s0_doEnqueue_0_T & ~s0_enqFlushed_0; // @[ReservationStation.scala 335:48]
  wire [15:0] validUpdateByAllocate_xs_0 = s0_doEnqueue_0 ? s0_allocatePtrOH_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire  _s0_doEnqueue_1_T = io_fromDispatch_1_ready & io_fromDispatch_1_valid; // @[Decoupled.scala 50:35]
  wire [5:0] _s0_enqFlushed_1_flushItself_T_1 = {io_fromDispatch_1_bits_robIdx_flag,io_fromDispatch_1_bits_robIdx_value}
    ; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_enqFlushed_1_flushItself_T_3 = _s0_enqFlushed_1_flushItself_T_1 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_enqFlushed_1_flushItself = io_redirect_bits_level & _s0_enqFlushed_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s0_enqFlushed_1_differentFlag = io_fromDispatch_1_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_enqFlushed_1_compare = io_fromDispatch_1_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_enqFlushed_1_T = s0_enqFlushed_1_differentFlag ^ s0_enqFlushed_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s0_enqFlushed_1 = io_redirect_valid & (s0_enqFlushed_1_flushItself | _s0_enqFlushed_1_T); // @[Rob.scala 143:20]
  wire  _s0_doEnqueue_1_T_1 = ~s0_enqFlushed_1; // @[ReservationStation.scala 335:51]
  wire  s0_doEnqueue_1 = _s0_doEnqueue_1_T & ~s0_enqFlushed_1; // @[ReservationStation.scala 335:48]
  wire [15:0] validUpdateByAllocate_xs_1 = s0_doEnqueue_1 ? s0_allocatePtrOH_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] validUpdateByAllocate = validUpdateByAllocate_xs_0 | validUpdateByAllocate_xs_1; // @[ParallelMux.scala 36:53]
  wire  _numEmptyEntries_T_16 = ~statusArray_io_isValid[0]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_17 = ~statusArray_io_isValid[1]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_18 = ~statusArray_io_isValid[2]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_19 = ~statusArray_io_isValid[3]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_20 = ~statusArray_io_isValid[4]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_21 = ~statusArray_io_isValid[5]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_22 = ~statusArray_io_isValid[6]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_23 = ~statusArray_io_isValid[7]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_24 = ~statusArray_io_isValid[8]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_25 = ~statusArray_io_isValid[9]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_26 = ~statusArray_io_isValid[10]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_27 = ~statusArray_io_isValid[11]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_28 = ~statusArray_io_isValid[12]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_29 = ~statusArray_io_isValid[13]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_30 = ~statusArray_io_isValid[14]; // @[ReservationStation.scala 310:76]
  wire  _numEmptyEntries_T_31 = ~statusArray_io_isValid[15]; // @[ReservationStation.scala 310:76]
  wire [1:0] _numEmptyEntries_T_32 = _numEmptyEntries_T_16 + _numEmptyEntries_T_17; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_34 = _numEmptyEntries_T_18 + _numEmptyEntries_T_19; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_36 = _numEmptyEntries_T_32 + _numEmptyEntries_T_34; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_38 = _numEmptyEntries_T_20 + _numEmptyEntries_T_21; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_40 = _numEmptyEntries_T_22 + _numEmptyEntries_T_23; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_42 = _numEmptyEntries_T_38 + _numEmptyEntries_T_40; // @[Bitwise.scala 48:55]
  wire [3:0] _numEmptyEntries_T_44 = _numEmptyEntries_T_36 + _numEmptyEntries_T_42; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_46 = _numEmptyEntries_T_24 + _numEmptyEntries_T_25; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_48 = _numEmptyEntries_T_26 + _numEmptyEntries_T_27; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_50 = _numEmptyEntries_T_46 + _numEmptyEntries_T_48; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_52 = _numEmptyEntries_T_28 + _numEmptyEntries_T_29; // @[Bitwise.scala 48:55]
  wire [1:0] _numEmptyEntries_T_54 = _numEmptyEntries_T_30 + _numEmptyEntries_T_31; // @[Bitwise.scala 48:55]
  wire [2:0] _numEmptyEntries_T_56 = _numEmptyEntries_T_52 + _numEmptyEntries_T_54; // @[Bitwise.scala 48:55]
  wire [3:0] _numEmptyEntries_T_58 = _numEmptyEntries_T_50 + _numEmptyEntries_T_56; // @[Bitwise.scala 48:55]
  wire [4:0] numEmptyEntries = _numEmptyEntries_T_44 + _numEmptyEntries_T_58; // @[Bitwise.scala 48:55]
  wire [1:0] numAllocateS1 = statusArray_io_update_0_enable + statusArray_io_update_1_enable; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_889 = {{3'd0}, numAllocateS1}; // @[ReservationStation.scala 312:47]
  wire [4:0] realNumEmptyAfterS1 = numEmptyEntries - _GEN_889; // @[ReservationStation.scala 312:47]
  wire [2:0] highBits = realNumEmptyAfterS1[4:2]; // @[ReservationStation.scala 314:41]
  wire [2:0] numEmptyAfterS1 = |highBits ? 3'h4 : {{1'd0}, realNumEmptyAfterS1[1:0]}; // @[ReservationStation.scala 315:27]
  wire  _numDeq_T = statusArray_io_deqResp_0_valid & statusArray_io_deqResp_0_bits_success; // @[ReservationStation.scala 316:81]
  wire  _numDeq_T_1 = statusArray_io_deqResp_1_valid & statusArray_io_deqResp_1_bits_success; // @[ReservationStation.scala 316:81]
  wire  _numDeq_T_2 = statusArray_io_deqResp_2_valid & statusArray_io_deqResp_2_bits_success; // @[ReservationStation.scala 316:81]
  wire  _numDeq_T_3 = statusArray_io_deqResp_3_valid & statusArray_io_deqResp_3_bits_success; // @[ReservationStation.scala 316:81]
  wire [1:0] _numDeq_T_4 = _numDeq_T + _numDeq_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] _numDeq_T_6 = _numDeq_T_2 + _numDeq_T_3; // @[Bitwise.scala 48:55]
  wire [2:0] numDeq = _numDeq_T_4 + _numDeq_T_6; // @[Bitwise.scala 48:55]
  reg [2:0] emptyThisCycle; // @[ReservationStation.scala 317:29]
  wire [1:0] numAllocateS0 = s0_doEnqueue_0 + s0_doEnqueue_1; // @[Bitwise.scala 48:55]
  reg [1:0] allocateThisCycle; // @[ReservationStation.scala 321:34]
  wire [2:0] _allocateThisCycle_T = {{1'd0}, numAllocateS0}; // @[ReservationStation.scala 322:42]
  wire [2:0] _GEN_890 = {{1'd0}, allocateThisCycle}; // @[ReservationStation.scala 323:42]
  reg [1:0] allocateThisCycle_1; // @[ReservationStation.scala 321:34]
  wire [2:0] _allocateThisCycle_T_1 = numAllocateS0 + 2'h1; // @[ReservationStation.scala 322:42]
  wire [2:0] _GEN_891 = {{1'd0}, allocateThisCycle_1}; // @[ReservationStation.scala 323:42]
  wire  pdestMatch = io_slowPorts_0_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond = pdestMatch & io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch = io_slowPorts_0_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T = io_fromDispatch_0_bits_ctrl_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond = pdestMatch & (rfDataMatch & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_3 = io_slowPorts_1_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_3 = pdestMatch_3 & io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_3 = io_slowPorts_1_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_3 = pdestMatch_3 & (rfDataMatch_3 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_6 = io_slowPorts_2_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_6 = pdestMatch_6 & io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_6 = io_slowPorts_2_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_6 = pdestMatch_6 & (rfDataMatch_6 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_9 = io_slowPorts_3_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_9 = pdestMatch_9 & io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_9 = io_slowPorts_3_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_9 = pdestMatch_9 & (rfDataMatch_9 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_12 = io_slowPorts_4_bits_uop_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_12 = pdestMatch_12 & io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_12 = io_slowPorts_4_bits_uop_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_12 = pdestMatch_12 & (rfDataMatch_12 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_15 = io_fastUopsIn_0_bits_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  rfDataMatch_15 = io_fastUopsIn_0_bits_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_15 = pdestMatch_15 & (rfDataMatch_15 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  pdestMatch_18 = io_fastUopsIn_1_bits_pdest == io_fromDispatch_0_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  rfDataMatch_18 = io_fastUopsIn_1_bits_ctrl_rfWen & io_fromDispatch_0_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_18 = pdestMatch_18 & (rfDataMatch_18 & _dataCond_T); // @[Bundle.scala 275:33]
  wire  _s0_enqWakeup_0_0_T = io_slowPorts_0_valid & stateCond; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_1 = io_slowPorts_1_valid & stateCond_3; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_2 = io_slowPorts_2_valid & stateCond_6; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_3 = io_slowPorts_3_valid & stateCond_9; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_0_0_T_4 = io_slowPorts_4_valid & stateCond_12; // @[ReservationStation.scala 340:90]
  wire [1:0] s0_enqWakeup_0_0_lo = {_s0_enqWakeup_0_0_T_1,_s0_enqWakeup_0_0_T}; // @[ReservationStation.scala 340:100]
  wire [2:0] s0_enqWakeup_0_0_hi = {_s0_enqWakeup_0_0_T_4,_s0_enqWakeup_0_0_T_3,_s0_enqWakeup_0_0_T_2}; // @[ReservationStation.scala 340:100]
  wire  _s0_enqDataCapture_0_0_T = io_slowPorts_0_valid & dataCond; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_1 = io_slowPorts_1_valid & dataCond_3; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_2 = io_slowPorts_2_valid & dataCond_6; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_3 = io_slowPorts_3_valid & dataCond_9; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_0_0_T_4 = io_slowPorts_4_valid & dataCond_12; // @[ReservationStation.scala 341:94]
  wire [1:0] s0_enqDataCapture_0_0_lo = {_s0_enqDataCapture_0_0_T_1,_s0_enqDataCapture_0_0_T}; // @[ReservationStation.scala 341:104]
  wire [2:0] s0_enqDataCapture_0_0_hi = {_s0_enqDataCapture_0_0_T_4,_s0_enqDataCapture_0_0_T_3,
    _s0_enqDataCapture_0_0_T_2}; // @[ReservationStation.scala 341:104]
  wire  pdestMatch_21 = io_slowPorts_0_bits_uop_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_21 = pdestMatch_21 & io_slowPorts_0_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_21 = io_slowPorts_0_bits_uop_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  _dataCond_T_105 = io_fromDispatch_1_bits_ctrl_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_21 = pdestMatch_21 & (rfDataMatch_21 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_24 = io_slowPorts_1_bits_uop_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_24 = pdestMatch_24 & io_slowPorts_1_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_24 = io_slowPorts_1_bits_uop_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_24 = pdestMatch_24 & (rfDataMatch_24 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_27 = io_slowPorts_2_bits_uop_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_27 = pdestMatch_27 & io_slowPorts_2_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_27 = io_slowPorts_2_bits_uop_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_27 = pdestMatch_27 & (rfDataMatch_27 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_30 = io_slowPorts_3_bits_uop_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_30 = pdestMatch_30 & io_slowPorts_3_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_30 = io_slowPorts_3_bits_uop_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_30 = pdestMatch_30 & (rfDataMatch_30 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_33 = io_slowPorts_4_bits_uop_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  stateCond_33 = pdestMatch_33 & io_slowPorts_4_bits_uop_ctrl_rfWen; // @[Bundle.scala 272:34]
  wire  rfDataMatch_33 = io_slowPorts_4_bits_uop_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_33 = pdestMatch_33 & (rfDataMatch_33 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_36 = io_fastUopsIn_0_bits_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  rfDataMatch_36 = io_fastUopsIn_0_bits_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_36 = pdestMatch_36 & (rfDataMatch_36 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  pdestMatch_39 = io_fastUopsIn_1_bits_pdest == io_fromDispatch_1_bits_psrc_0; // @[Bundle.scala 266:30]
  wire  rfDataMatch_39 = io_fastUopsIn_1_bits_ctrl_rfWen & io_fromDispatch_1_bits_psrc_0 != 6'h0; // @[Bundle.scala 274:58]
  wire  dataCond_39 = pdestMatch_39 & (rfDataMatch_39 & _dataCond_T_105); // @[Bundle.scala 275:33]
  wire  _s0_enqWakeup_1_0_T = io_slowPorts_0_valid & stateCond_21; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_1_0_T_1 = io_slowPorts_1_valid & stateCond_24; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_1_0_T_2 = io_slowPorts_2_valid & stateCond_27; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_1_0_T_3 = io_slowPorts_3_valid & stateCond_30; // @[ReservationStation.scala 340:90]
  wire  _s0_enqWakeup_1_0_T_4 = io_slowPorts_4_valid & stateCond_33; // @[ReservationStation.scala 340:90]
  wire [1:0] s0_enqWakeup_1_0_lo = {_s0_enqWakeup_1_0_T_1,_s0_enqWakeup_1_0_T}; // @[ReservationStation.scala 340:100]
  wire [2:0] s0_enqWakeup_1_0_hi = {_s0_enqWakeup_1_0_T_4,_s0_enqWakeup_1_0_T_3,_s0_enqWakeup_1_0_T_2}; // @[ReservationStation.scala 340:100]
  wire  _s0_enqDataCapture_1_0_T = io_slowPorts_0_valid & dataCond_21; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_1_0_T_1 = io_slowPorts_1_valid & dataCond_24; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_1_0_T_2 = io_slowPorts_2_valid & dataCond_27; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_1_0_T_3 = io_slowPorts_3_valid & dataCond_30; // @[ReservationStation.scala 341:94]
  wire  _s0_enqDataCapture_1_0_T_4 = io_slowPorts_4_valid & dataCond_33; // @[ReservationStation.scala 341:94]
  wire [1:0] s0_enqDataCapture_1_0_lo = {_s0_enqDataCapture_1_0_T_1,_s0_enqDataCapture_1_0_T}; // @[ReservationStation.scala 341:104]
  wire [2:0] s0_enqDataCapture_1_0_hi = {_s0_enqDataCapture_1_0_T_4,_s0_enqDataCapture_1_0_T_3,
    _s0_enqDataCapture_1_0_T_2}; // @[ReservationStation.scala 341:104]
  reg [15:0] enqVec_REG; // @[ReservationStation.scala 360:86]
  reg [15:0] enqVec_REG_1; // @[ReservationStation.scala 360:86]
  wire [15:0] _s1_oldestSel_out_valid_T = statusArray_io_canIssue & s1_oldestSel_age_io_out; // @[SelectPolicy.scala 178:28]
  reg  s1_dispatchUops_dup_0_0_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_0_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_0_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_0_0_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_0_bits_psrc_0; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_0_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_0_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_0_bits_sqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_0_bits_sqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_0_1_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_0_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_1_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_0_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_0_1_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_1_bits_psrc_0; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_0_1_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_0_1_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_1_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_0_1_bits_sqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_0_1_bits_sqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_0_bits_cf_pd_brType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isCall; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pd_isRet; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_pred_taken; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_storeSetHit; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_loadWaitStrict; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_1_0_bits_cf_ssid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_0_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_0_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_1_0_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_1_0_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_1_0_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_0_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_0_bits_sqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_0_bits_sqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_valid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_1_1_bits_cf_pd_brType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_pd_isCall; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_pd_isRet; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_pred_taken; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_storeSetHit; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_loadWaitStrict; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_1_1_bits_cf_ssid; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 390:32]
  reg [2:0] s1_dispatchUops_dup_1_1_bits_cf_ftqOffset; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_1_bits_ctrl_fuType; // @[ReservationStation.scala 390:32]
  reg [6:0] s1_dispatchUops_dup_1_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_ctrl_rfWen; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_ctrl_fpWen; // @[ReservationStation.scala 390:32]
  reg [19:0] s1_dispatchUops_dup_1_1_bits_ctrl_imm; // @[ReservationStation.scala 390:32]
  reg [5:0] s1_dispatchUops_dup_1_1_bits_pdest; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_robIdx_flag; // @[ReservationStation.scala 390:32]
  reg [4:0] s1_dispatchUops_dup_1_1_bits_robIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_lqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_1_bits_lqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_1_1_bits_sqIdx_flag; // @[ReservationStation.scala 390:32]
  reg [3:0] s1_dispatchUops_dup_1_1_bits_sqIdx_value; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_0_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 390:32]
  reg [1:0] s1_dispatchUops_dup_2_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 390:32]
  reg  s1_dispatchUops_dup_2_1_bits_srcState_0; // @[ReservationStation.scala 390:32]
  reg [15:0] s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 392:37]
  reg [15:0] s1_allocatePtrOH_dup_0_1; // @[ReservationStation.scala 392:37]
  reg [15:0] s1_allocatePtrOH_dup_1_0; // @[ReservationStation.scala 392:37]
  reg [15:0] s1_allocatePtrOH_dup_1_1; // @[ReservationStation.scala 392:37]
  reg [15:0] s1_allocatePtrOH_dup_2_0; // @[ReservationStation.scala 392:37]
  reg [15:0] s1_allocatePtrOH_dup_2_1; // @[ReservationStation.scala 392:37]
  reg [4:0] s1_enqWakeup_0_0; // @[ReservationStation.scala 394:29]
  reg [4:0] s1_enqWakeup_1_0; // @[ReservationStation.scala 394:29]
  reg [4:0] s1_enqDataCapture_0_0; // @[ReservationStation.scala 395:34]
  reg [4:0] s1_enqDataCapture_1_0; // @[ReservationStation.scala 395:34]
  reg  s1_fastWakeup_0_0_0; // @[ReservationStation.scala 396:30]
  reg  s1_fastWakeup_0_0_1; // @[ReservationStation.scala 396:30]
  reg  s1_fastWakeup_1_0_0; // @[ReservationStation.scala 396:30]
  reg  s1_fastWakeup_1_0_1; // @[ReservationStation.scala 396:30]
  wire  s1_issue_oldest_0 = oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 401:29 503:21]
  wire [15:0] s1_in_oldestPtrOH_bits = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  wire [15:0] _s1_issuePtrOH_0_bits_T = select_io_grant_0_valid ? select_io_grant_0_bits : s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 515:10]
  wire [15:0] s1_issuePtrOH_0_bits = s1_issue_oldest_0 ? s1_in_oldestPtrOH_bits : _s1_issuePtrOH_0_bits_T; // @[ReservationStation.scala 514:33]
  wire [7:0] s1_issuePtr_hi = s1_issuePtrOH_0_bits[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] s1_issuePtr_lo = s1_issuePtrOH_0_bits[7:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T = |s1_issuePtr_hi; // @[OneHot.scala 32:14]
  wire [7:0] _s1_issuePtr_T_1 = s1_issuePtr_hi | s1_issuePtr_lo; // @[OneHot.scala 32:28]
  wire [3:0] s1_issuePtr_hi_1 = _s1_issuePtr_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_issuePtr_lo_1 = _s1_issuePtr_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T_2 = |s1_issuePtr_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _s1_issuePtr_T_3 = s1_issuePtr_hi_1 | s1_issuePtr_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] s1_issuePtr_hi_2 = _s1_issuePtr_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_issuePtr_lo_2 = _s1_issuePtr_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T_4 = |s1_issuePtr_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _s1_issuePtr_T_5 = s1_issuePtr_hi_2 | s1_issuePtr_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] s1_issuePtr_0 = {_s1_issuePtr_T,_s1_issuePtr_T_2,_s1_issuePtr_T_4,_s1_issuePtr_T_5[1]}; // @[Cat.scala 31:58]
  wire [15:0] s1_issuePtrOH_1_bits = select_io_grant_1_valid ? select_io_grant_1_bits : s1_allocatePtrOH_dup_0_1; // @[ReservationStation.scala 515:10]
  wire [7:0] s1_issuePtr_hi_3 = s1_issuePtrOH_1_bits[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] s1_issuePtr_lo_3 = s1_issuePtrOH_1_bits[7:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T_9 = |s1_issuePtr_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _s1_issuePtr_T_10 = s1_issuePtr_hi_3 | s1_issuePtr_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] s1_issuePtr_hi_4 = _s1_issuePtr_T_10[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_issuePtr_lo_4 = _s1_issuePtr_T_10[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T_11 = |s1_issuePtr_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _s1_issuePtr_T_12 = s1_issuePtr_hi_4 | s1_issuePtr_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] s1_issuePtr_hi_5 = _s1_issuePtr_T_12[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_issuePtr_lo_5 = _s1_issuePtr_T_12[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_issuePtr_T_13 = |s1_issuePtr_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _s1_issuePtr_T_14 = s1_issuePtr_hi_5 | s1_issuePtr_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] s1_issuePtr_1 = {_s1_issuePtr_T_9,_s1_issuePtr_T_11,_s1_issuePtr_T_13,_s1_issuePtr_T_14[1]}; // @[Cat.scala 31:58]
  wire  _s1_issuePtrOH_0_valid_T = s1_issue_oldest_0 | select_io_grant_0_valid; // @[ReservationStation.scala 513:50]
  wire  canBypass_scheduledCond = ~statusArray_io_update_0_data_scheduled; // @[StatusArray.scala 57:54]
  wire  _canBypass_T_1 = &statusArray_io_update_0_data_srcState_0 & canBypass_scheduledCond; // @[StatusArray.scala 61:43]
  wire  canBypass = s1_dispatchUops_dup_0_0_valid & _canBypass_T_1; // @[ReservationStation.scala 510:55]
  wire  s1_issuePtrOH_0_valid = s1_issue_oldest_0 | select_io_grant_0_valid | canBypass; // @[ReservationStation.scala 513:77]
  wire  _s1_issuePtrOH_1_valid_T = select_io_grant_1_valid; // @[ReservationStation.scala 513:50]
  wire  canBypass_scheduledCond_1 = ~statusArray_io_update_1_data_scheduled; // @[StatusArray.scala 57:54]
  wire  _canBypass_T_5 = &statusArray_io_update_1_data_srcState_0 & canBypass_scheduledCond_1; // @[StatusArray.scala 61:43]
  wire  canBypass_1 = s1_dispatchUops_dup_0_1_valid & _canBypass_T_5; // @[ReservationStation.scala 510:55]
  wire  s1_issuePtrOH_1_valid = select_io_grant_1_valid | canBypass_1; // @[ReservationStation.scala 513:77]
  wire  _statusArray_io_update_0_data_srcState_0_T_2 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_0_0_bits_srcState_0; // @[Bundle.scala 249:81]
  wire [1:0] _statusArray_io_update_0_data_srcState_0_T_11 = {s1_fastWakeup_0_0_1,s1_fastWakeup_0_0_0}; // @[ReservationStation.scala 451:119]
  wire  _statusArray_io_update_1_data_srcState_0_T_2 = s1_dispatchUops_dup_0_1_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_0_1_bits_srcState_0; // @[Bundle.scala 249:81]
  wire [1:0] _statusArray_io_update_1_data_srcState_0_T_11 = {s1_fastWakeup_1_0_1,s1_fastWakeup_1_0_0}; // @[ReservationStation.scala 451:119]
  wire  _s1_issue_dispatch_0_T = ~s1_issue_oldest_0; // @[ReservationStation.scala 511:42]
  wire  s1_issue_dispatch_0 = canBypass & ~s1_issue_oldest_0 & ~select_io_grant_0_valid; // @[ReservationStation.scala 511:62]
  reg  valid; // @[PipelineConnect.scala 108:24]
  wire  s2_deq_0_ready = ~valid | io_deq_0_ready; // @[ReservationStation.scala 746:41]
  wire  s1_issue_dispatch_1 = canBypass_1 & ~select_io_grant_1_valid; // @[ReservationStation.scala 511:62]
  reg  valid_1; // @[PipelineConnect.scala 108:24]
  wire  s2_deq_1_ready = ~valid_1 | io_deq_1_ready; // @[ReservationStation.scala 746:41]
  wire  _s1_out_0_bits_uop_T_robIdx_flag = select_io_grant_0_valid ? payloadArray_io_read_0_data_robIdx_flag :
    s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 518:10]
  wire [4:0] _s1_out_0_bits_uop_T_robIdx_value = select_io_grant_0_valid ? payloadArray_io_read_0_data_robIdx_value :
    s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 518:10]
  wire  s1_out_0_bits_uop_robIdx_flag = s1_issue_oldest_0 ? payloadArray_io_read_2_data_robIdx_flag :
    _s1_out_0_bits_uop_T_robIdx_flag; // @[ReservationStation.scala 517:30]
  wire [4:0] s1_out_0_bits_uop_robIdx_value = s1_issue_oldest_0 ? payloadArray_io_read_2_data_robIdx_value :
    _s1_out_0_bits_uop_T_robIdx_value; // @[ReservationStation.scala 517:30]
  wire  s1_out_1_bits_uop_robIdx_flag = select_io_grant_1_valid ? payloadArray_io_read_1_data_robIdx_flag :
    s1_dispatchUops_dup_0_1_bits_robIdx_flag; // @[ReservationStation.scala 518:10]
  wire [4:0] s1_out_1_bits_uop_robIdx_value = select_io_grant_1_valid ? payloadArray_io_read_1_data_robIdx_value :
    s1_dispatchUops_dup_0_1_bits_robIdx_value; // @[ReservationStation.scala 518:10]
  wire [5:0] _s1_out_0_valid_flushItself_T_1 = {s1_out_0_bits_uop_robIdx_flag,s1_out_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_out_0_valid_flushItself_T_3 = _s1_out_0_valid_flushItself_T_1 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_out_0_valid_flushItself = io_redirect_bits_level & _s1_out_0_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_out_0_valid_differentFlag = s1_out_0_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_out_0_valid_compare = s1_out_0_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_out_0_valid_T = s1_out_0_valid_differentFlag ^ s1_out_0_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_out_0_valid_T_2 = io_redirect_valid & (s1_out_0_valid_flushItself | _s1_out_0_valid_T); // @[Rob.scala 143:20]
  wire  s1_out_0_valid = s1_issuePtrOH_0_valid & ~_s1_out_0_valid_T_2; // @[ReservationStation.scala 531:47]
  wire [5:0] _s1_out_1_valid_flushItself_T_1 = {s1_out_1_bits_uop_robIdx_flag,s1_out_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_out_1_valid_flushItself_T_3 = _s1_out_1_valid_flushItself_T_1 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_out_1_valid_flushItself = io_redirect_bits_level & _s1_out_1_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_out_1_valid_differentFlag = s1_out_1_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_out_1_valid_compare = s1_out_1_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_out_1_valid_T = s1_out_1_valid_differentFlag ^ s1_out_1_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_out_1_valid_T_2 = io_redirect_valid & (s1_out_1_valid_flushItself | _s1_out_1_valid_T); // @[Rob.scala 143:20]
  wire  s1_out_1_valid = s1_issuePtrOH_1_valid & ~_s1_out_1_valid_T_2; // @[ReservationStation.scala 531:47]
  reg [4:0] slowWakeupMatchVec_0_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_1_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_2_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_3_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_4_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_5_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_6_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_7_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_8_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_9_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_10_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_11_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_12_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_13_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_14_0; // @[ReservationStation.scala 625:31]
  reg [4:0] slowWakeupMatchVec_15_0; // @[ReservationStation.scala 625:31]
  reg  dataArray_io_multiWrite_0_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0 = s1_enqDataCapture_0_0[0] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire  allocateValid_1 = s1_enqDataCapture_1_0[0] & s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 634:93]
  wire [15:0] allocateDataCapture_xs_0 = allocateValid_0 ? s1_allocatePtrOH_dup_2_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_xs_1 = allocateValid_1 ? s1_allocatePtrOH_dup_2_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture = allocateDataCapture_xs_0 | allocateDataCapture_xs_1; // @[ParallelMux.scala 36:53]
  wire [7:0] dataArray_io_multiWrite_0_addr_0_lo = {slowWakeupMatchVec_7_0[0],slowWakeupMatchVec_6_0[0],
    slowWakeupMatchVec_5_0[0],slowWakeupMatchVec_4_0[0],slowWakeupMatchVec_3_0[0],slowWakeupMatchVec_2_0[0],
    slowWakeupMatchVec_1_0[0],slowWakeupMatchVec_0_0[0]}; // @[ReservationStation.scala 636:61]
  wire [15:0] _dataArray_io_multiWrite_0_addr_0_T_16 = {slowWakeupMatchVec_15_0[0],slowWakeupMatchVec_14_0[0],
    slowWakeupMatchVec_13_0[0],slowWakeupMatchVec_12_0[0],slowWakeupMatchVec_11_0[0],slowWakeupMatchVec_10_0[0],
    slowWakeupMatchVec_9_0[0],slowWakeupMatchVec_8_0[0],dataArray_io_multiWrite_0_addr_0_lo}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_0_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_1_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_1 = s1_enqDataCapture_0_0[1] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire  allocateValid_1_1 = s1_enqDataCapture_1_0[1] & s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 634:93]
  wire [15:0] allocateDataCapture_xs_0_1 = allocateValid_0_1 ? s1_allocatePtrOH_dup_2_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_xs_1_1 = allocateValid_1_1 ? s1_allocatePtrOH_dup_2_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_1 = allocateDataCapture_xs_0_1 | allocateDataCapture_xs_1_1; // @[ParallelMux.scala 36:53]
  wire [7:0] dataArray_io_multiWrite_1_addr_0_lo = {slowWakeupMatchVec_7_0[1],slowWakeupMatchVec_6_0[1],
    slowWakeupMatchVec_5_0[1],slowWakeupMatchVec_4_0[1],slowWakeupMatchVec_3_0[1],slowWakeupMatchVec_2_0[1],
    slowWakeupMatchVec_1_0[1],slowWakeupMatchVec_0_0[1]}; // @[ReservationStation.scala 636:61]
  wire [15:0] _dataArray_io_multiWrite_1_addr_0_T_16 = {slowWakeupMatchVec_15_0[1],slowWakeupMatchVec_14_0[1],
    slowWakeupMatchVec_13_0[1],slowWakeupMatchVec_12_0[1],slowWakeupMatchVec_11_0[1],slowWakeupMatchVec_10_0[1],
    slowWakeupMatchVec_9_0[1],slowWakeupMatchVec_8_0[1],dataArray_io_multiWrite_1_addr_0_lo}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_1_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_2_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_2 = s1_enqDataCapture_0_0[2] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire  allocateValid_1_2 = s1_enqDataCapture_1_0[2] & s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 634:93]
  wire [15:0] allocateDataCapture_xs_0_2 = allocateValid_0_2 ? s1_allocatePtrOH_dup_2_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_xs_1_2 = allocateValid_1_2 ? s1_allocatePtrOH_dup_2_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_2 = allocateDataCapture_xs_0_2 | allocateDataCapture_xs_1_2; // @[ParallelMux.scala 36:53]
  wire [7:0] dataArray_io_multiWrite_2_addr_0_lo = {slowWakeupMatchVec_7_0[2],slowWakeupMatchVec_6_0[2],
    slowWakeupMatchVec_5_0[2],slowWakeupMatchVec_4_0[2],slowWakeupMatchVec_3_0[2],slowWakeupMatchVec_2_0[2],
    slowWakeupMatchVec_1_0[2],slowWakeupMatchVec_0_0[2]}; // @[ReservationStation.scala 636:61]
  wire [15:0] _dataArray_io_multiWrite_2_addr_0_T_16 = {slowWakeupMatchVec_15_0[2],slowWakeupMatchVec_14_0[2],
    slowWakeupMatchVec_13_0[2],slowWakeupMatchVec_12_0[2],slowWakeupMatchVec_11_0[2],slowWakeupMatchVec_10_0[2],
    slowWakeupMatchVec_9_0[2],slowWakeupMatchVec_8_0[2],dataArray_io_multiWrite_2_addr_0_lo}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_2_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_3_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_3 = s1_enqDataCapture_0_0[3] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire  allocateValid_1_3 = s1_enqDataCapture_1_0[3] & s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 634:93]
  wire [15:0] allocateDataCapture_xs_0_3 = allocateValid_0_3 ? s1_allocatePtrOH_dup_2_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_xs_1_3 = allocateValid_1_3 ? s1_allocatePtrOH_dup_2_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_3 = allocateDataCapture_xs_0_3 | allocateDataCapture_xs_1_3; // @[ParallelMux.scala 36:53]
  wire [7:0] dataArray_io_multiWrite_3_addr_0_lo = {slowWakeupMatchVec_7_0[3],slowWakeupMatchVec_6_0[3],
    slowWakeupMatchVec_5_0[3],slowWakeupMatchVec_4_0[3],slowWakeupMatchVec_3_0[3],slowWakeupMatchVec_2_0[3],
    slowWakeupMatchVec_1_0[3],slowWakeupMatchVec_0_0[3]}; // @[ReservationStation.scala 636:61]
  wire [15:0] _dataArray_io_multiWrite_3_addr_0_T_16 = {slowWakeupMatchVec_15_0[3],slowWakeupMatchVec_14_0[3],
    slowWakeupMatchVec_13_0[3],slowWakeupMatchVec_12_0[3],slowWakeupMatchVec_11_0[3],slowWakeupMatchVec_10_0[3],
    slowWakeupMatchVec_9_0[3],slowWakeupMatchVec_8_0[3],dataArray_io_multiWrite_3_addr_0_lo}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_3_data_r; // @[Reg.scala 16:16]
  reg  dataArray_io_multiWrite_4_enable_REG; // @[ReservationStation.scala 632:24]
  wire  allocateValid_0_4 = s1_enqDataCapture_0_0[4] & s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 634:93]
  wire  allocateValid_1_4 = s1_enqDataCapture_1_0[4] & s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 634:93]
  wire [15:0] allocateDataCapture_xs_0_4 = allocateValid_0_4 ? s1_allocatePtrOH_dup_2_0 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_xs_1_4 = allocateValid_1_4 ? s1_allocatePtrOH_dup_2_1 : 16'h0; // @[ParallelMux.scala 64:44]
  wire [15:0] allocateDataCapture_4 = allocateDataCapture_xs_0_4 | allocateDataCapture_xs_1_4; // @[ParallelMux.scala 36:53]
  wire [7:0] dataArray_io_multiWrite_4_addr_0_lo = {slowWakeupMatchVec_7_0[4],slowWakeupMatchVec_6_0[4],
    slowWakeupMatchVec_5_0[4],slowWakeupMatchVec_4_0[4],slowWakeupMatchVec_3_0[4],slowWakeupMatchVec_2_0[4],
    slowWakeupMatchVec_1_0[4],slowWakeupMatchVec_0_0[4]}; // @[ReservationStation.scala 636:61]
  wire [15:0] _dataArray_io_multiWrite_4_addr_0_T_16 = {slowWakeupMatchVec_15_0[4],slowWakeupMatchVec_14_0[4],
    slowWakeupMatchVec_13_0[4],slowWakeupMatchVec_12_0[4],slowWakeupMatchVec_11_0[4],slowWakeupMatchVec_10_0[4],
    slowWakeupMatchVec_9_0[4],slowWakeupMatchVec_8_0[4],dataArray_io_multiWrite_4_addr_0_lo}; // @[ReservationStation.scala 636:61]
  reg [63:0] dataArray_io_multiWrite_4_data_r; // @[Reg.scala 16:16]
  wire [15:0] _dataSelect_io_fromSlowPorts_0_0_T = dataArray_io_read_0_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_0_0_T; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_0_0_T_3 = dataArray_io_read_0_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_0_0_T_3; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_0_0_T_6 = dataArray_io_read_0_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_0_0_T_6; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_0_0_T_9 = dataArray_io_read_0_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_0_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_0_0_T_12 = dataArray_io_read_0_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_0_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_0_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_0_0_lo = {_dataSelect_io_fromSlowPorts_0_0_T_5,
    _dataSelect_io_fromSlowPorts_0_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_0_0_hi = {_dataSelect_io_fromSlowPorts_0_0_T_14,
    _dataSelect_io_fromSlowPorts_0_0_T_11,_dataSelect_io_fromSlowPorts_0_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [15:0] _dataSelect_io_fromSlowPorts_1_0_T = dataArray_io_read_1_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_1_0_T; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_1_0_T_3 = dataArray_io_read_1_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_1_0_T_3; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_1_0_T_6 = dataArray_io_read_1_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_1_0_T_6; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_1_0_T_9 = dataArray_io_read_1_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_1_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_1_0_T_12 = dataArray_io_read_1_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_1_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_1_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_1_0_lo = {_dataSelect_io_fromSlowPorts_1_0_T_5,
    _dataSelect_io_fromSlowPorts_1_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_1_0_hi = {_dataSelect_io_fromSlowPorts_1_0_T_14,
    _dataSelect_io_fromSlowPorts_1_0_T_11,_dataSelect_io_fromSlowPorts_1_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [15:0] _dataSelect_io_fromSlowPorts_2_0_T = dataArray_io_read_2_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_2_0_T; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_2_0_T_3 = dataArray_io_read_2_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_2_0_T_3; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_2_0_T_6 = dataArray_io_read_2_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_2_0_T_6; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_2_0_T_9 = dataArray_io_read_2_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_2_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_2_0_T_12 = dataArray_io_read_2_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_2_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_2_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_2_0_lo = {_dataSelect_io_fromSlowPorts_2_0_T_5,
    _dataSelect_io_fromSlowPorts_2_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_2_0_hi = {_dataSelect_io_fromSlowPorts_2_0_T_14,
    _dataSelect_io_fromSlowPorts_2_0_T_11,_dataSelect_io_fromSlowPorts_2_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [15:0] _dataSelect_io_fromSlowPorts_3_0_T = dataArray_io_write_0_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_3_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_3_0_T; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_3_0_T_3 = dataArray_io_write_0_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_3_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_3_0_T_3; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_3_0_T_6 = dataArray_io_write_0_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_3_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_3_0_T_6; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_3_0_T_9 = dataArray_io_write_0_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_3_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_3_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_3_0_T_12 = dataArray_io_write_0_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_3_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_3_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_3_0_lo = {_dataSelect_io_fromSlowPorts_3_0_T_5,
    _dataSelect_io_fromSlowPorts_3_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_3_0_hi = {_dataSelect_io_fromSlowPorts_3_0_T_14,
    _dataSelect_io_fromSlowPorts_3_0_T_11,_dataSelect_io_fromSlowPorts_3_0_T_8}; // @[ReservationStation.scala 696:103]
  wire [15:0] _dataSelect_io_fromSlowPorts_4_0_T = dataArray_io_write_1_addr & dataArray_io_multiWrite_0_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_4_0_T_2 = dataArray_io_multiWrite_0_enable & |_dataSelect_io_fromSlowPorts_4_0_T; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_4_0_T_3 = dataArray_io_write_1_addr & dataArray_io_multiWrite_1_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_4_0_T_5 = dataArray_io_multiWrite_1_enable & |_dataSelect_io_fromSlowPorts_4_0_T_3; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_4_0_T_6 = dataArray_io_write_1_addr & dataArray_io_multiWrite_2_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_4_0_T_8 = dataArray_io_multiWrite_2_enable & |_dataSelect_io_fromSlowPorts_4_0_T_6; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_4_0_T_9 = dataArray_io_write_1_addr & dataArray_io_multiWrite_3_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_4_0_T_11 = dataArray_io_multiWrite_3_enable & |_dataSelect_io_fromSlowPorts_4_0_T_9
    ; // @[ReservationStation.scala 696:68]
  wire [15:0] _dataSelect_io_fromSlowPorts_4_0_T_12 = dataArray_io_write_1_addr & dataArray_io_multiWrite_4_addr_0; // @[ReservationStation.scala 696:77]
  wire  _dataSelect_io_fromSlowPorts_4_0_T_14 = dataArray_io_multiWrite_4_enable & |
    _dataSelect_io_fromSlowPorts_4_0_T_12; // @[ReservationStation.scala 696:68]
  wire [1:0] dataSelect_io_fromSlowPorts_4_0_lo = {_dataSelect_io_fromSlowPorts_4_0_T_5,
    _dataSelect_io_fromSlowPorts_4_0_T_2}; // @[ReservationStation.scala 696:103]
  wire [2:0] dataSelect_io_fromSlowPorts_4_0_hi = {_dataSelect_io_fromSlowPorts_4_0_T_14,
    _dataSelect_io_fromSlowPorts_4_0_T_11,_dataSelect_io_fromSlowPorts_4_0_T_8}; // @[ReservationStation.scala 696:103]
  reg  fastWakeupMatch_0_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_0_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_1_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_1_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_2_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_2_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_3_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_3_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_4_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_4_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_5_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_5_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_6_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_6_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_7_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_7_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_8_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_8_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_9_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_9_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_10_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_10_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_11_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_11_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_12_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_12_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_13_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_13_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_14_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_14_0_1; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_15_0_0; // @[ReservationStation.scala 717:28]
  reg  fastWakeupMatch_15_0_1; // @[ReservationStation.scala 717:28]
  wire  s1_out_fire_0 = s1_out_0_valid & s2_deq_0_ready; // @[ReservationStation.scala 727:60]
  wire  s1_out_fire_1 = s1_out_1_valid & s2_deq_1_ready; // @[ReservationStation.scala 727:60]
  reg [3:0] s2_issuePtr_0; // @[Reg.scala 16:16]
  reg [3:0] s2_issuePtr_1; // @[Reg.scala 16:16]
  reg  data_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] data_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _flushItself_T_1 = {data_uop_robIdx_flag,data_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_3 = _flushItself_T_1 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = data_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = data_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_149 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_151 = io_redirect_valid & (flushItself | _T_149); // @[Rob.scala 143:20]
  wire  _T_152 = s2_deq_0_ready | _T_151; // @[ReservationStation.scala 735:59]
  wire  _GEN_661 = _T_152 ? 1'h0 : valid; // @[PipelineConnect.scala 108:24 110:{25,33}]
  reg  data_uop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  data_uop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg [2:0] data_uop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] data_uop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [3:0] data_uop_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] data_uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  data_uop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] data_uop_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] data_uop_pdest; // @[Reg.scala 16:16]
  reg  data_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] data_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg  data_uop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] data_uop_sqIdx_value; // @[Reg.scala 16:16]
  wire [15:0] normalIssuePtrOH = s1_issue_oldest_0 ? s1_in_oldestPtrOH_bits : select_io_grant_0_bits; // @[ReservationStation.scala 755:33]
  wire  _normalFastWakeupMatch_T_31 = normalIssuePtrOH[15] & fastWakeupMatch_15_0_0; // @[Mux.scala 27:73]
  wire  normalFastWakeupMatch_0_0 = normalIssuePtrOH[0] & fastWakeupMatch_0_0_0 | normalIssuePtrOH[1] &
    fastWakeupMatch_1_0_0 | normalIssuePtrOH[2] & fastWakeupMatch_2_0_0 | normalIssuePtrOH[3] & fastWakeupMatch_3_0_0 |
    normalIssuePtrOH[4] & fastWakeupMatch_4_0_0 | normalIssuePtrOH[5] & fastWakeupMatch_5_0_0 | normalIssuePtrOH[6] &
    fastWakeupMatch_6_0_0 | normalIssuePtrOH[7] & fastWakeupMatch_7_0_0 | normalIssuePtrOH[8] & fastWakeupMatch_8_0_0 |
    normalIssuePtrOH[9] & fastWakeupMatch_9_0_0 | normalIssuePtrOH[10] & fastWakeupMatch_10_0_0 | normalIssuePtrOH[11]
     & fastWakeupMatch_11_0_0 | normalIssuePtrOH[12] & fastWakeupMatch_12_0_0 | normalIssuePtrOH[13] &
    fastWakeupMatch_13_0_0 | normalIssuePtrOH[14] & fastWakeupMatch_14_0_0 | _normalFastWakeupMatch_T_31; // @[Mux.scala 27:73]
  wire  _normalFastWakeupMatch_T_62 = normalIssuePtrOH[15] & fastWakeupMatch_15_0_1; // @[Mux.scala 27:73]
  wire  normalFastWakeupMatch_0_1 = normalIssuePtrOH[0] & fastWakeupMatch_0_0_1 | normalIssuePtrOH[1] &
    fastWakeupMatch_1_0_1 | normalIssuePtrOH[2] & fastWakeupMatch_2_0_1 | normalIssuePtrOH[3] & fastWakeupMatch_3_0_1 |
    normalIssuePtrOH[4] & fastWakeupMatch_4_0_1 | normalIssuePtrOH[5] & fastWakeupMatch_5_0_1 | normalIssuePtrOH[6] &
    fastWakeupMatch_6_0_1 | normalIssuePtrOH[7] & fastWakeupMatch_7_0_1 | normalIssuePtrOH[8] & fastWakeupMatch_8_0_1 |
    normalIssuePtrOH[9] & fastWakeupMatch_9_0_1 | normalIssuePtrOH[10] & fastWakeupMatch_10_0_1 | normalIssuePtrOH[11]
     & fastWakeupMatch_11_0_1 | normalIssuePtrOH[12] & fastWakeupMatch_12_0_1 | normalIssuePtrOH[13] &
    fastWakeupMatch_13_0_1 | normalIssuePtrOH[14] & fastWakeupMatch_14_0_1 | _normalFastWakeupMatch_T_62; // @[Mux.scala 27:73]
  wire  _T_153 = s2_deq_0_ready & s1_out_0_valid; // @[Decoupled.scala 50:35]
  reg  data_1_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] data_1_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _flushItself_T_5 = {data_1_uop_robIdx_flag,data_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_7 = _flushItself_T_5 == _s0_enqFlushed_0_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_1 = io_redirect_bits_level & _flushItself_T_7; // @[Rob.scala 142:51]
  wire  differentFlag_1 = data_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_1 = data_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_159 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _T_161 = io_redirect_valid & (flushItself_1 | _T_159); // @[Rob.scala 143:20]
  wire  _T_162 = s2_deq_1_ready | _T_161; // @[ReservationStation.scala 735:59]
  wire  _GEN_775 = _T_162 ? 1'h0 : valid_1; // @[PipelineConnect.scala 108:24 110:{25,33}]
  reg  data_1_uop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  data_1_uop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg [2:0] data_1_uop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] data_1_uop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [3:0] data_1_uop_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] data_1_uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  data_1_uop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  data_1_uop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] data_1_uop_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] data_1_uop_pdest; // @[Reg.scala 16:16]
  reg  data_1_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] data_1_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg  data_1_uop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] data_1_uop_sqIdx_value; // @[Reg.scala 16:16]
  wire [15:0] normalIssuePtrOH_1 = select_io_grant_1_bits; // @[ReservationStation.scala 755:33]
  wire  _normalFastWakeupMatch_T_109 = normalIssuePtrOH_1[15] & fastWakeupMatch_15_0_0; // @[Mux.scala 27:73]
  wire  normalFastWakeupMatch_1_0_0 = normalIssuePtrOH_1[0] & fastWakeupMatch_0_0_0 | normalIssuePtrOH_1[1] &
    fastWakeupMatch_1_0_0 | normalIssuePtrOH_1[2] & fastWakeupMatch_2_0_0 | normalIssuePtrOH_1[3] &
    fastWakeupMatch_3_0_0 | normalIssuePtrOH_1[4] & fastWakeupMatch_4_0_0 | normalIssuePtrOH_1[5] &
    fastWakeupMatch_5_0_0 | normalIssuePtrOH_1[6] & fastWakeupMatch_6_0_0 | normalIssuePtrOH_1[7] &
    fastWakeupMatch_7_0_0 | normalIssuePtrOH_1[8] & fastWakeupMatch_8_0_0 | normalIssuePtrOH_1[9] &
    fastWakeupMatch_9_0_0 | normalIssuePtrOH_1[10] & fastWakeupMatch_10_0_0 | normalIssuePtrOH_1[11] &
    fastWakeupMatch_11_0_0 | normalIssuePtrOH_1[12] & fastWakeupMatch_12_0_0 | normalIssuePtrOH_1[13] &
    fastWakeupMatch_13_0_0 | normalIssuePtrOH_1[14] & fastWakeupMatch_14_0_0 | _normalFastWakeupMatch_T_109; // @[Mux.scala 27:73]
  wire  _normalFastWakeupMatch_T_140 = normalIssuePtrOH_1[15] & fastWakeupMatch_15_0_1; // @[Mux.scala 27:73]
  wire  normalFastWakeupMatch_1_0_1 = normalIssuePtrOH_1[0] & fastWakeupMatch_0_0_1 | normalIssuePtrOH_1[1] &
    fastWakeupMatch_1_0_1 | normalIssuePtrOH_1[2] & fastWakeupMatch_2_0_1 | normalIssuePtrOH_1[3] &
    fastWakeupMatch_3_0_1 | normalIssuePtrOH_1[4] & fastWakeupMatch_4_0_1 | normalIssuePtrOH_1[5] &
    fastWakeupMatch_5_0_1 | normalIssuePtrOH_1[6] & fastWakeupMatch_6_0_1 | normalIssuePtrOH_1[7] &
    fastWakeupMatch_7_0_1 | normalIssuePtrOH_1[8] & fastWakeupMatch_8_0_1 | normalIssuePtrOH_1[9] &
    fastWakeupMatch_9_0_1 | normalIssuePtrOH_1[10] & fastWakeupMatch_10_0_1 | normalIssuePtrOH_1[11] &
    fastWakeupMatch_11_0_1 | normalIssuePtrOH_1[12] & fastWakeupMatch_12_0_1 | normalIssuePtrOH_1[13] &
    fastWakeupMatch_13_0_1 | normalIssuePtrOH_1[14] & fastWakeupMatch_14_0_1 | _normalFastWakeupMatch_T_140; // @[Mux.scala 27:73]
  wire  _T_163 = s2_deq_1_ready & s1_out_1_valid; // @[Decoupled.scala 50:35]
  wire  _select_io_balance_tick_T_13 = ~select_io_balance_out & _T_153 & ~_T_163 & ~_s0_doEnqueue_0_T; // @[ReservationStation.scala 907:58]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  StatusArray_4 statusArray ( // @[ReservationStation.scala 260:27]
    .clock(statusArray_clock),
    .reset(statusArray_reset),
    .io_redirect_valid(statusArray_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(statusArray_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(statusArray_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(statusArray_io_redirect_bits_level),
    .io_isValid(statusArray_io_isValid),
    .io_isValidNext(statusArray_io_isValidNext),
    .io_canIssue(statusArray_io_canIssue),
    .io_flushed(statusArray_io_flushed),
    .io_update_0_enable(statusArray_io_update_0_enable),
    .io_update_0_addr(statusArray_io_update_0_addr),
    .io_update_0_data_scheduled(statusArray_io_update_0_data_scheduled),
    .io_update_0_data_srcState_0(statusArray_io_update_0_data_srcState_0),
    .io_update_0_data_psrc_0(statusArray_io_update_0_data_psrc_0),
    .io_update_0_data_srcType_0(statusArray_io_update_0_data_srcType_0),
    .io_update_0_data_robIdx_flag(statusArray_io_update_0_data_robIdx_flag),
    .io_update_0_data_robIdx_value(statusArray_io_update_0_data_robIdx_value),
    .io_update_1_enable(statusArray_io_update_1_enable),
    .io_update_1_addr(statusArray_io_update_1_addr),
    .io_update_1_data_scheduled(statusArray_io_update_1_data_scheduled),
    .io_update_1_data_srcState_0(statusArray_io_update_1_data_srcState_0),
    .io_update_1_data_psrc_0(statusArray_io_update_1_data_psrc_0),
    .io_update_1_data_srcType_0(statusArray_io_update_1_data_srcType_0),
    .io_update_1_data_robIdx_flag(statusArray_io_update_1_data_robIdx_flag),
    .io_update_1_data_robIdx_value(statusArray_io_update_1_data_robIdx_value),
    .io_wakeup_0_valid(statusArray_io_wakeup_0_valid),
    .io_wakeup_0_bits_ctrl_rfWen(statusArray_io_wakeup_0_bits_ctrl_rfWen),
    .io_wakeup_0_bits_pdest(statusArray_io_wakeup_0_bits_pdest),
    .io_wakeup_1_valid(statusArray_io_wakeup_1_valid),
    .io_wakeup_1_bits_ctrl_rfWen(statusArray_io_wakeup_1_bits_ctrl_rfWen),
    .io_wakeup_1_bits_pdest(statusArray_io_wakeup_1_bits_pdest),
    .io_wakeup_2_valid(statusArray_io_wakeup_2_valid),
    .io_wakeup_2_bits_ctrl_rfWen(statusArray_io_wakeup_2_bits_ctrl_rfWen),
    .io_wakeup_2_bits_pdest(statusArray_io_wakeup_2_bits_pdest),
    .io_wakeup_3_valid(statusArray_io_wakeup_3_valid),
    .io_wakeup_3_bits_ctrl_rfWen(statusArray_io_wakeup_3_bits_ctrl_rfWen),
    .io_wakeup_3_bits_pdest(statusArray_io_wakeup_3_bits_pdest),
    .io_wakeup_4_valid(statusArray_io_wakeup_4_valid),
    .io_wakeup_4_bits_ctrl_rfWen(statusArray_io_wakeup_4_bits_ctrl_rfWen),
    .io_wakeup_4_bits_pdest(statusArray_io_wakeup_4_bits_pdest),
    .io_wakeup_5_valid(statusArray_io_wakeup_5_valid),
    .io_wakeup_5_bits_ctrl_rfWen(statusArray_io_wakeup_5_bits_ctrl_rfWen),
    .io_wakeup_5_bits_pdest(statusArray_io_wakeup_5_bits_pdest),
    .io_wakeup_6_valid(statusArray_io_wakeup_6_valid),
    .io_wakeup_6_bits_ctrl_rfWen(statusArray_io_wakeup_6_bits_ctrl_rfWen),
    .io_wakeup_6_bits_pdest(statusArray_io_wakeup_6_bits_pdest),
    .io_wakeupMatch_0_0(statusArray_io_wakeupMatch_0_0),
    .io_wakeupMatch_1_0(statusArray_io_wakeupMatch_1_0),
    .io_wakeupMatch_2_0(statusArray_io_wakeupMatch_2_0),
    .io_wakeupMatch_3_0(statusArray_io_wakeupMatch_3_0),
    .io_wakeupMatch_4_0(statusArray_io_wakeupMatch_4_0),
    .io_wakeupMatch_5_0(statusArray_io_wakeupMatch_5_0),
    .io_wakeupMatch_6_0(statusArray_io_wakeupMatch_6_0),
    .io_wakeupMatch_7_0(statusArray_io_wakeupMatch_7_0),
    .io_wakeupMatch_8_0(statusArray_io_wakeupMatch_8_0),
    .io_wakeupMatch_9_0(statusArray_io_wakeupMatch_9_0),
    .io_wakeupMatch_10_0(statusArray_io_wakeupMatch_10_0),
    .io_wakeupMatch_11_0(statusArray_io_wakeupMatch_11_0),
    .io_wakeupMatch_12_0(statusArray_io_wakeupMatch_12_0),
    .io_wakeupMatch_13_0(statusArray_io_wakeupMatch_13_0),
    .io_wakeupMatch_14_0(statusArray_io_wakeupMatch_14_0),
    .io_wakeupMatch_15_0(statusArray_io_wakeupMatch_15_0),
    .io_issueGranted_0_valid(statusArray_io_issueGranted_0_valid),
    .io_issueGranted_0_bits(statusArray_io_issueGranted_0_bits),
    .io_issueGranted_1_valid(statusArray_io_issueGranted_1_valid),
    .io_issueGranted_1_bits(statusArray_io_issueGranted_1_bits),
    .io_issueGranted_2_valid(statusArray_io_issueGranted_2_valid),
    .io_issueGranted_2_bits(statusArray_io_issueGranted_2_bits),
    .io_issueGranted_3_valid(statusArray_io_issueGranted_3_valid),
    .io_issueGranted_3_bits(statusArray_io_issueGranted_3_bits),
    .io_issueGranted_4_valid(statusArray_io_issueGranted_4_valid),
    .io_issueGranted_4_bits(statusArray_io_issueGranted_4_bits),
    .io_deqResp_0_valid(statusArray_io_deqResp_0_valid),
    .io_deqResp_0_bits_rsMask(statusArray_io_deqResp_0_bits_rsMask),
    .io_deqResp_0_bits_success(statusArray_io_deqResp_0_bits_success),
    .io_deqResp_1_valid(statusArray_io_deqResp_1_valid),
    .io_deqResp_1_bits_success(statusArray_io_deqResp_1_bits_success),
    .io_deqResp_2_valid(statusArray_io_deqResp_2_valid),
    .io_deqResp_2_bits_rsMask(statusArray_io_deqResp_2_bits_rsMask),
    .io_deqResp_2_bits_success(statusArray_io_deqResp_2_bits_success),
    .io_deqResp_3_valid(statusArray_io_deqResp_3_valid),
    .io_deqResp_3_bits_success(statusArray_io_deqResp_3_bits_success)
  );
  SelectPolicy_4 select ( // @[ReservationStation.scala 261:22]
    .clock(select_clock),
    .reset(select_reset),
    .io_validVec(select_io_validVec),
    .io_allocate_0_bits(select_io_allocate_0_bits),
    .io_allocate_1_bits(select_io_allocate_1_bits),
    .io_request(select_io_request),
    .io_grant_0_valid(select_io_grant_0_valid),
    .io_grant_0_bits(select_io_grant_0_bits),
    .io_grant_1_valid(select_io_grant_1_valid),
    .io_grant_1_bits(select_io_grant_1_bits),
    .io_balance_tick(select_io_balance_tick),
    .io_balance_out(select_io_balance_out)
  );
  DataArray_3 dataArray ( // @[ReservationStation.scala 262:25]
    .clock(dataArray_clock),
    .io_read_0_addr(dataArray_io_read_0_addr),
    .io_read_0_data_0(dataArray_io_read_0_data_0),
    .io_read_1_addr(dataArray_io_read_1_addr),
    .io_read_1_data_0(dataArray_io_read_1_data_0),
    .io_read_2_addr(dataArray_io_read_2_addr),
    .io_read_2_data_0(dataArray_io_read_2_data_0),
    .io_write_0_enable(dataArray_io_write_0_enable),
    .io_write_0_mask_0(dataArray_io_write_0_mask_0),
    .io_write_0_addr(dataArray_io_write_0_addr),
    .io_write_0_data_0(dataArray_io_write_0_data_0),
    .io_write_1_enable(dataArray_io_write_1_enable),
    .io_write_1_mask_0(dataArray_io_write_1_mask_0),
    .io_write_1_addr(dataArray_io_write_1_addr),
    .io_write_1_data_0(dataArray_io_write_1_data_0),
    .io_multiWrite_0_enable(dataArray_io_multiWrite_0_enable),
    .io_multiWrite_0_addr_0(dataArray_io_multiWrite_0_addr_0),
    .io_multiWrite_0_data(dataArray_io_multiWrite_0_data),
    .io_multiWrite_1_enable(dataArray_io_multiWrite_1_enable),
    .io_multiWrite_1_addr_0(dataArray_io_multiWrite_1_addr_0),
    .io_multiWrite_1_data(dataArray_io_multiWrite_1_data),
    .io_multiWrite_2_enable(dataArray_io_multiWrite_2_enable),
    .io_multiWrite_2_addr_0(dataArray_io_multiWrite_2_addr_0),
    .io_multiWrite_2_data(dataArray_io_multiWrite_2_data),
    .io_multiWrite_3_enable(dataArray_io_multiWrite_3_enable),
    .io_multiWrite_3_addr_0(dataArray_io_multiWrite_3_addr_0),
    .io_multiWrite_3_data(dataArray_io_multiWrite_3_data),
    .io_multiWrite_4_enable(dataArray_io_multiWrite_4_enable),
    .io_multiWrite_4_addr_0(dataArray_io_multiWrite_4_addr_0),
    .io_multiWrite_4_data(dataArray_io_multiWrite_4_data)
  );
  PayloadArray payloadArray ( // @[ReservationStation.scala 263:28]
    .clock(payloadArray_clock),
    .io_read_0_addr(payloadArray_io_read_0_addr),
    .io_read_0_data_cf_trigger_backendEn_0(payloadArray_io_read_0_data_cf_trigger_backendEn_0),
    .io_read_0_data_cf_trigger_backendEn_1(payloadArray_io_read_0_data_cf_trigger_backendEn_1),
    .io_read_0_data_cf_pd_isRVC(payloadArray_io_read_0_data_cf_pd_isRVC),
    .io_read_0_data_cf_pd_brType(payloadArray_io_read_0_data_cf_pd_brType),
    .io_read_0_data_cf_pd_isCall(payloadArray_io_read_0_data_cf_pd_isCall),
    .io_read_0_data_cf_pd_isRet(payloadArray_io_read_0_data_cf_pd_isRet),
    .io_read_0_data_cf_pred_taken(payloadArray_io_read_0_data_cf_pred_taken),
    .io_read_0_data_cf_storeSetHit(payloadArray_io_read_0_data_cf_storeSetHit),
    .io_read_0_data_cf_loadWaitStrict(payloadArray_io_read_0_data_cf_loadWaitStrict),
    .io_read_0_data_cf_ssid(payloadArray_io_read_0_data_cf_ssid),
    .io_read_0_data_cf_ftqPtr_flag(payloadArray_io_read_0_data_cf_ftqPtr_flag),
    .io_read_0_data_cf_ftqPtr_value(payloadArray_io_read_0_data_cf_ftqPtr_value),
    .io_read_0_data_cf_ftqOffset(payloadArray_io_read_0_data_cf_ftqOffset),
    .io_read_0_data_ctrl_fuType(payloadArray_io_read_0_data_ctrl_fuType),
    .io_read_0_data_ctrl_fuOpType(payloadArray_io_read_0_data_ctrl_fuOpType),
    .io_read_0_data_ctrl_rfWen(payloadArray_io_read_0_data_ctrl_rfWen),
    .io_read_0_data_ctrl_fpWen(payloadArray_io_read_0_data_ctrl_fpWen),
    .io_read_0_data_ctrl_imm(payloadArray_io_read_0_data_ctrl_imm),
    .io_read_0_data_pdest(payloadArray_io_read_0_data_pdest),
    .io_read_0_data_robIdx_flag(payloadArray_io_read_0_data_robIdx_flag),
    .io_read_0_data_robIdx_value(payloadArray_io_read_0_data_robIdx_value),
    .io_read_0_data_lqIdx_flag(payloadArray_io_read_0_data_lqIdx_flag),
    .io_read_0_data_lqIdx_value(payloadArray_io_read_0_data_lqIdx_value),
    .io_read_0_data_sqIdx_flag(payloadArray_io_read_0_data_sqIdx_flag),
    .io_read_0_data_sqIdx_value(payloadArray_io_read_0_data_sqIdx_value),
    .io_read_1_addr(payloadArray_io_read_1_addr),
    .io_read_1_data_cf_trigger_backendEn_0(payloadArray_io_read_1_data_cf_trigger_backendEn_0),
    .io_read_1_data_cf_trigger_backendEn_1(payloadArray_io_read_1_data_cf_trigger_backendEn_1),
    .io_read_1_data_cf_pd_isRVC(payloadArray_io_read_1_data_cf_pd_isRVC),
    .io_read_1_data_cf_pd_brType(payloadArray_io_read_1_data_cf_pd_brType),
    .io_read_1_data_cf_pd_isCall(payloadArray_io_read_1_data_cf_pd_isCall),
    .io_read_1_data_cf_pd_isRet(payloadArray_io_read_1_data_cf_pd_isRet),
    .io_read_1_data_cf_pred_taken(payloadArray_io_read_1_data_cf_pred_taken),
    .io_read_1_data_cf_storeSetHit(payloadArray_io_read_1_data_cf_storeSetHit),
    .io_read_1_data_cf_loadWaitStrict(payloadArray_io_read_1_data_cf_loadWaitStrict),
    .io_read_1_data_cf_ssid(payloadArray_io_read_1_data_cf_ssid),
    .io_read_1_data_cf_ftqPtr_flag(payloadArray_io_read_1_data_cf_ftqPtr_flag),
    .io_read_1_data_cf_ftqPtr_value(payloadArray_io_read_1_data_cf_ftqPtr_value),
    .io_read_1_data_cf_ftqOffset(payloadArray_io_read_1_data_cf_ftqOffset),
    .io_read_1_data_ctrl_fuType(payloadArray_io_read_1_data_ctrl_fuType),
    .io_read_1_data_ctrl_fuOpType(payloadArray_io_read_1_data_ctrl_fuOpType),
    .io_read_1_data_ctrl_rfWen(payloadArray_io_read_1_data_ctrl_rfWen),
    .io_read_1_data_ctrl_fpWen(payloadArray_io_read_1_data_ctrl_fpWen),
    .io_read_1_data_ctrl_imm(payloadArray_io_read_1_data_ctrl_imm),
    .io_read_1_data_pdest(payloadArray_io_read_1_data_pdest),
    .io_read_1_data_robIdx_flag(payloadArray_io_read_1_data_robIdx_flag),
    .io_read_1_data_robIdx_value(payloadArray_io_read_1_data_robIdx_value),
    .io_read_1_data_lqIdx_flag(payloadArray_io_read_1_data_lqIdx_flag),
    .io_read_1_data_lqIdx_value(payloadArray_io_read_1_data_lqIdx_value),
    .io_read_1_data_sqIdx_flag(payloadArray_io_read_1_data_sqIdx_flag),
    .io_read_1_data_sqIdx_value(payloadArray_io_read_1_data_sqIdx_value),
    .io_read_2_addr(payloadArray_io_read_2_addr),
    .io_read_2_data_cf_trigger_backendEn_0(payloadArray_io_read_2_data_cf_trigger_backendEn_0),
    .io_read_2_data_cf_trigger_backendEn_1(payloadArray_io_read_2_data_cf_trigger_backendEn_1),
    .io_read_2_data_cf_pd_isRVC(payloadArray_io_read_2_data_cf_pd_isRVC),
    .io_read_2_data_cf_pd_brType(payloadArray_io_read_2_data_cf_pd_brType),
    .io_read_2_data_cf_pd_isCall(payloadArray_io_read_2_data_cf_pd_isCall),
    .io_read_2_data_cf_pd_isRet(payloadArray_io_read_2_data_cf_pd_isRet),
    .io_read_2_data_cf_pred_taken(payloadArray_io_read_2_data_cf_pred_taken),
    .io_read_2_data_cf_storeSetHit(payloadArray_io_read_2_data_cf_storeSetHit),
    .io_read_2_data_cf_loadWaitStrict(payloadArray_io_read_2_data_cf_loadWaitStrict),
    .io_read_2_data_cf_ssid(payloadArray_io_read_2_data_cf_ssid),
    .io_read_2_data_cf_ftqPtr_flag(payloadArray_io_read_2_data_cf_ftqPtr_flag),
    .io_read_2_data_cf_ftqPtr_value(payloadArray_io_read_2_data_cf_ftqPtr_value),
    .io_read_2_data_cf_ftqOffset(payloadArray_io_read_2_data_cf_ftqOffset),
    .io_read_2_data_ctrl_fuType(payloadArray_io_read_2_data_ctrl_fuType),
    .io_read_2_data_ctrl_fuOpType(payloadArray_io_read_2_data_ctrl_fuOpType),
    .io_read_2_data_ctrl_rfWen(payloadArray_io_read_2_data_ctrl_rfWen),
    .io_read_2_data_ctrl_fpWen(payloadArray_io_read_2_data_ctrl_fpWen),
    .io_read_2_data_ctrl_imm(payloadArray_io_read_2_data_ctrl_imm),
    .io_read_2_data_pdest(payloadArray_io_read_2_data_pdest),
    .io_read_2_data_robIdx_flag(payloadArray_io_read_2_data_robIdx_flag),
    .io_read_2_data_robIdx_value(payloadArray_io_read_2_data_robIdx_value),
    .io_read_2_data_lqIdx_flag(payloadArray_io_read_2_data_lqIdx_flag),
    .io_read_2_data_lqIdx_value(payloadArray_io_read_2_data_lqIdx_value),
    .io_read_2_data_sqIdx_flag(payloadArray_io_read_2_data_sqIdx_flag),
    .io_read_2_data_sqIdx_value(payloadArray_io_read_2_data_sqIdx_value),
    .io_write_0_enable(payloadArray_io_write_0_enable),
    .io_write_0_addr(payloadArray_io_write_0_addr),
    .io_write_0_data_cf_trigger_backendEn_0(payloadArray_io_write_0_data_cf_trigger_backendEn_0),
    .io_write_0_data_cf_trigger_backendEn_1(payloadArray_io_write_0_data_cf_trigger_backendEn_1),
    .io_write_0_data_cf_pd_isRVC(payloadArray_io_write_0_data_cf_pd_isRVC),
    .io_write_0_data_cf_pd_brType(payloadArray_io_write_0_data_cf_pd_brType),
    .io_write_0_data_cf_pd_isCall(payloadArray_io_write_0_data_cf_pd_isCall),
    .io_write_0_data_cf_pd_isRet(payloadArray_io_write_0_data_cf_pd_isRet),
    .io_write_0_data_cf_pred_taken(payloadArray_io_write_0_data_cf_pred_taken),
    .io_write_0_data_cf_storeSetHit(payloadArray_io_write_0_data_cf_storeSetHit),
    .io_write_0_data_cf_loadWaitStrict(payloadArray_io_write_0_data_cf_loadWaitStrict),
    .io_write_0_data_cf_ssid(payloadArray_io_write_0_data_cf_ssid),
    .io_write_0_data_cf_ftqPtr_flag(payloadArray_io_write_0_data_cf_ftqPtr_flag),
    .io_write_0_data_cf_ftqPtr_value(payloadArray_io_write_0_data_cf_ftqPtr_value),
    .io_write_0_data_cf_ftqOffset(payloadArray_io_write_0_data_cf_ftqOffset),
    .io_write_0_data_ctrl_fuType(payloadArray_io_write_0_data_ctrl_fuType),
    .io_write_0_data_ctrl_fuOpType(payloadArray_io_write_0_data_ctrl_fuOpType),
    .io_write_0_data_ctrl_rfWen(payloadArray_io_write_0_data_ctrl_rfWen),
    .io_write_0_data_ctrl_fpWen(payloadArray_io_write_0_data_ctrl_fpWen),
    .io_write_0_data_ctrl_imm(payloadArray_io_write_0_data_ctrl_imm),
    .io_write_0_data_pdest(payloadArray_io_write_0_data_pdest),
    .io_write_0_data_robIdx_flag(payloadArray_io_write_0_data_robIdx_flag),
    .io_write_0_data_robIdx_value(payloadArray_io_write_0_data_robIdx_value),
    .io_write_0_data_lqIdx_flag(payloadArray_io_write_0_data_lqIdx_flag),
    .io_write_0_data_lqIdx_value(payloadArray_io_write_0_data_lqIdx_value),
    .io_write_0_data_sqIdx_flag(payloadArray_io_write_0_data_sqIdx_flag),
    .io_write_0_data_sqIdx_value(payloadArray_io_write_0_data_sqIdx_value),
    .io_write_1_enable(payloadArray_io_write_1_enable),
    .io_write_1_addr(payloadArray_io_write_1_addr),
    .io_write_1_data_cf_trigger_backendEn_0(payloadArray_io_write_1_data_cf_trigger_backendEn_0),
    .io_write_1_data_cf_trigger_backendEn_1(payloadArray_io_write_1_data_cf_trigger_backendEn_1),
    .io_write_1_data_cf_pd_isRVC(payloadArray_io_write_1_data_cf_pd_isRVC),
    .io_write_1_data_cf_pd_brType(payloadArray_io_write_1_data_cf_pd_brType),
    .io_write_1_data_cf_pd_isCall(payloadArray_io_write_1_data_cf_pd_isCall),
    .io_write_1_data_cf_pd_isRet(payloadArray_io_write_1_data_cf_pd_isRet),
    .io_write_1_data_cf_pred_taken(payloadArray_io_write_1_data_cf_pred_taken),
    .io_write_1_data_cf_storeSetHit(payloadArray_io_write_1_data_cf_storeSetHit),
    .io_write_1_data_cf_loadWaitStrict(payloadArray_io_write_1_data_cf_loadWaitStrict),
    .io_write_1_data_cf_ssid(payloadArray_io_write_1_data_cf_ssid),
    .io_write_1_data_cf_ftqPtr_flag(payloadArray_io_write_1_data_cf_ftqPtr_flag),
    .io_write_1_data_cf_ftqPtr_value(payloadArray_io_write_1_data_cf_ftqPtr_value),
    .io_write_1_data_cf_ftqOffset(payloadArray_io_write_1_data_cf_ftqOffset),
    .io_write_1_data_ctrl_fuType(payloadArray_io_write_1_data_ctrl_fuType),
    .io_write_1_data_ctrl_fuOpType(payloadArray_io_write_1_data_ctrl_fuOpType),
    .io_write_1_data_ctrl_rfWen(payloadArray_io_write_1_data_ctrl_rfWen),
    .io_write_1_data_ctrl_fpWen(payloadArray_io_write_1_data_ctrl_fpWen),
    .io_write_1_data_ctrl_imm(payloadArray_io_write_1_data_ctrl_imm),
    .io_write_1_data_pdest(payloadArray_io_write_1_data_pdest),
    .io_write_1_data_robIdx_flag(payloadArray_io_write_1_data_robIdx_flag),
    .io_write_1_data_robIdx_value(payloadArray_io_write_1_data_robIdx_value),
    .io_write_1_data_lqIdx_flag(payloadArray_io_write_1_data_lqIdx_flag),
    .io_write_1_data_lqIdx_value(payloadArray_io_write_1_data_lqIdx_value),
    .io_write_1_data_sqIdx_flag(payloadArray_io_write_1_data_sqIdx_flag),
    .io_write_1_data_sqIdx_value(payloadArray_io_write_1_data_sqIdx_value)
  );
  AgeDetector s1_oldestSel_age ( // @[SelectPolicy.scala 174:21]
    .clock(s1_oldestSel_age_clock),
    .reset(s1_oldestSel_age_reset),
    .io_enq_0(s1_oldestSel_age_io_enq_0),
    .io_enq_1(s1_oldestSel_age_io_enq_1),
    .io_deq(s1_oldestSel_age_io_deq),
    .io_out(s1_oldestSel_age_io_out)
  );
  OldestSelection oldestSelection ( // @[ReservationStation.scala 498:33]
    .io_in_1_valid(oldestSelection_io_in_1_valid),
    .io_in_1_bits(oldestSelection_io_in_1_bits),
    .io_oldest_valid(oldestSelection_io_oldest_valid),
    .io_oldest_bits(oldestSelection_io_oldest_bits),
    .io_isOverrided_0(oldestSelection_io_isOverrided_0)
  );
  ImmExtractor immExt ( // @[DataArray.scala 161:18]
    .io_data_in_0(immExt_io_data_in_0),
    .io_data_out_0(immExt_io_data_out_0)
  );
  ImmExtractor immExt_1 ( // @[DataArray.scala 161:18]
    .io_data_in_0(immExt_1_io_data_in_0),
    .io_data_out_0(immExt_1_io_data_out_0)
  );
  DataSelect_3 dataSelect ( // @[ReservationStation.scala 690:26]
    .io_doOverride_0(dataSelect_io_doOverride_0),
    .io_readData_0_0(dataSelect_io_readData_0_0),
    .io_readData_1_0(dataSelect_io_readData_1_0),
    .io_readData_2_0(dataSelect_io_readData_2_0),
    .io_fromSlowPorts_0_0(dataSelect_io_fromSlowPorts_0_0),
    .io_fromSlowPorts_1_0(dataSelect_io_fromSlowPorts_1_0),
    .io_fromSlowPorts_2_0(dataSelect_io_fromSlowPorts_2_0),
    .io_fromSlowPorts_3_0(dataSelect_io_fromSlowPorts_3_0),
    .io_fromSlowPorts_4_0(dataSelect_io_fromSlowPorts_4_0),
    .io_slowData_0(dataSelect_io_slowData_0),
    .io_slowData_1(dataSelect_io_slowData_1),
    .io_slowData_2(dataSelect_io_slowData_2),
    .io_slowData_3(dataSelect_io_slowData_3),
    .io_slowData_4(dataSelect_io_slowData_4),
    .io_enqBypass_0_0(dataSelect_io_enqBypass_0_0),
    .io_enqBypass_1_1(dataSelect_io_enqBypass_1_1),
    .io_enqData_0_0_bits(dataSelect_io_enqData_0_0_bits),
    .io_enqData_1_0_bits(dataSelect_io_enqData_1_0_bits),
    .io_deqData_0_0(dataSelect_io_deqData_0_0),
    .io_deqData_1_0(dataSelect_io_deqData_1_0)
  );
  BypassNetworkLeft_5 bypassNetwork ( // @[BypassNetwork.scala 111:13]
    .clock(bypassNetwork_clock),
    .io_hold(bypassNetwork_io_hold),
    .io_source_0(bypassNetwork_io_source_0),
    .io_target_0(bypassNetwork_io_target_0),
    .io_bypass_0_valid_0(bypassNetwork_io_bypass_0_valid_0),
    .io_bypass_0_data(bypassNetwork_io_bypass_0_data),
    .io_bypass_1_valid_0(bypassNetwork_io_bypass_1_valid_0),
    .io_bypass_1_data(bypassNetwork_io_bypass_1_data)
  );
  BypassNetworkLeft_5 bypassNetwork_1 ( // @[BypassNetwork.scala 111:13]
    .clock(bypassNetwork_1_clock),
    .io_hold(bypassNetwork_1_io_hold),
    .io_source_0(bypassNetwork_1_io_source_0),
    .io_target_0(bypassNetwork_1_io_target_0),
    .io_bypass_0_valid_0(bypassNetwork_1_io_bypass_0_valid_0),
    .io_bypass_0_data(bypassNetwork_1_io_bypass_0_data),
    .io_bypass_1_valid_0(bypassNetwork_1_io_bypass_1_valid_0),
    .io_bypass_1_data(bypassNetwork_1_io_bypass_1_data)
  );
  assign io_fromDispatch_0_ready = emptyThisCycle > _GEN_890; // @[ReservationStation.scala 323:42]
  assign io_fromDispatch_1_ready = emptyThisCycle > _GEN_891; // @[ReservationStation.scala 323:42]
  assign io_deq_0_valid = valid; // @[PipelineConnect.scala 117:17 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_trigger_backendEn_0 = data_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_trigger_backendEn_1 = data_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_ftqPtr_value = data_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_cf_ftqOffset = data_uop_cf_ftqOffset; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fuType = data_uop_ctrl_fuType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fuOpType = data_uop_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_rfWen = data_uop_ctrl_rfWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_fpWen = data_uop_ctrl_fpWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_ctrl_imm = data_uop_ctrl_imm; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_pdest = data_uop_pdest; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_robIdx_flag = data_uop_robIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_robIdx_value = data_uop_robIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_lqIdx_flag = data_uop_lqIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_lqIdx_value = data_uop_lqIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_sqIdx_flag = data_uop_sqIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_uop_sqIdx_value = data_uop_sqIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_0_bits_src_0 = bypassNetwork_io_target_0; // @[ReservationStation.scala 265:20 771:31]
  assign io_deq_1_valid = valid_1; // @[PipelineConnect.scala 117:17 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_cf_trigger_backendEn_0 = data_1_uop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_cf_trigger_backendEn_1 = data_1_uop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_cf_ftqPtr_value = data_1_uop_cf_ftqPtr_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_cf_ftqOffset = data_1_uop_cf_ftqOffset; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_ctrl_fuType = data_1_uop_ctrl_fuType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_ctrl_fuOpType = data_1_uop_ctrl_fuOpType; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_ctrl_rfWen = data_1_uop_ctrl_rfWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_ctrl_fpWen = data_1_uop_ctrl_fpWen; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_ctrl_imm = data_1_uop_ctrl_imm; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_pdest = data_1_uop_pdest; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_robIdx_flag = data_1_uop_robIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_robIdx_value = data_1_uop_robIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_lqIdx_flag = data_1_uop_lqIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_lqIdx_value = data_1_uop_lqIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_sqIdx_flag = data_1_uop_sqIdx_flag; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_uop_sqIdx_value = data_1_uop_sqIdx_value; // @[PipelineConnect.scala 116:16 ReservationStation.scala 265:20]
  assign io_deq_1_bits_src_0 = bypassNetwork_1_io_target_0; // @[ReservationStation.scala 265:20 771:31]
  assign io_feedback_0_rsIdx = s2_issuePtr_0; // @[ReservationStation.scala 737:32]
  assign io_feedback_1_rsIdx = s2_issuePtr_1; // @[ReservationStation.scala 737:32]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign statusArray_clock = clock;
  assign statusArray_reset = reset;
  assign statusArray_io_redirect_valid = io_redirect_valid; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ReservationStation.scala 436:27]
  assign statusArray_io_redirect_bits_level = io_redirect_bits_level; // @[ReservationStation.scala 436:27]
  assign statusArray_io_update_0_enable = s1_dispatchUops_dup_0_0_valid; // @[ReservationStation.scala 444:25]
  assign statusArray_io_update_0_addr = s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 445:23]
  assign statusArray_io_update_0_data_scheduled = 1'h0; // @[ReservationStation.scala 446:60]
  assign statusArray_io_update_0_data_srcState_0 = _statusArray_io_update_0_data_srcState_0_T_2 | |s1_enqWakeup_0_0 | |
    _statusArray_io_update_0_data_srcState_0_T_11; // @[ReservationStation.scala 451:96]
  assign statusArray_io_update_0_data_psrc_0 = s1_dispatchUops_dup_0_0_bits_psrc_0; // @[ReservationStation.scala 454:28]
  assign statusArray_io_update_0_data_srcType_0 = s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 455:31]
  assign statusArray_io_update_0_data_robIdx_flag = s1_dispatchUops_dup_0_0_bits_robIdx_flag; // @[ReservationStation.scala 456:30]
  assign statusArray_io_update_0_data_robIdx_value = s1_dispatchUops_dup_0_0_bits_robIdx_value; // @[ReservationStation.scala 456:30]
  assign statusArray_io_update_1_enable = s1_dispatchUops_dup_0_1_valid; // @[ReservationStation.scala 444:25]
  assign statusArray_io_update_1_addr = s1_allocatePtrOH_dup_0_1; // @[ReservationStation.scala 445:23]
  assign statusArray_io_update_1_data_scheduled = 1'h0; // @[ReservationStation.scala 446:60]
  assign statusArray_io_update_1_data_srcState_0 = _statusArray_io_update_1_data_srcState_0_T_2 | |s1_enqWakeup_1_0 | |
    _statusArray_io_update_1_data_srcState_0_T_11; // @[ReservationStation.scala 451:96]
  assign statusArray_io_update_1_data_psrc_0 = s1_dispatchUops_dup_0_1_bits_psrc_0; // @[ReservationStation.scala 454:28]
  assign statusArray_io_update_1_data_srcType_0 = s1_dispatchUops_dup_0_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 455:31]
  assign statusArray_io_update_1_data_robIdx_flag = s1_dispatchUops_dup_0_1_bits_robIdx_flag; // @[ReservationStation.scala 456:30]
  assign statusArray_io_update_1_data_robIdx_value = s1_dispatchUops_dup_0_1_bits_robIdx_value; // @[ReservationStation.scala 456:30]
  assign statusArray_io_wakeup_0_valid = io_fastUopsIn_0_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_0_bits_ctrl_rfWen = io_fastUopsIn_0_bits_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_0_bits_pdest = io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_1_valid = io_fastUopsIn_1_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_1_bits_ctrl_rfWen = io_fastUopsIn_1_bits_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_1_bits_pdest = io_fastUopsIn_1_bits_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_2_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_2_bits_ctrl_rfWen = io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_2_bits_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_3_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_3_bits_ctrl_rfWen = io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_3_bits_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_4_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_4_bits_ctrl_rfWen = io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_4_bits_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_5_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_5_bits_ctrl_rfWen = io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_5_bits_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_6_valid = io_slowPorts_4_valid; // @[ReservationStation.scala 351:18]
  assign statusArray_io_wakeup_6_bits_ctrl_rfWen = io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 352:17]
  assign statusArray_io_wakeup_6_bits_pdest = io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 352:17]
  assign statusArray_io_issueGranted_0_valid = s1_issue_dispatch_0 & s2_deq_0_ready; // @[ReservationStation.scala 478:84]
  assign statusArray_io_issueGranted_0_bits = s1_allocatePtrOH_dup_0_0; // @[ReservationStation.scala 479:21]
  assign statusArray_io_issueGranted_1_valid = s1_issue_dispatch_1 & s2_deq_1_ready; // @[ReservationStation.scala 478:84]
  assign statusArray_io_issueGranted_1_bits = s1_allocatePtrOH_dup_0_1; // @[ReservationStation.scala 479:21]
  assign statusArray_io_issueGranted_2_valid = select_io_grant_0_valid & _s1_issue_dispatch_0_T & s2_deq_0_ready; // @[ReservationStation.scala 483:72]
  assign statusArray_io_issueGranted_2_bits = select_io_grant_0_bits; // @[ReservationStation.scala 484:21]
  assign statusArray_io_issueGranted_3_valid = _s1_issuePtrOH_1_valid_T & s2_deq_1_ready; // @[ReservationStation.scala 483:72]
  assign statusArray_io_issueGranted_3_bits = select_io_grant_1_bits; // @[ReservationStation.scala 484:21]
  assign statusArray_io_issueGranted_4_valid = s1_issue_oldest_0 & s2_deq_0_ready; // @[ParallelMux.scala 64:44]
  assign statusArray_io_issueGranted_4_bits = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign statusArray_io_deqResp_0_valid = io_feedback_0_feedbackSlow_valid; // @[ReservationStation.scala 534:41]
  assign statusArray_io_deqResp_0_bits_rsMask = 16'h1 << io_feedback_0_feedbackSlow_bits_rsIdx; // @[OneHot.scala 57:35]
  assign statusArray_io_deqResp_0_bits_success = io_feedback_0_feedbackSlow_bits_hit; // @[ReservationStation.scala 536:48]
  assign statusArray_io_deqResp_1_valid = 1'h0; // @[ReservationStation.scala 540:43]
  assign statusArray_io_deqResp_1_bits_success = 1'h0; // @[ReservationStation.scala 542:50]
  assign statusArray_io_deqResp_2_valid = io_feedback_1_feedbackSlow_valid; // @[ReservationStation.scala 534:41]
  assign statusArray_io_deqResp_2_bits_rsMask = 16'h1 << io_feedback_1_feedbackSlow_bits_rsIdx; // @[OneHot.scala 57:35]
  assign statusArray_io_deqResp_2_bits_success = io_feedback_1_feedbackSlow_bits_hit; // @[ReservationStation.scala 536:48]
  assign statusArray_io_deqResp_3_valid = 1'h0; // @[ReservationStation.scala 540:43]
  assign statusArray_io_deqResp_3_bits_success = 1'h0; // @[ReservationStation.scala 542:50]
  assign select_clock = clock;
  assign select_reset = reset;
  assign select_io_validVec = validAfterAllocate; // @[ReservationStation.scala 284:22]
  assign select_io_request = statusArray_io_canIssue; // @[ReservationStation.scala 357:21]
  assign select_io_balance_tick = select_io_balance_out & ~_T_153 & _T_163 | _select_io_balance_tick_T_13; // @[ReservationStation.scala 906:72]
  assign dataArray_clock = clock;
  assign dataArray_io_read_0_addr = select_io_grant_0_bits; // @[ReservationStation.scala 375:31]
  assign dataArray_io_read_1_addr = select_io_grant_1_bits; // @[ReservationStation.scala 375:31]
  assign dataArray_io_read_2_addr = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign dataArray_io_write_0_enable = s1_dispatchUops_dup_2_0_valid; // @[ReservationStation.scala 602:34]
  assign dataArray_io_write_0_mask_0 = s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_2_0_bits_srcState_0; // @[Bundle.scala 249:81]
  assign dataArray_io_write_0_addr = s1_allocatePtrOH_dup_2_0; // @[ReservationStation.scala 604:32]
  assign dataArray_io_write_0_data_0 = immExt_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign dataArray_io_write_1_enable = s1_dispatchUops_dup_2_1_valid; // @[ReservationStation.scala 602:34]
  assign dataArray_io_write_1_mask_0 = s1_dispatchUops_dup_2_1_bits_ctrl_srcType_0[0] |
    s1_dispatchUops_dup_2_1_bits_srcState_0; // @[Bundle.scala 249:81]
  assign dataArray_io_write_1_addr = s1_allocatePtrOH_dup_2_1; // @[ReservationStation.scala 604:32]
  assign dataArray_io_write_1_data_0 = immExt_1_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign dataArray_io_multiWrite_0_enable = dataArray_io_multiWrite_0_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_0_addr_0 = _dataArray_io_multiWrite_0_addr_0_T_16 | allocateDataCapture; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_0_data = dataArray_io_multiWrite_0_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_1_enable = dataArray_io_multiWrite_1_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_1_addr_0 = _dataArray_io_multiWrite_1_addr_0_T_16 | allocateDataCapture_1; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_1_data = dataArray_io_multiWrite_1_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_2_enable = dataArray_io_multiWrite_2_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_2_addr_0 = _dataArray_io_multiWrite_2_addr_0_T_16 | allocateDataCapture_2; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_2_data = dataArray_io_multiWrite_2_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_3_enable = dataArray_io_multiWrite_3_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_3_addr_0 = _dataArray_io_multiWrite_3_addr_0_T_16 | allocateDataCapture_3; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_3_data = dataArray_io_multiWrite_3_data_r; // @[ReservationStation.scala 638:12]
  assign dataArray_io_multiWrite_4_enable = dataArray_io_multiWrite_4_enable_REG; // @[ReservationStation.scala 632:14]
  assign dataArray_io_multiWrite_4_addr_0 = _dataArray_io_multiWrite_4_addr_0_T_16 | allocateDataCapture_4; // @[ReservationStation.scala 636:68]
  assign dataArray_io_multiWrite_4_data = dataArray_io_multiWrite_4_data_r; // @[ReservationStation.scala 638:12]
  assign payloadArray_clock = clock;
  assign payloadArray_io_read_0_addr = select_io_grant_0_bits; // @[ReservationStation.scala 367:34]
  assign payloadArray_io_read_1_addr = select_io_grant_1_bits; // @[ReservationStation.scala 367:34]
  assign payloadArray_io_read_2_addr = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign payloadArray_io_write_0_enable = s1_dispatchUops_dup_1_0_valid; // @[ReservationStation.scala 470:25]
  assign payloadArray_io_write_0_addr = s1_allocatePtrOH_dup_1_0; // @[ReservationStation.scala 471:23]
  assign payloadArray_io_write_0_data_cf_trigger_backendEn_0 = s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_trigger_backendEn_1 = s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_isRVC = s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_brType = s1_dispatchUops_dup_1_0_bits_cf_pd_brType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_isCall = s1_dispatchUops_dup_1_0_bits_cf_pd_isCall; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pd_isRet = s1_dispatchUops_dup_1_0_bits_cf_pd_isRet; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_pred_taken = s1_dispatchUops_dup_1_0_bits_cf_pred_taken; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_storeSetHit = s1_dispatchUops_dup_1_0_bits_cf_storeSetHit; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_loadWaitStrict = s1_dispatchUops_dup_1_0_bits_cf_loadWaitStrict; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ssid = s1_dispatchUops_dup_1_0_bits_cf_ssid; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqPtr_flag = s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqPtr_value = s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_cf_ftqOffset = s1_dispatchUops_dup_1_0_bits_cf_ftqOffset; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fuType = s1_dispatchUops_dup_1_0_bits_ctrl_fuType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fuOpType = s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_rfWen = s1_dispatchUops_dup_1_0_bits_ctrl_rfWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_fpWen = s1_dispatchUops_dup_1_0_bits_ctrl_fpWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_ctrl_imm = s1_dispatchUops_dup_1_0_bits_ctrl_imm; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_pdest = s1_dispatchUops_dup_1_0_bits_pdest; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_robIdx_flag = s1_dispatchUops_dup_1_0_bits_robIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_robIdx_value = s1_dispatchUops_dup_1_0_bits_robIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_lqIdx_flag = s1_dispatchUops_dup_1_0_bits_lqIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_lqIdx_value = s1_dispatchUops_dup_1_0_bits_lqIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_sqIdx_flag = s1_dispatchUops_dup_1_0_bits_sqIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_0_data_sqIdx_value = s1_dispatchUops_dup_1_0_bits_sqIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_enable = s1_dispatchUops_dup_1_1_valid; // @[ReservationStation.scala 470:25]
  assign payloadArray_io_write_1_addr = s1_allocatePtrOH_dup_1_1; // @[ReservationStation.scala 471:23]
  assign payloadArray_io_write_1_data_cf_trigger_backendEn_0 = s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_trigger_backendEn_1 = s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_pd_isRVC = s1_dispatchUops_dup_1_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_pd_brType = s1_dispatchUops_dup_1_1_bits_cf_pd_brType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_pd_isCall = s1_dispatchUops_dup_1_1_bits_cf_pd_isCall; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_pd_isRet = s1_dispatchUops_dup_1_1_bits_cf_pd_isRet; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_pred_taken = s1_dispatchUops_dup_1_1_bits_cf_pred_taken; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_storeSetHit = s1_dispatchUops_dup_1_1_bits_cf_storeSetHit; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_loadWaitStrict = s1_dispatchUops_dup_1_1_bits_cf_loadWaitStrict; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_ssid = s1_dispatchUops_dup_1_1_bits_cf_ssid; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_ftqPtr_flag = s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_ftqPtr_value = s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_cf_ftqOffset = s1_dispatchUops_dup_1_1_bits_cf_ftqOffset; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_ctrl_fuType = s1_dispatchUops_dup_1_1_bits_ctrl_fuType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_ctrl_fuOpType = s1_dispatchUops_dup_1_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_ctrl_rfWen = s1_dispatchUops_dup_1_1_bits_ctrl_rfWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_ctrl_fpWen = s1_dispatchUops_dup_1_1_bits_ctrl_fpWen; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_ctrl_imm = s1_dispatchUops_dup_1_1_bits_ctrl_imm; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_pdest = s1_dispatchUops_dup_1_1_bits_pdest; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_robIdx_flag = s1_dispatchUops_dup_1_1_bits_robIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_robIdx_value = s1_dispatchUops_dup_1_1_bits_robIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_lqIdx_flag = s1_dispatchUops_dup_1_1_bits_lqIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_lqIdx_value = s1_dispatchUops_dup_1_1_bits_lqIdx_value; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_sqIdx_flag = s1_dispatchUops_dup_1_1_bits_sqIdx_flag; // @[ReservationStation.scala 472:23]
  assign payloadArray_io_write_1_data_sqIdx_value = s1_dispatchUops_dup_1_1_bits_sqIdx_value; // @[ReservationStation.scala 472:23]
  assign s1_oldestSel_age_clock = clock;
  assign s1_oldestSel_age_reset = reset;
  assign s1_oldestSel_age_io_enq_0 = enqVec_REG; // @[ReservationStation.scala 360:{23,23}]
  assign s1_oldestSel_age_io_enq_1 = enqVec_REG_1; // @[ReservationStation.scala 360:{23,23}]
  assign s1_oldestSel_age_io_deq = statusArray_io_flushed; // @[SelectPolicy.scala 176:16]
  assign oldestSelection_io_in_1_valid = select_io_grant_1_valid; // @[ReservationStation.scala 499:27]
  assign oldestSelection_io_in_1_bits = select_io_grant_1_bits; // @[ReservationStation.scala 499:27]
  assign oldestSelection_io_oldest_valid = |_s1_oldestSel_out_valid_T; // @[SelectPolicy.scala 178:42]
  assign oldestSelection_io_oldest_bits = s1_oldestSel_age_io_out; // @[SelectPolicy.scala 177:19 179:14]
  assign immExt_io_data_in_0 = io_srcRegValue_1_0; // @[DataArray.scala 163:23]
  assign immExt_1_io_data_in_0 = io_srcRegValue_0_0; // @[DataArray.scala 163:23]
  assign dataSelect_io_doOverride_0 = oldestSelection_io_isOverrided_0; // @[ReservationStation.scala 401:29 503:21]
  assign dataSelect_io_readData_0_0 = dataArray_io_read_0_data_0; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_readData_1_0 = dataArray_io_read_1_data_0; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_readData_2_0 = dataArray_io_read_2_data_0; // @[ReservationStation.scala 692:26]
  assign dataSelect_io_fromSlowPorts_0_0 = {dataSelect_io_fromSlowPorts_0_0_hi,dataSelect_io_fromSlowPorts_0_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_1_0 = {dataSelect_io_fromSlowPorts_1_0_hi,dataSelect_io_fromSlowPorts_1_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_2_0 = {dataSelect_io_fromSlowPorts_2_0_hi,dataSelect_io_fromSlowPorts_2_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_3_0 = {dataSelect_io_fromSlowPorts_3_0_hi,dataSelect_io_fromSlowPorts_3_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_fromSlowPorts_4_0 = {dataSelect_io_fromSlowPorts_4_0_hi,dataSelect_io_fromSlowPorts_4_0_lo}; // @[ReservationStation.scala 696:103]
  assign dataSelect_io_slowData_0 = dataArray_io_multiWrite_0_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_1 = dataArray_io_multiWrite_1_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_2 = dataArray_io_multiWrite_2_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_3 = dataArray_io_multiWrite_3_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_slowData_4 = dataArray_io_multiWrite_4_data; // @[ReservationStation.scala 699:26]
  assign dataSelect_io_enqBypass_0_0 = canBypass & ~s1_issue_oldest_0 & ~select_io_grant_0_valid; // @[ReservationStation.scala 511:62]
  assign dataSelect_io_enqBypass_1_1 = canBypass_1 & ~select_io_grant_1_valid; // @[ReservationStation.scala 511:62]
  assign dataSelect_io_enqData_0_0_bits = immExt_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign dataSelect_io_enqData_1_0_bits = immExt_1_io_data_out_0; // @[ReservationStation.scala 588:29 592:12]
  assign bypassNetwork_clock = clock;
  assign bypassNetwork_io_hold = ~s2_deq_0_ready | ~s1_out_0_valid; // @[ReservationStation.scala 765:49]
  assign bypassNetwork_io_source_0 = dataSelect_io_deqData_0_0; // @[ReservationStation.scala 403:20 709:29]
  assign bypassNetwork_io_bypass_0_valid_0 = _s1_issuePtrOH_0_valid_T ? normalFastWakeupMatch_0_0 : s1_fastWakeup_0_0_0; // @[ReservationStation.scala 760:40]
  assign bypassNetwork_io_bypass_0_data = io_fastDatas_0; // @[ReservationStation.scala 769:17]
  assign bypassNetwork_io_bypass_1_valid_0 = _s1_issuePtrOH_0_valid_T ? normalFastWakeupMatch_0_1 : s1_fastWakeup_0_0_1; // @[ReservationStation.scala 760:40]
  assign bypassNetwork_io_bypass_1_data = io_fastDatas_1; // @[ReservationStation.scala 769:17]
  assign bypassNetwork_1_clock = clock;
  assign bypassNetwork_1_io_hold = ~s2_deq_1_ready | ~s1_out_1_valid; // @[ReservationStation.scala 765:49]
  assign bypassNetwork_1_io_source_0 = dataSelect_io_deqData_1_0; // @[ReservationStation.scala 403:20 709:29]
  assign bypassNetwork_1_io_bypass_0_valid_0 = _s1_issuePtrOH_1_valid_T ? normalFastWakeupMatch_1_0_0 :
    s1_fastWakeup_1_0_0; // @[ReservationStation.scala 760:40]
  assign bypassNetwork_1_io_bypass_0_data = io_fastDatas_0; // @[ReservationStation.scala 769:17]
  assign bypassNetwork_1_io_bypass_1_valid_0 = _s1_issuePtrOH_1_valid_T ? normalFastWakeupMatch_1_0_1 :
    s1_fastWakeup_1_0_1; // @[ReservationStation.scala 760:40]
  assign bypassNetwork_1_io_bypass_1_data = io_fastDatas_1; // @[ReservationStation.scala 769:17]
  always @(posedge clock) begin
    emptyThisCycle <= numEmptyAfterS1 + numDeq; // @[ReservationStation.scala 318:39]
    allocateThisCycle <= _allocateThisCycle_T[1:0]; // @[ReservationStation.scala 322:25]
    allocateThisCycle_1 <= _allocateThisCycle_T_1[1:0]; // @[ReservationStation.scala 322:25]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 360:90]
      enqVec_REG <= s0_allocatePtrOH_0;
    end else begin
      enqVec_REG <= 16'h0;
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 360:90]
      enqVec_REG_1 <= s0_allocatePtrOH_1;
    end else begin
      enqVec_REG_1 <= 16'h0;
    end
    s1_dispatchUops_dup_0_0_valid <= _s0_doEnqueue_1_T & _s0_doEnqueue_1_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_0 <= io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_1 <= io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value <= io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_cf_ftqOffset <= io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0 <= io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fuType <= io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType <= io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_rfWen <= io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_fpWen <= io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_ctrl_imm <= io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_srcState_0 <= io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_psrc_0 <= io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_pdest <= io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_robIdx_flag <= io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_robIdx_value <= io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_lqIdx_flag <= io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_lqIdx_value <= io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_sqIdx_flag <= io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_0_bits_sqIdx_value <= io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_0_1_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_0 <= io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_1 <= io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_cf_ftqPtr_value <= io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_cf_ftqOffset <= io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_srcType_0 <= io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_fuType <= io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_fuOpType <= io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_rfWen <= io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_fpWen <= io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_ctrl_imm <= io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_srcState_0 <= io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_psrc_0 <= io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_pdest <= io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_robIdx_flag <= io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_robIdx_value <= io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_lqIdx_flag <= io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_lqIdx_value <= io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_sqIdx_flag <= io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_0_1_bits_sqIdx_value <= io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_1_0_valid <= _s0_doEnqueue_1_T & _s0_doEnqueue_1_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_0 <= io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_1 <= io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC <= io_fromDispatch_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_brType <= io_fromDispatch_1_bits_cf_pd_brType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isCall <= io_fromDispatch_1_bits_cf_pd_isCall; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pd_isRet <= io_fromDispatch_1_bits_cf_pd_isRet; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_pred_taken <= io_fromDispatch_1_bits_cf_pred_taken; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_storeSetHit <= io_fromDispatch_1_bits_cf_storeSetHit; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_loadWaitStrict <= io_fromDispatch_1_bits_cf_loadWaitStrict; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ssid <= io_fromDispatch_1_bits_cf_ssid; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag <= io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value <= io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_cf_ftqOffset <= io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fuType <= io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType <= io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_rfWen <= io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_fpWen <= io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_ctrl_imm <= io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_pdest <= io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_robIdx_flag <= io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_robIdx_value <= io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_lqIdx_flag <= io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_lqIdx_value <= io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_sqIdx_flag <= io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_0_bits_sqIdx_value <= io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_1_1_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_0 <= io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_1 <= io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_pd_isRVC <= io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_pd_brType <= io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_pd_isCall <= io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_pd_isRet <= io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_pred_taken <= io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_storeSetHit <= io_fromDispatch_0_bits_cf_storeSetHit; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_loadWaitStrict <= io_fromDispatch_0_bits_cf_loadWaitStrict; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_ssid <= io_fromDispatch_0_bits_cf_ssid; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_flag <= io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_value <= io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_cf_ftqOffset <= io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_ctrl_fuType <= io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_ctrl_fuOpType <= io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_ctrl_rfWen <= io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_ctrl_fpWen <= io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_ctrl_imm <= io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_pdest <= io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_robIdx_flag <= io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_robIdx_value <= io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_lqIdx_flag <= io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_lqIdx_value <= io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_sqIdx_flag <= io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_1_1_bits_sqIdx_value <= io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_2_0_valid <= _s0_doEnqueue_1_T & _s0_doEnqueue_1_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0 <= io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_1) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_0_bits_srcState_0 <= io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    s1_dispatchUops_dup_2_1_valid <= _s0_doEnqueue_0_T & _s0_doEnqueue_0_T_1; // @[ReservationStation.scala 415:28]
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_1_bits_ctrl_srcType_0 <= io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 418:16]
    end
    if (s0_doEnqueue_0) begin // @[ReservationStation.scala 417:21]
      s1_dispatchUops_dup_2_1_bits_srcState_0 <= io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 418:16]
    end
    s1_allocatePtrOH_dup_0_0 <= select_io_allocate_1_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_0_1 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_1_0 <= select_io_allocate_1_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_1_1 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_2_0 <= select_io_allocate_1_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_allocatePtrOH_dup_2_1 <= select_io_allocate_0_bits; // @[ReservationStation.scala 272:{33,33}]
    s1_enqWakeup_0_0 <= {s0_enqWakeup_1_0_hi,s0_enqWakeup_1_0_lo}; // @[ReservationStation.scala 340:100]
    s1_enqWakeup_1_0 <= {s0_enqWakeup_0_0_hi,s0_enqWakeup_0_0_lo}; // @[ReservationStation.scala 340:100]
    s1_enqDataCapture_0_0 <= {s0_enqDataCapture_1_0_hi,s0_enqDataCapture_1_0_lo}; // @[ReservationStation.scala 341:104]
    s1_enqDataCapture_1_0 <= {s0_enqDataCapture_0_0_hi,s0_enqDataCapture_0_0_lo}; // @[ReservationStation.scala 341:104]
    s1_fastWakeup_0_0_0 <= io_fastUopsIn_0_valid & dataCond_36; // @[ReservationStation.scala 343:83]
    s1_fastWakeup_0_0_1 <= io_fastUopsIn_1_valid & dataCond_39; // @[ReservationStation.scala 343:83]
    s1_fastWakeup_1_0_0 <= io_fastUopsIn_0_valid & dataCond_15; // @[ReservationStation.scala 343:83]
    s1_fastWakeup_1_0_1 <= io_fastUopsIn_1_valid & dataCond_18; // @[ReservationStation.scala 343:83]
    slowWakeupMatchVec_0_0 <= statusArray_io_wakeupMatch_0_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_1_0 <= statusArray_io_wakeupMatch_1_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_2_0 <= statusArray_io_wakeupMatch_2_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_3_0 <= statusArray_io_wakeupMatch_3_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_4_0 <= statusArray_io_wakeupMatch_4_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_5_0 <= statusArray_io_wakeupMatch_5_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_6_0 <= statusArray_io_wakeupMatch_6_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_7_0 <= statusArray_io_wakeupMatch_7_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_8_0 <= statusArray_io_wakeupMatch_8_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_9_0 <= statusArray_io_wakeupMatch_9_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_10_0 <= statusArray_io_wakeupMatch_10_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_11_0 <= statusArray_io_wakeupMatch_11_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_12_0 <= statusArray_io_wakeupMatch_12_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_13_0 <= statusArray_io_wakeupMatch_13_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_14_0 <= statusArray_io_wakeupMatch_14_0[6:2]; // @[ReservationStation.scala 628:67]
    slowWakeupMatchVec_15_0 <= statusArray_io_wakeupMatch_15_0[6:2]; // @[ReservationStation.scala 628:67]
    dataArray_io_multiWrite_0_enable_REG <= io_slowPorts_0_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_0_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_0_data_r <= io_slowPorts_0_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_1_enable_REG <= io_slowPorts_1_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_1_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_1_data_r <= io_slowPorts_1_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_2_enable_REG <= io_slowPorts_2_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_2_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_2_data_r <= io_slowPorts_2_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_3_enable_REG <= io_slowPorts_3_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_3_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_3_data_r <= io_slowPorts_3_bits_data; // @[Reg.scala 17:22]
    end
    dataArray_io_multiWrite_4_enable_REG <= io_slowPorts_4_valid; // @[ReservationStation.scala 632:24]
    if (io_slowPorts_4_valid) begin // @[Reg.scala 17:18]
      dataArray_io_multiWrite_4_data_r <= io_slowPorts_4_bits_data; // @[Reg.scala 17:22]
    end
    fastWakeupMatch_0_0_0 <= statusArray_io_wakeupMatch_0_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_0_0_1 <= statusArray_io_wakeupMatch_0_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_1_0_0 <= statusArray_io_wakeupMatch_1_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_1_0_1 <= statusArray_io_wakeupMatch_1_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_2_0_0 <= statusArray_io_wakeupMatch_2_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_2_0_1 <= statusArray_io_wakeupMatch_2_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_3_0_0 <= statusArray_io_wakeupMatch_3_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_3_0_1 <= statusArray_io_wakeupMatch_3_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_4_0_0 <= statusArray_io_wakeupMatch_4_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_4_0_1 <= statusArray_io_wakeupMatch_4_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_5_0_0 <= statusArray_io_wakeupMatch_5_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_5_0_1 <= statusArray_io_wakeupMatch_5_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_6_0_0 <= statusArray_io_wakeupMatch_6_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_6_0_1 <= statusArray_io_wakeupMatch_6_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_7_0_0 <= statusArray_io_wakeupMatch_7_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_7_0_1 <= statusArray_io_wakeupMatch_7_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_8_0_0 <= statusArray_io_wakeupMatch_8_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_8_0_1 <= statusArray_io_wakeupMatch_8_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_9_0_0 <= statusArray_io_wakeupMatch_9_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_9_0_1 <= statusArray_io_wakeupMatch_9_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_10_0_0 <= statusArray_io_wakeupMatch_10_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_10_0_1 <= statusArray_io_wakeupMatch_10_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_11_0_0 <= statusArray_io_wakeupMatch_11_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_11_0_1 <= statusArray_io_wakeupMatch_11_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_12_0_0 <= statusArray_io_wakeupMatch_12_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_12_0_1 <= statusArray_io_wakeupMatch_12_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_13_0_0 <= statusArray_io_wakeupMatch_13_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_13_0_1 <= statusArray_io_wakeupMatch_13_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_14_0_0 <= statusArray_io_wakeupMatch_14_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_14_0_1 <= statusArray_io_wakeupMatch_14_0[1]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_15_0_0 <= statusArray_io_wakeupMatch_15_0[0]; // @[ReservationStation.scala 720:65]
    fastWakeupMatch_15_0_1 <= statusArray_io_wakeupMatch_15_0[1]; // @[ReservationStation.scala 720:65]
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      s2_issuePtr_0 <= s1_issuePtr_0; // @[Reg.scala 17:22]
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      s2_issuePtr_1 <= s1_issuePtr_1; // @[Reg.scala 17:22]
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_robIdx_flag <= payloadArray_io_read_2_data_robIdx_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_robIdx_flag <= payloadArray_io_read_0_data_robIdx_flag;
      end else begin
        data_uop_robIdx_flag <= s1_dispatchUops_dup_0_0_bits_robIdx_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_robIdx_value <= payloadArray_io_read_2_data_robIdx_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_robIdx_value <= payloadArray_io_read_0_data_robIdx_value;
      end else begin
        data_uop_robIdx_value <= s1_dispatchUops_dup_0_0_bits_robIdx_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_trigger_backendEn_0 <= payloadArray_io_read_2_data_cf_trigger_backendEn_0;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_trigger_backendEn_0 <= payloadArray_io_read_0_data_cf_trigger_backendEn_0;
      end else begin
        data_uop_cf_trigger_backendEn_0 <= s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_0;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_trigger_backendEn_1 <= payloadArray_io_read_2_data_cf_trigger_backendEn_1;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_trigger_backendEn_1 <= payloadArray_io_read_0_data_cf_trigger_backendEn_1;
      end else begin
        data_uop_cf_trigger_backendEn_1 <= s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_1;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_ftqPtr_value <= payloadArray_io_read_2_data_cf_ftqPtr_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_ftqPtr_value <= payloadArray_io_read_0_data_cf_ftqPtr_value;
      end else begin
        data_uop_cf_ftqPtr_value <= s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_cf_ftqOffset <= payloadArray_io_read_2_data_cf_ftqOffset;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_cf_ftqOffset <= payloadArray_io_read_0_data_cf_ftqOffset;
      end else begin
        data_uop_cf_ftqOffset <= s1_dispatchUops_dup_0_0_bits_cf_ftqOffset;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fuType <= payloadArray_io_read_2_data_ctrl_fuType;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fuType <= payloadArray_io_read_0_data_ctrl_fuType;
      end else begin
        data_uop_ctrl_fuType <= s1_dispatchUops_dup_0_0_bits_ctrl_fuType;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fuOpType <= payloadArray_io_read_2_data_ctrl_fuOpType;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fuOpType <= payloadArray_io_read_0_data_ctrl_fuOpType;
      end else begin
        data_uop_ctrl_fuOpType <= s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_rfWen <= payloadArray_io_read_2_data_ctrl_rfWen;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_rfWen <= payloadArray_io_read_0_data_ctrl_rfWen;
      end else begin
        data_uop_ctrl_rfWen <= s1_dispatchUops_dup_0_0_bits_ctrl_rfWen;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_fpWen <= payloadArray_io_read_2_data_ctrl_fpWen;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_fpWen <= payloadArray_io_read_0_data_ctrl_fpWen;
      end else begin
        data_uop_ctrl_fpWen <= s1_dispatchUops_dup_0_0_bits_ctrl_fpWen;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_ctrl_imm <= payloadArray_io_read_2_data_ctrl_imm;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_ctrl_imm <= payloadArray_io_read_0_data_ctrl_imm;
      end else begin
        data_uop_ctrl_imm <= s1_dispatchUops_dup_0_0_bits_ctrl_imm;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_pdest <= payloadArray_io_read_2_data_pdest;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_pdest <= payloadArray_io_read_0_data_pdest;
      end else begin
        data_uop_pdest <= s1_dispatchUops_dup_0_0_bits_pdest;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_lqIdx_flag <= payloadArray_io_read_2_data_lqIdx_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_lqIdx_flag <= payloadArray_io_read_0_data_lqIdx_flag;
      end else begin
        data_uop_lqIdx_flag <= s1_dispatchUops_dup_0_0_bits_lqIdx_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_lqIdx_value <= payloadArray_io_read_2_data_lqIdx_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_lqIdx_value <= payloadArray_io_read_0_data_lqIdx_value;
      end else begin
        data_uop_lqIdx_value <= s1_dispatchUops_dup_0_0_bits_lqIdx_value;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_sqIdx_flag <= payloadArray_io_read_2_data_sqIdx_flag;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_sqIdx_flag <= payloadArray_io_read_0_data_sqIdx_flag;
      end else begin
        data_uop_sqIdx_flag <= s1_dispatchUops_dup_0_0_bits_sqIdx_flag;
      end
    end
    if (s1_out_fire_0) begin // @[Reg.scala 17:18]
      if (s1_issue_oldest_0) begin // @[ReservationStation.scala 517:30]
        data_uop_sqIdx_value <= payloadArray_io_read_2_data_sqIdx_value;
      end else if (select_io_grant_0_valid) begin // @[ReservationStation.scala 518:10]
        data_uop_sqIdx_value <= payloadArray_io_read_0_data_sqIdx_value;
      end else begin
        data_uop_sqIdx_value <= s1_dispatchUops_dup_0_0_bits_sqIdx_value;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_robIdx_flag <= payloadArray_io_read_1_data_robIdx_flag;
      end else begin
        data_1_uop_robIdx_flag <= s1_dispatchUops_dup_0_1_bits_robIdx_flag;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_robIdx_value <= payloadArray_io_read_1_data_robIdx_value;
      end else begin
        data_1_uop_robIdx_value <= s1_dispatchUops_dup_0_1_bits_robIdx_value;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_cf_trigger_backendEn_0 <= payloadArray_io_read_1_data_cf_trigger_backendEn_0;
      end else begin
        data_1_uop_cf_trigger_backendEn_0 <= s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_0;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_cf_trigger_backendEn_1 <= payloadArray_io_read_1_data_cf_trigger_backendEn_1;
      end else begin
        data_1_uop_cf_trigger_backendEn_1 <= s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_1;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_cf_ftqPtr_value <= payloadArray_io_read_1_data_cf_ftqPtr_value;
      end else begin
        data_1_uop_cf_ftqPtr_value <= s1_dispatchUops_dup_0_1_bits_cf_ftqPtr_value;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_cf_ftqOffset <= payloadArray_io_read_1_data_cf_ftqOffset;
      end else begin
        data_1_uop_cf_ftqOffset <= s1_dispatchUops_dup_0_1_bits_cf_ftqOffset;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_ctrl_fuType <= payloadArray_io_read_1_data_ctrl_fuType;
      end else begin
        data_1_uop_ctrl_fuType <= s1_dispatchUops_dup_0_1_bits_ctrl_fuType;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_ctrl_fuOpType <= payloadArray_io_read_1_data_ctrl_fuOpType;
      end else begin
        data_1_uop_ctrl_fuOpType <= s1_dispatchUops_dup_0_1_bits_ctrl_fuOpType;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_ctrl_rfWen <= payloadArray_io_read_1_data_ctrl_rfWen;
      end else begin
        data_1_uop_ctrl_rfWen <= s1_dispatchUops_dup_0_1_bits_ctrl_rfWen;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_ctrl_fpWen <= payloadArray_io_read_1_data_ctrl_fpWen;
      end else begin
        data_1_uop_ctrl_fpWen <= s1_dispatchUops_dup_0_1_bits_ctrl_fpWen;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_ctrl_imm <= payloadArray_io_read_1_data_ctrl_imm;
      end else begin
        data_1_uop_ctrl_imm <= s1_dispatchUops_dup_0_1_bits_ctrl_imm;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_pdest <= payloadArray_io_read_1_data_pdest;
      end else begin
        data_1_uop_pdest <= s1_dispatchUops_dup_0_1_bits_pdest;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_lqIdx_flag <= payloadArray_io_read_1_data_lqIdx_flag;
      end else begin
        data_1_uop_lqIdx_flag <= s1_dispatchUops_dup_0_1_bits_lqIdx_flag;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_lqIdx_value <= payloadArray_io_read_1_data_lqIdx_value;
      end else begin
        data_1_uop_lqIdx_value <= s1_dispatchUops_dup_0_1_bits_lqIdx_value;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_sqIdx_flag <= payloadArray_io_read_1_data_sqIdx_flag;
      end else begin
        data_1_uop_sqIdx_flag <= s1_dispatchUops_dup_0_1_bits_sqIdx_flag;
      end
    end
    if (s1_out_fire_1) begin // @[Reg.scala 17:18]
      if (select_io_grant_1_valid) begin // @[ReservationStation.scala 518:10]
        data_1_uop_sqIdx_value <= payloadArray_io_read_1_data_sqIdx_value;
      end else begin
        data_1_uop_sqIdx_value <= s1_dispatchUops_dup_0_1_bits_sqIdx_value;
      end
    end
    io_perf_0_value_REG <= &statusArray_io_isValid; // @[ReservationStation.scala 951:56]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ReservationStation.scala 283:52]
      validAfterAllocate <= 16'h0;
    end else begin
      validAfterAllocate <= statusArray_io_isValidNext | validUpdateByAllocate;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 111:21]
      valid <= 1'h0; // @[PipelineConnect.scala 111:29]
    end else begin
      valid <= s1_out_fire_0 | _GEN_661;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 111:21]
      valid_1 <= 1'h0; // @[PipelineConnect.scala 111:29]
    end else begin
      valid_1 <= s1_out_fire_1 | _GEN_775;
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
  validAfterAllocate = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  emptyThisCycle = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  allocateThisCycle = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  allocateThisCycle_1 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  enqVec_REG = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  enqVec_REG_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_trigger_backendEn_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_ftqPtr_value = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_cf_ftqOffset = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_srcType_0 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fuType = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fuOpType = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_rfWen = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_fpWen = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_ctrl_imm = _RAND_16[19:0];
  _RAND_17 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_srcState_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_psrc_0 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_pdest = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_robIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_robIdx_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_lqIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_lqIdx_value = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_sqIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_0_bits_sqIdx_value = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_valid = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_cf_trigger_backendEn_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_cf_ftqPtr_value = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_cf_ftqOffset = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_srcType_0 = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_fuType = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_fuOpType = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_rfWen = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_fpWen = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_ctrl_imm = _RAND_36[19:0];
  _RAND_37 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_srcState_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_psrc_0 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_pdest = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_robIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_robIdx_value = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_lqIdx_flag = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_lqIdx_value = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_sqIdx_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s1_dispatchUops_dup_0_1_bits_sqIdx_value = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_valid = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_0 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_trigger_backendEn_1 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isRVC = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_brType = _RAND_50[1:0];
  _RAND_51 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isCall = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pd_isRet = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_pred_taken = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_storeSetHit = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_loadWaitStrict = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ssid = _RAND_56[4:0];
  _RAND_57 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_flag = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqPtr_value = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_cf_ftqOffset = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fuType = _RAND_60[3:0];
  _RAND_61 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fuOpType = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_rfWen = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_fpWen = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_ctrl_imm = _RAND_64[19:0];
  _RAND_65 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_pdest = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_robIdx_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_robIdx_value = _RAND_67[4:0];
  _RAND_68 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_lqIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_lqIdx_value = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_sqIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_0_bits_sqIdx_value = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_valid = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_0 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_trigger_backendEn_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_pd_isRVC = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_pd_brType = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_pd_isCall = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_pd_isRet = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_pred_taken = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_storeSetHit = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_loadWaitStrict = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_ssid = _RAND_82[4:0];
  _RAND_83 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_flag = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_ftqPtr_value = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_cf_ftqOffset = _RAND_85[2:0];
  _RAND_86 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_ctrl_fuType = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_ctrl_fuOpType = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_ctrl_rfWen = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_ctrl_fpWen = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_ctrl_imm = _RAND_90[19:0];
  _RAND_91 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_pdest = _RAND_91[5:0];
  _RAND_92 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_robIdx_flag = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_robIdx_value = _RAND_93[4:0];
  _RAND_94 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_lqIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_lqIdx_value = _RAND_95[3:0];
  _RAND_96 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_sqIdx_flag = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  s1_dispatchUops_dup_1_1_bits_sqIdx_value = _RAND_97[3:0];
  _RAND_98 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_valid = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_ctrl_srcType_0 = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_0_bits_srcState_0 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_1_valid = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_1_bits_ctrl_srcType_0 = _RAND_102[1:0];
  _RAND_103 = {1{`RANDOM}};
  s1_dispatchUops_dup_2_1_bits_srcState_0 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_0_0 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_0_1 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_1_0 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_1_1 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_2_0 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  s1_allocatePtrOH_dup_2_1 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  s1_enqWakeup_0_0 = _RAND_110[4:0];
  _RAND_111 = {1{`RANDOM}};
  s1_enqWakeup_1_0 = _RAND_111[4:0];
  _RAND_112 = {1{`RANDOM}};
  s1_enqDataCapture_0_0 = _RAND_112[4:0];
  _RAND_113 = {1{`RANDOM}};
  s1_enqDataCapture_1_0 = _RAND_113[4:0];
  _RAND_114 = {1{`RANDOM}};
  s1_fastWakeup_0_0_0 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  s1_fastWakeup_0_0_1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  s1_fastWakeup_1_0_0 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  s1_fastWakeup_1_0_1 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  valid = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  valid_1 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  slowWakeupMatchVec_0_0 = _RAND_120[4:0];
  _RAND_121 = {1{`RANDOM}};
  slowWakeupMatchVec_1_0 = _RAND_121[4:0];
  _RAND_122 = {1{`RANDOM}};
  slowWakeupMatchVec_2_0 = _RAND_122[4:0];
  _RAND_123 = {1{`RANDOM}};
  slowWakeupMatchVec_3_0 = _RAND_123[4:0];
  _RAND_124 = {1{`RANDOM}};
  slowWakeupMatchVec_4_0 = _RAND_124[4:0];
  _RAND_125 = {1{`RANDOM}};
  slowWakeupMatchVec_5_0 = _RAND_125[4:0];
  _RAND_126 = {1{`RANDOM}};
  slowWakeupMatchVec_6_0 = _RAND_126[4:0];
  _RAND_127 = {1{`RANDOM}};
  slowWakeupMatchVec_7_0 = _RAND_127[4:0];
  _RAND_128 = {1{`RANDOM}};
  slowWakeupMatchVec_8_0 = _RAND_128[4:0];
  _RAND_129 = {1{`RANDOM}};
  slowWakeupMatchVec_9_0 = _RAND_129[4:0];
  _RAND_130 = {1{`RANDOM}};
  slowWakeupMatchVec_10_0 = _RAND_130[4:0];
  _RAND_131 = {1{`RANDOM}};
  slowWakeupMatchVec_11_0 = _RAND_131[4:0];
  _RAND_132 = {1{`RANDOM}};
  slowWakeupMatchVec_12_0 = _RAND_132[4:0];
  _RAND_133 = {1{`RANDOM}};
  slowWakeupMatchVec_13_0 = _RAND_133[4:0];
  _RAND_134 = {1{`RANDOM}};
  slowWakeupMatchVec_14_0 = _RAND_134[4:0];
  _RAND_135 = {1{`RANDOM}};
  slowWakeupMatchVec_15_0 = _RAND_135[4:0];
  _RAND_136 = {1{`RANDOM}};
  dataArray_io_multiWrite_0_enable_REG = _RAND_136[0:0];
  _RAND_137 = {2{`RANDOM}};
  dataArray_io_multiWrite_0_data_r = _RAND_137[63:0];
  _RAND_138 = {1{`RANDOM}};
  dataArray_io_multiWrite_1_enable_REG = _RAND_138[0:0];
  _RAND_139 = {2{`RANDOM}};
  dataArray_io_multiWrite_1_data_r = _RAND_139[63:0];
  _RAND_140 = {1{`RANDOM}};
  dataArray_io_multiWrite_2_enable_REG = _RAND_140[0:0];
  _RAND_141 = {2{`RANDOM}};
  dataArray_io_multiWrite_2_data_r = _RAND_141[63:0];
  _RAND_142 = {1{`RANDOM}};
  dataArray_io_multiWrite_3_enable_REG = _RAND_142[0:0];
  _RAND_143 = {2{`RANDOM}};
  dataArray_io_multiWrite_3_data_r = _RAND_143[63:0];
  _RAND_144 = {1{`RANDOM}};
  dataArray_io_multiWrite_4_enable_REG = _RAND_144[0:0];
  _RAND_145 = {2{`RANDOM}};
  dataArray_io_multiWrite_4_data_r = _RAND_145[63:0];
  _RAND_146 = {1{`RANDOM}};
  fastWakeupMatch_0_0_0 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  fastWakeupMatch_0_0_1 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  fastWakeupMatch_1_0_0 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  fastWakeupMatch_1_0_1 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  fastWakeupMatch_2_0_0 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  fastWakeupMatch_2_0_1 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  fastWakeupMatch_3_0_0 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  fastWakeupMatch_3_0_1 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  fastWakeupMatch_4_0_0 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  fastWakeupMatch_4_0_1 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  fastWakeupMatch_5_0_0 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  fastWakeupMatch_5_0_1 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  fastWakeupMatch_6_0_0 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  fastWakeupMatch_6_0_1 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  fastWakeupMatch_7_0_0 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  fastWakeupMatch_7_0_1 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  fastWakeupMatch_8_0_0 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  fastWakeupMatch_8_0_1 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  fastWakeupMatch_9_0_0 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  fastWakeupMatch_9_0_1 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  fastWakeupMatch_10_0_0 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  fastWakeupMatch_10_0_1 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  fastWakeupMatch_11_0_0 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  fastWakeupMatch_11_0_1 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  fastWakeupMatch_12_0_0 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  fastWakeupMatch_12_0_1 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  fastWakeupMatch_13_0_0 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  fastWakeupMatch_13_0_1 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  fastWakeupMatch_14_0_0 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  fastWakeupMatch_14_0_1 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  fastWakeupMatch_15_0_0 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  fastWakeupMatch_15_0_1 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  s2_issuePtr_0 = _RAND_178[3:0];
  _RAND_179 = {1{`RANDOM}};
  s2_issuePtr_1 = _RAND_179[3:0];
  _RAND_180 = {1{`RANDOM}};
  data_uop_robIdx_flag = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  data_uop_robIdx_value = _RAND_181[4:0];
  _RAND_182 = {1{`RANDOM}};
  data_uop_cf_trigger_backendEn_0 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  data_uop_cf_trigger_backendEn_1 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  data_uop_cf_ftqPtr_value = _RAND_184[2:0];
  _RAND_185 = {1{`RANDOM}};
  data_uop_cf_ftqOffset = _RAND_185[2:0];
  _RAND_186 = {1{`RANDOM}};
  data_uop_ctrl_fuType = _RAND_186[3:0];
  _RAND_187 = {1{`RANDOM}};
  data_uop_ctrl_fuOpType = _RAND_187[6:0];
  _RAND_188 = {1{`RANDOM}};
  data_uop_ctrl_rfWen = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  data_uop_ctrl_fpWen = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  data_uop_ctrl_imm = _RAND_190[19:0];
  _RAND_191 = {1{`RANDOM}};
  data_uop_pdest = _RAND_191[5:0];
  _RAND_192 = {1{`RANDOM}};
  data_uop_lqIdx_flag = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  data_uop_lqIdx_value = _RAND_193[3:0];
  _RAND_194 = {1{`RANDOM}};
  data_uop_sqIdx_flag = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  data_uop_sqIdx_value = _RAND_195[3:0];
  _RAND_196 = {1{`RANDOM}};
  data_1_uop_robIdx_flag = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  data_1_uop_robIdx_value = _RAND_197[4:0];
  _RAND_198 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendEn_0 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendEn_1 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  data_1_uop_cf_ftqPtr_value = _RAND_200[2:0];
  _RAND_201 = {1{`RANDOM}};
  data_1_uop_cf_ftqOffset = _RAND_201[2:0];
  _RAND_202 = {1{`RANDOM}};
  data_1_uop_ctrl_fuType = _RAND_202[3:0];
  _RAND_203 = {1{`RANDOM}};
  data_1_uop_ctrl_fuOpType = _RAND_203[6:0];
  _RAND_204 = {1{`RANDOM}};
  data_1_uop_ctrl_rfWen = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  data_1_uop_ctrl_fpWen = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  data_1_uop_ctrl_imm = _RAND_206[19:0];
  _RAND_207 = {1{`RANDOM}};
  data_1_uop_pdest = _RAND_207[5:0];
  _RAND_208 = {1{`RANDOM}};
  data_1_uop_lqIdx_flag = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  data_1_uop_lqIdx_value = _RAND_209[3:0];
  _RAND_210 = {1{`RANDOM}};
  data_1_uop_sqIdx_flag = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  data_1_uop_sqIdx_value = _RAND_211[3:0];
  _RAND_212 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_213[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    validAfterAllocate = 16'h0;
  end
  if (reset) begin
    valid = 1'h0;
  end
  if (reset) begin
    valid_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

