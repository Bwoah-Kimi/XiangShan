module NegedgeDataModule__16entry(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  input  [3:0]  io_raddr_2,
  input  [3:0]  io_raddr_3,
  output        io_rdata_0_pd_isRVC,
  output [1:0]  io_rdata_0_pd_brType,
  output        io_rdata_0_pd_isCall,
  output        io_rdata_0_pd_isRet,
  output        io_rdata_0_pred_taken,
  output        io_rdata_0_ftqPtr_flag,
  output [2:0]  io_rdata_0_ftqPtr_value,
  output [2:0]  io_rdata_0_ftqOffset,
  output        io_rdata_0_crossPageIPFFix,
  output        io_rdata_0_triggered_frontendHit_0,
  output        io_rdata_0_triggered_frontendHit_1,
  output        io_rdata_0_triggered_frontendHit_2,
  output        io_rdata_0_triggered_frontendHit_3,
  output        io_rdata_0_triggered_backendEn_0,
  output        io_rdata_0_triggered_backendEn_1,
  output        io_rdata_1_pd_isRVC,
  output [1:0]  io_rdata_1_pd_brType,
  output        io_rdata_1_pd_isCall,
  output        io_rdata_1_pd_isRet,
  output        io_rdata_1_pred_taken,
  output        io_rdata_1_ftqPtr_flag,
  output [2:0]  io_rdata_1_ftqPtr_value,
  output [2:0]  io_rdata_1_ftqOffset,
  output        io_rdata_1_crossPageIPFFix,
  output        io_rdata_1_triggered_frontendHit_0,
  output        io_rdata_1_triggered_frontendHit_1,
  output        io_rdata_1_triggered_frontendHit_2,
  output        io_rdata_1_triggered_frontendHit_3,
  output        io_rdata_1_triggered_backendEn_0,
  output        io_rdata_1_triggered_backendEn_1,
  output [31:0] io_rdata_2_inst,
  output [9:0]  io_rdata_2_foldpc,
  output        io_rdata_2_ipf,
  output        io_rdata_2_acf,
  output [31:0] io_rdata_3_inst,
  output [9:0]  io_rdata_3_foldpc,
  output        io_rdata_3_ipf,
  output        io_rdata_3_acf,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input         io_wen_6,
  input         io_wen_7,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input  [3:0]  io_waddr_2,
  input  [3:0]  io_waddr_3,
  input  [3:0]  io_waddr_4,
  input  [3:0]  io_waddr_5,
  input  [3:0]  io_waddr_6,
  input  [3:0]  io_waddr_7,
  input  [31:0] io_wdata_0_inst,
  input  [9:0]  io_wdata_0_foldpc,
  input         io_wdata_0_pd_isRVC,
  input  [1:0]  io_wdata_0_pd_brType,
  input         io_wdata_0_pd_isCall,
  input         io_wdata_0_pd_isRet,
  input         io_wdata_0_pred_taken,
  input         io_wdata_0_ftqPtr_flag,
  input  [2:0]  io_wdata_0_ftqPtr_value,
  input         io_wdata_0_ipf,
  input         io_wdata_0_acf,
  input         io_wdata_0_crossPageIPFFix,
  input         io_wdata_0_triggered_frontendHit_0,
  input         io_wdata_0_triggered_frontendHit_1,
  input         io_wdata_0_triggered_frontendHit_2,
  input         io_wdata_0_triggered_frontendHit_3,
  input         io_wdata_0_triggered_backendEn_0,
  input         io_wdata_0_triggered_backendEn_1,
  input  [31:0] io_wdata_1_inst,
  input  [9:0]  io_wdata_1_foldpc,
  input         io_wdata_1_pd_isRVC,
  input  [1:0]  io_wdata_1_pd_brType,
  input         io_wdata_1_pd_isCall,
  input         io_wdata_1_pd_isRet,
  input         io_wdata_1_pred_taken,
  input         io_wdata_1_ftqPtr_flag,
  input  [2:0]  io_wdata_1_ftqPtr_value,
  input         io_wdata_1_ipf,
  input         io_wdata_1_acf,
  input         io_wdata_1_crossPageIPFFix,
  input         io_wdata_1_triggered_frontendHit_0,
  input         io_wdata_1_triggered_frontendHit_1,
  input         io_wdata_1_triggered_frontendHit_2,
  input         io_wdata_1_triggered_frontendHit_3,
  input         io_wdata_1_triggered_backendEn_0,
  input         io_wdata_1_triggered_backendEn_1,
  input  [31:0] io_wdata_2_inst,
  input  [9:0]  io_wdata_2_foldpc,
  input         io_wdata_2_pd_isRVC,
  input  [1:0]  io_wdata_2_pd_brType,
  input         io_wdata_2_pd_isCall,
  input         io_wdata_2_pd_isRet,
  input         io_wdata_2_pred_taken,
  input         io_wdata_2_ftqPtr_flag,
  input  [2:0]  io_wdata_2_ftqPtr_value,
  input         io_wdata_2_ipf,
  input         io_wdata_2_acf,
  input         io_wdata_2_crossPageIPFFix,
  input         io_wdata_2_triggered_frontendHit_0,
  input         io_wdata_2_triggered_frontendHit_1,
  input         io_wdata_2_triggered_frontendHit_2,
  input         io_wdata_2_triggered_frontendHit_3,
  input         io_wdata_2_triggered_backendEn_0,
  input         io_wdata_2_triggered_backendEn_1,
  input  [31:0] io_wdata_3_inst,
  input  [9:0]  io_wdata_3_foldpc,
  input         io_wdata_3_pd_isRVC,
  input  [1:0]  io_wdata_3_pd_brType,
  input         io_wdata_3_pd_isCall,
  input         io_wdata_3_pd_isRet,
  input         io_wdata_3_pred_taken,
  input         io_wdata_3_ftqPtr_flag,
  input  [2:0]  io_wdata_3_ftqPtr_value,
  input         io_wdata_3_ipf,
  input         io_wdata_3_acf,
  input         io_wdata_3_crossPageIPFFix,
  input         io_wdata_3_triggered_frontendHit_0,
  input         io_wdata_3_triggered_frontendHit_1,
  input         io_wdata_3_triggered_frontendHit_2,
  input         io_wdata_3_triggered_frontendHit_3,
  input         io_wdata_3_triggered_backendEn_0,
  input         io_wdata_3_triggered_backendEn_1,
  input  [31:0] io_wdata_4_inst,
  input  [9:0]  io_wdata_4_foldpc,
  input         io_wdata_4_pd_isRVC,
  input  [1:0]  io_wdata_4_pd_brType,
  input         io_wdata_4_pd_isCall,
  input         io_wdata_4_pd_isRet,
  input         io_wdata_4_pred_taken,
  input         io_wdata_4_ftqPtr_flag,
  input  [2:0]  io_wdata_4_ftqPtr_value,
  input         io_wdata_4_ipf,
  input         io_wdata_4_acf,
  input         io_wdata_4_crossPageIPFFix,
  input         io_wdata_4_triggered_frontendHit_0,
  input         io_wdata_4_triggered_frontendHit_1,
  input         io_wdata_4_triggered_frontendHit_2,
  input         io_wdata_4_triggered_frontendHit_3,
  input         io_wdata_4_triggered_backendEn_0,
  input         io_wdata_4_triggered_backendEn_1,
  input  [31:0] io_wdata_5_inst,
  input  [9:0]  io_wdata_5_foldpc,
  input         io_wdata_5_pd_isRVC,
  input  [1:0]  io_wdata_5_pd_brType,
  input         io_wdata_5_pd_isCall,
  input         io_wdata_5_pd_isRet,
  input         io_wdata_5_pred_taken,
  input         io_wdata_5_ftqPtr_flag,
  input  [2:0]  io_wdata_5_ftqPtr_value,
  input         io_wdata_5_ipf,
  input         io_wdata_5_acf,
  input         io_wdata_5_crossPageIPFFix,
  input         io_wdata_5_triggered_frontendHit_0,
  input         io_wdata_5_triggered_frontendHit_1,
  input         io_wdata_5_triggered_frontendHit_2,
  input         io_wdata_5_triggered_frontendHit_3,
  input         io_wdata_5_triggered_backendEn_0,
  input         io_wdata_5_triggered_backendEn_1,
  input  [31:0] io_wdata_6_inst,
  input  [9:0]  io_wdata_6_foldpc,
  input         io_wdata_6_pd_isRVC,
  input  [1:0]  io_wdata_6_pd_brType,
  input         io_wdata_6_pd_isCall,
  input         io_wdata_6_pd_isRet,
  input         io_wdata_6_pred_taken,
  input         io_wdata_6_ftqPtr_flag,
  input  [2:0]  io_wdata_6_ftqPtr_value,
  input         io_wdata_6_ipf,
  input         io_wdata_6_acf,
  input         io_wdata_6_crossPageIPFFix,
  input         io_wdata_6_triggered_frontendHit_0,
  input         io_wdata_6_triggered_frontendHit_1,
  input         io_wdata_6_triggered_frontendHit_2,
  input         io_wdata_6_triggered_frontendHit_3,
  input         io_wdata_6_triggered_backendEn_0,
  input         io_wdata_6_triggered_backendEn_1,
  input  [31:0] io_wdata_7_inst,
  input  [9:0]  io_wdata_7_foldpc,
  input         io_wdata_7_pd_isRVC,
  input  [1:0]  io_wdata_7_pd_brType,
  input         io_wdata_7_pd_isCall,
  input         io_wdata_7_pd_isRet,
  input         io_wdata_7_pred_taken,
  input         io_wdata_7_ftqPtr_flag,
  input  [2:0]  io_wdata_7_ftqPtr_value,
  input         io_wdata_7_ipf,
  input         io_wdata_7_acf,
  input         io_wdata_7_crossPageIPFFix,
  input         io_wdata_7_triggered_frontendHit_0,
  input         io_wdata_7_triggered_frontendHit_1,
  input         io_wdata_7_triggered_frontendHit_2,
  input         io_wdata_7_triggered_frontendHit_3,
  input         io_wdata_7_triggered_backendEn_0,
  input         io_wdata_7_triggered_backendEn_1
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] data_0_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_0_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_1_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_1_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_2_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_2_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_3_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_3_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_4_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_4_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_5_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_5_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_6_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_6_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_7_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_7_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_8_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_8_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_8_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_8_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_8_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_8_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_9_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_9_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_9_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_9_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_9_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_9_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_10_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_10_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_10_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_10_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_10_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_10_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_11_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_11_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_11_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_11_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_11_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_11_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_12_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_12_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_12_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_12_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_12_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_12_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_13_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_13_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_13_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_13_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_13_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_13_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_14_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_14_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_14_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_14_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_14_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_14_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  reg [31:0] data_15_inst; // @[DataModuleTemplate.scala 168:17]
  reg [9:0] data_15_foldpc; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_pd_isRVC; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_15_pd_brType; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_pd_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_pd_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_pred_taken; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_ftqPtr_flag; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_15_ftqPtr_value; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_15_ftqOffset; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_ipf; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_acf; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_crossPageIPFFix; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_frontendHit_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_frontendHit_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_frontendHit_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_frontendHit_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_backendEn_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_15_triggered_backendEn_1; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1 = io_wen_1 & io_waddr_1 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2 = io_wen_2 & io_waddr_2 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_3 = io_wen_3 & io_waddr_3 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_4 = io_wen_4 & io_waddr_4 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_5 = io_wen_5 & io_waddr_5 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_6 = io_wen_6 & io_waddr_6 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_7 = io_wen_7 & io_waddr_7 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec = 16'h1 << io_raddr_0; // @[OneHot.scala 64:12]
  wire [7:0] _T = {read_by_7,read_by_6,read_by_5,read_by_4,read_by_3,read_by_2,read_by_1,read_by_0}; // @[DataModuleTemplate.scala 178:28]
  wire  _io_rdata_0_T_104 = read_by_0 & io_wdata_0_triggered_backendEn_0 | read_by_1 & io_wdata_1_triggered_backendEn_0
     | read_by_2 & io_wdata_2_triggered_backendEn_0 | read_by_3 & io_wdata_3_triggered_backendEn_0 | read_by_4 &
    io_wdata_4_triggered_backendEn_0 | read_by_5 & io_wdata_5_triggered_backendEn_0 | read_by_6 &
    io_wdata_6_triggered_backendEn_0 | read_by_7 & io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_119 = read_by_0 & io_wdata_0_triggered_backendEn_1 | read_by_1 & io_wdata_1_triggered_backendEn_1
     | read_by_2 & io_wdata_2_triggered_backendEn_1 | read_by_3 & io_wdata_3_triggered_backendEn_1 | read_by_4 &
    io_wdata_4_triggered_backendEn_1 | read_by_5 & io_wdata_5_triggered_backendEn_1 | read_by_6 &
    io_wdata_6_triggered_backendEn_1 | read_by_7 & io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_134 = read_by_0 & io_wdata_0_triggered_frontendHit_0 | read_by_1 &
    io_wdata_1_triggered_frontendHit_0 | read_by_2 & io_wdata_2_triggered_frontendHit_0 | read_by_3 &
    io_wdata_3_triggered_frontendHit_0 | read_by_4 & io_wdata_4_triggered_frontendHit_0 | read_by_5 &
    io_wdata_5_triggered_frontendHit_0 | read_by_6 & io_wdata_6_triggered_frontendHit_0 | read_by_7 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_149 = read_by_0 & io_wdata_0_triggered_frontendHit_1 | read_by_1 &
    io_wdata_1_triggered_frontendHit_1 | read_by_2 & io_wdata_2_triggered_frontendHit_1 | read_by_3 &
    io_wdata_3_triggered_frontendHit_1 | read_by_4 & io_wdata_4_triggered_frontendHit_1 | read_by_5 &
    io_wdata_5_triggered_frontendHit_1 | read_by_6 & io_wdata_6_triggered_frontendHit_1 | read_by_7 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_164 = read_by_0 & io_wdata_0_triggered_frontendHit_2 | read_by_1 &
    io_wdata_1_triggered_frontendHit_2 | read_by_2 & io_wdata_2_triggered_frontendHit_2 | read_by_3 &
    io_wdata_3_triggered_frontendHit_2 | read_by_4 & io_wdata_4_triggered_frontendHit_2 | read_by_5 &
    io_wdata_5_triggered_frontendHit_2 | read_by_6 & io_wdata_6_triggered_frontendHit_2 | read_by_7 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_179 = read_by_0 & io_wdata_0_triggered_frontendHit_3 | read_by_1 &
    io_wdata_1_triggered_frontendHit_3 | read_by_2 & io_wdata_2_triggered_frontendHit_3 | read_by_3 &
    io_wdata_3_triggered_frontendHit_3 | read_by_4 & io_wdata_4_triggered_frontendHit_3 | read_by_5 &
    io_wdata_5_triggered_frontendHit_3 | read_by_6 & io_wdata_6_triggered_frontendHit_3 | read_by_7 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_194 = read_by_0 & io_wdata_0_crossPageIPFFix | read_by_1 & io_wdata_1_crossPageIPFFix | read_by_2
     & io_wdata_2_crossPageIPFFix | read_by_3 & io_wdata_3_crossPageIPFFix | read_by_4 & io_wdata_4_crossPageIPFFix |
    read_by_5 & io_wdata_5_crossPageIPFFix | read_by_6 & io_wdata_6_crossPageIPFFix | read_by_7 &
    io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_226 = read_by_1 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_227 = read_by_2 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_228 = read_by_3 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_229 = read_by_4 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_230 = read_by_5 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_231 = read_by_6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_232 = read_by_7 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_234 = _io_rdata_0_T_226 | _io_rdata_0_T_227; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_235 = _io_rdata_0_T_234 | _io_rdata_0_T_228; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_236 = _io_rdata_0_T_235 | _io_rdata_0_T_229; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_237 = _io_rdata_0_T_236 | _io_rdata_0_T_230; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_238 = _io_rdata_0_T_237 | _io_rdata_0_T_231; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_239 = _io_rdata_0_T_238 | _io_rdata_0_T_232; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_240 = read_by_0 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_241 = read_by_1 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_242 = read_by_2 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_243 = read_by_3 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_244 = read_by_4 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_245 = read_by_5 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_246 = read_by_6 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_247 = read_by_7 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_248 = _io_rdata_0_T_240 | _io_rdata_0_T_241; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_249 = _io_rdata_0_T_248 | _io_rdata_0_T_242; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_250 = _io_rdata_0_T_249 | _io_rdata_0_T_243; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_251 = _io_rdata_0_T_250 | _io_rdata_0_T_244; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_252 = _io_rdata_0_T_251 | _io_rdata_0_T_245; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_253 = _io_rdata_0_T_252 | _io_rdata_0_T_246; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_254 = _io_rdata_0_T_253 | _io_rdata_0_T_247; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_269 = read_by_0 & io_wdata_0_ftqPtr_flag | read_by_1 & io_wdata_1_ftqPtr_flag | read_by_2 &
    io_wdata_2_ftqPtr_flag | read_by_3 & io_wdata_3_ftqPtr_flag | read_by_4 & io_wdata_4_ftqPtr_flag | read_by_5 &
    io_wdata_5_ftqPtr_flag | read_by_6 & io_wdata_6_ftqPtr_flag | read_by_7 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_284 = read_by_0 & io_wdata_0_pred_taken | read_by_1 & io_wdata_1_pred_taken | read_by_2 &
    io_wdata_2_pred_taken | read_by_3 & io_wdata_3_pred_taken | read_by_4 & io_wdata_4_pred_taken | read_by_5 &
    io_wdata_5_pred_taken | read_by_6 & io_wdata_6_pred_taken | read_by_7 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_299 = read_by_0 & io_wdata_0_pd_isRet | read_by_1 & io_wdata_1_pd_isRet | read_by_2 &
    io_wdata_2_pd_isRet | read_by_3 & io_wdata_3_pd_isRet | read_by_4 & io_wdata_4_pd_isRet | read_by_5 &
    io_wdata_5_pd_isRet | read_by_6 & io_wdata_6_pd_isRet | read_by_7 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_314 = read_by_0 & io_wdata_0_pd_isCall | read_by_1 & io_wdata_1_pd_isCall | read_by_2 &
    io_wdata_2_pd_isCall | read_by_3 & io_wdata_3_pd_isCall | read_by_4 & io_wdata_4_pd_isCall | read_by_5 &
    io_wdata_5_pd_isCall | read_by_6 & io_wdata_6_pd_isCall | read_by_7 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_315 = read_by_0 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_316 = read_by_1 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_317 = read_by_2 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_318 = read_by_3 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_319 = read_by_4 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_320 = read_by_5 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_321 = read_by_6 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_322 = read_by_7 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_323 = _io_rdata_0_T_315 | _io_rdata_0_T_316; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_324 = _io_rdata_0_T_323 | _io_rdata_0_T_317; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_325 = _io_rdata_0_T_324 | _io_rdata_0_T_318; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_326 = _io_rdata_0_T_325 | _io_rdata_0_T_319; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_327 = _io_rdata_0_T_326 | _io_rdata_0_T_320; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_328 = _io_rdata_0_T_327 | _io_rdata_0_T_321; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_329 = _io_rdata_0_T_328 | _io_rdata_0_T_322; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_344 = read_by_0 & io_wdata_0_pd_isRVC | read_by_1 & io_wdata_1_pd_isRVC | read_by_2 &
    io_wdata_2_pd_isRVC | read_by_3 & io_wdata_3_pd_isRVC | read_by_4 & io_wdata_4_pd_isRVC | read_by_5 &
    io_wdata_5_pd_isRVC | read_by_6 & io_wdata_6_pd_isRVC | read_by_7 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_622 = addr_dec[15] & data_15_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_637 = addr_dec[0] & data_0_triggered_backendEn_0 | addr_dec[1] & data_1_triggered_backendEn_0 |
    addr_dec[2] & data_2_triggered_backendEn_0 | addr_dec[3] & data_3_triggered_backendEn_0 | addr_dec[4] &
    data_4_triggered_backendEn_0 | addr_dec[5] & data_5_triggered_backendEn_0 | addr_dec[6] &
    data_6_triggered_backendEn_0 | addr_dec[7] & data_7_triggered_backendEn_0 | addr_dec[8] &
    data_8_triggered_backendEn_0 | addr_dec[9] & data_9_triggered_backendEn_0 | addr_dec[10] &
    data_10_triggered_backendEn_0 | addr_dec[11] & data_11_triggered_backendEn_0 | addr_dec[12] &
    data_12_triggered_backendEn_0 | addr_dec[13] & data_13_triggered_backendEn_0 | addr_dec[14] &
    data_14_triggered_backendEn_0 | _io_rdata_0_T_622; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_653 = addr_dec[15] & data_15_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_668 = addr_dec[0] & data_0_triggered_backendEn_1 | addr_dec[1] & data_1_triggered_backendEn_1 |
    addr_dec[2] & data_2_triggered_backendEn_1 | addr_dec[3] & data_3_triggered_backendEn_1 | addr_dec[4] &
    data_4_triggered_backendEn_1 | addr_dec[5] & data_5_triggered_backendEn_1 | addr_dec[6] &
    data_6_triggered_backendEn_1 | addr_dec[7] & data_7_triggered_backendEn_1 | addr_dec[8] &
    data_8_triggered_backendEn_1 | addr_dec[9] & data_9_triggered_backendEn_1 | addr_dec[10] &
    data_10_triggered_backendEn_1 | addr_dec[11] & data_11_triggered_backendEn_1 | addr_dec[12] &
    data_12_triggered_backendEn_1 | addr_dec[13] & data_13_triggered_backendEn_1 | addr_dec[14] &
    data_14_triggered_backendEn_1 | _io_rdata_0_T_653; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_684 = addr_dec[15] & data_15_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_699 = addr_dec[0] & data_0_triggered_frontendHit_0 | addr_dec[1] & data_1_triggered_frontendHit_0
     | addr_dec[2] & data_2_triggered_frontendHit_0 | addr_dec[3] & data_3_triggered_frontendHit_0 | addr_dec[4] &
    data_4_triggered_frontendHit_0 | addr_dec[5] & data_5_triggered_frontendHit_0 | addr_dec[6] &
    data_6_triggered_frontendHit_0 | addr_dec[7] & data_7_triggered_frontendHit_0 | addr_dec[8] &
    data_8_triggered_frontendHit_0 | addr_dec[9] & data_9_triggered_frontendHit_0 | addr_dec[10] &
    data_10_triggered_frontendHit_0 | addr_dec[11] & data_11_triggered_frontendHit_0 | addr_dec[12] &
    data_12_triggered_frontendHit_0 | addr_dec[13] & data_13_triggered_frontendHit_0 | addr_dec[14] &
    data_14_triggered_frontendHit_0 | _io_rdata_0_T_684; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_715 = addr_dec[15] & data_15_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_730 = addr_dec[0] & data_0_triggered_frontendHit_1 | addr_dec[1] & data_1_triggered_frontendHit_1
     | addr_dec[2] & data_2_triggered_frontendHit_1 | addr_dec[3] & data_3_triggered_frontendHit_1 | addr_dec[4] &
    data_4_triggered_frontendHit_1 | addr_dec[5] & data_5_triggered_frontendHit_1 | addr_dec[6] &
    data_6_triggered_frontendHit_1 | addr_dec[7] & data_7_triggered_frontendHit_1 | addr_dec[8] &
    data_8_triggered_frontendHit_1 | addr_dec[9] & data_9_triggered_frontendHit_1 | addr_dec[10] &
    data_10_triggered_frontendHit_1 | addr_dec[11] & data_11_triggered_frontendHit_1 | addr_dec[12] &
    data_12_triggered_frontendHit_1 | addr_dec[13] & data_13_triggered_frontendHit_1 | addr_dec[14] &
    data_14_triggered_frontendHit_1 | _io_rdata_0_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_746 = addr_dec[15] & data_15_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_761 = addr_dec[0] & data_0_triggered_frontendHit_2 | addr_dec[1] & data_1_triggered_frontendHit_2
     | addr_dec[2] & data_2_triggered_frontendHit_2 | addr_dec[3] & data_3_triggered_frontendHit_2 | addr_dec[4] &
    data_4_triggered_frontendHit_2 | addr_dec[5] & data_5_triggered_frontendHit_2 | addr_dec[6] &
    data_6_triggered_frontendHit_2 | addr_dec[7] & data_7_triggered_frontendHit_2 | addr_dec[8] &
    data_8_triggered_frontendHit_2 | addr_dec[9] & data_9_triggered_frontendHit_2 | addr_dec[10] &
    data_10_triggered_frontendHit_2 | addr_dec[11] & data_11_triggered_frontendHit_2 | addr_dec[12] &
    data_12_triggered_frontendHit_2 | addr_dec[13] & data_13_triggered_frontendHit_2 | addr_dec[14] &
    data_14_triggered_frontendHit_2 | _io_rdata_0_T_746; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_777 = addr_dec[15] & data_15_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_792 = addr_dec[0] & data_0_triggered_frontendHit_3 | addr_dec[1] & data_1_triggered_frontendHit_3
     | addr_dec[2] & data_2_triggered_frontendHit_3 | addr_dec[3] & data_3_triggered_frontendHit_3 | addr_dec[4] &
    data_4_triggered_frontendHit_3 | addr_dec[5] & data_5_triggered_frontendHit_3 | addr_dec[6] &
    data_6_triggered_frontendHit_3 | addr_dec[7] & data_7_triggered_frontendHit_3 | addr_dec[8] &
    data_8_triggered_frontendHit_3 | addr_dec[9] & data_9_triggered_frontendHit_3 | addr_dec[10] &
    data_10_triggered_frontendHit_3 | addr_dec[11] & data_11_triggered_frontendHit_3 | addr_dec[12] &
    data_12_triggered_frontendHit_3 | addr_dec[13] & data_13_triggered_frontendHit_3 | addr_dec[14] &
    data_14_triggered_frontendHit_3 | _io_rdata_0_T_777; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_808 = addr_dec[15] & data_15_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_823 = addr_dec[0] & data_0_crossPageIPFFix | addr_dec[1] & data_1_crossPageIPFFix | addr_dec[2] &
    data_2_crossPageIPFFix | addr_dec[3] & data_3_crossPageIPFFix | addr_dec[4] & data_4_crossPageIPFFix | addr_dec[5]
     & data_5_crossPageIPFFix | addr_dec[6] & data_6_crossPageIPFFix | addr_dec[7] & data_7_crossPageIPFFix | addr_dec[8
    ] & data_8_crossPageIPFFix | addr_dec[9] & data_9_crossPageIPFFix | addr_dec[10] & data_10_crossPageIPFFix |
    addr_dec[11] & data_11_crossPageIPFFix | addr_dec[12] & data_12_crossPageIPFFix | addr_dec[13] &
    data_13_crossPageIPFFix | addr_dec[14] & data_14_crossPageIPFFix | _io_rdata_0_T_808; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_886 = addr_dec[0] ? data_0_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_887 = addr_dec[1] ? data_1_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_888 = addr_dec[2] ? data_2_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_889 = addr_dec[3] ? data_3_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_890 = addr_dec[4] ? data_4_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_891 = addr_dec[5] ? data_5_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_892 = addr_dec[6] ? data_6_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_893 = addr_dec[7] ? data_7_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_894 = addr_dec[8] ? data_8_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_895 = addr_dec[9] ? data_9_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_896 = addr_dec[10] ? data_10_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_897 = addr_dec[11] ? data_11_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_898 = addr_dec[12] ? data_12_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_899 = addr_dec[13] ? data_13_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_900 = addr_dec[14] ? data_14_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_901 = addr_dec[15] ? data_15_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_902 = _io_rdata_0_T_886 | _io_rdata_0_T_887; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_903 = _io_rdata_0_T_902 | _io_rdata_0_T_888; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_904 = _io_rdata_0_T_903 | _io_rdata_0_T_889; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_905 = _io_rdata_0_T_904 | _io_rdata_0_T_890; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_906 = _io_rdata_0_T_905 | _io_rdata_0_T_891; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_907 = _io_rdata_0_T_906 | _io_rdata_0_T_892; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_908 = _io_rdata_0_T_907 | _io_rdata_0_T_893; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_909 = _io_rdata_0_T_908 | _io_rdata_0_T_894; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_910 = _io_rdata_0_T_909 | _io_rdata_0_T_895; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_911 = _io_rdata_0_T_910 | _io_rdata_0_T_896; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_912 = _io_rdata_0_T_911 | _io_rdata_0_T_897; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_913 = _io_rdata_0_T_912 | _io_rdata_0_T_898; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_914 = _io_rdata_0_T_913 | _io_rdata_0_T_899; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_915 = _io_rdata_0_T_914 | _io_rdata_0_T_900; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_916 = _io_rdata_0_T_915 | _io_rdata_0_T_901; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_917 = addr_dec[0] ? data_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_918 = addr_dec[1] ? data_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_919 = addr_dec[2] ? data_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_920 = addr_dec[3] ? data_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_921 = addr_dec[4] ? data_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_922 = addr_dec[5] ? data_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_923 = addr_dec[6] ? data_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_924 = addr_dec[7] ? data_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_925 = addr_dec[8] ? data_8_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_926 = addr_dec[9] ? data_9_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_927 = addr_dec[10] ? data_10_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_928 = addr_dec[11] ? data_11_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_929 = addr_dec[12] ? data_12_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_930 = addr_dec[13] ? data_13_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_931 = addr_dec[14] ? data_14_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_932 = addr_dec[15] ? data_15_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_933 = _io_rdata_0_T_917 | _io_rdata_0_T_918; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_934 = _io_rdata_0_T_933 | _io_rdata_0_T_919; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_935 = _io_rdata_0_T_934 | _io_rdata_0_T_920; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_936 = _io_rdata_0_T_935 | _io_rdata_0_T_921; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_937 = _io_rdata_0_T_936 | _io_rdata_0_T_922; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_938 = _io_rdata_0_T_937 | _io_rdata_0_T_923; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_939 = _io_rdata_0_T_938 | _io_rdata_0_T_924; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_940 = _io_rdata_0_T_939 | _io_rdata_0_T_925; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_941 = _io_rdata_0_T_940 | _io_rdata_0_T_926; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_942 = _io_rdata_0_T_941 | _io_rdata_0_T_927; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_943 = _io_rdata_0_T_942 | _io_rdata_0_T_928; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_944 = _io_rdata_0_T_943 | _io_rdata_0_T_929; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_945 = _io_rdata_0_T_944 | _io_rdata_0_T_930; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_946 = _io_rdata_0_T_945 | _io_rdata_0_T_931; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_947 = _io_rdata_0_T_946 | _io_rdata_0_T_932; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_963 = addr_dec[15] & data_15_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_978 = addr_dec[0] & data_0_ftqPtr_flag | addr_dec[1] & data_1_ftqPtr_flag | addr_dec[2] &
    data_2_ftqPtr_flag | addr_dec[3] & data_3_ftqPtr_flag | addr_dec[4] & data_4_ftqPtr_flag | addr_dec[5] &
    data_5_ftqPtr_flag | addr_dec[6] & data_6_ftqPtr_flag | addr_dec[7] & data_7_ftqPtr_flag | addr_dec[8] &
    data_8_ftqPtr_flag | addr_dec[9] & data_9_ftqPtr_flag | addr_dec[10] & data_10_ftqPtr_flag | addr_dec[11] &
    data_11_ftqPtr_flag | addr_dec[12] & data_12_ftqPtr_flag | addr_dec[13] & data_13_ftqPtr_flag | addr_dec[14] &
    data_14_ftqPtr_flag | _io_rdata_0_T_963; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_994 = addr_dec[15] & data_15_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1009 = addr_dec[0] & data_0_pred_taken | addr_dec[1] & data_1_pred_taken | addr_dec[2] &
    data_2_pred_taken | addr_dec[3] & data_3_pred_taken | addr_dec[4] & data_4_pred_taken | addr_dec[5] &
    data_5_pred_taken | addr_dec[6] & data_6_pred_taken | addr_dec[7] & data_7_pred_taken | addr_dec[8] &
    data_8_pred_taken | addr_dec[9] & data_9_pred_taken | addr_dec[10] & data_10_pred_taken | addr_dec[11] &
    data_11_pred_taken | addr_dec[12] & data_12_pred_taken | addr_dec[13] & data_13_pred_taken | addr_dec[14] &
    data_14_pred_taken | _io_rdata_0_T_994; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1025 = addr_dec[15] & data_15_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1040 = addr_dec[0] & data_0_pd_isRet | addr_dec[1] & data_1_pd_isRet | addr_dec[2] &
    data_2_pd_isRet | addr_dec[3] & data_3_pd_isRet | addr_dec[4] & data_4_pd_isRet | addr_dec[5] & data_5_pd_isRet |
    addr_dec[6] & data_6_pd_isRet | addr_dec[7] & data_7_pd_isRet | addr_dec[8] & data_8_pd_isRet | addr_dec[9] &
    data_9_pd_isRet | addr_dec[10] & data_10_pd_isRet | addr_dec[11] & data_11_pd_isRet | addr_dec[12] &
    data_12_pd_isRet | addr_dec[13] & data_13_pd_isRet | addr_dec[14] & data_14_pd_isRet | _io_rdata_0_T_1025; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1056 = addr_dec[15] & data_15_pd_isCall; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1071 = addr_dec[0] & data_0_pd_isCall | addr_dec[1] & data_1_pd_isCall | addr_dec[2] &
    data_2_pd_isCall | addr_dec[3] & data_3_pd_isCall | addr_dec[4] & data_4_pd_isCall | addr_dec[5] & data_5_pd_isCall
     | addr_dec[6] & data_6_pd_isCall | addr_dec[7] & data_7_pd_isCall | addr_dec[8] & data_8_pd_isCall | addr_dec[9] &
    data_9_pd_isCall | addr_dec[10] & data_10_pd_isCall | addr_dec[11] & data_11_pd_isCall | addr_dec[12] &
    data_12_pd_isCall | addr_dec[13] & data_13_pd_isCall | addr_dec[14] & data_14_pd_isCall | _io_rdata_0_T_1056; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1072 = addr_dec[0] ? data_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1073 = addr_dec[1] ? data_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1074 = addr_dec[2] ? data_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1075 = addr_dec[3] ? data_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1076 = addr_dec[4] ? data_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1077 = addr_dec[5] ? data_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1078 = addr_dec[6] ? data_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1079 = addr_dec[7] ? data_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1080 = addr_dec[8] ? data_8_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1081 = addr_dec[9] ? data_9_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1082 = addr_dec[10] ? data_10_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1083 = addr_dec[11] ? data_11_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1084 = addr_dec[12] ? data_12_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1085 = addr_dec[13] ? data_13_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1086 = addr_dec[14] ? data_14_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1087 = addr_dec[15] ? data_15_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1088 = _io_rdata_0_T_1072 | _io_rdata_0_T_1073; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1089 = _io_rdata_0_T_1088 | _io_rdata_0_T_1074; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1090 = _io_rdata_0_T_1089 | _io_rdata_0_T_1075; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1091 = _io_rdata_0_T_1090 | _io_rdata_0_T_1076; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1092 = _io_rdata_0_T_1091 | _io_rdata_0_T_1077; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1093 = _io_rdata_0_T_1092 | _io_rdata_0_T_1078; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1094 = _io_rdata_0_T_1093 | _io_rdata_0_T_1079; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1095 = _io_rdata_0_T_1094 | _io_rdata_0_T_1080; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1096 = _io_rdata_0_T_1095 | _io_rdata_0_T_1081; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1097 = _io_rdata_0_T_1096 | _io_rdata_0_T_1082; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1098 = _io_rdata_0_T_1097 | _io_rdata_0_T_1083; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1099 = _io_rdata_0_T_1098 | _io_rdata_0_T_1084; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1100 = _io_rdata_0_T_1099 | _io_rdata_0_T_1085; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1101 = _io_rdata_0_T_1100 | _io_rdata_0_T_1086; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_0_T_1102 = _io_rdata_0_T_1101 | _io_rdata_0_T_1087; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1118 = addr_dec[15] & data_15_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_1133 = addr_dec[0] & data_0_pd_isRVC | addr_dec[1] & data_1_pd_isRVC | addr_dec[2] &
    data_2_pd_isRVC | addr_dec[3] & data_3_pd_isRVC | addr_dec[4] & data_4_pd_isRVC | addr_dec[5] & data_5_pd_isRVC |
    addr_dec[6] & data_6_pd_isRVC | addr_dec[7] & data_7_pd_isRVC | addr_dec[8] & data_8_pd_isRVC | addr_dec[9] &
    data_9_pd_isRVC | addr_dec[10] & data_10_pd_isRVC | addr_dec[11] & data_11_pd_isRVC | addr_dec[12] &
    data_12_pd_isRVC | addr_dec[13] & data_13_pd_isRVC | addr_dec[14] & data_14_pd_isRVC | _io_rdata_0_T_1118; // @[Mux.scala 27:73]
  wire  read_by_0_1 = io_wen_0 & io_waddr_0 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_1 = io_wen_1 & io_waddr_1 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2_1 = io_wen_2 & io_waddr_2 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_3_1 = io_wen_3 & io_waddr_3 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_4_1 = io_wen_4 & io_waddr_4 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_5_1 = io_wen_5 & io_waddr_5 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_6_1 = io_wen_6 & io_waddr_6 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_7_1 = io_wen_7 & io_waddr_7 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec_1 = 16'h1 << io_raddr_1; // @[OneHot.scala 64:12]
  wire [7:0] _T_2 = {read_by_7_1,read_by_6_1,read_by_5_1,read_by_4_1,read_by_3_1,read_by_2_1,read_by_1_1,read_by_0_1}; // @[DataModuleTemplate.scala 178:28]
  wire  _io_rdata_1_T_104 = read_by_0_1 & io_wdata_0_triggered_backendEn_0 | read_by_1_1 &
    io_wdata_1_triggered_backendEn_0 | read_by_2_1 & io_wdata_2_triggered_backendEn_0 | read_by_3_1 &
    io_wdata_3_triggered_backendEn_0 | read_by_4_1 & io_wdata_4_triggered_backendEn_0 | read_by_5_1 &
    io_wdata_5_triggered_backendEn_0 | read_by_6_1 & io_wdata_6_triggered_backendEn_0 | read_by_7_1 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_119 = read_by_0_1 & io_wdata_0_triggered_backendEn_1 | read_by_1_1 &
    io_wdata_1_triggered_backendEn_1 | read_by_2_1 & io_wdata_2_triggered_backendEn_1 | read_by_3_1 &
    io_wdata_3_triggered_backendEn_1 | read_by_4_1 & io_wdata_4_triggered_backendEn_1 | read_by_5_1 &
    io_wdata_5_triggered_backendEn_1 | read_by_6_1 & io_wdata_6_triggered_backendEn_1 | read_by_7_1 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_134 = read_by_0_1 & io_wdata_0_triggered_frontendHit_0 | read_by_1_1 &
    io_wdata_1_triggered_frontendHit_0 | read_by_2_1 & io_wdata_2_triggered_frontendHit_0 | read_by_3_1 &
    io_wdata_3_triggered_frontendHit_0 | read_by_4_1 & io_wdata_4_triggered_frontendHit_0 | read_by_5_1 &
    io_wdata_5_triggered_frontendHit_0 | read_by_6_1 & io_wdata_6_triggered_frontendHit_0 | read_by_7_1 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_149 = read_by_0_1 & io_wdata_0_triggered_frontendHit_1 | read_by_1_1 &
    io_wdata_1_triggered_frontendHit_1 | read_by_2_1 & io_wdata_2_triggered_frontendHit_1 | read_by_3_1 &
    io_wdata_3_triggered_frontendHit_1 | read_by_4_1 & io_wdata_4_triggered_frontendHit_1 | read_by_5_1 &
    io_wdata_5_triggered_frontendHit_1 | read_by_6_1 & io_wdata_6_triggered_frontendHit_1 | read_by_7_1 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_164 = read_by_0_1 & io_wdata_0_triggered_frontendHit_2 | read_by_1_1 &
    io_wdata_1_triggered_frontendHit_2 | read_by_2_1 & io_wdata_2_triggered_frontendHit_2 | read_by_3_1 &
    io_wdata_3_triggered_frontendHit_2 | read_by_4_1 & io_wdata_4_triggered_frontendHit_2 | read_by_5_1 &
    io_wdata_5_triggered_frontendHit_2 | read_by_6_1 & io_wdata_6_triggered_frontendHit_2 | read_by_7_1 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_179 = read_by_0_1 & io_wdata_0_triggered_frontendHit_3 | read_by_1_1 &
    io_wdata_1_triggered_frontendHit_3 | read_by_2_1 & io_wdata_2_triggered_frontendHit_3 | read_by_3_1 &
    io_wdata_3_triggered_frontendHit_3 | read_by_4_1 & io_wdata_4_triggered_frontendHit_3 | read_by_5_1 &
    io_wdata_5_triggered_frontendHit_3 | read_by_6_1 & io_wdata_6_triggered_frontendHit_3 | read_by_7_1 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_194 = read_by_0_1 & io_wdata_0_crossPageIPFFix | read_by_1_1 & io_wdata_1_crossPageIPFFix |
    read_by_2_1 & io_wdata_2_crossPageIPFFix | read_by_3_1 & io_wdata_3_crossPageIPFFix | read_by_4_1 &
    io_wdata_4_crossPageIPFFix | read_by_5_1 & io_wdata_5_crossPageIPFFix | read_by_6_1 & io_wdata_6_crossPageIPFFix |
    read_by_7_1 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_226 = read_by_1_1 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_227 = read_by_2_1 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_228 = read_by_3_1 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_229 = read_by_4_1 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_230 = read_by_5_1 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_231 = read_by_6_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_232 = read_by_7_1 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_234 = _io_rdata_1_T_226 | _io_rdata_1_T_227; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_235 = _io_rdata_1_T_234 | _io_rdata_1_T_228; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_236 = _io_rdata_1_T_235 | _io_rdata_1_T_229; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_237 = _io_rdata_1_T_236 | _io_rdata_1_T_230; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_238 = _io_rdata_1_T_237 | _io_rdata_1_T_231; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_239 = _io_rdata_1_T_238 | _io_rdata_1_T_232; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_240 = read_by_0_1 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_241 = read_by_1_1 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_242 = read_by_2_1 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_243 = read_by_3_1 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_244 = read_by_4_1 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_245 = read_by_5_1 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_246 = read_by_6_1 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_247 = read_by_7_1 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_248 = _io_rdata_1_T_240 | _io_rdata_1_T_241; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_249 = _io_rdata_1_T_248 | _io_rdata_1_T_242; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_250 = _io_rdata_1_T_249 | _io_rdata_1_T_243; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_251 = _io_rdata_1_T_250 | _io_rdata_1_T_244; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_252 = _io_rdata_1_T_251 | _io_rdata_1_T_245; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_253 = _io_rdata_1_T_252 | _io_rdata_1_T_246; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_254 = _io_rdata_1_T_253 | _io_rdata_1_T_247; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_269 = read_by_0_1 & io_wdata_0_ftqPtr_flag | read_by_1_1 & io_wdata_1_ftqPtr_flag | read_by_2_1 &
    io_wdata_2_ftqPtr_flag | read_by_3_1 & io_wdata_3_ftqPtr_flag | read_by_4_1 & io_wdata_4_ftqPtr_flag | read_by_5_1
     & io_wdata_5_ftqPtr_flag | read_by_6_1 & io_wdata_6_ftqPtr_flag | read_by_7_1 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_284 = read_by_0_1 & io_wdata_0_pred_taken | read_by_1_1 & io_wdata_1_pred_taken | read_by_2_1 &
    io_wdata_2_pred_taken | read_by_3_1 & io_wdata_3_pred_taken | read_by_4_1 & io_wdata_4_pred_taken | read_by_5_1 &
    io_wdata_5_pred_taken | read_by_6_1 & io_wdata_6_pred_taken | read_by_7_1 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_299 = read_by_0_1 & io_wdata_0_pd_isRet | read_by_1_1 & io_wdata_1_pd_isRet | read_by_2_1 &
    io_wdata_2_pd_isRet | read_by_3_1 & io_wdata_3_pd_isRet | read_by_4_1 & io_wdata_4_pd_isRet | read_by_5_1 &
    io_wdata_5_pd_isRet | read_by_6_1 & io_wdata_6_pd_isRet | read_by_7_1 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_314 = read_by_0_1 & io_wdata_0_pd_isCall | read_by_1_1 & io_wdata_1_pd_isCall | read_by_2_1 &
    io_wdata_2_pd_isCall | read_by_3_1 & io_wdata_3_pd_isCall | read_by_4_1 & io_wdata_4_pd_isCall | read_by_5_1 &
    io_wdata_5_pd_isCall | read_by_6_1 & io_wdata_6_pd_isCall | read_by_7_1 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_315 = read_by_0_1 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_316 = read_by_1_1 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_317 = read_by_2_1 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_318 = read_by_3_1 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_319 = read_by_4_1 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_320 = read_by_5_1 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_321 = read_by_6_1 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_322 = read_by_7_1 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_323 = _io_rdata_1_T_315 | _io_rdata_1_T_316; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_324 = _io_rdata_1_T_323 | _io_rdata_1_T_317; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_325 = _io_rdata_1_T_324 | _io_rdata_1_T_318; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_326 = _io_rdata_1_T_325 | _io_rdata_1_T_319; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_327 = _io_rdata_1_T_326 | _io_rdata_1_T_320; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_328 = _io_rdata_1_T_327 | _io_rdata_1_T_321; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_329 = _io_rdata_1_T_328 | _io_rdata_1_T_322; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_344 = read_by_0_1 & io_wdata_0_pd_isRVC | read_by_1_1 & io_wdata_1_pd_isRVC | read_by_2_1 &
    io_wdata_2_pd_isRVC | read_by_3_1 & io_wdata_3_pd_isRVC | read_by_4_1 & io_wdata_4_pd_isRVC | read_by_5_1 &
    io_wdata_5_pd_isRVC | read_by_6_1 & io_wdata_6_pd_isRVC | read_by_7_1 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_622 = addr_dec_1[15] & data_15_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_637 = addr_dec_1[0] & data_0_triggered_backendEn_0 | addr_dec_1[1] & data_1_triggered_backendEn_0
     | addr_dec_1[2] & data_2_triggered_backendEn_0 | addr_dec_1[3] & data_3_triggered_backendEn_0 | addr_dec_1[4] &
    data_4_triggered_backendEn_0 | addr_dec_1[5] & data_5_triggered_backendEn_0 | addr_dec_1[6] &
    data_6_triggered_backendEn_0 | addr_dec_1[7] & data_7_triggered_backendEn_0 | addr_dec_1[8] &
    data_8_triggered_backendEn_0 | addr_dec_1[9] & data_9_triggered_backendEn_0 | addr_dec_1[10] &
    data_10_triggered_backendEn_0 | addr_dec_1[11] & data_11_triggered_backendEn_0 | addr_dec_1[12] &
    data_12_triggered_backendEn_0 | addr_dec_1[13] & data_13_triggered_backendEn_0 | addr_dec_1[14] &
    data_14_triggered_backendEn_0 | _io_rdata_1_T_622; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_653 = addr_dec_1[15] & data_15_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_668 = addr_dec_1[0] & data_0_triggered_backendEn_1 | addr_dec_1[1] & data_1_triggered_backendEn_1
     | addr_dec_1[2] & data_2_triggered_backendEn_1 | addr_dec_1[3] & data_3_triggered_backendEn_1 | addr_dec_1[4] &
    data_4_triggered_backendEn_1 | addr_dec_1[5] & data_5_triggered_backendEn_1 | addr_dec_1[6] &
    data_6_triggered_backendEn_1 | addr_dec_1[7] & data_7_triggered_backendEn_1 | addr_dec_1[8] &
    data_8_triggered_backendEn_1 | addr_dec_1[9] & data_9_triggered_backendEn_1 | addr_dec_1[10] &
    data_10_triggered_backendEn_1 | addr_dec_1[11] & data_11_triggered_backendEn_1 | addr_dec_1[12] &
    data_12_triggered_backendEn_1 | addr_dec_1[13] & data_13_triggered_backendEn_1 | addr_dec_1[14] &
    data_14_triggered_backendEn_1 | _io_rdata_1_T_653; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_684 = addr_dec_1[15] & data_15_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_699 = addr_dec_1[0] & data_0_triggered_frontendHit_0 | addr_dec_1[1] &
    data_1_triggered_frontendHit_0 | addr_dec_1[2] & data_2_triggered_frontendHit_0 | addr_dec_1[3] &
    data_3_triggered_frontendHit_0 | addr_dec_1[4] & data_4_triggered_frontendHit_0 | addr_dec_1[5] &
    data_5_triggered_frontendHit_0 | addr_dec_1[6] & data_6_triggered_frontendHit_0 | addr_dec_1[7] &
    data_7_triggered_frontendHit_0 | addr_dec_1[8] & data_8_triggered_frontendHit_0 | addr_dec_1[9] &
    data_9_triggered_frontendHit_0 | addr_dec_1[10] & data_10_triggered_frontendHit_0 | addr_dec_1[11] &
    data_11_triggered_frontendHit_0 | addr_dec_1[12] & data_12_triggered_frontendHit_0 | addr_dec_1[13] &
    data_13_triggered_frontendHit_0 | addr_dec_1[14] & data_14_triggered_frontendHit_0 | _io_rdata_1_T_684; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_715 = addr_dec_1[15] & data_15_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_730 = addr_dec_1[0] & data_0_triggered_frontendHit_1 | addr_dec_1[1] &
    data_1_triggered_frontendHit_1 | addr_dec_1[2] & data_2_triggered_frontendHit_1 | addr_dec_1[3] &
    data_3_triggered_frontendHit_1 | addr_dec_1[4] & data_4_triggered_frontendHit_1 | addr_dec_1[5] &
    data_5_triggered_frontendHit_1 | addr_dec_1[6] & data_6_triggered_frontendHit_1 | addr_dec_1[7] &
    data_7_triggered_frontendHit_1 | addr_dec_1[8] & data_8_triggered_frontendHit_1 | addr_dec_1[9] &
    data_9_triggered_frontendHit_1 | addr_dec_1[10] & data_10_triggered_frontendHit_1 | addr_dec_1[11] &
    data_11_triggered_frontendHit_1 | addr_dec_1[12] & data_12_triggered_frontendHit_1 | addr_dec_1[13] &
    data_13_triggered_frontendHit_1 | addr_dec_1[14] & data_14_triggered_frontendHit_1 | _io_rdata_1_T_715; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_746 = addr_dec_1[15] & data_15_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_761 = addr_dec_1[0] & data_0_triggered_frontendHit_2 | addr_dec_1[1] &
    data_1_triggered_frontendHit_2 | addr_dec_1[2] & data_2_triggered_frontendHit_2 | addr_dec_1[3] &
    data_3_triggered_frontendHit_2 | addr_dec_1[4] & data_4_triggered_frontendHit_2 | addr_dec_1[5] &
    data_5_triggered_frontendHit_2 | addr_dec_1[6] & data_6_triggered_frontendHit_2 | addr_dec_1[7] &
    data_7_triggered_frontendHit_2 | addr_dec_1[8] & data_8_triggered_frontendHit_2 | addr_dec_1[9] &
    data_9_triggered_frontendHit_2 | addr_dec_1[10] & data_10_triggered_frontendHit_2 | addr_dec_1[11] &
    data_11_triggered_frontendHit_2 | addr_dec_1[12] & data_12_triggered_frontendHit_2 | addr_dec_1[13] &
    data_13_triggered_frontendHit_2 | addr_dec_1[14] & data_14_triggered_frontendHit_2 | _io_rdata_1_T_746; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_777 = addr_dec_1[15] & data_15_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_792 = addr_dec_1[0] & data_0_triggered_frontendHit_3 | addr_dec_1[1] &
    data_1_triggered_frontendHit_3 | addr_dec_1[2] & data_2_triggered_frontendHit_3 | addr_dec_1[3] &
    data_3_triggered_frontendHit_3 | addr_dec_1[4] & data_4_triggered_frontendHit_3 | addr_dec_1[5] &
    data_5_triggered_frontendHit_3 | addr_dec_1[6] & data_6_triggered_frontendHit_3 | addr_dec_1[7] &
    data_7_triggered_frontendHit_3 | addr_dec_1[8] & data_8_triggered_frontendHit_3 | addr_dec_1[9] &
    data_9_triggered_frontendHit_3 | addr_dec_1[10] & data_10_triggered_frontendHit_3 | addr_dec_1[11] &
    data_11_triggered_frontendHit_3 | addr_dec_1[12] & data_12_triggered_frontendHit_3 | addr_dec_1[13] &
    data_13_triggered_frontendHit_3 | addr_dec_1[14] & data_14_triggered_frontendHit_3 | _io_rdata_1_T_777; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_808 = addr_dec_1[15] & data_15_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_823 = addr_dec_1[0] & data_0_crossPageIPFFix | addr_dec_1[1] & data_1_crossPageIPFFix | addr_dec_1
    [2] & data_2_crossPageIPFFix | addr_dec_1[3] & data_3_crossPageIPFFix | addr_dec_1[4] & data_4_crossPageIPFFix |
    addr_dec_1[5] & data_5_crossPageIPFFix | addr_dec_1[6] & data_6_crossPageIPFFix | addr_dec_1[7] &
    data_7_crossPageIPFFix | addr_dec_1[8] & data_8_crossPageIPFFix | addr_dec_1[9] & data_9_crossPageIPFFix |
    addr_dec_1[10] & data_10_crossPageIPFFix | addr_dec_1[11] & data_11_crossPageIPFFix | addr_dec_1[12] &
    data_12_crossPageIPFFix | addr_dec_1[13] & data_13_crossPageIPFFix | addr_dec_1[14] & data_14_crossPageIPFFix |
    _io_rdata_1_T_808; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_886 = addr_dec_1[0] ? data_0_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_887 = addr_dec_1[1] ? data_1_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_888 = addr_dec_1[2] ? data_2_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_889 = addr_dec_1[3] ? data_3_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_890 = addr_dec_1[4] ? data_4_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_891 = addr_dec_1[5] ? data_5_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_892 = addr_dec_1[6] ? data_6_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_893 = addr_dec_1[7] ? data_7_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_894 = addr_dec_1[8] ? data_8_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_895 = addr_dec_1[9] ? data_9_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_896 = addr_dec_1[10] ? data_10_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_897 = addr_dec_1[11] ? data_11_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_898 = addr_dec_1[12] ? data_12_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_899 = addr_dec_1[13] ? data_13_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_900 = addr_dec_1[14] ? data_14_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_901 = addr_dec_1[15] ? data_15_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_902 = _io_rdata_1_T_886 | _io_rdata_1_T_887; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_903 = _io_rdata_1_T_902 | _io_rdata_1_T_888; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_904 = _io_rdata_1_T_903 | _io_rdata_1_T_889; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_905 = _io_rdata_1_T_904 | _io_rdata_1_T_890; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_906 = _io_rdata_1_T_905 | _io_rdata_1_T_891; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_907 = _io_rdata_1_T_906 | _io_rdata_1_T_892; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_908 = _io_rdata_1_T_907 | _io_rdata_1_T_893; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_909 = _io_rdata_1_T_908 | _io_rdata_1_T_894; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_910 = _io_rdata_1_T_909 | _io_rdata_1_T_895; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_911 = _io_rdata_1_T_910 | _io_rdata_1_T_896; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_912 = _io_rdata_1_T_911 | _io_rdata_1_T_897; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_913 = _io_rdata_1_T_912 | _io_rdata_1_T_898; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_914 = _io_rdata_1_T_913 | _io_rdata_1_T_899; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_915 = _io_rdata_1_T_914 | _io_rdata_1_T_900; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_916 = _io_rdata_1_T_915 | _io_rdata_1_T_901; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_917 = addr_dec_1[0] ? data_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_918 = addr_dec_1[1] ? data_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_919 = addr_dec_1[2] ? data_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_920 = addr_dec_1[3] ? data_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_921 = addr_dec_1[4] ? data_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_922 = addr_dec_1[5] ? data_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_923 = addr_dec_1[6] ? data_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_924 = addr_dec_1[7] ? data_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_925 = addr_dec_1[8] ? data_8_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_926 = addr_dec_1[9] ? data_9_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_927 = addr_dec_1[10] ? data_10_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_928 = addr_dec_1[11] ? data_11_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_929 = addr_dec_1[12] ? data_12_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_930 = addr_dec_1[13] ? data_13_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_931 = addr_dec_1[14] ? data_14_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_932 = addr_dec_1[15] ? data_15_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_933 = _io_rdata_1_T_917 | _io_rdata_1_T_918; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_934 = _io_rdata_1_T_933 | _io_rdata_1_T_919; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_935 = _io_rdata_1_T_934 | _io_rdata_1_T_920; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_936 = _io_rdata_1_T_935 | _io_rdata_1_T_921; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_937 = _io_rdata_1_T_936 | _io_rdata_1_T_922; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_938 = _io_rdata_1_T_937 | _io_rdata_1_T_923; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_939 = _io_rdata_1_T_938 | _io_rdata_1_T_924; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_940 = _io_rdata_1_T_939 | _io_rdata_1_T_925; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_941 = _io_rdata_1_T_940 | _io_rdata_1_T_926; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_942 = _io_rdata_1_T_941 | _io_rdata_1_T_927; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_943 = _io_rdata_1_T_942 | _io_rdata_1_T_928; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_944 = _io_rdata_1_T_943 | _io_rdata_1_T_929; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_945 = _io_rdata_1_T_944 | _io_rdata_1_T_930; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_946 = _io_rdata_1_T_945 | _io_rdata_1_T_931; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_947 = _io_rdata_1_T_946 | _io_rdata_1_T_932; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_963 = addr_dec_1[15] & data_15_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_978 = addr_dec_1[0] & data_0_ftqPtr_flag | addr_dec_1[1] & data_1_ftqPtr_flag | addr_dec_1[2] &
    data_2_ftqPtr_flag | addr_dec_1[3] & data_3_ftqPtr_flag | addr_dec_1[4] & data_4_ftqPtr_flag | addr_dec_1[5] &
    data_5_ftqPtr_flag | addr_dec_1[6] & data_6_ftqPtr_flag | addr_dec_1[7] & data_7_ftqPtr_flag | addr_dec_1[8] &
    data_8_ftqPtr_flag | addr_dec_1[9] & data_9_ftqPtr_flag | addr_dec_1[10] & data_10_ftqPtr_flag | addr_dec_1[11] &
    data_11_ftqPtr_flag | addr_dec_1[12] & data_12_ftqPtr_flag | addr_dec_1[13] & data_13_ftqPtr_flag | addr_dec_1[14]
     & data_14_ftqPtr_flag | _io_rdata_1_T_963; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_994 = addr_dec_1[15] & data_15_pred_taken; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1009 = addr_dec_1[0] & data_0_pred_taken | addr_dec_1[1] & data_1_pred_taken | addr_dec_1[2] &
    data_2_pred_taken | addr_dec_1[3] & data_3_pred_taken | addr_dec_1[4] & data_4_pred_taken | addr_dec_1[5] &
    data_5_pred_taken | addr_dec_1[6] & data_6_pred_taken | addr_dec_1[7] & data_7_pred_taken | addr_dec_1[8] &
    data_8_pred_taken | addr_dec_1[9] & data_9_pred_taken | addr_dec_1[10] & data_10_pred_taken | addr_dec_1[11] &
    data_11_pred_taken | addr_dec_1[12] & data_12_pred_taken | addr_dec_1[13] & data_13_pred_taken | addr_dec_1[14] &
    data_14_pred_taken | _io_rdata_1_T_994; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1025 = addr_dec_1[15] & data_15_pd_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1040 = addr_dec_1[0] & data_0_pd_isRet | addr_dec_1[1] & data_1_pd_isRet | addr_dec_1[2] &
    data_2_pd_isRet | addr_dec_1[3] & data_3_pd_isRet | addr_dec_1[4] & data_4_pd_isRet | addr_dec_1[5] &
    data_5_pd_isRet | addr_dec_1[6] & data_6_pd_isRet | addr_dec_1[7] & data_7_pd_isRet | addr_dec_1[8] &
    data_8_pd_isRet | addr_dec_1[9] & data_9_pd_isRet | addr_dec_1[10] & data_10_pd_isRet | addr_dec_1[11] &
    data_11_pd_isRet | addr_dec_1[12] & data_12_pd_isRet | addr_dec_1[13] & data_13_pd_isRet | addr_dec_1[14] &
    data_14_pd_isRet | _io_rdata_1_T_1025; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1056 = addr_dec_1[15] & data_15_pd_isCall; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1071 = addr_dec_1[0] & data_0_pd_isCall | addr_dec_1[1] & data_1_pd_isCall | addr_dec_1[2] &
    data_2_pd_isCall | addr_dec_1[3] & data_3_pd_isCall | addr_dec_1[4] & data_4_pd_isCall | addr_dec_1[5] &
    data_5_pd_isCall | addr_dec_1[6] & data_6_pd_isCall | addr_dec_1[7] & data_7_pd_isCall | addr_dec_1[8] &
    data_8_pd_isCall | addr_dec_1[9] & data_9_pd_isCall | addr_dec_1[10] & data_10_pd_isCall | addr_dec_1[11] &
    data_11_pd_isCall | addr_dec_1[12] & data_12_pd_isCall | addr_dec_1[13] & data_13_pd_isCall | addr_dec_1[14] &
    data_14_pd_isCall | _io_rdata_1_T_1056; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1072 = addr_dec_1[0] ? data_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1073 = addr_dec_1[1] ? data_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1074 = addr_dec_1[2] ? data_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1075 = addr_dec_1[3] ? data_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1076 = addr_dec_1[4] ? data_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1077 = addr_dec_1[5] ? data_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1078 = addr_dec_1[6] ? data_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1079 = addr_dec_1[7] ? data_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1080 = addr_dec_1[8] ? data_8_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1081 = addr_dec_1[9] ? data_9_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1082 = addr_dec_1[10] ? data_10_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1083 = addr_dec_1[11] ? data_11_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1084 = addr_dec_1[12] ? data_12_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1085 = addr_dec_1[13] ? data_13_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1086 = addr_dec_1[14] ? data_14_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1087 = addr_dec_1[15] ? data_15_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1088 = _io_rdata_1_T_1072 | _io_rdata_1_T_1073; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1089 = _io_rdata_1_T_1088 | _io_rdata_1_T_1074; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1090 = _io_rdata_1_T_1089 | _io_rdata_1_T_1075; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1091 = _io_rdata_1_T_1090 | _io_rdata_1_T_1076; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1092 = _io_rdata_1_T_1091 | _io_rdata_1_T_1077; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1093 = _io_rdata_1_T_1092 | _io_rdata_1_T_1078; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1094 = _io_rdata_1_T_1093 | _io_rdata_1_T_1079; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1095 = _io_rdata_1_T_1094 | _io_rdata_1_T_1080; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1096 = _io_rdata_1_T_1095 | _io_rdata_1_T_1081; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1097 = _io_rdata_1_T_1096 | _io_rdata_1_T_1082; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1098 = _io_rdata_1_T_1097 | _io_rdata_1_T_1083; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1099 = _io_rdata_1_T_1098 | _io_rdata_1_T_1084; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1100 = _io_rdata_1_T_1099 | _io_rdata_1_T_1085; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1101 = _io_rdata_1_T_1100 | _io_rdata_1_T_1086; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_1_T_1102 = _io_rdata_1_T_1101 | _io_rdata_1_T_1087; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1118 = addr_dec_1[15] & data_15_pd_isRVC; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_1133 = addr_dec_1[0] & data_0_pd_isRVC | addr_dec_1[1] & data_1_pd_isRVC | addr_dec_1[2] &
    data_2_pd_isRVC | addr_dec_1[3] & data_3_pd_isRVC | addr_dec_1[4] & data_4_pd_isRVC | addr_dec_1[5] &
    data_5_pd_isRVC | addr_dec_1[6] & data_6_pd_isRVC | addr_dec_1[7] & data_7_pd_isRVC | addr_dec_1[8] &
    data_8_pd_isRVC | addr_dec_1[9] & data_9_pd_isRVC | addr_dec_1[10] & data_10_pd_isRVC | addr_dec_1[11] &
    data_11_pd_isRVC | addr_dec_1[12] & data_12_pd_isRVC | addr_dec_1[13] & data_13_pd_isRVC | addr_dec_1[14] &
    data_14_pd_isRVC | _io_rdata_1_T_1118; // @[Mux.scala 27:73]
  wire  read_by_0_2 = io_wen_0 & io_waddr_0 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_2 = io_wen_1 & io_waddr_1 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2_2 = io_wen_2 & io_waddr_2 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_3_2 = io_wen_3 & io_waddr_3 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_4_2 = io_wen_4 & io_waddr_4 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_5_2 = io_wen_5 & io_waddr_5 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_6_2 = io_wen_6 & io_waddr_6 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_7_2 = io_wen_7 & io_waddr_7 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec_2 = 16'h1 << io_raddr_2; // @[OneHot.scala 64:12]
  wire [7:0] _T_4 = {read_by_7_2,read_by_6_2,read_by_5_2,read_by_4_2,read_by_3_2,read_by_2_2,read_by_1_2,read_by_0_2}; // @[DataModuleTemplate.scala 178:28]
  wire  _io_rdata_2_T_209 = read_by_0_2 & io_wdata_0_acf | read_by_1_2 & io_wdata_1_acf | read_by_2_2 & io_wdata_2_acf
     | read_by_3_2 & io_wdata_3_acf | read_by_4_2 & io_wdata_4_acf | read_by_5_2 & io_wdata_5_acf | read_by_6_2 &
    io_wdata_6_acf | read_by_7_2 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_224 = read_by_0_2 & io_wdata_0_ipf | read_by_1_2 & io_wdata_1_ipf | read_by_2_2 & io_wdata_2_ipf
     | read_by_3_2 & io_wdata_3_ipf | read_by_4_2 & io_wdata_4_ipf | read_by_5_2 & io_wdata_5_ipf | read_by_6_2 &
    io_wdata_6_ipf | read_by_7_2 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_360 = read_by_0_2 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_361 = read_by_1_2 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_362 = read_by_2_2 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_363 = read_by_3_2 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_364 = read_by_4_2 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_365 = read_by_5_2 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_366 = read_by_6_2 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_367 = read_by_7_2 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_368 = _io_rdata_2_T_360 | _io_rdata_2_T_361; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_369 = _io_rdata_2_T_368 | _io_rdata_2_T_362; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_370 = _io_rdata_2_T_369 | _io_rdata_2_T_363; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_371 = _io_rdata_2_T_370 | _io_rdata_2_T_364; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_372 = _io_rdata_2_T_371 | _io_rdata_2_T_365; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_373 = _io_rdata_2_T_372 | _io_rdata_2_T_366; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_374 = _io_rdata_2_T_373 | _io_rdata_2_T_367; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_390 = read_by_0_2 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_391 = read_by_1_2 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_392 = read_by_2_2 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_393 = read_by_3_2 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_394 = read_by_4_2 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_395 = read_by_5_2 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_396 = read_by_6_2 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_397 = read_by_7_2 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_398 = _io_rdata_2_T_390 | _io_rdata_2_T_391; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_399 = _io_rdata_2_T_398 | _io_rdata_2_T_392; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_400 = _io_rdata_2_T_399 | _io_rdata_2_T_393; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_401 = _io_rdata_2_T_400 | _io_rdata_2_T_394; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_402 = _io_rdata_2_T_401 | _io_rdata_2_T_395; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_403 = _io_rdata_2_T_402 | _io_rdata_2_T_396; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_404 = _io_rdata_2_T_403 | _io_rdata_2_T_397; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_839 = addr_dec_2[15] & data_15_acf; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_854 = addr_dec_2[0] & data_0_acf | addr_dec_2[1] & data_1_acf | addr_dec_2[2] & data_2_acf |
    addr_dec_2[3] & data_3_acf | addr_dec_2[4] & data_4_acf | addr_dec_2[5] & data_5_acf | addr_dec_2[6] & data_6_acf |
    addr_dec_2[7] & data_7_acf | addr_dec_2[8] & data_8_acf | addr_dec_2[9] & data_9_acf | addr_dec_2[10] & data_10_acf
     | addr_dec_2[11] & data_11_acf | addr_dec_2[12] & data_12_acf | addr_dec_2[13] & data_13_acf | addr_dec_2[14] &
    data_14_acf | _io_rdata_2_T_839; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_870 = addr_dec_2[15] & data_15_ipf; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_885 = addr_dec_2[0] & data_0_ipf | addr_dec_2[1] & data_1_ipf | addr_dec_2[2] & data_2_ipf |
    addr_dec_2[3] & data_3_ipf | addr_dec_2[4] & data_4_ipf | addr_dec_2[5] & data_5_ipf | addr_dec_2[6] & data_6_ipf |
    addr_dec_2[7] & data_7_ipf | addr_dec_2[8] & data_8_ipf | addr_dec_2[9] & data_9_ipf | addr_dec_2[10] & data_10_ipf
     | addr_dec_2[11] & data_11_ipf | addr_dec_2[12] & data_12_ipf | addr_dec_2[13] & data_13_ipf | addr_dec_2[14] &
    data_14_ipf | _io_rdata_2_T_870; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1165 = addr_dec_2[0] ? data_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1166 = addr_dec_2[1] ? data_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1167 = addr_dec_2[2] ? data_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1168 = addr_dec_2[3] ? data_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1169 = addr_dec_2[4] ? data_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1170 = addr_dec_2[5] ? data_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1171 = addr_dec_2[6] ? data_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1172 = addr_dec_2[7] ? data_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1173 = addr_dec_2[8] ? data_8_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1174 = addr_dec_2[9] ? data_9_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1175 = addr_dec_2[10] ? data_10_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1176 = addr_dec_2[11] ? data_11_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1177 = addr_dec_2[12] ? data_12_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1178 = addr_dec_2[13] ? data_13_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1179 = addr_dec_2[14] ? data_14_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1180 = addr_dec_2[15] ? data_15_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1181 = _io_rdata_2_T_1165 | _io_rdata_2_T_1166; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1182 = _io_rdata_2_T_1181 | _io_rdata_2_T_1167; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1183 = _io_rdata_2_T_1182 | _io_rdata_2_T_1168; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1184 = _io_rdata_2_T_1183 | _io_rdata_2_T_1169; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1185 = _io_rdata_2_T_1184 | _io_rdata_2_T_1170; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1186 = _io_rdata_2_T_1185 | _io_rdata_2_T_1171; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1187 = _io_rdata_2_T_1186 | _io_rdata_2_T_1172; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1188 = _io_rdata_2_T_1187 | _io_rdata_2_T_1173; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1189 = _io_rdata_2_T_1188 | _io_rdata_2_T_1174; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1190 = _io_rdata_2_T_1189 | _io_rdata_2_T_1175; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1191 = _io_rdata_2_T_1190 | _io_rdata_2_T_1176; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1192 = _io_rdata_2_T_1191 | _io_rdata_2_T_1177; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1193 = _io_rdata_2_T_1192 | _io_rdata_2_T_1178; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1194 = _io_rdata_2_T_1193 | _io_rdata_2_T_1179; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_2_T_1195 = _io_rdata_2_T_1194 | _io_rdata_2_T_1180; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1227 = addr_dec_2[0] ? data_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1228 = addr_dec_2[1] ? data_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1229 = addr_dec_2[2] ? data_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1230 = addr_dec_2[3] ? data_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1231 = addr_dec_2[4] ? data_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1232 = addr_dec_2[5] ? data_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1233 = addr_dec_2[6] ? data_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1234 = addr_dec_2[7] ? data_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1235 = addr_dec_2[8] ? data_8_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1236 = addr_dec_2[9] ? data_9_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1237 = addr_dec_2[10] ? data_10_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1238 = addr_dec_2[11] ? data_11_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1239 = addr_dec_2[12] ? data_12_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1240 = addr_dec_2[13] ? data_13_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1241 = addr_dec_2[14] ? data_14_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1242 = addr_dec_2[15] ? data_15_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1243 = _io_rdata_2_T_1227 | _io_rdata_2_T_1228; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1244 = _io_rdata_2_T_1243 | _io_rdata_2_T_1229; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1245 = _io_rdata_2_T_1244 | _io_rdata_2_T_1230; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1246 = _io_rdata_2_T_1245 | _io_rdata_2_T_1231; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1247 = _io_rdata_2_T_1246 | _io_rdata_2_T_1232; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1248 = _io_rdata_2_T_1247 | _io_rdata_2_T_1233; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1249 = _io_rdata_2_T_1248 | _io_rdata_2_T_1234; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1250 = _io_rdata_2_T_1249 | _io_rdata_2_T_1235; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1251 = _io_rdata_2_T_1250 | _io_rdata_2_T_1236; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1252 = _io_rdata_2_T_1251 | _io_rdata_2_T_1237; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1253 = _io_rdata_2_T_1252 | _io_rdata_2_T_1238; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1254 = _io_rdata_2_T_1253 | _io_rdata_2_T_1239; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1255 = _io_rdata_2_T_1254 | _io_rdata_2_T_1240; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1256 = _io_rdata_2_T_1255 | _io_rdata_2_T_1241; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_2_T_1257 = _io_rdata_2_T_1256 | _io_rdata_2_T_1242; // @[Mux.scala 27:73]
  wire  read_by_0_3 = io_wen_0 & io_waddr_0 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_3 = io_wen_1 & io_waddr_1 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2_3 = io_wen_2 & io_waddr_2 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_3_3 = io_wen_3 & io_waddr_3 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_4_3 = io_wen_4 & io_waddr_4 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_5_3 = io_wen_5 & io_waddr_5 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_6_3 = io_wen_6 & io_waddr_6 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_7_3 = io_wen_7 & io_waddr_7 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec_3 = 16'h1 << io_raddr_3; // @[OneHot.scala 64:12]
  wire [7:0] _T_6 = {read_by_7_3,read_by_6_3,read_by_5_3,read_by_4_3,read_by_3_3,read_by_2_3,read_by_1_3,read_by_0_3}; // @[DataModuleTemplate.scala 178:28]
  wire  _io_rdata_3_T_209 = read_by_0_3 & io_wdata_0_acf | read_by_1_3 & io_wdata_1_acf | read_by_2_3 & io_wdata_2_acf
     | read_by_3_3 & io_wdata_3_acf | read_by_4_3 & io_wdata_4_acf | read_by_5_3 & io_wdata_5_acf | read_by_6_3 &
    io_wdata_6_acf | read_by_7_3 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_224 = read_by_0_3 & io_wdata_0_ipf | read_by_1_3 & io_wdata_1_ipf | read_by_2_3 & io_wdata_2_ipf
     | read_by_3_3 & io_wdata_3_ipf | read_by_4_3 & io_wdata_4_ipf | read_by_5_3 & io_wdata_5_ipf | read_by_6_3 &
    io_wdata_6_ipf | read_by_7_3 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_360 = read_by_0_3 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_361 = read_by_1_3 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_362 = read_by_2_3 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_363 = read_by_3_3 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_364 = read_by_4_3 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_365 = read_by_5_3 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_366 = read_by_6_3 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_367 = read_by_7_3 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_368 = _io_rdata_3_T_360 | _io_rdata_3_T_361; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_369 = _io_rdata_3_T_368 | _io_rdata_3_T_362; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_370 = _io_rdata_3_T_369 | _io_rdata_3_T_363; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_371 = _io_rdata_3_T_370 | _io_rdata_3_T_364; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_372 = _io_rdata_3_T_371 | _io_rdata_3_T_365; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_373 = _io_rdata_3_T_372 | _io_rdata_3_T_366; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_374 = _io_rdata_3_T_373 | _io_rdata_3_T_367; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_390 = read_by_0_3 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_391 = read_by_1_3 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_392 = read_by_2_3 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_393 = read_by_3_3 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_394 = read_by_4_3 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_395 = read_by_5_3 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_396 = read_by_6_3 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_397 = read_by_7_3 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_398 = _io_rdata_3_T_390 | _io_rdata_3_T_391; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_399 = _io_rdata_3_T_398 | _io_rdata_3_T_392; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_400 = _io_rdata_3_T_399 | _io_rdata_3_T_393; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_401 = _io_rdata_3_T_400 | _io_rdata_3_T_394; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_402 = _io_rdata_3_T_401 | _io_rdata_3_T_395; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_403 = _io_rdata_3_T_402 | _io_rdata_3_T_396; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_404 = _io_rdata_3_T_403 | _io_rdata_3_T_397; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_839 = addr_dec_3[15] & data_15_acf; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_854 = addr_dec_3[0] & data_0_acf | addr_dec_3[1] & data_1_acf | addr_dec_3[2] & data_2_acf |
    addr_dec_3[3] & data_3_acf | addr_dec_3[4] & data_4_acf | addr_dec_3[5] & data_5_acf | addr_dec_3[6] & data_6_acf |
    addr_dec_3[7] & data_7_acf | addr_dec_3[8] & data_8_acf | addr_dec_3[9] & data_9_acf | addr_dec_3[10] & data_10_acf
     | addr_dec_3[11] & data_11_acf | addr_dec_3[12] & data_12_acf | addr_dec_3[13] & data_13_acf | addr_dec_3[14] &
    data_14_acf | _io_rdata_3_T_839; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_870 = addr_dec_3[15] & data_15_ipf; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_885 = addr_dec_3[0] & data_0_ipf | addr_dec_3[1] & data_1_ipf | addr_dec_3[2] & data_2_ipf |
    addr_dec_3[3] & data_3_ipf | addr_dec_3[4] & data_4_ipf | addr_dec_3[5] & data_5_ipf | addr_dec_3[6] & data_6_ipf |
    addr_dec_3[7] & data_7_ipf | addr_dec_3[8] & data_8_ipf | addr_dec_3[9] & data_9_ipf | addr_dec_3[10] & data_10_ipf
     | addr_dec_3[11] & data_11_ipf | addr_dec_3[12] & data_12_ipf | addr_dec_3[13] & data_13_ipf | addr_dec_3[14] &
    data_14_ipf | _io_rdata_3_T_870; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1165 = addr_dec_3[0] ? data_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1166 = addr_dec_3[1] ? data_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1167 = addr_dec_3[2] ? data_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1168 = addr_dec_3[3] ? data_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1169 = addr_dec_3[4] ? data_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1170 = addr_dec_3[5] ? data_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1171 = addr_dec_3[6] ? data_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1172 = addr_dec_3[7] ? data_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1173 = addr_dec_3[8] ? data_8_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1174 = addr_dec_3[9] ? data_9_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1175 = addr_dec_3[10] ? data_10_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1176 = addr_dec_3[11] ? data_11_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1177 = addr_dec_3[12] ? data_12_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1178 = addr_dec_3[13] ? data_13_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1179 = addr_dec_3[14] ? data_14_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1180 = addr_dec_3[15] ? data_15_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1181 = _io_rdata_3_T_1165 | _io_rdata_3_T_1166; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1182 = _io_rdata_3_T_1181 | _io_rdata_3_T_1167; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1183 = _io_rdata_3_T_1182 | _io_rdata_3_T_1168; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1184 = _io_rdata_3_T_1183 | _io_rdata_3_T_1169; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1185 = _io_rdata_3_T_1184 | _io_rdata_3_T_1170; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1186 = _io_rdata_3_T_1185 | _io_rdata_3_T_1171; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1187 = _io_rdata_3_T_1186 | _io_rdata_3_T_1172; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1188 = _io_rdata_3_T_1187 | _io_rdata_3_T_1173; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1189 = _io_rdata_3_T_1188 | _io_rdata_3_T_1174; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1190 = _io_rdata_3_T_1189 | _io_rdata_3_T_1175; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1191 = _io_rdata_3_T_1190 | _io_rdata_3_T_1176; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1192 = _io_rdata_3_T_1191 | _io_rdata_3_T_1177; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1193 = _io_rdata_3_T_1192 | _io_rdata_3_T_1178; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1194 = _io_rdata_3_T_1193 | _io_rdata_3_T_1179; // @[Mux.scala 27:73]
  wire [9:0] _io_rdata_3_T_1195 = _io_rdata_3_T_1194 | _io_rdata_3_T_1180; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1227 = addr_dec_3[0] ? data_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1228 = addr_dec_3[1] ? data_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1229 = addr_dec_3[2] ? data_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1230 = addr_dec_3[3] ? data_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1231 = addr_dec_3[4] ? data_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1232 = addr_dec_3[5] ? data_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1233 = addr_dec_3[6] ? data_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1234 = addr_dec_3[7] ? data_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1235 = addr_dec_3[8] ? data_8_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1236 = addr_dec_3[9] ? data_9_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1237 = addr_dec_3[10] ? data_10_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1238 = addr_dec_3[11] ? data_11_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1239 = addr_dec_3[12] ? data_12_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1240 = addr_dec_3[13] ? data_13_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1241 = addr_dec_3[14] ? data_14_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1242 = addr_dec_3[15] ? data_15_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1243 = _io_rdata_3_T_1227 | _io_rdata_3_T_1228; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1244 = _io_rdata_3_T_1243 | _io_rdata_3_T_1229; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1245 = _io_rdata_3_T_1244 | _io_rdata_3_T_1230; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1246 = _io_rdata_3_T_1245 | _io_rdata_3_T_1231; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1247 = _io_rdata_3_T_1246 | _io_rdata_3_T_1232; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1248 = _io_rdata_3_T_1247 | _io_rdata_3_T_1233; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1249 = _io_rdata_3_T_1248 | _io_rdata_3_T_1234; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1250 = _io_rdata_3_T_1249 | _io_rdata_3_T_1235; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1251 = _io_rdata_3_T_1250 | _io_rdata_3_T_1236; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1252 = _io_rdata_3_T_1251 | _io_rdata_3_T_1237; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1253 = _io_rdata_3_T_1252 | _io_rdata_3_T_1238; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1254 = _io_rdata_3_T_1253 | _io_rdata_3_T_1239; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1255 = _io_rdata_3_T_1254 | _io_rdata_3_T_1240; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1256 = _io_rdata_3_T_1255 | _io_rdata_3_T_1241; // @[Mux.scala 27:73]
  wire [31:0] _io_rdata_3_T_1257 = _io_rdata_3_T_1256 | _io_rdata_3_T_1242; // @[Mux.scala 27:73]
  wire [15:0] waddr_dec_0 = 16'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_1 = 16'h1 << io_waddr_1; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_2 = 16'h1 << io_waddr_2; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_3 = 16'h1 << io_waddr_3; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_4 = 16'h1 << io_waddr_4; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_5 = 16'h1 << io_waddr_5; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_6 = 16'h1 << io_waddr_6; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_7 = 16'h1 << io_waddr_7; // @[OneHot.scala 57:35]
  wire  write_wen_0 = io_wen_0 & waddr_dec_0[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1 = io_wen_1 & waddr_dec_1[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2 = io_wen_2 & waddr_dec_2[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3 = io_wen_3 & waddr_dec_3[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4 = io_wen_4 & waddr_dec_4[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5 = io_wen_5 & waddr_dec_5[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6 = io_wen_6 & waddr_dec_6[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7 = io_wen_7 & waddr_dec_7[0]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_8 = {write_wen_7,write_wen_6,write_wen_5,write_wen_4,write_wen_3,write_wen_2,write_wen_1,write_wen_0}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_0_T_104 = write_wen_0 & io_wdata_0_triggered_backendEn_0 | write_wen_1 & io_wdata_1_triggered_backendEn_0
     | write_wen_2 & io_wdata_2_triggered_backendEn_0 | write_wen_3 & io_wdata_3_triggered_backendEn_0 | write_wen_4 &
    io_wdata_4_triggered_backendEn_0 | write_wen_5 & io_wdata_5_triggered_backendEn_0 | write_wen_6 &
    io_wdata_6_triggered_backendEn_0 | write_wen_7 & io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_0_T_119 = write_wen_0 & io_wdata_0_triggered_backendEn_1 | write_wen_1 & io_wdata_1_triggered_backendEn_1
     | write_wen_2 & io_wdata_2_triggered_backendEn_1 | write_wen_3 & io_wdata_3_triggered_backendEn_1 | write_wen_4 &
    io_wdata_4_triggered_backendEn_1 | write_wen_5 & io_wdata_5_triggered_backendEn_1 | write_wen_6 &
    io_wdata_6_triggered_backendEn_1 | write_wen_7 & io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_0_T_134 = write_wen_0 & io_wdata_0_triggered_frontendHit_0 | write_wen_1 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2 & io_wdata_2_triggered_frontendHit_0 | write_wen_3 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4 & io_wdata_4_triggered_frontendHit_0 | write_wen_5 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6 & io_wdata_6_triggered_frontendHit_0 | write_wen_7 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_0_T_149 = write_wen_0 & io_wdata_0_triggered_frontendHit_1 | write_wen_1 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2 & io_wdata_2_triggered_frontendHit_1 | write_wen_3 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4 & io_wdata_4_triggered_frontendHit_1 | write_wen_5 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6 & io_wdata_6_triggered_frontendHit_1 | write_wen_7 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_0_T_164 = write_wen_0 & io_wdata_0_triggered_frontendHit_2 | write_wen_1 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2 & io_wdata_2_triggered_frontendHit_2 | write_wen_3 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4 & io_wdata_4_triggered_frontendHit_2 | write_wen_5 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6 & io_wdata_6_triggered_frontendHit_2 | write_wen_7 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_0_T_179 = write_wen_0 & io_wdata_0_triggered_frontendHit_3 | write_wen_1 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2 & io_wdata_2_triggered_frontendHit_3 | write_wen_3 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4 & io_wdata_4_triggered_frontendHit_3 | write_wen_5 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6 & io_wdata_6_triggered_frontendHit_3 | write_wen_7 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_0_T_194 = write_wen_0 & io_wdata_0_crossPageIPFFix | write_wen_1 & io_wdata_1_crossPageIPFFix |
    write_wen_2 & io_wdata_2_crossPageIPFFix | write_wen_3 & io_wdata_3_crossPageIPFFix | write_wen_4 &
    io_wdata_4_crossPageIPFFix | write_wen_5 & io_wdata_5_crossPageIPFFix | write_wen_6 & io_wdata_6_crossPageIPFFix |
    write_wen_7 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_0_T_209 = write_wen_0 & io_wdata_0_acf | write_wen_1 & io_wdata_1_acf | write_wen_2 & io_wdata_2_acf |
    write_wen_3 & io_wdata_3_acf | write_wen_4 & io_wdata_4_acf | write_wen_5 & io_wdata_5_acf | write_wen_6 &
    io_wdata_6_acf | write_wen_7 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_0_T_224 = write_wen_0 & io_wdata_0_ipf | write_wen_1 & io_wdata_1_ipf | write_wen_2 & io_wdata_2_ipf |
    write_wen_3 & io_wdata_3_ipf | write_wen_4 & io_wdata_4_ipf | write_wen_5 & io_wdata_5_ipf | write_wen_6 &
    io_wdata_6_ipf | write_wen_7 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_226 = write_wen_1 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_227 = write_wen_2 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_228 = write_wen_3 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_229 = write_wen_4 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_230 = write_wen_5 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_231 = write_wen_6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_232 = write_wen_7 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_234 = _data_0_T_226 | _data_0_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_235 = _data_0_T_234 | _data_0_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_236 = _data_0_T_235 | _data_0_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_237 = _data_0_T_236 | _data_0_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_238 = _data_0_T_237 | _data_0_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_239 = _data_0_T_238 | _data_0_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_240 = write_wen_0 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_241 = write_wen_1 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_242 = write_wen_2 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_243 = write_wen_3 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_244 = write_wen_4 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_245 = write_wen_5 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_246 = write_wen_6 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_247 = write_wen_7 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_248 = _data_0_T_240 | _data_0_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_249 = _data_0_T_248 | _data_0_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_250 = _data_0_T_249 | _data_0_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_251 = _data_0_T_250 | _data_0_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_252 = _data_0_T_251 | _data_0_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_253 = _data_0_T_252 | _data_0_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_0_T_254 = _data_0_T_253 | _data_0_T_247; // @[Mux.scala 27:73]
  wire  _data_0_T_269 = write_wen_0 & io_wdata_0_ftqPtr_flag | write_wen_1 & io_wdata_1_ftqPtr_flag | write_wen_2 &
    io_wdata_2_ftqPtr_flag | write_wen_3 & io_wdata_3_ftqPtr_flag | write_wen_4 & io_wdata_4_ftqPtr_flag | write_wen_5
     & io_wdata_5_ftqPtr_flag | write_wen_6 & io_wdata_6_ftqPtr_flag | write_wen_7 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_0_T_284 = write_wen_0 & io_wdata_0_pred_taken | write_wen_1 & io_wdata_1_pred_taken | write_wen_2 &
    io_wdata_2_pred_taken | write_wen_3 & io_wdata_3_pred_taken | write_wen_4 & io_wdata_4_pred_taken | write_wen_5 &
    io_wdata_5_pred_taken | write_wen_6 & io_wdata_6_pred_taken | write_wen_7 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_0_T_299 = write_wen_0 & io_wdata_0_pd_isRet | write_wen_1 & io_wdata_1_pd_isRet | write_wen_2 &
    io_wdata_2_pd_isRet | write_wen_3 & io_wdata_3_pd_isRet | write_wen_4 & io_wdata_4_pd_isRet | write_wen_5 &
    io_wdata_5_pd_isRet | write_wen_6 & io_wdata_6_pd_isRet | write_wen_7 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_0_T_314 = write_wen_0 & io_wdata_0_pd_isCall | write_wen_1 & io_wdata_1_pd_isCall | write_wen_2 &
    io_wdata_2_pd_isCall | write_wen_3 & io_wdata_3_pd_isCall | write_wen_4 & io_wdata_4_pd_isCall | write_wen_5 &
    io_wdata_5_pd_isCall | write_wen_6 & io_wdata_6_pd_isCall | write_wen_7 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_315 = write_wen_0 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_316 = write_wen_1 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_317 = write_wen_2 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_318 = write_wen_3 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_319 = write_wen_4 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_320 = write_wen_5 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_321 = write_wen_6 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_322 = write_wen_7 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_323 = _data_0_T_315 | _data_0_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_324 = _data_0_T_323 | _data_0_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_325 = _data_0_T_324 | _data_0_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_326 = _data_0_T_325 | _data_0_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_327 = _data_0_T_326 | _data_0_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_328 = _data_0_T_327 | _data_0_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_0_T_329 = _data_0_T_328 | _data_0_T_322; // @[Mux.scala 27:73]
  wire  _data_0_T_344 = write_wen_0 & io_wdata_0_pd_isRVC | write_wen_1 & io_wdata_1_pd_isRVC | write_wen_2 &
    io_wdata_2_pd_isRVC | write_wen_3 & io_wdata_3_pd_isRVC | write_wen_4 & io_wdata_4_pd_isRVC | write_wen_5 &
    io_wdata_5_pd_isRVC | write_wen_6 & io_wdata_6_pd_isRVC | write_wen_7 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_360 = write_wen_0 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_361 = write_wen_1 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_362 = write_wen_2 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_363 = write_wen_3 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_364 = write_wen_4 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_365 = write_wen_5 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_366 = write_wen_6 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_367 = write_wen_7 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_368 = _data_0_T_360 | _data_0_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_369 = _data_0_T_368 | _data_0_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_370 = _data_0_T_369 | _data_0_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_371 = _data_0_T_370 | _data_0_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_372 = _data_0_T_371 | _data_0_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_373 = _data_0_T_372 | _data_0_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_0_T_374 = _data_0_T_373 | _data_0_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_390 = write_wen_0 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_391 = write_wen_1 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_392 = write_wen_2 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_393 = write_wen_3 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_394 = write_wen_4 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_395 = write_wen_5 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_396 = write_wen_6 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_397 = write_wen_7 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_398 = _data_0_T_390 | _data_0_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_399 = _data_0_T_398 | _data_0_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_400 = _data_0_T_399 | _data_0_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_401 = _data_0_T_400 | _data_0_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_402 = _data_0_T_401 | _data_0_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_403 = _data_0_T_402 | _data_0_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_0_T_404 = _data_0_T_403 | _data_0_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_1 = io_wen_0 & waddr_dec_0[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_1 = io_wen_1 & waddr_dec_1[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_1 = io_wen_2 & waddr_dec_2[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_1 = io_wen_3 & waddr_dec_3[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_1 = io_wen_4 & waddr_dec_4[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_1 = io_wen_5 & waddr_dec_5[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_1 = io_wen_6 & waddr_dec_6[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_1 = io_wen_7 & waddr_dec_7[1]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_10 = {write_wen_7_1,write_wen_6_1,write_wen_5_1,write_wen_4_1,write_wen_3_1,write_wen_2_1,write_wen_1_1,
    write_wen_0_1}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_1_T_104 = write_wen_0_1 & io_wdata_0_triggered_backendEn_0 | write_wen_1_1 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_1 & io_wdata_2_triggered_backendEn_0 | write_wen_3_1 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_1 & io_wdata_4_triggered_backendEn_0 | write_wen_5_1 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_1 & io_wdata_6_triggered_backendEn_0 | write_wen_7_1 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_1_T_119 = write_wen_0_1 & io_wdata_0_triggered_backendEn_1 | write_wen_1_1 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_1 & io_wdata_2_triggered_backendEn_1 | write_wen_3_1 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_1 & io_wdata_4_triggered_backendEn_1 | write_wen_5_1 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_1 & io_wdata_6_triggered_backendEn_1 | write_wen_7_1 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_1_T_134 = write_wen_0_1 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_1 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_1 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_1 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_1 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_1 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_1 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_1 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_1_T_149 = write_wen_0_1 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_1 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_1 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_1 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_1 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_1 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_1 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_1 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_1_T_164 = write_wen_0_1 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_1 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_1 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_1 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_1 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_1 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_1 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_1 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_1_T_179 = write_wen_0_1 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_1 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_1 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_1 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_1 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_1 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_1 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_1 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_1_T_194 = write_wen_0_1 & io_wdata_0_crossPageIPFFix | write_wen_1_1 & io_wdata_1_crossPageIPFFix |
    write_wen_2_1 & io_wdata_2_crossPageIPFFix | write_wen_3_1 & io_wdata_3_crossPageIPFFix | write_wen_4_1 &
    io_wdata_4_crossPageIPFFix | write_wen_5_1 & io_wdata_5_crossPageIPFFix | write_wen_6_1 & io_wdata_6_crossPageIPFFix
     | write_wen_7_1 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_1_T_209 = write_wen_0_1 & io_wdata_0_acf | write_wen_1_1 & io_wdata_1_acf | write_wen_2_1 & io_wdata_2_acf
     | write_wen_3_1 & io_wdata_3_acf | write_wen_4_1 & io_wdata_4_acf | write_wen_5_1 & io_wdata_5_acf | write_wen_6_1
     & io_wdata_6_acf | write_wen_7_1 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_1_T_224 = write_wen_0_1 & io_wdata_0_ipf | write_wen_1_1 & io_wdata_1_ipf | write_wen_2_1 & io_wdata_2_ipf
     | write_wen_3_1 & io_wdata_3_ipf | write_wen_4_1 & io_wdata_4_ipf | write_wen_5_1 & io_wdata_5_ipf | write_wen_6_1
     & io_wdata_6_ipf | write_wen_7_1 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_226 = write_wen_1_1 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_227 = write_wen_2_1 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_228 = write_wen_3_1 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_229 = write_wen_4_1 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_230 = write_wen_5_1 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_231 = write_wen_6_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_232 = write_wen_7_1 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_234 = _data_1_T_226 | _data_1_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_235 = _data_1_T_234 | _data_1_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_236 = _data_1_T_235 | _data_1_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_237 = _data_1_T_236 | _data_1_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_238 = _data_1_T_237 | _data_1_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_239 = _data_1_T_238 | _data_1_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_240 = write_wen_0_1 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_241 = write_wen_1_1 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_242 = write_wen_2_1 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_243 = write_wen_3_1 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_244 = write_wen_4_1 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_245 = write_wen_5_1 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_246 = write_wen_6_1 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_247 = write_wen_7_1 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_248 = _data_1_T_240 | _data_1_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_249 = _data_1_T_248 | _data_1_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_250 = _data_1_T_249 | _data_1_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_251 = _data_1_T_250 | _data_1_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_252 = _data_1_T_251 | _data_1_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_253 = _data_1_T_252 | _data_1_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_1_T_254 = _data_1_T_253 | _data_1_T_247; // @[Mux.scala 27:73]
  wire  _data_1_T_269 = write_wen_0_1 & io_wdata_0_ftqPtr_flag | write_wen_1_1 & io_wdata_1_ftqPtr_flag | write_wen_2_1
     & io_wdata_2_ftqPtr_flag | write_wen_3_1 & io_wdata_3_ftqPtr_flag | write_wen_4_1 & io_wdata_4_ftqPtr_flag |
    write_wen_5_1 & io_wdata_5_ftqPtr_flag | write_wen_6_1 & io_wdata_6_ftqPtr_flag | write_wen_7_1 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_1_T_284 = write_wen_0_1 & io_wdata_0_pred_taken | write_wen_1_1 & io_wdata_1_pred_taken | write_wen_2_1 &
    io_wdata_2_pred_taken | write_wen_3_1 & io_wdata_3_pred_taken | write_wen_4_1 & io_wdata_4_pred_taken |
    write_wen_5_1 & io_wdata_5_pred_taken | write_wen_6_1 & io_wdata_6_pred_taken | write_wen_7_1 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_1_T_299 = write_wen_0_1 & io_wdata_0_pd_isRet | write_wen_1_1 & io_wdata_1_pd_isRet | write_wen_2_1 &
    io_wdata_2_pd_isRet | write_wen_3_1 & io_wdata_3_pd_isRet | write_wen_4_1 & io_wdata_4_pd_isRet | write_wen_5_1 &
    io_wdata_5_pd_isRet | write_wen_6_1 & io_wdata_6_pd_isRet | write_wen_7_1 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_1_T_314 = write_wen_0_1 & io_wdata_0_pd_isCall | write_wen_1_1 & io_wdata_1_pd_isCall | write_wen_2_1 &
    io_wdata_2_pd_isCall | write_wen_3_1 & io_wdata_3_pd_isCall | write_wen_4_1 & io_wdata_4_pd_isCall | write_wen_5_1
     & io_wdata_5_pd_isCall | write_wen_6_1 & io_wdata_6_pd_isCall | write_wen_7_1 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_315 = write_wen_0_1 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_316 = write_wen_1_1 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_317 = write_wen_2_1 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_318 = write_wen_3_1 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_319 = write_wen_4_1 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_320 = write_wen_5_1 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_321 = write_wen_6_1 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_322 = write_wen_7_1 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_323 = _data_1_T_315 | _data_1_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_324 = _data_1_T_323 | _data_1_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_325 = _data_1_T_324 | _data_1_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_326 = _data_1_T_325 | _data_1_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_327 = _data_1_T_326 | _data_1_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_328 = _data_1_T_327 | _data_1_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_1_T_329 = _data_1_T_328 | _data_1_T_322; // @[Mux.scala 27:73]
  wire  _data_1_T_344 = write_wen_0_1 & io_wdata_0_pd_isRVC | write_wen_1_1 & io_wdata_1_pd_isRVC | write_wen_2_1 &
    io_wdata_2_pd_isRVC | write_wen_3_1 & io_wdata_3_pd_isRVC | write_wen_4_1 & io_wdata_4_pd_isRVC | write_wen_5_1 &
    io_wdata_5_pd_isRVC | write_wen_6_1 & io_wdata_6_pd_isRVC | write_wen_7_1 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_360 = write_wen_0_1 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_361 = write_wen_1_1 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_362 = write_wen_2_1 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_363 = write_wen_3_1 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_364 = write_wen_4_1 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_365 = write_wen_5_1 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_366 = write_wen_6_1 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_367 = write_wen_7_1 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_368 = _data_1_T_360 | _data_1_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_369 = _data_1_T_368 | _data_1_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_370 = _data_1_T_369 | _data_1_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_371 = _data_1_T_370 | _data_1_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_372 = _data_1_T_371 | _data_1_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_373 = _data_1_T_372 | _data_1_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_1_T_374 = _data_1_T_373 | _data_1_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_390 = write_wen_0_1 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_391 = write_wen_1_1 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_392 = write_wen_2_1 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_393 = write_wen_3_1 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_394 = write_wen_4_1 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_395 = write_wen_5_1 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_396 = write_wen_6_1 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_397 = write_wen_7_1 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_398 = _data_1_T_390 | _data_1_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_399 = _data_1_T_398 | _data_1_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_400 = _data_1_T_399 | _data_1_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_401 = _data_1_T_400 | _data_1_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_402 = _data_1_T_401 | _data_1_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_403 = _data_1_T_402 | _data_1_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_1_T_404 = _data_1_T_403 | _data_1_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_2 = io_wen_0 & waddr_dec_0[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_2 = io_wen_1 & waddr_dec_1[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_2 = io_wen_2 & waddr_dec_2[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_2 = io_wen_3 & waddr_dec_3[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_2 = io_wen_4 & waddr_dec_4[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_2 = io_wen_5 & waddr_dec_5[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_2 = io_wen_6 & waddr_dec_6[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_2 = io_wen_7 & waddr_dec_7[2]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_12 = {write_wen_7_2,write_wen_6_2,write_wen_5_2,write_wen_4_2,write_wen_3_2,write_wen_2_2,write_wen_1_2,
    write_wen_0_2}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_2_T_104 = write_wen_0_2 & io_wdata_0_triggered_backendEn_0 | write_wen_1_2 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_2 & io_wdata_2_triggered_backendEn_0 | write_wen_3_2 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_2 & io_wdata_4_triggered_backendEn_0 | write_wen_5_2 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_2 & io_wdata_6_triggered_backendEn_0 | write_wen_7_2 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_2_T_119 = write_wen_0_2 & io_wdata_0_triggered_backendEn_1 | write_wen_1_2 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_2 & io_wdata_2_triggered_backendEn_1 | write_wen_3_2 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_2 & io_wdata_4_triggered_backendEn_1 | write_wen_5_2 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_2 & io_wdata_6_triggered_backendEn_1 | write_wen_7_2 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_2_T_134 = write_wen_0_2 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_2 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_2 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_2 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_2 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_2 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_2 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_2 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_2_T_149 = write_wen_0_2 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_2 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_2 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_2 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_2 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_2 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_2 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_2 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_2_T_164 = write_wen_0_2 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_2 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_2 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_2 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_2 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_2 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_2 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_2 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_2_T_179 = write_wen_0_2 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_2 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_2 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_2 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_2 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_2 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_2 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_2 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_2_T_194 = write_wen_0_2 & io_wdata_0_crossPageIPFFix | write_wen_1_2 & io_wdata_1_crossPageIPFFix |
    write_wen_2_2 & io_wdata_2_crossPageIPFFix | write_wen_3_2 & io_wdata_3_crossPageIPFFix | write_wen_4_2 &
    io_wdata_4_crossPageIPFFix | write_wen_5_2 & io_wdata_5_crossPageIPFFix | write_wen_6_2 & io_wdata_6_crossPageIPFFix
     | write_wen_7_2 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_2_T_209 = write_wen_0_2 & io_wdata_0_acf | write_wen_1_2 & io_wdata_1_acf | write_wen_2_2 & io_wdata_2_acf
     | write_wen_3_2 & io_wdata_3_acf | write_wen_4_2 & io_wdata_4_acf | write_wen_5_2 & io_wdata_5_acf | write_wen_6_2
     & io_wdata_6_acf | write_wen_7_2 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_2_T_224 = write_wen_0_2 & io_wdata_0_ipf | write_wen_1_2 & io_wdata_1_ipf | write_wen_2_2 & io_wdata_2_ipf
     | write_wen_3_2 & io_wdata_3_ipf | write_wen_4_2 & io_wdata_4_ipf | write_wen_5_2 & io_wdata_5_ipf | write_wen_6_2
     & io_wdata_6_ipf | write_wen_7_2 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_226 = write_wen_1_2 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_227 = write_wen_2_2 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_228 = write_wen_3_2 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_229 = write_wen_4_2 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_230 = write_wen_5_2 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_231 = write_wen_6_2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_232 = write_wen_7_2 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_234 = _data_2_T_226 | _data_2_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_235 = _data_2_T_234 | _data_2_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_236 = _data_2_T_235 | _data_2_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_237 = _data_2_T_236 | _data_2_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_238 = _data_2_T_237 | _data_2_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_239 = _data_2_T_238 | _data_2_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_240 = write_wen_0_2 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_241 = write_wen_1_2 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_242 = write_wen_2_2 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_243 = write_wen_3_2 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_244 = write_wen_4_2 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_245 = write_wen_5_2 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_246 = write_wen_6_2 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_247 = write_wen_7_2 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_248 = _data_2_T_240 | _data_2_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_249 = _data_2_T_248 | _data_2_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_250 = _data_2_T_249 | _data_2_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_251 = _data_2_T_250 | _data_2_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_252 = _data_2_T_251 | _data_2_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_253 = _data_2_T_252 | _data_2_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_2_T_254 = _data_2_T_253 | _data_2_T_247; // @[Mux.scala 27:73]
  wire  _data_2_T_269 = write_wen_0_2 & io_wdata_0_ftqPtr_flag | write_wen_1_2 & io_wdata_1_ftqPtr_flag | write_wen_2_2
     & io_wdata_2_ftqPtr_flag | write_wen_3_2 & io_wdata_3_ftqPtr_flag | write_wen_4_2 & io_wdata_4_ftqPtr_flag |
    write_wen_5_2 & io_wdata_5_ftqPtr_flag | write_wen_6_2 & io_wdata_6_ftqPtr_flag | write_wen_7_2 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_2_T_284 = write_wen_0_2 & io_wdata_0_pred_taken | write_wen_1_2 & io_wdata_1_pred_taken | write_wen_2_2 &
    io_wdata_2_pred_taken | write_wen_3_2 & io_wdata_3_pred_taken | write_wen_4_2 & io_wdata_4_pred_taken |
    write_wen_5_2 & io_wdata_5_pred_taken | write_wen_6_2 & io_wdata_6_pred_taken | write_wen_7_2 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_2_T_299 = write_wen_0_2 & io_wdata_0_pd_isRet | write_wen_1_2 & io_wdata_1_pd_isRet | write_wen_2_2 &
    io_wdata_2_pd_isRet | write_wen_3_2 & io_wdata_3_pd_isRet | write_wen_4_2 & io_wdata_4_pd_isRet | write_wen_5_2 &
    io_wdata_5_pd_isRet | write_wen_6_2 & io_wdata_6_pd_isRet | write_wen_7_2 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_2_T_314 = write_wen_0_2 & io_wdata_0_pd_isCall | write_wen_1_2 & io_wdata_1_pd_isCall | write_wen_2_2 &
    io_wdata_2_pd_isCall | write_wen_3_2 & io_wdata_3_pd_isCall | write_wen_4_2 & io_wdata_4_pd_isCall | write_wen_5_2
     & io_wdata_5_pd_isCall | write_wen_6_2 & io_wdata_6_pd_isCall | write_wen_7_2 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_315 = write_wen_0_2 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_316 = write_wen_1_2 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_317 = write_wen_2_2 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_318 = write_wen_3_2 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_319 = write_wen_4_2 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_320 = write_wen_5_2 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_321 = write_wen_6_2 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_322 = write_wen_7_2 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_323 = _data_2_T_315 | _data_2_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_324 = _data_2_T_323 | _data_2_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_325 = _data_2_T_324 | _data_2_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_326 = _data_2_T_325 | _data_2_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_327 = _data_2_T_326 | _data_2_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_328 = _data_2_T_327 | _data_2_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_2_T_329 = _data_2_T_328 | _data_2_T_322; // @[Mux.scala 27:73]
  wire  _data_2_T_344 = write_wen_0_2 & io_wdata_0_pd_isRVC | write_wen_1_2 & io_wdata_1_pd_isRVC | write_wen_2_2 &
    io_wdata_2_pd_isRVC | write_wen_3_2 & io_wdata_3_pd_isRVC | write_wen_4_2 & io_wdata_4_pd_isRVC | write_wen_5_2 &
    io_wdata_5_pd_isRVC | write_wen_6_2 & io_wdata_6_pd_isRVC | write_wen_7_2 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_360 = write_wen_0_2 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_361 = write_wen_1_2 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_362 = write_wen_2_2 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_363 = write_wen_3_2 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_364 = write_wen_4_2 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_365 = write_wen_5_2 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_366 = write_wen_6_2 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_367 = write_wen_7_2 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_368 = _data_2_T_360 | _data_2_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_369 = _data_2_T_368 | _data_2_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_370 = _data_2_T_369 | _data_2_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_371 = _data_2_T_370 | _data_2_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_372 = _data_2_T_371 | _data_2_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_373 = _data_2_T_372 | _data_2_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_2_T_374 = _data_2_T_373 | _data_2_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_390 = write_wen_0_2 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_391 = write_wen_1_2 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_392 = write_wen_2_2 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_393 = write_wen_3_2 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_394 = write_wen_4_2 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_395 = write_wen_5_2 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_396 = write_wen_6_2 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_397 = write_wen_7_2 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_398 = _data_2_T_390 | _data_2_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_399 = _data_2_T_398 | _data_2_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_400 = _data_2_T_399 | _data_2_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_401 = _data_2_T_400 | _data_2_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_402 = _data_2_T_401 | _data_2_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_403 = _data_2_T_402 | _data_2_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_2_T_404 = _data_2_T_403 | _data_2_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_3 = io_wen_0 & waddr_dec_0[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_3 = io_wen_1 & waddr_dec_1[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_3 = io_wen_2 & waddr_dec_2[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_3 = io_wen_3 & waddr_dec_3[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_3 = io_wen_4 & waddr_dec_4[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_3 = io_wen_5 & waddr_dec_5[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_3 = io_wen_6 & waddr_dec_6[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_3 = io_wen_7 & waddr_dec_7[3]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_14 = {write_wen_7_3,write_wen_6_3,write_wen_5_3,write_wen_4_3,write_wen_3_3,write_wen_2_3,write_wen_1_3,
    write_wen_0_3}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_3_T_104 = write_wen_0_3 & io_wdata_0_triggered_backendEn_0 | write_wen_1_3 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_3 & io_wdata_2_triggered_backendEn_0 | write_wen_3_3 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_3 & io_wdata_4_triggered_backendEn_0 | write_wen_5_3 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_3 & io_wdata_6_triggered_backendEn_0 | write_wen_7_3 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_3_T_119 = write_wen_0_3 & io_wdata_0_triggered_backendEn_1 | write_wen_1_3 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_3 & io_wdata_2_triggered_backendEn_1 | write_wen_3_3 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_3 & io_wdata_4_triggered_backendEn_1 | write_wen_5_3 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_3 & io_wdata_6_triggered_backendEn_1 | write_wen_7_3 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_3_T_134 = write_wen_0_3 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_3 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_3 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_3 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_3 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_3 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_3 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_3 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_3_T_149 = write_wen_0_3 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_3 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_3 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_3 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_3 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_3 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_3 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_3 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_3_T_164 = write_wen_0_3 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_3 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_3 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_3 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_3 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_3 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_3 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_3 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_3_T_179 = write_wen_0_3 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_3 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_3 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_3 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_3 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_3 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_3 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_3 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_3_T_194 = write_wen_0_3 & io_wdata_0_crossPageIPFFix | write_wen_1_3 & io_wdata_1_crossPageIPFFix |
    write_wen_2_3 & io_wdata_2_crossPageIPFFix | write_wen_3_3 & io_wdata_3_crossPageIPFFix | write_wen_4_3 &
    io_wdata_4_crossPageIPFFix | write_wen_5_3 & io_wdata_5_crossPageIPFFix | write_wen_6_3 & io_wdata_6_crossPageIPFFix
     | write_wen_7_3 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_3_T_209 = write_wen_0_3 & io_wdata_0_acf | write_wen_1_3 & io_wdata_1_acf | write_wen_2_3 & io_wdata_2_acf
     | write_wen_3_3 & io_wdata_3_acf | write_wen_4_3 & io_wdata_4_acf | write_wen_5_3 & io_wdata_5_acf | write_wen_6_3
     & io_wdata_6_acf | write_wen_7_3 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_3_T_224 = write_wen_0_3 & io_wdata_0_ipf | write_wen_1_3 & io_wdata_1_ipf | write_wen_2_3 & io_wdata_2_ipf
     | write_wen_3_3 & io_wdata_3_ipf | write_wen_4_3 & io_wdata_4_ipf | write_wen_5_3 & io_wdata_5_ipf | write_wen_6_3
     & io_wdata_6_ipf | write_wen_7_3 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_226 = write_wen_1_3 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_227 = write_wen_2_3 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_228 = write_wen_3_3 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_229 = write_wen_4_3 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_230 = write_wen_5_3 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_231 = write_wen_6_3 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_232 = write_wen_7_3 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_234 = _data_3_T_226 | _data_3_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_235 = _data_3_T_234 | _data_3_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_236 = _data_3_T_235 | _data_3_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_237 = _data_3_T_236 | _data_3_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_238 = _data_3_T_237 | _data_3_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_239 = _data_3_T_238 | _data_3_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_240 = write_wen_0_3 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_241 = write_wen_1_3 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_242 = write_wen_2_3 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_243 = write_wen_3_3 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_244 = write_wen_4_3 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_245 = write_wen_5_3 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_246 = write_wen_6_3 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_247 = write_wen_7_3 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_248 = _data_3_T_240 | _data_3_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_249 = _data_3_T_248 | _data_3_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_250 = _data_3_T_249 | _data_3_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_251 = _data_3_T_250 | _data_3_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_252 = _data_3_T_251 | _data_3_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_253 = _data_3_T_252 | _data_3_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_3_T_254 = _data_3_T_253 | _data_3_T_247; // @[Mux.scala 27:73]
  wire  _data_3_T_269 = write_wen_0_3 & io_wdata_0_ftqPtr_flag | write_wen_1_3 & io_wdata_1_ftqPtr_flag | write_wen_2_3
     & io_wdata_2_ftqPtr_flag | write_wen_3_3 & io_wdata_3_ftqPtr_flag | write_wen_4_3 & io_wdata_4_ftqPtr_flag |
    write_wen_5_3 & io_wdata_5_ftqPtr_flag | write_wen_6_3 & io_wdata_6_ftqPtr_flag | write_wen_7_3 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_3_T_284 = write_wen_0_3 & io_wdata_0_pred_taken | write_wen_1_3 & io_wdata_1_pred_taken | write_wen_2_3 &
    io_wdata_2_pred_taken | write_wen_3_3 & io_wdata_3_pred_taken | write_wen_4_3 & io_wdata_4_pred_taken |
    write_wen_5_3 & io_wdata_5_pred_taken | write_wen_6_3 & io_wdata_6_pred_taken | write_wen_7_3 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_3_T_299 = write_wen_0_3 & io_wdata_0_pd_isRet | write_wen_1_3 & io_wdata_1_pd_isRet | write_wen_2_3 &
    io_wdata_2_pd_isRet | write_wen_3_3 & io_wdata_3_pd_isRet | write_wen_4_3 & io_wdata_4_pd_isRet | write_wen_5_3 &
    io_wdata_5_pd_isRet | write_wen_6_3 & io_wdata_6_pd_isRet | write_wen_7_3 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_3_T_314 = write_wen_0_3 & io_wdata_0_pd_isCall | write_wen_1_3 & io_wdata_1_pd_isCall | write_wen_2_3 &
    io_wdata_2_pd_isCall | write_wen_3_3 & io_wdata_3_pd_isCall | write_wen_4_3 & io_wdata_4_pd_isCall | write_wen_5_3
     & io_wdata_5_pd_isCall | write_wen_6_3 & io_wdata_6_pd_isCall | write_wen_7_3 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_315 = write_wen_0_3 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_316 = write_wen_1_3 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_317 = write_wen_2_3 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_318 = write_wen_3_3 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_319 = write_wen_4_3 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_320 = write_wen_5_3 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_321 = write_wen_6_3 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_322 = write_wen_7_3 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_323 = _data_3_T_315 | _data_3_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_324 = _data_3_T_323 | _data_3_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_325 = _data_3_T_324 | _data_3_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_326 = _data_3_T_325 | _data_3_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_327 = _data_3_T_326 | _data_3_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_328 = _data_3_T_327 | _data_3_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_3_T_329 = _data_3_T_328 | _data_3_T_322; // @[Mux.scala 27:73]
  wire  _data_3_T_344 = write_wen_0_3 & io_wdata_0_pd_isRVC | write_wen_1_3 & io_wdata_1_pd_isRVC | write_wen_2_3 &
    io_wdata_2_pd_isRVC | write_wen_3_3 & io_wdata_3_pd_isRVC | write_wen_4_3 & io_wdata_4_pd_isRVC | write_wen_5_3 &
    io_wdata_5_pd_isRVC | write_wen_6_3 & io_wdata_6_pd_isRVC | write_wen_7_3 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_360 = write_wen_0_3 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_361 = write_wen_1_3 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_362 = write_wen_2_3 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_363 = write_wen_3_3 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_364 = write_wen_4_3 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_365 = write_wen_5_3 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_366 = write_wen_6_3 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_367 = write_wen_7_3 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_368 = _data_3_T_360 | _data_3_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_369 = _data_3_T_368 | _data_3_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_370 = _data_3_T_369 | _data_3_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_371 = _data_3_T_370 | _data_3_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_372 = _data_3_T_371 | _data_3_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_373 = _data_3_T_372 | _data_3_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_3_T_374 = _data_3_T_373 | _data_3_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_390 = write_wen_0_3 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_391 = write_wen_1_3 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_392 = write_wen_2_3 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_393 = write_wen_3_3 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_394 = write_wen_4_3 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_395 = write_wen_5_3 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_396 = write_wen_6_3 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_397 = write_wen_7_3 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_398 = _data_3_T_390 | _data_3_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_399 = _data_3_T_398 | _data_3_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_400 = _data_3_T_399 | _data_3_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_401 = _data_3_T_400 | _data_3_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_402 = _data_3_T_401 | _data_3_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_403 = _data_3_T_402 | _data_3_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_3_T_404 = _data_3_T_403 | _data_3_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_4 = io_wen_0 & waddr_dec_0[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_4 = io_wen_1 & waddr_dec_1[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_4 = io_wen_2 & waddr_dec_2[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_4 = io_wen_3 & waddr_dec_3[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_4 = io_wen_4 & waddr_dec_4[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_4 = io_wen_5 & waddr_dec_5[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_4 = io_wen_6 & waddr_dec_6[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_4 = io_wen_7 & waddr_dec_7[4]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_16 = {write_wen_7_4,write_wen_6_4,write_wen_5_4,write_wen_4_4,write_wen_3_4,write_wen_2_4,write_wen_1_4,
    write_wen_0_4}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_4_T_104 = write_wen_0_4 & io_wdata_0_triggered_backendEn_0 | write_wen_1_4 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_4 & io_wdata_2_triggered_backendEn_0 | write_wen_3_4 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_4 & io_wdata_4_triggered_backendEn_0 | write_wen_5_4 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_4 & io_wdata_6_triggered_backendEn_0 | write_wen_7_4 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_4_T_119 = write_wen_0_4 & io_wdata_0_triggered_backendEn_1 | write_wen_1_4 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_4 & io_wdata_2_triggered_backendEn_1 | write_wen_3_4 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_4 & io_wdata_4_triggered_backendEn_1 | write_wen_5_4 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_4 & io_wdata_6_triggered_backendEn_1 | write_wen_7_4 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_4_T_134 = write_wen_0_4 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_4 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_4 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_4 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_4 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_4 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_4 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_4 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_4_T_149 = write_wen_0_4 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_4 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_4 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_4 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_4 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_4 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_4 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_4 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_4_T_164 = write_wen_0_4 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_4 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_4 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_4 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_4 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_4 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_4 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_4 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_4_T_179 = write_wen_0_4 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_4 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_4 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_4 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_4 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_4 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_4 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_4 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_4_T_194 = write_wen_0_4 & io_wdata_0_crossPageIPFFix | write_wen_1_4 & io_wdata_1_crossPageIPFFix |
    write_wen_2_4 & io_wdata_2_crossPageIPFFix | write_wen_3_4 & io_wdata_3_crossPageIPFFix | write_wen_4_4 &
    io_wdata_4_crossPageIPFFix | write_wen_5_4 & io_wdata_5_crossPageIPFFix | write_wen_6_4 & io_wdata_6_crossPageIPFFix
     | write_wen_7_4 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_4_T_209 = write_wen_0_4 & io_wdata_0_acf | write_wen_1_4 & io_wdata_1_acf | write_wen_2_4 & io_wdata_2_acf
     | write_wen_3_4 & io_wdata_3_acf | write_wen_4_4 & io_wdata_4_acf | write_wen_5_4 & io_wdata_5_acf | write_wen_6_4
     & io_wdata_6_acf | write_wen_7_4 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_4_T_224 = write_wen_0_4 & io_wdata_0_ipf | write_wen_1_4 & io_wdata_1_ipf | write_wen_2_4 & io_wdata_2_ipf
     | write_wen_3_4 & io_wdata_3_ipf | write_wen_4_4 & io_wdata_4_ipf | write_wen_5_4 & io_wdata_5_ipf | write_wen_6_4
     & io_wdata_6_ipf | write_wen_7_4 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_226 = write_wen_1_4 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_227 = write_wen_2_4 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_228 = write_wen_3_4 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_229 = write_wen_4_4 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_230 = write_wen_5_4 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_231 = write_wen_6_4 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_232 = write_wen_7_4 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_234 = _data_4_T_226 | _data_4_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_235 = _data_4_T_234 | _data_4_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_236 = _data_4_T_235 | _data_4_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_237 = _data_4_T_236 | _data_4_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_238 = _data_4_T_237 | _data_4_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_239 = _data_4_T_238 | _data_4_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_240 = write_wen_0_4 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_241 = write_wen_1_4 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_242 = write_wen_2_4 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_243 = write_wen_3_4 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_244 = write_wen_4_4 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_245 = write_wen_5_4 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_246 = write_wen_6_4 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_247 = write_wen_7_4 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_248 = _data_4_T_240 | _data_4_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_249 = _data_4_T_248 | _data_4_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_250 = _data_4_T_249 | _data_4_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_251 = _data_4_T_250 | _data_4_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_252 = _data_4_T_251 | _data_4_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_253 = _data_4_T_252 | _data_4_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_4_T_254 = _data_4_T_253 | _data_4_T_247; // @[Mux.scala 27:73]
  wire  _data_4_T_269 = write_wen_0_4 & io_wdata_0_ftqPtr_flag | write_wen_1_4 & io_wdata_1_ftqPtr_flag | write_wen_2_4
     & io_wdata_2_ftqPtr_flag | write_wen_3_4 & io_wdata_3_ftqPtr_flag | write_wen_4_4 & io_wdata_4_ftqPtr_flag |
    write_wen_5_4 & io_wdata_5_ftqPtr_flag | write_wen_6_4 & io_wdata_6_ftqPtr_flag | write_wen_7_4 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_4_T_284 = write_wen_0_4 & io_wdata_0_pred_taken | write_wen_1_4 & io_wdata_1_pred_taken | write_wen_2_4 &
    io_wdata_2_pred_taken | write_wen_3_4 & io_wdata_3_pred_taken | write_wen_4_4 & io_wdata_4_pred_taken |
    write_wen_5_4 & io_wdata_5_pred_taken | write_wen_6_4 & io_wdata_6_pred_taken | write_wen_7_4 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_4_T_299 = write_wen_0_4 & io_wdata_0_pd_isRet | write_wen_1_4 & io_wdata_1_pd_isRet | write_wen_2_4 &
    io_wdata_2_pd_isRet | write_wen_3_4 & io_wdata_3_pd_isRet | write_wen_4_4 & io_wdata_4_pd_isRet | write_wen_5_4 &
    io_wdata_5_pd_isRet | write_wen_6_4 & io_wdata_6_pd_isRet | write_wen_7_4 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_4_T_314 = write_wen_0_4 & io_wdata_0_pd_isCall | write_wen_1_4 & io_wdata_1_pd_isCall | write_wen_2_4 &
    io_wdata_2_pd_isCall | write_wen_3_4 & io_wdata_3_pd_isCall | write_wen_4_4 & io_wdata_4_pd_isCall | write_wen_5_4
     & io_wdata_5_pd_isCall | write_wen_6_4 & io_wdata_6_pd_isCall | write_wen_7_4 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_315 = write_wen_0_4 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_316 = write_wen_1_4 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_317 = write_wen_2_4 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_318 = write_wen_3_4 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_319 = write_wen_4_4 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_320 = write_wen_5_4 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_321 = write_wen_6_4 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_322 = write_wen_7_4 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_323 = _data_4_T_315 | _data_4_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_324 = _data_4_T_323 | _data_4_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_325 = _data_4_T_324 | _data_4_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_326 = _data_4_T_325 | _data_4_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_327 = _data_4_T_326 | _data_4_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_328 = _data_4_T_327 | _data_4_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_4_T_329 = _data_4_T_328 | _data_4_T_322; // @[Mux.scala 27:73]
  wire  _data_4_T_344 = write_wen_0_4 & io_wdata_0_pd_isRVC | write_wen_1_4 & io_wdata_1_pd_isRVC | write_wen_2_4 &
    io_wdata_2_pd_isRVC | write_wen_3_4 & io_wdata_3_pd_isRVC | write_wen_4_4 & io_wdata_4_pd_isRVC | write_wen_5_4 &
    io_wdata_5_pd_isRVC | write_wen_6_4 & io_wdata_6_pd_isRVC | write_wen_7_4 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_360 = write_wen_0_4 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_361 = write_wen_1_4 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_362 = write_wen_2_4 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_363 = write_wen_3_4 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_364 = write_wen_4_4 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_365 = write_wen_5_4 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_366 = write_wen_6_4 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_367 = write_wen_7_4 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_368 = _data_4_T_360 | _data_4_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_369 = _data_4_T_368 | _data_4_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_370 = _data_4_T_369 | _data_4_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_371 = _data_4_T_370 | _data_4_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_372 = _data_4_T_371 | _data_4_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_373 = _data_4_T_372 | _data_4_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_4_T_374 = _data_4_T_373 | _data_4_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_390 = write_wen_0_4 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_391 = write_wen_1_4 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_392 = write_wen_2_4 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_393 = write_wen_3_4 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_394 = write_wen_4_4 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_395 = write_wen_5_4 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_396 = write_wen_6_4 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_397 = write_wen_7_4 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_398 = _data_4_T_390 | _data_4_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_399 = _data_4_T_398 | _data_4_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_400 = _data_4_T_399 | _data_4_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_401 = _data_4_T_400 | _data_4_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_402 = _data_4_T_401 | _data_4_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_403 = _data_4_T_402 | _data_4_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_4_T_404 = _data_4_T_403 | _data_4_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_5 = io_wen_0 & waddr_dec_0[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_5 = io_wen_1 & waddr_dec_1[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_5 = io_wen_2 & waddr_dec_2[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_5 = io_wen_3 & waddr_dec_3[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_5 = io_wen_4 & waddr_dec_4[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_5 = io_wen_5 & waddr_dec_5[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_5 = io_wen_6 & waddr_dec_6[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_5 = io_wen_7 & waddr_dec_7[5]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_18 = {write_wen_7_5,write_wen_6_5,write_wen_5_5,write_wen_4_5,write_wen_3_5,write_wen_2_5,write_wen_1_5,
    write_wen_0_5}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_5_T_104 = write_wen_0_5 & io_wdata_0_triggered_backendEn_0 | write_wen_1_5 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_5 & io_wdata_2_triggered_backendEn_0 | write_wen_3_5 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_5 & io_wdata_4_triggered_backendEn_0 | write_wen_5_5 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_5 & io_wdata_6_triggered_backendEn_0 | write_wen_7_5 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_5_T_119 = write_wen_0_5 & io_wdata_0_triggered_backendEn_1 | write_wen_1_5 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_5 & io_wdata_2_triggered_backendEn_1 | write_wen_3_5 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_5 & io_wdata_4_triggered_backendEn_1 | write_wen_5_5 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_5 & io_wdata_6_triggered_backendEn_1 | write_wen_7_5 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_5_T_134 = write_wen_0_5 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_5 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_5 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_5 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_5 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_5 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_5 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_5 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_5_T_149 = write_wen_0_5 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_5 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_5 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_5 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_5 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_5 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_5 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_5 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_5_T_164 = write_wen_0_5 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_5 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_5 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_5 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_5 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_5 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_5 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_5 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_5_T_179 = write_wen_0_5 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_5 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_5 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_5 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_5 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_5 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_5 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_5 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_5_T_194 = write_wen_0_5 & io_wdata_0_crossPageIPFFix | write_wen_1_5 & io_wdata_1_crossPageIPFFix |
    write_wen_2_5 & io_wdata_2_crossPageIPFFix | write_wen_3_5 & io_wdata_3_crossPageIPFFix | write_wen_4_5 &
    io_wdata_4_crossPageIPFFix | write_wen_5_5 & io_wdata_5_crossPageIPFFix | write_wen_6_5 & io_wdata_6_crossPageIPFFix
     | write_wen_7_5 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_5_T_209 = write_wen_0_5 & io_wdata_0_acf | write_wen_1_5 & io_wdata_1_acf | write_wen_2_5 & io_wdata_2_acf
     | write_wen_3_5 & io_wdata_3_acf | write_wen_4_5 & io_wdata_4_acf | write_wen_5_5 & io_wdata_5_acf | write_wen_6_5
     & io_wdata_6_acf | write_wen_7_5 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_5_T_224 = write_wen_0_5 & io_wdata_0_ipf | write_wen_1_5 & io_wdata_1_ipf | write_wen_2_5 & io_wdata_2_ipf
     | write_wen_3_5 & io_wdata_3_ipf | write_wen_4_5 & io_wdata_4_ipf | write_wen_5_5 & io_wdata_5_ipf | write_wen_6_5
     & io_wdata_6_ipf | write_wen_7_5 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_226 = write_wen_1_5 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_227 = write_wen_2_5 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_228 = write_wen_3_5 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_229 = write_wen_4_5 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_230 = write_wen_5_5 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_231 = write_wen_6_5 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_232 = write_wen_7_5 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_234 = _data_5_T_226 | _data_5_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_235 = _data_5_T_234 | _data_5_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_236 = _data_5_T_235 | _data_5_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_237 = _data_5_T_236 | _data_5_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_238 = _data_5_T_237 | _data_5_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_239 = _data_5_T_238 | _data_5_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_240 = write_wen_0_5 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_241 = write_wen_1_5 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_242 = write_wen_2_5 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_243 = write_wen_3_5 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_244 = write_wen_4_5 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_245 = write_wen_5_5 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_246 = write_wen_6_5 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_247 = write_wen_7_5 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_248 = _data_5_T_240 | _data_5_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_249 = _data_5_T_248 | _data_5_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_250 = _data_5_T_249 | _data_5_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_251 = _data_5_T_250 | _data_5_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_252 = _data_5_T_251 | _data_5_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_253 = _data_5_T_252 | _data_5_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_5_T_254 = _data_5_T_253 | _data_5_T_247; // @[Mux.scala 27:73]
  wire  _data_5_T_269 = write_wen_0_5 & io_wdata_0_ftqPtr_flag | write_wen_1_5 & io_wdata_1_ftqPtr_flag | write_wen_2_5
     & io_wdata_2_ftqPtr_flag | write_wen_3_5 & io_wdata_3_ftqPtr_flag | write_wen_4_5 & io_wdata_4_ftqPtr_flag |
    write_wen_5_5 & io_wdata_5_ftqPtr_flag | write_wen_6_5 & io_wdata_6_ftqPtr_flag | write_wen_7_5 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_5_T_284 = write_wen_0_5 & io_wdata_0_pred_taken | write_wen_1_5 & io_wdata_1_pred_taken | write_wen_2_5 &
    io_wdata_2_pred_taken | write_wen_3_5 & io_wdata_3_pred_taken | write_wen_4_5 & io_wdata_4_pred_taken |
    write_wen_5_5 & io_wdata_5_pred_taken | write_wen_6_5 & io_wdata_6_pred_taken | write_wen_7_5 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_5_T_299 = write_wen_0_5 & io_wdata_0_pd_isRet | write_wen_1_5 & io_wdata_1_pd_isRet | write_wen_2_5 &
    io_wdata_2_pd_isRet | write_wen_3_5 & io_wdata_3_pd_isRet | write_wen_4_5 & io_wdata_4_pd_isRet | write_wen_5_5 &
    io_wdata_5_pd_isRet | write_wen_6_5 & io_wdata_6_pd_isRet | write_wen_7_5 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_5_T_314 = write_wen_0_5 & io_wdata_0_pd_isCall | write_wen_1_5 & io_wdata_1_pd_isCall | write_wen_2_5 &
    io_wdata_2_pd_isCall | write_wen_3_5 & io_wdata_3_pd_isCall | write_wen_4_5 & io_wdata_4_pd_isCall | write_wen_5_5
     & io_wdata_5_pd_isCall | write_wen_6_5 & io_wdata_6_pd_isCall | write_wen_7_5 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_315 = write_wen_0_5 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_316 = write_wen_1_5 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_317 = write_wen_2_5 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_318 = write_wen_3_5 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_319 = write_wen_4_5 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_320 = write_wen_5_5 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_321 = write_wen_6_5 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_322 = write_wen_7_5 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_323 = _data_5_T_315 | _data_5_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_324 = _data_5_T_323 | _data_5_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_325 = _data_5_T_324 | _data_5_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_326 = _data_5_T_325 | _data_5_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_327 = _data_5_T_326 | _data_5_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_328 = _data_5_T_327 | _data_5_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_5_T_329 = _data_5_T_328 | _data_5_T_322; // @[Mux.scala 27:73]
  wire  _data_5_T_344 = write_wen_0_5 & io_wdata_0_pd_isRVC | write_wen_1_5 & io_wdata_1_pd_isRVC | write_wen_2_5 &
    io_wdata_2_pd_isRVC | write_wen_3_5 & io_wdata_3_pd_isRVC | write_wen_4_5 & io_wdata_4_pd_isRVC | write_wen_5_5 &
    io_wdata_5_pd_isRVC | write_wen_6_5 & io_wdata_6_pd_isRVC | write_wen_7_5 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_360 = write_wen_0_5 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_361 = write_wen_1_5 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_362 = write_wen_2_5 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_363 = write_wen_3_5 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_364 = write_wen_4_5 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_365 = write_wen_5_5 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_366 = write_wen_6_5 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_367 = write_wen_7_5 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_368 = _data_5_T_360 | _data_5_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_369 = _data_5_T_368 | _data_5_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_370 = _data_5_T_369 | _data_5_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_371 = _data_5_T_370 | _data_5_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_372 = _data_5_T_371 | _data_5_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_373 = _data_5_T_372 | _data_5_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_5_T_374 = _data_5_T_373 | _data_5_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_390 = write_wen_0_5 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_391 = write_wen_1_5 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_392 = write_wen_2_5 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_393 = write_wen_3_5 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_394 = write_wen_4_5 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_395 = write_wen_5_5 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_396 = write_wen_6_5 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_397 = write_wen_7_5 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_398 = _data_5_T_390 | _data_5_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_399 = _data_5_T_398 | _data_5_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_400 = _data_5_T_399 | _data_5_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_401 = _data_5_T_400 | _data_5_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_402 = _data_5_T_401 | _data_5_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_403 = _data_5_T_402 | _data_5_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_5_T_404 = _data_5_T_403 | _data_5_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_6 = io_wen_0 & waddr_dec_0[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_6 = io_wen_1 & waddr_dec_1[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_6 = io_wen_2 & waddr_dec_2[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_6 = io_wen_3 & waddr_dec_3[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_6 = io_wen_4 & waddr_dec_4[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_6 = io_wen_5 & waddr_dec_5[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_6 = io_wen_6 & waddr_dec_6[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_6 = io_wen_7 & waddr_dec_7[6]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_20 = {write_wen_7_6,write_wen_6_6,write_wen_5_6,write_wen_4_6,write_wen_3_6,write_wen_2_6,write_wen_1_6,
    write_wen_0_6}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_6_T_104 = write_wen_0_6 & io_wdata_0_triggered_backendEn_0 | write_wen_1_6 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_6 & io_wdata_2_triggered_backendEn_0 | write_wen_3_6 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_6 & io_wdata_4_triggered_backendEn_0 | write_wen_5_6 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_6 & io_wdata_6_triggered_backendEn_0 | write_wen_7_6 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_6_T_119 = write_wen_0_6 & io_wdata_0_triggered_backendEn_1 | write_wen_1_6 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_6 & io_wdata_2_triggered_backendEn_1 | write_wen_3_6 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_6 & io_wdata_4_triggered_backendEn_1 | write_wen_5_6 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_6 & io_wdata_6_triggered_backendEn_1 | write_wen_7_6 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_6_T_134 = write_wen_0_6 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_6 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_6 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_6 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_6 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_6 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_6 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_6 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_6_T_149 = write_wen_0_6 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_6 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_6 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_6 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_6 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_6 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_6 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_6 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_6_T_164 = write_wen_0_6 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_6 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_6 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_6 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_6 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_6 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_6 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_6 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_6_T_179 = write_wen_0_6 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_6 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_6 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_6 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_6 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_6 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_6 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_6 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_6_T_194 = write_wen_0_6 & io_wdata_0_crossPageIPFFix | write_wen_1_6 & io_wdata_1_crossPageIPFFix |
    write_wen_2_6 & io_wdata_2_crossPageIPFFix | write_wen_3_6 & io_wdata_3_crossPageIPFFix | write_wen_4_6 &
    io_wdata_4_crossPageIPFFix | write_wen_5_6 & io_wdata_5_crossPageIPFFix | write_wen_6_6 & io_wdata_6_crossPageIPFFix
     | write_wen_7_6 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_6_T_209 = write_wen_0_6 & io_wdata_0_acf | write_wen_1_6 & io_wdata_1_acf | write_wen_2_6 & io_wdata_2_acf
     | write_wen_3_6 & io_wdata_3_acf | write_wen_4_6 & io_wdata_4_acf | write_wen_5_6 & io_wdata_5_acf | write_wen_6_6
     & io_wdata_6_acf | write_wen_7_6 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_6_T_224 = write_wen_0_6 & io_wdata_0_ipf | write_wen_1_6 & io_wdata_1_ipf | write_wen_2_6 & io_wdata_2_ipf
     | write_wen_3_6 & io_wdata_3_ipf | write_wen_4_6 & io_wdata_4_ipf | write_wen_5_6 & io_wdata_5_ipf | write_wen_6_6
     & io_wdata_6_ipf | write_wen_7_6 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_226 = write_wen_1_6 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_227 = write_wen_2_6 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_228 = write_wen_3_6 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_229 = write_wen_4_6 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_230 = write_wen_5_6 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_231 = write_wen_6_6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_232 = write_wen_7_6 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_234 = _data_6_T_226 | _data_6_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_235 = _data_6_T_234 | _data_6_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_236 = _data_6_T_235 | _data_6_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_237 = _data_6_T_236 | _data_6_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_238 = _data_6_T_237 | _data_6_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_239 = _data_6_T_238 | _data_6_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_240 = write_wen_0_6 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_241 = write_wen_1_6 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_242 = write_wen_2_6 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_243 = write_wen_3_6 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_244 = write_wen_4_6 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_245 = write_wen_5_6 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_246 = write_wen_6_6 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_247 = write_wen_7_6 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_248 = _data_6_T_240 | _data_6_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_249 = _data_6_T_248 | _data_6_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_250 = _data_6_T_249 | _data_6_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_251 = _data_6_T_250 | _data_6_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_252 = _data_6_T_251 | _data_6_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_253 = _data_6_T_252 | _data_6_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_6_T_254 = _data_6_T_253 | _data_6_T_247; // @[Mux.scala 27:73]
  wire  _data_6_T_269 = write_wen_0_6 & io_wdata_0_ftqPtr_flag | write_wen_1_6 & io_wdata_1_ftqPtr_flag | write_wen_2_6
     & io_wdata_2_ftqPtr_flag | write_wen_3_6 & io_wdata_3_ftqPtr_flag | write_wen_4_6 & io_wdata_4_ftqPtr_flag |
    write_wen_5_6 & io_wdata_5_ftqPtr_flag | write_wen_6_6 & io_wdata_6_ftqPtr_flag | write_wen_7_6 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_6_T_284 = write_wen_0_6 & io_wdata_0_pred_taken | write_wen_1_6 & io_wdata_1_pred_taken | write_wen_2_6 &
    io_wdata_2_pred_taken | write_wen_3_6 & io_wdata_3_pred_taken | write_wen_4_6 & io_wdata_4_pred_taken |
    write_wen_5_6 & io_wdata_5_pred_taken | write_wen_6_6 & io_wdata_6_pred_taken | write_wen_7_6 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_6_T_299 = write_wen_0_6 & io_wdata_0_pd_isRet | write_wen_1_6 & io_wdata_1_pd_isRet | write_wen_2_6 &
    io_wdata_2_pd_isRet | write_wen_3_6 & io_wdata_3_pd_isRet | write_wen_4_6 & io_wdata_4_pd_isRet | write_wen_5_6 &
    io_wdata_5_pd_isRet | write_wen_6_6 & io_wdata_6_pd_isRet | write_wen_7_6 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_6_T_314 = write_wen_0_6 & io_wdata_0_pd_isCall | write_wen_1_6 & io_wdata_1_pd_isCall | write_wen_2_6 &
    io_wdata_2_pd_isCall | write_wen_3_6 & io_wdata_3_pd_isCall | write_wen_4_6 & io_wdata_4_pd_isCall | write_wen_5_6
     & io_wdata_5_pd_isCall | write_wen_6_6 & io_wdata_6_pd_isCall | write_wen_7_6 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_315 = write_wen_0_6 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_316 = write_wen_1_6 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_317 = write_wen_2_6 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_318 = write_wen_3_6 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_319 = write_wen_4_6 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_320 = write_wen_5_6 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_321 = write_wen_6_6 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_322 = write_wen_7_6 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_323 = _data_6_T_315 | _data_6_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_324 = _data_6_T_323 | _data_6_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_325 = _data_6_T_324 | _data_6_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_326 = _data_6_T_325 | _data_6_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_327 = _data_6_T_326 | _data_6_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_328 = _data_6_T_327 | _data_6_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_6_T_329 = _data_6_T_328 | _data_6_T_322; // @[Mux.scala 27:73]
  wire  _data_6_T_344 = write_wen_0_6 & io_wdata_0_pd_isRVC | write_wen_1_6 & io_wdata_1_pd_isRVC | write_wen_2_6 &
    io_wdata_2_pd_isRVC | write_wen_3_6 & io_wdata_3_pd_isRVC | write_wen_4_6 & io_wdata_4_pd_isRVC | write_wen_5_6 &
    io_wdata_5_pd_isRVC | write_wen_6_6 & io_wdata_6_pd_isRVC | write_wen_7_6 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_360 = write_wen_0_6 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_361 = write_wen_1_6 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_362 = write_wen_2_6 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_363 = write_wen_3_6 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_364 = write_wen_4_6 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_365 = write_wen_5_6 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_366 = write_wen_6_6 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_367 = write_wen_7_6 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_368 = _data_6_T_360 | _data_6_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_369 = _data_6_T_368 | _data_6_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_370 = _data_6_T_369 | _data_6_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_371 = _data_6_T_370 | _data_6_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_372 = _data_6_T_371 | _data_6_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_373 = _data_6_T_372 | _data_6_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_6_T_374 = _data_6_T_373 | _data_6_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_390 = write_wen_0_6 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_391 = write_wen_1_6 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_392 = write_wen_2_6 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_393 = write_wen_3_6 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_394 = write_wen_4_6 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_395 = write_wen_5_6 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_396 = write_wen_6_6 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_397 = write_wen_7_6 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_398 = _data_6_T_390 | _data_6_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_399 = _data_6_T_398 | _data_6_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_400 = _data_6_T_399 | _data_6_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_401 = _data_6_T_400 | _data_6_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_402 = _data_6_T_401 | _data_6_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_403 = _data_6_T_402 | _data_6_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_6_T_404 = _data_6_T_403 | _data_6_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_7 = io_wen_0 & waddr_dec_0[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_7 = io_wen_1 & waddr_dec_1[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_7 = io_wen_2 & waddr_dec_2[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_7 = io_wen_3 & waddr_dec_3[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_7 = io_wen_4 & waddr_dec_4[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_7 = io_wen_5 & waddr_dec_5[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_7 = io_wen_6 & waddr_dec_6[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_7 = io_wen_7 & waddr_dec_7[7]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_22 = {write_wen_7_7,write_wen_6_7,write_wen_5_7,write_wen_4_7,write_wen_3_7,write_wen_2_7,write_wen_1_7,
    write_wen_0_7}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_7_T_104 = write_wen_0_7 & io_wdata_0_triggered_backendEn_0 | write_wen_1_7 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_7 & io_wdata_2_triggered_backendEn_0 | write_wen_3_7 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_7 & io_wdata_4_triggered_backendEn_0 | write_wen_5_7 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_7 & io_wdata_6_triggered_backendEn_0 | write_wen_7_7 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_7_T_119 = write_wen_0_7 & io_wdata_0_triggered_backendEn_1 | write_wen_1_7 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_7 & io_wdata_2_triggered_backendEn_1 | write_wen_3_7 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_7 & io_wdata_4_triggered_backendEn_1 | write_wen_5_7 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_7 & io_wdata_6_triggered_backendEn_1 | write_wen_7_7 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_7_T_134 = write_wen_0_7 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_7 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_7 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_7 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_7 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_7 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_7 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_7 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_7_T_149 = write_wen_0_7 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_7 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_7 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_7 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_7 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_7 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_7 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_7 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_7_T_164 = write_wen_0_7 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_7 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_7 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_7 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_7 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_7 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_7 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_7 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_7_T_179 = write_wen_0_7 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_7 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_7 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_7 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_7 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_7 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_7 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_7 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_7_T_194 = write_wen_0_7 & io_wdata_0_crossPageIPFFix | write_wen_1_7 & io_wdata_1_crossPageIPFFix |
    write_wen_2_7 & io_wdata_2_crossPageIPFFix | write_wen_3_7 & io_wdata_3_crossPageIPFFix | write_wen_4_7 &
    io_wdata_4_crossPageIPFFix | write_wen_5_7 & io_wdata_5_crossPageIPFFix | write_wen_6_7 & io_wdata_6_crossPageIPFFix
     | write_wen_7_7 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_7_T_209 = write_wen_0_7 & io_wdata_0_acf | write_wen_1_7 & io_wdata_1_acf | write_wen_2_7 & io_wdata_2_acf
     | write_wen_3_7 & io_wdata_3_acf | write_wen_4_7 & io_wdata_4_acf | write_wen_5_7 & io_wdata_5_acf | write_wen_6_7
     & io_wdata_6_acf | write_wen_7_7 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_7_T_224 = write_wen_0_7 & io_wdata_0_ipf | write_wen_1_7 & io_wdata_1_ipf | write_wen_2_7 & io_wdata_2_ipf
     | write_wen_3_7 & io_wdata_3_ipf | write_wen_4_7 & io_wdata_4_ipf | write_wen_5_7 & io_wdata_5_ipf | write_wen_6_7
     & io_wdata_6_ipf | write_wen_7_7 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_226 = write_wen_1_7 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_227 = write_wen_2_7 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_228 = write_wen_3_7 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_229 = write_wen_4_7 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_230 = write_wen_5_7 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_231 = write_wen_6_7 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_232 = write_wen_7_7 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_234 = _data_7_T_226 | _data_7_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_235 = _data_7_T_234 | _data_7_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_236 = _data_7_T_235 | _data_7_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_237 = _data_7_T_236 | _data_7_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_238 = _data_7_T_237 | _data_7_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_239 = _data_7_T_238 | _data_7_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_240 = write_wen_0_7 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_241 = write_wen_1_7 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_242 = write_wen_2_7 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_243 = write_wen_3_7 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_244 = write_wen_4_7 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_245 = write_wen_5_7 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_246 = write_wen_6_7 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_247 = write_wen_7_7 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_248 = _data_7_T_240 | _data_7_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_249 = _data_7_T_248 | _data_7_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_250 = _data_7_T_249 | _data_7_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_251 = _data_7_T_250 | _data_7_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_252 = _data_7_T_251 | _data_7_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_253 = _data_7_T_252 | _data_7_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_7_T_254 = _data_7_T_253 | _data_7_T_247; // @[Mux.scala 27:73]
  wire  _data_7_T_269 = write_wen_0_7 & io_wdata_0_ftqPtr_flag | write_wen_1_7 & io_wdata_1_ftqPtr_flag | write_wen_2_7
     & io_wdata_2_ftqPtr_flag | write_wen_3_7 & io_wdata_3_ftqPtr_flag | write_wen_4_7 & io_wdata_4_ftqPtr_flag |
    write_wen_5_7 & io_wdata_5_ftqPtr_flag | write_wen_6_7 & io_wdata_6_ftqPtr_flag | write_wen_7_7 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_7_T_284 = write_wen_0_7 & io_wdata_0_pred_taken | write_wen_1_7 & io_wdata_1_pred_taken | write_wen_2_7 &
    io_wdata_2_pred_taken | write_wen_3_7 & io_wdata_3_pred_taken | write_wen_4_7 & io_wdata_4_pred_taken |
    write_wen_5_7 & io_wdata_5_pred_taken | write_wen_6_7 & io_wdata_6_pred_taken | write_wen_7_7 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_7_T_299 = write_wen_0_7 & io_wdata_0_pd_isRet | write_wen_1_7 & io_wdata_1_pd_isRet | write_wen_2_7 &
    io_wdata_2_pd_isRet | write_wen_3_7 & io_wdata_3_pd_isRet | write_wen_4_7 & io_wdata_4_pd_isRet | write_wen_5_7 &
    io_wdata_5_pd_isRet | write_wen_6_7 & io_wdata_6_pd_isRet | write_wen_7_7 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_7_T_314 = write_wen_0_7 & io_wdata_0_pd_isCall | write_wen_1_7 & io_wdata_1_pd_isCall | write_wen_2_7 &
    io_wdata_2_pd_isCall | write_wen_3_7 & io_wdata_3_pd_isCall | write_wen_4_7 & io_wdata_4_pd_isCall | write_wen_5_7
     & io_wdata_5_pd_isCall | write_wen_6_7 & io_wdata_6_pd_isCall | write_wen_7_7 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_315 = write_wen_0_7 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_316 = write_wen_1_7 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_317 = write_wen_2_7 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_318 = write_wen_3_7 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_319 = write_wen_4_7 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_320 = write_wen_5_7 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_321 = write_wen_6_7 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_322 = write_wen_7_7 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_323 = _data_7_T_315 | _data_7_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_324 = _data_7_T_323 | _data_7_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_325 = _data_7_T_324 | _data_7_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_326 = _data_7_T_325 | _data_7_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_327 = _data_7_T_326 | _data_7_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_328 = _data_7_T_327 | _data_7_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_7_T_329 = _data_7_T_328 | _data_7_T_322; // @[Mux.scala 27:73]
  wire  _data_7_T_344 = write_wen_0_7 & io_wdata_0_pd_isRVC | write_wen_1_7 & io_wdata_1_pd_isRVC | write_wen_2_7 &
    io_wdata_2_pd_isRVC | write_wen_3_7 & io_wdata_3_pd_isRVC | write_wen_4_7 & io_wdata_4_pd_isRVC | write_wen_5_7 &
    io_wdata_5_pd_isRVC | write_wen_6_7 & io_wdata_6_pd_isRVC | write_wen_7_7 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_360 = write_wen_0_7 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_361 = write_wen_1_7 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_362 = write_wen_2_7 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_363 = write_wen_3_7 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_364 = write_wen_4_7 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_365 = write_wen_5_7 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_366 = write_wen_6_7 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_367 = write_wen_7_7 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_368 = _data_7_T_360 | _data_7_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_369 = _data_7_T_368 | _data_7_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_370 = _data_7_T_369 | _data_7_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_371 = _data_7_T_370 | _data_7_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_372 = _data_7_T_371 | _data_7_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_373 = _data_7_T_372 | _data_7_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_7_T_374 = _data_7_T_373 | _data_7_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_390 = write_wen_0_7 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_391 = write_wen_1_7 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_392 = write_wen_2_7 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_393 = write_wen_3_7 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_394 = write_wen_4_7 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_395 = write_wen_5_7 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_396 = write_wen_6_7 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_397 = write_wen_7_7 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_398 = _data_7_T_390 | _data_7_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_399 = _data_7_T_398 | _data_7_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_400 = _data_7_T_399 | _data_7_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_401 = _data_7_T_400 | _data_7_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_402 = _data_7_T_401 | _data_7_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_403 = _data_7_T_402 | _data_7_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_7_T_404 = _data_7_T_403 | _data_7_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_8 = io_wen_0 & waddr_dec_0[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_8 = io_wen_1 & waddr_dec_1[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_8 = io_wen_2 & waddr_dec_2[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_8 = io_wen_3 & waddr_dec_3[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_8 = io_wen_4 & waddr_dec_4[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_8 = io_wen_5 & waddr_dec_5[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_8 = io_wen_6 & waddr_dec_6[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_8 = io_wen_7 & waddr_dec_7[8]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_24 = {write_wen_7_8,write_wen_6_8,write_wen_5_8,write_wen_4_8,write_wen_3_8,write_wen_2_8,write_wen_1_8,
    write_wen_0_8}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_8_T_104 = write_wen_0_8 & io_wdata_0_triggered_backendEn_0 | write_wen_1_8 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_8 & io_wdata_2_triggered_backendEn_0 | write_wen_3_8 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_8 & io_wdata_4_triggered_backendEn_0 | write_wen_5_8 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_8 & io_wdata_6_triggered_backendEn_0 | write_wen_7_8 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_8_T_119 = write_wen_0_8 & io_wdata_0_triggered_backendEn_1 | write_wen_1_8 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_8 & io_wdata_2_triggered_backendEn_1 | write_wen_3_8 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_8 & io_wdata_4_triggered_backendEn_1 | write_wen_5_8 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_8 & io_wdata_6_triggered_backendEn_1 | write_wen_7_8 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_8_T_134 = write_wen_0_8 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_8 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_8 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_8 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_8 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_8 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_8 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_8 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_8_T_149 = write_wen_0_8 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_8 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_8 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_8 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_8 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_8 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_8 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_8 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_8_T_164 = write_wen_0_8 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_8 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_8 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_8 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_8 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_8 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_8 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_8 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_8_T_179 = write_wen_0_8 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_8 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_8 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_8 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_8 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_8 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_8 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_8 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_8_T_194 = write_wen_0_8 & io_wdata_0_crossPageIPFFix | write_wen_1_8 & io_wdata_1_crossPageIPFFix |
    write_wen_2_8 & io_wdata_2_crossPageIPFFix | write_wen_3_8 & io_wdata_3_crossPageIPFFix | write_wen_4_8 &
    io_wdata_4_crossPageIPFFix | write_wen_5_8 & io_wdata_5_crossPageIPFFix | write_wen_6_8 & io_wdata_6_crossPageIPFFix
     | write_wen_7_8 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_8_T_209 = write_wen_0_8 & io_wdata_0_acf | write_wen_1_8 & io_wdata_1_acf | write_wen_2_8 & io_wdata_2_acf
     | write_wen_3_8 & io_wdata_3_acf | write_wen_4_8 & io_wdata_4_acf | write_wen_5_8 & io_wdata_5_acf | write_wen_6_8
     & io_wdata_6_acf | write_wen_7_8 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_8_T_224 = write_wen_0_8 & io_wdata_0_ipf | write_wen_1_8 & io_wdata_1_ipf | write_wen_2_8 & io_wdata_2_ipf
     | write_wen_3_8 & io_wdata_3_ipf | write_wen_4_8 & io_wdata_4_ipf | write_wen_5_8 & io_wdata_5_ipf | write_wen_6_8
     & io_wdata_6_ipf | write_wen_7_8 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_226 = write_wen_1_8 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_227 = write_wen_2_8 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_228 = write_wen_3_8 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_229 = write_wen_4_8 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_230 = write_wen_5_8 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_231 = write_wen_6_8 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_232 = write_wen_7_8 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_234 = _data_8_T_226 | _data_8_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_235 = _data_8_T_234 | _data_8_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_236 = _data_8_T_235 | _data_8_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_237 = _data_8_T_236 | _data_8_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_238 = _data_8_T_237 | _data_8_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_239 = _data_8_T_238 | _data_8_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_240 = write_wen_0_8 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_241 = write_wen_1_8 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_242 = write_wen_2_8 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_243 = write_wen_3_8 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_244 = write_wen_4_8 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_245 = write_wen_5_8 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_246 = write_wen_6_8 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_247 = write_wen_7_8 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_248 = _data_8_T_240 | _data_8_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_249 = _data_8_T_248 | _data_8_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_250 = _data_8_T_249 | _data_8_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_251 = _data_8_T_250 | _data_8_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_252 = _data_8_T_251 | _data_8_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_253 = _data_8_T_252 | _data_8_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_8_T_254 = _data_8_T_253 | _data_8_T_247; // @[Mux.scala 27:73]
  wire  _data_8_T_269 = write_wen_0_8 & io_wdata_0_ftqPtr_flag | write_wen_1_8 & io_wdata_1_ftqPtr_flag | write_wen_2_8
     & io_wdata_2_ftqPtr_flag | write_wen_3_8 & io_wdata_3_ftqPtr_flag | write_wen_4_8 & io_wdata_4_ftqPtr_flag |
    write_wen_5_8 & io_wdata_5_ftqPtr_flag | write_wen_6_8 & io_wdata_6_ftqPtr_flag | write_wen_7_8 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_8_T_284 = write_wen_0_8 & io_wdata_0_pred_taken | write_wen_1_8 & io_wdata_1_pred_taken | write_wen_2_8 &
    io_wdata_2_pred_taken | write_wen_3_8 & io_wdata_3_pred_taken | write_wen_4_8 & io_wdata_4_pred_taken |
    write_wen_5_8 & io_wdata_5_pred_taken | write_wen_6_8 & io_wdata_6_pred_taken | write_wen_7_8 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_8_T_299 = write_wen_0_8 & io_wdata_0_pd_isRet | write_wen_1_8 & io_wdata_1_pd_isRet | write_wen_2_8 &
    io_wdata_2_pd_isRet | write_wen_3_8 & io_wdata_3_pd_isRet | write_wen_4_8 & io_wdata_4_pd_isRet | write_wen_5_8 &
    io_wdata_5_pd_isRet | write_wen_6_8 & io_wdata_6_pd_isRet | write_wen_7_8 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_8_T_314 = write_wen_0_8 & io_wdata_0_pd_isCall | write_wen_1_8 & io_wdata_1_pd_isCall | write_wen_2_8 &
    io_wdata_2_pd_isCall | write_wen_3_8 & io_wdata_3_pd_isCall | write_wen_4_8 & io_wdata_4_pd_isCall | write_wen_5_8
     & io_wdata_5_pd_isCall | write_wen_6_8 & io_wdata_6_pd_isCall | write_wen_7_8 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_315 = write_wen_0_8 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_316 = write_wen_1_8 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_317 = write_wen_2_8 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_318 = write_wen_3_8 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_319 = write_wen_4_8 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_320 = write_wen_5_8 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_321 = write_wen_6_8 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_322 = write_wen_7_8 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_323 = _data_8_T_315 | _data_8_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_324 = _data_8_T_323 | _data_8_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_325 = _data_8_T_324 | _data_8_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_326 = _data_8_T_325 | _data_8_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_327 = _data_8_T_326 | _data_8_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_328 = _data_8_T_327 | _data_8_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_8_T_329 = _data_8_T_328 | _data_8_T_322; // @[Mux.scala 27:73]
  wire  _data_8_T_344 = write_wen_0_8 & io_wdata_0_pd_isRVC | write_wen_1_8 & io_wdata_1_pd_isRVC | write_wen_2_8 &
    io_wdata_2_pd_isRVC | write_wen_3_8 & io_wdata_3_pd_isRVC | write_wen_4_8 & io_wdata_4_pd_isRVC | write_wen_5_8 &
    io_wdata_5_pd_isRVC | write_wen_6_8 & io_wdata_6_pd_isRVC | write_wen_7_8 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_360 = write_wen_0_8 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_361 = write_wen_1_8 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_362 = write_wen_2_8 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_363 = write_wen_3_8 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_364 = write_wen_4_8 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_365 = write_wen_5_8 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_366 = write_wen_6_8 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_367 = write_wen_7_8 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_368 = _data_8_T_360 | _data_8_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_369 = _data_8_T_368 | _data_8_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_370 = _data_8_T_369 | _data_8_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_371 = _data_8_T_370 | _data_8_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_372 = _data_8_T_371 | _data_8_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_373 = _data_8_T_372 | _data_8_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_8_T_374 = _data_8_T_373 | _data_8_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_390 = write_wen_0_8 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_391 = write_wen_1_8 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_392 = write_wen_2_8 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_393 = write_wen_3_8 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_394 = write_wen_4_8 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_395 = write_wen_5_8 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_396 = write_wen_6_8 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_397 = write_wen_7_8 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_398 = _data_8_T_390 | _data_8_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_399 = _data_8_T_398 | _data_8_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_400 = _data_8_T_399 | _data_8_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_401 = _data_8_T_400 | _data_8_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_402 = _data_8_T_401 | _data_8_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_403 = _data_8_T_402 | _data_8_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_8_T_404 = _data_8_T_403 | _data_8_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_9 = io_wen_0 & waddr_dec_0[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_9 = io_wen_1 & waddr_dec_1[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_9 = io_wen_2 & waddr_dec_2[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_9 = io_wen_3 & waddr_dec_3[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_9 = io_wen_4 & waddr_dec_4[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_9 = io_wen_5 & waddr_dec_5[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_9 = io_wen_6 & waddr_dec_6[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_9 = io_wen_7 & waddr_dec_7[9]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_26 = {write_wen_7_9,write_wen_6_9,write_wen_5_9,write_wen_4_9,write_wen_3_9,write_wen_2_9,write_wen_1_9,
    write_wen_0_9}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_9_T_104 = write_wen_0_9 & io_wdata_0_triggered_backendEn_0 | write_wen_1_9 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_9 & io_wdata_2_triggered_backendEn_0 | write_wen_3_9 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_9 & io_wdata_4_triggered_backendEn_0 | write_wen_5_9 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_9 & io_wdata_6_triggered_backendEn_0 | write_wen_7_9 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_9_T_119 = write_wen_0_9 & io_wdata_0_triggered_backendEn_1 | write_wen_1_9 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_9 & io_wdata_2_triggered_backendEn_1 | write_wen_3_9 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_9 & io_wdata_4_triggered_backendEn_1 | write_wen_5_9 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_9 & io_wdata_6_triggered_backendEn_1 | write_wen_7_9 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_9_T_134 = write_wen_0_9 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_9 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_9 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_9 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_9 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_9 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_9 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_9 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_9_T_149 = write_wen_0_9 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_9 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_9 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_9 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_9 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_9 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_9 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_9 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_9_T_164 = write_wen_0_9 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_9 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_9 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_9 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_9 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_9 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_9 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_9 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_9_T_179 = write_wen_0_9 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_9 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_9 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_9 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_9 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_9 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_9 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_9 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_9_T_194 = write_wen_0_9 & io_wdata_0_crossPageIPFFix | write_wen_1_9 & io_wdata_1_crossPageIPFFix |
    write_wen_2_9 & io_wdata_2_crossPageIPFFix | write_wen_3_9 & io_wdata_3_crossPageIPFFix | write_wen_4_9 &
    io_wdata_4_crossPageIPFFix | write_wen_5_9 & io_wdata_5_crossPageIPFFix | write_wen_6_9 & io_wdata_6_crossPageIPFFix
     | write_wen_7_9 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_9_T_209 = write_wen_0_9 & io_wdata_0_acf | write_wen_1_9 & io_wdata_1_acf | write_wen_2_9 & io_wdata_2_acf
     | write_wen_3_9 & io_wdata_3_acf | write_wen_4_9 & io_wdata_4_acf | write_wen_5_9 & io_wdata_5_acf | write_wen_6_9
     & io_wdata_6_acf | write_wen_7_9 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_9_T_224 = write_wen_0_9 & io_wdata_0_ipf | write_wen_1_9 & io_wdata_1_ipf | write_wen_2_9 & io_wdata_2_ipf
     | write_wen_3_9 & io_wdata_3_ipf | write_wen_4_9 & io_wdata_4_ipf | write_wen_5_9 & io_wdata_5_ipf | write_wen_6_9
     & io_wdata_6_ipf | write_wen_7_9 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_226 = write_wen_1_9 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_227 = write_wen_2_9 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_228 = write_wen_3_9 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_229 = write_wen_4_9 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_230 = write_wen_5_9 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_231 = write_wen_6_9 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_232 = write_wen_7_9 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_234 = _data_9_T_226 | _data_9_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_235 = _data_9_T_234 | _data_9_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_236 = _data_9_T_235 | _data_9_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_237 = _data_9_T_236 | _data_9_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_238 = _data_9_T_237 | _data_9_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_239 = _data_9_T_238 | _data_9_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_240 = write_wen_0_9 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_241 = write_wen_1_9 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_242 = write_wen_2_9 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_243 = write_wen_3_9 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_244 = write_wen_4_9 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_245 = write_wen_5_9 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_246 = write_wen_6_9 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_247 = write_wen_7_9 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_248 = _data_9_T_240 | _data_9_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_249 = _data_9_T_248 | _data_9_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_250 = _data_9_T_249 | _data_9_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_251 = _data_9_T_250 | _data_9_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_252 = _data_9_T_251 | _data_9_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_253 = _data_9_T_252 | _data_9_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_9_T_254 = _data_9_T_253 | _data_9_T_247; // @[Mux.scala 27:73]
  wire  _data_9_T_269 = write_wen_0_9 & io_wdata_0_ftqPtr_flag | write_wen_1_9 & io_wdata_1_ftqPtr_flag | write_wen_2_9
     & io_wdata_2_ftqPtr_flag | write_wen_3_9 & io_wdata_3_ftqPtr_flag | write_wen_4_9 & io_wdata_4_ftqPtr_flag |
    write_wen_5_9 & io_wdata_5_ftqPtr_flag | write_wen_6_9 & io_wdata_6_ftqPtr_flag | write_wen_7_9 &
    io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_9_T_284 = write_wen_0_9 & io_wdata_0_pred_taken | write_wen_1_9 & io_wdata_1_pred_taken | write_wen_2_9 &
    io_wdata_2_pred_taken | write_wen_3_9 & io_wdata_3_pred_taken | write_wen_4_9 & io_wdata_4_pred_taken |
    write_wen_5_9 & io_wdata_5_pred_taken | write_wen_6_9 & io_wdata_6_pred_taken | write_wen_7_9 &
    io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_9_T_299 = write_wen_0_9 & io_wdata_0_pd_isRet | write_wen_1_9 & io_wdata_1_pd_isRet | write_wen_2_9 &
    io_wdata_2_pd_isRet | write_wen_3_9 & io_wdata_3_pd_isRet | write_wen_4_9 & io_wdata_4_pd_isRet | write_wen_5_9 &
    io_wdata_5_pd_isRet | write_wen_6_9 & io_wdata_6_pd_isRet | write_wen_7_9 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_9_T_314 = write_wen_0_9 & io_wdata_0_pd_isCall | write_wen_1_9 & io_wdata_1_pd_isCall | write_wen_2_9 &
    io_wdata_2_pd_isCall | write_wen_3_9 & io_wdata_3_pd_isCall | write_wen_4_9 & io_wdata_4_pd_isCall | write_wen_5_9
     & io_wdata_5_pd_isCall | write_wen_6_9 & io_wdata_6_pd_isCall | write_wen_7_9 & io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_315 = write_wen_0_9 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_316 = write_wen_1_9 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_317 = write_wen_2_9 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_318 = write_wen_3_9 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_319 = write_wen_4_9 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_320 = write_wen_5_9 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_321 = write_wen_6_9 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_322 = write_wen_7_9 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_323 = _data_9_T_315 | _data_9_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_324 = _data_9_T_323 | _data_9_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_325 = _data_9_T_324 | _data_9_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_326 = _data_9_T_325 | _data_9_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_327 = _data_9_T_326 | _data_9_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_328 = _data_9_T_327 | _data_9_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_9_T_329 = _data_9_T_328 | _data_9_T_322; // @[Mux.scala 27:73]
  wire  _data_9_T_344 = write_wen_0_9 & io_wdata_0_pd_isRVC | write_wen_1_9 & io_wdata_1_pd_isRVC | write_wen_2_9 &
    io_wdata_2_pd_isRVC | write_wen_3_9 & io_wdata_3_pd_isRVC | write_wen_4_9 & io_wdata_4_pd_isRVC | write_wen_5_9 &
    io_wdata_5_pd_isRVC | write_wen_6_9 & io_wdata_6_pd_isRVC | write_wen_7_9 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_360 = write_wen_0_9 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_361 = write_wen_1_9 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_362 = write_wen_2_9 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_363 = write_wen_3_9 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_364 = write_wen_4_9 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_365 = write_wen_5_9 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_366 = write_wen_6_9 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_367 = write_wen_7_9 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_368 = _data_9_T_360 | _data_9_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_369 = _data_9_T_368 | _data_9_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_370 = _data_9_T_369 | _data_9_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_371 = _data_9_T_370 | _data_9_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_372 = _data_9_T_371 | _data_9_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_373 = _data_9_T_372 | _data_9_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_9_T_374 = _data_9_T_373 | _data_9_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_390 = write_wen_0_9 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_391 = write_wen_1_9 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_392 = write_wen_2_9 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_393 = write_wen_3_9 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_394 = write_wen_4_9 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_395 = write_wen_5_9 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_396 = write_wen_6_9 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_397 = write_wen_7_9 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_398 = _data_9_T_390 | _data_9_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_399 = _data_9_T_398 | _data_9_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_400 = _data_9_T_399 | _data_9_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_401 = _data_9_T_400 | _data_9_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_402 = _data_9_T_401 | _data_9_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_403 = _data_9_T_402 | _data_9_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_9_T_404 = _data_9_T_403 | _data_9_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_10 = io_wen_0 & waddr_dec_0[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_10 = io_wen_1 & waddr_dec_1[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_10 = io_wen_2 & waddr_dec_2[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_10 = io_wen_3 & waddr_dec_3[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_10 = io_wen_4 & waddr_dec_4[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_10 = io_wen_5 & waddr_dec_5[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_10 = io_wen_6 & waddr_dec_6[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_10 = io_wen_7 & waddr_dec_7[10]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_28 = {write_wen_7_10,write_wen_6_10,write_wen_5_10,write_wen_4_10,write_wen_3_10,write_wen_2_10,
    write_wen_1_10,write_wen_0_10}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_10_T_104 = write_wen_0_10 & io_wdata_0_triggered_backendEn_0 | write_wen_1_10 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_10 & io_wdata_2_triggered_backendEn_0 | write_wen_3_10 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_10 & io_wdata_4_triggered_backendEn_0 | write_wen_5_10 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_10 & io_wdata_6_triggered_backendEn_0 | write_wen_7_10 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_10_T_119 = write_wen_0_10 & io_wdata_0_triggered_backendEn_1 | write_wen_1_10 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_10 & io_wdata_2_triggered_backendEn_1 | write_wen_3_10 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_10 & io_wdata_4_triggered_backendEn_1 | write_wen_5_10 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_10 & io_wdata_6_triggered_backendEn_1 | write_wen_7_10 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_10_T_134 = write_wen_0_10 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_10 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_10 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_10 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_10 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_10 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_10 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_10 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_10_T_149 = write_wen_0_10 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_10 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_10 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_10 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_10 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_10 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_10 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_10 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_10_T_164 = write_wen_0_10 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_10 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_10 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_10 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_10 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_10 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_10 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_10 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_10_T_179 = write_wen_0_10 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_10 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_10 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_10 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_10 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_10 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_10 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_10 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_10_T_194 = write_wen_0_10 & io_wdata_0_crossPageIPFFix | write_wen_1_10 & io_wdata_1_crossPageIPFFix |
    write_wen_2_10 & io_wdata_2_crossPageIPFFix | write_wen_3_10 & io_wdata_3_crossPageIPFFix | write_wen_4_10 &
    io_wdata_4_crossPageIPFFix | write_wen_5_10 & io_wdata_5_crossPageIPFFix | write_wen_6_10 &
    io_wdata_6_crossPageIPFFix | write_wen_7_10 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_10_T_209 = write_wen_0_10 & io_wdata_0_acf | write_wen_1_10 & io_wdata_1_acf | write_wen_2_10 &
    io_wdata_2_acf | write_wen_3_10 & io_wdata_3_acf | write_wen_4_10 & io_wdata_4_acf | write_wen_5_10 & io_wdata_5_acf
     | write_wen_6_10 & io_wdata_6_acf | write_wen_7_10 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_10_T_224 = write_wen_0_10 & io_wdata_0_ipf | write_wen_1_10 & io_wdata_1_ipf | write_wen_2_10 &
    io_wdata_2_ipf | write_wen_3_10 & io_wdata_3_ipf | write_wen_4_10 & io_wdata_4_ipf | write_wen_5_10 & io_wdata_5_ipf
     | write_wen_6_10 & io_wdata_6_ipf | write_wen_7_10 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_226 = write_wen_1_10 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_227 = write_wen_2_10 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_228 = write_wen_3_10 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_229 = write_wen_4_10 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_230 = write_wen_5_10 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_231 = write_wen_6_10 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_232 = write_wen_7_10 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_234 = _data_10_T_226 | _data_10_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_235 = _data_10_T_234 | _data_10_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_236 = _data_10_T_235 | _data_10_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_237 = _data_10_T_236 | _data_10_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_238 = _data_10_T_237 | _data_10_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_239 = _data_10_T_238 | _data_10_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_240 = write_wen_0_10 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_241 = write_wen_1_10 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_242 = write_wen_2_10 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_243 = write_wen_3_10 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_244 = write_wen_4_10 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_245 = write_wen_5_10 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_246 = write_wen_6_10 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_247 = write_wen_7_10 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_248 = _data_10_T_240 | _data_10_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_249 = _data_10_T_248 | _data_10_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_250 = _data_10_T_249 | _data_10_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_251 = _data_10_T_250 | _data_10_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_252 = _data_10_T_251 | _data_10_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_253 = _data_10_T_252 | _data_10_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_10_T_254 = _data_10_T_253 | _data_10_T_247; // @[Mux.scala 27:73]
  wire  _data_10_T_269 = write_wen_0_10 & io_wdata_0_ftqPtr_flag | write_wen_1_10 & io_wdata_1_ftqPtr_flag |
    write_wen_2_10 & io_wdata_2_ftqPtr_flag | write_wen_3_10 & io_wdata_3_ftqPtr_flag | write_wen_4_10 &
    io_wdata_4_ftqPtr_flag | write_wen_5_10 & io_wdata_5_ftqPtr_flag | write_wen_6_10 & io_wdata_6_ftqPtr_flag |
    write_wen_7_10 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_10_T_284 = write_wen_0_10 & io_wdata_0_pred_taken | write_wen_1_10 & io_wdata_1_pred_taken |
    write_wen_2_10 & io_wdata_2_pred_taken | write_wen_3_10 & io_wdata_3_pred_taken | write_wen_4_10 &
    io_wdata_4_pred_taken | write_wen_5_10 & io_wdata_5_pred_taken | write_wen_6_10 & io_wdata_6_pred_taken |
    write_wen_7_10 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_10_T_299 = write_wen_0_10 & io_wdata_0_pd_isRet | write_wen_1_10 & io_wdata_1_pd_isRet | write_wen_2_10 &
    io_wdata_2_pd_isRet | write_wen_3_10 & io_wdata_3_pd_isRet | write_wen_4_10 & io_wdata_4_pd_isRet | write_wen_5_10
     & io_wdata_5_pd_isRet | write_wen_6_10 & io_wdata_6_pd_isRet | write_wen_7_10 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_10_T_314 = write_wen_0_10 & io_wdata_0_pd_isCall | write_wen_1_10 & io_wdata_1_pd_isCall | write_wen_2_10
     & io_wdata_2_pd_isCall | write_wen_3_10 & io_wdata_3_pd_isCall | write_wen_4_10 & io_wdata_4_pd_isCall |
    write_wen_5_10 & io_wdata_5_pd_isCall | write_wen_6_10 & io_wdata_6_pd_isCall | write_wen_7_10 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_315 = write_wen_0_10 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_316 = write_wen_1_10 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_317 = write_wen_2_10 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_318 = write_wen_3_10 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_319 = write_wen_4_10 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_320 = write_wen_5_10 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_321 = write_wen_6_10 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_322 = write_wen_7_10 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_323 = _data_10_T_315 | _data_10_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_324 = _data_10_T_323 | _data_10_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_325 = _data_10_T_324 | _data_10_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_326 = _data_10_T_325 | _data_10_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_327 = _data_10_T_326 | _data_10_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_328 = _data_10_T_327 | _data_10_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_10_T_329 = _data_10_T_328 | _data_10_T_322; // @[Mux.scala 27:73]
  wire  _data_10_T_344 = write_wen_0_10 & io_wdata_0_pd_isRVC | write_wen_1_10 & io_wdata_1_pd_isRVC | write_wen_2_10 &
    io_wdata_2_pd_isRVC | write_wen_3_10 & io_wdata_3_pd_isRVC | write_wen_4_10 & io_wdata_4_pd_isRVC | write_wen_5_10
     & io_wdata_5_pd_isRVC | write_wen_6_10 & io_wdata_6_pd_isRVC | write_wen_7_10 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_360 = write_wen_0_10 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_361 = write_wen_1_10 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_362 = write_wen_2_10 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_363 = write_wen_3_10 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_364 = write_wen_4_10 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_365 = write_wen_5_10 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_366 = write_wen_6_10 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_367 = write_wen_7_10 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_368 = _data_10_T_360 | _data_10_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_369 = _data_10_T_368 | _data_10_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_370 = _data_10_T_369 | _data_10_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_371 = _data_10_T_370 | _data_10_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_372 = _data_10_T_371 | _data_10_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_373 = _data_10_T_372 | _data_10_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_10_T_374 = _data_10_T_373 | _data_10_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_390 = write_wen_0_10 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_391 = write_wen_1_10 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_392 = write_wen_2_10 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_393 = write_wen_3_10 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_394 = write_wen_4_10 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_395 = write_wen_5_10 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_396 = write_wen_6_10 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_397 = write_wen_7_10 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_398 = _data_10_T_390 | _data_10_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_399 = _data_10_T_398 | _data_10_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_400 = _data_10_T_399 | _data_10_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_401 = _data_10_T_400 | _data_10_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_402 = _data_10_T_401 | _data_10_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_403 = _data_10_T_402 | _data_10_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_10_T_404 = _data_10_T_403 | _data_10_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_11 = io_wen_0 & waddr_dec_0[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_11 = io_wen_1 & waddr_dec_1[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_11 = io_wen_2 & waddr_dec_2[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_11 = io_wen_3 & waddr_dec_3[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_11 = io_wen_4 & waddr_dec_4[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_11 = io_wen_5 & waddr_dec_5[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_11 = io_wen_6 & waddr_dec_6[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_11 = io_wen_7 & waddr_dec_7[11]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_30 = {write_wen_7_11,write_wen_6_11,write_wen_5_11,write_wen_4_11,write_wen_3_11,write_wen_2_11,
    write_wen_1_11,write_wen_0_11}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_11_T_104 = write_wen_0_11 & io_wdata_0_triggered_backendEn_0 | write_wen_1_11 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_11 & io_wdata_2_triggered_backendEn_0 | write_wen_3_11 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_11 & io_wdata_4_triggered_backendEn_0 | write_wen_5_11 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_11 & io_wdata_6_triggered_backendEn_0 | write_wen_7_11 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_11_T_119 = write_wen_0_11 & io_wdata_0_triggered_backendEn_1 | write_wen_1_11 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_11 & io_wdata_2_triggered_backendEn_1 | write_wen_3_11 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_11 & io_wdata_4_triggered_backendEn_1 | write_wen_5_11 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_11 & io_wdata_6_triggered_backendEn_1 | write_wen_7_11 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_11_T_134 = write_wen_0_11 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_11 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_11 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_11 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_11 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_11 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_11 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_11 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_11_T_149 = write_wen_0_11 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_11 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_11 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_11 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_11 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_11 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_11 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_11 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_11_T_164 = write_wen_0_11 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_11 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_11 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_11 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_11 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_11 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_11 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_11 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_11_T_179 = write_wen_0_11 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_11 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_11 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_11 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_11 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_11 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_11 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_11 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_11_T_194 = write_wen_0_11 & io_wdata_0_crossPageIPFFix | write_wen_1_11 & io_wdata_1_crossPageIPFFix |
    write_wen_2_11 & io_wdata_2_crossPageIPFFix | write_wen_3_11 & io_wdata_3_crossPageIPFFix | write_wen_4_11 &
    io_wdata_4_crossPageIPFFix | write_wen_5_11 & io_wdata_5_crossPageIPFFix | write_wen_6_11 &
    io_wdata_6_crossPageIPFFix | write_wen_7_11 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_11_T_209 = write_wen_0_11 & io_wdata_0_acf | write_wen_1_11 & io_wdata_1_acf | write_wen_2_11 &
    io_wdata_2_acf | write_wen_3_11 & io_wdata_3_acf | write_wen_4_11 & io_wdata_4_acf | write_wen_5_11 & io_wdata_5_acf
     | write_wen_6_11 & io_wdata_6_acf | write_wen_7_11 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_11_T_224 = write_wen_0_11 & io_wdata_0_ipf | write_wen_1_11 & io_wdata_1_ipf | write_wen_2_11 &
    io_wdata_2_ipf | write_wen_3_11 & io_wdata_3_ipf | write_wen_4_11 & io_wdata_4_ipf | write_wen_5_11 & io_wdata_5_ipf
     | write_wen_6_11 & io_wdata_6_ipf | write_wen_7_11 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_226 = write_wen_1_11 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_227 = write_wen_2_11 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_228 = write_wen_3_11 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_229 = write_wen_4_11 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_230 = write_wen_5_11 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_231 = write_wen_6_11 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_232 = write_wen_7_11 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_234 = _data_11_T_226 | _data_11_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_235 = _data_11_T_234 | _data_11_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_236 = _data_11_T_235 | _data_11_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_237 = _data_11_T_236 | _data_11_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_238 = _data_11_T_237 | _data_11_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_239 = _data_11_T_238 | _data_11_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_240 = write_wen_0_11 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_241 = write_wen_1_11 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_242 = write_wen_2_11 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_243 = write_wen_3_11 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_244 = write_wen_4_11 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_245 = write_wen_5_11 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_246 = write_wen_6_11 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_247 = write_wen_7_11 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_248 = _data_11_T_240 | _data_11_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_249 = _data_11_T_248 | _data_11_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_250 = _data_11_T_249 | _data_11_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_251 = _data_11_T_250 | _data_11_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_252 = _data_11_T_251 | _data_11_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_253 = _data_11_T_252 | _data_11_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_11_T_254 = _data_11_T_253 | _data_11_T_247; // @[Mux.scala 27:73]
  wire  _data_11_T_269 = write_wen_0_11 & io_wdata_0_ftqPtr_flag | write_wen_1_11 & io_wdata_1_ftqPtr_flag |
    write_wen_2_11 & io_wdata_2_ftqPtr_flag | write_wen_3_11 & io_wdata_3_ftqPtr_flag | write_wen_4_11 &
    io_wdata_4_ftqPtr_flag | write_wen_5_11 & io_wdata_5_ftqPtr_flag | write_wen_6_11 & io_wdata_6_ftqPtr_flag |
    write_wen_7_11 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_11_T_284 = write_wen_0_11 & io_wdata_0_pred_taken | write_wen_1_11 & io_wdata_1_pred_taken |
    write_wen_2_11 & io_wdata_2_pred_taken | write_wen_3_11 & io_wdata_3_pred_taken | write_wen_4_11 &
    io_wdata_4_pred_taken | write_wen_5_11 & io_wdata_5_pred_taken | write_wen_6_11 & io_wdata_6_pred_taken |
    write_wen_7_11 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_11_T_299 = write_wen_0_11 & io_wdata_0_pd_isRet | write_wen_1_11 & io_wdata_1_pd_isRet | write_wen_2_11 &
    io_wdata_2_pd_isRet | write_wen_3_11 & io_wdata_3_pd_isRet | write_wen_4_11 & io_wdata_4_pd_isRet | write_wen_5_11
     & io_wdata_5_pd_isRet | write_wen_6_11 & io_wdata_6_pd_isRet | write_wen_7_11 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_11_T_314 = write_wen_0_11 & io_wdata_0_pd_isCall | write_wen_1_11 & io_wdata_1_pd_isCall | write_wen_2_11
     & io_wdata_2_pd_isCall | write_wen_3_11 & io_wdata_3_pd_isCall | write_wen_4_11 & io_wdata_4_pd_isCall |
    write_wen_5_11 & io_wdata_5_pd_isCall | write_wen_6_11 & io_wdata_6_pd_isCall | write_wen_7_11 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_315 = write_wen_0_11 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_316 = write_wen_1_11 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_317 = write_wen_2_11 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_318 = write_wen_3_11 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_319 = write_wen_4_11 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_320 = write_wen_5_11 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_321 = write_wen_6_11 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_322 = write_wen_7_11 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_323 = _data_11_T_315 | _data_11_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_324 = _data_11_T_323 | _data_11_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_325 = _data_11_T_324 | _data_11_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_326 = _data_11_T_325 | _data_11_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_327 = _data_11_T_326 | _data_11_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_328 = _data_11_T_327 | _data_11_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_11_T_329 = _data_11_T_328 | _data_11_T_322; // @[Mux.scala 27:73]
  wire  _data_11_T_344 = write_wen_0_11 & io_wdata_0_pd_isRVC | write_wen_1_11 & io_wdata_1_pd_isRVC | write_wen_2_11 &
    io_wdata_2_pd_isRVC | write_wen_3_11 & io_wdata_3_pd_isRVC | write_wen_4_11 & io_wdata_4_pd_isRVC | write_wen_5_11
     & io_wdata_5_pd_isRVC | write_wen_6_11 & io_wdata_6_pd_isRVC | write_wen_7_11 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_360 = write_wen_0_11 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_361 = write_wen_1_11 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_362 = write_wen_2_11 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_363 = write_wen_3_11 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_364 = write_wen_4_11 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_365 = write_wen_5_11 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_366 = write_wen_6_11 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_367 = write_wen_7_11 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_368 = _data_11_T_360 | _data_11_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_369 = _data_11_T_368 | _data_11_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_370 = _data_11_T_369 | _data_11_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_371 = _data_11_T_370 | _data_11_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_372 = _data_11_T_371 | _data_11_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_373 = _data_11_T_372 | _data_11_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_11_T_374 = _data_11_T_373 | _data_11_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_390 = write_wen_0_11 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_391 = write_wen_1_11 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_392 = write_wen_2_11 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_393 = write_wen_3_11 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_394 = write_wen_4_11 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_395 = write_wen_5_11 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_396 = write_wen_6_11 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_397 = write_wen_7_11 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_398 = _data_11_T_390 | _data_11_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_399 = _data_11_T_398 | _data_11_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_400 = _data_11_T_399 | _data_11_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_401 = _data_11_T_400 | _data_11_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_402 = _data_11_T_401 | _data_11_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_403 = _data_11_T_402 | _data_11_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_11_T_404 = _data_11_T_403 | _data_11_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_12 = io_wen_0 & waddr_dec_0[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_12 = io_wen_1 & waddr_dec_1[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_12 = io_wen_2 & waddr_dec_2[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_12 = io_wen_3 & waddr_dec_3[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_12 = io_wen_4 & waddr_dec_4[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_12 = io_wen_5 & waddr_dec_5[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_12 = io_wen_6 & waddr_dec_6[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_12 = io_wen_7 & waddr_dec_7[12]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_32 = {write_wen_7_12,write_wen_6_12,write_wen_5_12,write_wen_4_12,write_wen_3_12,write_wen_2_12,
    write_wen_1_12,write_wen_0_12}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_12_T_104 = write_wen_0_12 & io_wdata_0_triggered_backendEn_0 | write_wen_1_12 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_12 & io_wdata_2_triggered_backendEn_0 | write_wen_3_12 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_12 & io_wdata_4_triggered_backendEn_0 | write_wen_5_12 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_12 & io_wdata_6_triggered_backendEn_0 | write_wen_7_12 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_12_T_119 = write_wen_0_12 & io_wdata_0_triggered_backendEn_1 | write_wen_1_12 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_12 & io_wdata_2_triggered_backendEn_1 | write_wen_3_12 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_12 & io_wdata_4_triggered_backendEn_1 | write_wen_5_12 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_12 & io_wdata_6_triggered_backendEn_1 | write_wen_7_12 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_12_T_134 = write_wen_0_12 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_12 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_12 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_12 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_12 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_12 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_12 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_12 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_12_T_149 = write_wen_0_12 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_12 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_12 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_12 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_12 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_12 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_12 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_12 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_12_T_164 = write_wen_0_12 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_12 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_12 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_12 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_12 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_12 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_12 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_12 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_12_T_179 = write_wen_0_12 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_12 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_12 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_12 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_12 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_12 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_12 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_12 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_12_T_194 = write_wen_0_12 & io_wdata_0_crossPageIPFFix | write_wen_1_12 & io_wdata_1_crossPageIPFFix |
    write_wen_2_12 & io_wdata_2_crossPageIPFFix | write_wen_3_12 & io_wdata_3_crossPageIPFFix | write_wen_4_12 &
    io_wdata_4_crossPageIPFFix | write_wen_5_12 & io_wdata_5_crossPageIPFFix | write_wen_6_12 &
    io_wdata_6_crossPageIPFFix | write_wen_7_12 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_12_T_209 = write_wen_0_12 & io_wdata_0_acf | write_wen_1_12 & io_wdata_1_acf | write_wen_2_12 &
    io_wdata_2_acf | write_wen_3_12 & io_wdata_3_acf | write_wen_4_12 & io_wdata_4_acf | write_wen_5_12 & io_wdata_5_acf
     | write_wen_6_12 & io_wdata_6_acf | write_wen_7_12 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_12_T_224 = write_wen_0_12 & io_wdata_0_ipf | write_wen_1_12 & io_wdata_1_ipf | write_wen_2_12 &
    io_wdata_2_ipf | write_wen_3_12 & io_wdata_3_ipf | write_wen_4_12 & io_wdata_4_ipf | write_wen_5_12 & io_wdata_5_ipf
     | write_wen_6_12 & io_wdata_6_ipf | write_wen_7_12 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_226 = write_wen_1_12 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_227 = write_wen_2_12 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_228 = write_wen_3_12 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_229 = write_wen_4_12 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_230 = write_wen_5_12 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_231 = write_wen_6_12 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_232 = write_wen_7_12 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_234 = _data_12_T_226 | _data_12_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_235 = _data_12_T_234 | _data_12_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_236 = _data_12_T_235 | _data_12_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_237 = _data_12_T_236 | _data_12_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_238 = _data_12_T_237 | _data_12_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_239 = _data_12_T_238 | _data_12_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_240 = write_wen_0_12 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_241 = write_wen_1_12 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_242 = write_wen_2_12 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_243 = write_wen_3_12 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_244 = write_wen_4_12 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_245 = write_wen_5_12 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_246 = write_wen_6_12 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_247 = write_wen_7_12 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_248 = _data_12_T_240 | _data_12_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_249 = _data_12_T_248 | _data_12_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_250 = _data_12_T_249 | _data_12_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_251 = _data_12_T_250 | _data_12_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_252 = _data_12_T_251 | _data_12_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_253 = _data_12_T_252 | _data_12_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_12_T_254 = _data_12_T_253 | _data_12_T_247; // @[Mux.scala 27:73]
  wire  _data_12_T_269 = write_wen_0_12 & io_wdata_0_ftqPtr_flag | write_wen_1_12 & io_wdata_1_ftqPtr_flag |
    write_wen_2_12 & io_wdata_2_ftqPtr_flag | write_wen_3_12 & io_wdata_3_ftqPtr_flag | write_wen_4_12 &
    io_wdata_4_ftqPtr_flag | write_wen_5_12 & io_wdata_5_ftqPtr_flag | write_wen_6_12 & io_wdata_6_ftqPtr_flag |
    write_wen_7_12 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_12_T_284 = write_wen_0_12 & io_wdata_0_pred_taken | write_wen_1_12 & io_wdata_1_pred_taken |
    write_wen_2_12 & io_wdata_2_pred_taken | write_wen_3_12 & io_wdata_3_pred_taken | write_wen_4_12 &
    io_wdata_4_pred_taken | write_wen_5_12 & io_wdata_5_pred_taken | write_wen_6_12 & io_wdata_6_pred_taken |
    write_wen_7_12 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_12_T_299 = write_wen_0_12 & io_wdata_0_pd_isRet | write_wen_1_12 & io_wdata_1_pd_isRet | write_wen_2_12 &
    io_wdata_2_pd_isRet | write_wen_3_12 & io_wdata_3_pd_isRet | write_wen_4_12 & io_wdata_4_pd_isRet | write_wen_5_12
     & io_wdata_5_pd_isRet | write_wen_6_12 & io_wdata_6_pd_isRet | write_wen_7_12 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_12_T_314 = write_wen_0_12 & io_wdata_0_pd_isCall | write_wen_1_12 & io_wdata_1_pd_isCall | write_wen_2_12
     & io_wdata_2_pd_isCall | write_wen_3_12 & io_wdata_3_pd_isCall | write_wen_4_12 & io_wdata_4_pd_isCall |
    write_wen_5_12 & io_wdata_5_pd_isCall | write_wen_6_12 & io_wdata_6_pd_isCall | write_wen_7_12 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_315 = write_wen_0_12 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_316 = write_wen_1_12 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_317 = write_wen_2_12 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_318 = write_wen_3_12 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_319 = write_wen_4_12 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_320 = write_wen_5_12 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_321 = write_wen_6_12 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_322 = write_wen_7_12 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_323 = _data_12_T_315 | _data_12_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_324 = _data_12_T_323 | _data_12_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_325 = _data_12_T_324 | _data_12_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_326 = _data_12_T_325 | _data_12_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_327 = _data_12_T_326 | _data_12_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_328 = _data_12_T_327 | _data_12_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_12_T_329 = _data_12_T_328 | _data_12_T_322; // @[Mux.scala 27:73]
  wire  _data_12_T_344 = write_wen_0_12 & io_wdata_0_pd_isRVC | write_wen_1_12 & io_wdata_1_pd_isRVC | write_wen_2_12 &
    io_wdata_2_pd_isRVC | write_wen_3_12 & io_wdata_3_pd_isRVC | write_wen_4_12 & io_wdata_4_pd_isRVC | write_wen_5_12
     & io_wdata_5_pd_isRVC | write_wen_6_12 & io_wdata_6_pd_isRVC | write_wen_7_12 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_360 = write_wen_0_12 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_361 = write_wen_1_12 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_362 = write_wen_2_12 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_363 = write_wen_3_12 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_364 = write_wen_4_12 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_365 = write_wen_5_12 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_366 = write_wen_6_12 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_367 = write_wen_7_12 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_368 = _data_12_T_360 | _data_12_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_369 = _data_12_T_368 | _data_12_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_370 = _data_12_T_369 | _data_12_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_371 = _data_12_T_370 | _data_12_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_372 = _data_12_T_371 | _data_12_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_373 = _data_12_T_372 | _data_12_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_12_T_374 = _data_12_T_373 | _data_12_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_390 = write_wen_0_12 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_391 = write_wen_1_12 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_392 = write_wen_2_12 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_393 = write_wen_3_12 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_394 = write_wen_4_12 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_395 = write_wen_5_12 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_396 = write_wen_6_12 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_397 = write_wen_7_12 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_398 = _data_12_T_390 | _data_12_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_399 = _data_12_T_398 | _data_12_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_400 = _data_12_T_399 | _data_12_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_401 = _data_12_T_400 | _data_12_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_402 = _data_12_T_401 | _data_12_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_403 = _data_12_T_402 | _data_12_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_12_T_404 = _data_12_T_403 | _data_12_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_13 = io_wen_0 & waddr_dec_0[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_13 = io_wen_1 & waddr_dec_1[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_13 = io_wen_2 & waddr_dec_2[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_13 = io_wen_3 & waddr_dec_3[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_13 = io_wen_4 & waddr_dec_4[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_13 = io_wen_5 & waddr_dec_5[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_13 = io_wen_6 & waddr_dec_6[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_13 = io_wen_7 & waddr_dec_7[13]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_34 = {write_wen_7_13,write_wen_6_13,write_wen_5_13,write_wen_4_13,write_wen_3_13,write_wen_2_13,
    write_wen_1_13,write_wen_0_13}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_13_T_104 = write_wen_0_13 & io_wdata_0_triggered_backendEn_0 | write_wen_1_13 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_13 & io_wdata_2_triggered_backendEn_0 | write_wen_3_13 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_13 & io_wdata_4_triggered_backendEn_0 | write_wen_5_13 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_13 & io_wdata_6_triggered_backendEn_0 | write_wen_7_13 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_13_T_119 = write_wen_0_13 & io_wdata_0_triggered_backendEn_1 | write_wen_1_13 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_13 & io_wdata_2_triggered_backendEn_1 | write_wen_3_13 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_13 & io_wdata_4_triggered_backendEn_1 | write_wen_5_13 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_13 & io_wdata_6_triggered_backendEn_1 | write_wen_7_13 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_13_T_134 = write_wen_0_13 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_13 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_13 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_13 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_13 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_13 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_13 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_13 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_13_T_149 = write_wen_0_13 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_13 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_13 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_13 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_13 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_13 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_13 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_13 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_13_T_164 = write_wen_0_13 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_13 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_13 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_13 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_13 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_13 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_13 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_13 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_13_T_179 = write_wen_0_13 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_13 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_13 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_13 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_13 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_13 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_13 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_13 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_13_T_194 = write_wen_0_13 & io_wdata_0_crossPageIPFFix | write_wen_1_13 & io_wdata_1_crossPageIPFFix |
    write_wen_2_13 & io_wdata_2_crossPageIPFFix | write_wen_3_13 & io_wdata_3_crossPageIPFFix | write_wen_4_13 &
    io_wdata_4_crossPageIPFFix | write_wen_5_13 & io_wdata_5_crossPageIPFFix | write_wen_6_13 &
    io_wdata_6_crossPageIPFFix | write_wen_7_13 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_13_T_209 = write_wen_0_13 & io_wdata_0_acf | write_wen_1_13 & io_wdata_1_acf | write_wen_2_13 &
    io_wdata_2_acf | write_wen_3_13 & io_wdata_3_acf | write_wen_4_13 & io_wdata_4_acf | write_wen_5_13 & io_wdata_5_acf
     | write_wen_6_13 & io_wdata_6_acf | write_wen_7_13 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_13_T_224 = write_wen_0_13 & io_wdata_0_ipf | write_wen_1_13 & io_wdata_1_ipf | write_wen_2_13 &
    io_wdata_2_ipf | write_wen_3_13 & io_wdata_3_ipf | write_wen_4_13 & io_wdata_4_ipf | write_wen_5_13 & io_wdata_5_ipf
     | write_wen_6_13 & io_wdata_6_ipf | write_wen_7_13 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_226 = write_wen_1_13 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_227 = write_wen_2_13 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_228 = write_wen_3_13 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_229 = write_wen_4_13 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_230 = write_wen_5_13 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_231 = write_wen_6_13 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_232 = write_wen_7_13 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_234 = _data_13_T_226 | _data_13_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_235 = _data_13_T_234 | _data_13_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_236 = _data_13_T_235 | _data_13_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_237 = _data_13_T_236 | _data_13_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_238 = _data_13_T_237 | _data_13_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_239 = _data_13_T_238 | _data_13_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_240 = write_wen_0_13 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_241 = write_wen_1_13 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_242 = write_wen_2_13 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_243 = write_wen_3_13 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_244 = write_wen_4_13 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_245 = write_wen_5_13 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_246 = write_wen_6_13 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_247 = write_wen_7_13 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_248 = _data_13_T_240 | _data_13_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_249 = _data_13_T_248 | _data_13_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_250 = _data_13_T_249 | _data_13_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_251 = _data_13_T_250 | _data_13_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_252 = _data_13_T_251 | _data_13_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_253 = _data_13_T_252 | _data_13_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_13_T_254 = _data_13_T_253 | _data_13_T_247; // @[Mux.scala 27:73]
  wire  _data_13_T_269 = write_wen_0_13 & io_wdata_0_ftqPtr_flag | write_wen_1_13 & io_wdata_1_ftqPtr_flag |
    write_wen_2_13 & io_wdata_2_ftqPtr_flag | write_wen_3_13 & io_wdata_3_ftqPtr_flag | write_wen_4_13 &
    io_wdata_4_ftqPtr_flag | write_wen_5_13 & io_wdata_5_ftqPtr_flag | write_wen_6_13 & io_wdata_6_ftqPtr_flag |
    write_wen_7_13 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_13_T_284 = write_wen_0_13 & io_wdata_0_pred_taken | write_wen_1_13 & io_wdata_1_pred_taken |
    write_wen_2_13 & io_wdata_2_pred_taken | write_wen_3_13 & io_wdata_3_pred_taken | write_wen_4_13 &
    io_wdata_4_pred_taken | write_wen_5_13 & io_wdata_5_pred_taken | write_wen_6_13 & io_wdata_6_pred_taken |
    write_wen_7_13 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_13_T_299 = write_wen_0_13 & io_wdata_0_pd_isRet | write_wen_1_13 & io_wdata_1_pd_isRet | write_wen_2_13 &
    io_wdata_2_pd_isRet | write_wen_3_13 & io_wdata_3_pd_isRet | write_wen_4_13 & io_wdata_4_pd_isRet | write_wen_5_13
     & io_wdata_5_pd_isRet | write_wen_6_13 & io_wdata_6_pd_isRet | write_wen_7_13 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_13_T_314 = write_wen_0_13 & io_wdata_0_pd_isCall | write_wen_1_13 & io_wdata_1_pd_isCall | write_wen_2_13
     & io_wdata_2_pd_isCall | write_wen_3_13 & io_wdata_3_pd_isCall | write_wen_4_13 & io_wdata_4_pd_isCall |
    write_wen_5_13 & io_wdata_5_pd_isCall | write_wen_6_13 & io_wdata_6_pd_isCall | write_wen_7_13 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_315 = write_wen_0_13 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_316 = write_wen_1_13 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_317 = write_wen_2_13 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_318 = write_wen_3_13 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_319 = write_wen_4_13 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_320 = write_wen_5_13 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_321 = write_wen_6_13 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_322 = write_wen_7_13 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_323 = _data_13_T_315 | _data_13_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_324 = _data_13_T_323 | _data_13_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_325 = _data_13_T_324 | _data_13_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_326 = _data_13_T_325 | _data_13_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_327 = _data_13_T_326 | _data_13_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_328 = _data_13_T_327 | _data_13_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_13_T_329 = _data_13_T_328 | _data_13_T_322; // @[Mux.scala 27:73]
  wire  _data_13_T_344 = write_wen_0_13 & io_wdata_0_pd_isRVC | write_wen_1_13 & io_wdata_1_pd_isRVC | write_wen_2_13 &
    io_wdata_2_pd_isRVC | write_wen_3_13 & io_wdata_3_pd_isRVC | write_wen_4_13 & io_wdata_4_pd_isRVC | write_wen_5_13
     & io_wdata_5_pd_isRVC | write_wen_6_13 & io_wdata_6_pd_isRVC | write_wen_7_13 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_360 = write_wen_0_13 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_361 = write_wen_1_13 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_362 = write_wen_2_13 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_363 = write_wen_3_13 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_364 = write_wen_4_13 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_365 = write_wen_5_13 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_366 = write_wen_6_13 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_367 = write_wen_7_13 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_368 = _data_13_T_360 | _data_13_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_369 = _data_13_T_368 | _data_13_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_370 = _data_13_T_369 | _data_13_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_371 = _data_13_T_370 | _data_13_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_372 = _data_13_T_371 | _data_13_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_373 = _data_13_T_372 | _data_13_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_13_T_374 = _data_13_T_373 | _data_13_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_390 = write_wen_0_13 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_391 = write_wen_1_13 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_392 = write_wen_2_13 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_393 = write_wen_3_13 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_394 = write_wen_4_13 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_395 = write_wen_5_13 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_396 = write_wen_6_13 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_397 = write_wen_7_13 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_398 = _data_13_T_390 | _data_13_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_399 = _data_13_T_398 | _data_13_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_400 = _data_13_T_399 | _data_13_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_401 = _data_13_T_400 | _data_13_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_402 = _data_13_T_401 | _data_13_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_403 = _data_13_T_402 | _data_13_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_13_T_404 = _data_13_T_403 | _data_13_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_14 = io_wen_0 & waddr_dec_0[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_14 = io_wen_1 & waddr_dec_1[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_14 = io_wen_2 & waddr_dec_2[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_14 = io_wen_3 & waddr_dec_3[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_14 = io_wen_4 & waddr_dec_4[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_14 = io_wen_5 & waddr_dec_5[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_14 = io_wen_6 & waddr_dec_6[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_14 = io_wen_7 & waddr_dec_7[14]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_36 = {write_wen_7_14,write_wen_6_14,write_wen_5_14,write_wen_4_14,write_wen_3_14,write_wen_2_14,
    write_wen_1_14,write_wen_0_14}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_14_T_104 = write_wen_0_14 & io_wdata_0_triggered_backendEn_0 | write_wen_1_14 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_14 & io_wdata_2_triggered_backendEn_0 | write_wen_3_14 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_14 & io_wdata_4_triggered_backendEn_0 | write_wen_5_14 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_14 & io_wdata_6_triggered_backendEn_0 | write_wen_7_14 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_14_T_119 = write_wen_0_14 & io_wdata_0_triggered_backendEn_1 | write_wen_1_14 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_14 & io_wdata_2_triggered_backendEn_1 | write_wen_3_14 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_14 & io_wdata_4_triggered_backendEn_1 | write_wen_5_14 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_14 & io_wdata_6_triggered_backendEn_1 | write_wen_7_14 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_14_T_134 = write_wen_0_14 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_14 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_14 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_14 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_14 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_14 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_14 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_14 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_14_T_149 = write_wen_0_14 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_14 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_14 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_14 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_14 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_14 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_14 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_14 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_14_T_164 = write_wen_0_14 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_14 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_14 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_14 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_14 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_14 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_14 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_14 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_14_T_179 = write_wen_0_14 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_14 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_14 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_14 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_14 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_14 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_14 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_14 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_14_T_194 = write_wen_0_14 & io_wdata_0_crossPageIPFFix | write_wen_1_14 & io_wdata_1_crossPageIPFFix |
    write_wen_2_14 & io_wdata_2_crossPageIPFFix | write_wen_3_14 & io_wdata_3_crossPageIPFFix | write_wen_4_14 &
    io_wdata_4_crossPageIPFFix | write_wen_5_14 & io_wdata_5_crossPageIPFFix | write_wen_6_14 &
    io_wdata_6_crossPageIPFFix | write_wen_7_14 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_14_T_209 = write_wen_0_14 & io_wdata_0_acf | write_wen_1_14 & io_wdata_1_acf | write_wen_2_14 &
    io_wdata_2_acf | write_wen_3_14 & io_wdata_3_acf | write_wen_4_14 & io_wdata_4_acf | write_wen_5_14 & io_wdata_5_acf
     | write_wen_6_14 & io_wdata_6_acf | write_wen_7_14 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_14_T_224 = write_wen_0_14 & io_wdata_0_ipf | write_wen_1_14 & io_wdata_1_ipf | write_wen_2_14 &
    io_wdata_2_ipf | write_wen_3_14 & io_wdata_3_ipf | write_wen_4_14 & io_wdata_4_ipf | write_wen_5_14 & io_wdata_5_ipf
     | write_wen_6_14 & io_wdata_6_ipf | write_wen_7_14 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_226 = write_wen_1_14 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_227 = write_wen_2_14 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_228 = write_wen_3_14 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_229 = write_wen_4_14 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_230 = write_wen_5_14 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_231 = write_wen_6_14 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_232 = write_wen_7_14 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_234 = _data_14_T_226 | _data_14_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_235 = _data_14_T_234 | _data_14_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_236 = _data_14_T_235 | _data_14_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_237 = _data_14_T_236 | _data_14_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_238 = _data_14_T_237 | _data_14_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_239 = _data_14_T_238 | _data_14_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_240 = write_wen_0_14 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_241 = write_wen_1_14 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_242 = write_wen_2_14 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_243 = write_wen_3_14 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_244 = write_wen_4_14 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_245 = write_wen_5_14 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_246 = write_wen_6_14 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_247 = write_wen_7_14 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_248 = _data_14_T_240 | _data_14_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_249 = _data_14_T_248 | _data_14_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_250 = _data_14_T_249 | _data_14_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_251 = _data_14_T_250 | _data_14_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_252 = _data_14_T_251 | _data_14_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_253 = _data_14_T_252 | _data_14_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_14_T_254 = _data_14_T_253 | _data_14_T_247; // @[Mux.scala 27:73]
  wire  _data_14_T_269 = write_wen_0_14 & io_wdata_0_ftqPtr_flag | write_wen_1_14 & io_wdata_1_ftqPtr_flag |
    write_wen_2_14 & io_wdata_2_ftqPtr_flag | write_wen_3_14 & io_wdata_3_ftqPtr_flag | write_wen_4_14 &
    io_wdata_4_ftqPtr_flag | write_wen_5_14 & io_wdata_5_ftqPtr_flag | write_wen_6_14 & io_wdata_6_ftqPtr_flag |
    write_wen_7_14 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_14_T_284 = write_wen_0_14 & io_wdata_0_pred_taken | write_wen_1_14 & io_wdata_1_pred_taken |
    write_wen_2_14 & io_wdata_2_pred_taken | write_wen_3_14 & io_wdata_3_pred_taken | write_wen_4_14 &
    io_wdata_4_pred_taken | write_wen_5_14 & io_wdata_5_pred_taken | write_wen_6_14 & io_wdata_6_pred_taken |
    write_wen_7_14 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_14_T_299 = write_wen_0_14 & io_wdata_0_pd_isRet | write_wen_1_14 & io_wdata_1_pd_isRet | write_wen_2_14 &
    io_wdata_2_pd_isRet | write_wen_3_14 & io_wdata_3_pd_isRet | write_wen_4_14 & io_wdata_4_pd_isRet | write_wen_5_14
     & io_wdata_5_pd_isRet | write_wen_6_14 & io_wdata_6_pd_isRet | write_wen_7_14 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_14_T_314 = write_wen_0_14 & io_wdata_0_pd_isCall | write_wen_1_14 & io_wdata_1_pd_isCall | write_wen_2_14
     & io_wdata_2_pd_isCall | write_wen_3_14 & io_wdata_3_pd_isCall | write_wen_4_14 & io_wdata_4_pd_isCall |
    write_wen_5_14 & io_wdata_5_pd_isCall | write_wen_6_14 & io_wdata_6_pd_isCall | write_wen_7_14 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_315 = write_wen_0_14 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_316 = write_wen_1_14 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_317 = write_wen_2_14 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_318 = write_wen_3_14 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_319 = write_wen_4_14 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_320 = write_wen_5_14 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_321 = write_wen_6_14 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_322 = write_wen_7_14 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_323 = _data_14_T_315 | _data_14_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_324 = _data_14_T_323 | _data_14_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_325 = _data_14_T_324 | _data_14_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_326 = _data_14_T_325 | _data_14_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_327 = _data_14_T_326 | _data_14_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_328 = _data_14_T_327 | _data_14_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_14_T_329 = _data_14_T_328 | _data_14_T_322; // @[Mux.scala 27:73]
  wire  _data_14_T_344 = write_wen_0_14 & io_wdata_0_pd_isRVC | write_wen_1_14 & io_wdata_1_pd_isRVC | write_wen_2_14 &
    io_wdata_2_pd_isRVC | write_wen_3_14 & io_wdata_3_pd_isRVC | write_wen_4_14 & io_wdata_4_pd_isRVC | write_wen_5_14
     & io_wdata_5_pd_isRVC | write_wen_6_14 & io_wdata_6_pd_isRVC | write_wen_7_14 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_360 = write_wen_0_14 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_361 = write_wen_1_14 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_362 = write_wen_2_14 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_363 = write_wen_3_14 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_364 = write_wen_4_14 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_365 = write_wen_5_14 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_366 = write_wen_6_14 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_367 = write_wen_7_14 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_368 = _data_14_T_360 | _data_14_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_369 = _data_14_T_368 | _data_14_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_370 = _data_14_T_369 | _data_14_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_371 = _data_14_T_370 | _data_14_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_372 = _data_14_T_371 | _data_14_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_373 = _data_14_T_372 | _data_14_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_14_T_374 = _data_14_T_373 | _data_14_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_390 = write_wen_0_14 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_391 = write_wen_1_14 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_392 = write_wen_2_14 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_393 = write_wen_3_14 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_394 = write_wen_4_14 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_395 = write_wen_5_14 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_396 = write_wen_6_14 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_397 = write_wen_7_14 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_398 = _data_14_T_390 | _data_14_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_399 = _data_14_T_398 | _data_14_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_400 = _data_14_T_399 | _data_14_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_401 = _data_14_T_400 | _data_14_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_402 = _data_14_T_401 | _data_14_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_403 = _data_14_T_402 | _data_14_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_14_T_404 = _data_14_T_403 | _data_14_T_397; // @[Mux.scala 27:73]
  wire  write_wen_0_15 = io_wen_0 & waddr_dec_0[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_15 = io_wen_1 & waddr_dec_1[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_15 = io_wen_2 & waddr_dec_2[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_3_15 = io_wen_3 & waddr_dec_3[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_4_15 = io_wen_4 & waddr_dec_4[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_5_15 = io_wen_5 & waddr_dec_5[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_6_15 = io_wen_6 & waddr_dec_6[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_7_15 = io_wen_7 & waddr_dec_7[15]; // @[DataModuleTemplate.scala 188:57]
  wire [7:0] _T_38 = {write_wen_7_15,write_wen_6_15,write_wen_5_15,write_wen_4_15,write_wen_3_15,write_wen_2_15,
    write_wen_1_15,write_wen_0_15}; // @[DataModuleTemplate.scala 189:30]
  wire  _data_15_T_104 = write_wen_0_15 & io_wdata_0_triggered_backendEn_0 | write_wen_1_15 &
    io_wdata_1_triggered_backendEn_0 | write_wen_2_15 & io_wdata_2_triggered_backendEn_0 | write_wen_3_15 &
    io_wdata_3_triggered_backendEn_0 | write_wen_4_15 & io_wdata_4_triggered_backendEn_0 | write_wen_5_15 &
    io_wdata_5_triggered_backendEn_0 | write_wen_6_15 & io_wdata_6_triggered_backendEn_0 | write_wen_7_15 &
    io_wdata_7_triggered_backendEn_0; // @[Mux.scala 27:73]
  wire  _data_15_T_119 = write_wen_0_15 & io_wdata_0_triggered_backendEn_1 | write_wen_1_15 &
    io_wdata_1_triggered_backendEn_1 | write_wen_2_15 & io_wdata_2_triggered_backendEn_1 | write_wen_3_15 &
    io_wdata_3_triggered_backendEn_1 | write_wen_4_15 & io_wdata_4_triggered_backendEn_1 | write_wen_5_15 &
    io_wdata_5_triggered_backendEn_1 | write_wen_6_15 & io_wdata_6_triggered_backendEn_1 | write_wen_7_15 &
    io_wdata_7_triggered_backendEn_1; // @[Mux.scala 27:73]
  wire  _data_15_T_134 = write_wen_0_15 & io_wdata_0_triggered_frontendHit_0 | write_wen_1_15 &
    io_wdata_1_triggered_frontendHit_0 | write_wen_2_15 & io_wdata_2_triggered_frontendHit_0 | write_wen_3_15 &
    io_wdata_3_triggered_frontendHit_0 | write_wen_4_15 & io_wdata_4_triggered_frontendHit_0 | write_wen_5_15 &
    io_wdata_5_triggered_frontendHit_0 | write_wen_6_15 & io_wdata_6_triggered_frontendHit_0 | write_wen_7_15 &
    io_wdata_7_triggered_frontendHit_0; // @[Mux.scala 27:73]
  wire  _data_15_T_149 = write_wen_0_15 & io_wdata_0_triggered_frontendHit_1 | write_wen_1_15 &
    io_wdata_1_triggered_frontendHit_1 | write_wen_2_15 & io_wdata_2_triggered_frontendHit_1 | write_wen_3_15 &
    io_wdata_3_triggered_frontendHit_1 | write_wen_4_15 & io_wdata_4_triggered_frontendHit_1 | write_wen_5_15 &
    io_wdata_5_triggered_frontendHit_1 | write_wen_6_15 & io_wdata_6_triggered_frontendHit_1 | write_wen_7_15 &
    io_wdata_7_triggered_frontendHit_1; // @[Mux.scala 27:73]
  wire  _data_15_T_164 = write_wen_0_15 & io_wdata_0_triggered_frontendHit_2 | write_wen_1_15 &
    io_wdata_1_triggered_frontendHit_2 | write_wen_2_15 & io_wdata_2_triggered_frontendHit_2 | write_wen_3_15 &
    io_wdata_3_triggered_frontendHit_2 | write_wen_4_15 & io_wdata_4_triggered_frontendHit_2 | write_wen_5_15 &
    io_wdata_5_triggered_frontendHit_2 | write_wen_6_15 & io_wdata_6_triggered_frontendHit_2 | write_wen_7_15 &
    io_wdata_7_triggered_frontendHit_2; // @[Mux.scala 27:73]
  wire  _data_15_T_179 = write_wen_0_15 & io_wdata_0_triggered_frontendHit_3 | write_wen_1_15 &
    io_wdata_1_triggered_frontendHit_3 | write_wen_2_15 & io_wdata_2_triggered_frontendHit_3 | write_wen_3_15 &
    io_wdata_3_triggered_frontendHit_3 | write_wen_4_15 & io_wdata_4_triggered_frontendHit_3 | write_wen_5_15 &
    io_wdata_5_triggered_frontendHit_3 | write_wen_6_15 & io_wdata_6_triggered_frontendHit_3 | write_wen_7_15 &
    io_wdata_7_triggered_frontendHit_3; // @[Mux.scala 27:73]
  wire  _data_15_T_194 = write_wen_0_15 & io_wdata_0_crossPageIPFFix | write_wen_1_15 & io_wdata_1_crossPageIPFFix |
    write_wen_2_15 & io_wdata_2_crossPageIPFFix | write_wen_3_15 & io_wdata_3_crossPageIPFFix | write_wen_4_15 &
    io_wdata_4_crossPageIPFFix | write_wen_5_15 & io_wdata_5_crossPageIPFFix | write_wen_6_15 &
    io_wdata_6_crossPageIPFFix | write_wen_7_15 & io_wdata_7_crossPageIPFFix; // @[Mux.scala 27:73]
  wire  _data_15_T_209 = write_wen_0_15 & io_wdata_0_acf | write_wen_1_15 & io_wdata_1_acf | write_wen_2_15 &
    io_wdata_2_acf | write_wen_3_15 & io_wdata_3_acf | write_wen_4_15 & io_wdata_4_acf | write_wen_5_15 & io_wdata_5_acf
     | write_wen_6_15 & io_wdata_6_acf | write_wen_7_15 & io_wdata_7_acf; // @[Mux.scala 27:73]
  wire  _data_15_T_224 = write_wen_0_15 & io_wdata_0_ipf | write_wen_1_15 & io_wdata_1_ipf | write_wen_2_15 &
    io_wdata_2_ipf | write_wen_3_15 & io_wdata_3_ipf | write_wen_4_15 & io_wdata_4_ipf | write_wen_5_15 & io_wdata_5_ipf
     | write_wen_6_15 & io_wdata_6_ipf | write_wen_7_15 & io_wdata_7_ipf; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_226 = write_wen_1_15 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_227 = write_wen_2_15 ? 3'h2 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_228 = write_wen_3_15 ? 3'h3 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_229 = write_wen_4_15 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_230 = write_wen_5_15 ? 3'h5 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_231 = write_wen_6_15 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_232 = write_wen_7_15 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_234 = _data_15_T_226 | _data_15_T_227; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_235 = _data_15_T_234 | _data_15_T_228; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_236 = _data_15_T_235 | _data_15_T_229; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_237 = _data_15_T_236 | _data_15_T_230; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_238 = _data_15_T_237 | _data_15_T_231; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_239 = _data_15_T_238 | _data_15_T_232; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_240 = write_wen_0_15 ? io_wdata_0_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_241 = write_wen_1_15 ? io_wdata_1_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_242 = write_wen_2_15 ? io_wdata_2_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_243 = write_wen_3_15 ? io_wdata_3_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_244 = write_wen_4_15 ? io_wdata_4_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_245 = write_wen_5_15 ? io_wdata_5_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_246 = write_wen_6_15 ? io_wdata_6_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_247 = write_wen_7_15 ? io_wdata_7_ftqPtr_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_248 = _data_15_T_240 | _data_15_T_241; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_249 = _data_15_T_248 | _data_15_T_242; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_250 = _data_15_T_249 | _data_15_T_243; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_251 = _data_15_T_250 | _data_15_T_244; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_252 = _data_15_T_251 | _data_15_T_245; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_253 = _data_15_T_252 | _data_15_T_246; // @[Mux.scala 27:73]
  wire [2:0] _data_15_T_254 = _data_15_T_253 | _data_15_T_247; // @[Mux.scala 27:73]
  wire  _data_15_T_269 = write_wen_0_15 & io_wdata_0_ftqPtr_flag | write_wen_1_15 & io_wdata_1_ftqPtr_flag |
    write_wen_2_15 & io_wdata_2_ftqPtr_flag | write_wen_3_15 & io_wdata_3_ftqPtr_flag | write_wen_4_15 &
    io_wdata_4_ftqPtr_flag | write_wen_5_15 & io_wdata_5_ftqPtr_flag | write_wen_6_15 & io_wdata_6_ftqPtr_flag |
    write_wen_7_15 & io_wdata_7_ftqPtr_flag; // @[Mux.scala 27:73]
  wire  _data_15_T_284 = write_wen_0_15 & io_wdata_0_pred_taken | write_wen_1_15 & io_wdata_1_pred_taken |
    write_wen_2_15 & io_wdata_2_pred_taken | write_wen_3_15 & io_wdata_3_pred_taken | write_wen_4_15 &
    io_wdata_4_pred_taken | write_wen_5_15 & io_wdata_5_pred_taken | write_wen_6_15 & io_wdata_6_pred_taken |
    write_wen_7_15 & io_wdata_7_pred_taken; // @[Mux.scala 27:73]
  wire  _data_15_T_299 = write_wen_0_15 & io_wdata_0_pd_isRet | write_wen_1_15 & io_wdata_1_pd_isRet | write_wen_2_15 &
    io_wdata_2_pd_isRet | write_wen_3_15 & io_wdata_3_pd_isRet | write_wen_4_15 & io_wdata_4_pd_isRet | write_wen_5_15
     & io_wdata_5_pd_isRet | write_wen_6_15 & io_wdata_6_pd_isRet | write_wen_7_15 & io_wdata_7_pd_isRet; // @[Mux.scala 27:73]
  wire  _data_15_T_314 = write_wen_0_15 & io_wdata_0_pd_isCall | write_wen_1_15 & io_wdata_1_pd_isCall | write_wen_2_15
     & io_wdata_2_pd_isCall | write_wen_3_15 & io_wdata_3_pd_isCall | write_wen_4_15 & io_wdata_4_pd_isCall |
    write_wen_5_15 & io_wdata_5_pd_isCall | write_wen_6_15 & io_wdata_6_pd_isCall | write_wen_7_15 &
    io_wdata_7_pd_isCall; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_315 = write_wen_0_15 ? io_wdata_0_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_316 = write_wen_1_15 ? io_wdata_1_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_317 = write_wen_2_15 ? io_wdata_2_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_318 = write_wen_3_15 ? io_wdata_3_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_319 = write_wen_4_15 ? io_wdata_4_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_320 = write_wen_5_15 ? io_wdata_5_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_321 = write_wen_6_15 ? io_wdata_6_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_322 = write_wen_7_15 ? io_wdata_7_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_323 = _data_15_T_315 | _data_15_T_316; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_324 = _data_15_T_323 | _data_15_T_317; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_325 = _data_15_T_324 | _data_15_T_318; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_326 = _data_15_T_325 | _data_15_T_319; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_327 = _data_15_T_326 | _data_15_T_320; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_328 = _data_15_T_327 | _data_15_T_321; // @[Mux.scala 27:73]
  wire [1:0] _data_15_T_329 = _data_15_T_328 | _data_15_T_322; // @[Mux.scala 27:73]
  wire  _data_15_T_344 = write_wen_0_15 & io_wdata_0_pd_isRVC | write_wen_1_15 & io_wdata_1_pd_isRVC | write_wen_2_15 &
    io_wdata_2_pd_isRVC | write_wen_3_15 & io_wdata_3_pd_isRVC | write_wen_4_15 & io_wdata_4_pd_isRVC | write_wen_5_15
     & io_wdata_5_pd_isRVC | write_wen_6_15 & io_wdata_6_pd_isRVC | write_wen_7_15 & io_wdata_7_pd_isRVC; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_360 = write_wen_0_15 ? io_wdata_0_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_361 = write_wen_1_15 ? io_wdata_1_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_362 = write_wen_2_15 ? io_wdata_2_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_363 = write_wen_3_15 ? io_wdata_3_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_364 = write_wen_4_15 ? io_wdata_4_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_365 = write_wen_5_15 ? io_wdata_5_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_366 = write_wen_6_15 ? io_wdata_6_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_367 = write_wen_7_15 ? io_wdata_7_foldpc : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_368 = _data_15_T_360 | _data_15_T_361; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_369 = _data_15_T_368 | _data_15_T_362; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_370 = _data_15_T_369 | _data_15_T_363; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_371 = _data_15_T_370 | _data_15_T_364; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_372 = _data_15_T_371 | _data_15_T_365; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_373 = _data_15_T_372 | _data_15_T_366; // @[Mux.scala 27:73]
  wire [9:0] _data_15_T_374 = _data_15_T_373 | _data_15_T_367; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_390 = write_wen_0_15 ? io_wdata_0_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_391 = write_wen_1_15 ? io_wdata_1_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_392 = write_wen_2_15 ? io_wdata_2_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_393 = write_wen_3_15 ? io_wdata_3_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_394 = write_wen_4_15 ? io_wdata_4_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_395 = write_wen_5_15 ? io_wdata_5_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_396 = write_wen_6_15 ? io_wdata_6_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_397 = write_wen_7_15 ? io_wdata_7_inst : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_398 = _data_15_T_390 | _data_15_T_391; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_399 = _data_15_T_398 | _data_15_T_392; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_400 = _data_15_T_399 | _data_15_T_393; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_401 = _data_15_T_400 | _data_15_T_394; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_402 = _data_15_T_401 | _data_15_T_395; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_403 = _data_15_T_402 | _data_15_T_396; // @[Mux.scala 27:73]
  wire [31:0] _data_15_T_404 = _data_15_T_403 | _data_15_T_397; // @[Mux.scala 27:73]
  assign io_rdata_0_pd_isRVC = |_T ? _io_rdata_0_T_344 : _io_rdata_0_T_1133; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_pd_brType = |_T ? _io_rdata_0_T_329 : _io_rdata_0_T_1102; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_pd_isCall = |_T ? _io_rdata_0_T_314 : _io_rdata_0_T_1071; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_pd_isRet = |_T ? _io_rdata_0_T_299 : _io_rdata_0_T_1040; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_pred_taken = |_T ? _io_rdata_0_T_284 : _io_rdata_0_T_1009; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ftqPtr_flag = |_T ? _io_rdata_0_T_269 : _io_rdata_0_T_978; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ftqPtr_value = |_T ? _io_rdata_0_T_254 : _io_rdata_0_T_947; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_ftqOffset = |_T ? _io_rdata_0_T_239 : _io_rdata_0_T_916; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_crossPageIPFFix = |_T ? _io_rdata_0_T_194 : _io_rdata_0_T_823; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_frontendHit_0 = |_T ? _io_rdata_0_T_134 : _io_rdata_0_T_699; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_frontendHit_1 = |_T ? _io_rdata_0_T_149 : _io_rdata_0_T_730; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_frontendHit_2 = |_T ? _io_rdata_0_T_164 : _io_rdata_0_T_761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_frontendHit_3 = |_T ? _io_rdata_0_T_179 : _io_rdata_0_T_792; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_backendEn_0 = |_T ? _io_rdata_0_T_104 : _io_rdata_0_T_637; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_triggered_backendEn_1 = |_T ? _io_rdata_0_T_119 : _io_rdata_0_T_668; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_pd_isRVC = |_T_2 ? _io_rdata_1_T_344 : _io_rdata_1_T_1133; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_pd_brType = |_T_2 ? _io_rdata_1_T_329 : _io_rdata_1_T_1102; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_pd_isCall = |_T_2 ? _io_rdata_1_T_314 : _io_rdata_1_T_1071; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_pd_isRet = |_T_2 ? _io_rdata_1_T_299 : _io_rdata_1_T_1040; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_pred_taken = |_T_2 ? _io_rdata_1_T_284 : _io_rdata_1_T_1009; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_ftqPtr_flag = |_T_2 ? _io_rdata_1_T_269 : _io_rdata_1_T_978; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_ftqPtr_value = |_T_2 ? _io_rdata_1_T_254 : _io_rdata_1_T_947; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_ftqOffset = |_T_2 ? _io_rdata_1_T_239 : _io_rdata_1_T_916; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_crossPageIPFFix = |_T_2 ? _io_rdata_1_T_194 : _io_rdata_1_T_823; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_frontendHit_0 = |_T_2 ? _io_rdata_1_T_134 : _io_rdata_1_T_699; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_frontendHit_1 = |_T_2 ? _io_rdata_1_T_149 : _io_rdata_1_T_730; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_frontendHit_2 = |_T_2 ? _io_rdata_1_T_164 : _io_rdata_1_T_761; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_frontendHit_3 = |_T_2 ? _io_rdata_1_T_179 : _io_rdata_1_T_792; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_backendEn_0 = |_T_2 ? _io_rdata_1_T_104 : _io_rdata_1_T_637; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_triggered_backendEn_1 = |_T_2 ? _io_rdata_1_T_119 : _io_rdata_1_T_668; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_inst = |_T_4 ? _io_rdata_2_T_404 : _io_rdata_2_T_1257; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_foldpc = |_T_4 ? _io_rdata_2_T_374 : _io_rdata_2_T_1195; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_ipf = |_T_4 ? _io_rdata_2_T_224 : _io_rdata_2_T_885; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_acf = |_T_4 ? _io_rdata_2_T_209 : _io_rdata_2_T_854; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_inst = |_T_6 ? _io_rdata_3_T_404 : _io_rdata_3_T_1257; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_foldpc = |_T_6 ? _io_rdata_3_T_374 : _io_rdata_3_T_1195; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_ipf = |_T_6 ? _io_rdata_3_T_224 : _io_rdata_3_T_885; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_acf = |_T_6 ? _io_rdata_3_T_209 : _io_rdata_3_T_854; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_inst <= _data_0_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_foldpc <= _data_0_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pd_isRVC <= _data_0_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pd_brType <= _data_0_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pd_isCall <= _data_0_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pd_isRet <= _data_0_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pred_taken <= _data_0_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ftqPtr_flag <= _data_0_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ftqPtr_value <= _data_0_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ftqOffset <= _data_0_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_ipf <= _data_0_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_acf <= _data_0_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_crossPageIPFFix <= _data_0_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_frontendHit_0 <= _data_0_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_frontendHit_1 <= _data_0_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_frontendHit_2 <= _data_0_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_frontendHit_3 <= _data_0_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_backendEn_0 <= _data_0_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_0_triggered_backendEn_1 <= _data_0_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_inst <= _data_1_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_foldpc <= _data_1_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pd_isRVC <= _data_1_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pd_brType <= _data_1_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pd_isCall <= _data_1_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pd_isRet <= _data_1_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pred_taken <= _data_1_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ftqPtr_flag <= _data_1_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ftqPtr_value <= _data_1_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ftqOffset <= _data_1_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_ipf <= _data_1_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_acf <= _data_1_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_crossPageIPFFix <= _data_1_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_frontendHit_0 <= _data_1_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_frontendHit_1 <= _data_1_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_frontendHit_2 <= _data_1_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_frontendHit_3 <= _data_1_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_backendEn_0 <= _data_1_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_1_triggered_backendEn_1 <= _data_1_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_inst <= _data_2_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_foldpc <= _data_2_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pd_isRVC <= _data_2_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pd_brType <= _data_2_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pd_isCall <= _data_2_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pd_isRet <= _data_2_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pred_taken <= _data_2_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ftqPtr_flag <= _data_2_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ftqPtr_value <= _data_2_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ftqOffset <= _data_2_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_ipf <= _data_2_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_acf <= _data_2_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_crossPageIPFFix <= _data_2_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_frontendHit_0 <= _data_2_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_frontendHit_1 <= _data_2_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_frontendHit_2 <= _data_2_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_frontendHit_3 <= _data_2_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_backendEn_0 <= _data_2_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_2_triggered_backendEn_1 <= _data_2_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_inst <= _data_3_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_foldpc <= _data_3_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pd_isRVC <= _data_3_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pd_brType <= _data_3_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pd_isCall <= _data_3_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pd_isRet <= _data_3_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pred_taken <= _data_3_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ftqPtr_flag <= _data_3_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ftqPtr_value <= _data_3_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ftqOffset <= _data_3_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_ipf <= _data_3_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_acf <= _data_3_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_crossPageIPFFix <= _data_3_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_frontendHit_0 <= _data_3_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_frontendHit_1 <= _data_3_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_frontendHit_2 <= _data_3_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_frontendHit_3 <= _data_3_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_backendEn_0 <= _data_3_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_3_triggered_backendEn_1 <= _data_3_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_inst <= _data_4_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_foldpc <= _data_4_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pd_isRVC <= _data_4_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pd_brType <= _data_4_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pd_isCall <= _data_4_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pd_isRet <= _data_4_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pred_taken <= _data_4_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ftqPtr_flag <= _data_4_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ftqPtr_value <= _data_4_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ftqOffset <= _data_4_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_ipf <= _data_4_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_acf <= _data_4_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_crossPageIPFFix <= _data_4_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_frontendHit_0 <= _data_4_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_frontendHit_1 <= _data_4_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_frontendHit_2 <= _data_4_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_frontendHit_3 <= _data_4_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_backendEn_0 <= _data_4_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_4_triggered_backendEn_1 <= _data_4_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_inst <= _data_5_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_foldpc <= _data_5_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pd_isRVC <= _data_5_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pd_brType <= _data_5_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pd_isCall <= _data_5_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pd_isRet <= _data_5_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pred_taken <= _data_5_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ftqPtr_flag <= _data_5_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ftqPtr_value <= _data_5_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ftqOffset <= _data_5_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_ipf <= _data_5_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_acf <= _data_5_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_crossPageIPFFix <= _data_5_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_frontendHit_0 <= _data_5_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_frontendHit_1 <= _data_5_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_frontendHit_2 <= _data_5_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_frontendHit_3 <= _data_5_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_backendEn_0 <= _data_5_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_5_triggered_backendEn_1 <= _data_5_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_inst <= _data_6_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_foldpc <= _data_6_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pd_isRVC <= _data_6_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pd_brType <= _data_6_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pd_isCall <= _data_6_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pd_isRet <= _data_6_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pred_taken <= _data_6_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ftqPtr_flag <= _data_6_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ftqPtr_value <= _data_6_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ftqOffset <= _data_6_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_ipf <= _data_6_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_acf <= _data_6_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_crossPageIPFFix <= _data_6_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_frontendHit_0 <= _data_6_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_frontendHit_1 <= _data_6_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_frontendHit_2 <= _data_6_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_frontendHit_3 <= _data_6_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_backendEn_0 <= _data_6_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_6_triggered_backendEn_1 <= _data_6_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_inst <= _data_7_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_foldpc <= _data_7_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pd_isRVC <= _data_7_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pd_brType <= _data_7_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pd_isCall <= _data_7_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pd_isRet <= _data_7_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pred_taken <= _data_7_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ftqPtr_flag <= _data_7_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ftqPtr_value <= _data_7_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ftqOffset <= _data_7_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_ipf <= _data_7_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_acf <= _data_7_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_crossPageIPFFix <= _data_7_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_frontendHit_0 <= _data_7_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_frontendHit_1 <= _data_7_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_frontendHit_2 <= _data_7_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_frontendHit_3 <= _data_7_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_backendEn_0 <= _data_7_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_7_triggered_backendEn_1 <= _data_7_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_inst <= _data_8_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_foldpc <= _data_8_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pd_isRVC <= _data_8_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pd_brType <= _data_8_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pd_isCall <= _data_8_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pd_isRet <= _data_8_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_pred_taken <= _data_8_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ftqPtr_flag <= _data_8_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ftqPtr_value <= _data_8_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ftqOffset <= _data_8_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_ipf <= _data_8_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_acf <= _data_8_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_crossPageIPFFix <= _data_8_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_frontendHit_0 <= _data_8_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_frontendHit_1 <= _data_8_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_frontendHit_2 <= _data_8_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_frontendHit_3 <= _data_8_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_backendEn_0 <= _data_8_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_8_triggered_backendEn_1 <= _data_8_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_inst <= _data_9_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_foldpc <= _data_9_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pd_isRVC <= _data_9_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pd_brType <= _data_9_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pd_isCall <= _data_9_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pd_isRet <= _data_9_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_pred_taken <= _data_9_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ftqPtr_flag <= _data_9_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ftqPtr_value <= _data_9_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ftqOffset <= _data_9_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_ipf <= _data_9_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_acf <= _data_9_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_crossPageIPFFix <= _data_9_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_frontendHit_0 <= _data_9_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_frontendHit_1 <= _data_9_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_frontendHit_2 <= _data_9_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_frontendHit_3 <= _data_9_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_backendEn_0 <= _data_9_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_9_triggered_backendEn_1 <= _data_9_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_inst <= _data_10_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_foldpc <= _data_10_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pd_isRVC <= _data_10_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pd_brType <= _data_10_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pd_isCall <= _data_10_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pd_isRet <= _data_10_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_pred_taken <= _data_10_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ftqPtr_flag <= _data_10_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ftqPtr_value <= _data_10_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ftqOffset <= _data_10_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_ipf <= _data_10_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_acf <= _data_10_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_crossPageIPFFix <= _data_10_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_frontendHit_0 <= _data_10_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_frontendHit_1 <= _data_10_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_frontendHit_2 <= _data_10_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_frontendHit_3 <= _data_10_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_backendEn_0 <= _data_10_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_10_triggered_backendEn_1 <= _data_10_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_inst <= _data_11_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_foldpc <= _data_11_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pd_isRVC <= _data_11_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pd_brType <= _data_11_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pd_isCall <= _data_11_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pd_isRet <= _data_11_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_pred_taken <= _data_11_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ftqPtr_flag <= _data_11_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ftqPtr_value <= _data_11_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ftqOffset <= _data_11_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_ipf <= _data_11_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_acf <= _data_11_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_crossPageIPFFix <= _data_11_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_frontendHit_0 <= _data_11_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_frontendHit_1 <= _data_11_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_frontendHit_2 <= _data_11_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_frontendHit_3 <= _data_11_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_backendEn_0 <= _data_11_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_11_triggered_backendEn_1 <= _data_11_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_inst <= _data_12_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_foldpc <= _data_12_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_pd_isRVC <= _data_12_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_pd_brType <= _data_12_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_pd_isCall <= _data_12_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_pd_isRet <= _data_12_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_pred_taken <= _data_12_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_ftqPtr_flag <= _data_12_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_ftqPtr_value <= _data_12_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_ftqOffset <= _data_12_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_ipf <= _data_12_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_acf <= _data_12_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_crossPageIPFFix <= _data_12_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_frontendHit_0 <= _data_12_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_frontendHit_1 <= _data_12_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_frontendHit_2 <= _data_12_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_frontendHit_3 <= _data_12_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_backendEn_0 <= _data_12_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_12_triggered_backendEn_1 <= _data_12_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_inst <= _data_13_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_foldpc <= _data_13_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_pd_isRVC <= _data_13_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_pd_brType <= _data_13_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_pd_isCall <= _data_13_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_pd_isRet <= _data_13_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_pred_taken <= _data_13_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_ftqPtr_flag <= _data_13_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_ftqPtr_value <= _data_13_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_ftqOffset <= _data_13_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_ipf <= _data_13_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_acf <= _data_13_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_crossPageIPFFix <= _data_13_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_frontendHit_0 <= _data_13_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_frontendHit_1 <= _data_13_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_frontendHit_2 <= _data_13_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_frontendHit_3 <= _data_13_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_backendEn_0 <= _data_13_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_13_triggered_backendEn_1 <= _data_13_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_inst <= _data_14_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_foldpc <= _data_14_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_pd_isRVC <= _data_14_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_pd_brType <= _data_14_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_pd_isCall <= _data_14_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_pd_isRet <= _data_14_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_pred_taken <= _data_14_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_ftqPtr_flag <= _data_14_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_ftqPtr_value <= _data_14_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_ftqOffset <= _data_14_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_ipf <= _data_14_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_acf <= _data_14_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_crossPageIPFFix <= _data_14_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_frontendHit_0 <= _data_14_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_frontendHit_1 <= _data_14_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_frontendHit_2 <= _data_14_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_frontendHit_3 <= _data_14_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_backendEn_0 <= _data_14_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_36) begin // @[DataModuleTemplate.scala 189:42]
      data_14_triggered_backendEn_1 <= _data_14_T_119; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_inst <= _data_15_T_404; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_foldpc <= _data_15_T_374; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_pd_isRVC <= _data_15_T_344; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_pd_brType <= _data_15_T_329; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_pd_isCall <= _data_15_T_314; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_pd_isRet <= _data_15_T_299; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_pred_taken <= _data_15_T_284; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_ftqPtr_flag <= _data_15_T_269; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_ftqPtr_value <= _data_15_T_254; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_ftqOffset <= _data_15_T_239; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_ipf <= _data_15_T_224; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_acf <= _data_15_T_209; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_crossPageIPFFix <= _data_15_T_194; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_frontendHit_0 <= _data_15_T_134; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_frontendHit_1 <= _data_15_T_149; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_frontendHit_2 <= _data_15_T_164; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_frontendHit_3 <= _data_15_T_179; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_backendEn_0 <= _data_15_T_104; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_38) begin // @[DataModuleTemplate.scala 189:42]
      data_15_triggered_backendEn_1 <= _data_15_T_119; // @[DataModuleTemplate.scala 190:15]
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
  data_0_inst = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  data_0_foldpc = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_pd_isRVC = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_pd_brType = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_pd_isCall = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_pd_isRet = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_pred_taken = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_ftqPtr_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_ftqPtr_value = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_ftqOffset = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  data_0_ipf = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_0_acf = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  data_0_crossPageIPFFix = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  data_0_triggered_frontendHit_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  data_0_triggered_frontendHit_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_0_triggered_frontendHit_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  data_0_triggered_frontendHit_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_0_triggered_backendEn_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  data_0_triggered_backendEn_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_inst = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  data_1_foldpc = _RAND_20[9:0];
  _RAND_21 = {1{`RANDOM}};
  data_1_pd_isRVC = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  data_1_pd_brType = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  data_1_pd_isCall = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_1_pd_isRet = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_1_pred_taken = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  data_1_ftqPtr_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_1_ftqPtr_value = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  data_1_ftqOffset = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  data_1_ipf = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  data_1_acf = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  data_1_crossPageIPFFix = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  data_1_triggered_frontendHit_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  data_1_triggered_frontendHit_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  data_1_triggered_frontendHit_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_1_triggered_frontendHit_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  data_1_triggered_backendEn_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_1_triggered_backendEn_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  data_2_inst = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  data_2_foldpc = _RAND_39[9:0];
  _RAND_40 = {1{`RANDOM}};
  data_2_pd_isRVC = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  data_2_pd_brType = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  data_2_pd_isCall = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_2_pd_isRet = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  data_2_pred_taken = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  data_2_ftqPtr_flag = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  data_2_ftqPtr_value = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  data_2_ftqOffset = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  data_2_ipf = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  data_2_acf = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  data_2_crossPageIPFFix = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  data_2_triggered_frontendHit_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  data_2_triggered_frontendHit_1 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  data_2_triggered_frontendHit_2 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  data_2_triggered_frontendHit_3 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  data_2_triggered_backendEn_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  data_2_triggered_backendEn_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  data_3_inst = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  data_3_foldpc = _RAND_58[9:0];
  _RAND_59 = {1{`RANDOM}};
  data_3_pd_isRVC = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  data_3_pd_brType = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  data_3_pd_isCall = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  data_3_pd_isRet = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  data_3_pred_taken = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  data_3_ftqPtr_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  data_3_ftqPtr_value = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  data_3_ftqOffset = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  data_3_ipf = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  data_3_acf = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  data_3_crossPageIPFFix = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  data_3_triggered_frontendHit_0 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  data_3_triggered_frontendHit_1 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  data_3_triggered_frontendHit_2 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  data_3_triggered_frontendHit_3 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  data_3_triggered_backendEn_0 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  data_3_triggered_backendEn_1 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  data_4_inst = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  data_4_foldpc = _RAND_77[9:0];
  _RAND_78 = {1{`RANDOM}};
  data_4_pd_isRVC = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  data_4_pd_brType = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  data_4_pd_isCall = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  data_4_pd_isRet = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  data_4_pred_taken = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  data_4_ftqPtr_flag = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  data_4_ftqPtr_value = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  data_4_ftqOffset = _RAND_85[2:0];
  _RAND_86 = {1{`RANDOM}};
  data_4_ipf = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  data_4_acf = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  data_4_crossPageIPFFix = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  data_4_triggered_frontendHit_0 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  data_4_triggered_frontendHit_1 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  data_4_triggered_frontendHit_2 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  data_4_triggered_frontendHit_3 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  data_4_triggered_backendEn_0 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  data_4_triggered_backendEn_1 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  data_5_inst = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  data_5_foldpc = _RAND_96[9:0];
  _RAND_97 = {1{`RANDOM}};
  data_5_pd_isRVC = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  data_5_pd_brType = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  data_5_pd_isCall = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  data_5_pd_isRet = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  data_5_pred_taken = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  data_5_ftqPtr_flag = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  data_5_ftqPtr_value = _RAND_103[2:0];
  _RAND_104 = {1{`RANDOM}};
  data_5_ftqOffset = _RAND_104[2:0];
  _RAND_105 = {1{`RANDOM}};
  data_5_ipf = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  data_5_acf = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  data_5_crossPageIPFFix = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  data_5_triggered_frontendHit_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  data_5_triggered_frontendHit_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  data_5_triggered_frontendHit_2 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  data_5_triggered_frontendHit_3 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  data_5_triggered_backendEn_0 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  data_5_triggered_backendEn_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  data_6_inst = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  data_6_foldpc = _RAND_115[9:0];
  _RAND_116 = {1{`RANDOM}};
  data_6_pd_isRVC = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  data_6_pd_brType = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  data_6_pd_isCall = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  data_6_pd_isRet = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  data_6_pred_taken = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  data_6_ftqPtr_flag = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  data_6_ftqPtr_value = _RAND_122[2:0];
  _RAND_123 = {1{`RANDOM}};
  data_6_ftqOffset = _RAND_123[2:0];
  _RAND_124 = {1{`RANDOM}};
  data_6_ipf = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  data_6_acf = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  data_6_crossPageIPFFix = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  data_6_triggered_frontendHit_0 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  data_6_triggered_frontendHit_1 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  data_6_triggered_frontendHit_2 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  data_6_triggered_frontendHit_3 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  data_6_triggered_backendEn_0 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  data_6_triggered_backendEn_1 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  data_7_inst = _RAND_133[31:0];
  _RAND_134 = {1{`RANDOM}};
  data_7_foldpc = _RAND_134[9:0];
  _RAND_135 = {1{`RANDOM}};
  data_7_pd_isRVC = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  data_7_pd_brType = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  data_7_pd_isCall = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  data_7_pd_isRet = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  data_7_pred_taken = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  data_7_ftqPtr_flag = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  data_7_ftqPtr_value = _RAND_141[2:0];
  _RAND_142 = {1{`RANDOM}};
  data_7_ftqOffset = _RAND_142[2:0];
  _RAND_143 = {1{`RANDOM}};
  data_7_ipf = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  data_7_acf = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  data_7_crossPageIPFFix = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  data_7_triggered_frontendHit_0 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  data_7_triggered_frontendHit_1 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  data_7_triggered_frontendHit_2 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  data_7_triggered_frontendHit_3 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  data_7_triggered_backendEn_0 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  data_7_triggered_backendEn_1 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  data_8_inst = _RAND_152[31:0];
  _RAND_153 = {1{`RANDOM}};
  data_8_foldpc = _RAND_153[9:0];
  _RAND_154 = {1{`RANDOM}};
  data_8_pd_isRVC = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  data_8_pd_brType = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  data_8_pd_isCall = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  data_8_pd_isRet = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  data_8_pred_taken = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  data_8_ftqPtr_flag = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  data_8_ftqPtr_value = _RAND_160[2:0];
  _RAND_161 = {1{`RANDOM}};
  data_8_ftqOffset = _RAND_161[2:0];
  _RAND_162 = {1{`RANDOM}};
  data_8_ipf = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  data_8_acf = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  data_8_crossPageIPFFix = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  data_8_triggered_frontendHit_0 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  data_8_triggered_frontendHit_1 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  data_8_triggered_frontendHit_2 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  data_8_triggered_frontendHit_3 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  data_8_triggered_backendEn_0 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  data_8_triggered_backendEn_1 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  data_9_inst = _RAND_171[31:0];
  _RAND_172 = {1{`RANDOM}};
  data_9_foldpc = _RAND_172[9:0];
  _RAND_173 = {1{`RANDOM}};
  data_9_pd_isRVC = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  data_9_pd_brType = _RAND_174[1:0];
  _RAND_175 = {1{`RANDOM}};
  data_9_pd_isCall = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  data_9_pd_isRet = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  data_9_pred_taken = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  data_9_ftqPtr_flag = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  data_9_ftqPtr_value = _RAND_179[2:0];
  _RAND_180 = {1{`RANDOM}};
  data_9_ftqOffset = _RAND_180[2:0];
  _RAND_181 = {1{`RANDOM}};
  data_9_ipf = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  data_9_acf = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  data_9_crossPageIPFFix = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  data_9_triggered_frontendHit_0 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  data_9_triggered_frontendHit_1 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  data_9_triggered_frontendHit_2 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  data_9_triggered_frontendHit_3 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  data_9_triggered_backendEn_0 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  data_9_triggered_backendEn_1 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  data_10_inst = _RAND_190[31:0];
  _RAND_191 = {1{`RANDOM}};
  data_10_foldpc = _RAND_191[9:0];
  _RAND_192 = {1{`RANDOM}};
  data_10_pd_isRVC = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  data_10_pd_brType = _RAND_193[1:0];
  _RAND_194 = {1{`RANDOM}};
  data_10_pd_isCall = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  data_10_pd_isRet = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  data_10_pred_taken = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  data_10_ftqPtr_flag = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  data_10_ftqPtr_value = _RAND_198[2:0];
  _RAND_199 = {1{`RANDOM}};
  data_10_ftqOffset = _RAND_199[2:0];
  _RAND_200 = {1{`RANDOM}};
  data_10_ipf = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  data_10_acf = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  data_10_crossPageIPFFix = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  data_10_triggered_frontendHit_0 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  data_10_triggered_frontendHit_1 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  data_10_triggered_frontendHit_2 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  data_10_triggered_frontendHit_3 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  data_10_triggered_backendEn_0 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  data_10_triggered_backendEn_1 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  data_11_inst = _RAND_209[31:0];
  _RAND_210 = {1{`RANDOM}};
  data_11_foldpc = _RAND_210[9:0];
  _RAND_211 = {1{`RANDOM}};
  data_11_pd_isRVC = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  data_11_pd_brType = _RAND_212[1:0];
  _RAND_213 = {1{`RANDOM}};
  data_11_pd_isCall = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  data_11_pd_isRet = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  data_11_pred_taken = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  data_11_ftqPtr_flag = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  data_11_ftqPtr_value = _RAND_217[2:0];
  _RAND_218 = {1{`RANDOM}};
  data_11_ftqOffset = _RAND_218[2:0];
  _RAND_219 = {1{`RANDOM}};
  data_11_ipf = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  data_11_acf = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  data_11_crossPageIPFFix = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  data_11_triggered_frontendHit_0 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  data_11_triggered_frontendHit_1 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  data_11_triggered_frontendHit_2 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  data_11_triggered_frontendHit_3 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  data_11_triggered_backendEn_0 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  data_11_triggered_backendEn_1 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  data_12_inst = _RAND_228[31:0];
  _RAND_229 = {1{`RANDOM}};
  data_12_foldpc = _RAND_229[9:0];
  _RAND_230 = {1{`RANDOM}};
  data_12_pd_isRVC = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  data_12_pd_brType = _RAND_231[1:0];
  _RAND_232 = {1{`RANDOM}};
  data_12_pd_isCall = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  data_12_pd_isRet = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  data_12_pred_taken = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  data_12_ftqPtr_flag = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  data_12_ftqPtr_value = _RAND_236[2:0];
  _RAND_237 = {1{`RANDOM}};
  data_12_ftqOffset = _RAND_237[2:0];
  _RAND_238 = {1{`RANDOM}};
  data_12_ipf = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  data_12_acf = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  data_12_crossPageIPFFix = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  data_12_triggered_frontendHit_0 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  data_12_triggered_frontendHit_1 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  data_12_triggered_frontendHit_2 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  data_12_triggered_frontendHit_3 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  data_12_triggered_backendEn_0 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  data_12_triggered_backendEn_1 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  data_13_inst = _RAND_247[31:0];
  _RAND_248 = {1{`RANDOM}};
  data_13_foldpc = _RAND_248[9:0];
  _RAND_249 = {1{`RANDOM}};
  data_13_pd_isRVC = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  data_13_pd_brType = _RAND_250[1:0];
  _RAND_251 = {1{`RANDOM}};
  data_13_pd_isCall = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  data_13_pd_isRet = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  data_13_pred_taken = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  data_13_ftqPtr_flag = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  data_13_ftqPtr_value = _RAND_255[2:0];
  _RAND_256 = {1{`RANDOM}};
  data_13_ftqOffset = _RAND_256[2:0];
  _RAND_257 = {1{`RANDOM}};
  data_13_ipf = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  data_13_acf = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  data_13_crossPageIPFFix = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  data_13_triggered_frontendHit_0 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  data_13_triggered_frontendHit_1 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  data_13_triggered_frontendHit_2 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  data_13_triggered_frontendHit_3 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  data_13_triggered_backendEn_0 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  data_13_triggered_backendEn_1 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  data_14_inst = _RAND_266[31:0];
  _RAND_267 = {1{`RANDOM}};
  data_14_foldpc = _RAND_267[9:0];
  _RAND_268 = {1{`RANDOM}};
  data_14_pd_isRVC = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  data_14_pd_brType = _RAND_269[1:0];
  _RAND_270 = {1{`RANDOM}};
  data_14_pd_isCall = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  data_14_pd_isRet = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  data_14_pred_taken = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  data_14_ftqPtr_flag = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  data_14_ftqPtr_value = _RAND_274[2:0];
  _RAND_275 = {1{`RANDOM}};
  data_14_ftqOffset = _RAND_275[2:0];
  _RAND_276 = {1{`RANDOM}};
  data_14_ipf = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  data_14_acf = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  data_14_crossPageIPFFix = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  data_14_triggered_frontendHit_0 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  data_14_triggered_frontendHit_1 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  data_14_triggered_frontendHit_2 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  data_14_triggered_frontendHit_3 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  data_14_triggered_backendEn_0 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  data_14_triggered_backendEn_1 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  data_15_inst = _RAND_285[31:0];
  _RAND_286 = {1{`RANDOM}};
  data_15_foldpc = _RAND_286[9:0];
  _RAND_287 = {1{`RANDOM}};
  data_15_pd_isRVC = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  data_15_pd_brType = _RAND_288[1:0];
  _RAND_289 = {1{`RANDOM}};
  data_15_pd_isCall = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  data_15_pd_isRet = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  data_15_pred_taken = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  data_15_ftqPtr_flag = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  data_15_ftqPtr_value = _RAND_293[2:0];
  _RAND_294 = {1{`RANDOM}};
  data_15_ftqOffset = _RAND_294[2:0];
  _RAND_295 = {1{`RANDOM}};
  data_15_ipf = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  data_15_acf = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  data_15_crossPageIPFFix = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  data_15_triggered_frontendHit_0 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  data_15_triggered_frontendHit_1 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  data_15_triggered_frontendHit_2 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  data_15_triggered_frontendHit_3 = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  data_15_triggered_backendEn_0 = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  data_15_triggered_backendEn_1 = _RAND_303[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

