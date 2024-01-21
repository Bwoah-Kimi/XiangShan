module NegedgeDataModule__12entry(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  input  [3:0]  io_raddr_2,
  input  [3:0]  io_raddr_3,
  input  [3:0]  io_raddr_4,
  input  [3:0]  io_raddr_5,
  input  [3:0]  io_raddr_6,
  input  [3:0]  io_raddr_7,
  output        io_rdata_0_cf_trigger_backendEn_0,
  output        io_rdata_0_cf_trigger_backendEn_1,
  output        io_rdata_0_cf_pd_isRVC,
  output [1:0]  io_rdata_0_cf_pd_brType,
  output        io_rdata_0_cf_pd_isCall,
  output        io_rdata_0_cf_pd_isRet,
  output        io_rdata_0_cf_pred_taken,
  output        io_rdata_0_cf_storeSetHit,
  output        io_rdata_0_cf_loadWaitStrict,
  output [4:0]  io_rdata_0_cf_ssid,
  output        io_rdata_0_cf_ftqPtr_flag,
  output [2:0]  io_rdata_0_cf_ftqPtr_value,
  output [2:0]  io_rdata_0_cf_ftqOffset,
  output        io_rdata_0_ctrl_fpu_isAddSub,
  output        io_rdata_0_ctrl_fpu_typeTagIn,
  output        io_rdata_0_ctrl_fpu_typeTagOut,
  output        io_rdata_0_ctrl_fpu_fromInt,
  output        io_rdata_0_ctrl_fpu_wflags,
  output        io_rdata_0_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_0_ctrl_fpu_fmaCmd,
  output        io_rdata_0_ctrl_fpu_div,
  output        io_rdata_0_ctrl_fpu_sqrt,
  output        io_rdata_0_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_0_ctrl_fpu_typ,
  output [1:0]  io_rdata_0_ctrl_fpu_fmt,
  output        io_rdata_0_ctrl_fpu_ren3,
  output [2:0]  io_rdata_0_ctrl_fpu_rm,
  output        io_rdata_1_cf_trigger_backendEn_0,
  output        io_rdata_1_cf_trigger_backendEn_1,
  output        io_rdata_1_cf_pd_isRVC,
  output [1:0]  io_rdata_1_cf_pd_brType,
  output        io_rdata_1_cf_pd_isCall,
  output        io_rdata_1_cf_pd_isRet,
  output        io_rdata_1_cf_pred_taken,
  output        io_rdata_1_cf_storeSetHit,
  output        io_rdata_1_cf_loadWaitStrict,
  output [4:0]  io_rdata_1_cf_ssid,
  output        io_rdata_1_cf_ftqPtr_flag,
  output [2:0]  io_rdata_1_cf_ftqPtr_value,
  output [2:0]  io_rdata_1_cf_ftqOffset,
  output        io_rdata_2_cf_trigger_backendEn_0,
  output        io_rdata_2_cf_trigger_backendEn_1,
  output        io_rdata_2_cf_pd_isRVC,
  output [1:0]  io_rdata_2_cf_pd_brType,
  output        io_rdata_2_cf_pd_isCall,
  output        io_rdata_2_cf_pd_isRet,
  output        io_rdata_2_cf_pred_taken,
  output        io_rdata_2_cf_storeSetHit,
  output        io_rdata_2_cf_loadWaitStrict,
  output [4:0]  io_rdata_2_cf_ssid,
  output        io_rdata_2_cf_ftqPtr_flag,
  output [2:0]  io_rdata_2_cf_ftqPtr_value,
  output [2:0]  io_rdata_2_cf_ftqOffset,
  output        io_rdata_3_cf_trigger_backendEn_0,
  output        io_rdata_3_cf_trigger_backendEn_1,
  output        io_rdata_3_cf_pd_isRVC,
  output [1:0]  io_rdata_3_cf_pd_brType,
  output        io_rdata_3_cf_pd_isCall,
  output        io_rdata_3_cf_pd_isRet,
  output        io_rdata_3_cf_pred_taken,
  output        io_rdata_3_cf_storeSetHit,
  output        io_rdata_3_cf_loadWaitStrict,
  output [4:0]  io_rdata_3_cf_ssid,
  output        io_rdata_3_cf_ftqPtr_flag,
  output [2:0]  io_rdata_3_cf_ftqPtr_value,
  output [2:0]  io_rdata_3_cf_ftqOffset,
  output [2:0]  io_rdata_4_cf_ftqPtr_value,
  output [2:0]  io_rdata_4_cf_ftqOffset,
  output [1:0]  io_rdata_4_ctrl_srcType_0,
  output [1:0]  io_rdata_4_ctrl_srcType_1,
  output [1:0]  io_rdata_4_ctrl_srcType_2,
  output [3:0]  io_rdata_4_ctrl_fuType,
  output [6:0]  io_rdata_4_ctrl_fuOpType,
  output        io_rdata_4_ctrl_rfWen,
  output        io_rdata_4_ctrl_fpWen,
  output [3:0]  io_rdata_4_ctrl_selImm,
  output [19:0] io_rdata_4_ctrl_imm,
  output [5:0]  io_rdata_4_psrc_0,
  output [5:0]  io_rdata_4_psrc_1,
  output [5:0]  io_rdata_4_psrc_2,
  output [5:0]  io_rdata_4_pdest,
  output        io_rdata_4_robIdx_flag,
  output [4:0]  io_rdata_4_robIdx_value,
  output [2:0]  io_rdata_5_cf_ftqPtr_value,
  output [2:0]  io_rdata_5_cf_ftqOffset,
  output [1:0]  io_rdata_5_ctrl_srcType_0,
  output [1:0]  io_rdata_5_ctrl_srcType_1,
  output [1:0]  io_rdata_5_ctrl_srcType_2,
  output [3:0]  io_rdata_5_ctrl_fuType,
  output [6:0]  io_rdata_5_ctrl_fuOpType,
  output        io_rdata_5_ctrl_rfWen,
  output        io_rdata_5_ctrl_fpWen,
  output [3:0]  io_rdata_5_ctrl_selImm,
  output [19:0] io_rdata_5_ctrl_imm,
  output [5:0]  io_rdata_5_psrc_0,
  output [5:0]  io_rdata_5_psrc_1,
  output [5:0]  io_rdata_5_psrc_2,
  output [5:0]  io_rdata_5_pdest,
  output        io_rdata_5_robIdx_flag,
  output [4:0]  io_rdata_5_robIdx_value,
  output [2:0]  io_rdata_6_cf_ftqPtr_value,
  output [2:0]  io_rdata_6_cf_ftqOffset,
  output [1:0]  io_rdata_6_ctrl_srcType_0,
  output [1:0]  io_rdata_6_ctrl_srcType_1,
  output [1:0]  io_rdata_6_ctrl_srcType_2,
  output [3:0]  io_rdata_6_ctrl_fuType,
  output [6:0]  io_rdata_6_ctrl_fuOpType,
  output        io_rdata_6_ctrl_rfWen,
  output        io_rdata_6_ctrl_fpWen,
  output [3:0]  io_rdata_6_ctrl_selImm,
  output [19:0] io_rdata_6_ctrl_imm,
  output [5:0]  io_rdata_6_psrc_0,
  output [5:0]  io_rdata_6_psrc_1,
  output [5:0]  io_rdata_6_psrc_2,
  output [5:0]  io_rdata_6_pdest,
  output        io_rdata_6_robIdx_flag,
  output [4:0]  io_rdata_6_robIdx_value,
  output [2:0]  io_rdata_7_cf_ftqPtr_value,
  output [2:0]  io_rdata_7_cf_ftqOffset,
  output [1:0]  io_rdata_7_ctrl_srcType_0,
  output [1:0]  io_rdata_7_ctrl_srcType_1,
  output [1:0]  io_rdata_7_ctrl_srcType_2,
  output [3:0]  io_rdata_7_ctrl_fuType,
  output [6:0]  io_rdata_7_ctrl_fuOpType,
  output        io_rdata_7_ctrl_rfWen,
  output        io_rdata_7_ctrl_fpWen,
  output [3:0]  io_rdata_7_ctrl_selImm,
  output [19:0] io_rdata_7_ctrl_imm,
  output [5:0]  io_rdata_7_psrc_0,
  output [5:0]  io_rdata_7_psrc_1,
  output [5:0]  io_rdata_7_psrc_2,
  output [5:0]  io_rdata_7_pdest,
  output        io_rdata_7_robIdx_flag,
  output [4:0]  io_rdata_7_robIdx_value,
  input         io_wen_0,
  input         io_wen_1,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input         io_wdata_0_cf_trigger_backendEn_0,
  input         io_wdata_0_cf_trigger_backendEn_1,
  input         io_wdata_0_cf_pd_isRVC,
  input  [1:0]  io_wdata_0_cf_pd_brType,
  input         io_wdata_0_cf_pd_isCall,
  input         io_wdata_0_cf_pd_isRet,
  input         io_wdata_0_cf_pred_taken,
  input         io_wdata_0_cf_storeSetHit,
  input         io_wdata_0_cf_loadWaitStrict,
  input  [4:0]  io_wdata_0_cf_ssid,
  input         io_wdata_0_cf_ftqPtr_flag,
  input  [2:0]  io_wdata_0_cf_ftqPtr_value,
  input  [2:0]  io_wdata_0_cf_ftqOffset,
  input  [1:0]  io_wdata_0_ctrl_srcType_0,
  input  [1:0]  io_wdata_0_ctrl_srcType_1,
  input  [1:0]  io_wdata_0_ctrl_srcType_2,
  input  [3:0]  io_wdata_0_ctrl_fuType,
  input  [6:0]  io_wdata_0_ctrl_fuOpType,
  input         io_wdata_0_ctrl_rfWen,
  input         io_wdata_0_ctrl_fpWen,
  input  [3:0]  io_wdata_0_ctrl_selImm,
  input  [19:0] io_wdata_0_ctrl_imm,
  input         io_wdata_0_ctrl_fpu_isAddSub,
  input         io_wdata_0_ctrl_fpu_typeTagIn,
  input         io_wdata_0_ctrl_fpu_typeTagOut,
  input         io_wdata_0_ctrl_fpu_fromInt,
  input         io_wdata_0_ctrl_fpu_wflags,
  input         io_wdata_0_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmaCmd,
  input         io_wdata_0_ctrl_fpu_div,
  input         io_wdata_0_ctrl_fpu_sqrt,
  input         io_wdata_0_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_0_ctrl_fpu_typ,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmt,
  input         io_wdata_0_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_0_ctrl_fpu_rm,
  input  [5:0]  io_wdata_0_psrc_0,
  input  [5:0]  io_wdata_0_psrc_1,
  input  [5:0]  io_wdata_0_psrc_2,
  input  [5:0]  io_wdata_0_pdest,
  input         io_wdata_0_robIdx_flag,
  input  [4:0]  io_wdata_0_robIdx_value,
  input         io_wdata_1_cf_trigger_backendEn_0,
  input         io_wdata_1_cf_trigger_backendEn_1,
  input         io_wdata_1_cf_pd_isRVC,
  input  [1:0]  io_wdata_1_cf_pd_brType,
  input         io_wdata_1_cf_pd_isCall,
  input         io_wdata_1_cf_pd_isRet,
  input         io_wdata_1_cf_pred_taken,
  input         io_wdata_1_cf_storeSetHit,
  input         io_wdata_1_cf_loadWaitStrict,
  input  [4:0]  io_wdata_1_cf_ssid,
  input         io_wdata_1_cf_ftqPtr_flag,
  input  [2:0]  io_wdata_1_cf_ftqPtr_value,
  input  [2:0]  io_wdata_1_cf_ftqOffset,
  input  [1:0]  io_wdata_1_ctrl_srcType_0,
  input  [1:0]  io_wdata_1_ctrl_srcType_1,
  input  [1:0]  io_wdata_1_ctrl_srcType_2,
  input  [3:0]  io_wdata_1_ctrl_fuType,
  input  [6:0]  io_wdata_1_ctrl_fuOpType,
  input         io_wdata_1_ctrl_rfWen,
  input         io_wdata_1_ctrl_fpWen,
  input  [3:0]  io_wdata_1_ctrl_selImm,
  input  [19:0] io_wdata_1_ctrl_imm,
  input         io_wdata_1_ctrl_fpu_isAddSub,
  input         io_wdata_1_ctrl_fpu_typeTagIn,
  input         io_wdata_1_ctrl_fpu_typeTagOut,
  input         io_wdata_1_ctrl_fpu_fromInt,
  input         io_wdata_1_ctrl_fpu_wflags,
  input         io_wdata_1_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmaCmd,
  input         io_wdata_1_ctrl_fpu_div,
  input         io_wdata_1_ctrl_fpu_sqrt,
  input         io_wdata_1_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_1_ctrl_fpu_typ,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmt,
  input         io_wdata_1_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_1_ctrl_fpu_rm,
  input  [5:0]  io_wdata_1_psrc_0,
  input  [5:0]  io_wdata_1_psrc_1,
  input  [5:0]  io_wdata_1_psrc_2,
  input  [5:0]  io_wdata_1_pdest,
  input         io_wdata_1_robIdx_flag,
  input  [4:0]  io_wdata_1_robIdx_value
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
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [31:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [31:0] _RAND_331;
  reg [31:0] _RAND_332;
  reg [31:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [31:0] _RAND_349;
  reg [31:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [31:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [31:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [31:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
  reg [31:0] _RAND_386;
  reg [31:0] _RAND_387;
  reg [31:0] _RAND_388;
  reg [31:0] _RAND_389;
  reg [31:0] _RAND_390;
  reg [31:0] _RAND_391;
  reg [31:0] _RAND_392;
  reg [31:0] _RAND_393;
  reg [31:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [31:0] _RAND_399;
  reg [31:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [31:0] _RAND_402;
  reg [31:0] _RAND_403;
  reg [31:0] _RAND_404;
  reg [31:0] _RAND_405;
  reg [31:0] _RAND_406;
  reg [31:0] _RAND_407;
  reg [31:0] _RAND_408;
  reg [31:0] _RAND_409;
  reg [31:0] _RAND_410;
  reg [31:0] _RAND_411;
  reg [31:0] _RAND_412;
  reg [31:0] _RAND_413;
  reg [31:0] _RAND_414;
  reg [31:0] _RAND_415;
  reg [31:0] _RAND_416;
  reg [31:0] _RAND_417;
  reg [31:0] _RAND_418;
  reg [31:0] _RAND_419;
  reg [31:0] _RAND_420;
  reg [31:0] _RAND_421;
  reg [31:0] _RAND_422;
  reg [31:0] _RAND_423;
  reg [31:0] _RAND_424;
  reg [31:0] _RAND_425;
  reg [31:0] _RAND_426;
  reg [31:0] _RAND_427;
  reg [31:0] _RAND_428;
  reg [31:0] _RAND_429;
  reg [31:0] _RAND_430;
  reg [31:0] _RAND_431;
  reg [31:0] _RAND_432;
  reg [31:0] _RAND_433;
  reg [31:0] _RAND_434;
  reg [31:0] _RAND_435;
  reg [31:0] _RAND_436;
  reg [31:0] _RAND_437;
  reg [31:0] _RAND_438;
  reg [31:0] _RAND_439;
  reg [31:0] _RAND_440;
  reg [31:0] _RAND_441;
  reg [31:0] _RAND_442;
  reg [31:0] _RAND_443;
  reg [31:0] _RAND_444;
  reg [31:0] _RAND_445;
  reg [31:0] _RAND_446;
  reg [31:0] _RAND_447;
  reg [31:0] _RAND_448;
  reg [31:0] _RAND_449;
  reg [31:0] _RAND_450;
  reg [31:0] _RAND_451;
  reg [31:0] _RAND_452;
  reg [31:0] _RAND_453;
  reg [31:0] _RAND_454;
  reg [31:0] _RAND_455;
  reg [31:0] _RAND_456;
  reg [31:0] _RAND_457;
  reg [31:0] _RAND_458;
  reg [31:0] _RAND_459;
  reg [31:0] _RAND_460;
  reg [31:0] _RAND_461;
  reg [31:0] _RAND_462;
  reg [31:0] _RAND_463;
  reg [31:0] _RAND_464;
  reg [31:0] _RAND_465;
  reg [31:0] _RAND_466;
  reg [31:0] _RAND_467;
  reg [31:0] _RAND_468;
  reg [31:0] _RAND_469;
  reg [31:0] _RAND_470;
  reg [31:0] _RAND_471;
  reg [31:0] _RAND_472;
  reg [31:0] _RAND_473;
  reg [31:0] _RAND_474;
  reg [31:0] _RAND_475;
  reg [31:0] _RAND_476;
  reg [31:0] _RAND_477;
  reg [31:0] _RAND_478;
  reg [31:0] _RAND_479;
  reg [31:0] _RAND_480;
  reg [31:0] _RAND_481;
  reg [31:0] _RAND_482;
  reg [31:0] _RAND_483;
  reg [31:0] _RAND_484;
  reg [31:0] _RAND_485;
  reg [31:0] _RAND_486;
  reg [31:0] _RAND_487;
  reg [31:0] _RAND_488;
  reg [31:0] _RAND_489;
  reg [31:0] _RAND_490;
  reg [31:0] _RAND_491;
  reg [31:0] _RAND_492;
  reg [31:0] _RAND_493;
  reg [31:0] _RAND_494;
  reg [31:0] _RAND_495;
  reg [31:0] _RAND_496;
  reg [31:0] _RAND_497;
  reg [31:0] _RAND_498;
  reg [31:0] _RAND_499;
  reg [31:0] _RAND_500;
  reg [31:0] _RAND_501;
  reg [31:0] _RAND_502;
  reg [31:0] _RAND_503;
`endif // RANDOMIZE_REG_INIT
  reg  data_0_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_0_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_0_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_0_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_0_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_0_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_0_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_0_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_0_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_0_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_0_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_1_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_1_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_1_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_1_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_1_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_1_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_1_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_1_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_1_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_1_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_2_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_2_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_2_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_2_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_2_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_2_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_2_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_2_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_2_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_2_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_3_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_3_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_3_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_3_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_3_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_3_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_3_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_3_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_3_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_3_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_4_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_4_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_4_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_4_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_4_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_4_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_4_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_4_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_4_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_4_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_5_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_5_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_5_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_5_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_5_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_5_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_5_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_5_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_5_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_5_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_6_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_6_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_6_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_6_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_6_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_6_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_6_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_6_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_6_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_6_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_7_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_7_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_7_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_7_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_7_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_7_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_7_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_7_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_7_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_7_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_8_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_8_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_8_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_8_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_8_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_8_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_8_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_8_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_8_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_8_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_8_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_8_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_8_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_9_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_9_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_9_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_9_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_9_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_9_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_9_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_9_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_9_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_9_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_9_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_9_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_9_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_10_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_10_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_10_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_10_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_10_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_10_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_10_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_10_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_10_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_10_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_10_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_10_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_10_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_cf_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_storeSetHit; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_loadWaitStrict; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_11_cf_ssid; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_11_cf_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_11_cf_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_srcType_0; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_srcType_1; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_srcType_2; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_11_ctrl_fuType; // @[DataModuleTemplate.scala 168:17]
  reg [6:0] data_11_ctrl_fuOpType; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_rfWen; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [3:0] data_11_ctrl_selImm; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_11_ctrl_imm; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_div; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_fpu_typ; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_11_ctrl_fpu_rm; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_11_psrc_0; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_11_psrc_1; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_11_psrc_2; // @[DataModuleTemplate.scala 168:17]
  reg [5:0] data_11_pdest; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_robIdx_flag; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_11_robIdx_value; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1 = io_wen_1 & io_waddr_1 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T = 16'h1 << io_raddr_0; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec = _addr_dec_T[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T = {read_by_1,read_by_0}; // @[DataModuleTemplate.scala 178:28]
  wire [2:0] _io_rdata_0_T_84 = read_by_0 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_85 = read_by_1 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_86 = _io_rdata_0_T_84 | _io_rdata_0_T_85; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_89 = read_by_0 & io_wdata_0_ctrl_fpu_ren3 | read_by_1 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_90 = read_by_0 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_91 = read_by_1 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_92 = _io_rdata_0_T_90 | _io_rdata_0_T_91; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_93 = read_by_0 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_94 = read_by_1 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_95 = _io_rdata_0_T_93 | _io_rdata_0_T_94; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_98 = read_by_0 & io_wdata_0_ctrl_fpu_fcvt | read_by_1 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_101 = read_by_0 & io_wdata_0_ctrl_fpu_sqrt | read_by_1 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_104 = read_by_0 & io_wdata_0_ctrl_fpu_div | read_by_1 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_105 = read_by_0 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_106 = read_by_1 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_107 = _io_rdata_0_T_105 | _io_rdata_0_T_106; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_110 = read_by_0 & io_wdata_0_ctrl_fpu_fpWen | read_by_1 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_113 = read_by_0 & io_wdata_0_ctrl_fpu_wflags | read_by_1 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_116 = read_by_0 & io_wdata_0_ctrl_fpu_fromInt | read_by_1 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_119 = read_by_0 & io_wdata_0_ctrl_fpu_typeTagOut | read_by_1 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_122 = read_by_0 & io_wdata_0_ctrl_fpu_typeTagIn | read_by_1 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_125 = read_by_0 & io_wdata_0_ctrl_fpu_isAddSub | read_by_1 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_183 = read_by_0 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_184 = read_by_1 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_185 = _io_rdata_0_T_183 | _io_rdata_0_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_186 = read_by_0 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_187 = read_by_1 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_188 = _io_rdata_0_T_186 | _io_rdata_0_T_187; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_191 = read_by_0 & io_wdata_0_cf_ftqPtr_flag | read_by_1 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_192 = read_by_0 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_193 = read_by_1 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_194 = _io_rdata_0_T_192 | _io_rdata_0_T_193; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_197 = read_by_0 & io_wdata_0_cf_loadWaitStrict | read_by_1 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_209 = read_by_0 & io_wdata_0_cf_storeSetHit | read_by_1 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_215 = read_by_0 & io_wdata_0_cf_pred_taken | read_by_1 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_218 = read_by_0 & io_wdata_0_cf_pd_isRet | read_by_1 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_221 = read_by_0 & io_wdata_0_cf_pd_isCall | read_by_1 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_222 = read_by_0 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_223 = read_by_1 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_224 = _io_rdata_0_T_222 | _io_rdata_0_T_223; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_227 = read_by_0 & io_wdata_0_cf_pd_isRVC | read_by_1 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_251 = read_by_0 & io_wdata_0_cf_trigger_backendEn_0 | read_by_1 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_254 = read_by_0 & io_wdata_0_cf_trigger_backendEn_1 | read_by_1 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_980 = addr_dec[0] ? data_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_981 = addr_dec[1] ? data_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_982 = addr_dec[2] ? data_2_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_983 = addr_dec[3] ? data_3_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_984 = addr_dec[4] ? data_4_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_985 = addr_dec[5] ? data_5_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_986 = addr_dec[6] ? data_6_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_987 = addr_dec[7] ? data_7_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_988 = addr_dec[8] ? data_8_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_989 = addr_dec[9] ? data_9_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_990 = addr_dec[10] ? data_10_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_991 = addr_dec[11] ? data_11_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_992 = _io_rdata_0_T_980 | _io_rdata_0_T_981; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_993 = _io_rdata_0_T_992 | _io_rdata_0_T_982; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_994 = _io_rdata_0_T_993 | _io_rdata_0_T_983; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_995 = _io_rdata_0_T_994 | _io_rdata_0_T_984; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_996 = _io_rdata_0_T_995 | _io_rdata_0_T_985; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_997 = _io_rdata_0_T_996 | _io_rdata_0_T_986; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_998 = _io_rdata_0_T_997 | _io_rdata_0_T_987; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_999 = _io_rdata_0_T_998 | _io_rdata_0_T_988; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1000 = _io_rdata_0_T_999 | _io_rdata_0_T_989; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1001 = _io_rdata_0_T_1000 | _io_rdata_0_T_990; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1002 = _io_rdata_0_T_1001 | _io_rdata_0_T_991; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1025 = addr_dec[0] & data_0_ctrl_fpu_ren3 | addr_dec[1] & data_1_ctrl_fpu_ren3 | addr_dec[2] &
    data_2_ctrl_fpu_ren3 | addr_dec[3] & data_3_ctrl_fpu_ren3 | addr_dec[4] & data_4_ctrl_fpu_ren3 | addr_dec[5] &
    data_5_ctrl_fpu_ren3 | addr_dec[6] & data_6_ctrl_fpu_ren3 | addr_dec[7] & data_7_ctrl_fpu_ren3 | addr_dec[8] &
    data_8_ctrl_fpu_ren3 | addr_dec[9] & data_9_ctrl_fpu_ren3 | addr_dec[10] & data_10_ctrl_fpu_ren3 | addr_dec[11] &
    data_11_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1026 = addr_dec[0] ? data_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1027 = addr_dec[1] ? data_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1028 = addr_dec[2] ? data_2_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1029 = addr_dec[3] ? data_3_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1030 = addr_dec[4] ? data_4_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1031 = addr_dec[5] ? data_5_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1032 = addr_dec[6] ? data_6_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1033 = addr_dec[7] ? data_7_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1034 = addr_dec[8] ? data_8_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1035 = addr_dec[9] ? data_9_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1036 = addr_dec[10] ? data_10_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1037 = addr_dec[11] ? data_11_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1038 = _io_rdata_0_T_1026 | _io_rdata_0_T_1027; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1039 = _io_rdata_0_T_1038 | _io_rdata_0_T_1028; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1040 = _io_rdata_0_T_1039 | _io_rdata_0_T_1029; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1041 = _io_rdata_0_T_1040 | _io_rdata_0_T_1030; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1042 = _io_rdata_0_T_1041 | _io_rdata_0_T_1031; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1043 = _io_rdata_0_T_1042 | _io_rdata_0_T_1032; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1044 = _io_rdata_0_T_1043 | _io_rdata_0_T_1033; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1045 = _io_rdata_0_T_1044 | _io_rdata_0_T_1034; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1046 = _io_rdata_0_T_1045 | _io_rdata_0_T_1035; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1047 = _io_rdata_0_T_1046 | _io_rdata_0_T_1036; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1048 = _io_rdata_0_T_1047 | _io_rdata_0_T_1037; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1049 = addr_dec[0] ? data_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1050 = addr_dec[1] ? data_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1051 = addr_dec[2] ? data_2_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1052 = addr_dec[3] ? data_3_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1053 = addr_dec[4] ? data_4_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1054 = addr_dec[5] ? data_5_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1055 = addr_dec[6] ? data_6_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1056 = addr_dec[7] ? data_7_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1057 = addr_dec[8] ? data_8_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1058 = addr_dec[9] ? data_9_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1059 = addr_dec[10] ? data_10_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1060 = addr_dec[11] ? data_11_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1061 = _io_rdata_0_T_1049 | _io_rdata_0_T_1050; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1062 = _io_rdata_0_T_1061 | _io_rdata_0_T_1051; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1063 = _io_rdata_0_T_1062 | _io_rdata_0_T_1052; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1064 = _io_rdata_0_T_1063 | _io_rdata_0_T_1053; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1065 = _io_rdata_0_T_1064 | _io_rdata_0_T_1054; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1066 = _io_rdata_0_T_1065 | _io_rdata_0_T_1055; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1067 = _io_rdata_0_T_1066 | _io_rdata_0_T_1056; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1068 = _io_rdata_0_T_1067 | _io_rdata_0_T_1057; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1069 = _io_rdata_0_T_1068 | _io_rdata_0_T_1058; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1070 = _io_rdata_0_T_1069 | _io_rdata_0_T_1059; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1071 = _io_rdata_0_T_1070 | _io_rdata_0_T_1060; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1094 = addr_dec[0] & data_0_ctrl_fpu_fcvt | addr_dec[1] & data_1_ctrl_fpu_fcvt | addr_dec[2] &
    data_2_ctrl_fpu_fcvt | addr_dec[3] & data_3_ctrl_fpu_fcvt | addr_dec[4] & data_4_ctrl_fpu_fcvt | addr_dec[5] &
    data_5_ctrl_fpu_fcvt | addr_dec[6] & data_6_ctrl_fpu_fcvt | addr_dec[7] & data_7_ctrl_fpu_fcvt | addr_dec[8] &
    data_8_ctrl_fpu_fcvt | addr_dec[9] & data_9_ctrl_fpu_fcvt | addr_dec[10] & data_10_ctrl_fpu_fcvt | addr_dec[11] &
    data_11_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1117 = addr_dec[0] & data_0_ctrl_fpu_sqrt | addr_dec[1] & data_1_ctrl_fpu_sqrt | addr_dec[2] &
    data_2_ctrl_fpu_sqrt | addr_dec[3] & data_3_ctrl_fpu_sqrt | addr_dec[4] & data_4_ctrl_fpu_sqrt | addr_dec[5] &
    data_5_ctrl_fpu_sqrt | addr_dec[6] & data_6_ctrl_fpu_sqrt | addr_dec[7] & data_7_ctrl_fpu_sqrt | addr_dec[8] &
    data_8_ctrl_fpu_sqrt | addr_dec[9] & data_9_ctrl_fpu_sqrt | addr_dec[10] & data_10_ctrl_fpu_sqrt | addr_dec[11] &
    data_11_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1140 = addr_dec[0] & data_0_ctrl_fpu_div | addr_dec[1] & data_1_ctrl_fpu_div | addr_dec[2] &
    data_2_ctrl_fpu_div | addr_dec[3] & data_3_ctrl_fpu_div | addr_dec[4] & data_4_ctrl_fpu_div | addr_dec[5] &
    data_5_ctrl_fpu_div | addr_dec[6] & data_6_ctrl_fpu_div | addr_dec[7] & data_7_ctrl_fpu_div | addr_dec[8] &
    data_8_ctrl_fpu_div | addr_dec[9] & data_9_ctrl_fpu_div | addr_dec[10] & data_10_ctrl_fpu_div | addr_dec[11] &
    data_11_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1141 = addr_dec[0] ? data_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1142 = addr_dec[1] ? data_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1143 = addr_dec[2] ? data_2_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1144 = addr_dec[3] ? data_3_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1145 = addr_dec[4] ? data_4_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1146 = addr_dec[5] ? data_5_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1147 = addr_dec[6] ? data_6_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1148 = addr_dec[7] ? data_7_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1149 = addr_dec[8] ? data_8_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1150 = addr_dec[9] ? data_9_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1151 = addr_dec[10] ? data_10_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1152 = addr_dec[11] ? data_11_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1153 = _io_rdata_0_T_1141 | _io_rdata_0_T_1142; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1154 = _io_rdata_0_T_1153 | _io_rdata_0_T_1143; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1155 = _io_rdata_0_T_1154 | _io_rdata_0_T_1144; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1156 = _io_rdata_0_T_1155 | _io_rdata_0_T_1145; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1157 = _io_rdata_0_T_1156 | _io_rdata_0_T_1146; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1158 = _io_rdata_0_T_1157 | _io_rdata_0_T_1147; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1159 = _io_rdata_0_T_1158 | _io_rdata_0_T_1148; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1160 = _io_rdata_0_T_1159 | _io_rdata_0_T_1149; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1161 = _io_rdata_0_T_1160 | _io_rdata_0_T_1150; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1162 = _io_rdata_0_T_1161 | _io_rdata_0_T_1151; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1163 = _io_rdata_0_T_1162 | _io_rdata_0_T_1152; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1186 = addr_dec[0] & data_0_ctrl_fpu_fpWen | addr_dec[1] & data_1_ctrl_fpu_fpWen | addr_dec[2] &
    data_2_ctrl_fpu_fpWen | addr_dec[3] & data_3_ctrl_fpu_fpWen | addr_dec[4] & data_4_ctrl_fpu_fpWen | addr_dec[5] &
    data_5_ctrl_fpu_fpWen | addr_dec[6] & data_6_ctrl_fpu_fpWen | addr_dec[7] & data_7_ctrl_fpu_fpWen | addr_dec[8] &
    data_8_ctrl_fpu_fpWen | addr_dec[9] & data_9_ctrl_fpu_fpWen | addr_dec[10] & data_10_ctrl_fpu_fpWen | addr_dec[11]
     & data_11_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1209 = addr_dec[0] & data_0_ctrl_fpu_wflags | addr_dec[1] & data_1_ctrl_fpu_wflags | addr_dec[2]
     & data_2_ctrl_fpu_wflags | addr_dec[3] & data_3_ctrl_fpu_wflags | addr_dec[4] & data_4_ctrl_fpu_wflags | addr_dec[5
    ] & data_5_ctrl_fpu_wflags | addr_dec[6] & data_6_ctrl_fpu_wflags | addr_dec[7] & data_7_ctrl_fpu_wflags | addr_dec[
    8] & data_8_ctrl_fpu_wflags | addr_dec[9] & data_9_ctrl_fpu_wflags | addr_dec[10] & data_10_ctrl_fpu_wflags |
    addr_dec[11] & data_11_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1232 = addr_dec[0] & data_0_ctrl_fpu_fromInt | addr_dec[1] & data_1_ctrl_fpu_fromInt | addr_dec[2]
     & data_2_ctrl_fpu_fromInt | addr_dec[3] & data_3_ctrl_fpu_fromInt | addr_dec[4] & data_4_ctrl_fpu_fromInt |
    addr_dec[5] & data_5_ctrl_fpu_fromInt | addr_dec[6] & data_6_ctrl_fpu_fromInt | addr_dec[7] &
    data_7_ctrl_fpu_fromInt | addr_dec[8] & data_8_ctrl_fpu_fromInt | addr_dec[9] & data_9_ctrl_fpu_fromInt | addr_dec[
    10] & data_10_ctrl_fpu_fromInt | addr_dec[11] & data_11_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1255 = addr_dec[0] & data_0_ctrl_fpu_typeTagOut | addr_dec[1] & data_1_ctrl_fpu_typeTagOut |
    addr_dec[2] & data_2_ctrl_fpu_typeTagOut | addr_dec[3] & data_3_ctrl_fpu_typeTagOut | addr_dec[4] &
    data_4_ctrl_fpu_typeTagOut | addr_dec[5] & data_5_ctrl_fpu_typeTagOut | addr_dec[6] & data_6_ctrl_fpu_typeTagOut |
    addr_dec[7] & data_7_ctrl_fpu_typeTagOut | addr_dec[8] & data_8_ctrl_fpu_typeTagOut | addr_dec[9] &
    data_9_ctrl_fpu_typeTagOut | addr_dec[10] & data_10_ctrl_fpu_typeTagOut | addr_dec[11] & data_11_ctrl_fpu_typeTagOut
    ; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1278 = addr_dec[0] & data_0_ctrl_fpu_typeTagIn | addr_dec[1] & data_1_ctrl_fpu_typeTagIn |
    addr_dec[2] & data_2_ctrl_fpu_typeTagIn | addr_dec[3] & data_3_ctrl_fpu_typeTagIn | addr_dec[4] &
    data_4_ctrl_fpu_typeTagIn | addr_dec[5] & data_5_ctrl_fpu_typeTagIn | addr_dec[6] & data_6_ctrl_fpu_typeTagIn |
    addr_dec[7] & data_7_ctrl_fpu_typeTagIn | addr_dec[8] & data_8_ctrl_fpu_typeTagIn | addr_dec[9] &
    data_9_ctrl_fpu_typeTagIn | addr_dec[10] & data_10_ctrl_fpu_typeTagIn | addr_dec[11] & data_11_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1301 = addr_dec[0] & data_0_ctrl_fpu_isAddSub | addr_dec[1] & data_1_ctrl_fpu_isAddSub | addr_dec[
    2] & data_2_ctrl_fpu_isAddSub | addr_dec[3] & data_3_ctrl_fpu_isAddSub | addr_dec[4] & data_4_ctrl_fpu_isAddSub |
    addr_dec[5] & data_5_ctrl_fpu_isAddSub | addr_dec[6] & data_6_ctrl_fpu_isAddSub | addr_dec[7] &
    data_7_ctrl_fpu_isAddSub | addr_dec[8] & data_8_ctrl_fpu_isAddSub | addr_dec[9] & data_9_ctrl_fpu_isAddSub |
    addr_dec[10] & data_10_ctrl_fpu_isAddSub | addr_dec[11] & data_11_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1739 = addr_dec[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1740 = addr_dec[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1741 = addr_dec[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1742 = addr_dec[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1743 = addr_dec[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1744 = addr_dec[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1745 = addr_dec[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1746 = addr_dec[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1747 = addr_dec[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1748 = addr_dec[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1749 = addr_dec[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1750 = addr_dec[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1751 = _io_rdata_0_T_1739 | _io_rdata_0_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1752 = _io_rdata_0_T_1751 | _io_rdata_0_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1753 = _io_rdata_0_T_1752 | _io_rdata_0_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1754 = _io_rdata_0_T_1753 | _io_rdata_0_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1755 = _io_rdata_0_T_1754 | _io_rdata_0_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1756 = _io_rdata_0_T_1755 | _io_rdata_0_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1757 = _io_rdata_0_T_1756 | _io_rdata_0_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1758 = _io_rdata_0_T_1757 | _io_rdata_0_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1759 = _io_rdata_0_T_1758 | _io_rdata_0_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1760 = _io_rdata_0_T_1759 | _io_rdata_0_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1761 = _io_rdata_0_T_1760 | _io_rdata_0_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1762 = addr_dec[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1763 = addr_dec[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1764 = addr_dec[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1765 = addr_dec[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1766 = addr_dec[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1767 = addr_dec[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1768 = addr_dec[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1769 = addr_dec[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1770 = addr_dec[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1771 = addr_dec[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1772 = addr_dec[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1773 = addr_dec[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1774 = _io_rdata_0_T_1762 | _io_rdata_0_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1775 = _io_rdata_0_T_1774 | _io_rdata_0_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1776 = _io_rdata_0_T_1775 | _io_rdata_0_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1777 = _io_rdata_0_T_1776 | _io_rdata_0_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1778 = _io_rdata_0_T_1777 | _io_rdata_0_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1779 = _io_rdata_0_T_1778 | _io_rdata_0_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1780 = _io_rdata_0_T_1779 | _io_rdata_0_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1781 = _io_rdata_0_T_1780 | _io_rdata_0_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1782 = _io_rdata_0_T_1781 | _io_rdata_0_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1783 = _io_rdata_0_T_1782 | _io_rdata_0_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_1784 = _io_rdata_0_T_1783 | _io_rdata_0_T_1773; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1807 = addr_dec[0] & data_0_cf_ftqPtr_flag | addr_dec[1] & data_1_cf_ftqPtr_flag | addr_dec[2] &
    data_2_cf_ftqPtr_flag | addr_dec[3] & data_3_cf_ftqPtr_flag | addr_dec[4] & data_4_cf_ftqPtr_flag | addr_dec[5] &
    data_5_cf_ftqPtr_flag | addr_dec[6] & data_6_cf_ftqPtr_flag | addr_dec[7] & data_7_cf_ftqPtr_flag | addr_dec[8] &
    data_8_cf_ftqPtr_flag | addr_dec[9] & data_9_cf_ftqPtr_flag | addr_dec[10] & data_10_cf_ftqPtr_flag | addr_dec[11]
     & data_11_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1808 = addr_dec[0] ? data_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1809 = addr_dec[1] ? data_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1810 = addr_dec[2] ? data_2_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1811 = addr_dec[3] ? data_3_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1812 = addr_dec[4] ? data_4_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1813 = addr_dec[5] ? data_5_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1814 = addr_dec[6] ? data_6_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1815 = addr_dec[7] ? data_7_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1816 = addr_dec[8] ? data_8_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1817 = addr_dec[9] ? data_9_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1818 = addr_dec[10] ? data_10_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1819 = addr_dec[11] ? data_11_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1820 = _io_rdata_0_T_1808 | _io_rdata_0_T_1809; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1821 = _io_rdata_0_T_1820 | _io_rdata_0_T_1810; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1822 = _io_rdata_0_T_1821 | _io_rdata_0_T_1811; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1823 = _io_rdata_0_T_1822 | _io_rdata_0_T_1812; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1824 = _io_rdata_0_T_1823 | _io_rdata_0_T_1813; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1825 = _io_rdata_0_T_1824 | _io_rdata_0_T_1814; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1826 = _io_rdata_0_T_1825 | _io_rdata_0_T_1815; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1827 = _io_rdata_0_T_1826 | _io_rdata_0_T_1816; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1828 = _io_rdata_0_T_1827 | _io_rdata_0_T_1817; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1829 = _io_rdata_0_T_1828 | _io_rdata_0_T_1818; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1830 = _io_rdata_0_T_1829 | _io_rdata_0_T_1819; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1853 = addr_dec[0] & data_0_cf_loadWaitStrict | addr_dec[1] & data_1_cf_loadWaitStrict | addr_dec[
    2] & data_2_cf_loadWaitStrict | addr_dec[3] & data_3_cf_loadWaitStrict | addr_dec[4] & data_4_cf_loadWaitStrict |
    addr_dec[5] & data_5_cf_loadWaitStrict | addr_dec[6] & data_6_cf_loadWaitStrict | addr_dec[7] &
    data_7_cf_loadWaitStrict | addr_dec[8] & data_8_cf_loadWaitStrict | addr_dec[9] & data_9_cf_loadWaitStrict |
    addr_dec[10] & data_10_cf_loadWaitStrict | addr_dec[11] & data_11_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1945 = addr_dec[0] & data_0_cf_storeSetHit | addr_dec[1] & data_1_cf_storeSetHit | addr_dec[2] &
    data_2_cf_storeSetHit | addr_dec[3] & data_3_cf_storeSetHit | addr_dec[4] & data_4_cf_storeSetHit | addr_dec[5] &
    data_5_cf_storeSetHit | addr_dec[6] & data_6_cf_storeSetHit | addr_dec[7] & data_7_cf_storeSetHit | addr_dec[8] &
    data_8_cf_storeSetHit | addr_dec[9] & data_9_cf_storeSetHit | addr_dec[10] & data_10_cf_storeSetHit | addr_dec[11]
     & data_11_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1991 = addr_dec[0] & data_0_cf_pred_taken | addr_dec[1] & data_1_cf_pred_taken | addr_dec[2] &
    data_2_cf_pred_taken | addr_dec[3] & data_3_cf_pred_taken | addr_dec[4] & data_4_cf_pred_taken | addr_dec[5] &
    data_5_cf_pred_taken | addr_dec[6] & data_6_cf_pred_taken | addr_dec[7] & data_7_cf_pred_taken | addr_dec[8] &
    data_8_cf_pred_taken | addr_dec[9] & data_9_cf_pred_taken | addr_dec[10] & data_10_cf_pred_taken | addr_dec[11] &
    data_11_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_2014 = addr_dec[0] & data_0_cf_pd_isRet | addr_dec[1] & data_1_cf_pd_isRet | addr_dec[2] &
    data_2_cf_pd_isRet | addr_dec[3] & data_3_cf_pd_isRet | addr_dec[4] & data_4_cf_pd_isRet | addr_dec[5] &
    data_5_cf_pd_isRet | addr_dec[6] & data_6_cf_pd_isRet | addr_dec[7] & data_7_cf_pd_isRet | addr_dec[8] &
    data_8_cf_pd_isRet | addr_dec[9] & data_9_cf_pd_isRet | addr_dec[10] & data_10_cf_pd_isRet | addr_dec[11] &
    data_11_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_2037 = addr_dec[0] & data_0_cf_pd_isCall | addr_dec[1] & data_1_cf_pd_isCall | addr_dec[2] &
    data_2_cf_pd_isCall | addr_dec[3] & data_3_cf_pd_isCall | addr_dec[4] & data_4_cf_pd_isCall | addr_dec[5] &
    data_5_cf_pd_isCall | addr_dec[6] & data_6_cf_pd_isCall | addr_dec[7] & data_7_cf_pd_isCall | addr_dec[8] &
    data_8_cf_pd_isCall | addr_dec[9] & data_9_cf_pd_isCall | addr_dec[10] & data_10_cf_pd_isCall | addr_dec[11] &
    data_11_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2038 = addr_dec[0] ? data_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2039 = addr_dec[1] ? data_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2040 = addr_dec[2] ? data_2_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2041 = addr_dec[3] ? data_3_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2042 = addr_dec[4] ? data_4_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2043 = addr_dec[5] ? data_5_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2044 = addr_dec[6] ? data_6_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2045 = addr_dec[7] ? data_7_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2046 = addr_dec[8] ? data_8_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2047 = addr_dec[9] ? data_9_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2048 = addr_dec[10] ? data_10_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2049 = addr_dec[11] ? data_11_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2050 = _io_rdata_0_T_2038 | _io_rdata_0_T_2039; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2051 = _io_rdata_0_T_2050 | _io_rdata_0_T_2040; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2052 = _io_rdata_0_T_2051 | _io_rdata_0_T_2041; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2053 = _io_rdata_0_T_2052 | _io_rdata_0_T_2042; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2054 = _io_rdata_0_T_2053 | _io_rdata_0_T_2043; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2055 = _io_rdata_0_T_2054 | _io_rdata_0_T_2044; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2056 = _io_rdata_0_T_2055 | _io_rdata_0_T_2045; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2057 = _io_rdata_0_T_2056 | _io_rdata_0_T_2046; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2058 = _io_rdata_0_T_2057 | _io_rdata_0_T_2047; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2059 = _io_rdata_0_T_2058 | _io_rdata_0_T_2048; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_2060 = _io_rdata_0_T_2059 | _io_rdata_0_T_2049; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_2083 = addr_dec[0] & data_0_cf_pd_isRVC | addr_dec[1] & data_1_cf_pd_isRVC | addr_dec[2] &
    data_2_cf_pd_isRVC | addr_dec[3] & data_3_cf_pd_isRVC | addr_dec[4] & data_4_cf_pd_isRVC | addr_dec[5] &
    data_5_cf_pd_isRVC | addr_dec[6] & data_6_cf_pd_isRVC | addr_dec[7] & data_7_cf_pd_isRVC | addr_dec[8] &
    data_8_cf_pd_isRVC | addr_dec[9] & data_9_cf_pd_isRVC | addr_dec[10] & data_10_cf_pd_isRVC | addr_dec[11] &
    data_11_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_2267 = addr_dec[0] & data_0_cf_trigger_backendEn_0 | addr_dec[1] & data_1_cf_trigger_backendEn_0
     | addr_dec[2] & data_2_cf_trigger_backendEn_0 | addr_dec[3] & data_3_cf_trigger_backendEn_0 | addr_dec[4] &
    data_4_cf_trigger_backendEn_0 | addr_dec[5] & data_5_cf_trigger_backendEn_0 | addr_dec[6] &
    data_6_cf_trigger_backendEn_0 | addr_dec[7] & data_7_cf_trigger_backendEn_0 | addr_dec[8] &
    data_8_cf_trigger_backendEn_0 | addr_dec[9] & data_9_cf_trigger_backendEn_0 | addr_dec[10] &
    data_10_cf_trigger_backendEn_0 | addr_dec[11] & data_11_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_2290 = addr_dec[0] & data_0_cf_trigger_backendEn_1 | addr_dec[1] & data_1_cf_trigger_backendEn_1
     | addr_dec[2] & data_2_cf_trigger_backendEn_1 | addr_dec[3] & data_3_cf_trigger_backendEn_1 | addr_dec[4] &
    data_4_cf_trigger_backendEn_1 | addr_dec[5] & data_5_cf_trigger_backendEn_1 | addr_dec[6] &
    data_6_cf_trigger_backendEn_1 | addr_dec[7] & data_7_cf_trigger_backendEn_1 | addr_dec[8] &
    data_8_cf_trigger_backendEn_1 | addr_dec[9] & data_9_cf_trigger_backendEn_1 | addr_dec[10] &
    data_10_cf_trigger_backendEn_1 | addr_dec[11] & data_11_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  read_by_0_1 = io_wen_0 & io_waddr_0 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_1 = io_wen_1 & io_waddr_1 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_1 = 16'h1 << io_raddr_1; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_1 = _addr_dec_T_1[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_2 = {read_by_1_1,read_by_0_1}; // @[DataModuleTemplate.scala 178:28]
  wire [2:0] _io_rdata_1_T_183 = read_by_0_1 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_184 = read_by_1_1 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_185 = _io_rdata_1_T_183 | _io_rdata_1_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_186 = read_by_0_1 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_187 = read_by_1_1 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_188 = _io_rdata_1_T_186 | _io_rdata_1_T_187; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_191 = read_by_0_1 & io_wdata_0_cf_ftqPtr_flag | read_by_1_1 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_192 = read_by_0_1 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_193 = read_by_1_1 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_194 = _io_rdata_1_T_192 | _io_rdata_1_T_193; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_197 = read_by_0_1 & io_wdata_0_cf_loadWaitStrict | read_by_1_1 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_209 = read_by_0_1 & io_wdata_0_cf_storeSetHit | read_by_1_1 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_215 = read_by_0_1 & io_wdata_0_cf_pred_taken | read_by_1_1 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_218 = read_by_0_1 & io_wdata_0_cf_pd_isRet | read_by_1_1 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_221 = read_by_0_1 & io_wdata_0_cf_pd_isCall | read_by_1_1 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_222 = read_by_0_1 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_223 = read_by_1_1 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_224 = _io_rdata_1_T_222 | _io_rdata_1_T_223; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_227 = read_by_0_1 & io_wdata_0_cf_pd_isRVC | read_by_1_1 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_251 = read_by_0_1 & io_wdata_0_cf_trigger_backendEn_0 | read_by_1_1 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_254 = read_by_0_1 & io_wdata_0_cf_trigger_backendEn_1 | read_by_1_1 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1739 = addr_dec_1[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1740 = addr_dec_1[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1741 = addr_dec_1[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1742 = addr_dec_1[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1743 = addr_dec_1[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1744 = addr_dec_1[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1745 = addr_dec_1[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1746 = addr_dec_1[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1747 = addr_dec_1[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1748 = addr_dec_1[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1749 = addr_dec_1[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1750 = addr_dec_1[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1751 = _io_rdata_1_T_1739 | _io_rdata_1_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1752 = _io_rdata_1_T_1751 | _io_rdata_1_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1753 = _io_rdata_1_T_1752 | _io_rdata_1_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1754 = _io_rdata_1_T_1753 | _io_rdata_1_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1755 = _io_rdata_1_T_1754 | _io_rdata_1_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1756 = _io_rdata_1_T_1755 | _io_rdata_1_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1757 = _io_rdata_1_T_1756 | _io_rdata_1_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1758 = _io_rdata_1_T_1757 | _io_rdata_1_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1759 = _io_rdata_1_T_1758 | _io_rdata_1_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1760 = _io_rdata_1_T_1759 | _io_rdata_1_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1761 = _io_rdata_1_T_1760 | _io_rdata_1_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1762 = addr_dec_1[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1763 = addr_dec_1[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1764 = addr_dec_1[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1765 = addr_dec_1[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1766 = addr_dec_1[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1767 = addr_dec_1[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1768 = addr_dec_1[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1769 = addr_dec_1[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1770 = addr_dec_1[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1771 = addr_dec_1[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1772 = addr_dec_1[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1773 = addr_dec_1[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1774 = _io_rdata_1_T_1762 | _io_rdata_1_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1775 = _io_rdata_1_T_1774 | _io_rdata_1_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1776 = _io_rdata_1_T_1775 | _io_rdata_1_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1777 = _io_rdata_1_T_1776 | _io_rdata_1_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1778 = _io_rdata_1_T_1777 | _io_rdata_1_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1779 = _io_rdata_1_T_1778 | _io_rdata_1_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1780 = _io_rdata_1_T_1779 | _io_rdata_1_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1781 = _io_rdata_1_T_1780 | _io_rdata_1_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1782 = _io_rdata_1_T_1781 | _io_rdata_1_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1783 = _io_rdata_1_T_1782 | _io_rdata_1_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_1784 = _io_rdata_1_T_1783 | _io_rdata_1_T_1773; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1807 = addr_dec_1[0] & data_0_cf_ftqPtr_flag | addr_dec_1[1] & data_1_cf_ftqPtr_flag | addr_dec_1[
    2] & data_2_cf_ftqPtr_flag | addr_dec_1[3] & data_3_cf_ftqPtr_flag | addr_dec_1[4] & data_4_cf_ftqPtr_flag |
    addr_dec_1[5] & data_5_cf_ftqPtr_flag | addr_dec_1[6] & data_6_cf_ftqPtr_flag | addr_dec_1[7] &
    data_7_cf_ftqPtr_flag | addr_dec_1[8] & data_8_cf_ftqPtr_flag | addr_dec_1[9] & data_9_cf_ftqPtr_flag | addr_dec_1[
    10] & data_10_cf_ftqPtr_flag | addr_dec_1[11] & data_11_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1808 = addr_dec_1[0] ? data_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1809 = addr_dec_1[1] ? data_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1810 = addr_dec_1[2] ? data_2_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1811 = addr_dec_1[3] ? data_3_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1812 = addr_dec_1[4] ? data_4_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1813 = addr_dec_1[5] ? data_5_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1814 = addr_dec_1[6] ? data_6_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1815 = addr_dec_1[7] ? data_7_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1816 = addr_dec_1[8] ? data_8_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1817 = addr_dec_1[9] ? data_9_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1818 = addr_dec_1[10] ? data_10_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1819 = addr_dec_1[11] ? data_11_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1820 = _io_rdata_1_T_1808 | _io_rdata_1_T_1809; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1821 = _io_rdata_1_T_1820 | _io_rdata_1_T_1810; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1822 = _io_rdata_1_T_1821 | _io_rdata_1_T_1811; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1823 = _io_rdata_1_T_1822 | _io_rdata_1_T_1812; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1824 = _io_rdata_1_T_1823 | _io_rdata_1_T_1813; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1825 = _io_rdata_1_T_1824 | _io_rdata_1_T_1814; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1826 = _io_rdata_1_T_1825 | _io_rdata_1_T_1815; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1827 = _io_rdata_1_T_1826 | _io_rdata_1_T_1816; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1828 = _io_rdata_1_T_1827 | _io_rdata_1_T_1817; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1829 = _io_rdata_1_T_1828 | _io_rdata_1_T_1818; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1830 = _io_rdata_1_T_1829 | _io_rdata_1_T_1819; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1853 = addr_dec_1[0] & data_0_cf_loadWaitStrict | addr_dec_1[1] & data_1_cf_loadWaitStrict |
    addr_dec_1[2] & data_2_cf_loadWaitStrict | addr_dec_1[3] & data_3_cf_loadWaitStrict | addr_dec_1[4] &
    data_4_cf_loadWaitStrict | addr_dec_1[5] & data_5_cf_loadWaitStrict | addr_dec_1[6] & data_6_cf_loadWaitStrict |
    addr_dec_1[7] & data_7_cf_loadWaitStrict | addr_dec_1[8] & data_8_cf_loadWaitStrict | addr_dec_1[9] &
    data_9_cf_loadWaitStrict | addr_dec_1[10] & data_10_cf_loadWaitStrict | addr_dec_1[11] & data_11_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1945 = addr_dec_1[0] & data_0_cf_storeSetHit | addr_dec_1[1] & data_1_cf_storeSetHit | addr_dec_1[
    2] & data_2_cf_storeSetHit | addr_dec_1[3] & data_3_cf_storeSetHit | addr_dec_1[4] & data_4_cf_storeSetHit |
    addr_dec_1[5] & data_5_cf_storeSetHit | addr_dec_1[6] & data_6_cf_storeSetHit | addr_dec_1[7] &
    data_7_cf_storeSetHit | addr_dec_1[8] & data_8_cf_storeSetHit | addr_dec_1[9] & data_9_cf_storeSetHit | addr_dec_1[
    10] & data_10_cf_storeSetHit | addr_dec_1[11] & data_11_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1991 = addr_dec_1[0] & data_0_cf_pred_taken | addr_dec_1[1] & data_1_cf_pred_taken | addr_dec_1[2]
     & data_2_cf_pred_taken | addr_dec_1[3] & data_3_cf_pred_taken | addr_dec_1[4] & data_4_cf_pred_taken | addr_dec_1[5
    ] & data_5_cf_pred_taken | addr_dec_1[6] & data_6_cf_pred_taken | addr_dec_1[7] & data_7_cf_pred_taken | addr_dec_1[
    8] & data_8_cf_pred_taken | addr_dec_1[9] & data_9_cf_pred_taken | addr_dec_1[10] & data_10_cf_pred_taken |
    addr_dec_1[11] & data_11_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_2014 = addr_dec_1[0] & data_0_cf_pd_isRet | addr_dec_1[1] & data_1_cf_pd_isRet | addr_dec_1[2] &
    data_2_cf_pd_isRet | addr_dec_1[3] & data_3_cf_pd_isRet | addr_dec_1[4] & data_4_cf_pd_isRet | addr_dec_1[5] &
    data_5_cf_pd_isRet | addr_dec_1[6] & data_6_cf_pd_isRet | addr_dec_1[7] & data_7_cf_pd_isRet | addr_dec_1[8] &
    data_8_cf_pd_isRet | addr_dec_1[9] & data_9_cf_pd_isRet | addr_dec_1[10] & data_10_cf_pd_isRet | addr_dec_1[11] &
    data_11_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_2037 = addr_dec_1[0] & data_0_cf_pd_isCall | addr_dec_1[1] & data_1_cf_pd_isCall | addr_dec_1[2]
     & data_2_cf_pd_isCall | addr_dec_1[3] & data_3_cf_pd_isCall | addr_dec_1[4] & data_4_cf_pd_isCall | addr_dec_1[5]
     & data_5_cf_pd_isCall | addr_dec_1[6] & data_6_cf_pd_isCall | addr_dec_1[7] & data_7_cf_pd_isCall | addr_dec_1[8]
     & data_8_cf_pd_isCall | addr_dec_1[9] & data_9_cf_pd_isCall | addr_dec_1[10] & data_10_cf_pd_isCall | addr_dec_1[11
    ] & data_11_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2038 = addr_dec_1[0] ? data_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2039 = addr_dec_1[1] ? data_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2040 = addr_dec_1[2] ? data_2_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2041 = addr_dec_1[3] ? data_3_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2042 = addr_dec_1[4] ? data_4_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2043 = addr_dec_1[5] ? data_5_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2044 = addr_dec_1[6] ? data_6_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2045 = addr_dec_1[7] ? data_7_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2046 = addr_dec_1[8] ? data_8_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2047 = addr_dec_1[9] ? data_9_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2048 = addr_dec_1[10] ? data_10_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2049 = addr_dec_1[11] ? data_11_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2050 = _io_rdata_1_T_2038 | _io_rdata_1_T_2039; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2051 = _io_rdata_1_T_2050 | _io_rdata_1_T_2040; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2052 = _io_rdata_1_T_2051 | _io_rdata_1_T_2041; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2053 = _io_rdata_1_T_2052 | _io_rdata_1_T_2042; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2054 = _io_rdata_1_T_2053 | _io_rdata_1_T_2043; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2055 = _io_rdata_1_T_2054 | _io_rdata_1_T_2044; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2056 = _io_rdata_1_T_2055 | _io_rdata_1_T_2045; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2057 = _io_rdata_1_T_2056 | _io_rdata_1_T_2046; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2058 = _io_rdata_1_T_2057 | _io_rdata_1_T_2047; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2059 = _io_rdata_1_T_2058 | _io_rdata_1_T_2048; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_2060 = _io_rdata_1_T_2059 | _io_rdata_1_T_2049; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_2083 = addr_dec_1[0] & data_0_cf_pd_isRVC | addr_dec_1[1] & data_1_cf_pd_isRVC | addr_dec_1[2] &
    data_2_cf_pd_isRVC | addr_dec_1[3] & data_3_cf_pd_isRVC | addr_dec_1[4] & data_4_cf_pd_isRVC | addr_dec_1[5] &
    data_5_cf_pd_isRVC | addr_dec_1[6] & data_6_cf_pd_isRVC | addr_dec_1[7] & data_7_cf_pd_isRVC | addr_dec_1[8] &
    data_8_cf_pd_isRVC | addr_dec_1[9] & data_9_cf_pd_isRVC | addr_dec_1[10] & data_10_cf_pd_isRVC | addr_dec_1[11] &
    data_11_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_2267 = addr_dec_1[0] & data_0_cf_trigger_backendEn_0 | addr_dec_1[1] &
    data_1_cf_trigger_backendEn_0 | addr_dec_1[2] & data_2_cf_trigger_backendEn_0 | addr_dec_1[3] &
    data_3_cf_trigger_backendEn_0 | addr_dec_1[4] & data_4_cf_trigger_backendEn_0 | addr_dec_1[5] &
    data_5_cf_trigger_backendEn_0 | addr_dec_1[6] & data_6_cf_trigger_backendEn_0 | addr_dec_1[7] &
    data_7_cf_trigger_backendEn_0 | addr_dec_1[8] & data_8_cf_trigger_backendEn_0 | addr_dec_1[9] &
    data_9_cf_trigger_backendEn_0 | addr_dec_1[10] & data_10_cf_trigger_backendEn_0 | addr_dec_1[11] &
    data_11_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_2290 = addr_dec_1[0] & data_0_cf_trigger_backendEn_1 | addr_dec_1[1] &
    data_1_cf_trigger_backendEn_1 | addr_dec_1[2] & data_2_cf_trigger_backendEn_1 | addr_dec_1[3] &
    data_3_cf_trigger_backendEn_1 | addr_dec_1[4] & data_4_cf_trigger_backendEn_1 | addr_dec_1[5] &
    data_5_cf_trigger_backendEn_1 | addr_dec_1[6] & data_6_cf_trigger_backendEn_1 | addr_dec_1[7] &
    data_7_cf_trigger_backendEn_1 | addr_dec_1[8] & data_8_cf_trigger_backendEn_1 | addr_dec_1[9] &
    data_9_cf_trigger_backendEn_1 | addr_dec_1[10] & data_10_cf_trigger_backendEn_1 | addr_dec_1[11] &
    data_11_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  read_by_0_2 = io_wen_0 & io_waddr_0 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_2 = io_wen_1 & io_waddr_1 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_2 = 16'h1 << io_raddr_2; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_2 = _addr_dec_T_2[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_4 = {read_by_1_2,read_by_0_2}; // @[DataModuleTemplate.scala 178:28]
  wire [2:0] _io_rdata_2_T_183 = read_by_0_2 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_184 = read_by_1_2 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_185 = _io_rdata_2_T_183 | _io_rdata_2_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_186 = read_by_0_2 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_187 = read_by_1_2 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_188 = _io_rdata_2_T_186 | _io_rdata_2_T_187; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_191 = read_by_0_2 & io_wdata_0_cf_ftqPtr_flag | read_by_1_2 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_192 = read_by_0_2 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_193 = read_by_1_2 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_194 = _io_rdata_2_T_192 | _io_rdata_2_T_193; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_197 = read_by_0_2 & io_wdata_0_cf_loadWaitStrict | read_by_1_2 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_209 = read_by_0_2 & io_wdata_0_cf_storeSetHit | read_by_1_2 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_215 = read_by_0_2 & io_wdata_0_cf_pred_taken | read_by_1_2 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_218 = read_by_0_2 & io_wdata_0_cf_pd_isRet | read_by_1_2 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_221 = read_by_0_2 & io_wdata_0_cf_pd_isCall | read_by_1_2 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_222 = read_by_0_2 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_223 = read_by_1_2 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_224 = _io_rdata_2_T_222 | _io_rdata_2_T_223; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_227 = read_by_0_2 & io_wdata_0_cf_pd_isRVC | read_by_1_2 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_251 = read_by_0_2 & io_wdata_0_cf_trigger_backendEn_0 | read_by_1_2 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_254 = read_by_0_2 & io_wdata_0_cf_trigger_backendEn_1 | read_by_1_2 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1739 = addr_dec_2[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1740 = addr_dec_2[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1741 = addr_dec_2[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1742 = addr_dec_2[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1743 = addr_dec_2[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1744 = addr_dec_2[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1745 = addr_dec_2[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1746 = addr_dec_2[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1747 = addr_dec_2[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1748 = addr_dec_2[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1749 = addr_dec_2[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1750 = addr_dec_2[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1751 = _io_rdata_2_T_1739 | _io_rdata_2_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1752 = _io_rdata_2_T_1751 | _io_rdata_2_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1753 = _io_rdata_2_T_1752 | _io_rdata_2_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1754 = _io_rdata_2_T_1753 | _io_rdata_2_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1755 = _io_rdata_2_T_1754 | _io_rdata_2_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1756 = _io_rdata_2_T_1755 | _io_rdata_2_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1757 = _io_rdata_2_T_1756 | _io_rdata_2_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1758 = _io_rdata_2_T_1757 | _io_rdata_2_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1759 = _io_rdata_2_T_1758 | _io_rdata_2_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1760 = _io_rdata_2_T_1759 | _io_rdata_2_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1761 = _io_rdata_2_T_1760 | _io_rdata_2_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1762 = addr_dec_2[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1763 = addr_dec_2[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1764 = addr_dec_2[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1765 = addr_dec_2[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1766 = addr_dec_2[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1767 = addr_dec_2[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1768 = addr_dec_2[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1769 = addr_dec_2[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1770 = addr_dec_2[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1771 = addr_dec_2[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1772 = addr_dec_2[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1773 = addr_dec_2[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1774 = _io_rdata_2_T_1762 | _io_rdata_2_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1775 = _io_rdata_2_T_1774 | _io_rdata_2_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1776 = _io_rdata_2_T_1775 | _io_rdata_2_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1777 = _io_rdata_2_T_1776 | _io_rdata_2_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1778 = _io_rdata_2_T_1777 | _io_rdata_2_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1779 = _io_rdata_2_T_1778 | _io_rdata_2_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1780 = _io_rdata_2_T_1779 | _io_rdata_2_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1781 = _io_rdata_2_T_1780 | _io_rdata_2_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1782 = _io_rdata_2_T_1781 | _io_rdata_2_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1783 = _io_rdata_2_T_1782 | _io_rdata_2_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_1784 = _io_rdata_2_T_1783 | _io_rdata_2_T_1773; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_1807 = addr_dec_2[0] & data_0_cf_ftqPtr_flag | addr_dec_2[1] & data_1_cf_ftqPtr_flag | addr_dec_2[
    2] & data_2_cf_ftqPtr_flag | addr_dec_2[3] & data_3_cf_ftqPtr_flag | addr_dec_2[4] & data_4_cf_ftqPtr_flag |
    addr_dec_2[5] & data_5_cf_ftqPtr_flag | addr_dec_2[6] & data_6_cf_ftqPtr_flag | addr_dec_2[7] &
    data_7_cf_ftqPtr_flag | addr_dec_2[8] & data_8_cf_ftqPtr_flag | addr_dec_2[9] & data_9_cf_ftqPtr_flag | addr_dec_2[
    10] & data_10_cf_ftqPtr_flag | addr_dec_2[11] & data_11_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1808 = addr_dec_2[0] ? data_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1809 = addr_dec_2[1] ? data_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1810 = addr_dec_2[2] ? data_2_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1811 = addr_dec_2[3] ? data_3_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1812 = addr_dec_2[4] ? data_4_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1813 = addr_dec_2[5] ? data_5_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1814 = addr_dec_2[6] ? data_6_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1815 = addr_dec_2[7] ? data_7_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1816 = addr_dec_2[8] ? data_8_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1817 = addr_dec_2[9] ? data_9_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1818 = addr_dec_2[10] ? data_10_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1819 = addr_dec_2[11] ? data_11_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1820 = _io_rdata_2_T_1808 | _io_rdata_2_T_1809; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1821 = _io_rdata_2_T_1820 | _io_rdata_2_T_1810; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1822 = _io_rdata_2_T_1821 | _io_rdata_2_T_1811; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1823 = _io_rdata_2_T_1822 | _io_rdata_2_T_1812; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1824 = _io_rdata_2_T_1823 | _io_rdata_2_T_1813; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1825 = _io_rdata_2_T_1824 | _io_rdata_2_T_1814; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1826 = _io_rdata_2_T_1825 | _io_rdata_2_T_1815; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1827 = _io_rdata_2_T_1826 | _io_rdata_2_T_1816; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1828 = _io_rdata_2_T_1827 | _io_rdata_2_T_1817; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1829 = _io_rdata_2_T_1828 | _io_rdata_2_T_1818; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_2_T_1830 = _io_rdata_2_T_1829 | _io_rdata_2_T_1819; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_1853 = addr_dec_2[0] & data_0_cf_loadWaitStrict | addr_dec_2[1] & data_1_cf_loadWaitStrict |
    addr_dec_2[2] & data_2_cf_loadWaitStrict | addr_dec_2[3] & data_3_cf_loadWaitStrict | addr_dec_2[4] &
    data_4_cf_loadWaitStrict | addr_dec_2[5] & data_5_cf_loadWaitStrict | addr_dec_2[6] & data_6_cf_loadWaitStrict |
    addr_dec_2[7] & data_7_cf_loadWaitStrict | addr_dec_2[8] & data_8_cf_loadWaitStrict | addr_dec_2[9] &
    data_9_cf_loadWaitStrict | addr_dec_2[10] & data_10_cf_loadWaitStrict | addr_dec_2[11] & data_11_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_1945 = addr_dec_2[0] & data_0_cf_storeSetHit | addr_dec_2[1] & data_1_cf_storeSetHit | addr_dec_2[
    2] & data_2_cf_storeSetHit | addr_dec_2[3] & data_3_cf_storeSetHit | addr_dec_2[4] & data_4_cf_storeSetHit |
    addr_dec_2[5] & data_5_cf_storeSetHit | addr_dec_2[6] & data_6_cf_storeSetHit | addr_dec_2[7] &
    data_7_cf_storeSetHit | addr_dec_2[8] & data_8_cf_storeSetHit | addr_dec_2[9] & data_9_cf_storeSetHit | addr_dec_2[
    10] & data_10_cf_storeSetHit | addr_dec_2[11] & data_11_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_1991 = addr_dec_2[0] & data_0_cf_pred_taken | addr_dec_2[1] & data_1_cf_pred_taken | addr_dec_2[2]
     & data_2_cf_pred_taken | addr_dec_2[3] & data_3_cf_pred_taken | addr_dec_2[4] & data_4_cf_pred_taken | addr_dec_2[5
    ] & data_5_cf_pred_taken | addr_dec_2[6] & data_6_cf_pred_taken | addr_dec_2[7] & data_7_cf_pred_taken | addr_dec_2[
    8] & data_8_cf_pred_taken | addr_dec_2[9] & data_9_cf_pred_taken | addr_dec_2[10] & data_10_cf_pred_taken |
    addr_dec_2[11] & data_11_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_2014 = addr_dec_2[0] & data_0_cf_pd_isRet | addr_dec_2[1] & data_1_cf_pd_isRet | addr_dec_2[2] &
    data_2_cf_pd_isRet | addr_dec_2[3] & data_3_cf_pd_isRet | addr_dec_2[4] & data_4_cf_pd_isRet | addr_dec_2[5] &
    data_5_cf_pd_isRet | addr_dec_2[6] & data_6_cf_pd_isRet | addr_dec_2[7] & data_7_cf_pd_isRet | addr_dec_2[8] &
    data_8_cf_pd_isRet | addr_dec_2[9] & data_9_cf_pd_isRet | addr_dec_2[10] & data_10_cf_pd_isRet | addr_dec_2[11] &
    data_11_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_2037 = addr_dec_2[0] & data_0_cf_pd_isCall | addr_dec_2[1] & data_1_cf_pd_isCall | addr_dec_2[2]
     & data_2_cf_pd_isCall | addr_dec_2[3] & data_3_cf_pd_isCall | addr_dec_2[4] & data_4_cf_pd_isCall | addr_dec_2[5]
     & data_5_cf_pd_isCall | addr_dec_2[6] & data_6_cf_pd_isCall | addr_dec_2[7] & data_7_cf_pd_isCall | addr_dec_2[8]
     & data_8_cf_pd_isCall | addr_dec_2[9] & data_9_cf_pd_isCall | addr_dec_2[10] & data_10_cf_pd_isCall | addr_dec_2[11
    ] & data_11_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2038 = addr_dec_2[0] ? data_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2039 = addr_dec_2[1] ? data_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2040 = addr_dec_2[2] ? data_2_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2041 = addr_dec_2[3] ? data_3_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2042 = addr_dec_2[4] ? data_4_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2043 = addr_dec_2[5] ? data_5_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2044 = addr_dec_2[6] ? data_6_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2045 = addr_dec_2[7] ? data_7_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2046 = addr_dec_2[8] ? data_8_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2047 = addr_dec_2[9] ? data_9_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2048 = addr_dec_2[10] ? data_10_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2049 = addr_dec_2[11] ? data_11_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2050 = _io_rdata_2_T_2038 | _io_rdata_2_T_2039; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2051 = _io_rdata_2_T_2050 | _io_rdata_2_T_2040; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2052 = _io_rdata_2_T_2051 | _io_rdata_2_T_2041; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2053 = _io_rdata_2_T_2052 | _io_rdata_2_T_2042; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2054 = _io_rdata_2_T_2053 | _io_rdata_2_T_2043; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2055 = _io_rdata_2_T_2054 | _io_rdata_2_T_2044; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2056 = _io_rdata_2_T_2055 | _io_rdata_2_T_2045; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2057 = _io_rdata_2_T_2056 | _io_rdata_2_T_2046; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2058 = _io_rdata_2_T_2057 | _io_rdata_2_T_2047; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2059 = _io_rdata_2_T_2058 | _io_rdata_2_T_2048; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_2060 = _io_rdata_2_T_2059 | _io_rdata_2_T_2049; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_2083 = addr_dec_2[0] & data_0_cf_pd_isRVC | addr_dec_2[1] & data_1_cf_pd_isRVC | addr_dec_2[2] &
    data_2_cf_pd_isRVC | addr_dec_2[3] & data_3_cf_pd_isRVC | addr_dec_2[4] & data_4_cf_pd_isRVC | addr_dec_2[5] &
    data_5_cf_pd_isRVC | addr_dec_2[6] & data_6_cf_pd_isRVC | addr_dec_2[7] & data_7_cf_pd_isRVC | addr_dec_2[8] &
    data_8_cf_pd_isRVC | addr_dec_2[9] & data_9_cf_pd_isRVC | addr_dec_2[10] & data_10_cf_pd_isRVC | addr_dec_2[11] &
    data_11_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_2267 = addr_dec_2[0] & data_0_cf_trigger_backendEn_0 | addr_dec_2[1] &
    data_1_cf_trigger_backendEn_0 | addr_dec_2[2] & data_2_cf_trigger_backendEn_0 | addr_dec_2[3] &
    data_3_cf_trigger_backendEn_0 | addr_dec_2[4] & data_4_cf_trigger_backendEn_0 | addr_dec_2[5] &
    data_5_cf_trigger_backendEn_0 | addr_dec_2[6] & data_6_cf_trigger_backendEn_0 | addr_dec_2[7] &
    data_7_cf_trigger_backendEn_0 | addr_dec_2[8] & data_8_cf_trigger_backendEn_0 | addr_dec_2[9] &
    data_9_cf_trigger_backendEn_0 | addr_dec_2[10] & data_10_cf_trigger_backendEn_0 | addr_dec_2[11] &
    data_11_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_2290 = addr_dec_2[0] & data_0_cf_trigger_backendEn_1 | addr_dec_2[1] &
    data_1_cf_trigger_backendEn_1 | addr_dec_2[2] & data_2_cf_trigger_backendEn_1 | addr_dec_2[3] &
    data_3_cf_trigger_backendEn_1 | addr_dec_2[4] & data_4_cf_trigger_backendEn_1 | addr_dec_2[5] &
    data_5_cf_trigger_backendEn_1 | addr_dec_2[6] & data_6_cf_trigger_backendEn_1 | addr_dec_2[7] &
    data_7_cf_trigger_backendEn_1 | addr_dec_2[8] & data_8_cf_trigger_backendEn_1 | addr_dec_2[9] &
    data_9_cf_trigger_backendEn_1 | addr_dec_2[10] & data_10_cf_trigger_backendEn_1 | addr_dec_2[11] &
    data_11_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  read_by_0_3 = io_wen_0 & io_waddr_0 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_3 = io_wen_1 & io_waddr_1 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_3 = 16'h1 << io_raddr_3; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_3 = _addr_dec_T_3[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_6 = {read_by_1_3,read_by_0_3}; // @[DataModuleTemplate.scala 178:28]
  wire [2:0] _io_rdata_3_T_183 = read_by_0_3 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_184 = read_by_1_3 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_185 = _io_rdata_3_T_183 | _io_rdata_3_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_186 = read_by_0_3 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_187 = read_by_1_3 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_188 = _io_rdata_3_T_186 | _io_rdata_3_T_187; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_191 = read_by_0_3 & io_wdata_0_cf_ftqPtr_flag | read_by_1_3 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_192 = read_by_0_3 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_193 = read_by_1_3 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_194 = _io_rdata_3_T_192 | _io_rdata_3_T_193; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_197 = read_by_0_3 & io_wdata_0_cf_loadWaitStrict | read_by_1_3 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_209 = read_by_0_3 & io_wdata_0_cf_storeSetHit | read_by_1_3 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_215 = read_by_0_3 & io_wdata_0_cf_pred_taken | read_by_1_3 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_218 = read_by_0_3 & io_wdata_0_cf_pd_isRet | read_by_1_3 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_221 = read_by_0_3 & io_wdata_0_cf_pd_isCall | read_by_1_3 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_222 = read_by_0_3 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_223 = read_by_1_3 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_224 = _io_rdata_3_T_222 | _io_rdata_3_T_223; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_227 = read_by_0_3 & io_wdata_0_cf_pd_isRVC | read_by_1_3 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_251 = read_by_0_3 & io_wdata_0_cf_trigger_backendEn_0 | read_by_1_3 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_254 = read_by_0_3 & io_wdata_0_cf_trigger_backendEn_1 | read_by_1_3 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1739 = addr_dec_3[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1740 = addr_dec_3[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1741 = addr_dec_3[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1742 = addr_dec_3[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1743 = addr_dec_3[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1744 = addr_dec_3[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1745 = addr_dec_3[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1746 = addr_dec_3[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1747 = addr_dec_3[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1748 = addr_dec_3[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1749 = addr_dec_3[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1750 = addr_dec_3[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1751 = _io_rdata_3_T_1739 | _io_rdata_3_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1752 = _io_rdata_3_T_1751 | _io_rdata_3_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1753 = _io_rdata_3_T_1752 | _io_rdata_3_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1754 = _io_rdata_3_T_1753 | _io_rdata_3_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1755 = _io_rdata_3_T_1754 | _io_rdata_3_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1756 = _io_rdata_3_T_1755 | _io_rdata_3_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1757 = _io_rdata_3_T_1756 | _io_rdata_3_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1758 = _io_rdata_3_T_1757 | _io_rdata_3_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1759 = _io_rdata_3_T_1758 | _io_rdata_3_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1760 = _io_rdata_3_T_1759 | _io_rdata_3_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1761 = _io_rdata_3_T_1760 | _io_rdata_3_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1762 = addr_dec_3[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1763 = addr_dec_3[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1764 = addr_dec_3[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1765 = addr_dec_3[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1766 = addr_dec_3[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1767 = addr_dec_3[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1768 = addr_dec_3[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1769 = addr_dec_3[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1770 = addr_dec_3[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1771 = addr_dec_3[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1772 = addr_dec_3[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1773 = addr_dec_3[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1774 = _io_rdata_3_T_1762 | _io_rdata_3_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1775 = _io_rdata_3_T_1774 | _io_rdata_3_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1776 = _io_rdata_3_T_1775 | _io_rdata_3_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1777 = _io_rdata_3_T_1776 | _io_rdata_3_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1778 = _io_rdata_3_T_1777 | _io_rdata_3_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1779 = _io_rdata_3_T_1778 | _io_rdata_3_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1780 = _io_rdata_3_T_1779 | _io_rdata_3_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1781 = _io_rdata_3_T_1780 | _io_rdata_3_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1782 = _io_rdata_3_T_1781 | _io_rdata_3_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1783 = _io_rdata_3_T_1782 | _io_rdata_3_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_3_T_1784 = _io_rdata_3_T_1783 | _io_rdata_3_T_1773; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_1807 = addr_dec_3[0] & data_0_cf_ftqPtr_flag | addr_dec_3[1] & data_1_cf_ftqPtr_flag | addr_dec_3[
    2] & data_2_cf_ftqPtr_flag | addr_dec_3[3] & data_3_cf_ftqPtr_flag | addr_dec_3[4] & data_4_cf_ftqPtr_flag |
    addr_dec_3[5] & data_5_cf_ftqPtr_flag | addr_dec_3[6] & data_6_cf_ftqPtr_flag | addr_dec_3[7] &
    data_7_cf_ftqPtr_flag | addr_dec_3[8] & data_8_cf_ftqPtr_flag | addr_dec_3[9] & data_9_cf_ftqPtr_flag | addr_dec_3[
    10] & data_10_cf_ftqPtr_flag | addr_dec_3[11] & data_11_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1808 = addr_dec_3[0] ? data_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1809 = addr_dec_3[1] ? data_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1810 = addr_dec_3[2] ? data_2_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1811 = addr_dec_3[3] ? data_3_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1812 = addr_dec_3[4] ? data_4_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1813 = addr_dec_3[5] ? data_5_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1814 = addr_dec_3[6] ? data_6_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1815 = addr_dec_3[7] ? data_7_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1816 = addr_dec_3[8] ? data_8_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1817 = addr_dec_3[9] ? data_9_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1818 = addr_dec_3[10] ? data_10_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1819 = addr_dec_3[11] ? data_11_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1820 = _io_rdata_3_T_1808 | _io_rdata_3_T_1809; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1821 = _io_rdata_3_T_1820 | _io_rdata_3_T_1810; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1822 = _io_rdata_3_T_1821 | _io_rdata_3_T_1811; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1823 = _io_rdata_3_T_1822 | _io_rdata_3_T_1812; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1824 = _io_rdata_3_T_1823 | _io_rdata_3_T_1813; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1825 = _io_rdata_3_T_1824 | _io_rdata_3_T_1814; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1826 = _io_rdata_3_T_1825 | _io_rdata_3_T_1815; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1827 = _io_rdata_3_T_1826 | _io_rdata_3_T_1816; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1828 = _io_rdata_3_T_1827 | _io_rdata_3_T_1817; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1829 = _io_rdata_3_T_1828 | _io_rdata_3_T_1818; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_3_T_1830 = _io_rdata_3_T_1829 | _io_rdata_3_T_1819; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_1853 = addr_dec_3[0] & data_0_cf_loadWaitStrict | addr_dec_3[1] & data_1_cf_loadWaitStrict |
    addr_dec_3[2] & data_2_cf_loadWaitStrict | addr_dec_3[3] & data_3_cf_loadWaitStrict | addr_dec_3[4] &
    data_4_cf_loadWaitStrict | addr_dec_3[5] & data_5_cf_loadWaitStrict | addr_dec_3[6] & data_6_cf_loadWaitStrict |
    addr_dec_3[7] & data_7_cf_loadWaitStrict | addr_dec_3[8] & data_8_cf_loadWaitStrict | addr_dec_3[9] &
    data_9_cf_loadWaitStrict | addr_dec_3[10] & data_10_cf_loadWaitStrict | addr_dec_3[11] & data_11_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_1945 = addr_dec_3[0] & data_0_cf_storeSetHit | addr_dec_3[1] & data_1_cf_storeSetHit | addr_dec_3[
    2] & data_2_cf_storeSetHit | addr_dec_3[3] & data_3_cf_storeSetHit | addr_dec_3[4] & data_4_cf_storeSetHit |
    addr_dec_3[5] & data_5_cf_storeSetHit | addr_dec_3[6] & data_6_cf_storeSetHit | addr_dec_3[7] &
    data_7_cf_storeSetHit | addr_dec_3[8] & data_8_cf_storeSetHit | addr_dec_3[9] & data_9_cf_storeSetHit | addr_dec_3[
    10] & data_10_cf_storeSetHit | addr_dec_3[11] & data_11_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_1991 = addr_dec_3[0] & data_0_cf_pred_taken | addr_dec_3[1] & data_1_cf_pred_taken | addr_dec_3[2]
     & data_2_cf_pred_taken | addr_dec_3[3] & data_3_cf_pred_taken | addr_dec_3[4] & data_4_cf_pred_taken | addr_dec_3[5
    ] & data_5_cf_pred_taken | addr_dec_3[6] & data_6_cf_pred_taken | addr_dec_3[7] & data_7_cf_pred_taken | addr_dec_3[
    8] & data_8_cf_pred_taken | addr_dec_3[9] & data_9_cf_pred_taken | addr_dec_3[10] & data_10_cf_pred_taken |
    addr_dec_3[11] & data_11_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_2014 = addr_dec_3[0] & data_0_cf_pd_isRet | addr_dec_3[1] & data_1_cf_pd_isRet | addr_dec_3[2] &
    data_2_cf_pd_isRet | addr_dec_3[3] & data_3_cf_pd_isRet | addr_dec_3[4] & data_4_cf_pd_isRet | addr_dec_3[5] &
    data_5_cf_pd_isRet | addr_dec_3[6] & data_6_cf_pd_isRet | addr_dec_3[7] & data_7_cf_pd_isRet | addr_dec_3[8] &
    data_8_cf_pd_isRet | addr_dec_3[9] & data_9_cf_pd_isRet | addr_dec_3[10] & data_10_cf_pd_isRet | addr_dec_3[11] &
    data_11_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_2037 = addr_dec_3[0] & data_0_cf_pd_isCall | addr_dec_3[1] & data_1_cf_pd_isCall | addr_dec_3[2]
     & data_2_cf_pd_isCall | addr_dec_3[3] & data_3_cf_pd_isCall | addr_dec_3[4] & data_4_cf_pd_isCall | addr_dec_3[5]
     & data_5_cf_pd_isCall | addr_dec_3[6] & data_6_cf_pd_isCall | addr_dec_3[7] & data_7_cf_pd_isCall | addr_dec_3[8]
     & data_8_cf_pd_isCall | addr_dec_3[9] & data_9_cf_pd_isCall | addr_dec_3[10] & data_10_cf_pd_isCall | addr_dec_3[11
    ] & data_11_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2038 = addr_dec_3[0] ? data_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2039 = addr_dec_3[1] ? data_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2040 = addr_dec_3[2] ? data_2_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2041 = addr_dec_3[3] ? data_3_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2042 = addr_dec_3[4] ? data_4_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2043 = addr_dec_3[5] ? data_5_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2044 = addr_dec_3[6] ? data_6_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2045 = addr_dec_3[7] ? data_7_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2046 = addr_dec_3[8] ? data_8_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2047 = addr_dec_3[9] ? data_9_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2048 = addr_dec_3[10] ? data_10_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2049 = addr_dec_3[11] ? data_11_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2050 = _io_rdata_3_T_2038 | _io_rdata_3_T_2039; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2051 = _io_rdata_3_T_2050 | _io_rdata_3_T_2040; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2052 = _io_rdata_3_T_2051 | _io_rdata_3_T_2041; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2053 = _io_rdata_3_T_2052 | _io_rdata_3_T_2042; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2054 = _io_rdata_3_T_2053 | _io_rdata_3_T_2043; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2055 = _io_rdata_3_T_2054 | _io_rdata_3_T_2044; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2056 = _io_rdata_3_T_2055 | _io_rdata_3_T_2045; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2057 = _io_rdata_3_T_2056 | _io_rdata_3_T_2046; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2058 = _io_rdata_3_T_2057 | _io_rdata_3_T_2047; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2059 = _io_rdata_3_T_2058 | _io_rdata_3_T_2048; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_3_T_2060 = _io_rdata_3_T_2059 | _io_rdata_3_T_2049; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_2083 = addr_dec_3[0] & data_0_cf_pd_isRVC | addr_dec_3[1] & data_1_cf_pd_isRVC | addr_dec_3[2] &
    data_2_cf_pd_isRVC | addr_dec_3[3] & data_3_cf_pd_isRVC | addr_dec_3[4] & data_4_cf_pd_isRVC | addr_dec_3[5] &
    data_5_cf_pd_isRVC | addr_dec_3[6] & data_6_cf_pd_isRVC | addr_dec_3[7] & data_7_cf_pd_isRVC | addr_dec_3[8] &
    data_8_cf_pd_isRVC | addr_dec_3[9] & data_9_cf_pd_isRVC | addr_dec_3[10] & data_10_cf_pd_isRVC | addr_dec_3[11] &
    data_11_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_2267 = addr_dec_3[0] & data_0_cf_trigger_backendEn_0 | addr_dec_3[1] &
    data_1_cf_trigger_backendEn_0 | addr_dec_3[2] & data_2_cf_trigger_backendEn_0 | addr_dec_3[3] &
    data_3_cf_trigger_backendEn_0 | addr_dec_3[4] & data_4_cf_trigger_backendEn_0 | addr_dec_3[5] &
    data_5_cf_trigger_backendEn_0 | addr_dec_3[6] & data_6_cf_trigger_backendEn_0 | addr_dec_3[7] &
    data_7_cf_trigger_backendEn_0 | addr_dec_3[8] & data_8_cf_trigger_backendEn_0 | addr_dec_3[9] &
    data_9_cf_trigger_backendEn_0 | addr_dec_3[10] & data_10_cf_trigger_backendEn_0 | addr_dec_3[11] &
    data_11_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_2290 = addr_dec_3[0] & data_0_cf_trigger_backendEn_1 | addr_dec_3[1] &
    data_1_cf_trigger_backendEn_1 | addr_dec_3[2] & data_2_cf_trigger_backendEn_1 | addr_dec_3[3] &
    data_3_cf_trigger_backendEn_1 | addr_dec_3[4] & data_4_cf_trigger_backendEn_1 | addr_dec_3[5] &
    data_5_cf_trigger_backendEn_1 | addr_dec_3[6] & data_6_cf_trigger_backendEn_1 | addr_dec_3[7] &
    data_7_cf_trigger_backendEn_1 | addr_dec_3[8] & data_8_cf_trigger_backendEn_1 | addr_dec_3[9] &
    data_9_cf_trigger_backendEn_1 | addr_dec_3[10] & data_10_cf_trigger_backendEn_1 | addr_dec_3[11] &
    data_11_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  read_by_0_4 = io_wen_0 & io_waddr_0 == io_raddr_4; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_4 = io_wen_1 & io_waddr_1 == io_raddr_4; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_4 = 16'h1 << io_raddr_4; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_4 = _addr_dec_T_4[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_8 = {read_by_1_4,read_by_0_4}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_4_T_48 = read_by_0_4 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_49 = read_by_1_4 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_50 = _io_rdata_4_T_48 | _io_rdata_4_T_49; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_53 = read_by_0_4 & io_wdata_0_robIdx_flag | read_by_1_4 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_54 = read_by_0_4 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_55 = read_by_1_4 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_56 = _io_rdata_4_T_54 | _io_rdata_4_T_55; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_57 = read_by_0_4 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_58 = read_by_1_4 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_59 = _io_rdata_4_T_57 | _io_rdata_4_T_58; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_60 = read_by_0_4 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_61 = read_by_1_4 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_62 = _io_rdata_4_T_60 | _io_rdata_4_T_61; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_63 = read_by_0_4 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_64 = read_by_1_4 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_65 = _io_rdata_4_T_63 | _io_rdata_4_T_64; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_129 = read_by_0_4 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_130 = read_by_1_4 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_131 = _io_rdata_4_T_129 | _io_rdata_4_T_130; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_132 = read_by_0_4 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_133 = read_by_1_4 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_134 = _io_rdata_4_T_132 | _io_rdata_4_T_133; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_149 = read_by_0_4 & io_wdata_0_ctrl_fpWen | read_by_1_4 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_152 = read_by_0_4 & io_wdata_0_ctrl_rfWen | read_by_1_4 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_153 = read_by_0_4 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_154 = read_by_1_4 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_155 = _io_rdata_4_T_153 | _io_rdata_4_T_154; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_156 = read_by_0_4 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_157 = read_by_1_4 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_158 = _io_rdata_4_T_156 | _io_rdata_4_T_157; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_171 = read_by_0_4 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_172 = read_by_1_4 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_173 = _io_rdata_4_T_171 | _io_rdata_4_T_172; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_174 = read_by_0_4 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_175 = read_by_1_4 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_176 = _io_rdata_4_T_174 | _io_rdata_4_T_175; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_177 = read_by_0_4 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_178 = read_by_1_4 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_179 = _io_rdata_4_T_177 | _io_rdata_4_T_178; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_183 = read_by_0_4 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_184 = read_by_1_4 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_185 = _io_rdata_4_T_183 | _io_rdata_4_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_186 = read_by_0_4 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_187 = read_by_1_4 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_188 = _io_rdata_4_T_186 | _io_rdata_4_T_187; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_704 = addr_dec_4[0] ? data_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_705 = addr_dec_4[1] ? data_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_706 = addr_dec_4[2] ? data_2_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_707 = addr_dec_4[3] ? data_3_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_708 = addr_dec_4[4] ? data_4_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_709 = addr_dec_4[5] ? data_5_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_710 = addr_dec_4[6] ? data_6_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_711 = addr_dec_4[7] ? data_7_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_712 = addr_dec_4[8] ? data_8_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_713 = addr_dec_4[9] ? data_9_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_714 = addr_dec_4[10] ? data_10_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_715 = addr_dec_4[11] ? data_11_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_716 = _io_rdata_4_T_704 | _io_rdata_4_T_705; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_717 = _io_rdata_4_T_716 | _io_rdata_4_T_706; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_718 = _io_rdata_4_T_717 | _io_rdata_4_T_707; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_719 = _io_rdata_4_T_718 | _io_rdata_4_T_708; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_720 = _io_rdata_4_T_719 | _io_rdata_4_T_709; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_721 = _io_rdata_4_T_720 | _io_rdata_4_T_710; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_722 = _io_rdata_4_T_721 | _io_rdata_4_T_711; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_723 = _io_rdata_4_T_722 | _io_rdata_4_T_712; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_724 = _io_rdata_4_T_723 | _io_rdata_4_T_713; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_725 = _io_rdata_4_T_724 | _io_rdata_4_T_714; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_4_T_726 = _io_rdata_4_T_725 | _io_rdata_4_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_749 = addr_dec_4[0] & data_0_robIdx_flag | addr_dec_4[1] & data_1_robIdx_flag | addr_dec_4[2] &
    data_2_robIdx_flag | addr_dec_4[3] & data_3_robIdx_flag | addr_dec_4[4] & data_4_robIdx_flag | addr_dec_4[5] &
    data_5_robIdx_flag | addr_dec_4[6] & data_6_robIdx_flag | addr_dec_4[7] & data_7_robIdx_flag | addr_dec_4[8] &
    data_8_robIdx_flag | addr_dec_4[9] & data_9_robIdx_flag | addr_dec_4[10] & data_10_robIdx_flag | addr_dec_4[11] &
    data_11_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_750 = addr_dec_4[0] ? data_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_751 = addr_dec_4[1] ? data_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_752 = addr_dec_4[2] ? data_2_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_753 = addr_dec_4[3] ? data_3_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_754 = addr_dec_4[4] ? data_4_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_755 = addr_dec_4[5] ? data_5_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_756 = addr_dec_4[6] ? data_6_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_757 = addr_dec_4[7] ? data_7_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_758 = addr_dec_4[8] ? data_8_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_759 = addr_dec_4[9] ? data_9_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_760 = addr_dec_4[10] ? data_10_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_761 = addr_dec_4[11] ? data_11_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_762 = _io_rdata_4_T_750 | _io_rdata_4_T_751; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_763 = _io_rdata_4_T_762 | _io_rdata_4_T_752; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_764 = _io_rdata_4_T_763 | _io_rdata_4_T_753; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_765 = _io_rdata_4_T_764 | _io_rdata_4_T_754; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_766 = _io_rdata_4_T_765 | _io_rdata_4_T_755; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_767 = _io_rdata_4_T_766 | _io_rdata_4_T_756; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_768 = _io_rdata_4_T_767 | _io_rdata_4_T_757; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_769 = _io_rdata_4_T_768 | _io_rdata_4_T_758; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_770 = _io_rdata_4_T_769 | _io_rdata_4_T_759; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_771 = _io_rdata_4_T_770 | _io_rdata_4_T_760; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_772 = _io_rdata_4_T_771 | _io_rdata_4_T_761; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_773 = addr_dec_4[0] ? data_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_774 = addr_dec_4[1] ? data_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_775 = addr_dec_4[2] ? data_2_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_776 = addr_dec_4[3] ? data_3_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_777 = addr_dec_4[4] ? data_4_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_778 = addr_dec_4[5] ? data_5_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_779 = addr_dec_4[6] ? data_6_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_780 = addr_dec_4[7] ? data_7_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_781 = addr_dec_4[8] ? data_8_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_782 = addr_dec_4[9] ? data_9_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_783 = addr_dec_4[10] ? data_10_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_784 = addr_dec_4[11] ? data_11_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_785 = _io_rdata_4_T_773 | _io_rdata_4_T_774; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_786 = _io_rdata_4_T_785 | _io_rdata_4_T_775; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_787 = _io_rdata_4_T_786 | _io_rdata_4_T_776; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_788 = _io_rdata_4_T_787 | _io_rdata_4_T_777; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_789 = _io_rdata_4_T_788 | _io_rdata_4_T_778; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_790 = _io_rdata_4_T_789 | _io_rdata_4_T_779; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_791 = _io_rdata_4_T_790 | _io_rdata_4_T_780; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_792 = _io_rdata_4_T_791 | _io_rdata_4_T_781; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_793 = _io_rdata_4_T_792 | _io_rdata_4_T_782; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_794 = _io_rdata_4_T_793 | _io_rdata_4_T_783; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_795 = _io_rdata_4_T_794 | _io_rdata_4_T_784; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_796 = addr_dec_4[0] ? data_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_797 = addr_dec_4[1] ? data_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_798 = addr_dec_4[2] ? data_2_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_799 = addr_dec_4[3] ? data_3_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_800 = addr_dec_4[4] ? data_4_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_801 = addr_dec_4[5] ? data_5_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_802 = addr_dec_4[6] ? data_6_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_803 = addr_dec_4[7] ? data_7_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_804 = addr_dec_4[8] ? data_8_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_805 = addr_dec_4[9] ? data_9_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_806 = addr_dec_4[10] ? data_10_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_807 = addr_dec_4[11] ? data_11_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_808 = _io_rdata_4_T_796 | _io_rdata_4_T_797; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_809 = _io_rdata_4_T_808 | _io_rdata_4_T_798; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_810 = _io_rdata_4_T_809 | _io_rdata_4_T_799; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_811 = _io_rdata_4_T_810 | _io_rdata_4_T_800; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_812 = _io_rdata_4_T_811 | _io_rdata_4_T_801; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_813 = _io_rdata_4_T_812 | _io_rdata_4_T_802; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_814 = _io_rdata_4_T_813 | _io_rdata_4_T_803; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_815 = _io_rdata_4_T_814 | _io_rdata_4_T_804; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_816 = _io_rdata_4_T_815 | _io_rdata_4_T_805; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_817 = _io_rdata_4_T_816 | _io_rdata_4_T_806; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_818 = _io_rdata_4_T_817 | _io_rdata_4_T_807; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_819 = addr_dec_4[0] ? data_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_820 = addr_dec_4[1] ? data_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_821 = addr_dec_4[2] ? data_2_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_822 = addr_dec_4[3] ? data_3_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_823 = addr_dec_4[4] ? data_4_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_824 = addr_dec_4[5] ? data_5_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_825 = addr_dec_4[6] ? data_6_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_826 = addr_dec_4[7] ? data_7_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_827 = addr_dec_4[8] ? data_8_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_828 = addr_dec_4[9] ? data_9_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_829 = addr_dec_4[10] ? data_10_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_830 = addr_dec_4[11] ? data_11_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_831 = _io_rdata_4_T_819 | _io_rdata_4_T_820; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_832 = _io_rdata_4_T_831 | _io_rdata_4_T_821; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_833 = _io_rdata_4_T_832 | _io_rdata_4_T_822; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_834 = _io_rdata_4_T_833 | _io_rdata_4_T_823; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_835 = _io_rdata_4_T_834 | _io_rdata_4_T_824; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_836 = _io_rdata_4_T_835 | _io_rdata_4_T_825; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_837 = _io_rdata_4_T_836 | _io_rdata_4_T_826; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_838 = _io_rdata_4_T_837 | _io_rdata_4_T_827; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_839 = _io_rdata_4_T_838 | _io_rdata_4_T_828; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_840 = _io_rdata_4_T_839 | _io_rdata_4_T_829; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_4_T_841 = _io_rdata_4_T_840 | _io_rdata_4_T_830; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1325 = addr_dec_4[0] ? data_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1326 = addr_dec_4[1] ? data_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1327 = addr_dec_4[2] ? data_2_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1328 = addr_dec_4[3] ? data_3_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1329 = addr_dec_4[4] ? data_4_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1330 = addr_dec_4[5] ? data_5_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1331 = addr_dec_4[6] ? data_6_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1332 = addr_dec_4[7] ? data_7_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1333 = addr_dec_4[8] ? data_8_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1334 = addr_dec_4[9] ? data_9_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1335 = addr_dec_4[10] ? data_10_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1336 = addr_dec_4[11] ? data_11_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1337 = _io_rdata_4_T_1325 | _io_rdata_4_T_1326; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1338 = _io_rdata_4_T_1337 | _io_rdata_4_T_1327; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1339 = _io_rdata_4_T_1338 | _io_rdata_4_T_1328; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1340 = _io_rdata_4_T_1339 | _io_rdata_4_T_1329; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1341 = _io_rdata_4_T_1340 | _io_rdata_4_T_1330; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1342 = _io_rdata_4_T_1341 | _io_rdata_4_T_1331; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1343 = _io_rdata_4_T_1342 | _io_rdata_4_T_1332; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1344 = _io_rdata_4_T_1343 | _io_rdata_4_T_1333; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1345 = _io_rdata_4_T_1344 | _io_rdata_4_T_1334; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1346 = _io_rdata_4_T_1345 | _io_rdata_4_T_1335; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_4_T_1347 = _io_rdata_4_T_1346 | _io_rdata_4_T_1336; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1348 = addr_dec_4[0] ? data_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1349 = addr_dec_4[1] ? data_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1350 = addr_dec_4[2] ? data_2_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1351 = addr_dec_4[3] ? data_3_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1352 = addr_dec_4[4] ? data_4_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1353 = addr_dec_4[5] ? data_5_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1354 = addr_dec_4[6] ? data_6_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1355 = addr_dec_4[7] ? data_7_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1356 = addr_dec_4[8] ? data_8_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1357 = addr_dec_4[9] ? data_9_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1358 = addr_dec_4[10] ? data_10_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1359 = addr_dec_4[11] ? data_11_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1360 = _io_rdata_4_T_1348 | _io_rdata_4_T_1349; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1361 = _io_rdata_4_T_1360 | _io_rdata_4_T_1350; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1362 = _io_rdata_4_T_1361 | _io_rdata_4_T_1351; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1363 = _io_rdata_4_T_1362 | _io_rdata_4_T_1352; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1364 = _io_rdata_4_T_1363 | _io_rdata_4_T_1353; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1365 = _io_rdata_4_T_1364 | _io_rdata_4_T_1354; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1366 = _io_rdata_4_T_1365 | _io_rdata_4_T_1355; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1367 = _io_rdata_4_T_1366 | _io_rdata_4_T_1356; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1368 = _io_rdata_4_T_1367 | _io_rdata_4_T_1357; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1369 = _io_rdata_4_T_1368 | _io_rdata_4_T_1358; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1370 = _io_rdata_4_T_1369 | _io_rdata_4_T_1359; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_1485 = addr_dec_4[0] & data_0_ctrl_fpWen | addr_dec_4[1] & data_1_ctrl_fpWen | addr_dec_4[2] &
    data_2_ctrl_fpWen | addr_dec_4[3] & data_3_ctrl_fpWen | addr_dec_4[4] & data_4_ctrl_fpWen | addr_dec_4[5] &
    data_5_ctrl_fpWen | addr_dec_4[6] & data_6_ctrl_fpWen | addr_dec_4[7] & data_7_ctrl_fpWen | addr_dec_4[8] &
    data_8_ctrl_fpWen | addr_dec_4[9] & data_9_ctrl_fpWen | addr_dec_4[10] & data_10_ctrl_fpWen | addr_dec_4[11] &
    data_11_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_4_T_1508 = addr_dec_4[0] & data_0_ctrl_rfWen | addr_dec_4[1] & data_1_ctrl_rfWen | addr_dec_4[2] &
    data_2_ctrl_rfWen | addr_dec_4[3] & data_3_ctrl_rfWen | addr_dec_4[4] & data_4_ctrl_rfWen | addr_dec_4[5] &
    data_5_ctrl_rfWen | addr_dec_4[6] & data_6_ctrl_rfWen | addr_dec_4[7] & data_7_ctrl_rfWen | addr_dec_4[8] &
    data_8_ctrl_rfWen | addr_dec_4[9] & data_9_ctrl_rfWen | addr_dec_4[10] & data_10_ctrl_rfWen | addr_dec_4[11] &
    data_11_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1509 = addr_dec_4[0] ? data_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1510 = addr_dec_4[1] ? data_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1511 = addr_dec_4[2] ? data_2_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1512 = addr_dec_4[3] ? data_3_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1513 = addr_dec_4[4] ? data_4_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1514 = addr_dec_4[5] ? data_5_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1515 = addr_dec_4[6] ? data_6_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1516 = addr_dec_4[7] ? data_7_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1517 = addr_dec_4[8] ? data_8_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1518 = addr_dec_4[9] ? data_9_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1519 = addr_dec_4[10] ? data_10_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1520 = addr_dec_4[11] ? data_11_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1521 = _io_rdata_4_T_1509 | _io_rdata_4_T_1510; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1522 = _io_rdata_4_T_1521 | _io_rdata_4_T_1511; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1523 = _io_rdata_4_T_1522 | _io_rdata_4_T_1512; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1524 = _io_rdata_4_T_1523 | _io_rdata_4_T_1513; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1525 = _io_rdata_4_T_1524 | _io_rdata_4_T_1514; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1526 = _io_rdata_4_T_1525 | _io_rdata_4_T_1515; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1527 = _io_rdata_4_T_1526 | _io_rdata_4_T_1516; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1528 = _io_rdata_4_T_1527 | _io_rdata_4_T_1517; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1529 = _io_rdata_4_T_1528 | _io_rdata_4_T_1518; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1530 = _io_rdata_4_T_1529 | _io_rdata_4_T_1519; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_4_T_1531 = _io_rdata_4_T_1530 | _io_rdata_4_T_1520; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1532 = addr_dec_4[0] ? data_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1533 = addr_dec_4[1] ? data_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1534 = addr_dec_4[2] ? data_2_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1535 = addr_dec_4[3] ? data_3_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1536 = addr_dec_4[4] ? data_4_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1537 = addr_dec_4[5] ? data_5_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1538 = addr_dec_4[6] ? data_6_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1539 = addr_dec_4[7] ? data_7_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1540 = addr_dec_4[8] ? data_8_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1541 = addr_dec_4[9] ? data_9_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1542 = addr_dec_4[10] ? data_10_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1543 = addr_dec_4[11] ? data_11_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1544 = _io_rdata_4_T_1532 | _io_rdata_4_T_1533; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1545 = _io_rdata_4_T_1544 | _io_rdata_4_T_1534; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1546 = _io_rdata_4_T_1545 | _io_rdata_4_T_1535; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1547 = _io_rdata_4_T_1546 | _io_rdata_4_T_1536; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1548 = _io_rdata_4_T_1547 | _io_rdata_4_T_1537; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1549 = _io_rdata_4_T_1548 | _io_rdata_4_T_1538; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1550 = _io_rdata_4_T_1549 | _io_rdata_4_T_1539; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1551 = _io_rdata_4_T_1550 | _io_rdata_4_T_1540; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1552 = _io_rdata_4_T_1551 | _io_rdata_4_T_1541; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1553 = _io_rdata_4_T_1552 | _io_rdata_4_T_1542; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_4_T_1554 = _io_rdata_4_T_1553 | _io_rdata_4_T_1543; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1647 = addr_dec_4[0] ? data_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1648 = addr_dec_4[1] ? data_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1649 = addr_dec_4[2] ? data_2_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1650 = addr_dec_4[3] ? data_3_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1651 = addr_dec_4[4] ? data_4_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1652 = addr_dec_4[5] ? data_5_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1653 = addr_dec_4[6] ? data_6_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1654 = addr_dec_4[7] ? data_7_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1655 = addr_dec_4[8] ? data_8_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1656 = addr_dec_4[9] ? data_9_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1657 = addr_dec_4[10] ? data_10_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1658 = addr_dec_4[11] ? data_11_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1659 = _io_rdata_4_T_1647 | _io_rdata_4_T_1648; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1660 = _io_rdata_4_T_1659 | _io_rdata_4_T_1649; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1661 = _io_rdata_4_T_1660 | _io_rdata_4_T_1650; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1662 = _io_rdata_4_T_1661 | _io_rdata_4_T_1651; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1663 = _io_rdata_4_T_1662 | _io_rdata_4_T_1652; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1664 = _io_rdata_4_T_1663 | _io_rdata_4_T_1653; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1665 = _io_rdata_4_T_1664 | _io_rdata_4_T_1654; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1666 = _io_rdata_4_T_1665 | _io_rdata_4_T_1655; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1667 = _io_rdata_4_T_1666 | _io_rdata_4_T_1656; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1668 = _io_rdata_4_T_1667 | _io_rdata_4_T_1657; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1669 = _io_rdata_4_T_1668 | _io_rdata_4_T_1658; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1670 = addr_dec_4[0] ? data_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1671 = addr_dec_4[1] ? data_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1672 = addr_dec_4[2] ? data_2_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1673 = addr_dec_4[3] ? data_3_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1674 = addr_dec_4[4] ? data_4_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1675 = addr_dec_4[5] ? data_5_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1676 = addr_dec_4[6] ? data_6_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1677 = addr_dec_4[7] ? data_7_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1678 = addr_dec_4[8] ? data_8_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1679 = addr_dec_4[9] ? data_9_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1680 = addr_dec_4[10] ? data_10_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1681 = addr_dec_4[11] ? data_11_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1682 = _io_rdata_4_T_1670 | _io_rdata_4_T_1671; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1683 = _io_rdata_4_T_1682 | _io_rdata_4_T_1672; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1684 = _io_rdata_4_T_1683 | _io_rdata_4_T_1673; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1685 = _io_rdata_4_T_1684 | _io_rdata_4_T_1674; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1686 = _io_rdata_4_T_1685 | _io_rdata_4_T_1675; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1687 = _io_rdata_4_T_1686 | _io_rdata_4_T_1676; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1688 = _io_rdata_4_T_1687 | _io_rdata_4_T_1677; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1689 = _io_rdata_4_T_1688 | _io_rdata_4_T_1678; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1690 = _io_rdata_4_T_1689 | _io_rdata_4_T_1679; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1691 = _io_rdata_4_T_1690 | _io_rdata_4_T_1680; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1692 = _io_rdata_4_T_1691 | _io_rdata_4_T_1681; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1693 = addr_dec_4[0] ? data_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1694 = addr_dec_4[1] ? data_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1695 = addr_dec_4[2] ? data_2_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1696 = addr_dec_4[3] ? data_3_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1697 = addr_dec_4[4] ? data_4_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1698 = addr_dec_4[5] ? data_5_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1699 = addr_dec_4[6] ? data_6_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1700 = addr_dec_4[7] ? data_7_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1701 = addr_dec_4[8] ? data_8_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1702 = addr_dec_4[9] ? data_9_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1703 = addr_dec_4[10] ? data_10_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1704 = addr_dec_4[11] ? data_11_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1705 = _io_rdata_4_T_1693 | _io_rdata_4_T_1694; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1706 = _io_rdata_4_T_1705 | _io_rdata_4_T_1695; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1707 = _io_rdata_4_T_1706 | _io_rdata_4_T_1696; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1708 = _io_rdata_4_T_1707 | _io_rdata_4_T_1697; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1709 = _io_rdata_4_T_1708 | _io_rdata_4_T_1698; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1710 = _io_rdata_4_T_1709 | _io_rdata_4_T_1699; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1711 = _io_rdata_4_T_1710 | _io_rdata_4_T_1700; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1712 = _io_rdata_4_T_1711 | _io_rdata_4_T_1701; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1713 = _io_rdata_4_T_1712 | _io_rdata_4_T_1702; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1714 = _io_rdata_4_T_1713 | _io_rdata_4_T_1703; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_4_T_1715 = _io_rdata_4_T_1714 | _io_rdata_4_T_1704; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1739 = addr_dec_4[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1740 = addr_dec_4[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1741 = addr_dec_4[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1742 = addr_dec_4[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1743 = addr_dec_4[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1744 = addr_dec_4[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1745 = addr_dec_4[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1746 = addr_dec_4[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1747 = addr_dec_4[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1748 = addr_dec_4[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1749 = addr_dec_4[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1750 = addr_dec_4[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1751 = _io_rdata_4_T_1739 | _io_rdata_4_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1752 = _io_rdata_4_T_1751 | _io_rdata_4_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1753 = _io_rdata_4_T_1752 | _io_rdata_4_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1754 = _io_rdata_4_T_1753 | _io_rdata_4_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1755 = _io_rdata_4_T_1754 | _io_rdata_4_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1756 = _io_rdata_4_T_1755 | _io_rdata_4_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1757 = _io_rdata_4_T_1756 | _io_rdata_4_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1758 = _io_rdata_4_T_1757 | _io_rdata_4_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1759 = _io_rdata_4_T_1758 | _io_rdata_4_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1760 = _io_rdata_4_T_1759 | _io_rdata_4_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1761 = _io_rdata_4_T_1760 | _io_rdata_4_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1762 = addr_dec_4[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1763 = addr_dec_4[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1764 = addr_dec_4[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1765 = addr_dec_4[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1766 = addr_dec_4[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1767 = addr_dec_4[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1768 = addr_dec_4[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1769 = addr_dec_4[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1770 = addr_dec_4[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1771 = addr_dec_4[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1772 = addr_dec_4[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1773 = addr_dec_4[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1774 = _io_rdata_4_T_1762 | _io_rdata_4_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1775 = _io_rdata_4_T_1774 | _io_rdata_4_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1776 = _io_rdata_4_T_1775 | _io_rdata_4_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1777 = _io_rdata_4_T_1776 | _io_rdata_4_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1778 = _io_rdata_4_T_1777 | _io_rdata_4_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1779 = _io_rdata_4_T_1778 | _io_rdata_4_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1780 = _io_rdata_4_T_1779 | _io_rdata_4_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1781 = _io_rdata_4_T_1780 | _io_rdata_4_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1782 = _io_rdata_4_T_1781 | _io_rdata_4_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1783 = _io_rdata_4_T_1782 | _io_rdata_4_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_4_T_1784 = _io_rdata_4_T_1783 | _io_rdata_4_T_1773; // @[Mux.scala 27:73]
  wire  read_by_0_5 = io_wen_0 & io_waddr_0 == io_raddr_5; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_5 = io_wen_1 & io_waddr_1 == io_raddr_5; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_5 = 16'h1 << io_raddr_5; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_5 = _addr_dec_T_5[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_10 = {read_by_1_5,read_by_0_5}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_5_T_48 = read_by_0_5 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_49 = read_by_1_5 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_50 = _io_rdata_5_T_48 | _io_rdata_5_T_49; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_53 = read_by_0_5 & io_wdata_0_robIdx_flag | read_by_1_5 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_54 = read_by_0_5 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_55 = read_by_1_5 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_56 = _io_rdata_5_T_54 | _io_rdata_5_T_55; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_57 = read_by_0_5 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_58 = read_by_1_5 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_59 = _io_rdata_5_T_57 | _io_rdata_5_T_58; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_60 = read_by_0_5 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_61 = read_by_1_5 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_62 = _io_rdata_5_T_60 | _io_rdata_5_T_61; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_63 = read_by_0_5 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_64 = read_by_1_5 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_65 = _io_rdata_5_T_63 | _io_rdata_5_T_64; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_129 = read_by_0_5 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_130 = read_by_1_5 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_131 = _io_rdata_5_T_129 | _io_rdata_5_T_130; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_132 = read_by_0_5 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_133 = read_by_1_5 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_134 = _io_rdata_5_T_132 | _io_rdata_5_T_133; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_149 = read_by_0_5 & io_wdata_0_ctrl_fpWen | read_by_1_5 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_152 = read_by_0_5 & io_wdata_0_ctrl_rfWen | read_by_1_5 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_153 = read_by_0_5 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_154 = read_by_1_5 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_155 = _io_rdata_5_T_153 | _io_rdata_5_T_154; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_156 = read_by_0_5 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_157 = read_by_1_5 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_158 = _io_rdata_5_T_156 | _io_rdata_5_T_157; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_171 = read_by_0_5 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_172 = read_by_1_5 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_173 = _io_rdata_5_T_171 | _io_rdata_5_T_172; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_174 = read_by_0_5 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_175 = read_by_1_5 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_176 = _io_rdata_5_T_174 | _io_rdata_5_T_175; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_177 = read_by_0_5 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_178 = read_by_1_5 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_179 = _io_rdata_5_T_177 | _io_rdata_5_T_178; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_183 = read_by_0_5 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_184 = read_by_1_5 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_185 = _io_rdata_5_T_183 | _io_rdata_5_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_186 = read_by_0_5 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_187 = read_by_1_5 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_188 = _io_rdata_5_T_186 | _io_rdata_5_T_187; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_704 = addr_dec_5[0] ? data_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_705 = addr_dec_5[1] ? data_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_706 = addr_dec_5[2] ? data_2_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_707 = addr_dec_5[3] ? data_3_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_708 = addr_dec_5[4] ? data_4_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_709 = addr_dec_5[5] ? data_5_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_710 = addr_dec_5[6] ? data_6_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_711 = addr_dec_5[7] ? data_7_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_712 = addr_dec_5[8] ? data_8_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_713 = addr_dec_5[9] ? data_9_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_714 = addr_dec_5[10] ? data_10_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_715 = addr_dec_5[11] ? data_11_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_716 = _io_rdata_5_T_704 | _io_rdata_5_T_705; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_717 = _io_rdata_5_T_716 | _io_rdata_5_T_706; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_718 = _io_rdata_5_T_717 | _io_rdata_5_T_707; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_719 = _io_rdata_5_T_718 | _io_rdata_5_T_708; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_720 = _io_rdata_5_T_719 | _io_rdata_5_T_709; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_721 = _io_rdata_5_T_720 | _io_rdata_5_T_710; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_722 = _io_rdata_5_T_721 | _io_rdata_5_T_711; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_723 = _io_rdata_5_T_722 | _io_rdata_5_T_712; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_724 = _io_rdata_5_T_723 | _io_rdata_5_T_713; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_725 = _io_rdata_5_T_724 | _io_rdata_5_T_714; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_5_T_726 = _io_rdata_5_T_725 | _io_rdata_5_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_749 = addr_dec_5[0] & data_0_robIdx_flag | addr_dec_5[1] & data_1_robIdx_flag | addr_dec_5[2] &
    data_2_robIdx_flag | addr_dec_5[3] & data_3_robIdx_flag | addr_dec_5[4] & data_4_robIdx_flag | addr_dec_5[5] &
    data_5_robIdx_flag | addr_dec_5[6] & data_6_robIdx_flag | addr_dec_5[7] & data_7_robIdx_flag | addr_dec_5[8] &
    data_8_robIdx_flag | addr_dec_5[9] & data_9_robIdx_flag | addr_dec_5[10] & data_10_robIdx_flag | addr_dec_5[11] &
    data_11_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_750 = addr_dec_5[0] ? data_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_751 = addr_dec_5[1] ? data_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_752 = addr_dec_5[2] ? data_2_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_753 = addr_dec_5[3] ? data_3_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_754 = addr_dec_5[4] ? data_4_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_755 = addr_dec_5[5] ? data_5_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_756 = addr_dec_5[6] ? data_6_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_757 = addr_dec_5[7] ? data_7_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_758 = addr_dec_5[8] ? data_8_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_759 = addr_dec_5[9] ? data_9_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_760 = addr_dec_5[10] ? data_10_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_761 = addr_dec_5[11] ? data_11_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_762 = _io_rdata_5_T_750 | _io_rdata_5_T_751; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_763 = _io_rdata_5_T_762 | _io_rdata_5_T_752; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_764 = _io_rdata_5_T_763 | _io_rdata_5_T_753; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_765 = _io_rdata_5_T_764 | _io_rdata_5_T_754; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_766 = _io_rdata_5_T_765 | _io_rdata_5_T_755; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_767 = _io_rdata_5_T_766 | _io_rdata_5_T_756; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_768 = _io_rdata_5_T_767 | _io_rdata_5_T_757; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_769 = _io_rdata_5_T_768 | _io_rdata_5_T_758; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_770 = _io_rdata_5_T_769 | _io_rdata_5_T_759; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_771 = _io_rdata_5_T_770 | _io_rdata_5_T_760; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_772 = _io_rdata_5_T_771 | _io_rdata_5_T_761; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_773 = addr_dec_5[0] ? data_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_774 = addr_dec_5[1] ? data_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_775 = addr_dec_5[2] ? data_2_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_776 = addr_dec_5[3] ? data_3_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_777 = addr_dec_5[4] ? data_4_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_778 = addr_dec_5[5] ? data_5_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_779 = addr_dec_5[6] ? data_6_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_780 = addr_dec_5[7] ? data_7_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_781 = addr_dec_5[8] ? data_8_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_782 = addr_dec_5[9] ? data_9_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_783 = addr_dec_5[10] ? data_10_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_784 = addr_dec_5[11] ? data_11_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_785 = _io_rdata_5_T_773 | _io_rdata_5_T_774; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_786 = _io_rdata_5_T_785 | _io_rdata_5_T_775; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_787 = _io_rdata_5_T_786 | _io_rdata_5_T_776; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_788 = _io_rdata_5_T_787 | _io_rdata_5_T_777; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_789 = _io_rdata_5_T_788 | _io_rdata_5_T_778; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_790 = _io_rdata_5_T_789 | _io_rdata_5_T_779; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_791 = _io_rdata_5_T_790 | _io_rdata_5_T_780; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_792 = _io_rdata_5_T_791 | _io_rdata_5_T_781; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_793 = _io_rdata_5_T_792 | _io_rdata_5_T_782; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_794 = _io_rdata_5_T_793 | _io_rdata_5_T_783; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_795 = _io_rdata_5_T_794 | _io_rdata_5_T_784; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_796 = addr_dec_5[0] ? data_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_797 = addr_dec_5[1] ? data_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_798 = addr_dec_5[2] ? data_2_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_799 = addr_dec_5[3] ? data_3_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_800 = addr_dec_5[4] ? data_4_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_801 = addr_dec_5[5] ? data_5_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_802 = addr_dec_5[6] ? data_6_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_803 = addr_dec_5[7] ? data_7_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_804 = addr_dec_5[8] ? data_8_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_805 = addr_dec_5[9] ? data_9_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_806 = addr_dec_5[10] ? data_10_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_807 = addr_dec_5[11] ? data_11_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_808 = _io_rdata_5_T_796 | _io_rdata_5_T_797; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_809 = _io_rdata_5_T_808 | _io_rdata_5_T_798; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_810 = _io_rdata_5_T_809 | _io_rdata_5_T_799; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_811 = _io_rdata_5_T_810 | _io_rdata_5_T_800; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_812 = _io_rdata_5_T_811 | _io_rdata_5_T_801; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_813 = _io_rdata_5_T_812 | _io_rdata_5_T_802; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_814 = _io_rdata_5_T_813 | _io_rdata_5_T_803; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_815 = _io_rdata_5_T_814 | _io_rdata_5_T_804; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_816 = _io_rdata_5_T_815 | _io_rdata_5_T_805; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_817 = _io_rdata_5_T_816 | _io_rdata_5_T_806; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_818 = _io_rdata_5_T_817 | _io_rdata_5_T_807; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_819 = addr_dec_5[0] ? data_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_820 = addr_dec_5[1] ? data_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_821 = addr_dec_5[2] ? data_2_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_822 = addr_dec_5[3] ? data_3_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_823 = addr_dec_5[4] ? data_4_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_824 = addr_dec_5[5] ? data_5_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_825 = addr_dec_5[6] ? data_6_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_826 = addr_dec_5[7] ? data_7_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_827 = addr_dec_5[8] ? data_8_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_828 = addr_dec_5[9] ? data_9_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_829 = addr_dec_5[10] ? data_10_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_830 = addr_dec_5[11] ? data_11_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_831 = _io_rdata_5_T_819 | _io_rdata_5_T_820; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_832 = _io_rdata_5_T_831 | _io_rdata_5_T_821; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_833 = _io_rdata_5_T_832 | _io_rdata_5_T_822; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_834 = _io_rdata_5_T_833 | _io_rdata_5_T_823; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_835 = _io_rdata_5_T_834 | _io_rdata_5_T_824; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_836 = _io_rdata_5_T_835 | _io_rdata_5_T_825; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_837 = _io_rdata_5_T_836 | _io_rdata_5_T_826; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_838 = _io_rdata_5_T_837 | _io_rdata_5_T_827; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_839 = _io_rdata_5_T_838 | _io_rdata_5_T_828; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_840 = _io_rdata_5_T_839 | _io_rdata_5_T_829; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_5_T_841 = _io_rdata_5_T_840 | _io_rdata_5_T_830; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1325 = addr_dec_5[0] ? data_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1326 = addr_dec_5[1] ? data_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1327 = addr_dec_5[2] ? data_2_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1328 = addr_dec_5[3] ? data_3_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1329 = addr_dec_5[4] ? data_4_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1330 = addr_dec_5[5] ? data_5_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1331 = addr_dec_5[6] ? data_6_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1332 = addr_dec_5[7] ? data_7_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1333 = addr_dec_5[8] ? data_8_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1334 = addr_dec_5[9] ? data_9_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1335 = addr_dec_5[10] ? data_10_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1336 = addr_dec_5[11] ? data_11_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1337 = _io_rdata_5_T_1325 | _io_rdata_5_T_1326; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1338 = _io_rdata_5_T_1337 | _io_rdata_5_T_1327; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1339 = _io_rdata_5_T_1338 | _io_rdata_5_T_1328; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1340 = _io_rdata_5_T_1339 | _io_rdata_5_T_1329; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1341 = _io_rdata_5_T_1340 | _io_rdata_5_T_1330; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1342 = _io_rdata_5_T_1341 | _io_rdata_5_T_1331; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1343 = _io_rdata_5_T_1342 | _io_rdata_5_T_1332; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1344 = _io_rdata_5_T_1343 | _io_rdata_5_T_1333; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1345 = _io_rdata_5_T_1344 | _io_rdata_5_T_1334; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1346 = _io_rdata_5_T_1345 | _io_rdata_5_T_1335; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_5_T_1347 = _io_rdata_5_T_1346 | _io_rdata_5_T_1336; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1348 = addr_dec_5[0] ? data_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1349 = addr_dec_5[1] ? data_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1350 = addr_dec_5[2] ? data_2_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1351 = addr_dec_5[3] ? data_3_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1352 = addr_dec_5[4] ? data_4_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1353 = addr_dec_5[5] ? data_5_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1354 = addr_dec_5[6] ? data_6_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1355 = addr_dec_5[7] ? data_7_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1356 = addr_dec_5[8] ? data_8_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1357 = addr_dec_5[9] ? data_9_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1358 = addr_dec_5[10] ? data_10_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1359 = addr_dec_5[11] ? data_11_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1360 = _io_rdata_5_T_1348 | _io_rdata_5_T_1349; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1361 = _io_rdata_5_T_1360 | _io_rdata_5_T_1350; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1362 = _io_rdata_5_T_1361 | _io_rdata_5_T_1351; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1363 = _io_rdata_5_T_1362 | _io_rdata_5_T_1352; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1364 = _io_rdata_5_T_1363 | _io_rdata_5_T_1353; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1365 = _io_rdata_5_T_1364 | _io_rdata_5_T_1354; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1366 = _io_rdata_5_T_1365 | _io_rdata_5_T_1355; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1367 = _io_rdata_5_T_1366 | _io_rdata_5_T_1356; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1368 = _io_rdata_5_T_1367 | _io_rdata_5_T_1357; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1369 = _io_rdata_5_T_1368 | _io_rdata_5_T_1358; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1370 = _io_rdata_5_T_1369 | _io_rdata_5_T_1359; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_1485 = addr_dec_5[0] & data_0_ctrl_fpWen | addr_dec_5[1] & data_1_ctrl_fpWen | addr_dec_5[2] &
    data_2_ctrl_fpWen | addr_dec_5[3] & data_3_ctrl_fpWen | addr_dec_5[4] & data_4_ctrl_fpWen | addr_dec_5[5] &
    data_5_ctrl_fpWen | addr_dec_5[6] & data_6_ctrl_fpWen | addr_dec_5[7] & data_7_ctrl_fpWen | addr_dec_5[8] &
    data_8_ctrl_fpWen | addr_dec_5[9] & data_9_ctrl_fpWen | addr_dec_5[10] & data_10_ctrl_fpWen | addr_dec_5[11] &
    data_11_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_5_T_1508 = addr_dec_5[0] & data_0_ctrl_rfWen | addr_dec_5[1] & data_1_ctrl_rfWen | addr_dec_5[2] &
    data_2_ctrl_rfWen | addr_dec_5[3] & data_3_ctrl_rfWen | addr_dec_5[4] & data_4_ctrl_rfWen | addr_dec_5[5] &
    data_5_ctrl_rfWen | addr_dec_5[6] & data_6_ctrl_rfWen | addr_dec_5[7] & data_7_ctrl_rfWen | addr_dec_5[8] &
    data_8_ctrl_rfWen | addr_dec_5[9] & data_9_ctrl_rfWen | addr_dec_5[10] & data_10_ctrl_rfWen | addr_dec_5[11] &
    data_11_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1509 = addr_dec_5[0] ? data_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1510 = addr_dec_5[1] ? data_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1511 = addr_dec_5[2] ? data_2_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1512 = addr_dec_5[3] ? data_3_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1513 = addr_dec_5[4] ? data_4_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1514 = addr_dec_5[5] ? data_5_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1515 = addr_dec_5[6] ? data_6_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1516 = addr_dec_5[7] ? data_7_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1517 = addr_dec_5[8] ? data_8_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1518 = addr_dec_5[9] ? data_9_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1519 = addr_dec_5[10] ? data_10_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1520 = addr_dec_5[11] ? data_11_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1521 = _io_rdata_5_T_1509 | _io_rdata_5_T_1510; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1522 = _io_rdata_5_T_1521 | _io_rdata_5_T_1511; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1523 = _io_rdata_5_T_1522 | _io_rdata_5_T_1512; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1524 = _io_rdata_5_T_1523 | _io_rdata_5_T_1513; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1525 = _io_rdata_5_T_1524 | _io_rdata_5_T_1514; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1526 = _io_rdata_5_T_1525 | _io_rdata_5_T_1515; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1527 = _io_rdata_5_T_1526 | _io_rdata_5_T_1516; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1528 = _io_rdata_5_T_1527 | _io_rdata_5_T_1517; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1529 = _io_rdata_5_T_1528 | _io_rdata_5_T_1518; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1530 = _io_rdata_5_T_1529 | _io_rdata_5_T_1519; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_5_T_1531 = _io_rdata_5_T_1530 | _io_rdata_5_T_1520; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1532 = addr_dec_5[0] ? data_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1533 = addr_dec_5[1] ? data_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1534 = addr_dec_5[2] ? data_2_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1535 = addr_dec_5[3] ? data_3_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1536 = addr_dec_5[4] ? data_4_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1537 = addr_dec_5[5] ? data_5_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1538 = addr_dec_5[6] ? data_6_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1539 = addr_dec_5[7] ? data_7_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1540 = addr_dec_5[8] ? data_8_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1541 = addr_dec_5[9] ? data_9_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1542 = addr_dec_5[10] ? data_10_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1543 = addr_dec_5[11] ? data_11_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1544 = _io_rdata_5_T_1532 | _io_rdata_5_T_1533; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1545 = _io_rdata_5_T_1544 | _io_rdata_5_T_1534; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1546 = _io_rdata_5_T_1545 | _io_rdata_5_T_1535; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1547 = _io_rdata_5_T_1546 | _io_rdata_5_T_1536; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1548 = _io_rdata_5_T_1547 | _io_rdata_5_T_1537; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1549 = _io_rdata_5_T_1548 | _io_rdata_5_T_1538; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1550 = _io_rdata_5_T_1549 | _io_rdata_5_T_1539; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1551 = _io_rdata_5_T_1550 | _io_rdata_5_T_1540; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1552 = _io_rdata_5_T_1551 | _io_rdata_5_T_1541; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1553 = _io_rdata_5_T_1552 | _io_rdata_5_T_1542; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_5_T_1554 = _io_rdata_5_T_1553 | _io_rdata_5_T_1543; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1647 = addr_dec_5[0] ? data_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1648 = addr_dec_5[1] ? data_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1649 = addr_dec_5[2] ? data_2_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1650 = addr_dec_5[3] ? data_3_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1651 = addr_dec_5[4] ? data_4_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1652 = addr_dec_5[5] ? data_5_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1653 = addr_dec_5[6] ? data_6_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1654 = addr_dec_5[7] ? data_7_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1655 = addr_dec_5[8] ? data_8_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1656 = addr_dec_5[9] ? data_9_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1657 = addr_dec_5[10] ? data_10_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1658 = addr_dec_5[11] ? data_11_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1659 = _io_rdata_5_T_1647 | _io_rdata_5_T_1648; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1660 = _io_rdata_5_T_1659 | _io_rdata_5_T_1649; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1661 = _io_rdata_5_T_1660 | _io_rdata_5_T_1650; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1662 = _io_rdata_5_T_1661 | _io_rdata_5_T_1651; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1663 = _io_rdata_5_T_1662 | _io_rdata_5_T_1652; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1664 = _io_rdata_5_T_1663 | _io_rdata_5_T_1653; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1665 = _io_rdata_5_T_1664 | _io_rdata_5_T_1654; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1666 = _io_rdata_5_T_1665 | _io_rdata_5_T_1655; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1667 = _io_rdata_5_T_1666 | _io_rdata_5_T_1656; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1668 = _io_rdata_5_T_1667 | _io_rdata_5_T_1657; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1669 = _io_rdata_5_T_1668 | _io_rdata_5_T_1658; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1670 = addr_dec_5[0] ? data_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1671 = addr_dec_5[1] ? data_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1672 = addr_dec_5[2] ? data_2_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1673 = addr_dec_5[3] ? data_3_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1674 = addr_dec_5[4] ? data_4_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1675 = addr_dec_5[5] ? data_5_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1676 = addr_dec_5[6] ? data_6_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1677 = addr_dec_5[7] ? data_7_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1678 = addr_dec_5[8] ? data_8_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1679 = addr_dec_5[9] ? data_9_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1680 = addr_dec_5[10] ? data_10_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1681 = addr_dec_5[11] ? data_11_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1682 = _io_rdata_5_T_1670 | _io_rdata_5_T_1671; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1683 = _io_rdata_5_T_1682 | _io_rdata_5_T_1672; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1684 = _io_rdata_5_T_1683 | _io_rdata_5_T_1673; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1685 = _io_rdata_5_T_1684 | _io_rdata_5_T_1674; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1686 = _io_rdata_5_T_1685 | _io_rdata_5_T_1675; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1687 = _io_rdata_5_T_1686 | _io_rdata_5_T_1676; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1688 = _io_rdata_5_T_1687 | _io_rdata_5_T_1677; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1689 = _io_rdata_5_T_1688 | _io_rdata_5_T_1678; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1690 = _io_rdata_5_T_1689 | _io_rdata_5_T_1679; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1691 = _io_rdata_5_T_1690 | _io_rdata_5_T_1680; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1692 = _io_rdata_5_T_1691 | _io_rdata_5_T_1681; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1693 = addr_dec_5[0] ? data_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1694 = addr_dec_5[1] ? data_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1695 = addr_dec_5[2] ? data_2_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1696 = addr_dec_5[3] ? data_3_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1697 = addr_dec_5[4] ? data_4_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1698 = addr_dec_5[5] ? data_5_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1699 = addr_dec_5[6] ? data_6_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1700 = addr_dec_5[7] ? data_7_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1701 = addr_dec_5[8] ? data_8_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1702 = addr_dec_5[9] ? data_9_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1703 = addr_dec_5[10] ? data_10_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1704 = addr_dec_5[11] ? data_11_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1705 = _io_rdata_5_T_1693 | _io_rdata_5_T_1694; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1706 = _io_rdata_5_T_1705 | _io_rdata_5_T_1695; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1707 = _io_rdata_5_T_1706 | _io_rdata_5_T_1696; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1708 = _io_rdata_5_T_1707 | _io_rdata_5_T_1697; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1709 = _io_rdata_5_T_1708 | _io_rdata_5_T_1698; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1710 = _io_rdata_5_T_1709 | _io_rdata_5_T_1699; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1711 = _io_rdata_5_T_1710 | _io_rdata_5_T_1700; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1712 = _io_rdata_5_T_1711 | _io_rdata_5_T_1701; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1713 = _io_rdata_5_T_1712 | _io_rdata_5_T_1702; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1714 = _io_rdata_5_T_1713 | _io_rdata_5_T_1703; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_5_T_1715 = _io_rdata_5_T_1714 | _io_rdata_5_T_1704; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1739 = addr_dec_5[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1740 = addr_dec_5[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1741 = addr_dec_5[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1742 = addr_dec_5[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1743 = addr_dec_5[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1744 = addr_dec_5[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1745 = addr_dec_5[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1746 = addr_dec_5[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1747 = addr_dec_5[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1748 = addr_dec_5[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1749 = addr_dec_5[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1750 = addr_dec_5[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1751 = _io_rdata_5_T_1739 | _io_rdata_5_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1752 = _io_rdata_5_T_1751 | _io_rdata_5_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1753 = _io_rdata_5_T_1752 | _io_rdata_5_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1754 = _io_rdata_5_T_1753 | _io_rdata_5_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1755 = _io_rdata_5_T_1754 | _io_rdata_5_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1756 = _io_rdata_5_T_1755 | _io_rdata_5_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1757 = _io_rdata_5_T_1756 | _io_rdata_5_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1758 = _io_rdata_5_T_1757 | _io_rdata_5_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1759 = _io_rdata_5_T_1758 | _io_rdata_5_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1760 = _io_rdata_5_T_1759 | _io_rdata_5_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1761 = _io_rdata_5_T_1760 | _io_rdata_5_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1762 = addr_dec_5[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1763 = addr_dec_5[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1764 = addr_dec_5[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1765 = addr_dec_5[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1766 = addr_dec_5[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1767 = addr_dec_5[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1768 = addr_dec_5[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1769 = addr_dec_5[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1770 = addr_dec_5[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1771 = addr_dec_5[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1772 = addr_dec_5[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1773 = addr_dec_5[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1774 = _io_rdata_5_T_1762 | _io_rdata_5_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1775 = _io_rdata_5_T_1774 | _io_rdata_5_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1776 = _io_rdata_5_T_1775 | _io_rdata_5_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1777 = _io_rdata_5_T_1776 | _io_rdata_5_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1778 = _io_rdata_5_T_1777 | _io_rdata_5_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1779 = _io_rdata_5_T_1778 | _io_rdata_5_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1780 = _io_rdata_5_T_1779 | _io_rdata_5_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1781 = _io_rdata_5_T_1780 | _io_rdata_5_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1782 = _io_rdata_5_T_1781 | _io_rdata_5_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1783 = _io_rdata_5_T_1782 | _io_rdata_5_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_5_T_1784 = _io_rdata_5_T_1783 | _io_rdata_5_T_1773; // @[Mux.scala 27:73]
  wire  read_by_0_6 = io_wen_0 & io_waddr_0 == io_raddr_6; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_6 = io_wen_1 & io_waddr_1 == io_raddr_6; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_6 = 16'h1 << io_raddr_6; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_6 = _addr_dec_T_6[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_12 = {read_by_1_6,read_by_0_6}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_6_T_48 = read_by_0_6 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_49 = read_by_1_6 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_50 = _io_rdata_6_T_48 | _io_rdata_6_T_49; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_53 = read_by_0_6 & io_wdata_0_robIdx_flag | read_by_1_6 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_54 = read_by_0_6 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_55 = read_by_1_6 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_56 = _io_rdata_6_T_54 | _io_rdata_6_T_55; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_57 = read_by_0_6 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_58 = read_by_1_6 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_59 = _io_rdata_6_T_57 | _io_rdata_6_T_58; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_60 = read_by_0_6 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_61 = read_by_1_6 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_62 = _io_rdata_6_T_60 | _io_rdata_6_T_61; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_63 = read_by_0_6 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_64 = read_by_1_6 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_65 = _io_rdata_6_T_63 | _io_rdata_6_T_64; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_129 = read_by_0_6 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_130 = read_by_1_6 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_131 = _io_rdata_6_T_129 | _io_rdata_6_T_130; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_132 = read_by_0_6 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_133 = read_by_1_6 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_134 = _io_rdata_6_T_132 | _io_rdata_6_T_133; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_149 = read_by_0_6 & io_wdata_0_ctrl_fpWen | read_by_1_6 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_152 = read_by_0_6 & io_wdata_0_ctrl_rfWen | read_by_1_6 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_153 = read_by_0_6 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_154 = read_by_1_6 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_155 = _io_rdata_6_T_153 | _io_rdata_6_T_154; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_156 = read_by_0_6 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_157 = read_by_1_6 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_158 = _io_rdata_6_T_156 | _io_rdata_6_T_157; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_171 = read_by_0_6 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_172 = read_by_1_6 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_173 = _io_rdata_6_T_171 | _io_rdata_6_T_172; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_174 = read_by_0_6 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_175 = read_by_1_6 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_176 = _io_rdata_6_T_174 | _io_rdata_6_T_175; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_177 = read_by_0_6 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_178 = read_by_1_6 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_179 = _io_rdata_6_T_177 | _io_rdata_6_T_178; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_183 = read_by_0_6 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_184 = read_by_1_6 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_185 = _io_rdata_6_T_183 | _io_rdata_6_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_186 = read_by_0_6 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_187 = read_by_1_6 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_188 = _io_rdata_6_T_186 | _io_rdata_6_T_187; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_704 = addr_dec_6[0] ? data_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_705 = addr_dec_6[1] ? data_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_706 = addr_dec_6[2] ? data_2_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_707 = addr_dec_6[3] ? data_3_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_708 = addr_dec_6[4] ? data_4_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_709 = addr_dec_6[5] ? data_5_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_710 = addr_dec_6[6] ? data_6_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_711 = addr_dec_6[7] ? data_7_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_712 = addr_dec_6[8] ? data_8_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_713 = addr_dec_6[9] ? data_9_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_714 = addr_dec_6[10] ? data_10_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_715 = addr_dec_6[11] ? data_11_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_716 = _io_rdata_6_T_704 | _io_rdata_6_T_705; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_717 = _io_rdata_6_T_716 | _io_rdata_6_T_706; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_718 = _io_rdata_6_T_717 | _io_rdata_6_T_707; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_719 = _io_rdata_6_T_718 | _io_rdata_6_T_708; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_720 = _io_rdata_6_T_719 | _io_rdata_6_T_709; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_721 = _io_rdata_6_T_720 | _io_rdata_6_T_710; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_722 = _io_rdata_6_T_721 | _io_rdata_6_T_711; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_723 = _io_rdata_6_T_722 | _io_rdata_6_T_712; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_724 = _io_rdata_6_T_723 | _io_rdata_6_T_713; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_725 = _io_rdata_6_T_724 | _io_rdata_6_T_714; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_6_T_726 = _io_rdata_6_T_725 | _io_rdata_6_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_749 = addr_dec_6[0] & data_0_robIdx_flag | addr_dec_6[1] & data_1_robIdx_flag | addr_dec_6[2] &
    data_2_robIdx_flag | addr_dec_6[3] & data_3_robIdx_flag | addr_dec_6[4] & data_4_robIdx_flag | addr_dec_6[5] &
    data_5_robIdx_flag | addr_dec_6[6] & data_6_robIdx_flag | addr_dec_6[7] & data_7_robIdx_flag | addr_dec_6[8] &
    data_8_robIdx_flag | addr_dec_6[9] & data_9_robIdx_flag | addr_dec_6[10] & data_10_robIdx_flag | addr_dec_6[11] &
    data_11_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_750 = addr_dec_6[0] ? data_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_751 = addr_dec_6[1] ? data_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_752 = addr_dec_6[2] ? data_2_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_753 = addr_dec_6[3] ? data_3_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_754 = addr_dec_6[4] ? data_4_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_755 = addr_dec_6[5] ? data_5_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_756 = addr_dec_6[6] ? data_6_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_757 = addr_dec_6[7] ? data_7_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_758 = addr_dec_6[8] ? data_8_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_759 = addr_dec_6[9] ? data_9_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_760 = addr_dec_6[10] ? data_10_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_761 = addr_dec_6[11] ? data_11_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_762 = _io_rdata_6_T_750 | _io_rdata_6_T_751; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_763 = _io_rdata_6_T_762 | _io_rdata_6_T_752; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_764 = _io_rdata_6_T_763 | _io_rdata_6_T_753; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_765 = _io_rdata_6_T_764 | _io_rdata_6_T_754; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_766 = _io_rdata_6_T_765 | _io_rdata_6_T_755; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_767 = _io_rdata_6_T_766 | _io_rdata_6_T_756; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_768 = _io_rdata_6_T_767 | _io_rdata_6_T_757; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_769 = _io_rdata_6_T_768 | _io_rdata_6_T_758; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_770 = _io_rdata_6_T_769 | _io_rdata_6_T_759; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_771 = _io_rdata_6_T_770 | _io_rdata_6_T_760; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_772 = _io_rdata_6_T_771 | _io_rdata_6_T_761; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_773 = addr_dec_6[0] ? data_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_774 = addr_dec_6[1] ? data_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_775 = addr_dec_6[2] ? data_2_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_776 = addr_dec_6[3] ? data_3_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_777 = addr_dec_6[4] ? data_4_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_778 = addr_dec_6[5] ? data_5_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_779 = addr_dec_6[6] ? data_6_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_780 = addr_dec_6[7] ? data_7_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_781 = addr_dec_6[8] ? data_8_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_782 = addr_dec_6[9] ? data_9_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_783 = addr_dec_6[10] ? data_10_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_784 = addr_dec_6[11] ? data_11_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_785 = _io_rdata_6_T_773 | _io_rdata_6_T_774; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_786 = _io_rdata_6_T_785 | _io_rdata_6_T_775; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_787 = _io_rdata_6_T_786 | _io_rdata_6_T_776; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_788 = _io_rdata_6_T_787 | _io_rdata_6_T_777; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_789 = _io_rdata_6_T_788 | _io_rdata_6_T_778; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_790 = _io_rdata_6_T_789 | _io_rdata_6_T_779; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_791 = _io_rdata_6_T_790 | _io_rdata_6_T_780; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_792 = _io_rdata_6_T_791 | _io_rdata_6_T_781; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_793 = _io_rdata_6_T_792 | _io_rdata_6_T_782; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_794 = _io_rdata_6_T_793 | _io_rdata_6_T_783; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_795 = _io_rdata_6_T_794 | _io_rdata_6_T_784; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_796 = addr_dec_6[0] ? data_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_797 = addr_dec_6[1] ? data_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_798 = addr_dec_6[2] ? data_2_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_799 = addr_dec_6[3] ? data_3_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_800 = addr_dec_6[4] ? data_4_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_801 = addr_dec_6[5] ? data_5_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_802 = addr_dec_6[6] ? data_6_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_803 = addr_dec_6[7] ? data_7_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_804 = addr_dec_6[8] ? data_8_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_805 = addr_dec_6[9] ? data_9_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_806 = addr_dec_6[10] ? data_10_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_807 = addr_dec_6[11] ? data_11_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_808 = _io_rdata_6_T_796 | _io_rdata_6_T_797; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_809 = _io_rdata_6_T_808 | _io_rdata_6_T_798; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_810 = _io_rdata_6_T_809 | _io_rdata_6_T_799; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_811 = _io_rdata_6_T_810 | _io_rdata_6_T_800; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_812 = _io_rdata_6_T_811 | _io_rdata_6_T_801; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_813 = _io_rdata_6_T_812 | _io_rdata_6_T_802; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_814 = _io_rdata_6_T_813 | _io_rdata_6_T_803; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_815 = _io_rdata_6_T_814 | _io_rdata_6_T_804; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_816 = _io_rdata_6_T_815 | _io_rdata_6_T_805; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_817 = _io_rdata_6_T_816 | _io_rdata_6_T_806; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_818 = _io_rdata_6_T_817 | _io_rdata_6_T_807; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_819 = addr_dec_6[0] ? data_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_820 = addr_dec_6[1] ? data_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_821 = addr_dec_6[2] ? data_2_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_822 = addr_dec_6[3] ? data_3_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_823 = addr_dec_6[4] ? data_4_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_824 = addr_dec_6[5] ? data_5_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_825 = addr_dec_6[6] ? data_6_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_826 = addr_dec_6[7] ? data_7_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_827 = addr_dec_6[8] ? data_8_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_828 = addr_dec_6[9] ? data_9_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_829 = addr_dec_6[10] ? data_10_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_830 = addr_dec_6[11] ? data_11_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_831 = _io_rdata_6_T_819 | _io_rdata_6_T_820; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_832 = _io_rdata_6_T_831 | _io_rdata_6_T_821; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_833 = _io_rdata_6_T_832 | _io_rdata_6_T_822; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_834 = _io_rdata_6_T_833 | _io_rdata_6_T_823; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_835 = _io_rdata_6_T_834 | _io_rdata_6_T_824; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_836 = _io_rdata_6_T_835 | _io_rdata_6_T_825; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_837 = _io_rdata_6_T_836 | _io_rdata_6_T_826; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_838 = _io_rdata_6_T_837 | _io_rdata_6_T_827; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_839 = _io_rdata_6_T_838 | _io_rdata_6_T_828; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_840 = _io_rdata_6_T_839 | _io_rdata_6_T_829; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_6_T_841 = _io_rdata_6_T_840 | _io_rdata_6_T_830; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1325 = addr_dec_6[0] ? data_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1326 = addr_dec_6[1] ? data_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1327 = addr_dec_6[2] ? data_2_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1328 = addr_dec_6[3] ? data_3_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1329 = addr_dec_6[4] ? data_4_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1330 = addr_dec_6[5] ? data_5_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1331 = addr_dec_6[6] ? data_6_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1332 = addr_dec_6[7] ? data_7_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1333 = addr_dec_6[8] ? data_8_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1334 = addr_dec_6[9] ? data_9_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1335 = addr_dec_6[10] ? data_10_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1336 = addr_dec_6[11] ? data_11_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1337 = _io_rdata_6_T_1325 | _io_rdata_6_T_1326; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1338 = _io_rdata_6_T_1337 | _io_rdata_6_T_1327; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1339 = _io_rdata_6_T_1338 | _io_rdata_6_T_1328; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1340 = _io_rdata_6_T_1339 | _io_rdata_6_T_1329; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1341 = _io_rdata_6_T_1340 | _io_rdata_6_T_1330; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1342 = _io_rdata_6_T_1341 | _io_rdata_6_T_1331; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1343 = _io_rdata_6_T_1342 | _io_rdata_6_T_1332; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1344 = _io_rdata_6_T_1343 | _io_rdata_6_T_1333; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1345 = _io_rdata_6_T_1344 | _io_rdata_6_T_1334; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1346 = _io_rdata_6_T_1345 | _io_rdata_6_T_1335; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_6_T_1347 = _io_rdata_6_T_1346 | _io_rdata_6_T_1336; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1348 = addr_dec_6[0] ? data_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1349 = addr_dec_6[1] ? data_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1350 = addr_dec_6[2] ? data_2_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1351 = addr_dec_6[3] ? data_3_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1352 = addr_dec_6[4] ? data_4_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1353 = addr_dec_6[5] ? data_5_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1354 = addr_dec_6[6] ? data_6_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1355 = addr_dec_6[7] ? data_7_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1356 = addr_dec_6[8] ? data_8_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1357 = addr_dec_6[9] ? data_9_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1358 = addr_dec_6[10] ? data_10_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1359 = addr_dec_6[11] ? data_11_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1360 = _io_rdata_6_T_1348 | _io_rdata_6_T_1349; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1361 = _io_rdata_6_T_1360 | _io_rdata_6_T_1350; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1362 = _io_rdata_6_T_1361 | _io_rdata_6_T_1351; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1363 = _io_rdata_6_T_1362 | _io_rdata_6_T_1352; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1364 = _io_rdata_6_T_1363 | _io_rdata_6_T_1353; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1365 = _io_rdata_6_T_1364 | _io_rdata_6_T_1354; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1366 = _io_rdata_6_T_1365 | _io_rdata_6_T_1355; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1367 = _io_rdata_6_T_1366 | _io_rdata_6_T_1356; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1368 = _io_rdata_6_T_1367 | _io_rdata_6_T_1357; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1369 = _io_rdata_6_T_1368 | _io_rdata_6_T_1358; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1370 = _io_rdata_6_T_1369 | _io_rdata_6_T_1359; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_1485 = addr_dec_6[0] & data_0_ctrl_fpWen | addr_dec_6[1] & data_1_ctrl_fpWen | addr_dec_6[2] &
    data_2_ctrl_fpWen | addr_dec_6[3] & data_3_ctrl_fpWen | addr_dec_6[4] & data_4_ctrl_fpWen | addr_dec_6[5] &
    data_5_ctrl_fpWen | addr_dec_6[6] & data_6_ctrl_fpWen | addr_dec_6[7] & data_7_ctrl_fpWen | addr_dec_6[8] &
    data_8_ctrl_fpWen | addr_dec_6[9] & data_9_ctrl_fpWen | addr_dec_6[10] & data_10_ctrl_fpWen | addr_dec_6[11] &
    data_11_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_6_T_1508 = addr_dec_6[0] & data_0_ctrl_rfWen | addr_dec_6[1] & data_1_ctrl_rfWen | addr_dec_6[2] &
    data_2_ctrl_rfWen | addr_dec_6[3] & data_3_ctrl_rfWen | addr_dec_6[4] & data_4_ctrl_rfWen | addr_dec_6[5] &
    data_5_ctrl_rfWen | addr_dec_6[6] & data_6_ctrl_rfWen | addr_dec_6[7] & data_7_ctrl_rfWen | addr_dec_6[8] &
    data_8_ctrl_rfWen | addr_dec_6[9] & data_9_ctrl_rfWen | addr_dec_6[10] & data_10_ctrl_rfWen | addr_dec_6[11] &
    data_11_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1509 = addr_dec_6[0] ? data_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1510 = addr_dec_6[1] ? data_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1511 = addr_dec_6[2] ? data_2_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1512 = addr_dec_6[3] ? data_3_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1513 = addr_dec_6[4] ? data_4_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1514 = addr_dec_6[5] ? data_5_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1515 = addr_dec_6[6] ? data_6_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1516 = addr_dec_6[7] ? data_7_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1517 = addr_dec_6[8] ? data_8_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1518 = addr_dec_6[9] ? data_9_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1519 = addr_dec_6[10] ? data_10_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1520 = addr_dec_6[11] ? data_11_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1521 = _io_rdata_6_T_1509 | _io_rdata_6_T_1510; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1522 = _io_rdata_6_T_1521 | _io_rdata_6_T_1511; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1523 = _io_rdata_6_T_1522 | _io_rdata_6_T_1512; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1524 = _io_rdata_6_T_1523 | _io_rdata_6_T_1513; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1525 = _io_rdata_6_T_1524 | _io_rdata_6_T_1514; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1526 = _io_rdata_6_T_1525 | _io_rdata_6_T_1515; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1527 = _io_rdata_6_T_1526 | _io_rdata_6_T_1516; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1528 = _io_rdata_6_T_1527 | _io_rdata_6_T_1517; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1529 = _io_rdata_6_T_1528 | _io_rdata_6_T_1518; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1530 = _io_rdata_6_T_1529 | _io_rdata_6_T_1519; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_6_T_1531 = _io_rdata_6_T_1530 | _io_rdata_6_T_1520; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1532 = addr_dec_6[0] ? data_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1533 = addr_dec_6[1] ? data_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1534 = addr_dec_6[2] ? data_2_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1535 = addr_dec_6[3] ? data_3_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1536 = addr_dec_6[4] ? data_4_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1537 = addr_dec_6[5] ? data_5_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1538 = addr_dec_6[6] ? data_6_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1539 = addr_dec_6[7] ? data_7_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1540 = addr_dec_6[8] ? data_8_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1541 = addr_dec_6[9] ? data_9_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1542 = addr_dec_6[10] ? data_10_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1543 = addr_dec_6[11] ? data_11_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1544 = _io_rdata_6_T_1532 | _io_rdata_6_T_1533; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1545 = _io_rdata_6_T_1544 | _io_rdata_6_T_1534; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1546 = _io_rdata_6_T_1545 | _io_rdata_6_T_1535; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1547 = _io_rdata_6_T_1546 | _io_rdata_6_T_1536; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1548 = _io_rdata_6_T_1547 | _io_rdata_6_T_1537; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1549 = _io_rdata_6_T_1548 | _io_rdata_6_T_1538; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1550 = _io_rdata_6_T_1549 | _io_rdata_6_T_1539; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1551 = _io_rdata_6_T_1550 | _io_rdata_6_T_1540; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1552 = _io_rdata_6_T_1551 | _io_rdata_6_T_1541; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1553 = _io_rdata_6_T_1552 | _io_rdata_6_T_1542; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_6_T_1554 = _io_rdata_6_T_1553 | _io_rdata_6_T_1543; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1647 = addr_dec_6[0] ? data_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1648 = addr_dec_6[1] ? data_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1649 = addr_dec_6[2] ? data_2_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1650 = addr_dec_6[3] ? data_3_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1651 = addr_dec_6[4] ? data_4_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1652 = addr_dec_6[5] ? data_5_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1653 = addr_dec_6[6] ? data_6_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1654 = addr_dec_6[7] ? data_7_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1655 = addr_dec_6[8] ? data_8_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1656 = addr_dec_6[9] ? data_9_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1657 = addr_dec_6[10] ? data_10_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1658 = addr_dec_6[11] ? data_11_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1659 = _io_rdata_6_T_1647 | _io_rdata_6_T_1648; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1660 = _io_rdata_6_T_1659 | _io_rdata_6_T_1649; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1661 = _io_rdata_6_T_1660 | _io_rdata_6_T_1650; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1662 = _io_rdata_6_T_1661 | _io_rdata_6_T_1651; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1663 = _io_rdata_6_T_1662 | _io_rdata_6_T_1652; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1664 = _io_rdata_6_T_1663 | _io_rdata_6_T_1653; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1665 = _io_rdata_6_T_1664 | _io_rdata_6_T_1654; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1666 = _io_rdata_6_T_1665 | _io_rdata_6_T_1655; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1667 = _io_rdata_6_T_1666 | _io_rdata_6_T_1656; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1668 = _io_rdata_6_T_1667 | _io_rdata_6_T_1657; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1669 = _io_rdata_6_T_1668 | _io_rdata_6_T_1658; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1670 = addr_dec_6[0] ? data_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1671 = addr_dec_6[1] ? data_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1672 = addr_dec_6[2] ? data_2_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1673 = addr_dec_6[3] ? data_3_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1674 = addr_dec_6[4] ? data_4_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1675 = addr_dec_6[5] ? data_5_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1676 = addr_dec_6[6] ? data_6_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1677 = addr_dec_6[7] ? data_7_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1678 = addr_dec_6[8] ? data_8_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1679 = addr_dec_6[9] ? data_9_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1680 = addr_dec_6[10] ? data_10_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1681 = addr_dec_6[11] ? data_11_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1682 = _io_rdata_6_T_1670 | _io_rdata_6_T_1671; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1683 = _io_rdata_6_T_1682 | _io_rdata_6_T_1672; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1684 = _io_rdata_6_T_1683 | _io_rdata_6_T_1673; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1685 = _io_rdata_6_T_1684 | _io_rdata_6_T_1674; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1686 = _io_rdata_6_T_1685 | _io_rdata_6_T_1675; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1687 = _io_rdata_6_T_1686 | _io_rdata_6_T_1676; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1688 = _io_rdata_6_T_1687 | _io_rdata_6_T_1677; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1689 = _io_rdata_6_T_1688 | _io_rdata_6_T_1678; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1690 = _io_rdata_6_T_1689 | _io_rdata_6_T_1679; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1691 = _io_rdata_6_T_1690 | _io_rdata_6_T_1680; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1692 = _io_rdata_6_T_1691 | _io_rdata_6_T_1681; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1693 = addr_dec_6[0] ? data_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1694 = addr_dec_6[1] ? data_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1695 = addr_dec_6[2] ? data_2_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1696 = addr_dec_6[3] ? data_3_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1697 = addr_dec_6[4] ? data_4_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1698 = addr_dec_6[5] ? data_5_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1699 = addr_dec_6[6] ? data_6_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1700 = addr_dec_6[7] ? data_7_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1701 = addr_dec_6[8] ? data_8_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1702 = addr_dec_6[9] ? data_9_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1703 = addr_dec_6[10] ? data_10_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1704 = addr_dec_6[11] ? data_11_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1705 = _io_rdata_6_T_1693 | _io_rdata_6_T_1694; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1706 = _io_rdata_6_T_1705 | _io_rdata_6_T_1695; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1707 = _io_rdata_6_T_1706 | _io_rdata_6_T_1696; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1708 = _io_rdata_6_T_1707 | _io_rdata_6_T_1697; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1709 = _io_rdata_6_T_1708 | _io_rdata_6_T_1698; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1710 = _io_rdata_6_T_1709 | _io_rdata_6_T_1699; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1711 = _io_rdata_6_T_1710 | _io_rdata_6_T_1700; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1712 = _io_rdata_6_T_1711 | _io_rdata_6_T_1701; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1713 = _io_rdata_6_T_1712 | _io_rdata_6_T_1702; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1714 = _io_rdata_6_T_1713 | _io_rdata_6_T_1703; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_6_T_1715 = _io_rdata_6_T_1714 | _io_rdata_6_T_1704; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1739 = addr_dec_6[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1740 = addr_dec_6[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1741 = addr_dec_6[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1742 = addr_dec_6[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1743 = addr_dec_6[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1744 = addr_dec_6[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1745 = addr_dec_6[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1746 = addr_dec_6[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1747 = addr_dec_6[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1748 = addr_dec_6[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1749 = addr_dec_6[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1750 = addr_dec_6[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1751 = _io_rdata_6_T_1739 | _io_rdata_6_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1752 = _io_rdata_6_T_1751 | _io_rdata_6_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1753 = _io_rdata_6_T_1752 | _io_rdata_6_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1754 = _io_rdata_6_T_1753 | _io_rdata_6_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1755 = _io_rdata_6_T_1754 | _io_rdata_6_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1756 = _io_rdata_6_T_1755 | _io_rdata_6_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1757 = _io_rdata_6_T_1756 | _io_rdata_6_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1758 = _io_rdata_6_T_1757 | _io_rdata_6_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1759 = _io_rdata_6_T_1758 | _io_rdata_6_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1760 = _io_rdata_6_T_1759 | _io_rdata_6_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1761 = _io_rdata_6_T_1760 | _io_rdata_6_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1762 = addr_dec_6[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1763 = addr_dec_6[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1764 = addr_dec_6[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1765 = addr_dec_6[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1766 = addr_dec_6[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1767 = addr_dec_6[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1768 = addr_dec_6[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1769 = addr_dec_6[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1770 = addr_dec_6[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1771 = addr_dec_6[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1772 = addr_dec_6[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1773 = addr_dec_6[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1774 = _io_rdata_6_T_1762 | _io_rdata_6_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1775 = _io_rdata_6_T_1774 | _io_rdata_6_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1776 = _io_rdata_6_T_1775 | _io_rdata_6_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1777 = _io_rdata_6_T_1776 | _io_rdata_6_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1778 = _io_rdata_6_T_1777 | _io_rdata_6_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1779 = _io_rdata_6_T_1778 | _io_rdata_6_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1780 = _io_rdata_6_T_1779 | _io_rdata_6_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1781 = _io_rdata_6_T_1780 | _io_rdata_6_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1782 = _io_rdata_6_T_1781 | _io_rdata_6_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1783 = _io_rdata_6_T_1782 | _io_rdata_6_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_6_T_1784 = _io_rdata_6_T_1783 | _io_rdata_6_T_1773; // @[Mux.scala 27:73]
  wire  read_by_0_7 = io_wen_0 & io_waddr_0 == io_raddr_7; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_7 = io_wen_1 & io_waddr_1 == io_raddr_7; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] _addr_dec_T_7 = 16'h1 << io_raddr_7; // @[OneHot.scala 64:12]
  wire [11:0] addr_dec_7 = _addr_dec_T_7[11:0]; // @[OneHot.scala 64:27]
  wire [1:0] _T_14 = {read_by_1_7,read_by_0_7}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_7_T_48 = read_by_0_7 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_49 = read_by_1_7 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_50 = _io_rdata_7_T_48 | _io_rdata_7_T_49; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_53 = read_by_0_7 & io_wdata_0_robIdx_flag | read_by_1_7 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_54 = read_by_0_7 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_55 = read_by_1_7 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_56 = _io_rdata_7_T_54 | _io_rdata_7_T_55; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_57 = read_by_0_7 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_58 = read_by_1_7 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_59 = _io_rdata_7_T_57 | _io_rdata_7_T_58; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_60 = read_by_0_7 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_61 = read_by_1_7 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_62 = _io_rdata_7_T_60 | _io_rdata_7_T_61; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_63 = read_by_0_7 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_64 = read_by_1_7 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_65 = _io_rdata_7_T_63 | _io_rdata_7_T_64; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_129 = read_by_0_7 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_130 = read_by_1_7 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_131 = _io_rdata_7_T_129 | _io_rdata_7_T_130; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_132 = read_by_0_7 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_133 = read_by_1_7 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_134 = _io_rdata_7_T_132 | _io_rdata_7_T_133; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_149 = read_by_0_7 & io_wdata_0_ctrl_fpWen | read_by_1_7 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_152 = read_by_0_7 & io_wdata_0_ctrl_rfWen | read_by_1_7 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_153 = read_by_0_7 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_154 = read_by_1_7 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_155 = _io_rdata_7_T_153 | _io_rdata_7_T_154; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_156 = read_by_0_7 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_157 = read_by_1_7 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_158 = _io_rdata_7_T_156 | _io_rdata_7_T_157; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_171 = read_by_0_7 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_172 = read_by_1_7 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_173 = _io_rdata_7_T_171 | _io_rdata_7_T_172; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_174 = read_by_0_7 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_175 = read_by_1_7 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_176 = _io_rdata_7_T_174 | _io_rdata_7_T_175; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_177 = read_by_0_7 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_178 = read_by_1_7 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_179 = _io_rdata_7_T_177 | _io_rdata_7_T_178; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_183 = read_by_0_7 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_184 = read_by_1_7 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_185 = _io_rdata_7_T_183 | _io_rdata_7_T_184; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_186 = read_by_0_7 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_187 = read_by_1_7 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_188 = _io_rdata_7_T_186 | _io_rdata_7_T_187; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_704 = addr_dec_7[0] ? data_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_705 = addr_dec_7[1] ? data_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_706 = addr_dec_7[2] ? data_2_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_707 = addr_dec_7[3] ? data_3_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_708 = addr_dec_7[4] ? data_4_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_709 = addr_dec_7[5] ? data_5_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_710 = addr_dec_7[6] ? data_6_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_711 = addr_dec_7[7] ? data_7_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_712 = addr_dec_7[8] ? data_8_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_713 = addr_dec_7[9] ? data_9_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_714 = addr_dec_7[10] ? data_10_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_715 = addr_dec_7[11] ? data_11_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_716 = _io_rdata_7_T_704 | _io_rdata_7_T_705; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_717 = _io_rdata_7_T_716 | _io_rdata_7_T_706; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_718 = _io_rdata_7_T_717 | _io_rdata_7_T_707; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_719 = _io_rdata_7_T_718 | _io_rdata_7_T_708; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_720 = _io_rdata_7_T_719 | _io_rdata_7_T_709; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_721 = _io_rdata_7_T_720 | _io_rdata_7_T_710; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_722 = _io_rdata_7_T_721 | _io_rdata_7_T_711; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_723 = _io_rdata_7_T_722 | _io_rdata_7_T_712; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_724 = _io_rdata_7_T_723 | _io_rdata_7_T_713; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_725 = _io_rdata_7_T_724 | _io_rdata_7_T_714; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_7_T_726 = _io_rdata_7_T_725 | _io_rdata_7_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_749 = addr_dec_7[0] & data_0_robIdx_flag | addr_dec_7[1] & data_1_robIdx_flag | addr_dec_7[2] &
    data_2_robIdx_flag | addr_dec_7[3] & data_3_robIdx_flag | addr_dec_7[4] & data_4_robIdx_flag | addr_dec_7[5] &
    data_5_robIdx_flag | addr_dec_7[6] & data_6_robIdx_flag | addr_dec_7[7] & data_7_robIdx_flag | addr_dec_7[8] &
    data_8_robIdx_flag | addr_dec_7[9] & data_9_robIdx_flag | addr_dec_7[10] & data_10_robIdx_flag | addr_dec_7[11] &
    data_11_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_750 = addr_dec_7[0] ? data_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_751 = addr_dec_7[1] ? data_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_752 = addr_dec_7[2] ? data_2_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_753 = addr_dec_7[3] ? data_3_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_754 = addr_dec_7[4] ? data_4_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_755 = addr_dec_7[5] ? data_5_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_756 = addr_dec_7[6] ? data_6_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_757 = addr_dec_7[7] ? data_7_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_758 = addr_dec_7[8] ? data_8_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_759 = addr_dec_7[9] ? data_9_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_760 = addr_dec_7[10] ? data_10_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_761 = addr_dec_7[11] ? data_11_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_762 = _io_rdata_7_T_750 | _io_rdata_7_T_751; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_763 = _io_rdata_7_T_762 | _io_rdata_7_T_752; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_764 = _io_rdata_7_T_763 | _io_rdata_7_T_753; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_765 = _io_rdata_7_T_764 | _io_rdata_7_T_754; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_766 = _io_rdata_7_T_765 | _io_rdata_7_T_755; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_767 = _io_rdata_7_T_766 | _io_rdata_7_T_756; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_768 = _io_rdata_7_T_767 | _io_rdata_7_T_757; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_769 = _io_rdata_7_T_768 | _io_rdata_7_T_758; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_770 = _io_rdata_7_T_769 | _io_rdata_7_T_759; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_771 = _io_rdata_7_T_770 | _io_rdata_7_T_760; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_772 = _io_rdata_7_T_771 | _io_rdata_7_T_761; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_773 = addr_dec_7[0] ? data_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_774 = addr_dec_7[1] ? data_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_775 = addr_dec_7[2] ? data_2_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_776 = addr_dec_7[3] ? data_3_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_777 = addr_dec_7[4] ? data_4_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_778 = addr_dec_7[5] ? data_5_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_779 = addr_dec_7[6] ? data_6_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_780 = addr_dec_7[7] ? data_7_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_781 = addr_dec_7[8] ? data_8_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_782 = addr_dec_7[9] ? data_9_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_783 = addr_dec_7[10] ? data_10_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_784 = addr_dec_7[11] ? data_11_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_785 = _io_rdata_7_T_773 | _io_rdata_7_T_774; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_786 = _io_rdata_7_T_785 | _io_rdata_7_T_775; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_787 = _io_rdata_7_T_786 | _io_rdata_7_T_776; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_788 = _io_rdata_7_T_787 | _io_rdata_7_T_777; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_789 = _io_rdata_7_T_788 | _io_rdata_7_T_778; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_790 = _io_rdata_7_T_789 | _io_rdata_7_T_779; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_791 = _io_rdata_7_T_790 | _io_rdata_7_T_780; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_792 = _io_rdata_7_T_791 | _io_rdata_7_T_781; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_793 = _io_rdata_7_T_792 | _io_rdata_7_T_782; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_794 = _io_rdata_7_T_793 | _io_rdata_7_T_783; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_795 = _io_rdata_7_T_794 | _io_rdata_7_T_784; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_796 = addr_dec_7[0] ? data_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_797 = addr_dec_7[1] ? data_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_798 = addr_dec_7[2] ? data_2_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_799 = addr_dec_7[3] ? data_3_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_800 = addr_dec_7[4] ? data_4_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_801 = addr_dec_7[5] ? data_5_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_802 = addr_dec_7[6] ? data_6_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_803 = addr_dec_7[7] ? data_7_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_804 = addr_dec_7[8] ? data_8_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_805 = addr_dec_7[9] ? data_9_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_806 = addr_dec_7[10] ? data_10_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_807 = addr_dec_7[11] ? data_11_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_808 = _io_rdata_7_T_796 | _io_rdata_7_T_797; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_809 = _io_rdata_7_T_808 | _io_rdata_7_T_798; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_810 = _io_rdata_7_T_809 | _io_rdata_7_T_799; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_811 = _io_rdata_7_T_810 | _io_rdata_7_T_800; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_812 = _io_rdata_7_T_811 | _io_rdata_7_T_801; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_813 = _io_rdata_7_T_812 | _io_rdata_7_T_802; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_814 = _io_rdata_7_T_813 | _io_rdata_7_T_803; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_815 = _io_rdata_7_T_814 | _io_rdata_7_T_804; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_816 = _io_rdata_7_T_815 | _io_rdata_7_T_805; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_817 = _io_rdata_7_T_816 | _io_rdata_7_T_806; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_818 = _io_rdata_7_T_817 | _io_rdata_7_T_807; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_819 = addr_dec_7[0] ? data_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_820 = addr_dec_7[1] ? data_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_821 = addr_dec_7[2] ? data_2_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_822 = addr_dec_7[3] ? data_3_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_823 = addr_dec_7[4] ? data_4_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_824 = addr_dec_7[5] ? data_5_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_825 = addr_dec_7[6] ? data_6_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_826 = addr_dec_7[7] ? data_7_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_827 = addr_dec_7[8] ? data_8_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_828 = addr_dec_7[9] ? data_9_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_829 = addr_dec_7[10] ? data_10_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_830 = addr_dec_7[11] ? data_11_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_831 = _io_rdata_7_T_819 | _io_rdata_7_T_820; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_832 = _io_rdata_7_T_831 | _io_rdata_7_T_821; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_833 = _io_rdata_7_T_832 | _io_rdata_7_T_822; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_834 = _io_rdata_7_T_833 | _io_rdata_7_T_823; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_835 = _io_rdata_7_T_834 | _io_rdata_7_T_824; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_836 = _io_rdata_7_T_835 | _io_rdata_7_T_825; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_837 = _io_rdata_7_T_836 | _io_rdata_7_T_826; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_838 = _io_rdata_7_T_837 | _io_rdata_7_T_827; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_839 = _io_rdata_7_T_838 | _io_rdata_7_T_828; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_840 = _io_rdata_7_T_839 | _io_rdata_7_T_829; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_7_T_841 = _io_rdata_7_T_840 | _io_rdata_7_T_830; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1325 = addr_dec_7[0] ? data_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1326 = addr_dec_7[1] ? data_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1327 = addr_dec_7[2] ? data_2_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1328 = addr_dec_7[3] ? data_3_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1329 = addr_dec_7[4] ? data_4_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1330 = addr_dec_7[5] ? data_5_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1331 = addr_dec_7[6] ? data_6_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1332 = addr_dec_7[7] ? data_7_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1333 = addr_dec_7[8] ? data_8_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1334 = addr_dec_7[9] ? data_9_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1335 = addr_dec_7[10] ? data_10_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1336 = addr_dec_7[11] ? data_11_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1337 = _io_rdata_7_T_1325 | _io_rdata_7_T_1326; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1338 = _io_rdata_7_T_1337 | _io_rdata_7_T_1327; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1339 = _io_rdata_7_T_1338 | _io_rdata_7_T_1328; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1340 = _io_rdata_7_T_1339 | _io_rdata_7_T_1329; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1341 = _io_rdata_7_T_1340 | _io_rdata_7_T_1330; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1342 = _io_rdata_7_T_1341 | _io_rdata_7_T_1331; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1343 = _io_rdata_7_T_1342 | _io_rdata_7_T_1332; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1344 = _io_rdata_7_T_1343 | _io_rdata_7_T_1333; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1345 = _io_rdata_7_T_1344 | _io_rdata_7_T_1334; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1346 = _io_rdata_7_T_1345 | _io_rdata_7_T_1335; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_7_T_1347 = _io_rdata_7_T_1346 | _io_rdata_7_T_1336; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1348 = addr_dec_7[0] ? data_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1349 = addr_dec_7[1] ? data_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1350 = addr_dec_7[2] ? data_2_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1351 = addr_dec_7[3] ? data_3_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1352 = addr_dec_7[4] ? data_4_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1353 = addr_dec_7[5] ? data_5_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1354 = addr_dec_7[6] ? data_6_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1355 = addr_dec_7[7] ? data_7_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1356 = addr_dec_7[8] ? data_8_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1357 = addr_dec_7[9] ? data_9_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1358 = addr_dec_7[10] ? data_10_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1359 = addr_dec_7[11] ? data_11_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1360 = _io_rdata_7_T_1348 | _io_rdata_7_T_1349; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1361 = _io_rdata_7_T_1360 | _io_rdata_7_T_1350; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1362 = _io_rdata_7_T_1361 | _io_rdata_7_T_1351; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1363 = _io_rdata_7_T_1362 | _io_rdata_7_T_1352; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1364 = _io_rdata_7_T_1363 | _io_rdata_7_T_1353; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1365 = _io_rdata_7_T_1364 | _io_rdata_7_T_1354; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1366 = _io_rdata_7_T_1365 | _io_rdata_7_T_1355; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1367 = _io_rdata_7_T_1366 | _io_rdata_7_T_1356; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1368 = _io_rdata_7_T_1367 | _io_rdata_7_T_1357; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1369 = _io_rdata_7_T_1368 | _io_rdata_7_T_1358; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1370 = _io_rdata_7_T_1369 | _io_rdata_7_T_1359; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_1485 = addr_dec_7[0] & data_0_ctrl_fpWen | addr_dec_7[1] & data_1_ctrl_fpWen | addr_dec_7[2] &
    data_2_ctrl_fpWen | addr_dec_7[3] & data_3_ctrl_fpWen | addr_dec_7[4] & data_4_ctrl_fpWen | addr_dec_7[5] &
    data_5_ctrl_fpWen | addr_dec_7[6] & data_6_ctrl_fpWen | addr_dec_7[7] & data_7_ctrl_fpWen | addr_dec_7[8] &
    data_8_ctrl_fpWen | addr_dec_7[9] & data_9_ctrl_fpWen | addr_dec_7[10] & data_10_ctrl_fpWen | addr_dec_7[11] &
    data_11_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_1508 = addr_dec_7[0] & data_0_ctrl_rfWen | addr_dec_7[1] & data_1_ctrl_rfWen | addr_dec_7[2] &
    data_2_ctrl_rfWen | addr_dec_7[3] & data_3_ctrl_rfWen | addr_dec_7[4] & data_4_ctrl_rfWen | addr_dec_7[5] &
    data_5_ctrl_rfWen | addr_dec_7[6] & data_6_ctrl_rfWen | addr_dec_7[7] & data_7_ctrl_rfWen | addr_dec_7[8] &
    data_8_ctrl_rfWen | addr_dec_7[9] & data_9_ctrl_rfWen | addr_dec_7[10] & data_10_ctrl_rfWen | addr_dec_7[11] &
    data_11_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1509 = addr_dec_7[0] ? data_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1510 = addr_dec_7[1] ? data_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1511 = addr_dec_7[2] ? data_2_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1512 = addr_dec_7[3] ? data_3_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1513 = addr_dec_7[4] ? data_4_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1514 = addr_dec_7[5] ? data_5_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1515 = addr_dec_7[6] ? data_6_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1516 = addr_dec_7[7] ? data_7_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1517 = addr_dec_7[8] ? data_8_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1518 = addr_dec_7[9] ? data_9_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1519 = addr_dec_7[10] ? data_10_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1520 = addr_dec_7[11] ? data_11_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1521 = _io_rdata_7_T_1509 | _io_rdata_7_T_1510; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1522 = _io_rdata_7_T_1521 | _io_rdata_7_T_1511; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1523 = _io_rdata_7_T_1522 | _io_rdata_7_T_1512; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1524 = _io_rdata_7_T_1523 | _io_rdata_7_T_1513; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1525 = _io_rdata_7_T_1524 | _io_rdata_7_T_1514; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1526 = _io_rdata_7_T_1525 | _io_rdata_7_T_1515; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1527 = _io_rdata_7_T_1526 | _io_rdata_7_T_1516; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1528 = _io_rdata_7_T_1527 | _io_rdata_7_T_1517; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1529 = _io_rdata_7_T_1528 | _io_rdata_7_T_1518; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1530 = _io_rdata_7_T_1529 | _io_rdata_7_T_1519; // @[Mux.scala 27:73]
  wire [6:0] _io_rdata_7_T_1531 = _io_rdata_7_T_1530 | _io_rdata_7_T_1520; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1532 = addr_dec_7[0] ? data_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1533 = addr_dec_7[1] ? data_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1534 = addr_dec_7[2] ? data_2_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1535 = addr_dec_7[3] ? data_3_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1536 = addr_dec_7[4] ? data_4_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1537 = addr_dec_7[5] ? data_5_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1538 = addr_dec_7[6] ? data_6_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1539 = addr_dec_7[7] ? data_7_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1540 = addr_dec_7[8] ? data_8_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1541 = addr_dec_7[9] ? data_9_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1542 = addr_dec_7[10] ? data_10_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1543 = addr_dec_7[11] ? data_11_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1544 = _io_rdata_7_T_1532 | _io_rdata_7_T_1533; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1545 = _io_rdata_7_T_1544 | _io_rdata_7_T_1534; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1546 = _io_rdata_7_T_1545 | _io_rdata_7_T_1535; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1547 = _io_rdata_7_T_1546 | _io_rdata_7_T_1536; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1548 = _io_rdata_7_T_1547 | _io_rdata_7_T_1537; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1549 = _io_rdata_7_T_1548 | _io_rdata_7_T_1538; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1550 = _io_rdata_7_T_1549 | _io_rdata_7_T_1539; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1551 = _io_rdata_7_T_1550 | _io_rdata_7_T_1540; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1552 = _io_rdata_7_T_1551 | _io_rdata_7_T_1541; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1553 = _io_rdata_7_T_1552 | _io_rdata_7_T_1542; // @[Mux.scala 27:73]
  wire [3:0] _io_rdata_7_T_1554 = _io_rdata_7_T_1553 | _io_rdata_7_T_1543; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1647 = addr_dec_7[0] ? data_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1648 = addr_dec_7[1] ? data_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1649 = addr_dec_7[2] ? data_2_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1650 = addr_dec_7[3] ? data_3_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1651 = addr_dec_7[4] ? data_4_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1652 = addr_dec_7[5] ? data_5_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1653 = addr_dec_7[6] ? data_6_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1654 = addr_dec_7[7] ? data_7_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1655 = addr_dec_7[8] ? data_8_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1656 = addr_dec_7[9] ? data_9_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1657 = addr_dec_7[10] ? data_10_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1658 = addr_dec_7[11] ? data_11_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1659 = _io_rdata_7_T_1647 | _io_rdata_7_T_1648; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1660 = _io_rdata_7_T_1659 | _io_rdata_7_T_1649; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1661 = _io_rdata_7_T_1660 | _io_rdata_7_T_1650; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1662 = _io_rdata_7_T_1661 | _io_rdata_7_T_1651; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1663 = _io_rdata_7_T_1662 | _io_rdata_7_T_1652; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1664 = _io_rdata_7_T_1663 | _io_rdata_7_T_1653; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1665 = _io_rdata_7_T_1664 | _io_rdata_7_T_1654; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1666 = _io_rdata_7_T_1665 | _io_rdata_7_T_1655; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1667 = _io_rdata_7_T_1666 | _io_rdata_7_T_1656; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1668 = _io_rdata_7_T_1667 | _io_rdata_7_T_1657; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1669 = _io_rdata_7_T_1668 | _io_rdata_7_T_1658; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1670 = addr_dec_7[0] ? data_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1671 = addr_dec_7[1] ? data_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1672 = addr_dec_7[2] ? data_2_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1673 = addr_dec_7[3] ? data_3_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1674 = addr_dec_7[4] ? data_4_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1675 = addr_dec_7[5] ? data_5_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1676 = addr_dec_7[6] ? data_6_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1677 = addr_dec_7[7] ? data_7_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1678 = addr_dec_7[8] ? data_8_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1679 = addr_dec_7[9] ? data_9_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1680 = addr_dec_7[10] ? data_10_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1681 = addr_dec_7[11] ? data_11_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1682 = _io_rdata_7_T_1670 | _io_rdata_7_T_1671; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1683 = _io_rdata_7_T_1682 | _io_rdata_7_T_1672; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1684 = _io_rdata_7_T_1683 | _io_rdata_7_T_1673; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1685 = _io_rdata_7_T_1684 | _io_rdata_7_T_1674; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1686 = _io_rdata_7_T_1685 | _io_rdata_7_T_1675; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1687 = _io_rdata_7_T_1686 | _io_rdata_7_T_1676; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1688 = _io_rdata_7_T_1687 | _io_rdata_7_T_1677; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1689 = _io_rdata_7_T_1688 | _io_rdata_7_T_1678; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1690 = _io_rdata_7_T_1689 | _io_rdata_7_T_1679; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1691 = _io_rdata_7_T_1690 | _io_rdata_7_T_1680; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1692 = _io_rdata_7_T_1691 | _io_rdata_7_T_1681; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1693 = addr_dec_7[0] ? data_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1694 = addr_dec_7[1] ? data_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1695 = addr_dec_7[2] ? data_2_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1696 = addr_dec_7[3] ? data_3_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1697 = addr_dec_7[4] ? data_4_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1698 = addr_dec_7[5] ? data_5_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1699 = addr_dec_7[6] ? data_6_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1700 = addr_dec_7[7] ? data_7_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1701 = addr_dec_7[8] ? data_8_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1702 = addr_dec_7[9] ? data_9_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1703 = addr_dec_7[10] ? data_10_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1704 = addr_dec_7[11] ? data_11_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1705 = _io_rdata_7_T_1693 | _io_rdata_7_T_1694; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1706 = _io_rdata_7_T_1705 | _io_rdata_7_T_1695; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1707 = _io_rdata_7_T_1706 | _io_rdata_7_T_1696; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1708 = _io_rdata_7_T_1707 | _io_rdata_7_T_1697; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1709 = _io_rdata_7_T_1708 | _io_rdata_7_T_1698; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1710 = _io_rdata_7_T_1709 | _io_rdata_7_T_1699; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1711 = _io_rdata_7_T_1710 | _io_rdata_7_T_1700; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1712 = _io_rdata_7_T_1711 | _io_rdata_7_T_1701; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1713 = _io_rdata_7_T_1712 | _io_rdata_7_T_1702; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1714 = _io_rdata_7_T_1713 | _io_rdata_7_T_1703; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_7_T_1715 = _io_rdata_7_T_1714 | _io_rdata_7_T_1704; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1739 = addr_dec_7[0] ? data_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1740 = addr_dec_7[1] ? data_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1741 = addr_dec_7[2] ? data_2_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1742 = addr_dec_7[3] ? data_3_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1743 = addr_dec_7[4] ? data_4_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1744 = addr_dec_7[5] ? data_5_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1745 = addr_dec_7[6] ? data_6_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1746 = addr_dec_7[7] ? data_7_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1747 = addr_dec_7[8] ? data_8_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1748 = addr_dec_7[9] ? data_9_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1749 = addr_dec_7[10] ? data_10_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1750 = addr_dec_7[11] ? data_11_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1751 = _io_rdata_7_T_1739 | _io_rdata_7_T_1740; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1752 = _io_rdata_7_T_1751 | _io_rdata_7_T_1741; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1753 = _io_rdata_7_T_1752 | _io_rdata_7_T_1742; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1754 = _io_rdata_7_T_1753 | _io_rdata_7_T_1743; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1755 = _io_rdata_7_T_1754 | _io_rdata_7_T_1744; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1756 = _io_rdata_7_T_1755 | _io_rdata_7_T_1745; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1757 = _io_rdata_7_T_1756 | _io_rdata_7_T_1746; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1758 = _io_rdata_7_T_1757 | _io_rdata_7_T_1747; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1759 = _io_rdata_7_T_1758 | _io_rdata_7_T_1748; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1760 = _io_rdata_7_T_1759 | _io_rdata_7_T_1749; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1761 = _io_rdata_7_T_1760 | _io_rdata_7_T_1750; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1762 = addr_dec_7[0] ? data_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1763 = addr_dec_7[1] ? data_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1764 = addr_dec_7[2] ? data_2_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1765 = addr_dec_7[3] ? data_3_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1766 = addr_dec_7[4] ? data_4_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1767 = addr_dec_7[5] ? data_5_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1768 = addr_dec_7[6] ? data_6_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1769 = addr_dec_7[7] ? data_7_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1770 = addr_dec_7[8] ? data_8_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1771 = addr_dec_7[9] ? data_9_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1772 = addr_dec_7[10] ? data_10_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1773 = addr_dec_7[11] ? data_11_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1774 = _io_rdata_7_T_1762 | _io_rdata_7_T_1763; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1775 = _io_rdata_7_T_1774 | _io_rdata_7_T_1764; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1776 = _io_rdata_7_T_1775 | _io_rdata_7_T_1765; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1777 = _io_rdata_7_T_1776 | _io_rdata_7_T_1766; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1778 = _io_rdata_7_T_1777 | _io_rdata_7_T_1767; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1779 = _io_rdata_7_T_1778 | _io_rdata_7_T_1768; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1780 = _io_rdata_7_T_1779 | _io_rdata_7_T_1769; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1781 = _io_rdata_7_T_1780 | _io_rdata_7_T_1770; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1782 = _io_rdata_7_T_1781 | _io_rdata_7_T_1771; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1783 = _io_rdata_7_T_1782 | _io_rdata_7_T_1772; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_7_T_1784 = _io_rdata_7_T_1783 | _io_rdata_7_T_1773; // @[Mux.scala 27:73]
  wire [15:0] waddr_dec_0 = 16'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_1 = 16'h1 << io_waddr_1; // @[OneHot.scala 57:35]
  wire  write_wen_0 = io_wen_0 & waddr_dec_0[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1 = io_wen_1 & waddr_dec_1[0]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_16 = {write_wen_1,write_wen_0}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_0_T_48 = write_wen_0 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_49 = write_wen_1 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_50 = _data_0_T_48 | _data_0_T_49; // @[Mux.scala 27:73]
  wire  _data_0_T_53 = write_wen_0 & io_wdata_0_robIdx_flag | write_wen_1 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_54 = write_wen_0 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_55 = write_wen_1 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_56 = _data_0_T_54 | _data_0_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_57 = write_wen_0 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_58 = write_wen_1 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_59 = _data_0_T_57 | _data_0_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_60 = write_wen_0 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_61 = write_wen_1 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_62 = _data_0_T_60 | _data_0_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_63 = write_wen_0 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_64 = write_wen_1 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_0_T_65 = _data_0_T_63 | _data_0_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_84 = write_wen_0 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_85 = write_wen_1 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_86 = _data_0_T_84 | _data_0_T_85; // @[Mux.scala 27:73]
  wire  _data_0_T_89 = write_wen_0 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_90 = write_wen_0 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_91 = write_wen_1 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_92 = _data_0_T_90 | _data_0_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_93 = write_wen_0 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_94 = write_wen_1 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_95 = _data_0_T_93 | _data_0_T_94; // @[Mux.scala 27:73]
  wire  _data_0_T_98 = write_wen_0 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_0_T_101 = write_wen_0 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_0_T_104 = write_wen_0 & io_wdata_0_ctrl_fpu_div | write_wen_1 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_105 = write_wen_0 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_106 = write_wen_1 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_107 = _data_0_T_105 | _data_0_T_106; // @[Mux.scala 27:73]
  wire  _data_0_T_110 = write_wen_0 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_0_T_113 = write_wen_0 & io_wdata_0_ctrl_fpu_wflags | write_wen_1 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_0_T_116 = write_wen_0 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_0_T_119 = write_wen_0 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_0_T_122 = write_wen_0 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_0_T_125 = write_wen_0 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_0_T_129 = write_wen_0 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_0_T_130 = write_wen_1 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_0_T_131 = _data_0_T_129 | _data_0_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_132 = write_wen_0 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_133 = write_wen_1 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_134 = _data_0_T_132 | _data_0_T_133; // @[Mux.scala 27:73]
  wire  _data_0_T_149 = write_wen_0 & io_wdata_0_ctrl_fpWen | write_wen_1 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_0_T_152 = write_wen_0 & io_wdata_0_ctrl_rfWen | write_wen_1 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_0_T_153 = write_wen_0 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_0_T_154 = write_wen_1 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_0_T_155 = _data_0_T_153 | _data_0_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_156 = write_wen_0 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_157 = write_wen_1 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_0_T_158 = _data_0_T_156 | _data_0_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_171 = write_wen_0 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_172 = write_wen_1 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_173 = _data_0_T_171 | _data_0_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_174 = write_wen_0 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_175 = write_wen_1 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_176 = _data_0_T_174 | _data_0_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_177 = write_wen_0 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_178 = write_wen_1 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_179 = _data_0_T_177 | _data_0_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_183 = write_wen_0 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_184 = write_wen_1 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_185 = _data_0_T_183 | _data_0_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_186 = write_wen_0 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_187 = write_wen_1 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_188 = _data_0_T_186 | _data_0_T_187; // @[Mux.scala 27:73]
  wire  _data_0_T_191 = write_wen_0 & io_wdata_0_cf_ftqPtr_flag | write_wen_1 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_192 = write_wen_0 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_193 = write_wen_1 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_194 = _data_0_T_192 | _data_0_T_193; // @[Mux.scala 27:73]
  wire  _data_0_T_197 = write_wen_0 & io_wdata_0_cf_loadWaitStrict | write_wen_1 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_0_T_209 = write_wen_0 & io_wdata_0_cf_storeSetHit | write_wen_1 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_0_T_215 = write_wen_0 & io_wdata_0_cf_pred_taken | write_wen_1 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_0_T_218 = write_wen_0 & io_wdata_0_cf_pd_isRet | write_wen_1 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_0_T_221 = write_wen_0 & io_wdata_0_cf_pd_isCall | write_wen_1 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_222 = write_wen_0 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_223 = write_wen_1 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_224 = _data_0_T_222 | _data_0_T_223; // @[Mux.scala 27:73]
  wire  _data_0_T_227 = write_wen_0 & io_wdata_0_cf_pd_isRVC | write_wen_1 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_0_T_251 = write_wen_0 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_0_T_254 = write_wen_0 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_1 = io_wen_0 & waddr_dec_0[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_1 = io_wen_1 & waddr_dec_1[1]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_18 = {write_wen_1_1,write_wen_0_1}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_1_T_48 = write_wen_0_1 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_49 = write_wen_1_1 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_50 = _data_1_T_48 | _data_1_T_49; // @[Mux.scala 27:73]
  wire  _data_1_T_53 = write_wen_0_1 & io_wdata_0_robIdx_flag | write_wen_1_1 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_54 = write_wen_0_1 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_55 = write_wen_1_1 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_56 = _data_1_T_54 | _data_1_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_57 = write_wen_0_1 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_58 = write_wen_1_1 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_59 = _data_1_T_57 | _data_1_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_60 = write_wen_0_1 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_61 = write_wen_1_1 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_62 = _data_1_T_60 | _data_1_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_63 = write_wen_0_1 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_64 = write_wen_1_1 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_1_T_65 = _data_1_T_63 | _data_1_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_84 = write_wen_0_1 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_85 = write_wen_1_1 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_86 = _data_1_T_84 | _data_1_T_85; // @[Mux.scala 27:73]
  wire  _data_1_T_89 = write_wen_0_1 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_1 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_90 = write_wen_0_1 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_91 = write_wen_1_1 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_92 = _data_1_T_90 | _data_1_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_93 = write_wen_0_1 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_94 = write_wen_1_1 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_95 = _data_1_T_93 | _data_1_T_94; // @[Mux.scala 27:73]
  wire  _data_1_T_98 = write_wen_0_1 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_1 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_1_T_101 = write_wen_0_1 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_1 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_1_T_104 = write_wen_0_1 & io_wdata_0_ctrl_fpu_div | write_wen_1_1 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_105 = write_wen_0_1 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_106 = write_wen_1_1 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_107 = _data_1_T_105 | _data_1_T_106; // @[Mux.scala 27:73]
  wire  _data_1_T_110 = write_wen_0_1 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_1 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_1_T_113 = write_wen_0_1 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_1 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_1_T_116 = write_wen_0_1 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_1 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_1_T_119 = write_wen_0_1 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_1 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_1_T_122 = write_wen_0_1 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_1 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_1_T_125 = write_wen_0_1 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_1 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_1_T_129 = write_wen_0_1 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_1_T_130 = write_wen_1_1 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_1_T_131 = _data_1_T_129 | _data_1_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_132 = write_wen_0_1 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_133 = write_wen_1_1 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_134 = _data_1_T_132 | _data_1_T_133; // @[Mux.scala 27:73]
  wire  _data_1_T_149 = write_wen_0_1 & io_wdata_0_ctrl_fpWen | write_wen_1_1 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_1_T_152 = write_wen_0_1 & io_wdata_0_ctrl_rfWen | write_wen_1_1 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_1_T_153 = write_wen_0_1 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_1_T_154 = write_wen_1_1 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_1_T_155 = _data_1_T_153 | _data_1_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_156 = write_wen_0_1 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_157 = write_wen_1_1 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_1_T_158 = _data_1_T_156 | _data_1_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_171 = write_wen_0_1 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_172 = write_wen_1_1 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_173 = _data_1_T_171 | _data_1_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_174 = write_wen_0_1 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_175 = write_wen_1_1 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_176 = _data_1_T_174 | _data_1_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_177 = write_wen_0_1 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_178 = write_wen_1_1 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_179 = _data_1_T_177 | _data_1_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_183 = write_wen_0_1 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_184 = write_wen_1_1 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_185 = _data_1_T_183 | _data_1_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_186 = write_wen_0_1 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_187 = write_wen_1_1 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_188 = _data_1_T_186 | _data_1_T_187; // @[Mux.scala 27:73]
  wire  _data_1_T_191 = write_wen_0_1 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_1 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_192 = write_wen_0_1 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_193 = write_wen_1_1 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_194 = _data_1_T_192 | _data_1_T_193; // @[Mux.scala 27:73]
  wire  _data_1_T_197 = write_wen_0_1 & io_wdata_0_cf_loadWaitStrict | write_wen_1_1 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_1_T_209 = write_wen_0_1 & io_wdata_0_cf_storeSetHit | write_wen_1_1 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_1_T_215 = write_wen_0_1 & io_wdata_0_cf_pred_taken | write_wen_1_1 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_1_T_218 = write_wen_0_1 & io_wdata_0_cf_pd_isRet | write_wen_1_1 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_1_T_221 = write_wen_0_1 & io_wdata_0_cf_pd_isCall | write_wen_1_1 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_222 = write_wen_0_1 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_223 = write_wen_1_1 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_224 = _data_1_T_222 | _data_1_T_223; // @[Mux.scala 27:73]
  wire  _data_1_T_227 = write_wen_0_1 & io_wdata_0_cf_pd_isRVC | write_wen_1_1 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_1_T_251 = write_wen_0_1 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_1 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_1_T_254 = write_wen_0_1 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_1 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_2 = io_wen_0 & waddr_dec_0[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_2 = io_wen_1 & waddr_dec_1[2]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_20 = {write_wen_1_2,write_wen_0_2}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_2_T_48 = write_wen_0_2 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_49 = write_wen_1_2 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_50 = _data_2_T_48 | _data_2_T_49; // @[Mux.scala 27:73]
  wire  _data_2_T_53 = write_wen_0_2 & io_wdata_0_robIdx_flag | write_wen_1_2 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_54 = write_wen_0_2 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_55 = write_wen_1_2 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_56 = _data_2_T_54 | _data_2_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_57 = write_wen_0_2 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_58 = write_wen_1_2 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_59 = _data_2_T_57 | _data_2_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_60 = write_wen_0_2 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_61 = write_wen_1_2 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_62 = _data_2_T_60 | _data_2_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_63 = write_wen_0_2 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_64 = write_wen_1_2 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_2_T_65 = _data_2_T_63 | _data_2_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_84 = write_wen_0_2 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_85 = write_wen_1_2 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_86 = _data_2_T_84 | _data_2_T_85; // @[Mux.scala 27:73]
  wire  _data_2_T_89 = write_wen_0_2 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_2 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_90 = write_wen_0_2 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_91 = write_wen_1_2 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_92 = _data_2_T_90 | _data_2_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_93 = write_wen_0_2 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_94 = write_wen_1_2 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_95 = _data_2_T_93 | _data_2_T_94; // @[Mux.scala 27:73]
  wire  _data_2_T_98 = write_wen_0_2 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_2 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_2_T_101 = write_wen_0_2 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_2 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_2_T_104 = write_wen_0_2 & io_wdata_0_ctrl_fpu_div | write_wen_1_2 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_105 = write_wen_0_2 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_106 = write_wen_1_2 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_107 = _data_2_T_105 | _data_2_T_106; // @[Mux.scala 27:73]
  wire  _data_2_T_110 = write_wen_0_2 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_2 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_2_T_113 = write_wen_0_2 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_2 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_2_T_116 = write_wen_0_2 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_2 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_2_T_119 = write_wen_0_2 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_2 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_2_T_122 = write_wen_0_2 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_2 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_2_T_125 = write_wen_0_2 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_2 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_2_T_129 = write_wen_0_2 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_2_T_130 = write_wen_1_2 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_2_T_131 = _data_2_T_129 | _data_2_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_132 = write_wen_0_2 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_133 = write_wen_1_2 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_134 = _data_2_T_132 | _data_2_T_133; // @[Mux.scala 27:73]
  wire  _data_2_T_149 = write_wen_0_2 & io_wdata_0_ctrl_fpWen | write_wen_1_2 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_2_T_152 = write_wen_0_2 & io_wdata_0_ctrl_rfWen | write_wen_1_2 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_2_T_153 = write_wen_0_2 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_2_T_154 = write_wen_1_2 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_2_T_155 = _data_2_T_153 | _data_2_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_156 = write_wen_0_2 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_157 = write_wen_1_2 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_2_T_158 = _data_2_T_156 | _data_2_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_171 = write_wen_0_2 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_172 = write_wen_1_2 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_173 = _data_2_T_171 | _data_2_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_174 = write_wen_0_2 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_175 = write_wen_1_2 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_176 = _data_2_T_174 | _data_2_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_177 = write_wen_0_2 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_178 = write_wen_1_2 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_179 = _data_2_T_177 | _data_2_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_183 = write_wen_0_2 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_184 = write_wen_1_2 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_185 = _data_2_T_183 | _data_2_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_186 = write_wen_0_2 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_187 = write_wen_1_2 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_188 = _data_2_T_186 | _data_2_T_187; // @[Mux.scala 27:73]
  wire  _data_2_T_191 = write_wen_0_2 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_2 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_192 = write_wen_0_2 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_193 = write_wen_1_2 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_194 = _data_2_T_192 | _data_2_T_193; // @[Mux.scala 27:73]
  wire  _data_2_T_197 = write_wen_0_2 & io_wdata_0_cf_loadWaitStrict | write_wen_1_2 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_2_T_209 = write_wen_0_2 & io_wdata_0_cf_storeSetHit | write_wen_1_2 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_2_T_215 = write_wen_0_2 & io_wdata_0_cf_pred_taken | write_wen_1_2 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_2_T_218 = write_wen_0_2 & io_wdata_0_cf_pd_isRet | write_wen_1_2 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_2_T_221 = write_wen_0_2 & io_wdata_0_cf_pd_isCall | write_wen_1_2 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_222 = write_wen_0_2 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_223 = write_wen_1_2 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_224 = _data_2_T_222 | _data_2_T_223; // @[Mux.scala 27:73]
  wire  _data_2_T_227 = write_wen_0_2 & io_wdata_0_cf_pd_isRVC | write_wen_1_2 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_2_T_251 = write_wen_0_2 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_2 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_2_T_254 = write_wen_0_2 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_2 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_3 = io_wen_0 & waddr_dec_0[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_3 = io_wen_1 & waddr_dec_1[3]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_22 = {write_wen_1_3,write_wen_0_3}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_3_T_48 = write_wen_0_3 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_49 = write_wen_1_3 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_50 = _data_3_T_48 | _data_3_T_49; // @[Mux.scala 27:73]
  wire  _data_3_T_53 = write_wen_0_3 & io_wdata_0_robIdx_flag | write_wen_1_3 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_54 = write_wen_0_3 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_55 = write_wen_1_3 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_56 = _data_3_T_54 | _data_3_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_57 = write_wen_0_3 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_58 = write_wen_1_3 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_59 = _data_3_T_57 | _data_3_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_60 = write_wen_0_3 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_61 = write_wen_1_3 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_62 = _data_3_T_60 | _data_3_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_63 = write_wen_0_3 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_64 = write_wen_1_3 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_3_T_65 = _data_3_T_63 | _data_3_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_84 = write_wen_0_3 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_85 = write_wen_1_3 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_86 = _data_3_T_84 | _data_3_T_85; // @[Mux.scala 27:73]
  wire  _data_3_T_89 = write_wen_0_3 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_3 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_90 = write_wen_0_3 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_91 = write_wen_1_3 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_92 = _data_3_T_90 | _data_3_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_93 = write_wen_0_3 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_94 = write_wen_1_3 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_95 = _data_3_T_93 | _data_3_T_94; // @[Mux.scala 27:73]
  wire  _data_3_T_98 = write_wen_0_3 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_3 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_3_T_101 = write_wen_0_3 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_3 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_3_T_104 = write_wen_0_3 & io_wdata_0_ctrl_fpu_div | write_wen_1_3 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_105 = write_wen_0_3 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_106 = write_wen_1_3 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_107 = _data_3_T_105 | _data_3_T_106; // @[Mux.scala 27:73]
  wire  _data_3_T_110 = write_wen_0_3 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_3 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_3_T_113 = write_wen_0_3 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_3 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_3_T_116 = write_wen_0_3 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_3 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_3_T_119 = write_wen_0_3 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_3 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_3_T_122 = write_wen_0_3 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_3 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_3_T_125 = write_wen_0_3 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_3 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_3_T_129 = write_wen_0_3 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_3_T_130 = write_wen_1_3 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_3_T_131 = _data_3_T_129 | _data_3_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_132 = write_wen_0_3 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_133 = write_wen_1_3 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_134 = _data_3_T_132 | _data_3_T_133; // @[Mux.scala 27:73]
  wire  _data_3_T_149 = write_wen_0_3 & io_wdata_0_ctrl_fpWen | write_wen_1_3 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_3_T_152 = write_wen_0_3 & io_wdata_0_ctrl_rfWen | write_wen_1_3 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_3_T_153 = write_wen_0_3 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_3_T_154 = write_wen_1_3 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_3_T_155 = _data_3_T_153 | _data_3_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_156 = write_wen_0_3 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_157 = write_wen_1_3 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_3_T_158 = _data_3_T_156 | _data_3_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_171 = write_wen_0_3 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_172 = write_wen_1_3 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_173 = _data_3_T_171 | _data_3_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_174 = write_wen_0_3 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_175 = write_wen_1_3 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_176 = _data_3_T_174 | _data_3_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_177 = write_wen_0_3 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_178 = write_wen_1_3 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_179 = _data_3_T_177 | _data_3_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_183 = write_wen_0_3 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_184 = write_wen_1_3 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_185 = _data_3_T_183 | _data_3_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_186 = write_wen_0_3 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_187 = write_wen_1_3 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_188 = _data_3_T_186 | _data_3_T_187; // @[Mux.scala 27:73]
  wire  _data_3_T_191 = write_wen_0_3 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_3 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_192 = write_wen_0_3 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_193 = write_wen_1_3 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_194 = _data_3_T_192 | _data_3_T_193; // @[Mux.scala 27:73]
  wire  _data_3_T_197 = write_wen_0_3 & io_wdata_0_cf_loadWaitStrict | write_wen_1_3 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_3_T_209 = write_wen_0_3 & io_wdata_0_cf_storeSetHit | write_wen_1_3 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_3_T_215 = write_wen_0_3 & io_wdata_0_cf_pred_taken | write_wen_1_3 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_3_T_218 = write_wen_0_3 & io_wdata_0_cf_pd_isRet | write_wen_1_3 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_3_T_221 = write_wen_0_3 & io_wdata_0_cf_pd_isCall | write_wen_1_3 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_222 = write_wen_0_3 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_223 = write_wen_1_3 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_224 = _data_3_T_222 | _data_3_T_223; // @[Mux.scala 27:73]
  wire  _data_3_T_227 = write_wen_0_3 & io_wdata_0_cf_pd_isRVC | write_wen_1_3 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_3_T_251 = write_wen_0_3 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_3 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_3_T_254 = write_wen_0_3 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_3 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_4 = io_wen_0 & waddr_dec_0[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_4 = io_wen_1 & waddr_dec_1[4]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_24 = {write_wen_1_4,write_wen_0_4}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_4_T_48 = write_wen_0_4 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_49 = write_wen_1_4 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_50 = _data_4_T_48 | _data_4_T_49; // @[Mux.scala 27:73]
  wire  _data_4_T_53 = write_wen_0_4 & io_wdata_0_robIdx_flag | write_wen_1_4 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_54 = write_wen_0_4 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_55 = write_wen_1_4 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_56 = _data_4_T_54 | _data_4_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_57 = write_wen_0_4 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_58 = write_wen_1_4 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_59 = _data_4_T_57 | _data_4_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_60 = write_wen_0_4 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_61 = write_wen_1_4 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_62 = _data_4_T_60 | _data_4_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_63 = write_wen_0_4 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_64 = write_wen_1_4 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_4_T_65 = _data_4_T_63 | _data_4_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_84 = write_wen_0_4 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_85 = write_wen_1_4 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_86 = _data_4_T_84 | _data_4_T_85; // @[Mux.scala 27:73]
  wire  _data_4_T_89 = write_wen_0_4 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_4 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_90 = write_wen_0_4 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_91 = write_wen_1_4 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_92 = _data_4_T_90 | _data_4_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_93 = write_wen_0_4 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_94 = write_wen_1_4 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_95 = _data_4_T_93 | _data_4_T_94; // @[Mux.scala 27:73]
  wire  _data_4_T_98 = write_wen_0_4 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_4 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_4_T_101 = write_wen_0_4 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_4 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_4_T_104 = write_wen_0_4 & io_wdata_0_ctrl_fpu_div | write_wen_1_4 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_105 = write_wen_0_4 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_106 = write_wen_1_4 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_107 = _data_4_T_105 | _data_4_T_106; // @[Mux.scala 27:73]
  wire  _data_4_T_110 = write_wen_0_4 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_4 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_4_T_113 = write_wen_0_4 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_4 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_4_T_116 = write_wen_0_4 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_4 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_4_T_119 = write_wen_0_4 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_4 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_4_T_122 = write_wen_0_4 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_4 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_4_T_125 = write_wen_0_4 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_4 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_4_T_129 = write_wen_0_4 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_4_T_130 = write_wen_1_4 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_4_T_131 = _data_4_T_129 | _data_4_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_132 = write_wen_0_4 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_133 = write_wen_1_4 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_134 = _data_4_T_132 | _data_4_T_133; // @[Mux.scala 27:73]
  wire  _data_4_T_149 = write_wen_0_4 & io_wdata_0_ctrl_fpWen | write_wen_1_4 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_4_T_152 = write_wen_0_4 & io_wdata_0_ctrl_rfWen | write_wen_1_4 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_4_T_153 = write_wen_0_4 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_4_T_154 = write_wen_1_4 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_4_T_155 = _data_4_T_153 | _data_4_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_156 = write_wen_0_4 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_157 = write_wen_1_4 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_4_T_158 = _data_4_T_156 | _data_4_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_171 = write_wen_0_4 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_172 = write_wen_1_4 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_173 = _data_4_T_171 | _data_4_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_174 = write_wen_0_4 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_175 = write_wen_1_4 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_176 = _data_4_T_174 | _data_4_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_177 = write_wen_0_4 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_178 = write_wen_1_4 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_179 = _data_4_T_177 | _data_4_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_183 = write_wen_0_4 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_184 = write_wen_1_4 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_185 = _data_4_T_183 | _data_4_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_186 = write_wen_0_4 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_187 = write_wen_1_4 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_188 = _data_4_T_186 | _data_4_T_187; // @[Mux.scala 27:73]
  wire  _data_4_T_191 = write_wen_0_4 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_4 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_192 = write_wen_0_4 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_193 = write_wen_1_4 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_194 = _data_4_T_192 | _data_4_T_193; // @[Mux.scala 27:73]
  wire  _data_4_T_197 = write_wen_0_4 & io_wdata_0_cf_loadWaitStrict | write_wen_1_4 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_4_T_209 = write_wen_0_4 & io_wdata_0_cf_storeSetHit | write_wen_1_4 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_4_T_215 = write_wen_0_4 & io_wdata_0_cf_pred_taken | write_wen_1_4 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_4_T_218 = write_wen_0_4 & io_wdata_0_cf_pd_isRet | write_wen_1_4 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_4_T_221 = write_wen_0_4 & io_wdata_0_cf_pd_isCall | write_wen_1_4 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_222 = write_wen_0_4 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_223 = write_wen_1_4 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_224 = _data_4_T_222 | _data_4_T_223; // @[Mux.scala 27:73]
  wire  _data_4_T_227 = write_wen_0_4 & io_wdata_0_cf_pd_isRVC | write_wen_1_4 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_4_T_251 = write_wen_0_4 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_4 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_4_T_254 = write_wen_0_4 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_4 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_5 = io_wen_0 & waddr_dec_0[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_5 = io_wen_1 & waddr_dec_1[5]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_26 = {write_wen_1_5,write_wen_0_5}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_5_T_48 = write_wen_0_5 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_49 = write_wen_1_5 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_50 = _data_5_T_48 | _data_5_T_49; // @[Mux.scala 27:73]
  wire  _data_5_T_53 = write_wen_0_5 & io_wdata_0_robIdx_flag | write_wen_1_5 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_54 = write_wen_0_5 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_55 = write_wen_1_5 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_56 = _data_5_T_54 | _data_5_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_57 = write_wen_0_5 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_58 = write_wen_1_5 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_59 = _data_5_T_57 | _data_5_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_60 = write_wen_0_5 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_61 = write_wen_1_5 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_62 = _data_5_T_60 | _data_5_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_63 = write_wen_0_5 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_64 = write_wen_1_5 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_5_T_65 = _data_5_T_63 | _data_5_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_84 = write_wen_0_5 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_85 = write_wen_1_5 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_86 = _data_5_T_84 | _data_5_T_85; // @[Mux.scala 27:73]
  wire  _data_5_T_89 = write_wen_0_5 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_5 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_90 = write_wen_0_5 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_91 = write_wen_1_5 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_92 = _data_5_T_90 | _data_5_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_93 = write_wen_0_5 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_94 = write_wen_1_5 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_95 = _data_5_T_93 | _data_5_T_94; // @[Mux.scala 27:73]
  wire  _data_5_T_98 = write_wen_0_5 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_5 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_5_T_101 = write_wen_0_5 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_5 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_5_T_104 = write_wen_0_5 & io_wdata_0_ctrl_fpu_div | write_wen_1_5 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_105 = write_wen_0_5 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_106 = write_wen_1_5 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_107 = _data_5_T_105 | _data_5_T_106; // @[Mux.scala 27:73]
  wire  _data_5_T_110 = write_wen_0_5 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_5 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_5_T_113 = write_wen_0_5 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_5 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_5_T_116 = write_wen_0_5 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_5 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_5_T_119 = write_wen_0_5 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_5 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_5_T_122 = write_wen_0_5 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_5 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_5_T_125 = write_wen_0_5 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_5 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_5_T_129 = write_wen_0_5 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_5_T_130 = write_wen_1_5 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_5_T_131 = _data_5_T_129 | _data_5_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_132 = write_wen_0_5 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_133 = write_wen_1_5 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_134 = _data_5_T_132 | _data_5_T_133; // @[Mux.scala 27:73]
  wire  _data_5_T_149 = write_wen_0_5 & io_wdata_0_ctrl_fpWen | write_wen_1_5 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_5_T_152 = write_wen_0_5 & io_wdata_0_ctrl_rfWen | write_wen_1_5 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_5_T_153 = write_wen_0_5 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_5_T_154 = write_wen_1_5 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_5_T_155 = _data_5_T_153 | _data_5_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_156 = write_wen_0_5 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_157 = write_wen_1_5 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_5_T_158 = _data_5_T_156 | _data_5_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_171 = write_wen_0_5 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_172 = write_wen_1_5 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_173 = _data_5_T_171 | _data_5_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_174 = write_wen_0_5 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_175 = write_wen_1_5 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_176 = _data_5_T_174 | _data_5_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_177 = write_wen_0_5 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_178 = write_wen_1_5 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_179 = _data_5_T_177 | _data_5_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_183 = write_wen_0_5 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_184 = write_wen_1_5 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_185 = _data_5_T_183 | _data_5_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_186 = write_wen_0_5 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_187 = write_wen_1_5 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_188 = _data_5_T_186 | _data_5_T_187; // @[Mux.scala 27:73]
  wire  _data_5_T_191 = write_wen_0_5 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_5 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_192 = write_wen_0_5 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_193 = write_wen_1_5 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_194 = _data_5_T_192 | _data_5_T_193; // @[Mux.scala 27:73]
  wire  _data_5_T_197 = write_wen_0_5 & io_wdata_0_cf_loadWaitStrict | write_wen_1_5 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_5_T_209 = write_wen_0_5 & io_wdata_0_cf_storeSetHit | write_wen_1_5 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_5_T_215 = write_wen_0_5 & io_wdata_0_cf_pred_taken | write_wen_1_5 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_5_T_218 = write_wen_0_5 & io_wdata_0_cf_pd_isRet | write_wen_1_5 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_5_T_221 = write_wen_0_5 & io_wdata_0_cf_pd_isCall | write_wen_1_5 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_222 = write_wen_0_5 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_223 = write_wen_1_5 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_224 = _data_5_T_222 | _data_5_T_223; // @[Mux.scala 27:73]
  wire  _data_5_T_227 = write_wen_0_5 & io_wdata_0_cf_pd_isRVC | write_wen_1_5 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_5_T_251 = write_wen_0_5 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_5 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_5_T_254 = write_wen_0_5 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_5 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_6 = io_wen_0 & waddr_dec_0[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_6 = io_wen_1 & waddr_dec_1[6]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_28 = {write_wen_1_6,write_wen_0_6}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_6_T_48 = write_wen_0_6 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_49 = write_wen_1_6 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_50 = _data_6_T_48 | _data_6_T_49; // @[Mux.scala 27:73]
  wire  _data_6_T_53 = write_wen_0_6 & io_wdata_0_robIdx_flag | write_wen_1_6 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_54 = write_wen_0_6 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_55 = write_wen_1_6 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_56 = _data_6_T_54 | _data_6_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_57 = write_wen_0_6 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_58 = write_wen_1_6 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_59 = _data_6_T_57 | _data_6_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_60 = write_wen_0_6 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_61 = write_wen_1_6 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_62 = _data_6_T_60 | _data_6_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_63 = write_wen_0_6 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_64 = write_wen_1_6 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_6_T_65 = _data_6_T_63 | _data_6_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_84 = write_wen_0_6 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_85 = write_wen_1_6 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_86 = _data_6_T_84 | _data_6_T_85; // @[Mux.scala 27:73]
  wire  _data_6_T_89 = write_wen_0_6 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_6 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_90 = write_wen_0_6 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_91 = write_wen_1_6 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_92 = _data_6_T_90 | _data_6_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_93 = write_wen_0_6 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_94 = write_wen_1_6 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_95 = _data_6_T_93 | _data_6_T_94; // @[Mux.scala 27:73]
  wire  _data_6_T_98 = write_wen_0_6 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_6 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_6_T_101 = write_wen_0_6 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_6 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_6_T_104 = write_wen_0_6 & io_wdata_0_ctrl_fpu_div | write_wen_1_6 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_105 = write_wen_0_6 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_106 = write_wen_1_6 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_107 = _data_6_T_105 | _data_6_T_106; // @[Mux.scala 27:73]
  wire  _data_6_T_110 = write_wen_0_6 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_6 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_6_T_113 = write_wen_0_6 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_6 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_6_T_116 = write_wen_0_6 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_6 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_6_T_119 = write_wen_0_6 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_6 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_6_T_122 = write_wen_0_6 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_6 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_6_T_125 = write_wen_0_6 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_6 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_6_T_129 = write_wen_0_6 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_6_T_130 = write_wen_1_6 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_6_T_131 = _data_6_T_129 | _data_6_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_132 = write_wen_0_6 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_133 = write_wen_1_6 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_134 = _data_6_T_132 | _data_6_T_133; // @[Mux.scala 27:73]
  wire  _data_6_T_149 = write_wen_0_6 & io_wdata_0_ctrl_fpWen | write_wen_1_6 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_6_T_152 = write_wen_0_6 & io_wdata_0_ctrl_rfWen | write_wen_1_6 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_6_T_153 = write_wen_0_6 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_6_T_154 = write_wen_1_6 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_6_T_155 = _data_6_T_153 | _data_6_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_156 = write_wen_0_6 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_157 = write_wen_1_6 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_6_T_158 = _data_6_T_156 | _data_6_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_171 = write_wen_0_6 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_172 = write_wen_1_6 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_173 = _data_6_T_171 | _data_6_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_174 = write_wen_0_6 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_175 = write_wen_1_6 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_176 = _data_6_T_174 | _data_6_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_177 = write_wen_0_6 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_178 = write_wen_1_6 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_179 = _data_6_T_177 | _data_6_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_183 = write_wen_0_6 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_184 = write_wen_1_6 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_185 = _data_6_T_183 | _data_6_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_186 = write_wen_0_6 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_187 = write_wen_1_6 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_188 = _data_6_T_186 | _data_6_T_187; // @[Mux.scala 27:73]
  wire  _data_6_T_191 = write_wen_0_6 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_6 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_192 = write_wen_0_6 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_193 = write_wen_1_6 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_194 = _data_6_T_192 | _data_6_T_193; // @[Mux.scala 27:73]
  wire  _data_6_T_197 = write_wen_0_6 & io_wdata_0_cf_loadWaitStrict | write_wen_1_6 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_6_T_209 = write_wen_0_6 & io_wdata_0_cf_storeSetHit | write_wen_1_6 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_6_T_215 = write_wen_0_6 & io_wdata_0_cf_pred_taken | write_wen_1_6 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_6_T_218 = write_wen_0_6 & io_wdata_0_cf_pd_isRet | write_wen_1_6 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_6_T_221 = write_wen_0_6 & io_wdata_0_cf_pd_isCall | write_wen_1_6 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_222 = write_wen_0_6 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_223 = write_wen_1_6 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_224 = _data_6_T_222 | _data_6_T_223; // @[Mux.scala 27:73]
  wire  _data_6_T_227 = write_wen_0_6 & io_wdata_0_cf_pd_isRVC | write_wen_1_6 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_6_T_251 = write_wen_0_6 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_6 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_6_T_254 = write_wen_0_6 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_6 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_7 = io_wen_0 & waddr_dec_0[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_7 = io_wen_1 & waddr_dec_1[7]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_30 = {write_wen_1_7,write_wen_0_7}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_7_T_48 = write_wen_0_7 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_49 = write_wen_1_7 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_50 = _data_7_T_48 | _data_7_T_49; // @[Mux.scala 27:73]
  wire  _data_7_T_53 = write_wen_0_7 & io_wdata_0_robIdx_flag | write_wen_1_7 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_54 = write_wen_0_7 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_55 = write_wen_1_7 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_56 = _data_7_T_54 | _data_7_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_57 = write_wen_0_7 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_58 = write_wen_1_7 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_59 = _data_7_T_57 | _data_7_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_60 = write_wen_0_7 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_61 = write_wen_1_7 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_62 = _data_7_T_60 | _data_7_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_63 = write_wen_0_7 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_64 = write_wen_1_7 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_7_T_65 = _data_7_T_63 | _data_7_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_84 = write_wen_0_7 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_85 = write_wen_1_7 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_86 = _data_7_T_84 | _data_7_T_85; // @[Mux.scala 27:73]
  wire  _data_7_T_89 = write_wen_0_7 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_7 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_90 = write_wen_0_7 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_91 = write_wen_1_7 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_92 = _data_7_T_90 | _data_7_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_93 = write_wen_0_7 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_94 = write_wen_1_7 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_95 = _data_7_T_93 | _data_7_T_94; // @[Mux.scala 27:73]
  wire  _data_7_T_98 = write_wen_0_7 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_7 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_7_T_101 = write_wen_0_7 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_7 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_7_T_104 = write_wen_0_7 & io_wdata_0_ctrl_fpu_div | write_wen_1_7 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_105 = write_wen_0_7 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_106 = write_wen_1_7 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_107 = _data_7_T_105 | _data_7_T_106; // @[Mux.scala 27:73]
  wire  _data_7_T_110 = write_wen_0_7 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_7 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_7_T_113 = write_wen_0_7 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_7 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_7_T_116 = write_wen_0_7 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_7 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_7_T_119 = write_wen_0_7 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_7 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_7_T_122 = write_wen_0_7 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_7 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_7_T_125 = write_wen_0_7 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_7 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_7_T_129 = write_wen_0_7 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_7_T_130 = write_wen_1_7 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_7_T_131 = _data_7_T_129 | _data_7_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_132 = write_wen_0_7 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_133 = write_wen_1_7 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_134 = _data_7_T_132 | _data_7_T_133; // @[Mux.scala 27:73]
  wire  _data_7_T_149 = write_wen_0_7 & io_wdata_0_ctrl_fpWen | write_wen_1_7 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_7_T_152 = write_wen_0_7 & io_wdata_0_ctrl_rfWen | write_wen_1_7 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_7_T_153 = write_wen_0_7 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_7_T_154 = write_wen_1_7 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_7_T_155 = _data_7_T_153 | _data_7_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_156 = write_wen_0_7 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_157 = write_wen_1_7 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_7_T_158 = _data_7_T_156 | _data_7_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_171 = write_wen_0_7 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_172 = write_wen_1_7 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_173 = _data_7_T_171 | _data_7_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_174 = write_wen_0_7 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_175 = write_wen_1_7 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_176 = _data_7_T_174 | _data_7_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_177 = write_wen_0_7 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_178 = write_wen_1_7 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_179 = _data_7_T_177 | _data_7_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_183 = write_wen_0_7 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_184 = write_wen_1_7 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_185 = _data_7_T_183 | _data_7_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_186 = write_wen_0_7 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_187 = write_wen_1_7 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_188 = _data_7_T_186 | _data_7_T_187; // @[Mux.scala 27:73]
  wire  _data_7_T_191 = write_wen_0_7 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_7 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_192 = write_wen_0_7 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_193 = write_wen_1_7 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_194 = _data_7_T_192 | _data_7_T_193; // @[Mux.scala 27:73]
  wire  _data_7_T_197 = write_wen_0_7 & io_wdata_0_cf_loadWaitStrict | write_wen_1_7 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_7_T_209 = write_wen_0_7 & io_wdata_0_cf_storeSetHit | write_wen_1_7 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_7_T_215 = write_wen_0_7 & io_wdata_0_cf_pred_taken | write_wen_1_7 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_7_T_218 = write_wen_0_7 & io_wdata_0_cf_pd_isRet | write_wen_1_7 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_7_T_221 = write_wen_0_7 & io_wdata_0_cf_pd_isCall | write_wen_1_7 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_222 = write_wen_0_7 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_223 = write_wen_1_7 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_224 = _data_7_T_222 | _data_7_T_223; // @[Mux.scala 27:73]
  wire  _data_7_T_227 = write_wen_0_7 & io_wdata_0_cf_pd_isRVC | write_wen_1_7 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_7_T_251 = write_wen_0_7 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_7 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_7_T_254 = write_wen_0_7 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_7 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_8 = io_wen_0 & waddr_dec_0[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_8 = io_wen_1 & waddr_dec_1[8]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_32 = {write_wen_1_8,write_wen_0_8}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_8_T_48 = write_wen_0_8 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_49 = write_wen_1_8 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_50 = _data_8_T_48 | _data_8_T_49; // @[Mux.scala 27:73]
  wire  _data_8_T_53 = write_wen_0_8 & io_wdata_0_robIdx_flag | write_wen_1_8 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_54 = write_wen_0_8 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_55 = write_wen_1_8 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_56 = _data_8_T_54 | _data_8_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_57 = write_wen_0_8 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_58 = write_wen_1_8 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_59 = _data_8_T_57 | _data_8_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_60 = write_wen_0_8 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_61 = write_wen_1_8 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_62 = _data_8_T_60 | _data_8_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_63 = write_wen_0_8 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_64 = write_wen_1_8 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_8_T_65 = _data_8_T_63 | _data_8_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_84 = write_wen_0_8 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_85 = write_wen_1_8 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_86 = _data_8_T_84 | _data_8_T_85; // @[Mux.scala 27:73]
  wire  _data_8_T_89 = write_wen_0_8 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_8 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_90 = write_wen_0_8 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_91 = write_wen_1_8 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_92 = _data_8_T_90 | _data_8_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_93 = write_wen_0_8 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_94 = write_wen_1_8 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_95 = _data_8_T_93 | _data_8_T_94; // @[Mux.scala 27:73]
  wire  _data_8_T_98 = write_wen_0_8 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_8 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_8_T_101 = write_wen_0_8 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_8 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_8_T_104 = write_wen_0_8 & io_wdata_0_ctrl_fpu_div | write_wen_1_8 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_105 = write_wen_0_8 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_106 = write_wen_1_8 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_107 = _data_8_T_105 | _data_8_T_106; // @[Mux.scala 27:73]
  wire  _data_8_T_110 = write_wen_0_8 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_8 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_8_T_113 = write_wen_0_8 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_8 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_8_T_116 = write_wen_0_8 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_8 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_8_T_119 = write_wen_0_8 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_8 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_8_T_122 = write_wen_0_8 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_8 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_8_T_125 = write_wen_0_8 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_8 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_8_T_129 = write_wen_0_8 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_8_T_130 = write_wen_1_8 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_8_T_131 = _data_8_T_129 | _data_8_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_132 = write_wen_0_8 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_133 = write_wen_1_8 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_134 = _data_8_T_132 | _data_8_T_133; // @[Mux.scala 27:73]
  wire  _data_8_T_149 = write_wen_0_8 & io_wdata_0_ctrl_fpWen | write_wen_1_8 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_8_T_152 = write_wen_0_8 & io_wdata_0_ctrl_rfWen | write_wen_1_8 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_8_T_153 = write_wen_0_8 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_8_T_154 = write_wen_1_8 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_8_T_155 = _data_8_T_153 | _data_8_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_156 = write_wen_0_8 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_157 = write_wen_1_8 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_8_T_158 = _data_8_T_156 | _data_8_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_171 = write_wen_0_8 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_172 = write_wen_1_8 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_173 = _data_8_T_171 | _data_8_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_174 = write_wen_0_8 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_175 = write_wen_1_8 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_176 = _data_8_T_174 | _data_8_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_177 = write_wen_0_8 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_178 = write_wen_1_8 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_179 = _data_8_T_177 | _data_8_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_183 = write_wen_0_8 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_184 = write_wen_1_8 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_185 = _data_8_T_183 | _data_8_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_186 = write_wen_0_8 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_187 = write_wen_1_8 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_188 = _data_8_T_186 | _data_8_T_187; // @[Mux.scala 27:73]
  wire  _data_8_T_191 = write_wen_0_8 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_8 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_192 = write_wen_0_8 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_193 = write_wen_1_8 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_194 = _data_8_T_192 | _data_8_T_193; // @[Mux.scala 27:73]
  wire  _data_8_T_197 = write_wen_0_8 & io_wdata_0_cf_loadWaitStrict | write_wen_1_8 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_8_T_209 = write_wen_0_8 & io_wdata_0_cf_storeSetHit | write_wen_1_8 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_8_T_215 = write_wen_0_8 & io_wdata_0_cf_pred_taken | write_wen_1_8 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_8_T_218 = write_wen_0_8 & io_wdata_0_cf_pd_isRet | write_wen_1_8 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_8_T_221 = write_wen_0_8 & io_wdata_0_cf_pd_isCall | write_wen_1_8 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_222 = write_wen_0_8 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_223 = write_wen_1_8 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_224 = _data_8_T_222 | _data_8_T_223; // @[Mux.scala 27:73]
  wire  _data_8_T_227 = write_wen_0_8 & io_wdata_0_cf_pd_isRVC | write_wen_1_8 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_8_T_251 = write_wen_0_8 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_8 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_8_T_254 = write_wen_0_8 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_8 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_9 = io_wen_0 & waddr_dec_0[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_9 = io_wen_1 & waddr_dec_1[9]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_34 = {write_wen_1_9,write_wen_0_9}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_9_T_48 = write_wen_0_9 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_49 = write_wen_1_9 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_50 = _data_9_T_48 | _data_9_T_49; // @[Mux.scala 27:73]
  wire  _data_9_T_53 = write_wen_0_9 & io_wdata_0_robIdx_flag | write_wen_1_9 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_54 = write_wen_0_9 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_55 = write_wen_1_9 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_56 = _data_9_T_54 | _data_9_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_57 = write_wen_0_9 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_58 = write_wen_1_9 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_59 = _data_9_T_57 | _data_9_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_60 = write_wen_0_9 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_61 = write_wen_1_9 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_62 = _data_9_T_60 | _data_9_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_63 = write_wen_0_9 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_64 = write_wen_1_9 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_9_T_65 = _data_9_T_63 | _data_9_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_84 = write_wen_0_9 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_85 = write_wen_1_9 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_86 = _data_9_T_84 | _data_9_T_85; // @[Mux.scala 27:73]
  wire  _data_9_T_89 = write_wen_0_9 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_9 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_90 = write_wen_0_9 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_91 = write_wen_1_9 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_92 = _data_9_T_90 | _data_9_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_93 = write_wen_0_9 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_94 = write_wen_1_9 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_95 = _data_9_T_93 | _data_9_T_94; // @[Mux.scala 27:73]
  wire  _data_9_T_98 = write_wen_0_9 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_9 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_9_T_101 = write_wen_0_9 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_9 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_9_T_104 = write_wen_0_9 & io_wdata_0_ctrl_fpu_div | write_wen_1_9 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_105 = write_wen_0_9 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_106 = write_wen_1_9 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_107 = _data_9_T_105 | _data_9_T_106; // @[Mux.scala 27:73]
  wire  _data_9_T_110 = write_wen_0_9 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_9 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_9_T_113 = write_wen_0_9 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_9 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_9_T_116 = write_wen_0_9 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_9 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_9_T_119 = write_wen_0_9 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_9 & io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_9_T_122 = write_wen_0_9 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_9 & io_wdata_1_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  wire  _data_9_T_125 = write_wen_0_9 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_9 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_9_T_129 = write_wen_0_9 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_9_T_130 = write_wen_1_9 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_9_T_131 = _data_9_T_129 | _data_9_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_132 = write_wen_0_9 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_133 = write_wen_1_9 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_134 = _data_9_T_132 | _data_9_T_133; // @[Mux.scala 27:73]
  wire  _data_9_T_149 = write_wen_0_9 & io_wdata_0_ctrl_fpWen | write_wen_1_9 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_9_T_152 = write_wen_0_9 & io_wdata_0_ctrl_rfWen | write_wen_1_9 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_9_T_153 = write_wen_0_9 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_9_T_154 = write_wen_1_9 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_9_T_155 = _data_9_T_153 | _data_9_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_156 = write_wen_0_9 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_157 = write_wen_1_9 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_9_T_158 = _data_9_T_156 | _data_9_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_171 = write_wen_0_9 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_172 = write_wen_1_9 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_173 = _data_9_T_171 | _data_9_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_174 = write_wen_0_9 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_175 = write_wen_1_9 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_176 = _data_9_T_174 | _data_9_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_177 = write_wen_0_9 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_178 = write_wen_1_9 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_179 = _data_9_T_177 | _data_9_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_183 = write_wen_0_9 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_184 = write_wen_1_9 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_185 = _data_9_T_183 | _data_9_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_186 = write_wen_0_9 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_187 = write_wen_1_9 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_188 = _data_9_T_186 | _data_9_T_187; // @[Mux.scala 27:73]
  wire  _data_9_T_191 = write_wen_0_9 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_9 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_192 = write_wen_0_9 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_193 = write_wen_1_9 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_194 = _data_9_T_192 | _data_9_T_193; // @[Mux.scala 27:73]
  wire  _data_9_T_197 = write_wen_0_9 & io_wdata_0_cf_loadWaitStrict | write_wen_1_9 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_9_T_209 = write_wen_0_9 & io_wdata_0_cf_storeSetHit | write_wen_1_9 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_9_T_215 = write_wen_0_9 & io_wdata_0_cf_pred_taken | write_wen_1_9 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_9_T_218 = write_wen_0_9 & io_wdata_0_cf_pd_isRet | write_wen_1_9 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_9_T_221 = write_wen_0_9 & io_wdata_0_cf_pd_isCall | write_wen_1_9 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_222 = write_wen_0_9 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_223 = write_wen_1_9 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_224 = _data_9_T_222 | _data_9_T_223; // @[Mux.scala 27:73]
  wire  _data_9_T_227 = write_wen_0_9 & io_wdata_0_cf_pd_isRVC | write_wen_1_9 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_9_T_251 = write_wen_0_9 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_9 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_9_T_254 = write_wen_0_9 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_9 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_10 = io_wen_0 & waddr_dec_0[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_10 = io_wen_1 & waddr_dec_1[10]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_36 = {write_wen_1_10,write_wen_0_10}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_10_T_48 = write_wen_0_10 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_49 = write_wen_1_10 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_50 = _data_10_T_48 | _data_10_T_49; // @[Mux.scala 27:73]
  wire  _data_10_T_53 = write_wen_0_10 & io_wdata_0_robIdx_flag | write_wen_1_10 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_54 = write_wen_0_10 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_55 = write_wen_1_10 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_56 = _data_10_T_54 | _data_10_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_57 = write_wen_0_10 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_58 = write_wen_1_10 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_59 = _data_10_T_57 | _data_10_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_60 = write_wen_0_10 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_61 = write_wen_1_10 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_62 = _data_10_T_60 | _data_10_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_63 = write_wen_0_10 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_64 = write_wen_1_10 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_10_T_65 = _data_10_T_63 | _data_10_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_84 = write_wen_0_10 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_85 = write_wen_1_10 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_86 = _data_10_T_84 | _data_10_T_85; // @[Mux.scala 27:73]
  wire  _data_10_T_89 = write_wen_0_10 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_10 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_90 = write_wen_0_10 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_91 = write_wen_1_10 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_92 = _data_10_T_90 | _data_10_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_93 = write_wen_0_10 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_94 = write_wen_1_10 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_95 = _data_10_T_93 | _data_10_T_94; // @[Mux.scala 27:73]
  wire  _data_10_T_98 = write_wen_0_10 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_10 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_10_T_101 = write_wen_0_10 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_10 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_10_T_104 = write_wen_0_10 & io_wdata_0_ctrl_fpu_div | write_wen_1_10 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_105 = write_wen_0_10 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_106 = write_wen_1_10 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_107 = _data_10_T_105 | _data_10_T_106; // @[Mux.scala 27:73]
  wire  _data_10_T_110 = write_wen_0_10 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_10 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_10_T_113 = write_wen_0_10 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_10 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_10_T_116 = write_wen_0_10 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_10 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_10_T_119 = write_wen_0_10 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_10 &
    io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_10_T_122 = write_wen_0_10 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_10 & io_wdata_1_ctrl_fpu_typeTagIn
    ; // @[Mux.scala 27:73]
  wire  _data_10_T_125 = write_wen_0_10 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_10 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_10_T_129 = write_wen_0_10 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_10_T_130 = write_wen_1_10 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_10_T_131 = _data_10_T_129 | _data_10_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_132 = write_wen_0_10 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_133 = write_wen_1_10 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_134 = _data_10_T_132 | _data_10_T_133; // @[Mux.scala 27:73]
  wire  _data_10_T_149 = write_wen_0_10 & io_wdata_0_ctrl_fpWen | write_wen_1_10 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_10_T_152 = write_wen_0_10 & io_wdata_0_ctrl_rfWen | write_wen_1_10 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_10_T_153 = write_wen_0_10 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_10_T_154 = write_wen_1_10 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_10_T_155 = _data_10_T_153 | _data_10_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_156 = write_wen_0_10 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_157 = write_wen_1_10 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_10_T_158 = _data_10_T_156 | _data_10_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_171 = write_wen_0_10 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_172 = write_wen_1_10 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_173 = _data_10_T_171 | _data_10_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_174 = write_wen_0_10 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_175 = write_wen_1_10 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_176 = _data_10_T_174 | _data_10_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_177 = write_wen_0_10 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_178 = write_wen_1_10 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_179 = _data_10_T_177 | _data_10_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_183 = write_wen_0_10 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_184 = write_wen_1_10 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_185 = _data_10_T_183 | _data_10_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_186 = write_wen_0_10 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_187 = write_wen_1_10 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_188 = _data_10_T_186 | _data_10_T_187; // @[Mux.scala 27:73]
  wire  _data_10_T_191 = write_wen_0_10 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_10 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_192 = write_wen_0_10 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_193 = write_wen_1_10 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_194 = _data_10_T_192 | _data_10_T_193; // @[Mux.scala 27:73]
  wire  _data_10_T_197 = write_wen_0_10 & io_wdata_0_cf_loadWaitStrict | write_wen_1_10 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_10_T_209 = write_wen_0_10 & io_wdata_0_cf_storeSetHit | write_wen_1_10 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_10_T_215 = write_wen_0_10 & io_wdata_0_cf_pred_taken | write_wen_1_10 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_10_T_218 = write_wen_0_10 & io_wdata_0_cf_pd_isRet | write_wen_1_10 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_10_T_221 = write_wen_0_10 & io_wdata_0_cf_pd_isCall | write_wen_1_10 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_222 = write_wen_0_10 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_223 = write_wen_1_10 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_224 = _data_10_T_222 | _data_10_T_223; // @[Mux.scala 27:73]
  wire  _data_10_T_227 = write_wen_0_10 & io_wdata_0_cf_pd_isRVC | write_wen_1_10 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_10_T_251 = write_wen_0_10 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_10 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_10_T_254 = write_wen_0_10 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_10 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  wire  write_wen_0_11 = io_wen_0 & waddr_dec_0[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_11 = io_wen_1 & waddr_dec_1[11]; // @[DataModuleTemplate.scala 188:57]
  wire [1:0] _T_38 = {write_wen_1_11,write_wen_0_11}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_11_T_48 = write_wen_0_11 ? io_wdata_0_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_49 = write_wen_1_11 ? io_wdata_1_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_50 = _data_11_T_48 | _data_11_T_49; // @[Mux.scala 27:73]
  wire  _data_11_T_53 = write_wen_0_11 & io_wdata_0_robIdx_flag | write_wen_1_11 & io_wdata_1_robIdx_flag; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_54 = write_wen_0_11 ? io_wdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_55 = write_wen_1_11 ? io_wdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_56 = _data_11_T_54 | _data_11_T_55; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_57 = write_wen_0_11 ? io_wdata_0_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_58 = write_wen_1_11 ? io_wdata_1_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_59 = _data_11_T_57 | _data_11_T_58; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_60 = write_wen_0_11 ? io_wdata_0_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_61 = write_wen_1_11 ? io_wdata_1_psrc_1 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_62 = _data_11_T_60 | _data_11_T_61; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_63 = write_wen_0_11 ? io_wdata_0_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_64 = write_wen_1_11 ? io_wdata_1_psrc_2 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _data_11_T_65 = _data_11_T_63 | _data_11_T_64; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_84 = write_wen_0_11 ? io_wdata_0_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_85 = write_wen_1_11 ? io_wdata_1_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_86 = _data_11_T_84 | _data_11_T_85; // @[Mux.scala 27:73]
  wire  _data_11_T_89 = write_wen_0_11 & io_wdata_0_ctrl_fpu_ren3 | write_wen_1_11 & io_wdata_1_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_90 = write_wen_0_11 ? io_wdata_0_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_91 = write_wen_1_11 ? io_wdata_1_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_92 = _data_11_T_90 | _data_11_T_91; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_93 = write_wen_0_11 ? io_wdata_0_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_94 = write_wen_1_11 ? io_wdata_1_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_95 = _data_11_T_93 | _data_11_T_94; // @[Mux.scala 27:73]
  wire  _data_11_T_98 = write_wen_0_11 & io_wdata_0_ctrl_fpu_fcvt | write_wen_1_11 & io_wdata_1_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  wire  _data_11_T_101 = write_wen_0_11 & io_wdata_0_ctrl_fpu_sqrt | write_wen_1_11 & io_wdata_1_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  wire  _data_11_T_104 = write_wen_0_11 & io_wdata_0_ctrl_fpu_div | write_wen_1_11 & io_wdata_1_ctrl_fpu_div; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_105 = write_wen_0_11 ? io_wdata_0_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_106 = write_wen_1_11 ? io_wdata_1_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_107 = _data_11_T_105 | _data_11_T_106; // @[Mux.scala 27:73]
  wire  _data_11_T_110 = write_wen_0_11 & io_wdata_0_ctrl_fpu_fpWen | write_wen_1_11 & io_wdata_1_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  wire  _data_11_T_113 = write_wen_0_11 & io_wdata_0_ctrl_fpu_wflags | write_wen_1_11 & io_wdata_1_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  wire  _data_11_T_116 = write_wen_0_11 & io_wdata_0_ctrl_fpu_fromInt | write_wen_1_11 & io_wdata_1_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  wire  _data_11_T_119 = write_wen_0_11 & io_wdata_0_ctrl_fpu_typeTagOut | write_wen_1_11 &
    io_wdata_1_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  wire  _data_11_T_122 = write_wen_0_11 & io_wdata_0_ctrl_fpu_typeTagIn | write_wen_1_11 & io_wdata_1_ctrl_fpu_typeTagIn
    ; // @[Mux.scala 27:73]
  wire  _data_11_T_125 = write_wen_0_11 & io_wdata_0_ctrl_fpu_isAddSub | write_wen_1_11 & io_wdata_1_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  wire [19:0] _data_11_T_129 = write_wen_0_11 ? io_wdata_0_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_11_T_130 = write_wen_1_11 ? io_wdata_1_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _data_11_T_131 = _data_11_T_129 | _data_11_T_130; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_132 = write_wen_0_11 ? io_wdata_0_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_133 = write_wen_1_11 ? io_wdata_1_ctrl_selImm : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_134 = _data_11_T_132 | _data_11_T_133; // @[Mux.scala 27:73]
  wire  _data_11_T_149 = write_wen_0_11 & io_wdata_0_ctrl_fpWen | write_wen_1_11 & io_wdata_1_ctrl_fpWen; // @[Mux.scala 27:73]
  wire  _data_11_T_152 = write_wen_0_11 & io_wdata_0_ctrl_rfWen | write_wen_1_11 & io_wdata_1_ctrl_rfWen; // @[Mux.scala 27:73]
  wire [6:0] _data_11_T_153 = write_wen_0_11 ? io_wdata_0_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_11_T_154 = write_wen_1_11 ? io_wdata_1_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _data_11_T_155 = _data_11_T_153 | _data_11_T_154; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_156 = write_wen_0_11 ? io_wdata_0_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_157 = write_wen_1_11 ? io_wdata_1_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _data_11_T_158 = _data_11_T_156 | _data_11_T_157; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_171 = write_wen_0_11 ? io_wdata_0_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_172 = write_wen_1_11 ? io_wdata_1_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_173 = _data_11_T_171 | _data_11_T_172; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_174 = write_wen_0_11 ? io_wdata_0_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_175 = write_wen_1_11 ? io_wdata_1_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_176 = _data_11_T_174 | _data_11_T_175; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_177 = write_wen_0_11 ? io_wdata_0_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_178 = write_wen_1_11 ? io_wdata_1_ctrl_srcType_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_179 = _data_11_T_177 | _data_11_T_178; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_183 = write_wen_0_11 ? io_wdata_0_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_184 = write_wen_1_11 ? io_wdata_1_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_185 = _data_11_T_183 | _data_11_T_184; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_186 = write_wen_0_11 ? io_wdata_0_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_187 = write_wen_1_11 ? io_wdata_1_cf_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_188 = _data_11_T_186 | _data_11_T_187; // @[Mux.scala 27:73]
  wire  _data_11_T_191 = write_wen_0_11 & io_wdata_0_cf_ftqPtr_flag | write_wen_1_11 & io_wdata_1_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_192 = write_wen_0_11 ? io_wdata_0_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_193 = write_wen_1_11 ? io_wdata_1_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_194 = _data_11_T_192 | _data_11_T_193; // @[Mux.scala 27:73]
  wire  _data_11_T_197 = write_wen_0_11 & io_wdata_0_cf_loadWaitStrict | write_wen_1_11 & io_wdata_1_cf_loadWaitStrict; // @[Mux.scala 27:73]
  wire  _data_11_T_209 = write_wen_0_11 & io_wdata_0_cf_storeSetHit | write_wen_1_11 & io_wdata_1_cf_storeSetHit; // @[Mux.scala 27:73]
  wire  _data_11_T_215 = write_wen_0_11 & io_wdata_0_cf_pred_taken | write_wen_1_11 & io_wdata_1_cf_pred_taken; // @[Mux.scala 27:73]
  wire  _data_11_T_218 = write_wen_0_11 & io_wdata_0_cf_pd_isRet | write_wen_1_11 & io_wdata_1_cf_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_11_T_221 = write_wen_0_11 & io_wdata_0_cf_pd_isCall | write_wen_1_11 & io_wdata_1_cf_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_222 = write_wen_0_11 ? io_wdata_0_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_223 = write_wen_1_11 ? io_wdata_1_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_224 = _data_11_T_222 | _data_11_T_223; // @[Mux.scala 27:73]
  wire  _data_11_T_227 = write_wen_0_11 & io_wdata_0_cf_pd_isRVC | write_wen_1_11 & io_wdata_1_cf_pd_isRVC; // @[Mux.scala 27:73]
  wire  _data_11_T_251 = write_wen_0_11 & io_wdata_0_cf_trigger_backendEn_0 | write_wen_1_11 &
    io_wdata_1_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_11_T_254 = write_wen_0_11 & io_wdata_0_cf_trigger_backendEn_1 | write_wen_1_11 &
    io_wdata_1_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_rdata_0_cf_trigger_backendEn_0 = |_T ? _io_rdata_0_T_251 : _io_rdata_0_T_2267; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_trigger_backendEn_1 = |_T ? _io_rdata_0_T_254 : _io_rdata_0_T_2290; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_pd_isRVC = |_T ? _io_rdata_0_T_227 : _io_rdata_0_T_2083; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_pd_brType = |_T ? _io_rdata_0_T_224 : _io_rdata_0_T_2060; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_pd_isCall = |_T ? _io_rdata_0_T_221 : _io_rdata_0_T_2037; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_pd_isRet = |_T ? _io_rdata_0_T_218 : _io_rdata_0_T_2014; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_pred_taken = |_T ? _io_rdata_0_T_215 : _io_rdata_0_T_1991; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_storeSetHit = |_T ? _io_rdata_0_T_209 : _io_rdata_0_T_1945; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_loadWaitStrict = |_T ? _io_rdata_0_T_197 : _io_rdata_0_T_1853; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_ssid = |_T ? _io_rdata_0_T_194 : _io_rdata_0_T_1830; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_ftqPtr_flag = |_T ? _io_rdata_0_T_191 : _io_rdata_0_T_1807; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_ftqPtr_value = |_T ? _io_rdata_0_T_188 : _io_rdata_0_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_cf_ftqOffset = |_T ? _io_rdata_0_T_185 : _io_rdata_0_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_isAddSub = |_T ? _io_rdata_0_T_125 : _io_rdata_0_T_1301; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_typeTagIn = |_T ? _io_rdata_0_T_122 : _io_rdata_0_T_1278; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_typeTagOut = |_T ? _io_rdata_0_T_119 : _io_rdata_0_T_1255; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_fromInt = |_T ? _io_rdata_0_T_116 : _io_rdata_0_T_1232; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_wflags = |_T ? _io_rdata_0_T_113 : _io_rdata_0_T_1209; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_fpWen = |_T ? _io_rdata_0_T_110 : _io_rdata_0_T_1186; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_fmaCmd = |_T ? _io_rdata_0_T_107 : _io_rdata_0_T_1163; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_div = |_T ? _io_rdata_0_T_104 : _io_rdata_0_T_1140; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_sqrt = |_T ? _io_rdata_0_T_101 : _io_rdata_0_T_1117; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_fcvt = |_T ? _io_rdata_0_T_98 : _io_rdata_0_T_1094; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_typ = |_T ? _io_rdata_0_T_95 : _io_rdata_0_T_1071; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_fmt = |_T ? _io_rdata_0_T_92 : _io_rdata_0_T_1048; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_ren3 = |_T ? _io_rdata_0_T_89 : _io_rdata_0_T_1025; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ctrl_fpu_rm = |_T ? _io_rdata_0_T_86 : _io_rdata_0_T_1002; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_trigger_backendEn_0 = |_T_2 ? _io_rdata_1_T_251 : _io_rdata_1_T_2267; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_trigger_backendEn_1 = |_T_2 ? _io_rdata_1_T_254 : _io_rdata_1_T_2290; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_pd_isRVC = |_T_2 ? _io_rdata_1_T_227 : _io_rdata_1_T_2083; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_pd_brType = |_T_2 ? _io_rdata_1_T_224 : _io_rdata_1_T_2060; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_pd_isCall = |_T_2 ? _io_rdata_1_T_221 : _io_rdata_1_T_2037; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_pd_isRet = |_T_2 ? _io_rdata_1_T_218 : _io_rdata_1_T_2014; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_pred_taken = |_T_2 ? _io_rdata_1_T_215 : _io_rdata_1_T_1991; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_storeSetHit = |_T_2 ? _io_rdata_1_T_209 : _io_rdata_1_T_1945; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_loadWaitStrict = |_T_2 ? _io_rdata_1_T_197 : _io_rdata_1_T_1853; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_ssid = |_T_2 ? _io_rdata_1_T_194 : _io_rdata_1_T_1830; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_ftqPtr_flag = |_T_2 ? _io_rdata_1_T_191 : _io_rdata_1_T_1807; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_ftqPtr_value = |_T_2 ? _io_rdata_1_T_188 : _io_rdata_1_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_cf_ftqOffset = |_T_2 ? _io_rdata_1_T_185 : _io_rdata_1_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_trigger_backendEn_0 = |_T_4 ? _io_rdata_2_T_251 : _io_rdata_2_T_2267; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_trigger_backendEn_1 = |_T_4 ? _io_rdata_2_T_254 : _io_rdata_2_T_2290; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_pd_isRVC = |_T_4 ? _io_rdata_2_T_227 : _io_rdata_2_T_2083; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_pd_brType = |_T_4 ? _io_rdata_2_T_224 : _io_rdata_2_T_2060; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_pd_isCall = |_T_4 ? _io_rdata_2_T_221 : _io_rdata_2_T_2037; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_pd_isRet = |_T_4 ? _io_rdata_2_T_218 : _io_rdata_2_T_2014; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_pred_taken = |_T_4 ? _io_rdata_2_T_215 : _io_rdata_2_T_1991; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_storeSetHit = |_T_4 ? _io_rdata_2_T_209 : _io_rdata_2_T_1945; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_loadWaitStrict = |_T_4 ? _io_rdata_2_T_197 : _io_rdata_2_T_1853; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_ssid = |_T_4 ? _io_rdata_2_T_194 : _io_rdata_2_T_1830; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_ftqPtr_flag = |_T_4 ? _io_rdata_2_T_191 : _io_rdata_2_T_1807; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_ftqPtr_value = |_T_4 ? _io_rdata_2_T_188 : _io_rdata_2_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_cf_ftqOffset = |_T_4 ? _io_rdata_2_T_185 : _io_rdata_2_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_trigger_backendEn_0 = |_T_6 ? _io_rdata_3_T_251 : _io_rdata_3_T_2267; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_trigger_backendEn_1 = |_T_6 ? _io_rdata_3_T_254 : _io_rdata_3_T_2290; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_pd_isRVC = |_T_6 ? _io_rdata_3_T_227 : _io_rdata_3_T_2083; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_pd_brType = |_T_6 ? _io_rdata_3_T_224 : _io_rdata_3_T_2060; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_pd_isCall = |_T_6 ? _io_rdata_3_T_221 : _io_rdata_3_T_2037; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_pd_isRet = |_T_6 ? _io_rdata_3_T_218 : _io_rdata_3_T_2014; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_pred_taken = |_T_6 ? _io_rdata_3_T_215 : _io_rdata_3_T_1991; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_storeSetHit = |_T_6 ? _io_rdata_3_T_209 : _io_rdata_3_T_1945; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_loadWaitStrict = |_T_6 ? _io_rdata_3_T_197 : _io_rdata_3_T_1853; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_ssid = |_T_6 ? _io_rdata_3_T_194 : _io_rdata_3_T_1830; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_ftqPtr_flag = |_T_6 ? _io_rdata_3_T_191 : _io_rdata_3_T_1807; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_ftqPtr_value = |_T_6 ? _io_rdata_3_T_188 : _io_rdata_3_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_cf_ftqOffset = |_T_6 ? _io_rdata_3_T_185 : _io_rdata_3_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_cf_ftqPtr_value = |_T_8 ? _io_rdata_4_T_188 : _io_rdata_4_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_cf_ftqOffset = |_T_8 ? _io_rdata_4_T_185 : _io_rdata_4_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_srcType_0 = |_T_8 ? _io_rdata_4_T_173 : _io_rdata_4_T_1669; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_srcType_1 = |_T_8 ? _io_rdata_4_T_176 : _io_rdata_4_T_1692; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_srcType_2 = |_T_8 ? _io_rdata_4_T_179 : _io_rdata_4_T_1715; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_fuType = |_T_8 ? _io_rdata_4_T_158 : _io_rdata_4_T_1554; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_fuOpType = |_T_8 ? _io_rdata_4_T_155 : _io_rdata_4_T_1531; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_rfWen = |_T_8 ? _io_rdata_4_T_152 : _io_rdata_4_T_1508; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_fpWen = |_T_8 ? _io_rdata_4_T_149 : _io_rdata_4_T_1485; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_selImm = |_T_8 ? _io_rdata_4_T_134 : _io_rdata_4_T_1370; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_ctrl_imm = |_T_8 ? _io_rdata_4_T_131 : _io_rdata_4_T_1347; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_psrc_0 = |_T_8 ? _io_rdata_4_T_59 : _io_rdata_4_T_795; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_psrc_1 = |_T_8 ? _io_rdata_4_T_62 : _io_rdata_4_T_818; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_psrc_2 = |_T_8 ? _io_rdata_4_T_65 : _io_rdata_4_T_841; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_pdest = |_T_8 ? _io_rdata_4_T_56 : _io_rdata_4_T_772; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_robIdx_flag = |_T_8 ? _io_rdata_4_T_53 : _io_rdata_4_T_749; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_robIdx_value = |_T_8 ? _io_rdata_4_T_50 : _io_rdata_4_T_726; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_cf_ftqPtr_value = |_T_10 ? _io_rdata_5_T_188 : _io_rdata_5_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_cf_ftqOffset = |_T_10 ? _io_rdata_5_T_185 : _io_rdata_5_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_srcType_0 = |_T_10 ? _io_rdata_5_T_173 : _io_rdata_5_T_1669; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_srcType_1 = |_T_10 ? _io_rdata_5_T_176 : _io_rdata_5_T_1692; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_srcType_2 = |_T_10 ? _io_rdata_5_T_179 : _io_rdata_5_T_1715; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_fuType = |_T_10 ? _io_rdata_5_T_158 : _io_rdata_5_T_1554; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_fuOpType = |_T_10 ? _io_rdata_5_T_155 : _io_rdata_5_T_1531; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_rfWen = |_T_10 ? _io_rdata_5_T_152 : _io_rdata_5_T_1508; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_fpWen = |_T_10 ? _io_rdata_5_T_149 : _io_rdata_5_T_1485; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_selImm = |_T_10 ? _io_rdata_5_T_134 : _io_rdata_5_T_1370; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_ctrl_imm = |_T_10 ? _io_rdata_5_T_131 : _io_rdata_5_T_1347; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_psrc_0 = |_T_10 ? _io_rdata_5_T_59 : _io_rdata_5_T_795; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_psrc_1 = |_T_10 ? _io_rdata_5_T_62 : _io_rdata_5_T_818; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_psrc_2 = |_T_10 ? _io_rdata_5_T_65 : _io_rdata_5_T_841; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_pdest = |_T_10 ? _io_rdata_5_T_56 : _io_rdata_5_T_772; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_robIdx_flag = |_T_10 ? _io_rdata_5_T_53 : _io_rdata_5_T_749; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_robIdx_value = |_T_10 ? _io_rdata_5_T_50 : _io_rdata_5_T_726; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_cf_ftqPtr_value = |_T_12 ? _io_rdata_6_T_188 : _io_rdata_6_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_cf_ftqOffset = |_T_12 ? _io_rdata_6_T_185 : _io_rdata_6_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_srcType_0 = |_T_12 ? _io_rdata_6_T_173 : _io_rdata_6_T_1669; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_srcType_1 = |_T_12 ? _io_rdata_6_T_176 : _io_rdata_6_T_1692; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_srcType_2 = |_T_12 ? _io_rdata_6_T_179 : _io_rdata_6_T_1715; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_fuType = |_T_12 ? _io_rdata_6_T_158 : _io_rdata_6_T_1554; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_fuOpType = |_T_12 ? _io_rdata_6_T_155 : _io_rdata_6_T_1531; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_rfWen = |_T_12 ? _io_rdata_6_T_152 : _io_rdata_6_T_1508; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_fpWen = |_T_12 ? _io_rdata_6_T_149 : _io_rdata_6_T_1485; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_selImm = |_T_12 ? _io_rdata_6_T_134 : _io_rdata_6_T_1370; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_ctrl_imm = |_T_12 ? _io_rdata_6_T_131 : _io_rdata_6_T_1347; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_psrc_0 = |_T_12 ? _io_rdata_6_T_59 : _io_rdata_6_T_795; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_psrc_1 = |_T_12 ? _io_rdata_6_T_62 : _io_rdata_6_T_818; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_psrc_2 = |_T_12 ? _io_rdata_6_T_65 : _io_rdata_6_T_841; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_pdest = |_T_12 ? _io_rdata_6_T_56 : _io_rdata_6_T_772; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_robIdx_flag = |_T_12 ? _io_rdata_6_T_53 : _io_rdata_6_T_749; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_6_robIdx_value = |_T_12 ? _io_rdata_6_T_50 : _io_rdata_6_T_726; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_cf_ftqPtr_value = |_T_14 ? _io_rdata_7_T_188 : _io_rdata_7_T_1784; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_cf_ftqOffset = |_T_14 ? _io_rdata_7_T_185 : _io_rdata_7_T_1761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_srcType_0 = |_T_14 ? _io_rdata_7_T_173 : _io_rdata_7_T_1669; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_srcType_1 = |_T_14 ? _io_rdata_7_T_176 : _io_rdata_7_T_1692; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_srcType_2 = |_T_14 ? _io_rdata_7_T_179 : _io_rdata_7_T_1715; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_fuType = |_T_14 ? _io_rdata_7_T_158 : _io_rdata_7_T_1554; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_fuOpType = |_T_14 ? _io_rdata_7_T_155 : _io_rdata_7_T_1531; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_rfWen = |_T_14 ? _io_rdata_7_T_152 : _io_rdata_7_T_1508; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_fpWen = |_T_14 ? _io_rdata_7_T_149 : _io_rdata_7_T_1485; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_selImm = |_T_14 ? _io_rdata_7_T_134 : _io_rdata_7_T_1370; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_ctrl_imm = |_T_14 ? _io_rdata_7_T_131 : _io_rdata_7_T_1347; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_psrc_0 = |_T_14 ? _io_rdata_7_T_59 : _io_rdata_7_T_795; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_psrc_1 = |_T_14 ? _io_rdata_7_T_62 : _io_rdata_7_T_818; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_psrc_2 = |_T_14 ? _io_rdata_7_T_65 : _io_rdata_7_T_841; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_pdest = |_T_14 ? _io_rdata_7_T_56 : _io_rdata_7_T_772; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_robIdx_flag = |_T_14 ? _io_rdata_7_T_53 : _io_rdata_7_T_749; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_robIdx_value = |_T_14 ? _io_rdata_7_T_50 : _io_rdata_7_T_726; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_trigger_backendEn_0 <= _data_0_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_trigger_backendEn_1 <= _data_0_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_pd_isRVC <= _data_0_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_pd_brType <= _data_0_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_pd_isCall <= _data_0_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_pd_isRet <= _data_0_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_pred_taken <= _data_0_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_storeSetHit <= _data_0_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_loadWaitStrict <= _data_0_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_ssid <= _data_0_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_ftqPtr_flag <= _data_0_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_ftqPtr_value <= _data_0_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_cf_ftqOffset <= _data_0_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_srcType_0 <= _data_0_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_srcType_1 <= _data_0_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_srcType_2 <= _data_0_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fuType <= _data_0_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fuOpType <= _data_0_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_rfWen <= _data_0_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpWen <= _data_0_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_selImm <= _data_0_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_imm <= _data_0_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_isAddSub <= _data_0_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_typeTagIn <= _data_0_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_typeTagOut <= _data_0_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_fromInt <= _data_0_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_wflags <= _data_0_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_fpWen <= _data_0_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_fmaCmd <= _data_0_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_div <= _data_0_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_sqrt <= _data_0_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_fcvt <= _data_0_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_typ <= _data_0_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_fmt <= _data_0_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_ren3 <= _data_0_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ctrl_fpu_rm <= _data_0_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_psrc_0 <= _data_0_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_psrc_1 <= _data_0_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_psrc_2 <= _data_0_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pdest <= _data_0_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_robIdx_flag <= _data_0_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_0_robIdx_value <= _data_0_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_trigger_backendEn_0 <= _data_1_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_trigger_backendEn_1 <= _data_1_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_pd_isRVC <= _data_1_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_pd_brType <= _data_1_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_pd_isCall <= _data_1_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_pd_isRet <= _data_1_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_pred_taken <= _data_1_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_storeSetHit <= _data_1_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_loadWaitStrict <= _data_1_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_ssid <= _data_1_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_ftqPtr_flag <= _data_1_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_ftqPtr_value <= _data_1_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_cf_ftqOffset <= _data_1_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_srcType_0 <= _data_1_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_srcType_1 <= _data_1_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_srcType_2 <= _data_1_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fuType <= _data_1_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fuOpType <= _data_1_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_rfWen <= _data_1_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpWen <= _data_1_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_selImm <= _data_1_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_imm <= _data_1_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_isAddSub <= _data_1_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_typeTagIn <= _data_1_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_typeTagOut <= _data_1_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_fromInt <= _data_1_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_wflags <= _data_1_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_fpWen <= _data_1_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_fmaCmd <= _data_1_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_div <= _data_1_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_sqrt <= _data_1_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_fcvt <= _data_1_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_typ <= _data_1_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_fmt <= _data_1_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_ren3 <= _data_1_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ctrl_fpu_rm <= _data_1_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_psrc_0 <= _data_1_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_psrc_1 <= _data_1_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_psrc_2 <= _data_1_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pdest <= _data_1_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_robIdx_flag <= _data_1_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_1_robIdx_value <= _data_1_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_trigger_backendEn_0 <= _data_2_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_trigger_backendEn_1 <= _data_2_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_pd_isRVC <= _data_2_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_pd_brType <= _data_2_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_pd_isCall <= _data_2_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_pd_isRet <= _data_2_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_pred_taken <= _data_2_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_storeSetHit <= _data_2_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_loadWaitStrict <= _data_2_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_ssid <= _data_2_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_ftqPtr_flag <= _data_2_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_ftqPtr_value <= _data_2_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_cf_ftqOffset <= _data_2_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_srcType_0 <= _data_2_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_srcType_1 <= _data_2_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_srcType_2 <= _data_2_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fuType <= _data_2_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fuOpType <= _data_2_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_rfWen <= _data_2_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpWen <= _data_2_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_selImm <= _data_2_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_imm <= _data_2_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_isAddSub <= _data_2_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_typeTagIn <= _data_2_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_typeTagOut <= _data_2_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_fromInt <= _data_2_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_wflags <= _data_2_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_fpWen <= _data_2_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_fmaCmd <= _data_2_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_div <= _data_2_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_sqrt <= _data_2_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_fcvt <= _data_2_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_typ <= _data_2_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_fmt <= _data_2_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_ren3 <= _data_2_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ctrl_fpu_rm <= _data_2_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_psrc_0 <= _data_2_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_psrc_1 <= _data_2_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_psrc_2 <= _data_2_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pdest <= _data_2_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_robIdx_flag <= _data_2_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_2_robIdx_value <= _data_2_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_trigger_backendEn_0 <= _data_3_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_trigger_backendEn_1 <= _data_3_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_pd_isRVC <= _data_3_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_pd_brType <= _data_3_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_pd_isCall <= _data_3_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_pd_isRet <= _data_3_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_pred_taken <= _data_3_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_storeSetHit <= _data_3_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_loadWaitStrict <= _data_3_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_ssid <= _data_3_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_ftqPtr_flag <= _data_3_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_ftqPtr_value <= _data_3_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_cf_ftqOffset <= _data_3_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_srcType_0 <= _data_3_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_srcType_1 <= _data_3_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_srcType_2 <= _data_3_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fuType <= _data_3_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fuOpType <= _data_3_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_rfWen <= _data_3_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpWen <= _data_3_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_selImm <= _data_3_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_imm <= _data_3_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_isAddSub <= _data_3_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_typeTagIn <= _data_3_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_typeTagOut <= _data_3_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_fromInt <= _data_3_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_wflags <= _data_3_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_fpWen <= _data_3_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_fmaCmd <= _data_3_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_div <= _data_3_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_sqrt <= _data_3_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_fcvt <= _data_3_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_typ <= _data_3_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_fmt <= _data_3_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_ren3 <= _data_3_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ctrl_fpu_rm <= _data_3_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_psrc_0 <= _data_3_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_psrc_1 <= _data_3_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_psrc_2 <= _data_3_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pdest <= _data_3_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_robIdx_flag <= _data_3_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_3_robIdx_value <= _data_3_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_trigger_backendEn_0 <= _data_4_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_trigger_backendEn_1 <= _data_4_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_pd_isRVC <= _data_4_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_pd_brType <= _data_4_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_pd_isCall <= _data_4_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_pd_isRet <= _data_4_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_pred_taken <= _data_4_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_storeSetHit <= _data_4_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_loadWaitStrict <= _data_4_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_ssid <= _data_4_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_ftqPtr_flag <= _data_4_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_ftqPtr_value <= _data_4_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_cf_ftqOffset <= _data_4_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_srcType_0 <= _data_4_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_srcType_1 <= _data_4_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_srcType_2 <= _data_4_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fuType <= _data_4_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fuOpType <= _data_4_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_rfWen <= _data_4_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpWen <= _data_4_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_selImm <= _data_4_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_imm <= _data_4_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_isAddSub <= _data_4_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_typeTagIn <= _data_4_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_typeTagOut <= _data_4_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_fromInt <= _data_4_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_wflags <= _data_4_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_fpWen <= _data_4_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_fmaCmd <= _data_4_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_div <= _data_4_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_sqrt <= _data_4_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_fcvt <= _data_4_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_typ <= _data_4_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_fmt <= _data_4_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_ren3 <= _data_4_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ctrl_fpu_rm <= _data_4_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_psrc_0 <= _data_4_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_psrc_1 <= _data_4_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_psrc_2 <= _data_4_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pdest <= _data_4_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_robIdx_flag <= _data_4_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_4_robIdx_value <= _data_4_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_trigger_backendEn_0 <= _data_5_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_trigger_backendEn_1 <= _data_5_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_pd_isRVC <= _data_5_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_pd_brType <= _data_5_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_pd_isCall <= _data_5_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_pd_isRet <= _data_5_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_pred_taken <= _data_5_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_storeSetHit <= _data_5_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_loadWaitStrict <= _data_5_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_ssid <= _data_5_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_ftqPtr_flag <= _data_5_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_ftqPtr_value <= _data_5_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_cf_ftqOffset <= _data_5_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_srcType_0 <= _data_5_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_srcType_1 <= _data_5_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_srcType_2 <= _data_5_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fuType <= _data_5_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fuOpType <= _data_5_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_rfWen <= _data_5_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpWen <= _data_5_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_selImm <= _data_5_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_imm <= _data_5_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_isAddSub <= _data_5_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_typeTagIn <= _data_5_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_typeTagOut <= _data_5_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_fromInt <= _data_5_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_wflags <= _data_5_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_fpWen <= _data_5_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_fmaCmd <= _data_5_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_div <= _data_5_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_sqrt <= _data_5_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_fcvt <= _data_5_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_typ <= _data_5_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_fmt <= _data_5_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_ren3 <= _data_5_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ctrl_fpu_rm <= _data_5_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_psrc_0 <= _data_5_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_psrc_1 <= _data_5_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_psrc_2 <= _data_5_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pdest <= _data_5_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_robIdx_flag <= _data_5_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_5_robIdx_value <= _data_5_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_trigger_backendEn_0 <= _data_6_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_trigger_backendEn_1 <= _data_6_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_pd_isRVC <= _data_6_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_pd_brType <= _data_6_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_pd_isCall <= _data_6_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_pd_isRet <= _data_6_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_pred_taken <= _data_6_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_storeSetHit <= _data_6_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_loadWaitStrict <= _data_6_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_ssid <= _data_6_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_ftqPtr_flag <= _data_6_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_ftqPtr_value <= _data_6_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_cf_ftqOffset <= _data_6_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_srcType_0 <= _data_6_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_srcType_1 <= _data_6_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_srcType_2 <= _data_6_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fuType <= _data_6_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fuOpType <= _data_6_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_rfWen <= _data_6_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpWen <= _data_6_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_selImm <= _data_6_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_imm <= _data_6_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_isAddSub <= _data_6_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_typeTagIn <= _data_6_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_typeTagOut <= _data_6_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_fromInt <= _data_6_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_wflags <= _data_6_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_fpWen <= _data_6_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_fmaCmd <= _data_6_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_div <= _data_6_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_sqrt <= _data_6_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_fcvt <= _data_6_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_typ <= _data_6_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_fmt <= _data_6_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_ren3 <= _data_6_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ctrl_fpu_rm <= _data_6_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_psrc_0 <= _data_6_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_psrc_1 <= _data_6_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_psrc_2 <= _data_6_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pdest <= _data_6_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_robIdx_flag <= _data_6_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_6_robIdx_value <= _data_6_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_trigger_backendEn_0 <= _data_7_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_trigger_backendEn_1 <= _data_7_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_pd_isRVC <= _data_7_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_pd_brType <= _data_7_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_pd_isCall <= _data_7_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_pd_isRet <= _data_7_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_pred_taken <= _data_7_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_storeSetHit <= _data_7_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_loadWaitStrict <= _data_7_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_ssid <= _data_7_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_ftqPtr_flag <= _data_7_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_ftqPtr_value <= _data_7_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_cf_ftqOffset <= _data_7_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_srcType_0 <= _data_7_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_srcType_1 <= _data_7_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_srcType_2 <= _data_7_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fuType <= _data_7_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fuOpType <= _data_7_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_rfWen <= _data_7_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpWen <= _data_7_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_selImm <= _data_7_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_imm <= _data_7_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_isAddSub <= _data_7_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_typeTagIn <= _data_7_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_typeTagOut <= _data_7_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_fromInt <= _data_7_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_wflags <= _data_7_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_fpWen <= _data_7_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_fmaCmd <= _data_7_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_div <= _data_7_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_sqrt <= _data_7_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_fcvt <= _data_7_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_typ <= _data_7_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_fmt <= _data_7_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_ren3 <= _data_7_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ctrl_fpu_rm <= _data_7_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_psrc_0 <= _data_7_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_psrc_1 <= _data_7_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_psrc_2 <= _data_7_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pdest <= _data_7_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_robIdx_flag <= _data_7_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_7_robIdx_value <= _data_7_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_trigger_backendEn_0 <= _data_8_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_trigger_backendEn_1 <= _data_8_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_pd_isRVC <= _data_8_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_pd_brType <= _data_8_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_pd_isCall <= _data_8_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_pd_isRet <= _data_8_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_pred_taken <= _data_8_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_storeSetHit <= _data_8_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_loadWaitStrict <= _data_8_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_ssid <= _data_8_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_ftqPtr_flag <= _data_8_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_ftqPtr_value <= _data_8_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_cf_ftqOffset <= _data_8_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_srcType_0 <= _data_8_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_srcType_1 <= _data_8_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_srcType_2 <= _data_8_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fuType <= _data_8_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fuOpType <= _data_8_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_rfWen <= _data_8_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpWen <= _data_8_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_selImm <= _data_8_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_imm <= _data_8_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_isAddSub <= _data_8_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_typeTagIn <= _data_8_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_typeTagOut <= _data_8_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_fromInt <= _data_8_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_wflags <= _data_8_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_fpWen <= _data_8_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_fmaCmd <= _data_8_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_div <= _data_8_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_sqrt <= _data_8_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_fcvt <= _data_8_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_typ <= _data_8_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_fmt <= _data_8_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_ren3 <= _data_8_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ctrl_fpu_rm <= _data_8_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_psrc_0 <= _data_8_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_psrc_1 <= _data_8_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_psrc_2 <= _data_8_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pdest <= _data_8_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_robIdx_flag <= _data_8_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_8_robIdx_value <= _data_8_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_trigger_backendEn_0 <= _data_9_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_trigger_backendEn_1 <= _data_9_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_pd_isRVC <= _data_9_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_pd_brType <= _data_9_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_pd_isCall <= _data_9_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_pd_isRet <= _data_9_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_pred_taken <= _data_9_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_storeSetHit <= _data_9_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_loadWaitStrict <= _data_9_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_ssid <= _data_9_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_ftqPtr_flag <= _data_9_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_ftqPtr_value <= _data_9_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_cf_ftqOffset <= _data_9_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_srcType_0 <= _data_9_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_srcType_1 <= _data_9_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_srcType_2 <= _data_9_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fuType <= _data_9_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fuOpType <= _data_9_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_rfWen <= _data_9_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpWen <= _data_9_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_selImm <= _data_9_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_imm <= _data_9_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_isAddSub <= _data_9_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_typeTagIn <= _data_9_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_typeTagOut <= _data_9_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_fromInt <= _data_9_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_wflags <= _data_9_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_fpWen <= _data_9_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_fmaCmd <= _data_9_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_div <= _data_9_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_sqrt <= _data_9_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_fcvt <= _data_9_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_typ <= _data_9_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_fmt <= _data_9_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_ren3 <= _data_9_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ctrl_fpu_rm <= _data_9_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_psrc_0 <= _data_9_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_psrc_1 <= _data_9_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_psrc_2 <= _data_9_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pdest <= _data_9_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_robIdx_flag <= _data_9_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_9_robIdx_value <= _data_9_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_trigger_backendEn_0 <= _data_10_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_trigger_backendEn_1 <= _data_10_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_pd_isRVC <= _data_10_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_pd_brType <= _data_10_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_pd_isCall <= _data_10_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_pd_isRet <= _data_10_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_pred_taken <= _data_10_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_storeSetHit <= _data_10_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_loadWaitStrict <= _data_10_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_ssid <= _data_10_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_ftqPtr_flag <= _data_10_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_ftqPtr_value <= _data_10_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_cf_ftqOffset <= _data_10_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_srcType_0 <= _data_10_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_srcType_1 <= _data_10_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_srcType_2 <= _data_10_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fuType <= _data_10_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fuOpType <= _data_10_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_rfWen <= _data_10_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpWen <= _data_10_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_selImm <= _data_10_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_imm <= _data_10_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_isAddSub <= _data_10_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_typeTagIn <= _data_10_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_typeTagOut <= _data_10_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_fromInt <= _data_10_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_wflags <= _data_10_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_fpWen <= _data_10_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_fmaCmd <= _data_10_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_div <= _data_10_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_sqrt <= _data_10_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_fcvt <= _data_10_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_typ <= _data_10_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_fmt <= _data_10_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_ren3 <= _data_10_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ctrl_fpu_rm <= _data_10_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_psrc_0 <= _data_10_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_psrc_1 <= _data_10_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_psrc_2 <= _data_10_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pdest <= _data_10_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_robIdx_flag <= _data_10_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_10_robIdx_value <= _data_10_T_50; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_trigger_backendEn_0 <= _data_11_T_251; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_trigger_backendEn_1 <= _data_11_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_pd_isRVC <= _data_11_T_227; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_pd_brType <= _data_11_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_pd_isCall <= _data_11_T_221; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_pd_isRet <= _data_11_T_218; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_pred_taken <= _data_11_T_215; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_storeSetHit <= _data_11_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_loadWaitStrict <= _data_11_T_197; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_ssid <= _data_11_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_ftqPtr_flag <= _data_11_T_191; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_ftqPtr_value <= _data_11_T_188; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_cf_ftqOffset <= _data_11_T_185; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_srcType_0 <= _data_11_T_173; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_srcType_1 <= _data_11_T_176; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_srcType_2 <= _data_11_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fuType <= _data_11_T_158; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fuOpType <= _data_11_T_155; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_rfWen <= _data_11_T_152; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpWen <= _data_11_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_selImm <= _data_11_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_imm <= _data_11_T_131; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_isAddSub <= _data_11_T_125; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_typeTagIn <= _data_11_T_122; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_typeTagOut <= _data_11_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_fromInt <= _data_11_T_116; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_wflags <= _data_11_T_113; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_fpWen <= _data_11_T_110; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_fmaCmd <= _data_11_T_107; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_div <= _data_11_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_sqrt <= _data_11_T_101; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_fcvt <= _data_11_T_98; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_typ <= _data_11_T_95; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_fmt <= _data_11_T_92; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_ren3 <= _data_11_T_89; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ctrl_fpu_rm <= _data_11_T_86; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_psrc_0 <= _data_11_T_59; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_psrc_1 <= _data_11_T_62; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_psrc_2 <= _data_11_T_65; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pdest <= _data_11_T_56; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_robIdx_flag <= _data_11_T_53; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_11_robIdx_value <= _data_11_T_50; // @[DataModuleTemplate.scala 190:15]
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
  data_0_cf_trigger_backendEn_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_0_cf_trigger_backendEn_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_cf_pd_isRVC = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_cf_pd_brType = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_cf_pd_isCall = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_cf_pd_isRet = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_cf_pred_taken = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_cf_storeSetHit = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_cf_loadWaitStrict = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_cf_ssid = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  data_0_cf_ftqPtr_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_0_cf_ftqPtr_value = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  data_0_cf_ftqOffset = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  data_0_ctrl_srcType_0 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  data_0_ctrl_srcType_1 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  data_0_ctrl_srcType_2 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  data_0_ctrl_fuType = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  data_0_ctrl_fuOpType = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  data_0_ctrl_rfWen = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_0_ctrl_fpWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  data_0_ctrl_selImm = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  data_0_ctrl_imm = _RAND_21[19:0];
  _RAND_22 = {1{`RANDOM}};
  data_0_ctrl_fpu_isAddSub = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_0_ctrl_fpu_typeTagIn = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_0_ctrl_fpu_typeTagOut = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_0_ctrl_fpu_fromInt = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  data_0_ctrl_fpu_wflags = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_0_ctrl_fpu_fpWen = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  data_0_ctrl_fpu_fmaCmd = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  data_0_ctrl_fpu_div = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  data_0_ctrl_fpu_sqrt = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  data_0_ctrl_fpu_fcvt = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  data_0_ctrl_fpu_typ = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  data_0_ctrl_fpu_fmt = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  data_0_ctrl_fpu_ren3 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_0_ctrl_fpu_rm = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  data_0_psrc_0 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  data_0_psrc_1 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  data_0_psrc_2 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  data_0_pdest = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  data_0_robIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  data_0_robIdx_value = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  data_1_cf_trigger_backendEn_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_1_cf_trigger_backendEn_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  data_1_cf_pd_isRVC = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  data_1_cf_pd_brType = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  data_1_cf_pd_isCall = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  data_1_cf_pd_isRet = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  data_1_cf_pred_taken = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  data_1_cf_storeSetHit = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  data_1_cf_loadWaitStrict = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  data_1_cf_ssid = _RAND_51[4:0];
  _RAND_52 = {1{`RANDOM}};
  data_1_cf_ftqPtr_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  data_1_cf_ftqPtr_value = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  data_1_cf_ftqOffset = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  data_1_ctrl_srcType_0 = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  data_1_ctrl_srcType_1 = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  data_1_ctrl_srcType_2 = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  data_1_ctrl_fuType = _RAND_58[3:0];
  _RAND_59 = {1{`RANDOM}};
  data_1_ctrl_fuOpType = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  data_1_ctrl_rfWen = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  data_1_ctrl_fpWen = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  data_1_ctrl_selImm = _RAND_62[3:0];
  _RAND_63 = {1{`RANDOM}};
  data_1_ctrl_imm = _RAND_63[19:0];
  _RAND_64 = {1{`RANDOM}};
  data_1_ctrl_fpu_isAddSub = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  data_1_ctrl_fpu_typeTagIn = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  data_1_ctrl_fpu_typeTagOut = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  data_1_ctrl_fpu_fromInt = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  data_1_ctrl_fpu_wflags = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  data_1_ctrl_fpu_fpWen = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  data_1_ctrl_fpu_fmaCmd = _RAND_70[1:0];
  _RAND_71 = {1{`RANDOM}};
  data_1_ctrl_fpu_div = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  data_1_ctrl_fpu_sqrt = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  data_1_ctrl_fpu_fcvt = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  data_1_ctrl_fpu_typ = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  data_1_ctrl_fpu_fmt = _RAND_75[1:0];
  _RAND_76 = {1{`RANDOM}};
  data_1_ctrl_fpu_ren3 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  data_1_ctrl_fpu_rm = _RAND_77[2:0];
  _RAND_78 = {1{`RANDOM}};
  data_1_psrc_0 = _RAND_78[5:0];
  _RAND_79 = {1{`RANDOM}};
  data_1_psrc_1 = _RAND_79[5:0];
  _RAND_80 = {1{`RANDOM}};
  data_1_psrc_2 = _RAND_80[5:0];
  _RAND_81 = {1{`RANDOM}};
  data_1_pdest = _RAND_81[5:0];
  _RAND_82 = {1{`RANDOM}};
  data_1_robIdx_flag = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  data_1_robIdx_value = _RAND_83[4:0];
  _RAND_84 = {1{`RANDOM}};
  data_2_cf_trigger_backendEn_0 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  data_2_cf_trigger_backendEn_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  data_2_cf_pd_isRVC = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  data_2_cf_pd_brType = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  data_2_cf_pd_isCall = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  data_2_cf_pd_isRet = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  data_2_cf_pred_taken = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  data_2_cf_storeSetHit = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  data_2_cf_loadWaitStrict = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  data_2_cf_ssid = _RAND_93[4:0];
  _RAND_94 = {1{`RANDOM}};
  data_2_cf_ftqPtr_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  data_2_cf_ftqPtr_value = _RAND_95[2:0];
  _RAND_96 = {1{`RANDOM}};
  data_2_cf_ftqOffset = _RAND_96[2:0];
  _RAND_97 = {1{`RANDOM}};
  data_2_ctrl_srcType_0 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  data_2_ctrl_srcType_1 = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  data_2_ctrl_srcType_2 = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  data_2_ctrl_fuType = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  data_2_ctrl_fuOpType = _RAND_101[6:0];
  _RAND_102 = {1{`RANDOM}};
  data_2_ctrl_rfWen = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  data_2_ctrl_fpWen = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  data_2_ctrl_selImm = _RAND_104[3:0];
  _RAND_105 = {1{`RANDOM}};
  data_2_ctrl_imm = _RAND_105[19:0];
  _RAND_106 = {1{`RANDOM}};
  data_2_ctrl_fpu_isAddSub = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  data_2_ctrl_fpu_typeTagIn = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  data_2_ctrl_fpu_typeTagOut = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  data_2_ctrl_fpu_fromInt = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  data_2_ctrl_fpu_wflags = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  data_2_ctrl_fpu_fpWen = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  data_2_ctrl_fpu_fmaCmd = _RAND_112[1:0];
  _RAND_113 = {1{`RANDOM}};
  data_2_ctrl_fpu_div = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  data_2_ctrl_fpu_sqrt = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  data_2_ctrl_fpu_fcvt = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  data_2_ctrl_fpu_typ = _RAND_116[1:0];
  _RAND_117 = {1{`RANDOM}};
  data_2_ctrl_fpu_fmt = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  data_2_ctrl_fpu_ren3 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  data_2_ctrl_fpu_rm = _RAND_119[2:0];
  _RAND_120 = {1{`RANDOM}};
  data_2_psrc_0 = _RAND_120[5:0];
  _RAND_121 = {1{`RANDOM}};
  data_2_psrc_1 = _RAND_121[5:0];
  _RAND_122 = {1{`RANDOM}};
  data_2_psrc_2 = _RAND_122[5:0];
  _RAND_123 = {1{`RANDOM}};
  data_2_pdest = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  data_2_robIdx_flag = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  data_2_robIdx_value = _RAND_125[4:0];
  _RAND_126 = {1{`RANDOM}};
  data_3_cf_trigger_backendEn_0 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  data_3_cf_trigger_backendEn_1 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  data_3_cf_pd_isRVC = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  data_3_cf_pd_brType = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  data_3_cf_pd_isCall = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  data_3_cf_pd_isRet = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  data_3_cf_pred_taken = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  data_3_cf_storeSetHit = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  data_3_cf_loadWaitStrict = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  data_3_cf_ssid = _RAND_135[4:0];
  _RAND_136 = {1{`RANDOM}};
  data_3_cf_ftqPtr_flag = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  data_3_cf_ftqPtr_value = _RAND_137[2:0];
  _RAND_138 = {1{`RANDOM}};
  data_3_cf_ftqOffset = _RAND_138[2:0];
  _RAND_139 = {1{`RANDOM}};
  data_3_ctrl_srcType_0 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  data_3_ctrl_srcType_1 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  data_3_ctrl_srcType_2 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  data_3_ctrl_fuType = _RAND_142[3:0];
  _RAND_143 = {1{`RANDOM}};
  data_3_ctrl_fuOpType = _RAND_143[6:0];
  _RAND_144 = {1{`RANDOM}};
  data_3_ctrl_rfWen = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  data_3_ctrl_fpWen = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  data_3_ctrl_selImm = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  data_3_ctrl_imm = _RAND_147[19:0];
  _RAND_148 = {1{`RANDOM}};
  data_3_ctrl_fpu_isAddSub = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  data_3_ctrl_fpu_typeTagIn = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  data_3_ctrl_fpu_typeTagOut = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  data_3_ctrl_fpu_fromInt = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  data_3_ctrl_fpu_wflags = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  data_3_ctrl_fpu_fpWen = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  data_3_ctrl_fpu_fmaCmd = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  data_3_ctrl_fpu_div = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  data_3_ctrl_fpu_sqrt = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  data_3_ctrl_fpu_fcvt = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  data_3_ctrl_fpu_typ = _RAND_158[1:0];
  _RAND_159 = {1{`RANDOM}};
  data_3_ctrl_fpu_fmt = _RAND_159[1:0];
  _RAND_160 = {1{`RANDOM}};
  data_3_ctrl_fpu_ren3 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  data_3_ctrl_fpu_rm = _RAND_161[2:0];
  _RAND_162 = {1{`RANDOM}};
  data_3_psrc_0 = _RAND_162[5:0];
  _RAND_163 = {1{`RANDOM}};
  data_3_psrc_1 = _RAND_163[5:0];
  _RAND_164 = {1{`RANDOM}};
  data_3_psrc_2 = _RAND_164[5:0];
  _RAND_165 = {1{`RANDOM}};
  data_3_pdest = _RAND_165[5:0];
  _RAND_166 = {1{`RANDOM}};
  data_3_robIdx_flag = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  data_3_robIdx_value = _RAND_167[4:0];
  _RAND_168 = {1{`RANDOM}};
  data_4_cf_trigger_backendEn_0 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  data_4_cf_trigger_backendEn_1 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  data_4_cf_pd_isRVC = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  data_4_cf_pd_brType = _RAND_171[1:0];
  _RAND_172 = {1{`RANDOM}};
  data_4_cf_pd_isCall = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  data_4_cf_pd_isRet = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  data_4_cf_pred_taken = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  data_4_cf_storeSetHit = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  data_4_cf_loadWaitStrict = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  data_4_cf_ssid = _RAND_177[4:0];
  _RAND_178 = {1{`RANDOM}};
  data_4_cf_ftqPtr_flag = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  data_4_cf_ftqPtr_value = _RAND_179[2:0];
  _RAND_180 = {1{`RANDOM}};
  data_4_cf_ftqOffset = _RAND_180[2:0];
  _RAND_181 = {1{`RANDOM}};
  data_4_ctrl_srcType_0 = _RAND_181[1:0];
  _RAND_182 = {1{`RANDOM}};
  data_4_ctrl_srcType_1 = _RAND_182[1:0];
  _RAND_183 = {1{`RANDOM}};
  data_4_ctrl_srcType_2 = _RAND_183[1:0];
  _RAND_184 = {1{`RANDOM}};
  data_4_ctrl_fuType = _RAND_184[3:0];
  _RAND_185 = {1{`RANDOM}};
  data_4_ctrl_fuOpType = _RAND_185[6:0];
  _RAND_186 = {1{`RANDOM}};
  data_4_ctrl_rfWen = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  data_4_ctrl_fpWen = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  data_4_ctrl_selImm = _RAND_188[3:0];
  _RAND_189 = {1{`RANDOM}};
  data_4_ctrl_imm = _RAND_189[19:0];
  _RAND_190 = {1{`RANDOM}};
  data_4_ctrl_fpu_isAddSub = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  data_4_ctrl_fpu_typeTagIn = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  data_4_ctrl_fpu_typeTagOut = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  data_4_ctrl_fpu_fromInt = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  data_4_ctrl_fpu_wflags = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  data_4_ctrl_fpu_fpWen = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  data_4_ctrl_fpu_fmaCmd = _RAND_196[1:0];
  _RAND_197 = {1{`RANDOM}};
  data_4_ctrl_fpu_div = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  data_4_ctrl_fpu_sqrt = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  data_4_ctrl_fpu_fcvt = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  data_4_ctrl_fpu_typ = _RAND_200[1:0];
  _RAND_201 = {1{`RANDOM}};
  data_4_ctrl_fpu_fmt = _RAND_201[1:0];
  _RAND_202 = {1{`RANDOM}};
  data_4_ctrl_fpu_ren3 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  data_4_ctrl_fpu_rm = _RAND_203[2:0];
  _RAND_204 = {1{`RANDOM}};
  data_4_psrc_0 = _RAND_204[5:0];
  _RAND_205 = {1{`RANDOM}};
  data_4_psrc_1 = _RAND_205[5:0];
  _RAND_206 = {1{`RANDOM}};
  data_4_psrc_2 = _RAND_206[5:0];
  _RAND_207 = {1{`RANDOM}};
  data_4_pdest = _RAND_207[5:0];
  _RAND_208 = {1{`RANDOM}};
  data_4_robIdx_flag = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  data_4_robIdx_value = _RAND_209[4:0];
  _RAND_210 = {1{`RANDOM}};
  data_5_cf_trigger_backendEn_0 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  data_5_cf_trigger_backendEn_1 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  data_5_cf_pd_isRVC = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  data_5_cf_pd_brType = _RAND_213[1:0];
  _RAND_214 = {1{`RANDOM}};
  data_5_cf_pd_isCall = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  data_5_cf_pd_isRet = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  data_5_cf_pred_taken = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  data_5_cf_storeSetHit = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  data_5_cf_loadWaitStrict = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  data_5_cf_ssid = _RAND_219[4:0];
  _RAND_220 = {1{`RANDOM}};
  data_5_cf_ftqPtr_flag = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  data_5_cf_ftqPtr_value = _RAND_221[2:0];
  _RAND_222 = {1{`RANDOM}};
  data_5_cf_ftqOffset = _RAND_222[2:0];
  _RAND_223 = {1{`RANDOM}};
  data_5_ctrl_srcType_0 = _RAND_223[1:0];
  _RAND_224 = {1{`RANDOM}};
  data_5_ctrl_srcType_1 = _RAND_224[1:0];
  _RAND_225 = {1{`RANDOM}};
  data_5_ctrl_srcType_2 = _RAND_225[1:0];
  _RAND_226 = {1{`RANDOM}};
  data_5_ctrl_fuType = _RAND_226[3:0];
  _RAND_227 = {1{`RANDOM}};
  data_5_ctrl_fuOpType = _RAND_227[6:0];
  _RAND_228 = {1{`RANDOM}};
  data_5_ctrl_rfWen = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  data_5_ctrl_fpWen = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  data_5_ctrl_selImm = _RAND_230[3:0];
  _RAND_231 = {1{`RANDOM}};
  data_5_ctrl_imm = _RAND_231[19:0];
  _RAND_232 = {1{`RANDOM}};
  data_5_ctrl_fpu_isAddSub = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  data_5_ctrl_fpu_typeTagIn = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  data_5_ctrl_fpu_typeTagOut = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  data_5_ctrl_fpu_fromInt = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  data_5_ctrl_fpu_wflags = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  data_5_ctrl_fpu_fpWen = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  data_5_ctrl_fpu_fmaCmd = _RAND_238[1:0];
  _RAND_239 = {1{`RANDOM}};
  data_5_ctrl_fpu_div = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  data_5_ctrl_fpu_sqrt = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  data_5_ctrl_fpu_fcvt = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  data_5_ctrl_fpu_typ = _RAND_242[1:0];
  _RAND_243 = {1{`RANDOM}};
  data_5_ctrl_fpu_fmt = _RAND_243[1:0];
  _RAND_244 = {1{`RANDOM}};
  data_5_ctrl_fpu_ren3 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  data_5_ctrl_fpu_rm = _RAND_245[2:0];
  _RAND_246 = {1{`RANDOM}};
  data_5_psrc_0 = _RAND_246[5:0];
  _RAND_247 = {1{`RANDOM}};
  data_5_psrc_1 = _RAND_247[5:0];
  _RAND_248 = {1{`RANDOM}};
  data_5_psrc_2 = _RAND_248[5:0];
  _RAND_249 = {1{`RANDOM}};
  data_5_pdest = _RAND_249[5:0];
  _RAND_250 = {1{`RANDOM}};
  data_5_robIdx_flag = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  data_5_robIdx_value = _RAND_251[4:0];
  _RAND_252 = {1{`RANDOM}};
  data_6_cf_trigger_backendEn_0 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  data_6_cf_trigger_backendEn_1 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  data_6_cf_pd_isRVC = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  data_6_cf_pd_brType = _RAND_255[1:0];
  _RAND_256 = {1{`RANDOM}};
  data_6_cf_pd_isCall = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  data_6_cf_pd_isRet = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  data_6_cf_pred_taken = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  data_6_cf_storeSetHit = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  data_6_cf_loadWaitStrict = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  data_6_cf_ssid = _RAND_261[4:0];
  _RAND_262 = {1{`RANDOM}};
  data_6_cf_ftqPtr_flag = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  data_6_cf_ftqPtr_value = _RAND_263[2:0];
  _RAND_264 = {1{`RANDOM}};
  data_6_cf_ftqOffset = _RAND_264[2:0];
  _RAND_265 = {1{`RANDOM}};
  data_6_ctrl_srcType_0 = _RAND_265[1:0];
  _RAND_266 = {1{`RANDOM}};
  data_6_ctrl_srcType_1 = _RAND_266[1:0];
  _RAND_267 = {1{`RANDOM}};
  data_6_ctrl_srcType_2 = _RAND_267[1:0];
  _RAND_268 = {1{`RANDOM}};
  data_6_ctrl_fuType = _RAND_268[3:0];
  _RAND_269 = {1{`RANDOM}};
  data_6_ctrl_fuOpType = _RAND_269[6:0];
  _RAND_270 = {1{`RANDOM}};
  data_6_ctrl_rfWen = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  data_6_ctrl_fpWen = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  data_6_ctrl_selImm = _RAND_272[3:0];
  _RAND_273 = {1{`RANDOM}};
  data_6_ctrl_imm = _RAND_273[19:0];
  _RAND_274 = {1{`RANDOM}};
  data_6_ctrl_fpu_isAddSub = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  data_6_ctrl_fpu_typeTagIn = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  data_6_ctrl_fpu_typeTagOut = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  data_6_ctrl_fpu_fromInt = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  data_6_ctrl_fpu_wflags = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  data_6_ctrl_fpu_fpWen = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  data_6_ctrl_fpu_fmaCmd = _RAND_280[1:0];
  _RAND_281 = {1{`RANDOM}};
  data_6_ctrl_fpu_div = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  data_6_ctrl_fpu_sqrt = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  data_6_ctrl_fpu_fcvt = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  data_6_ctrl_fpu_typ = _RAND_284[1:0];
  _RAND_285 = {1{`RANDOM}};
  data_6_ctrl_fpu_fmt = _RAND_285[1:0];
  _RAND_286 = {1{`RANDOM}};
  data_6_ctrl_fpu_ren3 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  data_6_ctrl_fpu_rm = _RAND_287[2:0];
  _RAND_288 = {1{`RANDOM}};
  data_6_psrc_0 = _RAND_288[5:0];
  _RAND_289 = {1{`RANDOM}};
  data_6_psrc_1 = _RAND_289[5:0];
  _RAND_290 = {1{`RANDOM}};
  data_6_psrc_2 = _RAND_290[5:0];
  _RAND_291 = {1{`RANDOM}};
  data_6_pdest = _RAND_291[5:0];
  _RAND_292 = {1{`RANDOM}};
  data_6_robIdx_flag = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  data_6_robIdx_value = _RAND_293[4:0];
  _RAND_294 = {1{`RANDOM}};
  data_7_cf_trigger_backendEn_0 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  data_7_cf_trigger_backendEn_1 = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  data_7_cf_pd_isRVC = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  data_7_cf_pd_brType = _RAND_297[1:0];
  _RAND_298 = {1{`RANDOM}};
  data_7_cf_pd_isCall = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  data_7_cf_pd_isRet = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  data_7_cf_pred_taken = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  data_7_cf_storeSetHit = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  data_7_cf_loadWaitStrict = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  data_7_cf_ssid = _RAND_303[4:0];
  _RAND_304 = {1{`RANDOM}};
  data_7_cf_ftqPtr_flag = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  data_7_cf_ftqPtr_value = _RAND_305[2:0];
  _RAND_306 = {1{`RANDOM}};
  data_7_cf_ftqOffset = _RAND_306[2:0];
  _RAND_307 = {1{`RANDOM}};
  data_7_ctrl_srcType_0 = _RAND_307[1:0];
  _RAND_308 = {1{`RANDOM}};
  data_7_ctrl_srcType_1 = _RAND_308[1:0];
  _RAND_309 = {1{`RANDOM}};
  data_7_ctrl_srcType_2 = _RAND_309[1:0];
  _RAND_310 = {1{`RANDOM}};
  data_7_ctrl_fuType = _RAND_310[3:0];
  _RAND_311 = {1{`RANDOM}};
  data_7_ctrl_fuOpType = _RAND_311[6:0];
  _RAND_312 = {1{`RANDOM}};
  data_7_ctrl_rfWen = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  data_7_ctrl_fpWen = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  data_7_ctrl_selImm = _RAND_314[3:0];
  _RAND_315 = {1{`RANDOM}};
  data_7_ctrl_imm = _RAND_315[19:0];
  _RAND_316 = {1{`RANDOM}};
  data_7_ctrl_fpu_isAddSub = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  data_7_ctrl_fpu_typeTagIn = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  data_7_ctrl_fpu_typeTagOut = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  data_7_ctrl_fpu_fromInt = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  data_7_ctrl_fpu_wflags = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  data_7_ctrl_fpu_fpWen = _RAND_321[0:0];
  _RAND_322 = {1{`RANDOM}};
  data_7_ctrl_fpu_fmaCmd = _RAND_322[1:0];
  _RAND_323 = {1{`RANDOM}};
  data_7_ctrl_fpu_div = _RAND_323[0:0];
  _RAND_324 = {1{`RANDOM}};
  data_7_ctrl_fpu_sqrt = _RAND_324[0:0];
  _RAND_325 = {1{`RANDOM}};
  data_7_ctrl_fpu_fcvt = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  data_7_ctrl_fpu_typ = _RAND_326[1:0];
  _RAND_327 = {1{`RANDOM}};
  data_7_ctrl_fpu_fmt = _RAND_327[1:0];
  _RAND_328 = {1{`RANDOM}};
  data_7_ctrl_fpu_ren3 = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  data_7_ctrl_fpu_rm = _RAND_329[2:0];
  _RAND_330 = {1{`RANDOM}};
  data_7_psrc_0 = _RAND_330[5:0];
  _RAND_331 = {1{`RANDOM}};
  data_7_psrc_1 = _RAND_331[5:0];
  _RAND_332 = {1{`RANDOM}};
  data_7_psrc_2 = _RAND_332[5:0];
  _RAND_333 = {1{`RANDOM}};
  data_7_pdest = _RAND_333[5:0];
  _RAND_334 = {1{`RANDOM}};
  data_7_robIdx_flag = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  data_7_robIdx_value = _RAND_335[4:0];
  _RAND_336 = {1{`RANDOM}};
  data_8_cf_trigger_backendEn_0 = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  data_8_cf_trigger_backendEn_1 = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  data_8_cf_pd_isRVC = _RAND_338[0:0];
  _RAND_339 = {1{`RANDOM}};
  data_8_cf_pd_brType = _RAND_339[1:0];
  _RAND_340 = {1{`RANDOM}};
  data_8_cf_pd_isCall = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  data_8_cf_pd_isRet = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  data_8_cf_pred_taken = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  data_8_cf_storeSetHit = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  data_8_cf_loadWaitStrict = _RAND_344[0:0];
  _RAND_345 = {1{`RANDOM}};
  data_8_cf_ssid = _RAND_345[4:0];
  _RAND_346 = {1{`RANDOM}};
  data_8_cf_ftqPtr_flag = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  data_8_cf_ftqPtr_value = _RAND_347[2:0];
  _RAND_348 = {1{`RANDOM}};
  data_8_cf_ftqOffset = _RAND_348[2:0];
  _RAND_349 = {1{`RANDOM}};
  data_8_ctrl_srcType_0 = _RAND_349[1:0];
  _RAND_350 = {1{`RANDOM}};
  data_8_ctrl_srcType_1 = _RAND_350[1:0];
  _RAND_351 = {1{`RANDOM}};
  data_8_ctrl_srcType_2 = _RAND_351[1:0];
  _RAND_352 = {1{`RANDOM}};
  data_8_ctrl_fuType = _RAND_352[3:0];
  _RAND_353 = {1{`RANDOM}};
  data_8_ctrl_fuOpType = _RAND_353[6:0];
  _RAND_354 = {1{`RANDOM}};
  data_8_ctrl_rfWen = _RAND_354[0:0];
  _RAND_355 = {1{`RANDOM}};
  data_8_ctrl_fpWen = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  data_8_ctrl_selImm = _RAND_356[3:0];
  _RAND_357 = {1{`RANDOM}};
  data_8_ctrl_imm = _RAND_357[19:0];
  _RAND_358 = {1{`RANDOM}};
  data_8_ctrl_fpu_isAddSub = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  data_8_ctrl_fpu_typeTagIn = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  data_8_ctrl_fpu_typeTagOut = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  data_8_ctrl_fpu_fromInt = _RAND_361[0:0];
  _RAND_362 = {1{`RANDOM}};
  data_8_ctrl_fpu_wflags = _RAND_362[0:0];
  _RAND_363 = {1{`RANDOM}};
  data_8_ctrl_fpu_fpWen = _RAND_363[0:0];
  _RAND_364 = {1{`RANDOM}};
  data_8_ctrl_fpu_fmaCmd = _RAND_364[1:0];
  _RAND_365 = {1{`RANDOM}};
  data_8_ctrl_fpu_div = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  data_8_ctrl_fpu_sqrt = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  data_8_ctrl_fpu_fcvt = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  data_8_ctrl_fpu_typ = _RAND_368[1:0];
  _RAND_369 = {1{`RANDOM}};
  data_8_ctrl_fpu_fmt = _RAND_369[1:0];
  _RAND_370 = {1{`RANDOM}};
  data_8_ctrl_fpu_ren3 = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  data_8_ctrl_fpu_rm = _RAND_371[2:0];
  _RAND_372 = {1{`RANDOM}};
  data_8_psrc_0 = _RAND_372[5:0];
  _RAND_373 = {1{`RANDOM}};
  data_8_psrc_1 = _RAND_373[5:0];
  _RAND_374 = {1{`RANDOM}};
  data_8_psrc_2 = _RAND_374[5:0];
  _RAND_375 = {1{`RANDOM}};
  data_8_pdest = _RAND_375[5:0];
  _RAND_376 = {1{`RANDOM}};
  data_8_robIdx_flag = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  data_8_robIdx_value = _RAND_377[4:0];
  _RAND_378 = {1{`RANDOM}};
  data_9_cf_trigger_backendEn_0 = _RAND_378[0:0];
  _RAND_379 = {1{`RANDOM}};
  data_9_cf_trigger_backendEn_1 = _RAND_379[0:0];
  _RAND_380 = {1{`RANDOM}};
  data_9_cf_pd_isRVC = _RAND_380[0:0];
  _RAND_381 = {1{`RANDOM}};
  data_9_cf_pd_brType = _RAND_381[1:0];
  _RAND_382 = {1{`RANDOM}};
  data_9_cf_pd_isCall = _RAND_382[0:0];
  _RAND_383 = {1{`RANDOM}};
  data_9_cf_pd_isRet = _RAND_383[0:0];
  _RAND_384 = {1{`RANDOM}};
  data_9_cf_pred_taken = _RAND_384[0:0];
  _RAND_385 = {1{`RANDOM}};
  data_9_cf_storeSetHit = _RAND_385[0:0];
  _RAND_386 = {1{`RANDOM}};
  data_9_cf_loadWaitStrict = _RAND_386[0:0];
  _RAND_387 = {1{`RANDOM}};
  data_9_cf_ssid = _RAND_387[4:0];
  _RAND_388 = {1{`RANDOM}};
  data_9_cf_ftqPtr_flag = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  data_9_cf_ftqPtr_value = _RAND_389[2:0];
  _RAND_390 = {1{`RANDOM}};
  data_9_cf_ftqOffset = _RAND_390[2:0];
  _RAND_391 = {1{`RANDOM}};
  data_9_ctrl_srcType_0 = _RAND_391[1:0];
  _RAND_392 = {1{`RANDOM}};
  data_9_ctrl_srcType_1 = _RAND_392[1:0];
  _RAND_393 = {1{`RANDOM}};
  data_9_ctrl_srcType_2 = _RAND_393[1:0];
  _RAND_394 = {1{`RANDOM}};
  data_9_ctrl_fuType = _RAND_394[3:0];
  _RAND_395 = {1{`RANDOM}};
  data_9_ctrl_fuOpType = _RAND_395[6:0];
  _RAND_396 = {1{`RANDOM}};
  data_9_ctrl_rfWen = _RAND_396[0:0];
  _RAND_397 = {1{`RANDOM}};
  data_9_ctrl_fpWen = _RAND_397[0:0];
  _RAND_398 = {1{`RANDOM}};
  data_9_ctrl_selImm = _RAND_398[3:0];
  _RAND_399 = {1{`RANDOM}};
  data_9_ctrl_imm = _RAND_399[19:0];
  _RAND_400 = {1{`RANDOM}};
  data_9_ctrl_fpu_isAddSub = _RAND_400[0:0];
  _RAND_401 = {1{`RANDOM}};
  data_9_ctrl_fpu_typeTagIn = _RAND_401[0:0];
  _RAND_402 = {1{`RANDOM}};
  data_9_ctrl_fpu_typeTagOut = _RAND_402[0:0];
  _RAND_403 = {1{`RANDOM}};
  data_9_ctrl_fpu_fromInt = _RAND_403[0:0];
  _RAND_404 = {1{`RANDOM}};
  data_9_ctrl_fpu_wflags = _RAND_404[0:0];
  _RAND_405 = {1{`RANDOM}};
  data_9_ctrl_fpu_fpWen = _RAND_405[0:0];
  _RAND_406 = {1{`RANDOM}};
  data_9_ctrl_fpu_fmaCmd = _RAND_406[1:0];
  _RAND_407 = {1{`RANDOM}};
  data_9_ctrl_fpu_div = _RAND_407[0:0];
  _RAND_408 = {1{`RANDOM}};
  data_9_ctrl_fpu_sqrt = _RAND_408[0:0];
  _RAND_409 = {1{`RANDOM}};
  data_9_ctrl_fpu_fcvt = _RAND_409[0:0];
  _RAND_410 = {1{`RANDOM}};
  data_9_ctrl_fpu_typ = _RAND_410[1:0];
  _RAND_411 = {1{`RANDOM}};
  data_9_ctrl_fpu_fmt = _RAND_411[1:0];
  _RAND_412 = {1{`RANDOM}};
  data_9_ctrl_fpu_ren3 = _RAND_412[0:0];
  _RAND_413 = {1{`RANDOM}};
  data_9_ctrl_fpu_rm = _RAND_413[2:0];
  _RAND_414 = {1{`RANDOM}};
  data_9_psrc_0 = _RAND_414[5:0];
  _RAND_415 = {1{`RANDOM}};
  data_9_psrc_1 = _RAND_415[5:0];
  _RAND_416 = {1{`RANDOM}};
  data_9_psrc_2 = _RAND_416[5:0];
  _RAND_417 = {1{`RANDOM}};
  data_9_pdest = _RAND_417[5:0];
  _RAND_418 = {1{`RANDOM}};
  data_9_robIdx_flag = _RAND_418[0:0];
  _RAND_419 = {1{`RANDOM}};
  data_9_robIdx_value = _RAND_419[4:0];
  _RAND_420 = {1{`RANDOM}};
  data_10_cf_trigger_backendEn_0 = _RAND_420[0:0];
  _RAND_421 = {1{`RANDOM}};
  data_10_cf_trigger_backendEn_1 = _RAND_421[0:0];
  _RAND_422 = {1{`RANDOM}};
  data_10_cf_pd_isRVC = _RAND_422[0:0];
  _RAND_423 = {1{`RANDOM}};
  data_10_cf_pd_brType = _RAND_423[1:0];
  _RAND_424 = {1{`RANDOM}};
  data_10_cf_pd_isCall = _RAND_424[0:0];
  _RAND_425 = {1{`RANDOM}};
  data_10_cf_pd_isRet = _RAND_425[0:0];
  _RAND_426 = {1{`RANDOM}};
  data_10_cf_pred_taken = _RAND_426[0:0];
  _RAND_427 = {1{`RANDOM}};
  data_10_cf_storeSetHit = _RAND_427[0:0];
  _RAND_428 = {1{`RANDOM}};
  data_10_cf_loadWaitStrict = _RAND_428[0:0];
  _RAND_429 = {1{`RANDOM}};
  data_10_cf_ssid = _RAND_429[4:0];
  _RAND_430 = {1{`RANDOM}};
  data_10_cf_ftqPtr_flag = _RAND_430[0:0];
  _RAND_431 = {1{`RANDOM}};
  data_10_cf_ftqPtr_value = _RAND_431[2:0];
  _RAND_432 = {1{`RANDOM}};
  data_10_cf_ftqOffset = _RAND_432[2:0];
  _RAND_433 = {1{`RANDOM}};
  data_10_ctrl_srcType_0 = _RAND_433[1:0];
  _RAND_434 = {1{`RANDOM}};
  data_10_ctrl_srcType_1 = _RAND_434[1:0];
  _RAND_435 = {1{`RANDOM}};
  data_10_ctrl_srcType_2 = _RAND_435[1:0];
  _RAND_436 = {1{`RANDOM}};
  data_10_ctrl_fuType = _RAND_436[3:0];
  _RAND_437 = {1{`RANDOM}};
  data_10_ctrl_fuOpType = _RAND_437[6:0];
  _RAND_438 = {1{`RANDOM}};
  data_10_ctrl_rfWen = _RAND_438[0:0];
  _RAND_439 = {1{`RANDOM}};
  data_10_ctrl_fpWen = _RAND_439[0:0];
  _RAND_440 = {1{`RANDOM}};
  data_10_ctrl_selImm = _RAND_440[3:0];
  _RAND_441 = {1{`RANDOM}};
  data_10_ctrl_imm = _RAND_441[19:0];
  _RAND_442 = {1{`RANDOM}};
  data_10_ctrl_fpu_isAddSub = _RAND_442[0:0];
  _RAND_443 = {1{`RANDOM}};
  data_10_ctrl_fpu_typeTagIn = _RAND_443[0:0];
  _RAND_444 = {1{`RANDOM}};
  data_10_ctrl_fpu_typeTagOut = _RAND_444[0:0];
  _RAND_445 = {1{`RANDOM}};
  data_10_ctrl_fpu_fromInt = _RAND_445[0:0];
  _RAND_446 = {1{`RANDOM}};
  data_10_ctrl_fpu_wflags = _RAND_446[0:0];
  _RAND_447 = {1{`RANDOM}};
  data_10_ctrl_fpu_fpWen = _RAND_447[0:0];
  _RAND_448 = {1{`RANDOM}};
  data_10_ctrl_fpu_fmaCmd = _RAND_448[1:0];
  _RAND_449 = {1{`RANDOM}};
  data_10_ctrl_fpu_div = _RAND_449[0:0];
  _RAND_450 = {1{`RANDOM}};
  data_10_ctrl_fpu_sqrt = _RAND_450[0:0];
  _RAND_451 = {1{`RANDOM}};
  data_10_ctrl_fpu_fcvt = _RAND_451[0:0];
  _RAND_452 = {1{`RANDOM}};
  data_10_ctrl_fpu_typ = _RAND_452[1:0];
  _RAND_453 = {1{`RANDOM}};
  data_10_ctrl_fpu_fmt = _RAND_453[1:0];
  _RAND_454 = {1{`RANDOM}};
  data_10_ctrl_fpu_ren3 = _RAND_454[0:0];
  _RAND_455 = {1{`RANDOM}};
  data_10_ctrl_fpu_rm = _RAND_455[2:0];
  _RAND_456 = {1{`RANDOM}};
  data_10_psrc_0 = _RAND_456[5:0];
  _RAND_457 = {1{`RANDOM}};
  data_10_psrc_1 = _RAND_457[5:0];
  _RAND_458 = {1{`RANDOM}};
  data_10_psrc_2 = _RAND_458[5:0];
  _RAND_459 = {1{`RANDOM}};
  data_10_pdest = _RAND_459[5:0];
  _RAND_460 = {1{`RANDOM}};
  data_10_robIdx_flag = _RAND_460[0:0];
  _RAND_461 = {1{`RANDOM}};
  data_10_robIdx_value = _RAND_461[4:0];
  _RAND_462 = {1{`RANDOM}};
  data_11_cf_trigger_backendEn_0 = _RAND_462[0:0];
  _RAND_463 = {1{`RANDOM}};
  data_11_cf_trigger_backendEn_1 = _RAND_463[0:0];
  _RAND_464 = {1{`RANDOM}};
  data_11_cf_pd_isRVC = _RAND_464[0:0];
  _RAND_465 = {1{`RANDOM}};
  data_11_cf_pd_brType = _RAND_465[1:0];
  _RAND_466 = {1{`RANDOM}};
  data_11_cf_pd_isCall = _RAND_466[0:0];
  _RAND_467 = {1{`RANDOM}};
  data_11_cf_pd_isRet = _RAND_467[0:0];
  _RAND_468 = {1{`RANDOM}};
  data_11_cf_pred_taken = _RAND_468[0:0];
  _RAND_469 = {1{`RANDOM}};
  data_11_cf_storeSetHit = _RAND_469[0:0];
  _RAND_470 = {1{`RANDOM}};
  data_11_cf_loadWaitStrict = _RAND_470[0:0];
  _RAND_471 = {1{`RANDOM}};
  data_11_cf_ssid = _RAND_471[4:0];
  _RAND_472 = {1{`RANDOM}};
  data_11_cf_ftqPtr_flag = _RAND_472[0:0];
  _RAND_473 = {1{`RANDOM}};
  data_11_cf_ftqPtr_value = _RAND_473[2:0];
  _RAND_474 = {1{`RANDOM}};
  data_11_cf_ftqOffset = _RAND_474[2:0];
  _RAND_475 = {1{`RANDOM}};
  data_11_ctrl_srcType_0 = _RAND_475[1:0];
  _RAND_476 = {1{`RANDOM}};
  data_11_ctrl_srcType_1 = _RAND_476[1:0];
  _RAND_477 = {1{`RANDOM}};
  data_11_ctrl_srcType_2 = _RAND_477[1:0];
  _RAND_478 = {1{`RANDOM}};
  data_11_ctrl_fuType = _RAND_478[3:0];
  _RAND_479 = {1{`RANDOM}};
  data_11_ctrl_fuOpType = _RAND_479[6:0];
  _RAND_480 = {1{`RANDOM}};
  data_11_ctrl_rfWen = _RAND_480[0:0];
  _RAND_481 = {1{`RANDOM}};
  data_11_ctrl_fpWen = _RAND_481[0:0];
  _RAND_482 = {1{`RANDOM}};
  data_11_ctrl_selImm = _RAND_482[3:0];
  _RAND_483 = {1{`RANDOM}};
  data_11_ctrl_imm = _RAND_483[19:0];
  _RAND_484 = {1{`RANDOM}};
  data_11_ctrl_fpu_isAddSub = _RAND_484[0:0];
  _RAND_485 = {1{`RANDOM}};
  data_11_ctrl_fpu_typeTagIn = _RAND_485[0:0];
  _RAND_486 = {1{`RANDOM}};
  data_11_ctrl_fpu_typeTagOut = _RAND_486[0:0];
  _RAND_487 = {1{`RANDOM}};
  data_11_ctrl_fpu_fromInt = _RAND_487[0:0];
  _RAND_488 = {1{`RANDOM}};
  data_11_ctrl_fpu_wflags = _RAND_488[0:0];
  _RAND_489 = {1{`RANDOM}};
  data_11_ctrl_fpu_fpWen = _RAND_489[0:0];
  _RAND_490 = {1{`RANDOM}};
  data_11_ctrl_fpu_fmaCmd = _RAND_490[1:0];
  _RAND_491 = {1{`RANDOM}};
  data_11_ctrl_fpu_div = _RAND_491[0:0];
  _RAND_492 = {1{`RANDOM}};
  data_11_ctrl_fpu_sqrt = _RAND_492[0:0];
  _RAND_493 = {1{`RANDOM}};
  data_11_ctrl_fpu_fcvt = _RAND_493[0:0];
  _RAND_494 = {1{`RANDOM}};
  data_11_ctrl_fpu_typ = _RAND_494[1:0];
  _RAND_495 = {1{`RANDOM}};
  data_11_ctrl_fpu_fmt = _RAND_495[1:0];
  _RAND_496 = {1{`RANDOM}};
  data_11_ctrl_fpu_ren3 = _RAND_496[0:0];
  _RAND_497 = {1{`RANDOM}};
  data_11_ctrl_fpu_rm = _RAND_497[2:0];
  _RAND_498 = {1{`RANDOM}};
  data_11_psrc_0 = _RAND_498[5:0];
  _RAND_499 = {1{`RANDOM}};
  data_11_psrc_1 = _RAND_499[5:0];
  _RAND_500 = {1{`RANDOM}};
  data_11_psrc_2 = _RAND_500[5:0];
  _RAND_501 = {1{`RANDOM}};
  data_11_pdest = _RAND_501[5:0];
  _RAND_502 = {1{`RANDOM}};
  data_11_robIdx_flag = _RAND_502[0:0];
  _RAND_503 = {1{`RANDOM}};
  data_11_robIdx_value = _RAND_503[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

