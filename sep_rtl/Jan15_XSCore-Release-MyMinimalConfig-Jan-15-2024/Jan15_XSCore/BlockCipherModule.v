module BlockCipherModule(
  input         clock,
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
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
  reg [63:0] _RAND_382;
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
`endif // RANDOMIZE_REG_INIT
  reg [6:0] funcReg; // @[Reg.scala 16:16]
  wire [7:0] src1Bytes_0 = io_src_0[7:0]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_1 = io_src_0[15:8]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_2 = io_src_0[23:16]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_3 = io_src_0[31:24]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_4 = io_src_0[39:32]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_5 = io_src_0[47:40]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_6 = io_src_0[55:48]; // @[Bku.scala 201:52]
  wire [7:0] src1Bytes_7 = io_src_0[63:56]; // @[Bku.scala 201:52]
  wire [7:0] src2Bytes_0 = io_src_1[7:0]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_1 = io_src_1[15:8]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_2 = io_src_1[23:16]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_3 = io_src_1[31:24]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_4 = io_src_1[39:32]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_5 = io_src_1[47:40]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_6 = io_src_1[55:48]; // @[Bku.scala 202:52]
  wire [7:0] src2Bytes_7 = io_src_1[63:56]; // @[Bku.scala 202:52]
  reg  aesSboxMid_0_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_0_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_1_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_2_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_3_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_4_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_5_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_6_17; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_0; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_1; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_2; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_3; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_4; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_5; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_6; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_7; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_8; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_9; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_10; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_11; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_12; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_13; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_14; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_15; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_16; // @[Bku.scala 206:24]
  reg  aesSboxMid_7_17; // @[Bku.scala 206:24]
  reg  iaesSboxMid_0_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_0_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_1_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_2_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_3_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_4_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_5_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_6_17; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_0; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_1; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_2; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_3; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_4; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_5; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_6; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_7; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_8; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_9; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_10; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_11; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_12; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_13; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_14; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_15; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_16; // @[Bku.scala 210:25]
  reg  iaesSboxMid_7_17; // @[Bku.scala 210:25]
  wire  t__0 = src1Bytes_0[3] ^ src1Bytes_0[1]; // @[CryptoUtils.scala 83:20]
  wire  t__1 = src1Bytes_0[6] ^ src1Bytes_0[5]; // @[CryptoUtils.scala 84:20]
  wire  t__2 = src1Bytes_0[6] ^ src1Bytes_0[2]; // @[CryptoUtils.scala 85:20]
  wire  t__3 = src1Bytes_0[5] ^ src1Bytes_0[2]; // @[CryptoUtils.scala 86:20]
  wire  t__4 = src1Bytes_0[4] ^ src1Bytes_0[0]; // @[CryptoUtils.scala 87:20]
  wire  t__5 = src1Bytes_0[1] ^ src1Bytes_0[0]; // @[CryptoUtils.scala 88:20]
  wire  o__1 = src1Bytes_0[7] ^ src1Bytes_0[4]; // @[CryptoUtils.scala 90:20]
  wire  o__2 = src1Bytes_0[7] ^ src1Bytes_0[2]; // @[CryptoUtils.scala 91:20]
  wire  o__3 = src1Bytes_0[7] ^ src1Bytes_0[1]; // @[CryptoUtils.scala 92:20]
  wire  o__4 = src1Bytes_0[4] ^ src1Bytes_0[2]; // @[CryptoUtils.scala 93:20]
  wire  o__5 = o__1 ^ t__0; // @[CryptoUtils.scala 94:20]
  wire  o__6 = src1Bytes_0[0] ^ o__5; // @[CryptoUtils.scala 95:20]
  wire  o__7 = src1Bytes_0[0] ^ t__1; // @[CryptoUtils.scala 96:20]
  wire  o__8 = o__5 ^ t__1; // @[CryptoUtils.scala 97:20]
  wire  o__9 = o__3 ^ o__4; // @[CryptoUtils.scala 98:20]
  wire  o__10 = o__5 ^ t__2; // @[CryptoUtils.scala 99:20]
  wire  o__11 = t__0 ^ t__2; // @[CryptoUtils.scala 100:20]
  wire  o__12 = t__0 ^ t__3; // @[CryptoUtils.scala 101:20]
  wire  o__13 = o__7 ^ o__12; // @[CryptoUtils.scala 102:20]
  wire  o__14 = t__1 ^ t__4; // @[CryptoUtils.scala 103:20]
  wire  o__15 = o__1 ^ o__14; // @[CryptoUtils.scala 104:20]
  wire  o__16 = t__1 ^ t__5; // @[CryptoUtils.scala 105:20]
  wire  o__17 = o__2 ^ o__16; // @[CryptoUtils.scala 106:20]
  wire  o__18 = o__2 ^ o__8; // @[CryptoUtils.scala 107:20]
  wire  o__19 = o__15 ^ o__13; // @[CryptoUtils.scala 108:20]
  wire  o__20 = o__1 ^ t__3; // @[CryptoUtils.scala 109:20]
  wire  t_1_0 = o__3 ^ o__12; // @[CryptoUtils.scala 191:20]
  wire  t_1_1 = o__9 & o__5; // @[CryptoUtils.scala 192:20]
  wire  t_1_2 = o__17 & o__6; // @[CryptoUtils.scala 193:20]
  wire  t_1_3 = o__10 ^ t_1_1; // @[CryptoUtils.scala 194:20]
  wire  t_1_4 = o__14 & src1Bytes_0[0]; // @[CryptoUtils.scala 195:20]
  wire  t_1_5 = t_1_4 ^ t_1_1; // @[CryptoUtils.scala 196:20]
  wire  t_1_6 = o__3 & o__12; // @[CryptoUtils.scala 197:20]
  wire  t_1_7 = o__16 & o__7; // @[CryptoUtils.scala 198:20]
  wire  t_1_8 = t_1_0 ^ t_1_6; // @[CryptoUtils.scala 199:20]
  wire  t_1_9 = o__15 & o__13; // @[CryptoUtils.scala 200:20]
  wire  t_1_10 = t_1_9 ^ t_1_6; // @[CryptoUtils.scala 201:20]
  wire  t_1_11 = o__1 & o__11; // @[CryptoUtils.scala 202:20]
  wire  t_1_12 = o__4 & o__20; // @[CryptoUtils.scala 203:20]
  wire  t_1_13 = t_1_12 ^ t_1_11; // @[CryptoUtils.scala 204:20]
  wire  t_1_14 = o__2 & o__8; // @[CryptoUtils.scala 205:20]
  wire  t_1_15 = t_1_14 ^ t_1_11; // @[CryptoUtils.scala 206:20]
  wire  t_1_16 = t_1_3 ^ t_1_2; // @[CryptoUtils.scala 207:20]
  wire  t_1_17 = t_1_5 ^ o__18; // @[CryptoUtils.scala 208:20]
  wire  t_1_18 = t_1_8 ^ t_1_7; // @[CryptoUtils.scala 209:20]
  wire  t_1_19 = t_1_10 ^ t_1_15; // @[CryptoUtils.scala 210:20]
  wire  t_1_20 = t_1_16 ^ t_1_13; // @[CryptoUtils.scala 211:20]
  wire  t_1_21 = t_1_17 ^ t_1_15; // @[CryptoUtils.scala 212:20]
  wire  t_1_22 = t_1_18 ^ t_1_13; // @[CryptoUtils.scala 213:20]
  wire  t_1_23 = t_1_19 ^ o__19; // @[CryptoUtils.scala 214:20]
  wire  t_1_24 = t_1_22 ^ t_1_23; // @[CryptoUtils.scala 215:20]
  wire  t_1_25 = t_1_22 & t_1_20; // @[CryptoUtils.scala 216:20]
  wire  t_1_26 = t_1_21 ^ t_1_25; // @[CryptoUtils.scala 217:20]
  wire  t_1_27 = t_1_20 ^ t_1_21; // @[CryptoUtils.scala 218:20]
  wire  t_1_28 = t_1_23 ^ t_1_25; // @[CryptoUtils.scala 219:20]
  wire  t_1_29 = t_1_28 & t_1_27; // @[CryptoUtils.scala 220:20]
  wire  t_1_30 = t_1_26 & t_1_24; // @[CryptoUtils.scala 221:20]
  wire  t_1_31 = t_1_20 & t_1_23; // @[CryptoUtils.scala 222:20]
  wire  t_1_32 = t_1_27 & t_1_31; // @[CryptoUtils.scala 223:20]
  wire  t_1_33 = t_1_27 ^ t_1_25; // @[CryptoUtils.scala 224:20]
  wire  t_1_34 = t_1_21 & t_1_22; // @[CryptoUtils.scala 225:20]
  wire  t_1_35 = t_1_24 & t_1_34; // @[CryptoUtils.scala 226:20]
  wire  t_1_36 = t_1_24 ^ t_1_25; // @[CryptoUtils.scala 227:20]
  wire  t_1_37 = t_1_21 ^ t_1_29; // @[CryptoUtils.scala 228:20]
  wire  t_1_38 = t_1_32 ^ t_1_33; // @[CryptoUtils.scala 229:20]
  wire  t_1_39 = t_1_23 ^ t_1_30; // @[CryptoUtils.scala 230:20]
  wire  t_1_40 = t_1_35 ^ t_1_36; // @[CryptoUtils.scala 231:20]
  wire  t_1_41 = t_1_38 ^ t_1_40; // @[CryptoUtils.scala 232:20]
  wire  t_1_42 = t_1_37 ^ t_1_39; // @[CryptoUtils.scala 233:20]
  wire  t_1_43 = t_1_37 ^ t_1_38; // @[CryptoUtils.scala 234:20]
  wire  t_1_44 = t_1_39 ^ t_1_40; // @[CryptoUtils.scala 235:20]
  wire  t_1_45 = t_1_42 ^ t_1_41; // @[CryptoUtils.scala 236:20]
  wire  o_1_0 = t_1_38 & o__7; // @[CryptoUtils.scala 237:20]
  wire  o_1_1 = t_1_37 & o__13; // @[CryptoUtils.scala 238:20]
  wire  o_1_2 = t_1_42 & o__11; // @[CryptoUtils.scala 239:20]
  wire  o_1_3 = t_1_45 & o__20; // @[CryptoUtils.scala 240:20]
  wire  o_1_4 = t_1_41 & o__8; // @[CryptoUtils.scala 241:20]
  wire  o_1_5 = t_1_44 & o__9; // @[CryptoUtils.scala 242:20]
  wire  o_1_6 = t_1_40 & o__17; // @[CryptoUtils.scala 243:20]
  wire  o_1_7 = t_1_39 & o__14; // @[CryptoUtils.scala 244:20]
  wire  o_1_8 = t_1_43 & o__3; // @[CryptoUtils.scala 245:20]
  wire  o_1_9 = t_1_38 & o__16; // @[CryptoUtils.scala 246:20]
  wire  o_1_10 = t_1_37 & o__15; // @[CryptoUtils.scala 247:20]
  wire  o_1_11 = t_1_42 & o__1; // @[CryptoUtils.scala 248:20]
  wire  o_1_12 = t_1_45 & o__4; // @[CryptoUtils.scala 249:20]
  wire  o_1_13 = t_1_41 & o__2; // @[CryptoUtils.scala 250:20]
  wire  o_1_14 = t_1_44 & o__5; // @[CryptoUtils.scala 251:20]
  wire  o_1_15 = t_1_40 & o__6; // @[CryptoUtils.scala 252:20]
  wire  o_1_16 = t_1_39 & src1Bytes_0[0]; // @[CryptoUtils.scala 253:20]
  wire  o_1_17 = t_1_43 & o__12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_0_t_0 = aesSboxMid_0_11 ^ aesSboxMid_0_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_0_t_1 = aesSboxMid_0_0 ^ aesSboxMid_0_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_0_t_2 = aesSboxMid_0_14 ^ aesSboxMid_0_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_0_t_3 = aesSboxMid_0_15 ^ aesSboxMid_0_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_0_t_4 = aesSboxMid_0_4 ^ aesSboxMid_0_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_0_t_5 = aesSboxMid_0_17 ^ aesSboxMid_0_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_0_t_6 = aesSboxMid_0_12 ^ aesSboxOut_0_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_0_t_7 = aesSboxMid_0_14 ^ aesSboxOut_0_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_0_t_8 = aesSboxMid_0_1 ^ aesSboxMid_0_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_0_t_9 = aesSboxMid_0_2 ^ aesSboxMid_0_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_0_t_10 = aesSboxMid_0_3 ^ aesSboxOut_0_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_0_t_11 = aesSboxMid_0_10 ^ aesSboxOut_0_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_0_t_12 = aesSboxMid_0_16 ^ aesSboxMid_0_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_0_t_13 = aesSboxMid_0_0 ^ aesSboxOut_0_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_0_t_14 = aesSboxMid_0_2 ^ aesSboxMid_0_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_0_t_15 = aesSboxMid_0_5 ^ aesSboxOut_0_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_0_t_16 = aesSboxMid_0_6 ^ aesSboxOut_0_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_0_t_17 = aesSboxMid_0_7 ^ aesSboxOut_0_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_0_t_18 = aesSboxMid_0_8 ^ aesSboxOut_0_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_0_t_19 = aesSboxMid_0_13 ^ aesSboxOut_0_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_0_t_20 = aesSboxOut_0_t_0 ^ aesSboxOut_0_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_0_t_21 = aesSboxOut_0_t_1 ^ aesSboxOut_0_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_0_t_22 = aesSboxOut_0_t_3 ^ aesSboxOut_0_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_0_t_23 = aesSboxOut_0_t_18 ^ aesSboxOut_0_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_0_t_24 = aesSboxOut_0_t_15 ^ aesSboxOut_0_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_0_t_25 = aesSboxOut_0_t_6 ^ aesSboxOut_0_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_0_t_26 = aesSboxOut_0_t_7 ^ aesSboxOut_0_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_0_t_27 = aesSboxOut_0_t_8 ^ aesSboxOut_0_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_0_t_28 = aesSboxOut_0_t_11 ^ aesSboxOut_0_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_0_t_29 = aesSboxOut_0_t_11 ^ aesSboxOut_0_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_0_o_0 = aesSboxOut_0_t_6 ^ ~aesSboxOut_0_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_0_o_1 = aesSboxOut_0_t_13 ^ ~aesSboxOut_0_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_0_o_2 = aesSboxOut_0_t_25 ^ aesSboxOut_0_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_0_o_3 = aesSboxOut_0_t_20 ^ aesSboxOut_0_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_0_o_4 = aesSboxOut_0_t_6 ^ aesSboxOut_0_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_0_o_5 = aesSboxOut_0_t_19 ^ ~aesSboxOut_0_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_0_o_6 = aesSboxOut_0_t_16 ^ ~aesSboxOut_0_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_0_o_7 = aesSboxOut_0_t_6 ^ aesSboxOut_0_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_0 = {aesSboxOut_0_o_7,aesSboxOut_0_o_6,aesSboxOut_0_o_5,aesSboxOut_0_o_4,aesSboxOut_0_o_3,
    aesSboxOut_0_o_2,aesSboxOut_0_o_1,aesSboxOut_0_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_2_0 = src1Bytes_5[3] ^ src1Bytes_5[1]; // @[CryptoUtils.scala 83:20]
  wire  t_2_1 = src1Bytes_5[6] ^ src1Bytes_5[5]; // @[CryptoUtils.scala 84:20]
  wire  t_2_2 = src1Bytes_5[6] ^ src1Bytes_5[2]; // @[CryptoUtils.scala 85:20]
  wire  t_2_3 = src1Bytes_5[5] ^ src1Bytes_5[2]; // @[CryptoUtils.scala 86:20]
  wire  t_2_4 = src1Bytes_5[4] ^ src1Bytes_5[0]; // @[CryptoUtils.scala 87:20]
  wire  t_2_5 = src1Bytes_5[1] ^ src1Bytes_5[0]; // @[CryptoUtils.scala 88:20]
  wire  o_2_1 = src1Bytes_5[7] ^ src1Bytes_5[4]; // @[CryptoUtils.scala 90:20]
  wire  o_2_2 = src1Bytes_5[7] ^ src1Bytes_5[2]; // @[CryptoUtils.scala 91:20]
  wire  o_2_3 = src1Bytes_5[7] ^ src1Bytes_5[1]; // @[CryptoUtils.scala 92:20]
  wire  o_2_4 = src1Bytes_5[4] ^ src1Bytes_5[2]; // @[CryptoUtils.scala 93:20]
  wire  o_2_5 = o_2_1 ^ t_2_0; // @[CryptoUtils.scala 94:20]
  wire  o_2_6 = src1Bytes_5[0] ^ o_2_5; // @[CryptoUtils.scala 95:20]
  wire  o_2_7 = src1Bytes_5[0] ^ t_2_1; // @[CryptoUtils.scala 96:20]
  wire  o_2_8 = o_2_5 ^ t_2_1; // @[CryptoUtils.scala 97:20]
  wire  o_2_9 = o_2_3 ^ o_2_4; // @[CryptoUtils.scala 98:20]
  wire  o_2_10 = o_2_5 ^ t_2_2; // @[CryptoUtils.scala 99:20]
  wire  o_2_11 = t_2_0 ^ t_2_2; // @[CryptoUtils.scala 100:20]
  wire  o_2_12 = t_2_0 ^ t_2_3; // @[CryptoUtils.scala 101:20]
  wire  o_2_13 = o_2_7 ^ o_2_12; // @[CryptoUtils.scala 102:20]
  wire  o_2_14 = t_2_1 ^ t_2_4; // @[CryptoUtils.scala 103:20]
  wire  o_2_15 = o_2_1 ^ o_2_14; // @[CryptoUtils.scala 104:20]
  wire  o_2_16 = t_2_1 ^ t_2_5; // @[CryptoUtils.scala 105:20]
  wire  o_2_17 = o_2_2 ^ o_2_16; // @[CryptoUtils.scala 106:20]
  wire  o_2_18 = o_2_2 ^ o_2_8; // @[CryptoUtils.scala 107:20]
  wire  o_2_19 = o_2_15 ^ o_2_13; // @[CryptoUtils.scala 108:20]
  wire  o_2_20 = o_2_1 ^ t_2_3; // @[CryptoUtils.scala 109:20]
  wire  t_3_0 = o_2_3 ^ o_2_12; // @[CryptoUtils.scala 191:20]
  wire  t_3_1 = o_2_9 & o_2_5; // @[CryptoUtils.scala 192:20]
  wire  t_3_2 = o_2_17 & o_2_6; // @[CryptoUtils.scala 193:20]
  wire  t_3_3 = o_2_10 ^ t_3_1; // @[CryptoUtils.scala 194:20]
  wire  t_3_4 = o_2_14 & src1Bytes_5[0]; // @[CryptoUtils.scala 195:20]
  wire  t_3_5 = t_3_4 ^ t_3_1; // @[CryptoUtils.scala 196:20]
  wire  t_3_6 = o_2_3 & o_2_12; // @[CryptoUtils.scala 197:20]
  wire  t_3_7 = o_2_16 & o_2_7; // @[CryptoUtils.scala 198:20]
  wire  t_3_8 = t_3_0 ^ t_3_6; // @[CryptoUtils.scala 199:20]
  wire  t_3_9 = o_2_15 & o_2_13; // @[CryptoUtils.scala 200:20]
  wire  t_3_10 = t_3_9 ^ t_3_6; // @[CryptoUtils.scala 201:20]
  wire  t_3_11 = o_2_1 & o_2_11; // @[CryptoUtils.scala 202:20]
  wire  t_3_12 = o_2_4 & o_2_20; // @[CryptoUtils.scala 203:20]
  wire  t_3_13 = t_3_12 ^ t_3_11; // @[CryptoUtils.scala 204:20]
  wire  t_3_14 = o_2_2 & o_2_8; // @[CryptoUtils.scala 205:20]
  wire  t_3_15 = t_3_14 ^ t_3_11; // @[CryptoUtils.scala 206:20]
  wire  t_3_16 = t_3_3 ^ t_3_2; // @[CryptoUtils.scala 207:20]
  wire  t_3_17 = t_3_5 ^ o_2_18; // @[CryptoUtils.scala 208:20]
  wire  t_3_18 = t_3_8 ^ t_3_7; // @[CryptoUtils.scala 209:20]
  wire  t_3_19 = t_3_10 ^ t_3_15; // @[CryptoUtils.scala 210:20]
  wire  t_3_20 = t_3_16 ^ t_3_13; // @[CryptoUtils.scala 211:20]
  wire  t_3_21 = t_3_17 ^ t_3_15; // @[CryptoUtils.scala 212:20]
  wire  t_3_22 = t_3_18 ^ t_3_13; // @[CryptoUtils.scala 213:20]
  wire  t_3_23 = t_3_19 ^ o_2_19; // @[CryptoUtils.scala 214:20]
  wire  t_3_24 = t_3_22 ^ t_3_23; // @[CryptoUtils.scala 215:20]
  wire  t_3_25 = t_3_22 & t_3_20; // @[CryptoUtils.scala 216:20]
  wire  t_3_26 = t_3_21 ^ t_3_25; // @[CryptoUtils.scala 217:20]
  wire  t_3_27 = t_3_20 ^ t_3_21; // @[CryptoUtils.scala 218:20]
  wire  t_3_28 = t_3_23 ^ t_3_25; // @[CryptoUtils.scala 219:20]
  wire  t_3_29 = t_3_28 & t_3_27; // @[CryptoUtils.scala 220:20]
  wire  t_3_30 = t_3_26 & t_3_24; // @[CryptoUtils.scala 221:20]
  wire  t_3_31 = t_3_20 & t_3_23; // @[CryptoUtils.scala 222:20]
  wire  t_3_32 = t_3_27 & t_3_31; // @[CryptoUtils.scala 223:20]
  wire  t_3_33 = t_3_27 ^ t_3_25; // @[CryptoUtils.scala 224:20]
  wire  t_3_34 = t_3_21 & t_3_22; // @[CryptoUtils.scala 225:20]
  wire  t_3_35 = t_3_24 & t_3_34; // @[CryptoUtils.scala 226:20]
  wire  t_3_36 = t_3_24 ^ t_3_25; // @[CryptoUtils.scala 227:20]
  wire  t_3_37 = t_3_21 ^ t_3_29; // @[CryptoUtils.scala 228:20]
  wire  t_3_38 = t_3_32 ^ t_3_33; // @[CryptoUtils.scala 229:20]
  wire  t_3_39 = t_3_23 ^ t_3_30; // @[CryptoUtils.scala 230:20]
  wire  t_3_40 = t_3_35 ^ t_3_36; // @[CryptoUtils.scala 231:20]
  wire  t_3_41 = t_3_38 ^ t_3_40; // @[CryptoUtils.scala 232:20]
  wire  t_3_42 = t_3_37 ^ t_3_39; // @[CryptoUtils.scala 233:20]
  wire  t_3_43 = t_3_37 ^ t_3_38; // @[CryptoUtils.scala 234:20]
  wire  t_3_44 = t_3_39 ^ t_3_40; // @[CryptoUtils.scala 235:20]
  wire  t_3_45 = t_3_42 ^ t_3_41; // @[CryptoUtils.scala 236:20]
  wire  o_3_0 = t_3_38 & o_2_7; // @[CryptoUtils.scala 237:20]
  wire  o_3_1 = t_3_37 & o_2_13; // @[CryptoUtils.scala 238:20]
  wire  o_3_2 = t_3_42 & o_2_11; // @[CryptoUtils.scala 239:20]
  wire  o_3_3 = t_3_45 & o_2_20; // @[CryptoUtils.scala 240:20]
  wire  o_3_4 = t_3_41 & o_2_8; // @[CryptoUtils.scala 241:20]
  wire  o_3_5 = t_3_44 & o_2_9; // @[CryptoUtils.scala 242:20]
  wire  o_3_6 = t_3_40 & o_2_17; // @[CryptoUtils.scala 243:20]
  wire  o_3_7 = t_3_39 & o_2_14; // @[CryptoUtils.scala 244:20]
  wire  o_3_8 = t_3_43 & o_2_3; // @[CryptoUtils.scala 245:20]
  wire  o_3_9 = t_3_38 & o_2_16; // @[CryptoUtils.scala 246:20]
  wire  o_3_10 = t_3_37 & o_2_15; // @[CryptoUtils.scala 247:20]
  wire  o_3_11 = t_3_42 & o_2_1; // @[CryptoUtils.scala 248:20]
  wire  o_3_12 = t_3_45 & o_2_4; // @[CryptoUtils.scala 249:20]
  wire  o_3_13 = t_3_41 & o_2_2; // @[CryptoUtils.scala 250:20]
  wire  o_3_14 = t_3_44 & o_2_5; // @[CryptoUtils.scala 251:20]
  wire  o_3_15 = t_3_40 & o_2_6; // @[CryptoUtils.scala 252:20]
  wire  o_3_16 = t_3_39 & src1Bytes_5[0]; // @[CryptoUtils.scala 253:20]
  wire  o_3_17 = t_3_43 & o_2_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_1_t_0 = aesSboxMid_1_11 ^ aesSboxMid_1_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_1_t_1 = aesSboxMid_1_0 ^ aesSboxMid_1_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_1_t_2 = aesSboxMid_1_14 ^ aesSboxMid_1_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_1_t_3 = aesSboxMid_1_15 ^ aesSboxMid_1_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_1_t_4 = aesSboxMid_1_4 ^ aesSboxMid_1_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_1_t_5 = aesSboxMid_1_17 ^ aesSboxMid_1_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_1_t_6 = aesSboxMid_1_12 ^ aesSboxOut_1_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_1_t_7 = aesSboxMid_1_14 ^ aesSboxOut_1_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_1_t_8 = aesSboxMid_1_1 ^ aesSboxMid_1_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_1_t_9 = aesSboxMid_1_2 ^ aesSboxMid_1_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_1_t_10 = aesSboxMid_1_3 ^ aesSboxOut_1_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_1_t_11 = aesSboxMid_1_10 ^ aesSboxOut_1_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_1_t_12 = aesSboxMid_1_16 ^ aesSboxMid_1_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_1_t_13 = aesSboxMid_1_0 ^ aesSboxOut_1_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_1_t_14 = aesSboxMid_1_2 ^ aesSboxMid_1_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_1_t_15 = aesSboxMid_1_5 ^ aesSboxOut_1_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_1_t_16 = aesSboxMid_1_6 ^ aesSboxOut_1_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_1_t_17 = aesSboxMid_1_7 ^ aesSboxOut_1_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_1_t_18 = aesSboxMid_1_8 ^ aesSboxOut_1_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_1_t_19 = aesSboxMid_1_13 ^ aesSboxOut_1_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_1_t_20 = aesSboxOut_1_t_0 ^ aesSboxOut_1_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_1_t_21 = aesSboxOut_1_t_1 ^ aesSboxOut_1_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_1_t_22 = aesSboxOut_1_t_3 ^ aesSboxOut_1_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_1_t_23 = aesSboxOut_1_t_18 ^ aesSboxOut_1_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_1_t_24 = aesSboxOut_1_t_15 ^ aesSboxOut_1_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_1_t_25 = aesSboxOut_1_t_6 ^ aesSboxOut_1_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_1_t_26 = aesSboxOut_1_t_7 ^ aesSboxOut_1_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_1_t_27 = aesSboxOut_1_t_8 ^ aesSboxOut_1_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_1_t_28 = aesSboxOut_1_t_11 ^ aesSboxOut_1_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_1_t_29 = aesSboxOut_1_t_11 ^ aesSboxOut_1_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_1_o_0 = aesSboxOut_1_t_6 ^ ~aesSboxOut_1_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_1_o_1 = aesSboxOut_1_t_13 ^ ~aesSboxOut_1_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_1_o_2 = aesSboxOut_1_t_25 ^ aesSboxOut_1_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_1_o_3 = aesSboxOut_1_t_20 ^ aesSboxOut_1_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_1_o_4 = aesSboxOut_1_t_6 ^ aesSboxOut_1_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_1_o_5 = aesSboxOut_1_t_19 ^ ~aesSboxOut_1_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_1_o_6 = aesSboxOut_1_t_16 ^ ~aesSboxOut_1_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_1_o_7 = aesSboxOut_1_t_6 ^ aesSboxOut_1_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_1 = {aesSboxOut_1_o_7,aesSboxOut_1_o_6,aesSboxOut_1_o_5,aesSboxOut_1_o_4,aesSboxOut_1_o_3,
    aesSboxOut_1_o_2,aesSboxOut_1_o_1,aesSboxOut_1_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_4_0 = src2Bytes_2[3] ^ src2Bytes_2[1]; // @[CryptoUtils.scala 83:20]
  wire  t_4_1 = src2Bytes_2[6] ^ src2Bytes_2[5]; // @[CryptoUtils.scala 84:20]
  wire  t_4_2 = src2Bytes_2[6] ^ src2Bytes_2[2]; // @[CryptoUtils.scala 85:20]
  wire  t_4_3 = src2Bytes_2[5] ^ src2Bytes_2[2]; // @[CryptoUtils.scala 86:20]
  wire  t_4_4 = src2Bytes_2[4] ^ src2Bytes_2[0]; // @[CryptoUtils.scala 87:20]
  wire  t_4_5 = src2Bytes_2[1] ^ src2Bytes_2[0]; // @[CryptoUtils.scala 88:20]
  wire  o_4_1 = src2Bytes_2[7] ^ src2Bytes_2[4]; // @[CryptoUtils.scala 90:20]
  wire  o_4_2 = src2Bytes_2[7] ^ src2Bytes_2[2]; // @[CryptoUtils.scala 91:20]
  wire  o_4_3 = src2Bytes_2[7] ^ src2Bytes_2[1]; // @[CryptoUtils.scala 92:20]
  wire  o_4_4 = src2Bytes_2[4] ^ src2Bytes_2[2]; // @[CryptoUtils.scala 93:20]
  wire  o_4_5 = o_4_1 ^ t_4_0; // @[CryptoUtils.scala 94:20]
  wire  o_4_6 = src2Bytes_2[0] ^ o_4_5; // @[CryptoUtils.scala 95:20]
  wire  o_4_7 = src2Bytes_2[0] ^ t_4_1; // @[CryptoUtils.scala 96:20]
  wire  o_4_8 = o_4_5 ^ t_4_1; // @[CryptoUtils.scala 97:20]
  wire  o_4_9 = o_4_3 ^ o_4_4; // @[CryptoUtils.scala 98:20]
  wire  o_4_10 = o_4_5 ^ t_4_2; // @[CryptoUtils.scala 99:20]
  wire  o_4_11 = t_4_0 ^ t_4_2; // @[CryptoUtils.scala 100:20]
  wire  o_4_12 = t_4_0 ^ t_4_3; // @[CryptoUtils.scala 101:20]
  wire  o_4_13 = o_4_7 ^ o_4_12; // @[CryptoUtils.scala 102:20]
  wire  o_4_14 = t_4_1 ^ t_4_4; // @[CryptoUtils.scala 103:20]
  wire  o_4_15 = o_4_1 ^ o_4_14; // @[CryptoUtils.scala 104:20]
  wire  o_4_16 = t_4_1 ^ t_4_5; // @[CryptoUtils.scala 105:20]
  wire  o_4_17 = o_4_2 ^ o_4_16; // @[CryptoUtils.scala 106:20]
  wire  o_4_18 = o_4_2 ^ o_4_8; // @[CryptoUtils.scala 107:20]
  wire  o_4_19 = o_4_15 ^ o_4_13; // @[CryptoUtils.scala 108:20]
  wire  o_4_20 = o_4_1 ^ t_4_3; // @[CryptoUtils.scala 109:20]
  wire  t_5_0 = o_4_3 ^ o_4_12; // @[CryptoUtils.scala 191:20]
  wire  t_5_1 = o_4_9 & o_4_5; // @[CryptoUtils.scala 192:20]
  wire  t_5_2 = o_4_17 & o_4_6; // @[CryptoUtils.scala 193:20]
  wire  t_5_3 = o_4_10 ^ t_5_1; // @[CryptoUtils.scala 194:20]
  wire  t_5_4 = o_4_14 & src2Bytes_2[0]; // @[CryptoUtils.scala 195:20]
  wire  t_5_5 = t_5_4 ^ t_5_1; // @[CryptoUtils.scala 196:20]
  wire  t_5_6 = o_4_3 & o_4_12; // @[CryptoUtils.scala 197:20]
  wire  t_5_7 = o_4_16 & o_4_7; // @[CryptoUtils.scala 198:20]
  wire  t_5_8 = t_5_0 ^ t_5_6; // @[CryptoUtils.scala 199:20]
  wire  t_5_9 = o_4_15 & o_4_13; // @[CryptoUtils.scala 200:20]
  wire  t_5_10 = t_5_9 ^ t_5_6; // @[CryptoUtils.scala 201:20]
  wire  t_5_11 = o_4_1 & o_4_11; // @[CryptoUtils.scala 202:20]
  wire  t_5_12 = o_4_4 & o_4_20; // @[CryptoUtils.scala 203:20]
  wire  t_5_13 = t_5_12 ^ t_5_11; // @[CryptoUtils.scala 204:20]
  wire  t_5_14 = o_4_2 & o_4_8; // @[CryptoUtils.scala 205:20]
  wire  t_5_15 = t_5_14 ^ t_5_11; // @[CryptoUtils.scala 206:20]
  wire  t_5_16 = t_5_3 ^ t_5_2; // @[CryptoUtils.scala 207:20]
  wire  t_5_17 = t_5_5 ^ o_4_18; // @[CryptoUtils.scala 208:20]
  wire  t_5_18 = t_5_8 ^ t_5_7; // @[CryptoUtils.scala 209:20]
  wire  t_5_19 = t_5_10 ^ t_5_15; // @[CryptoUtils.scala 210:20]
  wire  t_5_20 = t_5_16 ^ t_5_13; // @[CryptoUtils.scala 211:20]
  wire  t_5_21 = t_5_17 ^ t_5_15; // @[CryptoUtils.scala 212:20]
  wire  t_5_22 = t_5_18 ^ t_5_13; // @[CryptoUtils.scala 213:20]
  wire  t_5_23 = t_5_19 ^ o_4_19; // @[CryptoUtils.scala 214:20]
  wire  t_5_24 = t_5_22 ^ t_5_23; // @[CryptoUtils.scala 215:20]
  wire  t_5_25 = t_5_22 & t_5_20; // @[CryptoUtils.scala 216:20]
  wire  t_5_26 = t_5_21 ^ t_5_25; // @[CryptoUtils.scala 217:20]
  wire  t_5_27 = t_5_20 ^ t_5_21; // @[CryptoUtils.scala 218:20]
  wire  t_5_28 = t_5_23 ^ t_5_25; // @[CryptoUtils.scala 219:20]
  wire  t_5_29 = t_5_28 & t_5_27; // @[CryptoUtils.scala 220:20]
  wire  t_5_30 = t_5_26 & t_5_24; // @[CryptoUtils.scala 221:20]
  wire  t_5_31 = t_5_20 & t_5_23; // @[CryptoUtils.scala 222:20]
  wire  t_5_32 = t_5_27 & t_5_31; // @[CryptoUtils.scala 223:20]
  wire  t_5_33 = t_5_27 ^ t_5_25; // @[CryptoUtils.scala 224:20]
  wire  t_5_34 = t_5_21 & t_5_22; // @[CryptoUtils.scala 225:20]
  wire  t_5_35 = t_5_24 & t_5_34; // @[CryptoUtils.scala 226:20]
  wire  t_5_36 = t_5_24 ^ t_5_25; // @[CryptoUtils.scala 227:20]
  wire  t_5_37 = t_5_21 ^ t_5_29; // @[CryptoUtils.scala 228:20]
  wire  t_5_38 = t_5_32 ^ t_5_33; // @[CryptoUtils.scala 229:20]
  wire  t_5_39 = t_5_23 ^ t_5_30; // @[CryptoUtils.scala 230:20]
  wire  t_5_40 = t_5_35 ^ t_5_36; // @[CryptoUtils.scala 231:20]
  wire  t_5_41 = t_5_38 ^ t_5_40; // @[CryptoUtils.scala 232:20]
  wire  t_5_42 = t_5_37 ^ t_5_39; // @[CryptoUtils.scala 233:20]
  wire  t_5_43 = t_5_37 ^ t_5_38; // @[CryptoUtils.scala 234:20]
  wire  t_5_44 = t_5_39 ^ t_5_40; // @[CryptoUtils.scala 235:20]
  wire  t_5_45 = t_5_42 ^ t_5_41; // @[CryptoUtils.scala 236:20]
  wire  o_5_0 = t_5_38 & o_4_7; // @[CryptoUtils.scala 237:20]
  wire  o_5_1 = t_5_37 & o_4_13; // @[CryptoUtils.scala 238:20]
  wire  o_5_2 = t_5_42 & o_4_11; // @[CryptoUtils.scala 239:20]
  wire  o_5_3 = t_5_45 & o_4_20; // @[CryptoUtils.scala 240:20]
  wire  o_5_4 = t_5_41 & o_4_8; // @[CryptoUtils.scala 241:20]
  wire  o_5_5 = t_5_44 & o_4_9; // @[CryptoUtils.scala 242:20]
  wire  o_5_6 = t_5_40 & o_4_17; // @[CryptoUtils.scala 243:20]
  wire  o_5_7 = t_5_39 & o_4_14; // @[CryptoUtils.scala 244:20]
  wire  o_5_8 = t_5_43 & o_4_3; // @[CryptoUtils.scala 245:20]
  wire  o_5_9 = t_5_38 & o_4_16; // @[CryptoUtils.scala 246:20]
  wire  o_5_10 = t_5_37 & o_4_15; // @[CryptoUtils.scala 247:20]
  wire  o_5_11 = t_5_42 & o_4_1; // @[CryptoUtils.scala 248:20]
  wire  o_5_12 = t_5_45 & o_4_4; // @[CryptoUtils.scala 249:20]
  wire  o_5_13 = t_5_41 & o_4_2; // @[CryptoUtils.scala 250:20]
  wire  o_5_14 = t_5_44 & o_4_5; // @[CryptoUtils.scala 251:20]
  wire  o_5_15 = t_5_40 & o_4_6; // @[CryptoUtils.scala 252:20]
  wire  o_5_16 = t_5_39 & src2Bytes_2[0]; // @[CryptoUtils.scala 253:20]
  wire  o_5_17 = t_5_43 & o_4_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_2_t_0 = aesSboxMid_2_11 ^ aesSboxMid_2_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_2_t_1 = aesSboxMid_2_0 ^ aesSboxMid_2_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_2_t_2 = aesSboxMid_2_14 ^ aesSboxMid_2_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_2_t_3 = aesSboxMid_2_15 ^ aesSboxMid_2_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_2_t_4 = aesSboxMid_2_4 ^ aesSboxMid_2_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_2_t_5 = aesSboxMid_2_17 ^ aesSboxMid_2_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_2_t_6 = aesSboxMid_2_12 ^ aesSboxOut_2_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_2_t_7 = aesSboxMid_2_14 ^ aesSboxOut_2_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_2_t_8 = aesSboxMid_2_1 ^ aesSboxMid_2_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_2_t_9 = aesSboxMid_2_2 ^ aesSboxMid_2_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_2_t_10 = aesSboxMid_2_3 ^ aesSboxOut_2_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_2_t_11 = aesSboxMid_2_10 ^ aesSboxOut_2_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_2_t_12 = aesSboxMid_2_16 ^ aesSboxMid_2_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_2_t_13 = aesSboxMid_2_0 ^ aesSboxOut_2_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_2_t_14 = aesSboxMid_2_2 ^ aesSboxMid_2_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_2_t_15 = aesSboxMid_2_5 ^ aesSboxOut_2_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_2_t_16 = aesSboxMid_2_6 ^ aesSboxOut_2_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_2_t_17 = aesSboxMid_2_7 ^ aesSboxOut_2_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_2_t_18 = aesSboxMid_2_8 ^ aesSboxOut_2_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_2_t_19 = aesSboxMid_2_13 ^ aesSboxOut_2_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_2_t_20 = aesSboxOut_2_t_0 ^ aesSboxOut_2_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_2_t_21 = aesSboxOut_2_t_1 ^ aesSboxOut_2_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_2_t_22 = aesSboxOut_2_t_3 ^ aesSboxOut_2_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_2_t_23 = aesSboxOut_2_t_18 ^ aesSboxOut_2_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_2_t_24 = aesSboxOut_2_t_15 ^ aesSboxOut_2_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_2_t_25 = aesSboxOut_2_t_6 ^ aesSboxOut_2_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_2_t_26 = aesSboxOut_2_t_7 ^ aesSboxOut_2_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_2_t_27 = aesSboxOut_2_t_8 ^ aesSboxOut_2_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_2_t_28 = aesSboxOut_2_t_11 ^ aesSboxOut_2_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_2_t_29 = aesSboxOut_2_t_11 ^ aesSboxOut_2_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_2_o_0 = aesSboxOut_2_t_6 ^ ~aesSboxOut_2_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_2_o_1 = aesSboxOut_2_t_13 ^ ~aesSboxOut_2_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_2_o_2 = aesSboxOut_2_t_25 ^ aesSboxOut_2_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_2_o_3 = aesSboxOut_2_t_20 ^ aesSboxOut_2_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_2_o_4 = aesSboxOut_2_t_6 ^ aesSboxOut_2_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_2_o_5 = aesSboxOut_2_t_19 ^ ~aesSboxOut_2_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_2_o_6 = aesSboxOut_2_t_16 ^ ~aesSboxOut_2_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_2_o_7 = aesSboxOut_2_t_6 ^ aesSboxOut_2_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_2 = {aesSboxOut_2_o_7,aesSboxOut_2_o_6,aesSboxOut_2_o_5,aesSboxOut_2_o_4,aesSboxOut_2_o_3,
    aesSboxOut_2_o_2,aesSboxOut_2_o_1,aesSboxOut_2_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_6_0 = src2Bytes_7[3] ^ src2Bytes_7[1]; // @[CryptoUtils.scala 83:20]
  wire  t_6_1 = src2Bytes_7[6] ^ src2Bytes_7[5]; // @[CryptoUtils.scala 84:20]
  wire  t_6_2 = src2Bytes_7[6] ^ src2Bytes_7[2]; // @[CryptoUtils.scala 85:20]
  wire  t_6_3 = src2Bytes_7[5] ^ src2Bytes_7[2]; // @[CryptoUtils.scala 86:20]
  wire  t_6_4 = src2Bytes_7[4] ^ src2Bytes_7[0]; // @[CryptoUtils.scala 87:20]
  wire  t_6_5 = src2Bytes_7[1] ^ src2Bytes_7[0]; // @[CryptoUtils.scala 88:20]
  wire  o_6_1 = src2Bytes_7[7] ^ src2Bytes_7[4]; // @[CryptoUtils.scala 90:20]
  wire  o_6_2 = src2Bytes_7[7] ^ src2Bytes_7[2]; // @[CryptoUtils.scala 91:20]
  wire  o_6_3 = src2Bytes_7[7] ^ src2Bytes_7[1]; // @[CryptoUtils.scala 92:20]
  wire  o_6_4 = src2Bytes_7[4] ^ src2Bytes_7[2]; // @[CryptoUtils.scala 93:20]
  wire  o_6_5 = o_6_1 ^ t_6_0; // @[CryptoUtils.scala 94:20]
  wire  o_6_6 = src2Bytes_7[0] ^ o_6_5; // @[CryptoUtils.scala 95:20]
  wire  o_6_7 = src2Bytes_7[0] ^ t_6_1; // @[CryptoUtils.scala 96:20]
  wire  o_6_8 = o_6_5 ^ t_6_1; // @[CryptoUtils.scala 97:20]
  wire  o_6_9 = o_6_3 ^ o_6_4; // @[CryptoUtils.scala 98:20]
  wire  o_6_10 = o_6_5 ^ t_6_2; // @[CryptoUtils.scala 99:20]
  wire  o_6_11 = t_6_0 ^ t_6_2; // @[CryptoUtils.scala 100:20]
  wire  o_6_12 = t_6_0 ^ t_6_3; // @[CryptoUtils.scala 101:20]
  wire  o_6_13 = o_6_7 ^ o_6_12; // @[CryptoUtils.scala 102:20]
  wire  o_6_14 = t_6_1 ^ t_6_4; // @[CryptoUtils.scala 103:20]
  wire  o_6_15 = o_6_1 ^ o_6_14; // @[CryptoUtils.scala 104:20]
  wire  o_6_16 = t_6_1 ^ t_6_5; // @[CryptoUtils.scala 105:20]
  wire  o_6_17 = o_6_2 ^ o_6_16; // @[CryptoUtils.scala 106:20]
  wire  o_6_18 = o_6_2 ^ o_6_8; // @[CryptoUtils.scala 107:20]
  wire  o_6_19 = o_6_15 ^ o_6_13; // @[CryptoUtils.scala 108:20]
  wire  o_6_20 = o_6_1 ^ t_6_3; // @[CryptoUtils.scala 109:20]
  wire  t_7_0 = o_6_3 ^ o_6_12; // @[CryptoUtils.scala 191:20]
  wire  t_7_1 = o_6_9 & o_6_5; // @[CryptoUtils.scala 192:20]
  wire  t_7_2 = o_6_17 & o_6_6; // @[CryptoUtils.scala 193:20]
  wire  t_7_3 = o_6_10 ^ t_7_1; // @[CryptoUtils.scala 194:20]
  wire  t_7_4 = o_6_14 & src2Bytes_7[0]; // @[CryptoUtils.scala 195:20]
  wire  t_7_5 = t_7_4 ^ t_7_1; // @[CryptoUtils.scala 196:20]
  wire  t_7_6 = o_6_3 & o_6_12; // @[CryptoUtils.scala 197:20]
  wire  t_7_7 = o_6_16 & o_6_7; // @[CryptoUtils.scala 198:20]
  wire  t_7_8 = t_7_0 ^ t_7_6; // @[CryptoUtils.scala 199:20]
  wire  t_7_9 = o_6_15 & o_6_13; // @[CryptoUtils.scala 200:20]
  wire  t_7_10 = t_7_9 ^ t_7_6; // @[CryptoUtils.scala 201:20]
  wire  t_7_11 = o_6_1 & o_6_11; // @[CryptoUtils.scala 202:20]
  wire  t_7_12 = o_6_4 & o_6_20; // @[CryptoUtils.scala 203:20]
  wire  t_7_13 = t_7_12 ^ t_7_11; // @[CryptoUtils.scala 204:20]
  wire  t_7_14 = o_6_2 & o_6_8; // @[CryptoUtils.scala 205:20]
  wire  t_7_15 = t_7_14 ^ t_7_11; // @[CryptoUtils.scala 206:20]
  wire  t_7_16 = t_7_3 ^ t_7_2; // @[CryptoUtils.scala 207:20]
  wire  t_7_17 = t_7_5 ^ o_6_18; // @[CryptoUtils.scala 208:20]
  wire  t_7_18 = t_7_8 ^ t_7_7; // @[CryptoUtils.scala 209:20]
  wire  t_7_19 = t_7_10 ^ t_7_15; // @[CryptoUtils.scala 210:20]
  wire  t_7_20 = t_7_16 ^ t_7_13; // @[CryptoUtils.scala 211:20]
  wire  t_7_21 = t_7_17 ^ t_7_15; // @[CryptoUtils.scala 212:20]
  wire  t_7_22 = t_7_18 ^ t_7_13; // @[CryptoUtils.scala 213:20]
  wire  t_7_23 = t_7_19 ^ o_6_19; // @[CryptoUtils.scala 214:20]
  wire  t_7_24 = t_7_22 ^ t_7_23; // @[CryptoUtils.scala 215:20]
  wire  t_7_25 = t_7_22 & t_7_20; // @[CryptoUtils.scala 216:20]
  wire  t_7_26 = t_7_21 ^ t_7_25; // @[CryptoUtils.scala 217:20]
  wire  t_7_27 = t_7_20 ^ t_7_21; // @[CryptoUtils.scala 218:20]
  wire  t_7_28 = t_7_23 ^ t_7_25; // @[CryptoUtils.scala 219:20]
  wire  t_7_29 = t_7_28 & t_7_27; // @[CryptoUtils.scala 220:20]
  wire  t_7_30 = t_7_26 & t_7_24; // @[CryptoUtils.scala 221:20]
  wire  t_7_31 = t_7_20 & t_7_23; // @[CryptoUtils.scala 222:20]
  wire  t_7_32 = t_7_27 & t_7_31; // @[CryptoUtils.scala 223:20]
  wire  t_7_33 = t_7_27 ^ t_7_25; // @[CryptoUtils.scala 224:20]
  wire  t_7_34 = t_7_21 & t_7_22; // @[CryptoUtils.scala 225:20]
  wire  t_7_35 = t_7_24 & t_7_34; // @[CryptoUtils.scala 226:20]
  wire  t_7_36 = t_7_24 ^ t_7_25; // @[CryptoUtils.scala 227:20]
  wire  t_7_37 = t_7_21 ^ t_7_29; // @[CryptoUtils.scala 228:20]
  wire  t_7_38 = t_7_32 ^ t_7_33; // @[CryptoUtils.scala 229:20]
  wire  t_7_39 = t_7_23 ^ t_7_30; // @[CryptoUtils.scala 230:20]
  wire  t_7_40 = t_7_35 ^ t_7_36; // @[CryptoUtils.scala 231:20]
  wire  t_7_41 = t_7_38 ^ t_7_40; // @[CryptoUtils.scala 232:20]
  wire  t_7_42 = t_7_37 ^ t_7_39; // @[CryptoUtils.scala 233:20]
  wire  t_7_43 = t_7_37 ^ t_7_38; // @[CryptoUtils.scala 234:20]
  wire  t_7_44 = t_7_39 ^ t_7_40; // @[CryptoUtils.scala 235:20]
  wire  t_7_45 = t_7_42 ^ t_7_41; // @[CryptoUtils.scala 236:20]
  wire  o_7_0 = t_7_38 & o_6_7; // @[CryptoUtils.scala 237:20]
  wire  o_7_1 = t_7_37 & o_6_13; // @[CryptoUtils.scala 238:20]
  wire  o_7_2 = t_7_42 & o_6_11; // @[CryptoUtils.scala 239:20]
  wire  o_7_3 = t_7_45 & o_6_20; // @[CryptoUtils.scala 240:20]
  wire  o_7_4 = t_7_41 & o_6_8; // @[CryptoUtils.scala 241:20]
  wire  o_7_5 = t_7_44 & o_6_9; // @[CryptoUtils.scala 242:20]
  wire  o_7_6 = t_7_40 & o_6_17; // @[CryptoUtils.scala 243:20]
  wire  o_7_7 = t_7_39 & o_6_14; // @[CryptoUtils.scala 244:20]
  wire  o_7_8 = t_7_43 & o_6_3; // @[CryptoUtils.scala 245:20]
  wire  o_7_9 = t_7_38 & o_6_16; // @[CryptoUtils.scala 246:20]
  wire  o_7_10 = t_7_37 & o_6_15; // @[CryptoUtils.scala 247:20]
  wire  o_7_11 = t_7_42 & o_6_1; // @[CryptoUtils.scala 248:20]
  wire  o_7_12 = t_7_45 & o_6_4; // @[CryptoUtils.scala 249:20]
  wire  o_7_13 = t_7_41 & o_6_2; // @[CryptoUtils.scala 250:20]
  wire  o_7_14 = t_7_44 & o_6_5; // @[CryptoUtils.scala 251:20]
  wire  o_7_15 = t_7_40 & o_6_6; // @[CryptoUtils.scala 252:20]
  wire  o_7_16 = t_7_39 & src2Bytes_7[0]; // @[CryptoUtils.scala 253:20]
  wire  o_7_17 = t_7_43 & o_6_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_3_t_0 = aesSboxMid_3_11 ^ aesSboxMid_3_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_3_t_1 = aesSboxMid_3_0 ^ aesSboxMid_3_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_3_t_2 = aesSboxMid_3_14 ^ aesSboxMid_3_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_3_t_3 = aesSboxMid_3_15 ^ aesSboxMid_3_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_3_t_4 = aesSboxMid_3_4 ^ aesSboxMid_3_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_3_t_5 = aesSboxMid_3_17 ^ aesSboxMid_3_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_3_t_6 = aesSboxMid_3_12 ^ aesSboxOut_3_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_3_t_7 = aesSboxMid_3_14 ^ aesSboxOut_3_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_3_t_8 = aesSboxMid_3_1 ^ aesSboxMid_3_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_3_t_9 = aesSboxMid_3_2 ^ aesSboxMid_3_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_3_t_10 = aesSboxMid_3_3 ^ aesSboxOut_3_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_3_t_11 = aesSboxMid_3_10 ^ aesSboxOut_3_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_3_t_12 = aesSboxMid_3_16 ^ aesSboxMid_3_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_3_t_13 = aesSboxMid_3_0 ^ aesSboxOut_3_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_3_t_14 = aesSboxMid_3_2 ^ aesSboxMid_3_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_3_t_15 = aesSboxMid_3_5 ^ aesSboxOut_3_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_3_t_16 = aesSboxMid_3_6 ^ aesSboxOut_3_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_3_t_17 = aesSboxMid_3_7 ^ aesSboxOut_3_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_3_t_18 = aesSboxMid_3_8 ^ aesSboxOut_3_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_3_t_19 = aesSboxMid_3_13 ^ aesSboxOut_3_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_3_t_20 = aesSboxOut_3_t_0 ^ aesSboxOut_3_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_3_t_21 = aesSboxOut_3_t_1 ^ aesSboxOut_3_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_3_t_22 = aesSboxOut_3_t_3 ^ aesSboxOut_3_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_3_t_23 = aesSboxOut_3_t_18 ^ aesSboxOut_3_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_3_t_24 = aesSboxOut_3_t_15 ^ aesSboxOut_3_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_3_t_25 = aesSboxOut_3_t_6 ^ aesSboxOut_3_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_3_t_26 = aesSboxOut_3_t_7 ^ aesSboxOut_3_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_3_t_27 = aesSboxOut_3_t_8 ^ aesSboxOut_3_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_3_t_28 = aesSboxOut_3_t_11 ^ aesSboxOut_3_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_3_t_29 = aesSboxOut_3_t_11 ^ aesSboxOut_3_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_3_o_0 = aesSboxOut_3_t_6 ^ ~aesSboxOut_3_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_3_o_1 = aesSboxOut_3_t_13 ^ ~aesSboxOut_3_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_3_o_2 = aesSboxOut_3_t_25 ^ aesSboxOut_3_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_3_o_3 = aesSboxOut_3_t_20 ^ aesSboxOut_3_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_3_o_4 = aesSboxOut_3_t_6 ^ aesSboxOut_3_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_3_o_5 = aesSboxOut_3_t_19 ^ ~aesSboxOut_3_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_3_o_6 = aesSboxOut_3_t_16 ^ ~aesSboxOut_3_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_3_o_7 = aesSboxOut_3_t_6 ^ aesSboxOut_3_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_3 = {aesSboxOut_3_o_7,aesSboxOut_3_o_6,aesSboxOut_3_o_5,aesSboxOut_3_o_4,aesSboxOut_3_o_3,
    aesSboxOut_3_o_2,aesSboxOut_3_o_1,aesSboxOut_3_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_8_0 = src1Bytes_4[3] ^ src1Bytes_4[1]; // @[CryptoUtils.scala 83:20]
  wire  t_8_1 = src1Bytes_4[6] ^ src1Bytes_4[5]; // @[CryptoUtils.scala 84:20]
  wire  t_8_2 = src1Bytes_4[6] ^ src1Bytes_4[2]; // @[CryptoUtils.scala 85:20]
  wire  t_8_3 = src1Bytes_4[5] ^ src1Bytes_4[2]; // @[CryptoUtils.scala 86:20]
  wire  t_8_4 = src1Bytes_4[4] ^ src1Bytes_4[0]; // @[CryptoUtils.scala 87:20]
  wire  t_8_5 = src1Bytes_4[1] ^ src1Bytes_4[0]; // @[CryptoUtils.scala 88:20]
  wire  o_8_1 = src1Bytes_4[7] ^ src1Bytes_4[4]; // @[CryptoUtils.scala 90:20]
  wire  o_8_2 = src1Bytes_4[7] ^ src1Bytes_4[2]; // @[CryptoUtils.scala 91:20]
  wire  o_8_3 = src1Bytes_4[7] ^ src1Bytes_4[1]; // @[CryptoUtils.scala 92:20]
  wire  o_8_4 = src1Bytes_4[4] ^ src1Bytes_4[2]; // @[CryptoUtils.scala 93:20]
  wire  o_8_5 = o_8_1 ^ t_8_0; // @[CryptoUtils.scala 94:20]
  wire  o_8_6 = src1Bytes_4[0] ^ o_8_5; // @[CryptoUtils.scala 95:20]
  wire  o_8_7 = src1Bytes_4[0] ^ t_8_1; // @[CryptoUtils.scala 96:20]
  wire  o_8_8 = o_8_5 ^ t_8_1; // @[CryptoUtils.scala 97:20]
  wire  o_8_9 = o_8_3 ^ o_8_4; // @[CryptoUtils.scala 98:20]
  wire  o_8_10 = o_8_5 ^ t_8_2; // @[CryptoUtils.scala 99:20]
  wire  o_8_11 = t_8_0 ^ t_8_2; // @[CryptoUtils.scala 100:20]
  wire  o_8_12 = t_8_0 ^ t_8_3; // @[CryptoUtils.scala 101:20]
  wire  o_8_13 = o_8_7 ^ o_8_12; // @[CryptoUtils.scala 102:20]
  wire  o_8_14 = t_8_1 ^ t_8_4; // @[CryptoUtils.scala 103:20]
  wire  o_8_15 = o_8_1 ^ o_8_14; // @[CryptoUtils.scala 104:20]
  wire  o_8_16 = t_8_1 ^ t_8_5; // @[CryptoUtils.scala 105:20]
  wire  o_8_17 = o_8_2 ^ o_8_16; // @[CryptoUtils.scala 106:20]
  wire  o_8_18 = o_8_2 ^ o_8_8; // @[CryptoUtils.scala 107:20]
  wire  o_8_19 = o_8_15 ^ o_8_13; // @[CryptoUtils.scala 108:20]
  wire  o_8_20 = o_8_1 ^ t_8_3; // @[CryptoUtils.scala 109:20]
  wire  t_9_0 = o_8_3 ^ o_8_12; // @[CryptoUtils.scala 191:20]
  wire  t_9_1 = o_8_9 & o_8_5; // @[CryptoUtils.scala 192:20]
  wire  t_9_2 = o_8_17 & o_8_6; // @[CryptoUtils.scala 193:20]
  wire  t_9_3 = o_8_10 ^ t_9_1; // @[CryptoUtils.scala 194:20]
  wire  t_9_4 = o_8_14 & src1Bytes_4[0]; // @[CryptoUtils.scala 195:20]
  wire  t_9_5 = t_9_4 ^ t_9_1; // @[CryptoUtils.scala 196:20]
  wire  t_9_6 = o_8_3 & o_8_12; // @[CryptoUtils.scala 197:20]
  wire  t_9_7 = o_8_16 & o_8_7; // @[CryptoUtils.scala 198:20]
  wire  t_9_8 = t_9_0 ^ t_9_6; // @[CryptoUtils.scala 199:20]
  wire  t_9_9 = o_8_15 & o_8_13; // @[CryptoUtils.scala 200:20]
  wire  t_9_10 = t_9_9 ^ t_9_6; // @[CryptoUtils.scala 201:20]
  wire  t_9_11 = o_8_1 & o_8_11; // @[CryptoUtils.scala 202:20]
  wire  t_9_12 = o_8_4 & o_8_20; // @[CryptoUtils.scala 203:20]
  wire  t_9_13 = t_9_12 ^ t_9_11; // @[CryptoUtils.scala 204:20]
  wire  t_9_14 = o_8_2 & o_8_8; // @[CryptoUtils.scala 205:20]
  wire  t_9_15 = t_9_14 ^ t_9_11; // @[CryptoUtils.scala 206:20]
  wire  t_9_16 = t_9_3 ^ t_9_2; // @[CryptoUtils.scala 207:20]
  wire  t_9_17 = t_9_5 ^ o_8_18; // @[CryptoUtils.scala 208:20]
  wire  t_9_18 = t_9_8 ^ t_9_7; // @[CryptoUtils.scala 209:20]
  wire  t_9_19 = t_9_10 ^ t_9_15; // @[CryptoUtils.scala 210:20]
  wire  t_9_20 = t_9_16 ^ t_9_13; // @[CryptoUtils.scala 211:20]
  wire  t_9_21 = t_9_17 ^ t_9_15; // @[CryptoUtils.scala 212:20]
  wire  t_9_22 = t_9_18 ^ t_9_13; // @[CryptoUtils.scala 213:20]
  wire  t_9_23 = t_9_19 ^ o_8_19; // @[CryptoUtils.scala 214:20]
  wire  t_9_24 = t_9_22 ^ t_9_23; // @[CryptoUtils.scala 215:20]
  wire  t_9_25 = t_9_22 & t_9_20; // @[CryptoUtils.scala 216:20]
  wire  t_9_26 = t_9_21 ^ t_9_25; // @[CryptoUtils.scala 217:20]
  wire  t_9_27 = t_9_20 ^ t_9_21; // @[CryptoUtils.scala 218:20]
  wire  t_9_28 = t_9_23 ^ t_9_25; // @[CryptoUtils.scala 219:20]
  wire  t_9_29 = t_9_28 & t_9_27; // @[CryptoUtils.scala 220:20]
  wire  t_9_30 = t_9_26 & t_9_24; // @[CryptoUtils.scala 221:20]
  wire  t_9_31 = t_9_20 & t_9_23; // @[CryptoUtils.scala 222:20]
  wire  t_9_32 = t_9_27 & t_9_31; // @[CryptoUtils.scala 223:20]
  wire  t_9_33 = t_9_27 ^ t_9_25; // @[CryptoUtils.scala 224:20]
  wire  t_9_34 = t_9_21 & t_9_22; // @[CryptoUtils.scala 225:20]
  wire  t_9_35 = t_9_24 & t_9_34; // @[CryptoUtils.scala 226:20]
  wire  t_9_36 = t_9_24 ^ t_9_25; // @[CryptoUtils.scala 227:20]
  wire  t_9_37 = t_9_21 ^ t_9_29; // @[CryptoUtils.scala 228:20]
  wire  t_9_38 = t_9_32 ^ t_9_33; // @[CryptoUtils.scala 229:20]
  wire  t_9_39 = t_9_23 ^ t_9_30; // @[CryptoUtils.scala 230:20]
  wire  t_9_40 = t_9_35 ^ t_9_36; // @[CryptoUtils.scala 231:20]
  wire  t_9_41 = t_9_38 ^ t_9_40; // @[CryptoUtils.scala 232:20]
  wire  t_9_42 = t_9_37 ^ t_9_39; // @[CryptoUtils.scala 233:20]
  wire  t_9_43 = t_9_37 ^ t_9_38; // @[CryptoUtils.scala 234:20]
  wire  t_9_44 = t_9_39 ^ t_9_40; // @[CryptoUtils.scala 235:20]
  wire  t_9_45 = t_9_42 ^ t_9_41; // @[CryptoUtils.scala 236:20]
  wire  o_9_0 = t_9_38 & o_8_7; // @[CryptoUtils.scala 237:20]
  wire  o_9_1 = t_9_37 & o_8_13; // @[CryptoUtils.scala 238:20]
  wire  o_9_2 = t_9_42 & o_8_11; // @[CryptoUtils.scala 239:20]
  wire  o_9_3 = t_9_45 & o_8_20; // @[CryptoUtils.scala 240:20]
  wire  o_9_4 = t_9_41 & o_8_8; // @[CryptoUtils.scala 241:20]
  wire  o_9_5 = t_9_44 & o_8_9; // @[CryptoUtils.scala 242:20]
  wire  o_9_6 = t_9_40 & o_8_17; // @[CryptoUtils.scala 243:20]
  wire  o_9_7 = t_9_39 & o_8_14; // @[CryptoUtils.scala 244:20]
  wire  o_9_8 = t_9_43 & o_8_3; // @[CryptoUtils.scala 245:20]
  wire  o_9_9 = t_9_38 & o_8_16; // @[CryptoUtils.scala 246:20]
  wire  o_9_10 = t_9_37 & o_8_15; // @[CryptoUtils.scala 247:20]
  wire  o_9_11 = t_9_42 & o_8_1; // @[CryptoUtils.scala 248:20]
  wire  o_9_12 = t_9_45 & o_8_4; // @[CryptoUtils.scala 249:20]
  wire  o_9_13 = t_9_41 & o_8_2; // @[CryptoUtils.scala 250:20]
  wire  o_9_14 = t_9_44 & o_8_5; // @[CryptoUtils.scala 251:20]
  wire  o_9_15 = t_9_40 & o_8_6; // @[CryptoUtils.scala 252:20]
  wire  o_9_16 = t_9_39 & src1Bytes_4[0]; // @[CryptoUtils.scala 253:20]
  wire  o_9_17 = t_9_43 & o_8_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_4_t_0 = aesSboxMid_4_11 ^ aesSboxMid_4_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_4_t_1 = aesSboxMid_4_0 ^ aesSboxMid_4_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_4_t_2 = aesSboxMid_4_14 ^ aesSboxMid_4_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_4_t_3 = aesSboxMid_4_15 ^ aesSboxMid_4_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_4_t_4 = aesSboxMid_4_4 ^ aesSboxMid_4_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_4_t_5 = aesSboxMid_4_17 ^ aesSboxMid_4_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_4_t_6 = aesSboxMid_4_12 ^ aesSboxOut_4_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_4_t_7 = aesSboxMid_4_14 ^ aesSboxOut_4_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_4_t_8 = aesSboxMid_4_1 ^ aesSboxMid_4_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_4_t_9 = aesSboxMid_4_2 ^ aesSboxMid_4_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_4_t_10 = aesSboxMid_4_3 ^ aesSboxOut_4_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_4_t_11 = aesSboxMid_4_10 ^ aesSboxOut_4_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_4_t_12 = aesSboxMid_4_16 ^ aesSboxMid_4_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_4_t_13 = aesSboxMid_4_0 ^ aesSboxOut_4_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_4_t_14 = aesSboxMid_4_2 ^ aesSboxMid_4_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_4_t_15 = aesSboxMid_4_5 ^ aesSboxOut_4_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_4_t_16 = aesSboxMid_4_6 ^ aesSboxOut_4_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_4_t_17 = aesSboxMid_4_7 ^ aesSboxOut_4_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_4_t_18 = aesSboxMid_4_8 ^ aesSboxOut_4_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_4_t_19 = aesSboxMid_4_13 ^ aesSboxOut_4_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_4_t_20 = aesSboxOut_4_t_0 ^ aesSboxOut_4_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_4_t_21 = aesSboxOut_4_t_1 ^ aesSboxOut_4_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_4_t_22 = aesSboxOut_4_t_3 ^ aesSboxOut_4_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_4_t_23 = aesSboxOut_4_t_18 ^ aesSboxOut_4_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_4_t_24 = aesSboxOut_4_t_15 ^ aesSboxOut_4_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_4_t_25 = aesSboxOut_4_t_6 ^ aesSboxOut_4_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_4_t_26 = aesSboxOut_4_t_7 ^ aesSboxOut_4_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_4_t_27 = aesSboxOut_4_t_8 ^ aesSboxOut_4_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_4_t_28 = aesSboxOut_4_t_11 ^ aesSboxOut_4_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_4_t_29 = aesSboxOut_4_t_11 ^ aesSboxOut_4_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_4_o_0 = aesSboxOut_4_t_6 ^ ~aesSboxOut_4_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_4_o_1 = aesSboxOut_4_t_13 ^ ~aesSboxOut_4_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_4_o_2 = aesSboxOut_4_t_25 ^ aesSboxOut_4_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_4_o_3 = aesSboxOut_4_t_20 ^ aesSboxOut_4_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_4_o_4 = aesSboxOut_4_t_6 ^ aesSboxOut_4_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_4_o_5 = aesSboxOut_4_t_19 ^ ~aesSboxOut_4_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_4_o_6 = aesSboxOut_4_t_16 ^ ~aesSboxOut_4_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_4_o_7 = aesSboxOut_4_t_6 ^ aesSboxOut_4_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_4 = {aesSboxOut_4_o_7,aesSboxOut_4_o_6,aesSboxOut_4_o_5,aesSboxOut_4_o_4,aesSboxOut_4_o_3,
    aesSboxOut_4_o_2,aesSboxOut_4_o_1,aesSboxOut_4_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_10_0 = src2Bytes_1[3] ^ src2Bytes_1[1]; // @[CryptoUtils.scala 83:20]
  wire  t_10_1 = src2Bytes_1[6] ^ src2Bytes_1[5]; // @[CryptoUtils.scala 84:20]
  wire  t_10_2 = src2Bytes_1[6] ^ src2Bytes_1[2]; // @[CryptoUtils.scala 85:20]
  wire  t_10_3 = src2Bytes_1[5] ^ src2Bytes_1[2]; // @[CryptoUtils.scala 86:20]
  wire  t_10_4 = src2Bytes_1[4] ^ src2Bytes_1[0]; // @[CryptoUtils.scala 87:20]
  wire  t_10_5 = src2Bytes_1[1] ^ src2Bytes_1[0]; // @[CryptoUtils.scala 88:20]
  wire  o_10_1 = src2Bytes_1[7] ^ src2Bytes_1[4]; // @[CryptoUtils.scala 90:20]
  wire  o_10_2 = src2Bytes_1[7] ^ src2Bytes_1[2]; // @[CryptoUtils.scala 91:20]
  wire  o_10_3 = src2Bytes_1[7] ^ src2Bytes_1[1]; // @[CryptoUtils.scala 92:20]
  wire  o_10_4 = src2Bytes_1[4] ^ src2Bytes_1[2]; // @[CryptoUtils.scala 93:20]
  wire  o_10_5 = o_10_1 ^ t_10_0; // @[CryptoUtils.scala 94:20]
  wire  o_10_6 = src2Bytes_1[0] ^ o_10_5; // @[CryptoUtils.scala 95:20]
  wire  o_10_7 = src2Bytes_1[0] ^ t_10_1; // @[CryptoUtils.scala 96:20]
  wire  o_10_8 = o_10_5 ^ t_10_1; // @[CryptoUtils.scala 97:20]
  wire  o_10_9 = o_10_3 ^ o_10_4; // @[CryptoUtils.scala 98:20]
  wire  o_10_10 = o_10_5 ^ t_10_2; // @[CryptoUtils.scala 99:20]
  wire  o_10_11 = t_10_0 ^ t_10_2; // @[CryptoUtils.scala 100:20]
  wire  o_10_12 = t_10_0 ^ t_10_3; // @[CryptoUtils.scala 101:20]
  wire  o_10_13 = o_10_7 ^ o_10_12; // @[CryptoUtils.scala 102:20]
  wire  o_10_14 = t_10_1 ^ t_10_4; // @[CryptoUtils.scala 103:20]
  wire  o_10_15 = o_10_1 ^ o_10_14; // @[CryptoUtils.scala 104:20]
  wire  o_10_16 = t_10_1 ^ t_10_5; // @[CryptoUtils.scala 105:20]
  wire  o_10_17 = o_10_2 ^ o_10_16; // @[CryptoUtils.scala 106:20]
  wire  o_10_18 = o_10_2 ^ o_10_8; // @[CryptoUtils.scala 107:20]
  wire  o_10_19 = o_10_15 ^ o_10_13; // @[CryptoUtils.scala 108:20]
  wire  o_10_20 = o_10_1 ^ t_10_3; // @[CryptoUtils.scala 109:20]
  wire  t_11_0 = o_10_3 ^ o_10_12; // @[CryptoUtils.scala 191:20]
  wire  t_11_1 = o_10_9 & o_10_5; // @[CryptoUtils.scala 192:20]
  wire  t_11_2 = o_10_17 & o_10_6; // @[CryptoUtils.scala 193:20]
  wire  t_11_3 = o_10_10 ^ t_11_1; // @[CryptoUtils.scala 194:20]
  wire  t_11_4 = o_10_14 & src2Bytes_1[0]; // @[CryptoUtils.scala 195:20]
  wire  t_11_5 = t_11_4 ^ t_11_1; // @[CryptoUtils.scala 196:20]
  wire  t_11_6 = o_10_3 & o_10_12; // @[CryptoUtils.scala 197:20]
  wire  t_11_7 = o_10_16 & o_10_7; // @[CryptoUtils.scala 198:20]
  wire  t_11_8 = t_11_0 ^ t_11_6; // @[CryptoUtils.scala 199:20]
  wire  t_11_9 = o_10_15 & o_10_13; // @[CryptoUtils.scala 200:20]
  wire  t_11_10 = t_11_9 ^ t_11_6; // @[CryptoUtils.scala 201:20]
  wire  t_11_11 = o_10_1 & o_10_11; // @[CryptoUtils.scala 202:20]
  wire  t_11_12 = o_10_4 & o_10_20; // @[CryptoUtils.scala 203:20]
  wire  t_11_13 = t_11_12 ^ t_11_11; // @[CryptoUtils.scala 204:20]
  wire  t_11_14 = o_10_2 & o_10_8; // @[CryptoUtils.scala 205:20]
  wire  t_11_15 = t_11_14 ^ t_11_11; // @[CryptoUtils.scala 206:20]
  wire  t_11_16 = t_11_3 ^ t_11_2; // @[CryptoUtils.scala 207:20]
  wire  t_11_17 = t_11_5 ^ o_10_18; // @[CryptoUtils.scala 208:20]
  wire  t_11_18 = t_11_8 ^ t_11_7; // @[CryptoUtils.scala 209:20]
  wire  t_11_19 = t_11_10 ^ t_11_15; // @[CryptoUtils.scala 210:20]
  wire  t_11_20 = t_11_16 ^ t_11_13; // @[CryptoUtils.scala 211:20]
  wire  t_11_21 = t_11_17 ^ t_11_15; // @[CryptoUtils.scala 212:20]
  wire  t_11_22 = t_11_18 ^ t_11_13; // @[CryptoUtils.scala 213:20]
  wire  t_11_23 = t_11_19 ^ o_10_19; // @[CryptoUtils.scala 214:20]
  wire  t_11_24 = t_11_22 ^ t_11_23; // @[CryptoUtils.scala 215:20]
  wire  t_11_25 = t_11_22 & t_11_20; // @[CryptoUtils.scala 216:20]
  wire  t_11_26 = t_11_21 ^ t_11_25; // @[CryptoUtils.scala 217:20]
  wire  t_11_27 = t_11_20 ^ t_11_21; // @[CryptoUtils.scala 218:20]
  wire  t_11_28 = t_11_23 ^ t_11_25; // @[CryptoUtils.scala 219:20]
  wire  t_11_29 = t_11_28 & t_11_27; // @[CryptoUtils.scala 220:20]
  wire  t_11_30 = t_11_26 & t_11_24; // @[CryptoUtils.scala 221:20]
  wire  t_11_31 = t_11_20 & t_11_23; // @[CryptoUtils.scala 222:20]
  wire  t_11_32 = t_11_27 & t_11_31; // @[CryptoUtils.scala 223:20]
  wire  t_11_33 = t_11_27 ^ t_11_25; // @[CryptoUtils.scala 224:20]
  wire  t_11_34 = t_11_21 & t_11_22; // @[CryptoUtils.scala 225:20]
  wire  t_11_35 = t_11_24 & t_11_34; // @[CryptoUtils.scala 226:20]
  wire  t_11_36 = t_11_24 ^ t_11_25; // @[CryptoUtils.scala 227:20]
  wire  t_11_37 = t_11_21 ^ t_11_29; // @[CryptoUtils.scala 228:20]
  wire  t_11_38 = t_11_32 ^ t_11_33; // @[CryptoUtils.scala 229:20]
  wire  t_11_39 = t_11_23 ^ t_11_30; // @[CryptoUtils.scala 230:20]
  wire  t_11_40 = t_11_35 ^ t_11_36; // @[CryptoUtils.scala 231:20]
  wire  t_11_41 = t_11_38 ^ t_11_40; // @[CryptoUtils.scala 232:20]
  wire  t_11_42 = t_11_37 ^ t_11_39; // @[CryptoUtils.scala 233:20]
  wire  t_11_43 = t_11_37 ^ t_11_38; // @[CryptoUtils.scala 234:20]
  wire  t_11_44 = t_11_39 ^ t_11_40; // @[CryptoUtils.scala 235:20]
  wire  t_11_45 = t_11_42 ^ t_11_41; // @[CryptoUtils.scala 236:20]
  wire  o_11_0 = t_11_38 & o_10_7; // @[CryptoUtils.scala 237:20]
  wire  o_11_1 = t_11_37 & o_10_13; // @[CryptoUtils.scala 238:20]
  wire  o_11_2 = t_11_42 & o_10_11; // @[CryptoUtils.scala 239:20]
  wire  o_11_3 = t_11_45 & o_10_20; // @[CryptoUtils.scala 240:20]
  wire  o_11_4 = t_11_41 & o_10_8; // @[CryptoUtils.scala 241:20]
  wire  o_11_5 = t_11_44 & o_10_9; // @[CryptoUtils.scala 242:20]
  wire  o_11_6 = t_11_40 & o_10_17; // @[CryptoUtils.scala 243:20]
  wire  o_11_7 = t_11_39 & o_10_14; // @[CryptoUtils.scala 244:20]
  wire  o_11_8 = t_11_43 & o_10_3; // @[CryptoUtils.scala 245:20]
  wire  o_11_9 = t_11_38 & o_10_16; // @[CryptoUtils.scala 246:20]
  wire  o_11_10 = t_11_37 & o_10_15; // @[CryptoUtils.scala 247:20]
  wire  o_11_11 = t_11_42 & o_10_1; // @[CryptoUtils.scala 248:20]
  wire  o_11_12 = t_11_45 & o_10_4; // @[CryptoUtils.scala 249:20]
  wire  o_11_13 = t_11_41 & o_10_2; // @[CryptoUtils.scala 250:20]
  wire  o_11_14 = t_11_44 & o_10_5; // @[CryptoUtils.scala 251:20]
  wire  o_11_15 = t_11_40 & o_10_6; // @[CryptoUtils.scala 252:20]
  wire  o_11_16 = t_11_39 & src2Bytes_1[0]; // @[CryptoUtils.scala 253:20]
  wire  o_11_17 = t_11_43 & o_10_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_5_t_0 = aesSboxMid_5_11 ^ aesSboxMid_5_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_5_t_1 = aesSboxMid_5_0 ^ aesSboxMid_5_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_5_t_2 = aesSboxMid_5_14 ^ aesSboxMid_5_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_5_t_3 = aesSboxMid_5_15 ^ aesSboxMid_5_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_5_t_4 = aesSboxMid_5_4 ^ aesSboxMid_5_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_5_t_5 = aesSboxMid_5_17 ^ aesSboxMid_5_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_5_t_6 = aesSboxMid_5_12 ^ aesSboxOut_5_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_5_t_7 = aesSboxMid_5_14 ^ aesSboxOut_5_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_5_t_8 = aesSboxMid_5_1 ^ aesSboxMid_5_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_5_t_9 = aesSboxMid_5_2 ^ aesSboxMid_5_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_5_t_10 = aesSboxMid_5_3 ^ aesSboxOut_5_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_5_t_11 = aesSboxMid_5_10 ^ aesSboxOut_5_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_5_t_12 = aesSboxMid_5_16 ^ aesSboxMid_5_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_5_t_13 = aesSboxMid_5_0 ^ aesSboxOut_5_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_5_t_14 = aesSboxMid_5_2 ^ aesSboxMid_5_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_5_t_15 = aesSboxMid_5_5 ^ aesSboxOut_5_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_5_t_16 = aesSboxMid_5_6 ^ aesSboxOut_5_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_5_t_17 = aesSboxMid_5_7 ^ aesSboxOut_5_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_5_t_18 = aesSboxMid_5_8 ^ aesSboxOut_5_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_5_t_19 = aesSboxMid_5_13 ^ aesSboxOut_5_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_5_t_20 = aesSboxOut_5_t_0 ^ aesSboxOut_5_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_5_t_21 = aesSboxOut_5_t_1 ^ aesSboxOut_5_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_5_t_22 = aesSboxOut_5_t_3 ^ aesSboxOut_5_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_5_t_23 = aesSboxOut_5_t_18 ^ aesSboxOut_5_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_5_t_24 = aesSboxOut_5_t_15 ^ aesSboxOut_5_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_5_t_25 = aesSboxOut_5_t_6 ^ aesSboxOut_5_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_5_t_26 = aesSboxOut_5_t_7 ^ aesSboxOut_5_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_5_t_27 = aesSboxOut_5_t_8 ^ aesSboxOut_5_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_5_t_28 = aesSboxOut_5_t_11 ^ aesSboxOut_5_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_5_t_29 = aesSboxOut_5_t_11 ^ aesSboxOut_5_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_5_o_0 = aesSboxOut_5_t_6 ^ ~aesSboxOut_5_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_5_o_1 = aesSboxOut_5_t_13 ^ ~aesSboxOut_5_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_5_o_2 = aesSboxOut_5_t_25 ^ aesSboxOut_5_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_5_o_3 = aesSboxOut_5_t_20 ^ aesSboxOut_5_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_5_o_4 = aesSboxOut_5_t_6 ^ aesSboxOut_5_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_5_o_5 = aesSboxOut_5_t_19 ^ ~aesSboxOut_5_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_5_o_6 = aesSboxOut_5_t_16 ^ ~aesSboxOut_5_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_5_o_7 = aesSboxOut_5_t_6 ^ aesSboxOut_5_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_5 = {aesSboxOut_5_o_7,aesSboxOut_5_o_6,aesSboxOut_5_o_5,aesSboxOut_5_o_4,aesSboxOut_5_o_3,
    aesSboxOut_5_o_2,aesSboxOut_5_o_1,aesSboxOut_5_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_12_0 = src2Bytes_6[3] ^ src2Bytes_6[1]; // @[CryptoUtils.scala 83:20]
  wire  t_12_1 = src2Bytes_6[6] ^ src2Bytes_6[5]; // @[CryptoUtils.scala 84:20]
  wire  t_12_2 = src2Bytes_6[6] ^ src2Bytes_6[2]; // @[CryptoUtils.scala 85:20]
  wire  t_12_3 = src2Bytes_6[5] ^ src2Bytes_6[2]; // @[CryptoUtils.scala 86:20]
  wire  t_12_4 = src2Bytes_6[4] ^ src2Bytes_6[0]; // @[CryptoUtils.scala 87:20]
  wire  t_12_5 = src2Bytes_6[1] ^ src2Bytes_6[0]; // @[CryptoUtils.scala 88:20]
  wire  o_12_1 = src2Bytes_6[7] ^ src2Bytes_6[4]; // @[CryptoUtils.scala 90:20]
  wire  o_12_2 = src2Bytes_6[7] ^ src2Bytes_6[2]; // @[CryptoUtils.scala 91:20]
  wire  o_12_3 = src2Bytes_6[7] ^ src2Bytes_6[1]; // @[CryptoUtils.scala 92:20]
  wire  o_12_4 = src2Bytes_6[4] ^ src2Bytes_6[2]; // @[CryptoUtils.scala 93:20]
  wire  o_12_5 = o_12_1 ^ t_12_0; // @[CryptoUtils.scala 94:20]
  wire  o_12_6 = src2Bytes_6[0] ^ o_12_5; // @[CryptoUtils.scala 95:20]
  wire  o_12_7 = src2Bytes_6[0] ^ t_12_1; // @[CryptoUtils.scala 96:20]
  wire  o_12_8 = o_12_5 ^ t_12_1; // @[CryptoUtils.scala 97:20]
  wire  o_12_9 = o_12_3 ^ o_12_4; // @[CryptoUtils.scala 98:20]
  wire  o_12_10 = o_12_5 ^ t_12_2; // @[CryptoUtils.scala 99:20]
  wire  o_12_11 = t_12_0 ^ t_12_2; // @[CryptoUtils.scala 100:20]
  wire  o_12_12 = t_12_0 ^ t_12_3; // @[CryptoUtils.scala 101:20]
  wire  o_12_13 = o_12_7 ^ o_12_12; // @[CryptoUtils.scala 102:20]
  wire  o_12_14 = t_12_1 ^ t_12_4; // @[CryptoUtils.scala 103:20]
  wire  o_12_15 = o_12_1 ^ o_12_14; // @[CryptoUtils.scala 104:20]
  wire  o_12_16 = t_12_1 ^ t_12_5; // @[CryptoUtils.scala 105:20]
  wire  o_12_17 = o_12_2 ^ o_12_16; // @[CryptoUtils.scala 106:20]
  wire  o_12_18 = o_12_2 ^ o_12_8; // @[CryptoUtils.scala 107:20]
  wire  o_12_19 = o_12_15 ^ o_12_13; // @[CryptoUtils.scala 108:20]
  wire  o_12_20 = o_12_1 ^ t_12_3; // @[CryptoUtils.scala 109:20]
  wire  t_13_0 = o_12_3 ^ o_12_12; // @[CryptoUtils.scala 191:20]
  wire  t_13_1 = o_12_9 & o_12_5; // @[CryptoUtils.scala 192:20]
  wire  t_13_2 = o_12_17 & o_12_6; // @[CryptoUtils.scala 193:20]
  wire  t_13_3 = o_12_10 ^ t_13_1; // @[CryptoUtils.scala 194:20]
  wire  t_13_4 = o_12_14 & src2Bytes_6[0]; // @[CryptoUtils.scala 195:20]
  wire  t_13_5 = t_13_4 ^ t_13_1; // @[CryptoUtils.scala 196:20]
  wire  t_13_6 = o_12_3 & o_12_12; // @[CryptoUtils.scala 197:20]
  wire  t_13_7 = o_12_16 & o_12_7; // @[CryptoUtils.scala 198:20]
  wire  t_13_8 = t_13_0 ^ t_13_6; // @[CryptoUtils.scala 199:20]
  wire  t_13_9 = o_12_15 & o_12_13; // @[CryptoUtils.scala 200:20]
  wire  t_13_10 = t_13_9 ^ t_13_6; // @[CryptoUtils.scala 201:20]
  wire  t_13_11 = o_12_1 & o_12_11; // @[CryptoUtils.scala 202:20]
  wire  t_13_12 = o_12_4 & o_12_20; // @[CryptoUtils.scala 203:20]
  wire  t_13_13 = t_13_12 ^ t_13_11; // @[CryptoUtils.scala 204:20]
  wire  t_13_14 = o_12_2 & o_12_8; // @[CryptoUtils.scala 205:20]
  wire  t_13_15 = t_13_14 ^ t_13_11; // @[CryptoUtils.scala 206:20]
  wire  t_13_16 = t_13_3 ^ t_13_2; // @[CryptoUtils.scala 207:20]
  wire  t_13_17 = t_13_5 ^ o_12_18; // @[CryptoUtils.scala 208:20]
  wire  t_13_18 = t_13_8 ^ t_13_7; // @[CryptoUtils.scala 209:20]
  wire  t_13_19 = t_13_10 ^ t_13_15; // @[CryptoUtils.scala 210:20]
  wire  t_13_20 = t_13_16 ^ t_13_13; // @[CryptoUtils.scala 211:20]
  wire  t_13_21 = t_13_17 ^ t_13_15; // @[CryptoUtils.scala 212:20]
  wire  t_13_22 = t_13_18 ^ t_13_13; // @[CryptoUtils.scala 213:20]
  wire  t_13_23 = t_13_19 ^ o_12_19; // @[CryptoUtils.scala 214:20]
  wire  t_13_24 = t_13_22 ^ t_13_23; // @[CryptoUtils.scala 215:20]
  wire  t_13_25 = t_13_22 & t_13_20; // @[CryptoUtils.scala 216:20]
  wire  t_13_26 = t_13_21 ^ t_13_25; // @[CryptoUtils.scala 217:20]
  wire  t_13_27 = t_13_20 ^ t_13_21; // @[CryptoUtils.scala 218:20]
  wire  t_13_28 = t_13_23 ^ t_13_25; // @[CryptoUtils.scala 219:20]
  wire  t_13_29 = t_13_28 & t_13_27; // @[CryptoUtils.scala 220:20]
  wire  t_13_30 = t_13_26 & t_13_24; // @[CryptoUtils.scala 221:20]
  wire  t_13_31 = t_13_20 & t_13_23; // @[CryptoUtils.scala 222:20]
  wire  t_13_32 = t_13_27 & t_13_31; // @[CryptoUtils.scala 223:20]
  wire  t_13_33 = t_13_27 ^ t_13_25; // @[CryptoUtils.scala 224:20]
  wire  t_13_34 = t_13_21 & t_13_22; // @[CryptoUtils.scala 225:20]
  wire  t_13_35 = t_13_24 & t_13_34; // @[CryptoUtils.scala 226:20]
  wire  t_13_36 = t_13_24 ^ t_13_25; // @[CryptoUtils.scala 227:20]
  wire  t_13_37 = t_13_21 ^ t_13_29; // @[CryptoUtils.scala 228:20]
  wire  t_13_38 = t_13_32 ^ t_13_33; // @[CryptoUtils.scala 229:20]
  wire  t_13_39 = t_13_23 ^ t_13_30; // @[CryptoUtils.scala 230:20]
  wire  t_13_40 = t_13_35 ^ t_13_36; // @[CryptoUtils.scala 231:20]
  wire  t_13_41 = t_13_38 ^ t_13_40; // @[CryptoUtils.scala 232:20]
  wire  t_13_42 = t_13_37 ^ t_13_39; // @[CryptoUtils.scala 233:20]
  wire  t_13_43 = t_13_37 ^ t_13_38; // @[CryptoUtils.scala 234:20]
  wire  t_13_44 = t_13_39 ^ t_13_40; // @[CryptoUtils.scala 235:20]
  wire  t_13_45 = t_13_42 ^ t_13_41; // @[CryptoUtils.scala 236:20]
  wire  o_13_0 = t_13_38 & o_12_7; // @[CryptoUtils.scala 237:20]
  wire  o_13_1 = t_13_37 & o_12_13; // @[CryptoUtils.scala 238:20]
  wire  o_13_2 = t_13_42 & o_12_11; // @[CryptoUtils.scala 239:20]
  wire  o_13_3 = t_13_45 & o_12_20; // @[CryptoUtils.scala 240:20]
  wire  o_13_4 = t_13_41 & o_12_8; // @[CryptoUtils.scala 241:20]
  wire  o_13_5 = t_13_44 & o_12_9; // @[CryptoUtils.scala 242:20]
  wire  o_13_6 = t_13_40 & o_12_17; // @[CryptoUtils.scala 243:20]
  wire  o_13_7 = t_13_39 & o_12_14; // @[CryptoUtils.scala 244:20]
  wire  o_13_8 = t_13_43 & o_12_3; // @[CryptoUtils.scala 245:20]
  wire  o_13_9 = t_13_38 & o_12_16; // @[CryptoUtils.scala 246:20]
  wire  o_13_10 = t_13_37 & o_12_15; // @[CryptoUtils.scala 247:20]
  wire  o_13_11 = t_13_42 & o_12_1; // @[CryptoUtils.scala 248:20]
  wire  o_13_12 = t_13_45 & o_12_4; // @[CryptoUtils.scala 249:20]
  wire  o_13_13 = t_13_41 & o_12_2; // @[CryptoUtils.scala 250:20]
  wire  o_13_14 = t_13_44 & o_12_5; // @[CryptoUtils.scala 251:20]
  wire  o_13_15 = t_13_40 & o_12_6; // @[CryptoUtils.scala 252:20]
  wire  o_13_16 = t_13_39 & src2Bytes_6[0]; // @[CryptoUtils.scala 253:20]
  wire  o_13_17 = t_13_43 & o_12_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_6_t_0 = aesSboxMid_6_11 ^ aesSboxMid_6_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_6_t_1 = aesSboxMid_6_0 ^ aesSboxMid_6_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_6_t_2 = aesSboxMid_6_14 ^ aesSboxMid_6_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_6_t_3 = aesSboxMid_6_15 ^ aesSboxMid_6_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_6_t_4 = aesSboxMid_6_4 ^ aesSboxMid_6_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_6_t_5 = aesSboxMid_6_17 ^ aesSboxMid_6_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_6_t_6 = aesSboxMid_6_12 ^ aesSboxOut_6_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_6_t_7 = aesSboxMid_6_14 ^ aesSboxOut_6_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_6_t_8 = aesSboxMid_6_1 ^ aesSboxMid_6_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_6_t_9 = aesSboxMid_6_2 ^ aesSboxMid_6_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_6_t_10 = aesSboxMid_6_3 ^ aesSboxOut_6_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_6_t_11 = aesSboxMid_6_10 ^ aesSboxOut_6_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_6_t_12 = aesSboxMid_6_16 ^ aesSboxMid_6_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_6_t_13 = aesSboxMid_6_0 ^ aesSboxOut_6_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_6_t_14 = aesSboxMid_6_2 ^ aesSboxMid_6_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_6_t_15 = aesSboxMid_6_5 ^ aesSboxOut_6_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_6_t_16 = aesSboxMid_6_6 ^ aesSboxOut_6_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_6_t_17 = aesSboxMid_6_7 ^ aesSboxOut_6_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_6_t_18 = aesSboxMid_6_8 ^ aesSboxOut_6_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_6_t_19 = aesSboxMid_6_13 ^ aesSboxOut_6_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_6_t_20 = aesSboxOut_6_t_0 ^ aesSboxOut_6_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_6_t_21 = aesSboxOut_6_t_1 ^ aesSboxOut_6_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_6_t_22 = aesSboxOut_6_t_3 ^ aesSboxOut_6_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_6_t_23 = aesSboxOut_6_t_18 ^ aesSboxOut_6_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_6_t_24 = aesSboxOut_6_t_15 ^ aesSboxOut_6_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_6_t_25 = aesSboxOut_6_t_6 ^ aesSboxOut_6_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_6_t_26 = aesSboxOut_6_t_7 ^ aesSboxOut_6_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_6_t_27 = aesSboxOut_6_t_8 ^ aesSboxOut_6_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_6_t_28 = aesSboxOut_6_t_11 ^ aesSboxOut_6_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_6_t_29 = aesSboxOut_6_t_11 ^ aesSboxOut_6_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_6_o_0 = aesSboxOut_6_t_6 ^ ~aesSboxOut_6_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_6_o_1 = aesSboxOut_6_t_13 ^ ~aesSboxOut_6_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_6_o_2 = aesSboxOut_6_t_25 ^ aesSboxOut_6_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_6_o_3 = aesSboxOut_6_t_20 ^ aesSboxOut_6_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_6_o_4 = aesSboxOut_6_t_6 ^ aesSboxOut_6_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_6_o_5 = aesSboxOut_6_t_19 ^ ~aesSboxOut_6_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_6_o_6 = aesSboxOut_6_t_16 ^ ~aesSboxOut_6_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_6_o_7 = aesSboxOut_6_t_6 ^ aesSboxOut_6_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_6 = {aesSboxOut_6_o_7,aesSboxOut_6_o_6,aesSboxOut_6_o_5,aesSboxOut_6_o_4,aesSboxOut_6_o_3,
    aesSboxOut_6_o_2,aesSboxOut_6_o_1,aesSboxOut_6_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_14_0 = src1Bytes_3[3] ^ src1Bytes_3[1]; // @[CryptoUtils.scala 83:20]
  wire  t_14_1 = src1Bytes_3[6] ^ src1Bytes_3[5]; // @[CryptoUtils.scala 84:20]
  wire  t_14_2 = src1Bytes_3[6] ^ src1Bytes_3[2]; // @[CryptoUtils.scala 85:20]
  wire  t_14_3 = src1Bytes_3[5] ^ src1Bytes_3[2]; // @[CryptoUtils.scala 86:20]
  wire  t_14_4 = src1Bytes_3[4] ^ src1Bytes_3[0]; // @[CryptoUtils.scala 87:20]
  wire  t_14_5 = src1Bytes_3[1] ^ src1Bytes_3[0]; // @[CryptoUtils.scala 88:20]
  wire  o_14_1 = src1Bytes_3[7] ^ src1Bytes_3[4]; // @[CryptoUtils.scala 90:20]
  wire  o_14_2 = src1Bytes_3[7] ^ src1Bytes_3[2]; // @[CryptoUtils.scala 91:20]
  wire  o_14_3 = src1Bytes_3[7] ^ src1Bytes_3[1]; // @[CryptoUtils.scala 92:20]
  wire  o_14_4 = src1Bytes_3[4] ^ src1Bytes_3[2]; // @[CryptoUtils.scala 93:20]
  wire  o_14_5 = o_14_1 ^ t_14_0; // @[CryptoUtils.scala 94:20]
  wire  o_14_6 = src1Bytes_3[0] ^ o_14_5; // @[CryptoUtils.scala 95:20]
  wire  o_14_7 = src1Bytes_3[0] ^ t_14_1; // @[CryptoUtils.scala 96:20]
  wire  o_14_8 = o_14_5 ^ t_14_1; // @[CryptoUtils.scala 97:20]
  wire  o_14_9 = o_14_3 ^ o_14_4; // @[CryptoUtils.scala 98:20]
  wire  o_14_10 = o_14_5 ^ t_14_2; // @[CryptoUtils.scala 99:20]
  wire  o_14_11 = t_14_0 ^ t_14_2; // @[CryptoUtils.scala 100:20]
  wire  o_14_12 = t_14_0 ^ t_14_3; // @[CryptoUtils.scala 101:20]
  wire  o_14_13 = o_14_7 ^ o_14_12; // @[CryptoUtils.scala 102:20]
  wire  o_14_14 = t_14_1 ^ t_14_4; // @[CryptoUtils.scala 103:20]
  wire  o_14_15 = o_14_1 ^ o_14_14; // @[CryptoUtils.scala 104:20]
  wire  o_14_16 = t_14_1 ^ t_14_5; // @[CryptoUtils.scala 105:20]
  wire  o_14_17 = o_14_2 ^ o_14_16; // @[CryptoUtils.scala 106:20]
  wire  o_14_18 = o_14_2 ^ o_14_8; // @[CryptoUtils.scala 107:20]
  wire  o_14_19 = o_14_15 ^ o_14_13; // @[CryptoUtils.scala 108:20]
  wire  o_14_20 = o_14_1 ^ t_14_3; // @[CryptoUtils.scala 109:20]
  wire  t_15_0 = o_14_3 ^ o_14_12; // @[CryptoUtils.scala 191:20]
  wire  t_15_1 = o_14_9 & o_14_5; // @[CryptoUtils.scala 192:20]
  wire  t_15_2 = o_14_17 & o_14_6; // @[CryptoUtils.scala 193:20]
  wire  t_15_3 = o_14_10 ^ t_15_1; // @[CryptoUtils.scala 194:20]
  wire  t_15_4 = o_14_14 & src1Bytes_3[0]; // @[CryptoUtils.scala 195:20]
  wire  t_15_5 = t_15_4 ^ t_15_1; // @[CryptoUtils.scala 196:20]
  wire  t_15_6 = o_14_3 & o_14_12; // @[CryptoUtils.scala 197:20]
  wire  t_15_7 = o_14_16 & o_14_7; // @[CryptoUtils.scala 198:20]
  wire  t_15_8 = t_15_0 ^ t_15_6; // @[CryptoUtils.scala 199:20]
  wire  t_15_9 = o_14_15 & o_14_13; // @[CryptoUtils.scala 200:20]
  wire  t_15_10 = t_15_9 ^ t_15_6; // @[CryptoUtils.scala 201:20]
  wire  t_15_11 = o_14_1 & o_14_11; // @[CryptoUtils.scala 202:20]
  wire  t_15_12 = o_14_4 & o_14_20; // @[CryptoUtils.scala 203:20]
  wire  t_15_13 = t_15_12 ^ t_15_11; // @[CryptoUtils.scala 204:20]
  wire  t_15_14 = o_14_2 & o_14_8; // @[CryptoUtils.scala 205:20]
  wire  t_15_15 = t_15_14 ^ t_15_11; // @[CryptoUtils.scala 206:20]
  wire  t_15_16 = t_15_3 ^ t_15_2; // @[CryptoUtils.scala 207:20]
  wire  t_15_17 = t_15_5 ^ o_14_18; // @[CryptoUtils.scala 208:20]
  wire  t_15_18 = t_15_8 ^ t_15_7; // @[CryptoUtils.scala 209:20]
  wire  t_15_19 = t_15_10 ^ t_15_15; // @[CryptoUtils.scala 210:20]
  wire  t_15_20 = t_15_16 ^ t_15_13; // @[CryptoUtils.scala 211:20]
  wire  t_15_21 = t_15_17 ^ t_15_15; // @[CryptoUtils.scala 212:20]
  wire  t_15_22 = t_15_18 ^ t_15_13; // @[CryptoUtils.scala 213:20]
  wire  t_15_23 = t_15_19 ^ o_14_19; // @[CryptoUtils.scala 214:20]
  wire  t_15_24 = t_15_22 ^ t_15_23; // @[CryptoUtils.scala 215:20]
  wire  t_15_25 = t_15_22 & t_15_20; // @[CryptoUtils.scala 216:20]
  wire  t_15_26 = t_15_21 ^ t_15_25; // @[CryptoUtils.scala 217:20]
  wire  t_15_27 = t_15_20 ^ t_15_21; // @[CryptoUtils.scala 218:20]
  wire  t_15_28 = t_15_23 ^ t_15_25; // @[CryptoUtils.scala 219:20]
  wire  t_15_29 = t_15_28 & t_15_27; // @[CryptoUtils.scala 220:20]
  wire  t_15_30 = t_15_26 & t_15_24; // @[CryptoUtils.scala 221:20]
  wire  t_15_31 = t_15_20 & t_15_23; // @[CryptoUtils.scala 222:20]
  wire  t_15_32 = t_15_27 & t_15_31; // @[CryptoUtils.scala 223:20]
  wire  t_15_33 = t_15_27 ^ t_15_25; // @[CryptoUtils.scala 224:20]
  wire  t_15_34 = t_15_21 & t_15_22; // @[CryptoUtils.scala 225:20]
  wire  t_15_35 = t_15_24 & t_15_34; // @[CryptoUtils.scala 226:20]
  wire  t_15_36 = t_15_24 ^ t_15_25; // @[CryptoUtils.scala 227:20]
  wire  t_15_37 = t_15_21 ^ t_15_29; // @[CryptoUtils.scala 228:20]
  wire  t_15_38 = t_15_32 ^ t_15_33; // @[CryptoUtils.scala 229:20]
  wire  t_15_39 = t_15_23 ^ t_15_30; // @[CryptoUtils.scala 230:20]
  wire  t_15_40 = t_15_35 ^ t_15_36; // @[CryptoUtils.scala 231:20]
  wire  t_15_41 = t_15_38 ^ t_15_40; // @[CryptoUtils.scala 232:20]
  wire  t_15_42 = t_15_37 ^ t_15_39; // @[CryptoUtils.scala 233:20]
  wire  t_15_43 = t_15_37 ^ t_15_38; // @[CryptoUtils.scala 234:20]
  wire  t_15_44 = t_15_39 ^ t_15_40; // @[CryptoUtils.scala 235:20]
  wire  t_15_45 = t_15_42 ^ t_15_41; // @[CryptoUtils.scala 236:20]
  wire  o_15_0 = t_15_38 & o_14_7; // @[CryptoUtils.scala 237:20]
  wire  o_15_1 = t_15_37 & o_14_13; // @[CryptoUtils.scala 238:20]
  wire  o_15_2 = t_15_42 & o_14_11; // @[CryptoUtils.scala 239:20]
  wire  o_15_3 = t_15_45 & o_14_20; // @[CryptoUtils.scala 240:20]
  wire  o_15_4 = t_15_41 & o_14_8; // @[CryptoUtils.scala 241:20]
  wire  o_15_5 = t_15_44 & o_14_9; // @[CryptoUtils.scala 242:20]
  wire  o_15_6 = t_15_40 & o_14_17; // @[CryptoUtils.scala 243:20]
  wire  o_15_7 = t_15_39 & o_14_14; // @[CryptoUtils.scala 244:20]
  wire  o_15_8 = t_15_43 & o_14_3; // @[CryptoUtils.scala 245:20]
  wire  o_15_9 = t_15_38 & o_14_16; // @[CryptoUtils.scala 246:20]
  wire  o_15_10 = t_15_37 & o_14_15; // @[CryptoUtils.scala 247:20]
  wire  o_15_11 = t_15_42 & o_14_1; // @[CryptoUtils.scala 248:20]
  wire  o_15_12 = t_15_45 & o_14_4; // @[CryptoUtils.scala 249:20]
  wire  o_15_13 = t_15_41 & o_14_2; // @[CryptoUtils.scala 250:20]
  wire  o_15_14 = t_15_44 & o_14_5; // @[CryptoUtils.scala 251:20]
  wire  o_15_15 = t_15_40 & o_14_6; // @[CryptoUtils.scala 252:20]
  wire  o_15_16 = t_15_39 & src1Bytes_3[0]; // @[CryptoUtils.scala 253:20]
  wire  o_15_17 = t_15_43 & o_14_12; // @[CryptoUtils.scala 254:20]
  wire  aesSboxOut_7_t_0 = aesSboxMid_7_11 ^ aesSboxMid_7_12; // @[CryptoUtils.scala 264:20]
  wire  aesSboxOut_7_t_1 = aesSboxMid_7_0 ^ aesSboxMid_7_6; // @[CryptoUtils.scala 265:20]
  wire  aesSboxOut_7_t_2 = aesSboxMid_7_14 ^ aesSboxMid_7_16; // @[CryptoUtils.scala 266:20]
  wire  aesSboxOut_7_t_3 = aesSboxMid_7_15 ^ aesSboxMid_7_5; // @[CryptoUtils.scala 267:20]
  wire  aesSboxOut_7_t_4 = aesSboxMid_7_4 ^ aesSboxMid_7_8; // @[CryptoUtils.scala 268:20]
  wire  aesSboxOut_7_t_5 = aesSboxMid_7_17 ^ aesSboxMid_7_11; // @[CryptoUtils.scala 269:20]
  wire  aesSboxOut_7_t_6 = aesSboxMid_7_12 ^ aesSboxOut_7_t_5; // @[CryptoUtils.scala 270:20]
  wire  aesSboxOut_7_t_7 = aesSboxMid_7_14 ^ aesSboxOut_7_t_3; // @[CryptoUtils.scala 271:20]
  wire  aesSboxOut_7_t_8 = aesSboxMid_7_1 ^ aesSboxMid_7_9; // @[CryptoUtils.scala 272:20]
  wire  aesSboxOut_7_t_9 = aesSboxMid_7_2 ^ aesSboxMid_7_3; // @[CryptoUtils.scala 273:20]
  wire  aesSboxOut_7_t_10 = aesSboxMid_7_3 ^ aesSboxOut_7_t_4; // @[CryptoUtils.scala 274:20]
  wire  aesSboxOut_7_t_11 = aesSboxMid_7_10 ^ aesSboxOut_7_t_2; // @[CryptoUtils.scala 275:20]
  wire  aesSboxOut_7_t_12 = aesSboxMid_7_16 ^ aesSboxMid_7_1; // @[CryptoUtils.scala 276:20]
  wire  aesSboxOut_7_t_13 = aesSboxMid_7_0 ^ aesSboxOut_7_t_0; // @[CryptoUtils.scala 277:20]
  wire  aesSboxOut_7_t_14 = aesSboxMid_7_2 ^ aesSboxMid_7_11; // @[CryptoUtils.scala 278:20]
  wire  aesSboxOut_7_t_15 = aesSboxMid_7_5 ^ aesSboxOut_7_t_1; // @[CryptoUtils.scala 279:20]
  wire  aesSboxOut_7_t_16 = aesSboxMid_7_6 ^ aesSboxOut_7_t_0; // @[CryptoUtils.scala 280:20]
  wire  aesSboxOut_7_t_17 = aesSboxMid_7_7 ^ aesSboxOut_7_t_1; // @[CryptoUtils.scala 281:20]
  wire  aesSboxOut_7_t_18 = aesSboxMid_7_8 ^ aesSboxOut_7_t_8; // @[CryptoUtils.scala 282:20]
  wire  aesSboxOut_7_t_19 = aesSboxMid_7_13 ^ aesSboxOut_7_t_4; // @[CryptoUtils.scala 283:20]
  wire  aesSboxOut_7_t_20 = aesSboxOut_7_t_0 ^ aesSboxOut_7_t_1; // @[CryptoUtils.scala 284:20]
  wire  aesSboxOut_7_t_21 = aesSboxOut_7_t_1 ^ aesSboxOut_7_t_7; // @[CryptoUtils.scala 285:20]
  wire  aesSboxOut_7_t_22 = aesSboxOut_7_t_3 ^ aesSboxOut_7_t_12; // @[CryptoUtils.scala 286:20]
  wire  aesSboxOut_7_t_23 = aesSboxOut_7_t_18 ^ aesSboxOut_7_t_2; // @[CryptoUtils.scala 287:20]
  wire  aesSboxOut_7_t_24 = aesSboxOut_7_t_15 ^ aesSboxOut_7_t_9; // @[CryptoUtils.scala 288:20]
  wire  aesSboxOut_7_t_25 = aesSboxOut_7_t_6 ^ aesSboxOut_7_t_10; // @[CryptoUtils.scala 289:20]
  wire  aesSboxOut_7_t_26 = aesSboxOut_7_t_7 ^ aesSboxOut_7_t_9; // @[CryptoUtils.scala 290:20]
  wire  aesSboxOut_7_t_27 = aesSboxOut_7_t_8 ^ aesSboxOut_7_t_10; // @[CryptoUtils.scala 291:20]
  wire  aesSboxOut_7_t_28 = aesSboxOut_7_t_11 ^ aesSboxOut_7_t_14; // @[CryptoUtils.scala 292:20]
  wire  aesSboxOut_7_t_29 = aesSboxOut_7_t_11 ^ aesSboxOut_7_t_17; // @[CryptoUtils.scala 293:20]
  wire  aesSboxOut_7_o_0 = aesSboxOut_7_t_6 ^ ~aesSboxOut_7_t_23; // @[CryptoUtils.scala 294:20]
  wire  aesSboxOut_7_o_1 = aesSboxOut_7_t_13 ^ ~aesSboxOut_7_t_27; // @[CryptoUtils.scala 295:20]
  wire  aesSboxOut_7_o_2 = aesSboxOut_7_t_25 ^ aesSboxOut_7_t_29; // @[CryptoUtils.scala 296:20]
  wire  aesSboxOut_7_o_3 = aesSboxOut_7_t_20 ^ aesSboxOut_7_t_22; // @[CryptoUtils.scala 297:20]
  wire  aesSboxOut_7_o_4 = aesSboxOut_7_t_6 ^ aesSboxOut_7_t_21; // @[CryptoUtils.scala 298:20]
  wire  aesSboxOut_7_o_5 = aesSboxOut_7_t_19 ^ ~aesSboxOut_7_t_28; // @[CryptoUtils.scala 299:20]
  wire  aesSboxOut_7_o_6 = aesSboxOut_7_t_16 ^ ~aesSboxOut_7_t_26; // @[CryptoUtils.scala 300:20]
  wire  aesSboxOut_7_o_7 = aesSboxOut_7_t_6 ^ aesSboxOut_7_t_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] aesSboxOut_7 = {aesSboxOut_7_o_7,aesSboxOut_7_o_6,aesSboxOut_7_o_5,aesSboxOut_7_o_4,aesSboxOut_7_o_3,
    aesSboxOut_7_o_2,aesSboxOut_7_o_1,aesSboxOut_7_o_0}; // @[CryptoUtils.scala 302:7]
  wire  t_16_1 = src1Bytes_0[6] ^ src1Bytes_0[1]; // @[CryptoUtils.scala 120:20]
  wire  t_16_2 = src1Bytes_0[5] ^ ~src1Bytes_0[2]; // @[CryptoUtils.scala 121:20]
  wire  t_16_3 = src1Bytes_0[2] ^ ~src1Bytes_0[1]; // @[CryptoUtils.scala 122:20]
  wire  t_16_4 = src1Bytes_0[5] ^ ~src1Bytes_0[3]; // @[CryptoUtils.scala 123:20]
  wire  o_16_0 = src1Bytes_0[7] ^ t_16_2; // @[CryptoUtils.scala 124:20]
  wire  o_16_1 = src1Bytes_0[4] ^ src1Bytes_0[3]; // @[CryptoUtils.scala 125:20]
  wire  o_16_2 = src1Bytes_0[7] ^ ~src1Bytes_0[6]; // @[CryptoUtils.scala 126:20]
  wire  o_16_3 = o_16_1 ^ t__5; // @[CryptoUtils.scala 127:20]
  wire  o_16_6 = src1Bytes_0[6] ^ ~o__1; // @[CryptoUtils.scala 130:20]
  wire  o_16_4 = src1Bytes_0[3] ^ o_16_6; // @[CryptoUtils.scala 128:20]
  wire  o_16_16 = src1Bytes_0[6] ^ ~src1Bytes_0[4]; // @[CryptoUtils.scala 140:20]
  wire  o_16_5 = o_16_16 ^ t_16_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_25 = ~o_16_1; // @[CryptoUtils.scala 131:22]
  wire  o_16_7 = src1Bytes_0[0] ^ ~o_16_1; // @[CryptoUtils.scala 131:20]
  wire  o_16_18 = src1Bytes_0[3] ^ ~src1Bytes_0[0]; // @[CryptoUtils.scala 142:20]
  wire  o_16_8 = o_16_2 ^ o_16_18; // @[CryptoUtils.scala 132:20]
  wire  o_16_9 = o_16_2 ^ t__5; // @[CryptoUtils.scala 133:20]
  wire  o_16_10 = o_16_8 ^ t_16_3; // @[CryptoUtils.scala 134:20]
  wire  o_16_20 = o_16_1 ^ t_16_3; // @[CryptoUtils.scala 144:20]
  wire  o_16_11 = o_16_8 ^ o_16_20; // @[CryptoUtils.scala 135:20]
  wire  o_16_12 = t_16_1 ^ t_16_4; // @[CryptoUtils.scala 136:20]
  wire  o_16_14 = o_16_16 ^ t__5; // @[CryptoUtils.scala 138:20]
  wire  o_16_13 = src1Bytes_0[5] ^ ~o_16_14; // @[CryptoUtils.scala 137:20]
  wire  o_16_15 = o_16_18 ^ t_16_1; // @[CryptoUtils.scala 139:20]
  wire  o_16_19 = src1Bytes_0[5] ^ _o_7_T_25; // @[CryptoUtils.scala 143:20]
  wire  t_17_0 = o_16_3 ^ o_16_12; // @[CryptoUtils.scala 191:20]
  wire  t_17_1 = o_16_9 & o_16_5; // @[CryptoUtils.scala 192:20]
  wire  t_17_2 = o__1 & o_16_6; // @[CryptoUtils.scala 193:20]
  wire  t_17_3 = o_16_10 ^ t_17_1; // @[CryptoUtils.scala 194:20]
  wire  t_17_4 = o_16_14 & o_16_0; // @[CryptoUtils.scala 195:20]
  wire  t_17_5 = t_17_4 ^ t_17_1; // @[CryptoUtils.scala 196:20]
  wire  t_17_6 = o_16_3 & o_16_12; // @[CryptoUtils.scala 197:20]
  wire  t_17_7 = o_16_16 & o_16_7; // @[CryptoUtils.scala 198:20]
  wire  t_17_8 = t_17_0 ^ t_17_6; // @[CryptoUtils.scala 199:20]
  wire  t_17_9 = o_16_15 & o_16_13; // @[CryptoUtils.scala 200:20]
  wire  t_17_10 = t_17_9 ^ t_17_6; // @[CryptoUtils.scala 201:20]
  wire  t_17_11 = o_16_1 & o_16_11; // @[CryptoUtils.scala 202:20]
  wire  t_17_12 = o_16_4 & o_16_20; // @[CryptoUtils.scala 203:20]
  wire  t_17_13 = t_17_12 ^ t_17_11; // @[CryptoUtils.scala 204:20]
  wire  t_17_14 = o_16_2 & o_16_8; // @[CryptoUtils.scala 205:20]
  wire  t_17_15 = t_17_14 ^ t_17_11; // @[CryptoUtils.scala 206:20]
  wire  t_17_16 = t_17_3 ^ t_17_2; // @[CryptoUtils.scala 207:20]
  wire  t_17_17 = t_17_5 ^ o_16_18; // @[CryptoUtils.scala 208:20]
  wire  t_17_18 = t_17_8 ^ t_17_7; // @[CryptoUtils.scala 209:20]
  wire  t_17_19 = t_17_10 ^ t_17_15; // @[CryptoUtils.scala 210:20]
  wire  t_17_20 = t_17_16 ^ t_17_13; // @[CryptoUtils.scala 211:20]
  wire  t_17_21 = t_17_17 ^ t_17_15; // @[CryptoUtils.scala 212:20]
  wire  t_17_22 = t_17_18 ^ t_17_13; // @[CryptoUtils.scala 213:20]
  wire  t_17_23 = t_17_19 ^ o_16_19; // @[CryptoUtils.scala 214:20]
  wire  t_17_24 = t_17_22 ^ t_17_23; // @[CryptoUtils.scala 215:20]
  wire  t_17_25 = t_17_22 & t_17_20; // @[CryptoUtils.scala 216:20]
  wire  t_17_26 = t_17_21 ^ t_17_25; // @[CryptoUtils.scala 217:20]
  wire  t_17_27 = t_17_20 ^ t_17_21; // @[CryptoUtils.scala 218:20]
  wire  t_17_28 = t_17_23 ^ t_17_25; // @[CryptoUtils.scala 219:20]
  wire  t_17_29 = t_17_28 & t_17_27; // @[CryptoUtils.scala 220:20]
  wire  t_17_30 = t_17_26 & t_17_24; // @[CryptoUtils.scala 221:20]
  wire  t_17_31 = t_17_20 & t_17_23; // @[CryptoUtils.scala 222:20]
  wire  t_17_32 = t_17_27 & t_17_31; // @[CryptoUtils.scala 223:20]
  wire  t_17_33 = t_17_27 ^ t_17_25; // @[CryptoUtils.scala 224:20]
  wire  t_17_34 = t_17_21 & t_17_22; // @[CryptoUtils.scala 225:20]
  wire  t_17_35 = t_17_24 & t_17_34; // @[CryptoUtils.scala 226:20]
  wire  t_17_36 = t_17_24 ^ t_17_25; // @[CryptoUtils.scala 227:20]
  wire  t_17_37 = t_17_21 ^ t_17_29; // @[CryptoUtils.scala 228:20]
  wire  t_17_38 = t_17_32 ^ t_17_33; // @[CryptoUtils.scala 229:20]
  wire  t_17_39 = t_17_23 ^ t_17_30; // @[CryptoUtils.scala 230:20]
  wire  t_17_40 = t_17_35 ^ t_17_36; // @[CryptoUtils.scala 231:20]
  wire  t_17_41 = t_17_38 ^ t_17_40; // @[CryptoUtils.scala 232:20]
  wire  t_17_42 = t_17_37 ^ t_17_39; // @[CryptoUtils.scala 233:20]
  wire  t_17_43 = t_17_37 ^ t_17_38; // @[CryptoUtils.scala 234:20]
  wire  t_17_44 = t_17_39 ^ t_17_40; // @[CryptoUtils.scala 235:20]
  wire  t_17_45 = t_17_42 ^ t_17_41; // @[CryptoUtils.scala 236:20]
  wire  o_17_0 = t_17_38 & o_16_7; // @[CryptoUtils.scala 237:20]
  wire  o_17_1 = t_17_37 & o_16_13; // @[CryptoUtils.scala 238:20]
  wire  o_17_2 = t_17_42 & o_16_11; // @[CryptoUtils.scala 239:20]
  wire  o_17_3 = t_17_45 & o_16_20; // @[CryptoUtils.scala 240:20]
  wire  o_17_4 = t_17_41 & o_16_8; // @[CryptoUtils.scala 241:20]
  wire  o_17_5 = t_17_44 & o_16_9; // @[CryptoUtils.scala 242:20]
  wire  o_17_6 = t_17_40 & o__1; // @[CryptoUtils.scala 243:20]
  wire  o_17_7 = t_17_39 & o_16_14; // @[CryptoUtils.scala 244:20]
  wire  o_17_8 = t_17_43 & o_16_3; // @[CryptoUtils.scala 245:20]
  wire  o_17_9 = t_17_38 & o_16_16; // @[CryptoUtils.scala 246:20]
  wire  o_17_10 = t_17_37 & o_16_15; // @[CryptoUtils.scala 247:20]
  wire  o_17_11 = t_17_42 & o_16_1; // @[CryptoUtils.scala 248:20]
  wire  o_17_12 = t_17_45 & o_16_4; // @[CryptoUtils.scala 249:20]
  wire  o_17_13 = t_17_41 & o_16_2; // @[CryptoUtils.scala 250:20]
  wire  o_17_14 = t_17_44 & o_16_5; // @[CryptoUtils.scala 251:20]
  wire  o_17_15 = t_17_40 & o_16_6; // @[CryptoUtils.scala 252:20]
  wire  o_17_16 = t_17_39 & o_16_0; // @[CryptoUtils.scala 253:20]
  wire  o_17_17 = t_17_43 & o_16_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_0_t_0 = iaesSboxMid_0_2 ^ iaesSboxMid_0_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_0_t_1 = iaesSboxMid_0_8 ^ iaesSboxMid_0_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_0_t_2 = iaesSboxMid_0_4 ^ iaesSboxMid_0_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_0_t_3 = iaesSboxMid_0_15 ^ iaesSboxMid_0_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_0_t_4 = iaesSboxMid_0_16 ^ iaesSboxMid_0_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_0_t_5 = iaesSboxMid_0_14 ^ iaesSboxMid_0_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_0_t_6 = iaesSboxMid_0_17 ^ iaesSboxMid_0_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_0_t_7 = iaesSboxOut_0_t_0 ^ iaesSboxOut_0_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_0_t_8 = iaesSboxMid_0_0 ^ iaesSboxMid_0_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_0_t_9 = iaesSboxMid_0_5 ^ iaesSboxMid_0_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_0_t_10 = iaesSboxMid_0_7 ^ iaesSboxOut_0_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_0_t_11 = iaesSboxOut_0_t_0 ^ iaesSboxOut_0_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_0_t_12 = iaesSboxMid_0_14 ^ iaesSboxMid_0_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_0_t_13 = iaesSboxMid_0_17 ^ iaesSboxMid_0_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_0_t_14 = iaesSboxMid_0_17 ^ iaesSboxMid_0_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_0_t_15 = iaesSboxMid_0_4 ^ iaesSboxMid_0_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_0_t_16 = iaesSboxMid_0_7 ^ iaesSboxMid_0_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_0_t_17 = iaesSboxMid_0_8 ^ iaesSboxOut_0_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_0_t_18 = iaesSboxMid_0_13 ^ iaesSboxOut_0_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_0_t_19 = iaesSboxOut_0_t_2 ^ iaesSboxOut_0_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_0_t_20 = iaesSboxOut_0_t_4 ^ iaesSboxOut_0_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_0_t_22 = iaesSboxOut_0_t_2 ^ iaesSboxOut_0_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_0_t_23 = iaesSboxOut_0_t_7 ^ iaesSboxOut_0_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_0_t_24 = iaesSboxOut_0_t_5 ^ iaesSboxOut_0_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_0_t_25 = iaesSboxOut_0_t_6 ^ iaesSboxOut_0_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_0_t_26 = iaesSboxOut_0_t_9 ^ iaesSboxOut_0_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_0_t_27 = iaesSboxOut_0_t_10 ^ iaesSboxOut_0_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_0_t_28 = iaesSboxOut_0_t_11 ^ iaesSboxOut_0_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_0_t_29 = iaesSboxOut_0_t_15 ^ iaesSboxOut_0_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_0_o_0 = iaesSboxOut_0_t_9 ^ iaesSboxOut_0_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_0_o_1 = iaesSboxOut_0_t_14 ^ iaesSboxOut_0_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_0_o_2 = iaesSboxOut_0_t_19 ^ iaesSboxOut_0_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_0_o_3 = iaesSboxOut_0_t_23 ^ iaesSboxOut_0_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_0_o_4 = iaesSboxOut_0_t_12 ^ iaesSboxOut_0_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_0_o_5 = iaesSboxOut_0_t_17 ^ iaesSboxOut_0_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_0_o_6 = iaesSboxOut_0_t_26 ^ iaesSboxOut_0_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_0_o_7 = iaesSboxOut_0_t_13 ^ iaesSboxOut_0_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_0 = {iaesSboxOut_0_o_7,iaesSboxOut_0_o_6,iaesSboxOut_0_o_5,iaesSboxOut_0_o_4,iaesSboxOut_0_o_3,
    iaesSboxOut_0_o_2,iaesSboxOut_0_o_1,iaesSboxOut_0_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_18_0 = src2Bytes_5[1] ^ src2Bytes_5[0]; // @[CryptoUtils.scala 119:20]
  wire  t_18_1 = src2Bytes_5[6] ^ src2Bytes_5[1]; // @[CryptoUtils.scala 120:20]
  wire  t_18_2 = src2Bytes_5[5] ^ ~src2Bytes_5[2]; // @[CryptoUtils.scala 121:20]
  wire  t_18_3 = src2Bytes_5[2] ^ ~src2Bytes_5[1]; // @[CryptoUtils.scala 122:20]
  wire  t_18_4 = src2Bytes_5[5] ^ ~src2Bytes_5[3]; // @[CryptoUtils.scala 123:20]
  wire  o_18_0 = src2Bytes_5[7] ^ t_18_2; // @[CryptoUtils.scala 124:20]
  wire  o_18_1 = src2Bytes_5[4] ^ src2Bytes_5[3]; // @[CryptoUtils.scala 125:20]
  wire  o_18_2 = src2Bytes_5[7] ^ ~src2Bytes_5[6]; // @[CryptoUtils.scala 126:20]
  wire  o_18_3 = o_18_1 ^ t_18_0; // @[CryptoUtils.scala 127:20]
  wire  o_18_17 = src2Bytes_5[7] ^ src2Bytes_5[4]; // @[CryptoUtils.scala 141:20]
  wire  o_18_6 = src2Bytes_5[6] ^ ~o_18_17; // @[CryptoUtils.scala 130:20]
  wire  o_18_4 = src2Bytes_5[3] ^ o_18_6; // @[CryptoUtils.scala 128:20]
  wire  o_18_16 = src2Bytes_5[6] ^ ~src2Bytes_5[4]; // @[CryptoUtils.scala 140:20]
  wire  o_18_5 = o_18_16 ^ t_18_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_29 = ~o_18_1; // @[CryptoUtils.scala 131:22]
  wire  o_18_7 = src2Bytes_5[0] ^ ~o_18_1; // @[CryptoUtils.scala 131:20]
  wire  o_18_18 = src2Bytes_5[3] ^ ~src2Bytes_5[0]; // @[CryptoUtils.scala 142:20]
  wire  o_18_8 = o_18_2 ^ o_18_18; // @[CryptoUtils.scala 132:20]
  wire  o_18_9 = o_18_2 ^ t_18_0; // @[CryptoUtils.scala 133:20]
  wire  o_18_10 = o_18_8 ^ t_18_3; // @[CryptoUtils.scala 134:20]
  wire  o_18_20 = o_18_1 ^ t_18_3; // @[CryptoUtils.scala 144:20]
  wire  o_18_11 = o_18_8 ^ o_18_20; // @[CryptoUtils.scala 135:20]
  wire  o_18_12 = t_18_1 ^ t_18_4; // @[CryptoUtils.scala 136:20]
  wire  o_18_14 = o_18_16 ^ t_18_0; // @[CryptoUtils.scala 138:20]
  wire  o_18_13 = src2Bytes_5[5] ^ ~o_18_14; // @[CryptoUtils.scala 137:20]
  wire  o_18_15 = o_18_18 ^ t_18_1; // @[CryptoUtils.scala 139:20]
  wire  o_18_19 = src2Bytes_5[5] ^ _o_7_T_29; // @[CryptoUtils.scala 143:20]
  wire  t_19_0 = o_18_3 ^ o_18_12; // @[CryptoUtils.scala 191:20]
  wire  t_19_1 = o_18_9 & o_18_5; // @[CryptoUtils.scala 192:20]
  wire  t_19_2 = o_18_17 & o_18_6; // @[CryptoUtils.scala 193:20]
  wire  t_19_3 = o_18_10 ^ t_19_1; // @[CryptoUtils.scala 194:20]
  wire  t_19_4 = o_18_14 & o_18_0; // @[CryptoUtils.scala 195:20]
  wire  t_19_5 = t_19_4 ^ t_19_1; // @[CryptoUtils.scala 196:20]
  wire  t_19_6 = o_18_3 & o_18_12; // @[CryptoUtils.scala 197:20]
  wire  t_19_7 = o_18_16 & o_18_7; // @[CryptoUtils.scala 198:20]
  wire  t_19_8 = t_19_0 ^ t_19_6; // @[CryptoUtils.scala 199:20]
  wire  t_19_9 = o_18_15 & o_18_13; // @[CryptoUtils.scala 200:20]
  wire  t_19_10 = t_19_9 ^ t_19_6; // @[CryptoUtils.scala 201:20]
  wire  t_19_11 = o_18_1 & o_18_11; // @[CryptoUtils.scala 202:20]
  wire  t_19_12 = o_18_4 & o_18_20; // @[CryptoUtils.scala 203:20]
  wire  t_19_13 = t_19_12 ^ t_19_11; // @[CryptoUtils.scala 204:20]
  wire  t_19_14 = o_18_2 & o_18_8; // @[CryptoUtils.scala 205:20]
  wire  t_19_15 = t_19_14 ^ t_19_11; // @[CryptoUtils.scala 206:20]
  wire  t_19_16 = t_19_3 ^ t_19_2; // @[CryptoUtils.scala 207:20]
  wire  t_19_17 = t_19_5 ^ o_18_18; // @[CryptoUtils.scala 208:20]
  wire  t_19_18 = t_19_8 ^ t_19_7; // @[CryptoUtils.scala 209:20]
  wire  t_19_19 = t_19_10 ^ t_19_15; // @[CryptoUtils.scala 210:20]
  wire  t_19_20 = t_19_16 ^ t_19_13; // @[CryptoUtils.scala 211:20]
  wire  t_19_21 = t_19_17 ^ t_19_15; // @[CryptoUtils.scala 212:20]
  wire  t_19_22 = t_19_18 ^ t_19_13; // @[CryptoUtils.scala 213:20]
  wire  t_19_23 = t_19_19 ^ o_18_19; // @[CryptoUtils.scala 214:20]
  wire  t_19_24 = t_19_22 ^ t_19_23; // @[CryptoUtils.scala 215:20]
  wire  t_19_25 = t_19_22 & t_19_20; // @[CryptoUtils.scala 216:20]
  wire  t_19_26 = t_19_21 ^ t_19_25; // @[CryptoUtils.scala 217:20]
  wire  t_19_27 = t_19_20 ^ t_19_21; // @[CryptoUtils.scala 218:20]
  wire  t_19_28 = t_19_23 ^ t_19_25; // @[CryptoUtils.scala 219:20]
  wire  t_19_29 = t_19_28 & t_19_27; // @[CryptoUtils.scala 220:20]
  wire  t_19_30 = t_19_26 & t_19_24; // @[CryptoUtils.scala 221:20]
  wire  t_19_31 = t_19_20 & t_19_23; // @[CryptoUtils.scala 222:20]
  wire  t_19_32 = t_19_27 & t_19_31; // @[CryptoUtils.scala 223:20]
  wire  t_19_33 = t_19_27 ^ t_19_25; // @[CryptoUtils.scala 224:20]
  wire  t_19_34 = t_19_21 & t_19_22; // @[CryptoUtils.scala 225:20]
  wire  t_19_35 = t_19_24 & t_19_34; // @[CryptoUtils.scala 226:20]
  wire  t_19_36 = t_19_24 ^ t_19_25; // @[CryptoUtils.scala 227:20]
  wire  t_19_37 = t_19_21 ^ t_19_29; // @[CryptoUtils.scala 228:20]
  wire  t_19_38 = t_19_32 ^ t_19_33; // @[CryptoUtils.scala 229:20]
  wire  t_19_39 = t_19_23 ^ t_19_30; // @[CryptoUtils.scala 230:20]
  wire  t_19_40 = t_19_35 ^ t_19_36; // @[CryptoUtils.scala 231:20]
  wire  t_19_41 = t_19_38 ^ t_19_40; // @[CryptoUtils.scala 232:20]
  wire  t_19_42 = t_19_37 ^ t_19_39; // @[CryptoUtils.scala 233:20]
  wire  t_19_43 = t_19_37 ^ t_19_38; // @[CryptoUtils.scala 234:20]
  wire  t_19_44 = t_19_39 ^ t_19_40; // @[CryptoUtils.scala 235:20]
  wire  t_19_45 = t_19_42 ^ t_19_41; // @[CryptoUtils.scala 236:20]
  wire  o_19_0 = t_19_38 & o_18_7; // @[CryptoUtils.scala 237:20]
  wire  o_19_1 = t_19_37 & o_18_13; // @[CryptoUtils.scala 238:20]
  wire  o_19_2 = t_19_42 & o_18_11; // @[CryptoUtils.scala 239:20]
  wire  o_19_3 = t_19_45 & o_18_20; // @[CryptoUtils.scala 240:20]
  wire  o_19_4 = t_19_41 & o_18_8; // @[CryptoUtils.scala 241:20]
  wire  o_19_5 = t_19_44 & o_18_9; // @[CryptoUtils.scala 242:20]
  wire  o_19_6 = t_19_40 & o_18_17; // @[CryptoUtils.scala 243:20]
  wire  o_19_7 = t_19_39 & o_18_14; // @[CryptoUtils.scala 244:20]
  wire  o_19_8 = t_19_43 & o_18_3; // @[CryptoUtils.scala 245:20]
  wire  o_19_9 = t_19_38 & o_18_16; // @[CryptoUtils.scala 246:20]
  wire  o_19_10 = t_19_37 & o_18_15; // @[CryptoUtils.scala 247:20]
  wire  o_19_11 = t_19_42 & o_18_1; // @[CryptoUtils.scala 248:20]
  wire  o_19_12 = t_19_45 & o_18_4; // @[CryptoUtils.scala 249:20]
  wire  o_19_13 = t_19_41 & o_18_2; // @[CryptoUtils.scala 250:20]
  wire  o_19_14 = t_19_44 & o_18_5; // @[CryptoUtils.scala 251:20]
  wire  o_19_15 = t_19_40 & o_18_6; // @[CryptoUtils.scala 252:20]
  wire  o_19_16 = t_19_39 & o_18_0; // @[CryptoUtils.scala 253:20]
  wire  o_19_17 = t_19_43 & o_18_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_1_t_0 = iaesSboxMid_1_2 ^ iaesSboxMid_1_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_1_t_1 = iaesSboxMid_1_8 ^ iaesSboxMid_1_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_1_t_2 = iaesSboxMid_1_4 ^ iaesSboxMid_1_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_1_t_3 = iaesSboxMid_1_15 ^ iaesSboxMid_1_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_1_t_4 = iaesSboxMid_1_16 ^ iaesSboxMid_1_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_1_t_5 = iaesSboxMid_1_14 ^ iaesSboxMid_1_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_1_t_6 = iaesSboxMid_1_17 ^ iaesSboxMid_1_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_1_t_7 = iaesSboxOut_1_t_0 ^ iaesSboxOut_1_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_1_t_8 = iaesSboxMid_1_0 ^ iaesSboxMid_1_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_1_t_9 = iaesSboxMid_1_5 ^ iaesSboxMid_1_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_1_t_10 = iaesSboxMid_1_7 ^ iaesSboxOut_1_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_1_t_11 = iaesSboxOut_1_t_0 ^ iaesSboxOut_1_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_1_t_12 = iaesSboxMid_1_14 ^ iaesSboxMid_1_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_1_t_13 = iaesSboxMid_1_17 ^ iaesSboxMid_1_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_1_t_14 = iaesSboxMid_1_17 ^ iaesSboxMid_1_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_1_t_15 = iaesSboxMid_1_4 ^ iaesSboxMid_1_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_1_t_16 = iaesSboxMid_1_7 ^ iaesSboxMid_1_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_1_t_17 = iaesSboxMid_1_8 ^ iaesSboxOut_1_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_1_t_18 = iaesSboxMid_1_13 ^ iaesSboxOut_1_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_1_t_19 = iaesSboxOut_1_t_2 ^ iaesSboxOut_1_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_1_t_20 = iaesSboxOut_1_t_4 ^ iaesSboxOut_1_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_1_t_22 = iaesSboxOut_1_t_2 ^ iaesSboxOut_1_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_1_t_23 = iaesSboxOut_1_t_7 ^ iaesSboxOut_1_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_1_t_24 = iaesSboxOut_1_t_5 ^ iaesSboxOut_1_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_1_t_25 = iaesSboxOut_1_t_6 ^ iaesSboxOut_1_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_1_t_26 = iaesSboxOut_1_t_9 ^ iaesSboxOut_1_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_1_t_27 = iaesSboxOut_1_t_10 ^ iaesSboxOut_1_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_1_t_28 = iaesSboxOut_1_t_11 ^ iaesSboxOut_1_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_1_t_29 = iaesSboxOut_1_t_15 ^ iaesSboxOut_1_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_1_o_0 = iaesSboxOut_1_t_9 ^ iaesSboxOut_1_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_1_o_1 = iaesSboxOut_1_t_14 ^ iaesSboxOut_1_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_1_o_2 = iaesSboxOut_1_t_19 ^ iaesSboxOut_1_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_1_o_3 = iaesSboxOut_1_t_23 ^ iaesSboxOut_1_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_1_o_4 = iaesSboxOut_1_t_12 ^ iaesSboxOut_1_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_1_o_5 = iaesSboxOut_1_t_17 ^ iaesSboxOut_1_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_1_o_6 = iaesSboxOut_1_t_26 ^ iaesSboxOut_1_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_1_o_7 = iaesSboxOut_1_t_13 ^ iaesSboxOut_1_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_1 = {iaesSboxOut_1_o_7,iaesSboxOut_1_o_6,iaesSboxOut_1_o_5,iaesSboxOut_1_o_4,iaesSboxOut_1_o_3,
    iaesSboxOut_1_o_2,iaesSboxOut_1_o_1,iaesSboxOut_1_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_20_1 = src2Bytes_2[6] ^ src2Bytes_2[1]; // @[CryptoUtils.scala 120:20]
  wire  t_20_2 = src2Bytes_2[5] ^ ~src2Bytes_2[2]; // @[CryptoUtils.scala 121:20]
  wire  t_20_3 = src2Bytes_2[2] ^ ~src2Bytes_2[1]; // @[CryptoUtils.scala 122:20]
  wire  t_20_4 = src2Bytes_2[5] ^ ~src2Bytes_2[3]; // @[CryptoUtils.scala 123:20]
  wire  o_20_0 = src2Bytes_2[7] ^ t_20_2; // @[CryptoUtils.scala 124:20]
  wire  o_20_1 = src2Bytes_2[4] ^ src2Bytes_2[3]; // @[CryptoUtils.scala 125:20]
  wire  o_20_2 = src2Bytes_2[7] ^ ~src2Bytes_2[6]; // @[CryptoUtils.scala 126:20]
  wire  o_20_3 = o_20_1 ^ t_4_5; // @[CryptoUtils.scala 127:20]
  wire  o_20_6 = src2Bytes_2[6] ^ ~o_4_1; // @[CryptoUtils.scala 130:20]
  wire  o_20_4 = src2Bytes_2[3] ^ o_20_6; // @[CryptoUtils.scala 128:20]
  wire  o_20_16 = src2Bytes_2[6] ^ ~src2Bytes_2[4]; // @[CryptoUtils.scala 140:20]
  wire  o_20_5 = o_20_16 ^ t_20_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_33 = ~o_20_1; // @[CryptoUtils.scala 131:22]
  wire  o_20_7 = src2Bytes_2[0] ^ ~o_20_1; // @[CryptoUtils.scala 131:20]
  wire  o_20_18 = src2Bytes_2[3] ^ ~src2Bytes_2[0]; // @[CryptoUtils.scala 142:20]
  wire  o_20_8 = o_20_2 ^ o_20_18; // @[CryptoUtils.scala 132:20]
  wire  o_20_9 = o_20_2 ^ t_4_5; // @[CryptoUtils.scala 133:20]
  wire  o_20_10 = o_20_8 ^ t_20_3; // @[CryptoUtils.scala 134:20]
  wire  o_20_20 = o_20_1 ^ t_20_3; // @[CryptoUtils.scala 144:20]
  wire  o_20_11 = o_20_8 ^ o_20_20; // @[CryptoUtils.scala 135:20]
  wire  o_20_12 = t_20_1 ^ t_20_4; // @[CryptoUtils.scala 136:20]
  wire  o_20_14 = o_20_16 ^ t_4_5; // @[CryptoUtils.scala 138:20]
  wire  o_20_13 = src2Bytes_2[5] ^ ~o_20_14; // @[CryptoUtils.scala 137:20]
  wire  o_20_15 = o_20_18 ^ t_20_1; // @[CryptoUtils.scala 139:20]
  wire  o_20_19 = src2Bytes_2[5] ^ _o_7_T_33; // @[CryptoUtils.scala 143:20]
  wire  t_21_0 = o_20_3 ^ o_20_12; // @[CryptoUtils.scala 191:20]
  wire  t_21_1 = o_20_9 & o_20_5; // @[CryptoUtils.scala 192:20]
  wire  t_21_2 = o_4_1 & o_20_6; // @[CryptoUtils.scala 193:20]
  wire  t_21_3 = o_20_10 ^ t_21_1; // @[CryptoUtils.scala 194:20]
  wire  t_21_4 = o_20_14 & o_20_0; // @[CryptoUtils.scala 195:20]
  wire  t_21_5 = t_21_4 ^ t_21_1; // @[CryptoUtils.scala 196:20]
  wire  t_21_6 = o_20_3 & o_20_12; // @[CryptoUtils.scala 197:20]
  wire  t_21_7 = o_20_16 & o_20_7; // @[CryptoUtils.scala 198:20]
  wire  t_21_8 = t_21_0 ^ t_21_6; // @[CryptoUtils.scala 199:20]
  wire  t_21_9 = o_20_15 & o_20_13; // @[CryptoUtils.scala 200:20]
  wire  t_21_10 = t_21_9 ^ t_21_6; // @[CryptoUtils.scala 201:20]
  wire  t_21_11 = o_20_1 & o_20_11; // @[CryptoUtils.scala 202:20]
  wire  t_21_12 = o_20_4 & o_20_20; // @[CryptoUtils.scala 203:20]
  wire  t_21_13 = t_21_12 ^ t_21_11; // @[CryptoUtils.scala 204:20]
  wire  t_21_14 = o_20_2 & o_20_8; // @[CryptoUtils.scala 205:20]
  wire  t_21_15 = t_21_14 ^ t_21_11; // @[CryptoUtils.scala 206:20]
  wire  t_21_16 = t_21_3 ^ t_21_2; // @[CryptoUtils.scala 207:20]
  wire  t_21_17 = t_21_5 ^ o_20_18; // @[CryptoUtils.scala 208:20]
  wire  t_21_18 = t_21_8 ^ t_21_7; // @[CryptoUtils.scala 209:20]
  wire  t_21_19 = t_21_10 ^ t_21_15; // @[CryptoUtils.scala 210:20]
  wire  t_21_20 = t_21_16 ^ t_21_13; // @[CryptoUtils.scala 211:20]
  wire  t_21_21 = t_21_17 ^ t_21_15; // @[CryptoUtils.scala 212:20]
  wire  t_21_22 = t_21_18 ^ t_21_13; // @[CryptoUtils.scala 213:20]
  wire  t_21_23 = t_21_19 ^ o_20_19; // @[CryptoUtils.scala 214:20]
  wire  t_21_24 = t_21_22 ^ t_21_23; // @[CryptoUtils.scala 215:20]
  wire  t_21_25 = t_21_22 & t_21_20; // @[CryptoUtils.scala 216:20]
  wire  t_21_26 = t_21_21 ^ t_21_25; // @[CryptoUtils.scala 217:20]
  wire  t_21_27 = t_21_20 ^ t_21_21; // @[CryptoUtils.scala 218:20]
  wire  t_21_28 = t_21_23 ^ t_21_25; // @[CryptoUtils.scala 219:20]
  wire  t_21_29 = t_21_28 & t_21_27; // @[CryptoUtils.scala 220:20]
  wire  t_21_30 = t_21_26 & t_21_24; // @[CryptoUtils.scala 221:20]
  wire  t_21_31 = t_21_20 & t_21_23; // @[CryptoUtils.scala 222:20]
  wire  t_21_32 = t_21_27 & t_21_31; // @[CryptoUtils.scala 223:20]
  wire  t_21_33 = t_21_27 ^ t_21_25; // @[CryptoUtils.scala 224:20]
  wire  t_21_34 = t_21_21 & t_21_22; // @[CryptoUtils.scala 225:20]
  wire  t_21_35 = t_21_24 & t_21_34; // @[CryptoUtils.scala 226:20]
  wire  t_21_36 = t_21_24 ^ t_21_25; // @[CryptoUtils.scala 227:20]
  wire  t_21_37 = t_21_21 ^ t_21_29; // @[CryptoUtils.scala 228:20]
  wire  t_21_38 = t_21_32 ^ t_21_33; // @[CryptoUtils.scala 229:20]
  wire  t_21_39 = t_21_23 ^ t_21_30; // @[CryptoUtils.scala 230:20]
  wire  t_21_40 = t_21_35 ^ t_21_36; // @[CryptoUtils.scala 231:20]
  wire  t_21_41 = t_21_38 ^ t_21_40; // @[CryptoUtils.scala 232:20]
  wire  t_21_42 = t_21_37 ^ t_21_39; // @[CryptoUtils.scala 233:20]
  wire  t_21_43 = t_21_37 ^ t_21_38; // @[CryptoUtils.scala 234:20]
  wire  t_21_44 = t_21_39 ^ t_21_40; // @[CryptoUtils.scala 235:20]
  wire  t_21_45 = t_21_42 ^ t_21_41; // @[CryptoUtils.scala 236:20]
  wire  o_21_0 = t_21_38 & o_20_7; // @[CryptoUtils.scala 237:20]
  wire  o_21_1 = t_21_37 & o_20_13; // @[CryptoUtils.scala 238:20]
  wire  o_21_2 = t_21_42 & o_20_11; // @[CryptoUtils.scala 239:20]
  wire  o_21_3 = t_21_45 & o_20_20; // @[CryptoUtils.scala 240:20]
  wire  o_21_4 = t_21_41 & o_20_8; // @[CryptoUtils.scala 241:20]
  wire  o_21_5 = t_21_44 & o_20_9; // @[CryptoUtils.scala 242:20]
  wire  o_21_6 = t_21_40 & o_4_1; // @[CryptoUtils.scala 243:20]
  wire  o_21_7 = t_21_39 & o_20_14; // @[CryptoUtils.scala 244:20]
  wire  o_21_8 = t_21_43 & o_20_3; // @[CryptoUtils.scala 245:20]
  wire  o_21_9 = t_21_38 & o_20_16; // @[CryptoUtils.scala 246:20]
  wire  o_21_10 = t_21_37 & o_20_15; // @[CryptoUtils.scala 247:20]
  wire  o_21_11 = t_21_42 & o_20_1; // @[CryptoUtils.scala 248:20]
  wire  o_21_12 = t_21_45 & o_20_4; // @[CryptoUtils.scala 249:20]
  wire  o_21_13 = t_21_41 & o_20_2; // @[CryptoUtils.scala 250:20]
  wire  o_21_14 = t_21_44 & o_20_5; // @[CryptoUtils.scala 251:20]
  wire  o_21_15 = t_21_40 & o_20_6; // @[CryptoUtils.scala 252:20]
  wire  o_21_16 = t_21_39 & o_20_0; // @[CryptoUtils.scala 253:20]
  wire  o_21_17 = t_21_43 & o_20_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_2_t_0 = iaesSboxMid_2_2 ^ iaesSboxMid_2_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_2_t_1 = iaesSboxMid_2_8 ^ iaesSboxMid_2_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_2_t_2 = iaesSboxMid_2_4 ^ iaesSboxMid_2_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_2_t_3 = iaesSboxMid_2_15 ^ iaesSboxMid_2_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_2_t_4 = iaesSboxMid_2_16 ^ iaesSboxMid_2_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_2_t_5 = iaesSboxMid_2_14 ^ iaesSboxMid_2_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_2_t_6 = iaesSboxMid_2_17 ^ iaesSboxMid_2_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_2_t_7 = iaesSboxOut_2_t_0 ^ iaesSboxOut_2_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_2_t_8 = iaesSboxMid_2_0 ^ iaesSboxMid_2_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_2_t_9 = iaesSboxMid_2_5 ^ iaesSboxMid_2_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_2_t_10 = iaesSboxMid_2_7 ^ iaesSboxOut_2_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_2_t_11 = iaesSboxOut_2_t_0 ^ iaesSboxOut_2_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_2_t_12 = iaesSboxMid_2_14 ^ iaesSboxMid_2_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_2_t_13 = iaesSboxMid_2_17 ^ iaesSboxMid_2_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_2_t_14 = iaesSboxMid_2_17 ^ iaesSboxMid_2_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_2_t_15 = iaesSboxMid_2_4 ^ iaesSboxMid_2_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_2_t_16 = iaesSboxMid_2_7 ^ iaesSboxMid_2_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_2_t_17 = iaesSboxMid_2_8 ^ iaesSboxOut_2_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_2_t_18 = iaesSboxMid_2_13 ^ iaesSboxOut_2_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_2_t_19 = iaesSboxOut_2_t_2 ^ iaesSboxOut_2_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_2_t_20 = iaesSboxOut_2_t_4 ^ iaesSboxOut_2_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_2_t_22 = iaesSboxOut_2_t_2 ^ iaesSboxOut_2_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_2_t_23 = iaesSboxOut_2_t_7 ^ iaesSboxOut_2_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_2_t_24 = iaesSboxOut_2_t_5 ^ iaesSboxOut_2_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_2_t_25 = iaesSboxOut_2_t_6 ^ iaesSboxOut_2_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_2_t_26 = iaesSboxOut_2_t_9 ^ iaesSboxOut_2_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_2_t_27 = iaesSboxOut_2_t_10 ^ iaesSboxOut_2_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_2_t_28 = iaesSboxOut_2_t_11 ^ iaesSboxOut_2_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_2_t_29 = iaesSboxOut_2_t_15 ^ iaesSboxOut_2_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_2_o_0 = iaesSboxOut_2_t_9 ^ iaesSboxOut_2_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_2_o_1 = iaesSboxOut_2_t_14 ^ iaesSboxOut_2_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_2_o_2 = iaesSboxOut_2_t_19 ^ iaesSboxOut_2_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_2_o_3 = iaesSboxOut_2_t_23 ^ iaesSboxOut_2_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_2_o_4 = iaesSboxOut_2_t_12 ^ iaesSboxOut_2_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_2_o_5 = iaesSboxOut_2_t_17 ^ iaesSboxOut_2_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_2_o_6 = iaesSboxOut_2_t_26 ^ iaesSboxOut_2_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_2_o_7 = iaesSboxOut_2_t_13 ^ iaesSboxOut_2_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_2 = {iaesSboxOut_2_o_7,iaesSboxOut_2_o_6,iaesSboxOut_2_o_5,iaesSboxOut_2_o_4,iaesSboxOut_2_o_3,
    iaesSboxOut_2_o_2,iaesSboxOut_2_o_1,iaesSboxOut_2_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_22_0 = src1Bytes_7[1] ^ src1Bytes_7[0]; // @[CryptoUtils.scala 119:20]
  wire  t_22_1 = src1Bytes_7[6] ^ src1Bytes_7[1]; // @[CryptoUtils.scala 120:20]
  wire  t_22_2 = src1Bytes_7[5] ^ ~src1Bytes_7[2]; // @[CryptoUtils.scala 121:20]
  wire  t_22_3 = src1Bytes_7[2] ^ ~src1Bytes_7[1]; // @[CryptoUtils.scala 122:20]
  wire  t_22_4 = src1Bytes_7[5] ^ ~src1Bytes_7[3]; // @[CryptoUtils.scala 123:20]
  wire  o_22_0 = src1Bytes_7[7] ^ t_22_2; // @[CryptoUtils.scala 124:20]
  wire  o_22_1 = src1Bytes_7[4] ^ src1Bytes_7[3]; // @[CryptoUtils.scala 125:20]
  wire  o_22_2 = src1Bytes_7[7] ^ ~src1Bytes_7[6]; // @[CryptoUtils.scala 126:20]
  wire  o_22_3 = o_22_1 ^ t_22_0; // @[CryptoUtils.scala 127:20]
  wire  o_22_17 = src1Bytes_7[7] ^ src1Bytes_7[4]; // @[CryptoUtils.scala 141:20]
  wire  o_22_6 = src1Bytes_7[6] ^ ~o_22_17; // @[CryptoUtils.scala 130:20]
  wire  o_22_4 = src1Bytes_7[3] ^ o_22_6; // @[CryptoUtils.scala 128:20]
  wire  o_22_16 = src1Bytes_7[6] ^ ~src1Bytes_7[4]; // @[CryptoUtils.scala 140:20]
  wire  o_22_5 = o_22_16 ^ t_22_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_37 = ~o_22_1; // @[CryptoUtils.scala 131:22]
  wire  o_22_7 = src1Bytes_7[0] ^ ~o_22_1; // @[CryptoUtils.scala 131:20]
  wire  o_22_18 = src1Bytes_7[3] ^ ~src1Bytes_7[0]; // @[CryptoUtils.scala 142:20]
  wire  o_22_8 = o_22_2 ^ o_22_18; // @[CryptoUtils.scala 132:20]
  wire  o_22_9 = o_22_2 ^ t_22_0; // @[CryptoUtils.scala 133:20]
  wire  o_22_10 = o_22_8 ^ t_22_3; // @[CryptoUtils.scala 134:20]
  wire  o_22_20 = o_22_1 ^ t_22_3; // @[CryptoUtils.scala 144:20]
  wire  o_22_11 = o_22_8 ^ o_22_20; // @[CryptoUtils.scala 135:20]
  wire  o_22_12 = t_22_1 ^ t_22_4; // @[CryptoUtils.scala 136:20]
  wire  o_22_14 = o_22_16 ^ t_22_0; // @[CryptoUtils.scala 138:20]
  wire  o_22_13 = src1Bytes_7[5] ^ ~o_22_14; // @[CryptoUtils.scala 137:20]
  wire  o_22_15 = o_22_18 ^ t_22_1; // @[CryptoUtils.scala 139:20]
  wire  o_22_19 = src1Bytes_7[5] ^ _o_7_T_37; // @[CryptoUtils.scala 143:20]
  wire  t_23_0 = o_22_3 ^ o_22_12; // @[CryptoUtils.scala 191:20]
  wire  t_23_1 = o_22_9 & o_22_5; // @[CryptoUtils.scala 192:20]
  wire  t_23_2 = o_22_17 & o_22_6; // @[CryptoUtils.scala 193:20]
  wire  t_23_3 = o_22_10 ^ t_23_1; // @[CryptoUtils.scala 194:20]
  wire  t_23_4 = o_22_14 & o_22_0; // @[CryptoUtils.scala 195:20]
  wire  t_23_5 = t_23_4 ^ t_23_1; // @[CryptoUtils.scala 196:20]
  wire  t_23_6 = o_22_3 & o_22_12; // @[CryptoUtils.scala 197:20]
  wire  t_23_7 = o_22_16 & o_22_7; // @[CryptoUtils.scala 198:20]
  wire  t_23_8 = t_23_0 ^ t_23_6; // @[CryptoUtils.scala 199:20]
  wire  t_23_9 = o_22_15 & o_22_13; // @[CryptoUtils.scala 200:20]
  wire  t_23_10 = t_23_9 ^ t_23_6; // @[CryptoUtils.scala 201:20]
  wire  t_23_11 = o_22_1 & o_22_11; // @[CryptoUtils.scala 202:20]
  wire  t_23_12 = o_22_4 & o_22_20; // @[CryptoUtils.scala 203:20]
  wire  t_23_13 = t_23_12 ^ t_23_11; // @[CryptoUtils.scala 204:20]
  wire  t_23_14 = o_22_2 & o_22_8; // @[CryptoUtils.scala 205:20]
  wire  t_23_15 = t_23_14 ^ t_23_11; // @[CryptoUtils.scala 206:20]
  wire  t_23_16 = t_23_3 ^ t_23_2; // @[CryptoUtils.scala 207:20]
  wire  t_23_17 = t_23_5 ^ o_22_18; // @[CryptoUtils.scala 208:20]
  wire  t_23_18 = t_23_8 ^ t_23_7; // @[CryptoUtils.scala 209:20]
  wire  t_23_19 = t_23_10 ^ t_23_15; // @[CryptoUtils.scala 210:20]
  wire  t_23_20 = t_23_16 ^ t_23_13; // @[CryptoUtils.scala 211:20]
  wire  t_23_21 = t_23_17 ^ t_23_15; // @[CryptoUtils.scala 212:20]
  wire  t_23_22 = t_23_18 ^ t_23_13; // @[CryptoUtils.scala 213:20]
  wire  t_23_23 = t_23_19 ^ o_22_19; // @[CryptoUtils.scala 214:20]
  wire  t_23_24 = t_23_22 ^ t_23_23; // @[CryptoUtils.scala 215:20]
  wire  t_23_25 = t_23_22 & t_23_20; // @[CryptoUtils.scala 216:20]
  wire  t_23_26 = t_23_21 ^ t_23_25; // @[CryptoUtils.scala 217:20]
  wire  t_23_27 = t_23_20 ^ t_23_21; // @[CryptoUtils.scala 218:20]
  wire  t_23_28 = t_23_23 ^ t_23_25; // @[CryptoUtils.scala 219:20]
  wire  t_23_29 = t_23_28 & t_23_27; // @[CryptoUtils.scala 220:20]
  wire  t_23_30 = t_23_26 & t_23_24; // @[CryptoUtils.scala 221:20]
  wire  t_23_31 = t_23_20 & t_23_23; // @[CryptoUtils.scala 222:20]
  wire  t_23_32 = t_23_27 & t_23_31; // @[CryptoUtils.scala 223:20]
  wire  t_23_33 = t_23_27 ^ t_23_25; // @[CryptoUtils.scala 224:20]
  wire  t_23_34 = t_23_21 & t_23_22; // @[CryptoUtils.scala 225:20]
  wire  t_23_35 = t_23_24 & t_23_34; // @[CryptoUtils.scala 226:20]
  wire  t_23_36 = t_23_24 ^ t_23_25; // @[CryptoUtils.scala 227:20]
  wire  t_23_37 = t_23_21 ^ t_23_29; // @[CryptoUtils.scala 228:20]
  wire  t_23_38 = t_23_32 ^ t_23_33; // @[CryptoUtils.scala 229:20]
  wire  t_23_39 = t_23_23 ^ t_23_30; // @[CryptoUtils.scala 230:20]
  wire  t_23_40 = t_23_35 ^ t_23_36; // @[CryptoUtils.scala 231:20]
  wire  t_23_41 = t_23_38 ^ t_23_40; // @[CryptoUtils.scala 232:20]
  wire  t_23_42 = t_23_37 ^ t_23_39; // @[CryptoUtils.scala 233:20]
  wire  t_23_43 = t_23_37 ^ t_23_38; // @[CryptoUtils.scala 234:20]
  wire  t_23_44 = t_23_39 ^ t_23_40; // @[CryptoUtils.scala 235:20]
  wire  t_23_45 = t_23_42 ^ t_23_41; // @[CryptoUtils.scala 236:20]
  wire  o_23_0 = t_23_38 & o_22_7; // @[CryptoUtils.scala 237:20]
  wire  o_23_1 = t_23_37 & o_22_13; // @[CryptoUtils.scala 238:20]
  wire  o_23_2 = t_23_42 & o_22_11; // @[CryptoUtils.scala 239:20]
  wire  o_23_3 = t_23_45 & o_22_20; // @[CryptoUtils.scala 240:20]
  wire  o_23_4 = t_23_41 & o_22_8; // @[CryptoUtils.scala 241:20]
  wire  o_23_5 = t_23_44 & o_22_9; // @[CryptoUtils.scala 242:20]
  wire  o_23_6 = t_23_40 & o_22_17; // @[CryptoUtils.scala 243:20]
  wire  o_23_7 = t_23_39 & o_22_14; // @[CryptoUtils.scala 244:20]
  wire  o_23_8 = t_23_43 & o_22_3; // @[CryptoUtils.scala 245:20]
  wire  o_23_9 = t_23_38 & o_22_16; // @[CryptoUtils.scala 246:20]
  wire  o_23_10 = t_23_37 & o_22_15; // @[CryptoUtils.scala 247:20]
  wire  o_23_11 = t_23_42 & o_22_1; // @[CryptoUtils.scala 248:20]
  wire  o_23_12 = t_23_45 & o_22_4; // @[CryptoUtils.scala 249:20]
  wire  o_23_13 = t_23_41 & o_22_2; // @[CryptoUtils.scala 250:20]
  wire  o_23_14 = t_23_44 & o_22_5; // @[CryptoUtils.scala 251:20]
  wire  o_23_15 = t_23_40 & o_22_6; // @[CryptoUtils.scala 252:20]
  wire  o_23_16 = t_23_39 & o_22_0; // @[CryptoUtils.scala 253:20]
  wire  o_23_17 = t_23_43 & o_22_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_3_t_0 = iaesSboxMid_3_2 ^ iaesSboxMid_3_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_3_t_1 = iaesSboxMid_3_8 ^ iaesSboxMid_3_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_3_t_2 = iaesSboxMid_3_4 ^ iaesSboxMid_3_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_3_t_3 = iaesSboxMid_3_15 ^ iaesSboxMid_3_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_3_t_4 = iaesSboxMid_3_16 ^ iaesSboxMid_3_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_3_t_5 = iaesSboxMid_3_14 ^ iaesSboxMid_3_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_3_t_6 = iaesSboxMid_3_17 ^ iaesSboxMid_3_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_3_t_7 = iaesSboxOut_3_t_0 ^ iaesSboxOut_3_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_3_t_8 = iaesSboxMid_3_0 ^ iaesSboxMid_3_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_3_t_9 = iaesSboxMid_3_5 ^ iaesSboxMid_3_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_3_t_10 = iaesSboxMid_3_7 ^ iaesSboxOut_3_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_3_t_11 = iaesSboxOut_3_t_0 ^ iaesSboxOut_3_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_3_t_12 = iaesSboxMid_3_14 ^ iaesSboxMid_3_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_3_t_13 = iaesSboxMid_3_17 ^ iaesSboxMid_3_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_3_t_14 = iaesSboxMid_3_17 ^ iaesSboxMid_3_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_3_t_15 = iaesSboxMid_3_4 ^ iaesSboxMid_3_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_3_t_16 = iaesSboxMid_3_7 ^ iaesSboxMid_3_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_3_t_17 = iaesSboxMid_3_8 ^ iaesSboxOut_3_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_3_t_18 = iaesSboxMid_3_13 ^ iaesSboxOut_3_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_3_t_19 = iaesSboxOut_3_t_2 ^ iaesSboxOut_3_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_3_t_20 = iaesSboxOut_3_t_4 ^ iaesSboxOut_3_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_3_t_22 = iaesSboxOut_3_t_2 ^ iaesSboxOut_3_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_3_t_23 = iaesSboxOut_3_t_7 ^ iaesSboxOut_3_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_3_t_24 = iaesSboxOut_3_t_5 ^ iaesSboxOut_3_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_3_t_25 = iaesSboxOut_3_t_6 ^ iaesSboxOut_3_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_3_t_26 = iaesSboxOut_3_t_9 ^ iaesSboxOut_3_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_3_t_27 = iaesSboxOut_3_t_10 ^ iaesSboxOut_3_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_3_t_28 = iaesSboxOut_3_t_11 ^ iaesSboxOut_3_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_3_t_29 = iaesSboxOut_3_t_15 ^ iaesSboxOut_3_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_3_o_0 = iaesSboxOut_3_t_9 ^ iaesSboxOut_3_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_3_o_1 = iaesSboxOut_3_t_14 ^ iaesSboxOut_3_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_3_o_2 = iaesSboxOut_3_t_19 ^ iaesSboxOut_3_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_3_o_3 = iaesSboxOut_3_t_23 ^ iaesSboxOut_3_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_3_o_4 = iaesSboxOut_3_t_12 ^ iaesSboxOut_3_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_3_o_5 = iaesSboxOut_3_t_17 ^ iaesSboxOut_3_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_3_o_6 = iaesSboxOut_3_t_26 ^ iaesSboxOut_3_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_3_o_7 = iaesSboxOut_3_t_13 ^ iaesSboxOut_3_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_3 = {iaesSboxOut_3_o_7,iaesSboxOut_3_o_6,iaesSboxOut_3_o_5,iaesSboxOut_3_o_4,iaesSboxOut_3_o_3,
    iaesSboxOut_3_o_2,iaesSboxOut_3_o_1,iaesSboxOut_3_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_24_1 = src1Bytes_4[6] ^ src1Bytes_4[1]; // @[CryptoUtils.scala 120:20]
  wire  t_24_2 = src1Bytes_4[5] ^ ~src1Bytes_4[2]; // @[CryptoUtils.scala 121:20]
  wire  t_24_3 = src1Bytes_4[2] ^ ~src1Bytes_4[1]; // @[CryptoUtils.scala 122:20]
  wire  t_24_4 = src1Bytes_4[5] ^ ~src1Bytes_4[3]; // @[CryptoUtils.scala 123:20]
  wire  o_24_0 = src1Bytes_4[7] ^ t_24_2; // @[CryptoUtils.scala 124:20]
  wire  o_24_1 = src1Bytes_4[4] ^ src1Bytes_4[3]; // @[CryptoUtils.scala 125:20]
  wire  o_24_2 = src1Bytes_4[7] ^ ~src1Bytes_4[6]; // @[CryptoUtils.scala 126:20]
  wire  o_24_3 = o_24_1 ^ t_8_5; // @[CryptoUtils.scala 127:20]
  wire  o_24_6 = src1Bytes_4[6] ^ ~o_8_1; // @[CryptoUtils.scala 130:20]
  wire  o_24_4 = src1Bytes_4[3] ^ o_24_6; // @[CryptoUtils.scala 128:20]
  wire  o_24_16 = src1Bytes_4[6] ^ ~src1Bytes_4[4]; // @[CryptoUtils.scala 140:20]
  wire  o_24_5 = o_24_16 ^ t_24_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_41 = ~o_24_1; // @[CryptoUtils.scala 131:22]
  wire  o_24_7 = src1Bytes_4[0] ^ ~o_24_1; // @[CryptoUtils.scala 131:20]
  wire  o_24_18 = src1Bytes_4[3] ^ ~src1Bytes_4[0]; // @[CryptoUtils.scala 142:20]
  wire  o_24_8 = o_24_2 ^ o_24_18; // @[CryptoUtils.scala 132:20]
  wire  o_24_9 = o_24_2 ^ t_8_5; // @[CryptoUtils.scala 133:20]
  wire  o_24_10 = o_24_8 ^ t_24_3; // @[CryptoUtils.scala 134:20]
  wire  o_24_20 = o_24_1 ^ t_24_3; // @[CryptoUtils.scala 144:20]
  wire  o_24_11 = o_24_8 ^ o_24_20; // @[CryptoUtils.scala 135:20]
  wire  o_24_12 = t_24_1 ^ t_24_4; // @[CryptoUtils.scala 136:20]
  wire  o_24_14 = o_24_16 ^ t_8_5; // @[CryptoUtils.scala 138:20]
  wire  o_24_13 = src1Bytes_4[5] ^ ~o_24_14; // @[CryptoUtils.scala 137:20]
  wire  o_24_15 = o_24_18 ^ t_24_1; // @[CryptoUtils.scala 139:20]
  wire  o_24_19 = src1Bytes_4[5] ^ _o_7_T_41; // @[CryptoUtils.scala 143:20]
  wire  t_25_0 = o_24_3 ^ o_24_12; // @[CryptoUtils.scala 191:20]
  wire  t_25_1 = o_24_9 & o_24_5; // @[CryptoUtils.scala 192:20]
  wire  t_25_2 = o_8_1 & o_24_6; // @[CryptoUtils.scala 193:20]
  wire  t_25_3 = o_24_10 ^ t_25_1; // @[CryptoUtils.scala 194:20]
  wire  t_25_4 = o_24_14 & o_24_0; // @[CryptoUtils.scala 195:20]
  wire  t_25_5 = t_25_4 ^ t_25_1; // @[CryptoUtils.scala 196:20]
  wire  t_25_6 = o_24_3 & o_24_12; // @[CryptoUtils.scala 197:20]
  wire  t_25_7 = o_24_16 & o_24_7; // @[CryptoUtils.scala 198:20]
  wire  t_25_8 = t_25_0 ^ t_25_6; // @[CryptoUtils.scala 199:20]
  wire  t_25_9 = o_24_15 & o_24_13; // @[CryptoUtils.scala 200:20]
  wire  t_25_10 = t_25_9 ^ t_25_6; // @[CryptoUtils.scala 201:20]
  wire  t_25_11 = o_24_1 & o_24_11; // @[CryptoUtils.scala 202:20]
  wire  t_25_12 = o_24_4 & o_24_20; // @[CryptoUtils.scala 203:20]
  wire  t_25_13 = t_25_12 ^ t_25_11; // @[CryptoUtils.scala 204:20]
  wire  t_25_14 = o_24_2 & o_24_8; // @[CryptoUtils.scala 205:20]
  wire  t_25_15 = t_25_14 ^ t_25_11; // @[CryptoUtils.scala 206:20]
  wire  t_25_16 = t_25_3 ^ t_25_2; // @[CryptoUtils.scala 207:20]
  wire  t_25_17 = t_25_5 ^ o_24_18; // @[CryptoUtils.scala 208:20]
  wire  t_25_18 = t_25_8 ^ t_25_7; // @[CryptoUtils.scala 209:20]
  wire  t_25_19 = t_25_10 ^ t_25_15; // @[CryptoUtils.scala 210:20]
  wire  t_25_20 = t_25_16 ^ t_25_13; // @[CryptoUtils.scala 211:20]
  wire  t_25_21 = t_25_17 ^ t_25_15; // @[CryptoUtils.scala 212:20]
  wire  t_25_22 = t_25_18 ^ t_25_13; // @[CryptoUtils.scala 213:20]
  wire  t_25_23 = t_25_19 ^ o_24_19; // @[CryptoUtils.scala 214:20]
  wire  t_25_24 = t_25_22 ^ t_25_23; // @[CryptoUtils.scala 215:20]
  wire  t_25_25 = t_25_22 & t_25_20; // @[CryptoUtils.scala 216:20]
  wire  t_25_26 = t_25_21 ^ t_25_25; // @[CryptoUtils.scala 217:20]
  wire  t_25_27 = t_25_20 ^ t_25_21; // @[CryptoUtils.scala 218:20]
  wire  t_25_28 = t_25_23 ^ t_25_25; // @[CryptoUtils.scala 219:20]
  wire  t_25_29 = t_25_28 & t_25_27; // @[CryptoUtils.scala 220:20]
  wire  t_25_30 = t_25_26 & t_25_24; // @[CryptoUtils.scala 221:20]
  wire  t_25_31 = t_25_20 & t_25_23; // @[CryptoUtils.scala 222:20]
  wire  t_25_32 = t_25_27 & t_25_31; // @[CryptoUtils.scala 223:20]
  wire  t_25_33 = t_25_27 ^ t_25_25; // @[CryptoUtils.scala 224:20]
  wire  t_25_34 = t_25_21 & t_25_22; // @[CryptoUtils.scala 225:20]
  wire  t_25_35 = t_25_24 & t_25_34; // @[CryptoUtils.scala 226:20]
  wire  t_25_36 = t_25_24 ^ t_25_25; // @[CryptoUtils.scala 227:20]
  wire  t_25_37 = t_25_21 ^ t_25_29; // @[CryptoUtils.scala 228:20]
  wire  t_25_38 = t_25_32 ^ t_25_33; // @[CryptoUtils.scala 229:20]
  wire  t_25_39 = t_25_23 ^ t_25_30; // @[CryptoUtils.scala 230:20]
  wire  t_25_40 = t_25_35 ^ t_25_36; // @[CryptoUtils.scala 231:20]
  wire  t_25_41 = t_25_38 ^ t_25_40; // @[CryptoUtils.scala 232:20]
  wire  t_25_42 = t_25_37 ^ t_25_39; // @[CryptoUtils.scala 233:20]
  wire  t_25_43 = t_25_37 ^ t_25_38; // @[CryptoUtils.scala 234:20]
  wire  t_25_44 = t_25_39 ^ t_25_40; // @[CryptoUtils.scala 235:20]
  wire  t_25_45 = t_25_42 ^ t_25_41; // @[CryptoUtils.scala 236:20]
  wire  o_25_0 = t_25_38 & o_24_7; // @[CryptoUtils.scala 237:20]
  wire  o_25_1 = t_25_37 & o_24_13; // @[CryptoUtils.scala 238:20]
  wire  o_25_2 = t_25_42 & o_24_11; // @[CryptoUtils.scala 239:20]
  wire  o_25_3 = t_25_45 & o_24_20; // @[CryptoUtils.scala 240:20]
  wire  o_25_4 = t_25_41 & o_24_8; // @[CryptoUtils.scala 241:20]
  wire  o_25_5 = t_25_44 & o_24_9; // @[CryptoUtils.scala 242:20]
  wire  o_25_6 = t_25_40 & o_8_1; // @[CryptoUtils.scala 243:20]
  wire  o_25_7 = t_25_39 & o_24_14; // @[CryptoUtils.scala 244:20]
  wire  o_25_8 = t_25_43 & o_24_3; // @[CryptoUtils.scala 245:20]
  wire  o_25_9 = t_25_38 & o_24_16; // @[CryptoUtils.scala 246:20]
  wire  o_25_10 = t_25_37 & o_24_15; // @[CryptoUtils.scala 247:20]
  wire  o_25_11 = t_25_42 & o_24_1; // @[CryptoUtils.scala 248:20]
  wire  o_25_12 = t_25_45 & o_24_4; // @[CryptoUtils.scala 249:20]
  wire  o_25_13 = t_25_41 & o_24_2; // @[CryptoUtils.scala 250:20]
  wire  o_25_14 = t_25_44 & o_24_5; // @[CryptoUtils.scala 251:20]
  wire  o_25_15 = t_25_40 & o_24_6; // @[CryptoUtils.scala 252:20]
  wire  o_25_16 = t_25_39 & o_24_0; // @[CryptoUtils.scala 253:20]
  wire  o_25_17 = t_25_43 & o_24_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_4_t_0 = iaesSboxMid_4_2 ^ iaesSboxMid_4_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_4_t_1 = iaesSboxMid_4_8 ^ iaesSboxMid_4_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_4_t_2 = iaesSboxMid_4_4 ^ iaesSboxMid_4_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_4_t_3 = iaesSboxMid_4_15 ^ iaesSboxMid_4_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_4_t_4 = iaesSboxMid_4_16 ^ iaesSboxMid_4_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_4_t_5 = iaesSboxMid_4_14 ^ iaesSboxMid_4_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_4_t_6 = iaesSboxMid_4_17 ^ iaesSboxMid_4_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_4_t_7 = iaesSboxOut_4_t_0 ^ iaesSboxOut_4_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_4_t_8 = iaesSboxMid_4_0 ^ iaesSboxMid_4_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_4_t_9 = iaesSboxMid_4_5 ^ iaesSboxMid_4_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_4_t_10 = iaesSboxMid_4_7 ^ iaesSboxOut_4_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_4_t_11 = iaesSboxOut_4_t_0 ^ iaesSboxOut_4_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_4_t_12 = iaesSboxMid_4_14 ^ iaesSboxMid_4_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_4_t_13 = iaesSboxMid_4_17 ^ iaesSboxMid_4_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_4_t_14 = iaesSboxMid_4_17 ^ iaesSboxMid_4_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_4_t_15 = iaesSboxMid_4_4 ^ iaesSboxMid_4_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_4_t_16 = iaesSboxMid_4_7 ^ iaesSboxMid_4_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_4_t_17 = iaesSboxMid_4_8 ^ iaesSboxOut_4_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_4_t_18 = iaesSboxMid_4_13 ^ iaesSboxOut_4_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_4_t_19 = iaesSboxOut_4_t_2 ^ iaesSboxOut_4_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_4_t_20 = iaesSboxOut_4_t_4 ^ iaesSboxOut_4_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_4_t_22 = iaesSboxOut_4_t_2 ^ iaesSboxOut_4_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_4_t_23 = iaesSboxOut_4_t_7 ^ iaesSboxOut_4_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_4_t_24 = iaesSboxOut_4_t_5 ^ iaesSboxOut_4_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_4_t_25 = iaesSboxOut_4_t_6 ^ iaesSboxOut_4_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_4_t_26 = iaesSboxOut_4_t_9 ^ iaesSboxOut_4_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_4_t_27 = iaesSboxOut_4_t_10 ^ iaesSboxOut_4_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_4_t_28 = iaesSboxOut_4_t_11 ^ iaesSboxOut_4_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_4_t_29 = iaesSboxOut_4_t_15 ^ iaesSboxOut_4_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_4_o_0 = iaesSboxOut_4_t_9 ^ iaesSboxOut_4_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_4_o_1 = iaesSboxOut_4_t_14 ^ iaesSboxOut_4_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_4_o_2 = iaesSboxOut_4_t_19 ^ iaesSboxOut_4_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_4_o_3 = iaesSboxOut_4_t_23 ^ iaesSboxOut_4_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_4_o_4 = iaesSboxOut_4_t_12 ^ iaesSboxOut_4_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_4_o_5 = iaesSboxOut_4_t_17 ^ iaesSboxOut_4_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_4_o_6 = iaesSboxOut_4_t_26 ^ iaesSboxOut_4_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_4_o_7 = iaesSboxOut_4_t_13 ^ iaesSboxOut_4_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_4 = {iaesSboxOut_4_o_7,iaesSboxOut_4_o_6,iaesSboxOut_4_o_5,iaesSboxOut_4_o_4,iaesSboxOut_4_o_3,
    iaesSboxOut_4_o_2,iaesSboxOut_4_o_1,iaesSboxOut_4_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_26_0 = src1Bytes_1[1] ^ src1Bytes_1[0]; // @[CryptoUtils.scala 119:20]
  wire  t_26_1 = src1Bytes_1[6] ^ src1Bytes_1[1]; // @[CryptoUtils.scala 120:20]
  wire  t_26_2 = src1Bytes_1[5] ^ ~src1Bytes_1[2]; // @[CryptoUtils.scala 121:20]
  wire  t_26_3 = src1Bytes_1[2] ^ ~src1Bytes_1[1]; // @[CryptoUtils.scala 122:20]
  wire  t_26_4 = src1Bytes_1[5] ^ ~src1Bytes_1[3]; // @[CryptoUtils.scala 123:20]
  wire  o_26_0 = src1Bytes_1[7] ^ t_26_2; // @[CryptoUtils.scala 124:20]
  wire  o_26_1 = src1Bytes_1[4] ^ src1Bytes_1[3]; // @[CryptoUtils.scala 125:20]
  wire  o_26_2 = src1Bytes_1[7] ^ ~src1Bytes_1[6]; // @[CryptoUtils.scala 126:20]
  wire  o_26_3 = o_26_1 ^ t_26_0; // @[CryptoUtils.scala 127:20]
  wire  o_26_17 = src1Bytes_1[7] ^ src1Bytes_1[4]; // @[CryptoUtils.scala 141:20]
  wire  o_26_6 = src1Bytes_1[6] ^ ~o_26_17; // @[CryptoUtils.scala 130:20]
  wire  o_26_4 = src1Bytes_1[3] ^ o_26_6; // @[CryptoUtils.scala 128:20]
  wire  o_26_16 = src1Bytes_1[6] ^ ~src1Bytes_1[4]; // @[CryptoUtils.scala 140:20]
  wire  o_26_5 = o_26_16 ^ t_26_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_45 = ~o_26_1; // @[CryptoUtils.scala 131:22]
  wire  o_26_7 = src1Bytes_1[0] ^ ~o_26_1; // @[CryptoUtils.scala 131:20]
  wire  o_26_18 = src1Bytes_1[3] ^ ~src1Bytes_1[0]; // @[CryptoUtils.scala 142:20]
  wire  o_26_8 = o_26_2 ^ o_26_18; // @[CryptoUtils.scala 132:20]
  wire  o_26_9 = o_26_2 ^ t_26_0; // @[CryptoUtils.scala 133:20]
  wire  o_26_10 = o_26_8 ^ t_26_3; // @[CryptoUtils.scala 134:20]
  wire  o_26_20 = o_26_1 ^ t_26_3; // @[CryptoUtils.scala 144:20]
  wire  o_26_11 = o_26_8 ^ o_26_20; // @[CryptoUtils.scala 135:20]
  wire  o_26_12 = t_26_1 ^ t_26_4; // @[CryptoUtils.scala 136:20]
  wire  o_26_14 = o_26_16 ^ t_26_0; // @[CryptoUtils.scala 138:20]
  wire  o_26_13 = src1Bytes_1[5] ^ ~o_26_14; // @[CryptoUtils.scala 137:20]
  wire  o_26_15 = o_26_18 ^ t_26_1; // @[CryptoUtils.scala 139:20]
  wire  o_26_19 = src1Bytes_1[5] ^ _o_7_T_45; // @[CryptoUtils.scala 143:20]
  wire  t_27_0 = o_26_3 ^ o_26_12; // @[CryptoUtils.scala 191:20]
  wire  t_27_1 = o_26_9 & o_26_5; // @[CryptoUtils.scala 192:20]
  wire  t_27_2 = o_26_17 & o_26_6; // @[CryptoUtils.scala 193:20]
  wire  t_27_3 = o_26_10 ^ t_27_1; // @[CryptoUtils.scala 194:20]
  wire  t_27_4 = o_26_14 & o_26_0; // @[CryptoUtils.scala 195:20]
  wire  t_27_5 = t_27_4 ^ t_27_1; // @[CryptoUtils.scala 196:20]
  wire  t_27_6 = o_26_3 & o_26_12; // @[CryptoUtils.scala 197:20]
  wire  t_27_7 = o_26_16 & o_26_7; // @[CryptoUtils.scala 198:20]
  wire  t_27_8 = t_27_0 ^ t_27_6; // @[CryptoUtils.scala 199:20]
  wire  t_27_9 = o_26_15 & o_26_13; // @[CryptoUtils.scala 200:20]
  wire  t_27_10 = t_27_9 ^ t_27_6; // @[CryptoUtils.scala 201:20]
  wire  t_27_11 = o_26_1 & o_26_11; // @[CryptoUtils.scala 202:20]
  wire  t_27_12 = o_26_4 & o_26_20; // @[CryptoUtils.scala 203:20]
  wire  t_27_13 = t_27_12 ^ t_27_11; // @[CryptoUtils.scala 204:20]
  wire  t_27_14 = o_26_2 & o_26_8; // @[CryptoUtils.scala 205:20]
  wire  t_27_15 = t_27_14 ^ t_27_11; // @[CryptoUtils.scala 206:20]
  wire  t_27_16 = t_27_3 ^ t_27_2; // @[CryptoUtils.scala 207:20]
  wire  t_27_17 = t_27_5 ^ o_26_18; // @[CryptoUtils.scala 208:20]
  wire  t_27_18 = t_27_8 ^ t_27_7; // @[CryptoUtils.scala 209:20]
  wire  t_27_19 = t_27_10 ^ t_27_15; // @[CryptoUtils.scala 210:20]
  wire  t_27_20 = t_27_16 ^ t_27_13; // @[CryptoUtils.scala 211:20]
  wire  t_27_21 = t_27_17 ^ t_27_15; // @[CryptoUtils.scala 212:20]
  wire  t_27_22 = t_27_18 ^ t_27_13; // @[CryptoUtils.scala 213:20]
  wire  t_27_23 = t_27_19 ^ o_26_19; // @[CryptoUtils.scala 214:20]
  wire  t_27_24 = t_27_22 ^ t_27_23; // @[CryptoUtils.scala 215:20]
  wire  t_27_25 = t_27_22 & t_27_20; // @[CryptoUtils.scala 216:20]
  wire  t_27_26 = t_27_21 ^ t_27_25; // @[CryptoUtils.scala 217:20]
  wire  t_27_27 = t_27_20 ^ t_27_21; // @[CryptoUtils.scala 218:20]
  wire  t_27_28 = t_27_23 ^ t_27_25; // @[CryptoUtils.scala 219:20]
  wire  t_27_29 = t_27_28 & t_27_27; // @[CryptoUtils.scala 220:20]
  wire  t_27_30 = t_27_26 & t_27_24; // @[CryptoUtils.scala 221:20]
  wire  t_27_31 = t_27_20 & t_27_23; // @[CryptoUtils.scala 222:20]
  wire  t_27_32 = t_27_27 & t_27_31; // @[CryptoUtils.scala 223:20]
  wire  t_27_33 = t_27_27 ^ t_27_25; // @[CryptoUtils.scala 224:20]
  wire  t_27_34 = t_27_21 & t_27_22; // @[CryptoUtils.scala 225:20]
  wire  t_27_35 = t_27_24 & t_27_34; // @[CryptoUtils.scala 226:20]
  wire  t_27_36 = t_27_24 ^ t_27_25; // @[CryptoUtils.scala 227:20]
  wire  t_27_37 = t_27_21 ^ t_27_29; // @[CryptoUtils.scala 228:20]
  wire  t_27_38 = t_27_32 ^ t_27_33; // @[CryptoUtils.scala 229:20]
  wire  t_27_39 = t_27_23 ^ t_27_30; // @[CryptoUtils.scala 230:20]
  wire  t_27_40 = t_27_35 ^ t_27_36; // @[CryptoUtils.scala 231:20]
  wire  t_27_41 = t_27_38 ^ t_27_40; // @[CryptoUtils.scala 232:20]
  wire  t_27_42 = t_27_37 ^ t_27_39; // @[CryptoUtils.scala 233:20]
  wire  t_27_43 = t_27_37 ^ t_27_38; // @[CryptoUtils.scala 234:20]
  wire  t_27_44 = t_27_39 ^ t_27_40; // @[CryptoUtils.scala 235:20]
  wire  t_27_45 = t_27_42 ^ t_27_41; // @[CryptoUtils.scala 236:20]
  wire  o_27_0 = t_27_38 & o_26_7; // @[CryptoUtils.scala 237:20]
  wire  o_27_1 = t_27_37 & o_26_13; // @[CryptoUtils.scala 238:20]
  wire  o_27_2 = t_27_42 & o_26_11; // @[CryptoUtils.scala 239:20]
  wire  o_27_3 = t_27_45 & o_26_20; // @[CryptoUtils.scala 240:20]
  wire  o_27_4 = t_27_41 & o_26_8; // @[CryptoUtils.scala 241:20]
  wire  o_27_5 = t_27_44 & o_26_9; // @[CryptoUtils.scala 242:20]
  wire  o_27_6 = t_27_40 & o_26_17; // @[CryptoUtils.scala 243:20]
  wire  o_27_7 = t_27_39 & o_26_14; // @[CryptoUtils.scala 244:20]
  wire  o_27_8 = t_27_43 & o_26_3; // @[CryptoUtils.scala 245:20]
  wire  o_27_9 = t_27_38 & o_26_16; // @[CryptoUtils.scala 246:20]
  wire  o_27_10 = t_27_37 & o_26_15; // @[CryptoUtils.scala 247:20]
  wire  o_27_11 = t_27_42 & o_26_1; // @[CryptoUtils.scala 248:20]
  wire  o_27_12 = t_27_45 & o_26_4; // @[CryptoUtils.scala 249:20]
  wire  o_27_13 = t_27_41 & o_26_2; // @[CryptoUtils.scala 250:20]
  wire  o_27_14 = t_27_44 & o_26_5; // @[CryptoUtils.scala 251:20]
  wire  o_27_15 = t_27_40 & o_26_6; // @[CryptoUtils.scala 252:20]
  wire  o_27_16 = t_27_39 & o_26_0; // @[CryptoUtils.scala 253:20]
  wire  o_27_17 = t_27_43 & o_26_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_5_t_0 = iaesSboxMid_5_2 ^ iaesSboxMid_5_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_5_t_1 = iaesSboxMid_5_8 ^ iaesSboxMid_5_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_5_t_2 = iaesSboxMid_5_4 ^ iaesSboxMid_5_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_5_t_3 = iaesSboxMid_5_15 ^ iaesSboxMid_5_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_5_t_4 = iaesSboxMid_5_16 ^ iaesSboxMid_5_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_5_t_5 = iaesSboxMid_5_14 ^ iaesSboxMid_5_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_5_t_6 = iaesSboxMid_5_17 ^ iaesSboxMid_5_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_5_t_7 = iaesSboxOut_5_t_0 ^ iaesSboxOut_5_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_5_t_8 = iaesSboxMid_5_0 ^ iaesSboxMid_5_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_5_t_9 = iaesSboxMid_5_5 ^ iaesSboxMid_5_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_5_t_10 = iaesSboxMid_5_7 ^ iaesSboxOut_5_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_5_t_11 = iaesSboxOut_5_t_0 ^ iaesSboxOut_5_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_5_t_12 = iaesSboxMid_5_14 ^ iaesSboxMid_5_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_5_t_13 = iaesSboxMid_5_17 ^ iaesSboxMid_5_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_5_t_14 = iaesSboxMid_5_17 ^ iaesSboxMid_5_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_5_t_15 = iaesSboxMid_5_4 ^ iaesSboxMid_5_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_5_t_16 = iaesSboxMid_5_7 ^ iaesSboxMid_5_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_5_t_17 = iaesSboxMid_5_8 ^ iaesSboxOut_5_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_5_t_18 = iaesSboxMid_5_13 ^ iaesSboxOut_5_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_5_t_19 = iaesSboxOut_5_t_2 ^ iaesSboxOut_5_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_5_t_20 = iaesSboxOut_5_t_4 ^ iaesSboxOut_5_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_5_t_22 = iaesSboxOut_5_t_2 ^ iaesSboxOut_5_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_5_t_23 = iaesSboxOut_5_t_7 ^ iaesSboxOut_5_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_5_t_24 = iaesSboxOut_5_t_5 ^ iaesSboxOut_5_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_5_t_25 = iaesSboxOut_5_t_6 ^ iaesSboxOut_5_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_5_t_26 = iaesSboxOut_5_t_9 ^ iaesSboxOut_5_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_5_t_27 = iaesSboxOut_5_t_10 ^ iaesSboxOut_5_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_5_t_28 = iaesSboxOut_5_t_11 ^ iaesSboxOut_5_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_5_t_29 = iaesSboxOut_5_t_15 ^ iaesSboxOut_5_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_5_o_0 = iaesSboxOut_5_t_9 ^ iaesSboxOut_5_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_5_o_1 = iaesSboxOut_5_t_14 ^ iaesSboxOut_5_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_5_o_2 = iaesSboxOut_5_t_19 ^ iaesSboxOut_5_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_5_o_3 = iaesSboxOut_5_t_23 ^ iaesSboxOut_5_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_5_o_4 = iaesSboxOut_5_t_12 ^ iaesSboxOut_5_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_5_o_5 = iaesSboxOut_5_t_17 ^ iaesSboxOut_5_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_5_o_6 = iaesSboxOut_5_t_26 ^ iaesSboxOut_5_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_5_o_7 = iaesSboxOut_5_t_13 ^ iaesSboxOut_5_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_5 = {iaesSboxOut_5_o_7,iaesSboxOut_5_o_6,iaesSboxOut_5_o_5,iaesSboxOut_5_o_4,iaesSboxOut_5_o_3,
    iaesSboxOut_5_o_2,iaesSboxOut_5_o_1,iaesSboxOut_5_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_28_1 = src2Bytes_6[6] ^ src2Bytes_6[1]; // @[CryptoUtils.scala 120:20]
  wire  t_28_2 = src2Bytes_6[5] ^ ~src2Bytes_6[2]; // @[CryptoUtils.scala 121:20]
  wire  t_28_3 = src2Bytes_6[2] ^ ~src2Bytes_6[1]; // @[CryptoUtils.scala 122:20]
  wire  t_28_4 = src2Bytes_6[5] ^ ~src2Bytes_6[3]; // @[CryptoUtils.scala 123:20]
  wire  o_28_0 = src2Bytes_6[7] ^ t_28_2; // @[CryptoUtils.scala 124:20]
  wire  o_28_1 = src2Bytes_6[4] ^ src2Bytes_6[3]; // @[CryptoUtils.scala 125:20]
  wire  o_28_2 = src2Bytes_6[7] ^ ~src2Bytes_6[6]; // @[CryptoUtils.scala 126:20]
  wire  o_28_3 = o_28_1 ^ t_12_5; // @[CryptoUtils.scala 127:20]
  wire  o_28_6 = src2Bytes_6[6] ^ ~o_12_1; // @[CryptoUtils.scala 130:20]
  wire  o_28_4 = src2Bytes_6[3] ^ o_28_6; // @[CryptoUtils.scala 128:20]
  wire  o_28_16 = src2Bytes_6[6] ^ ~src2Bytes_6[4]; // @[CryptoUtils.scala 140:20]
  wire  o_28_5 = o_28_16 ^ t_28_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_49 = ~o_28_1; // @[CryptoUtils.scala 131:22]
  wire  o_28_7 = src2Bytes_6[0] ^ ~o_28_1; // @[CryptoUtils.scala 131:20]
  wire  o_28_18 = src2Bytes_6[3] ^ ~src2Bytes_6[0]; // @[CryptoUtils.scala 142:20]
  wire  o_28_8 = o_28_2 ^ o_28_18; // @[CryptoUtils.scala 132:20]
  wire  o_28_9 = o_28_2 ^ t_12_5; // @[CryptoUtils.scala 133:20]
  wire  o_28_10 = o_28_8 ^ t_28_3; // @[CryptoUtils.scala 134:20]
  wire  o_28_20 = o_28_1 ^ t_28_3; // @[CryptoUtils.scala 144:20]
  wire  o_28_11 = o_28_8 ^ o_28_20; // @[CryptoUtils.scala 135:20]
  wire  o_28_12 = t_28_1 ^ t_28_4; // @[CryptoUtils.scala 136:20]
  wire  o_28_14 = o_28_16 ^ t_12_5; // @[CryptoUtils.scala 138:20]
  wire  o_28_13 = src2Bytes_6[5] ^ ~o_28_14; // @[CryptoUtils.scala 137:20]
  wire  o_28_15 = o_28_18 ^ t_28_1; // @[CryptoUtils.scala 139:20]
  wire  o_28_19 = src2Bytes_6[5] ^ _o_7_T_49; // @[CryptoUtils.scala 143:20]
  wire  t_29_0 = o_28_3 ^ o_28_12; // @[CryptoUtils.scala 191:20]
  wire  t_29_1 = o_28_9 & o_28_5; // @[CryptoUtils.scala 192:20]
  wire  t_29_2 = o_12_1 & o_28_6; // @[CryptoUtils.scala 193:20]
  wire  t_29_3 = o_28_10 ^ t_29_1; // @[CryptoUtils.scala 194:20]
  wire  t_29_4 = o_28_14 & o_28_0; // @[CryptoUtils.scala 195:20]
  wire  t_29_5 = t_29_4 ^ t_29_1; // @[CryptoUtils.scala 196:20]
  wire  t_29_6 = o_28_3 & o_28_12; // @[CryptoUtils.scala 197:20]
  wire  t_29_7 = o_28_16 & o_28_7; // @[CryptoUtils.scala 198:20]
  wire  t_29_8 = t_29_0 ^ t_29_6; // @[CryptoUtils.scala 199:20]
  wire  t_29_9 = o_28_15 & o_28_13; // @[CryptoUtils.scala 200:20]
  wire  t_29_10 = t_29_9 ^ t_29_6; // @[CryptoUtils.scala 201:20]
  wire  t_29_11 = o_28_1 & o_28_11; // @[CryptoUtils.scala 202:20]
  wire  t_29_12 = o_28_4 & o_28_20; // @[CryptoUtils.scala 203:20]
  wire  t_29_13 = t_29_12 ^ t_29_11; // @[CryptoUtils.scala 204:20]
  wire  t_29_14 = o_28_2 & o_28_8; // @[CryptoUtils.scala 205:20]
  wire  t_29_15 = t_29_14 ^ t_29_11; // @[CryptoUtils.scala 206:20]
  wire  t_29_16 = t_29_3 ^ t_29_2; // @[CryptoUtils.scala 207:20]
  wire  t_29_17 = t_29_5 ^ o_28_18; // @[CryptoUtils.scala 208:20]
  wire  t_29_18 = t_29_8 ^ t_29_7; // @[CryptoUtils.scala 209:20]
  wire  t_29_19 = t_29_10 ^ t_29_15; // @[CryptoUtils.scala 210:20]
  wire  t_29_20 = t_29_16 ^ t_29_13; // @[CryptoUtils.scala 211:20]
  wire  t_29_21 = t_29_17 ^ t_29_15; // @[CryptoUtils.scala 212:20]
  wire  t_29_22 = t_29_18 ^ t_29_13; // @[CryptoUtils.scala 213:20]
  wire  t_29_23 = t_29_19 ^ o_28_19; // @[CryptoUtils.scala 214:20]
  wire  t_29_24 = t_29_22 ^ t_29_23; // @[CryptoUtils.scala 215:20]
  wire  t_29_25 = t_29_22 & t_29_20; // @[CryptoUtils.scala 216:20]
  wire  t_29_26 = t_29_21 ^ t_29_25; // @[CryptoUtils.scala 217:20]
  wire  t_29_27 = t_29_20 ^ t_29_21; // @[CryptoUtils.scala 218:20]
  wire  t_29_28 = t_29_23 ^ t_29_25; // @[CryptoUtils.scala 219:20]
  wire  t_29_29 = t_29_28 & t_29_27; // @[CryptoUtils.scala 220:20]
  wire  t_29_30 = t_29_26 & t_29_24; // @[CryptoUtils.scala 221:20]
  wire  t_29_31 = t_29_20 & t_29_23; // @[CryptoUtils.scala 222:20]
  wire  t_29_32 = t_29_27 & t_29_31; // @[CryptoUtils.scala 223:20]
  wire  t_29_33 = t_29_27 ^ t_29_25; // @[CryptoUtils.scala 224:20]
  wire  t_29_34 = t_29_21 & t_29_22; // @[CryptoUtils.scala 225:20]
  wire  t_29_35 = t_29_24 & t_29_34; // @[CryptoUtils.scala 226:20]
  wire  t_29_36 = t_29_24 ^ t_29_25; // @[CryptoUtils.scala 227:20]
  wire  t_29_37 = t_29_21 ^ t_29_29; // @[CryptoUtils.scala 228:20]
  wire  t_29_38 = t_29_32 ^ t_29_33; // @[CryptoUtils.scala 229:20]
  wire  t_29_39 = t_29_23 ^ t_29_30; // @[CryptoUtils.scala 230:20]
  wire  t_29_40 = t_29_35 ^ t_29_36; // @[CryptoUtils.scala 231:20]
  wire  t_29_41 = t_29_38 ^ t_29_40; // @[CryptoUtils.scala 232:20]
  wire  t_29_42 = t_29_37 ^ t_29_39; // @[CryptoUtils.scala 233:20]
  wire  t_29_43 = t_29_37 ^ t_29_38; // @[CryptoUtils.scala 234:20]
  wire  t_29_44 = t_29_39 ^ t_29_40; // @[CryptoUtils.scala 235:20]
  wire  t_29_45 = t_29_42 ^ t_29_41; // @[CryptoUtils.scala 236:20]
  wire  o_29_0 = t_29_38 & o_28_7; // @[CryptoUtils.scala 237:20]
  wire  o_29_1 = t_29_37 & o_28_13; // @[CryptoUtils.scala 238:20]
  wire  o_29_2 = t_29_42 & o_28_11; // @[CryptoUtils.scala 239:20]
  wire  o_29_3 = t_29_45 & o_28_20; // @[CryptoUtils.scala 240:20]
  wire  o_29_4 = t_29_41 & o_28_8; // @[CryptoUtils.scala 241:20]
  wire  o_29_5 = t_29_44 & o_28_9; // @[CryptoUtils.scala 242:20]
  wire  o_29_6 = t_29_40 & o_12_1; // @[CryptoUtils.scala 243:20]
  wire  o_29_7 = t_29_39 & o_28_14; // @[CryptoUtils.scala 244:20]
  wire  o_29_8 = t_29_43 & o_28_3; // @[CryptoUtils.scala 245:20]
  wire  o_29_9 = t_29_38 & o_28_16; // @[CryptoUtils.scala 246:20]
  wire  o_29_10 = t_29_37 & o_28_15; // @[CryptoUtils.scala 247:20]
  wire  o_29_11 = t_29_42 & o_28_1; // @[CryptoUtils.scala 248:20]
  wire  o_29_12 = t_29_45 & o_28_4; // @[CryptoUtils.scala 249:20]
  wire  o_29_13 = t_29_41 & o_28_2; // @[CryptoUtils.scala 250:20]
  wire  o_29_14 = t_29_44 & o_28_5; // @[CryptoUtils.scala 251:20]
  wire  o_29_15 = t_29_40 & o_28_6; // @[CryptoUtils.scala 252:20]
  wire  o_29_16 = t_29_39 & o_28_0; // @[CryptoUtils.scala 253:20]
  wire  o_29_17 = t_29_43 & o_28_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_6_t_0 = iaesSboxMid_6_2 ^ iaesSboxMid_6_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_6_t_1 = iaesSboxMid_6_8 ^ iaesSboxMid_6_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_6_t_2 = iaesSboxMid_6_4 ^ iaesSboxMid_6_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_6_t_3 = iaesSboxMid_6_15 ^ iaesSboxMid_6_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_6_t_4 = iaesSboxMid_6_16 ^ iaesSboxMid_6_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_6_t_5 = iaesSboxMid_6_14 ^ iaesSboxMid_6_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_6_t_6 = iaesSboxMid_6_17 ^ iaesSboxMid_6_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_6_t_7 = iaesSboxOut_6_t_0 ^ iaesSboxOut_6_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_6_t_8 = iaesSboxMid_6_0 ^ iaesSboxMid_6_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_6_t_9 = iaesSboxMid_6_5 ^ iaesSboxMid_6_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_6_t_10 = iaesSboxMid_6_7 ^ iaesSboxOut_6_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_6_t_11 = iaesSboxOut_6_t_0 ^ iaesSboxOut_6_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_6_t_12 = iaesSboxMid_6_14 ^ iaesSboxMid_6_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_6_t_13 = iaesSboxMid_6_17 ^ iaesSboxMid_6_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_6_t_14 = iaesSboxMid_6_17 ^ iaesSboxMid_6_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_6_t_15 = iaesSboxMid_6_4 ^ iaesSboxMid_6_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_6_t_16 = iaesSboxMid_6_7 ^ iaesSboxMid_6_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_6_t_17 = iaesSboxMid_6_8 ^ iaesSboxOut_6_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_6_t_18 = iaesSboxMid_6_13 ^ iaesSboxOut_6_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_6_t_19 = iaesSboxOut_6_t_2 ^ iaesSboxOut_6_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_6_t_20 = iaesSboxOut_6_t_4 ^ iaesSboxOut_6_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_6_t_22 = iaesSboxOut_6_t_2 ^ iaesSboxOut_6_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_6_t_23 = iaesSboxOut_6_t_7 ^ iaesSboxOut_6_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_6_t_24 = iaesSboxOut_6_t_5 ^ iaesSboxOut_6_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_6_t_25 = iaesSboxOut_6_t_6 ^ iaesSboxOut_6_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_6_t_26 = iaesSboxOut_6_t_9 ^ iaesSboxOut_6_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_6_t_27 = iaesSboxOut_6_t_10 ^ iaesSboxOut_6_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_6_t_28 = iaesSboxOut_6_t_11 ^ iaesSboxOut_6_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_6_t_29 = iaesSboxOut_6_t_15 ^ iaesSboxOut_6_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_6_o_0 = iaesSboxOut_6_t_9 ^ iaesSboxOut_6_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_6_o_1 = iaesSboxOut_6_t_14 ^ iaesSboxOut_6_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_6_o_2 = iaesSboxOut_6_t_19 ^ iaesSboxOut_6_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_6_o_3 = iaesSboxOut_6_t_23 ^ iaesSboxOut_6_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_6_o_4 = iaesSboxOut_6_t_12 ^ iaesSboxOut_6_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_6_o_5 = iaesSboxOut_6_t_17 ^ iaesSboxOut_6_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_6_o_6 = iaesSboxOut_6_t_26 ^ iaesSboxOut_6_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_6_o_7 = iaesSboxOut_6_t_13 ^ iaesSboxOut_6_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_6 = {iaesSboxOut_6_o_7,iaesSboxOut_6_o_6,iaesSboxOut_6_o_5,iaesSboxOut_6_o_4,iaesSboxOut_6_o_3,
    iaesSboxOut_6_o_2,iaesSboxOut_6_o_1,iaesSboxOut_6_o_0}; // @[CryptoUtils.scala 349:7]
  wire  t_30_0 = src2Bytes_3[1] ^ src2Bytes_3[0]; // @[CryptoUtils.scala 119:20]
  wire  t_30_1 = src2Bytes_3[6] ^ src2Bytes_3[1]; // @[CryptoUtils.scala 120:20]
  wire  t_30_2 = src2Bytes_3[5] ^ ~src2Bytes_3[2]; // @[CryptoUtils.scala 121:20]
  wire  t_30_3 = src2Bytes_3[2] ^ ~src2Bytes_3[1]; // @[CryptoUtils.scala 122:20]
  wire  t_30_4 = src2Bytes_3[5] ^ ~src2Bytes_3[3]; // @[CryptoUtils.scala 123:20]
  wire  o_30_0 = src2Bytes_3[7] ^ t_30_2; // @[CryptoUtils.scala 124:20]
  wire  o_30_1 = src2Bytes_3[4] ^ src2Bytes_3[3]; // @[CryptoUtils.scala 125:20]
  wire  o_30_2 = src2Bytes_3[7] ^ ~src2Bytes_3[6]; // @[CryptoUtils.scala 126:20]
  wire  o_30_3 = o_30_1 ^ t_30_0; // @[CryptoUtils.scala 127:20]
  wire  o_30_17 = src2Bytes_3[7] ^ src2Bytes_3[4]; // @[CryptoUtils.scala 141:20]
  wire  o_30_6 = src2Bytes_3[6] ^ ~o_30_17; // @[CryptoUtils.scala 130:20]
  wire  o_30_4 = src2Bytes_3[3] ^ o_30_6; // @[CryptoUtils.scala 128:20]
  wire  o_30_16 = src2Bytes_3[6] ^ ~src2Bytes_3[4]; // @[CryptoUtils.scala 140:20]
  wire  o_30_5 = o_30_16 ^ t_30_2; // @[CryptoUtils.scala 129:20]
  wire  _o_7_T_53 = ~o_30_1; // @[CryptoUtils.scala 131:22]
  wire  o_30_7 = src2Bytes_3[0] ^ ~o_30_1; // @[CryptoUtils.scala 131:20]
  wire  o_30_18 = src2Bytes_3[3] ^ ~src2Bytes_3[0]; // @[CryptoUtils.scala 142:20]
  wire  o_30_8 = o_30_2 ^ o_30_18; // @[CryptoUtils.scala 132:20]
  wire  o_30_9 = o_30_2 ^ t_30_0; // @[CryptoUtils.scala 133:20]
  wire  o_30_10 = o_30_8 ^ t_30_3; // @[CryptoUtils.scala 134:20]
  wire  o_30_20 = o_30_1 ^ t_30_3; // @[CryptoUtils.scala 144:20]
  wire  o_30_11 = o_30_8 ^ o_30_20; // @[CryptoUtils.scala 135:20]
  wire  o_30_12 = t_30_1 ^ t_30_4; // @[CryptoUtils.scala 136:20]
  wire  o_30_14 = o_30_16 ^ t_30_0; // @[CryptoUtils.scala 138:20]
  wire  o_30_13 = src2Bytes_3[5] ^ ~o_30_14; // @[CryptoUtils.scala 137:20]
  wire  o_30_15 = o_30_18 ^ t_30_1; // @[CryptoUtils.scala 139:20]
  wire  o_30_19 = src2Bytes_3[5] ^ _o_7_T_53; // @[CryptoUtils.scala 143:20]
  wire  t_31_0 = o_30_3 ^ o_30_12; // @[CryptoUtils.scala 191:20]
  wire  t_31_1 = o_30_9 & o_30_5; // @[CryptoUtils.scala 192:20]
  wire  t_31_2 = o_30_17 & o_30_6; // @[CryptoUtils.scala 193:20]
  wire  t_31_3 = o_30_10 ^ t_31_1; // @[CryptoUtils.scala 194:20]
  wire  t_31_4 = o_30_14 & o_30_0; // @[CryptoUtils.scala 195:20]
  wire  t_31_5 = t_31_4 ^ t_31_1; // @[CryptoUtils.scala 196:20]
  wire  t_31_6 = o_30_3 & o_30_12; // @[CryptoUtils.scala 197:20]
  wire  t_31_7 = o_30_16 & o_30_7; // @[CryptoUtils.scala 198:20]
  wire  t_31_8 = t_31_0 ^ t_31_6; // @[CryptoUtils.scala 199:20]
  wire  t_31_9 = o_30_15 & o_30_13; // @[CryptoUtils.scala 200:20]
  wire  t_31_10 = t_31_9 ^ t_31_6; // @[CryptoUtils.scala 201:20]
  wire  t_31_11 = o_30_1 & o_30_11; // @[CryptoUtils.scala 202:20]
  wire  t_31_12 = o_30_4 & o_30_20; // @[CryptoUtils.scala 203:20]
  wire  t_31_13 = t_31_12 ^ t_31_11; // @[CryptoUtils.scala 204:20]
  wire  t_31_14 = o_30_2 & o_30_8; // @[CryptoUtils.scala 205:20]
  wire  t_31_15 = t_31_14 ^ t_31_11; // @[CryptoUtils.scala 206:20]
  wire  t_31_16 = t_31_3 ^ t_31_2; // @[CryptoUtils.scala 207:20]
  wire  t_31_17 = t_31_5 ^ o_30_18; // @[CryptoUtils.scala 208:20]
  wire  t_31_18 = t_31_8 ^ t_31_7; // @[CryptoUtils.scala 209:20]
  wire  t_31_19 = t_31_10 ^ t_31_15; // @[CryptoUtils.scala 210:20]
  wire  t_31_20 = t_31_16 ^ t_31_13; // @[CryptoUtils.scala 211:20]
  wire  t_31_21 = t_31_17 ^ t_31_15; // @[CryptoUtils.scala 212:20]
  wire  t_31_22 = t_31_18 ^ t_31_13; // @[CryptoUtils.scala 213:20]
  wire  t_31_23 = t_31_19 ^ o_30_19; // @[CryptoUtils.scala 214:20]
  wire  t_31_24 = t_31_22 ^ t_31_23; // @[CryptoUtils.scala 215:20]
  wire  t_31_25 = t_31_22 & t_31_20; // @[CryptoUtils.scala 216:20]
  wire  t_31_26 = t_31_21 ^ t_31_25; // @[CryptoUtils.scala 217:20]
  wire  t_31_27 = t_31_20 ^ t_31_21; // @[CryptoUtils.scala 218:20]
  wire  t_31_28 = t_31_23 ^ t_31_25; // @[CryptoUtils.scala 219:20]
  wire  t_31_29 = t_31_28 & t_31_27; // @[CryptoUtils.scala 220:20]
  wire  t_31_30 = t_31_26 & t_31_24; // @[CryptoUtils.scala 221:20]
  wire  t_31_31 = t_31_20 & t_31_23; // @[CryptoUtils.scala 222:20]
  wire  t_31_32 = t_31_27 & t_31_31; // @[CryptoUtils.scala 223:20]
  wire  t_31_33 = t_31_27 ^ t_31_25; // @[CryptoUtils.scala 224:20]
  wire  t_31_34 = t_31_21 & t_31_22; // @[CryptoUtils.scala 225:20]
  wire  t_31_35 = t_31_24 & t_31_34; // @[CryptoUtils.scala 226:20]
  wire  t_31_36 = t_31_24 ^ t_31_25; // @[CryptoUtils.scala 227:20]
  wire  t_31_37 = t_31_21 ^ t_31_29; // @[CryptoUtils.scala 228:20]
  wire  t_31_38 = t_31_32 ^ t_31_33; // @[CryptoUtils.scala 229:20]
  wire  t_31_39 = t_31_23 ^ t_31_30; // @[CryptoUtils.scala 230:20]
  wire  t_31_40 = t_31_35 ^ t_31_36; // @[CryptoUtils.scala 231:20]
  wire  t_31_41 = t_31_38 ^ t_31_40; // @[CryptoUtils.scala 232:20]
  wire  t_31_42 = t_31_37 ^ t_31_39; // @[CryptoUtils.scala 233:20]
  wire  t_31_43 = t_31_37 ^ t_31_38; // @[CryptoUtils.scala 234:20]
  wire  t_31_44 = t_31_39 ^ t_31_40; // @[CryptoUtils.scala 235:20]
  wire  t_31_45 = t_31_42 ^ t_31_41; // @[CryptoUtils.scala 236:20]
  wire  o_31_0 = t_31_38 & o_30_7; // @[CryptoUtils.scala 237:20]
  wire  o_31_1 = t_31_37 & o_30_13; // @[CryptoUtils.scala 238:20]
  wire  o_31_2 = t_31_42 & o_30_11; // @[CryptoUtils.scala 239:20]
  wire  o_31_3 = t_31_45 & o_30_20; // @[CryptoUtils.scala 240:20]
  wire  o_31_4 = t_31_41 & o_30_8; // @[CryptoUtils.scala 241:20]
  wire  o_31_5 = t_31_44 & o_30_9; // @[CryptoUtils.scala 242:20]
  wire  o_31_6 = t_31_40 & o_30_17; // @[CryptoUtils.scala 243:20]
  wire  o_31_7 = t_31_39 & o_30_14; // @[CryptoUtils.scala 244:20]
  wire  o_31_8 = t_31_43 & o_30_3; // @[CryptoUtils.scala 245:20]
  wire  o_31_9 = t_31_38 & o_30_16; // @[CryptoUtils.scala 246:20]
  wire  o_31_10 = t_31_37 & o_30_15; // @[CryptoUtils.scala 247:20]
  wire  o_31_11 = t_31_42 & o_30_1; // @[CryptoUtils.scala 248:20]
  wire  o_31_12 = t_31_45 & o_30_4; // @[CryptoUtils.scala 249:20]
  wire  o_31_13 = t_31_41 & o_30_2; // @[CryptoUtils.scala 250:20]
  wire  o_31_14 = t_31_44 & o_30_5; // @[CryptoUtils.scala 251:20]
  wire  o_31_15 = t_31_40 & o_30_6; // @[CryptoUtils.scala 252:20]
  wire  o_31_16 = t_31_39 & o_30_0; // @[CryptoUtils.scala 253:20]
  wire  o_31_17 = t_31_43 & o_30_12; // @[CryptoUtils.scala 254:20]
  wire  iaesSboxOut_7_t_0 = iaesSboxMid_7_2 ^ iaesSboxMid_7_11; // @[CryptoUtils.scala 311:20]
  wire  iaesSboxOut_7_t_1 = iaesSboxMid_7_8 ^ iaesSboxMid_7_9; // @[CryptoUtils.scala 312:20]
  wire  iaesSboxOut_7_t_2 = iaesSboxMid_7_4 ^ iaesSboxMid_7_12; // @[CryptoUtils.scala 313:20]
  wire  iaesSboxOut_7_t_3 = iaesSboxMid_7_15 ^ iaesSboxMid_7_0; // @[CryptoUtils.scala 314:20]
  wire  iaesSboxOut_7_t_4 = iaesSboxMid_7_16 ^ iaesSboxMid_7_6; // @[CryptoUtils.scala 315:20]
  wire  iaesSboxOut_7_t_5 = iaesSboxMid_7_14 ^ iaesSboxMid_7_1; // @[CryptoUtils.scala 316:20]
  wire  iaesSboxOut_7_t_6 = iaesSboxMid_7_17 ^ iaesSboxMid_7_10; // @[CryptoUtils.scala 317:20]
  wire  iaesSboxOut_7_t_7 = iaesSboxOut_7_t_0 ^ iaesSboxOut_7_t_1; // @[CryptoUtils.scala 318:20]
  wire  iaesSboxOut_7_t_8 = iaesSboxMid_7_0 ^ iaesSboxMid_7_3; // @[CryptoUtils.scala 319:20]
  wire  iaesSboxOut_7_t_9 = iaesSboxMid_7_5 ^ iaesSboxMid_7_13; // @[CryptoUtils.scala 320:20]
  wire  iaesSboxOut_7_t_10 = iaesSboxMid_7_7 ^ iaesSboxOut_7_t_4; // @[CryptoUtils.scala 321:20]
  wire  iaesSboxOut_7_t_11 = iaesSboxOut_7_t_0 ^ iaesSboxOut_7_t_3; // @[CryptoUtils.scala 322:20]
  wire  iaesSboxOut_7_t_12 = iaesSboxMid_7_14 ^ iaesSboxMid_7_16; // @[CryptoUtils.scala 323:20]
  wire  iaesSboxOut_7_t_13 = iaesSboxMid_7_17 ^ iaesSboxMid_7_1; // @[CryptoUtils.scala 324:20]
  wire  iaesSboxOut_7_t_14 = iaesSboxMid_7_17 ^ iaesSboxMid_7_12; // @[CryptoUtils.scala 325:20]
  wire  iaesSboxOut_7_t_15 = iaesSboxMid_7_4 ^ iaesSboxMid_7_9; // @[CryptoUtils.scala 326:20]
  wire  iaesSboxOut_7_t_16 = iaesSboxMid_7_7 ^ iaesSboxMid_7_11; // @[CryptoUtils.scala 327:20]
  wire  iaesSboxOut_7_t_17 = iaesSboxMid_7_8 ^ iaesSboxOut_7_t_2; // @[CryptoUtils.scala 328:20]
  wire  iaesSboxOut_7_t_18 = iaesSboxMid_7_13 ^ iaesSboxOut_7_t_5; // @[CryptoUtils.scala 329:20]
  wire  iaesSboxOut_7_t_19 = iaesSboxOut_7_t_2 ^ iaesSboxOut_7_t_3; // @[CryptoUtils.scala 330:20]
  wire  iaesSboxOut_7_t_20 = iaesSboxOut_7_t_4 ^ iaesSboxOut_7_t_6; // @[CryptoUtils.scala 331:20]
  wire  iaesSboxOut_7_t_22 = iaesSboxOut_7_t_2 ^ iaesSboxOut_7_t_7; // @[CryptoUtils.scala 333:20]
  wire  iaesSboxOut_7_t_23 = iaesSboxOut_7_t_7 ^ iaesSboxOut_7_t_8; // @[CryptoUtils.scala 334:20]
  wire  iaesSboxOut_7_t_24 = iaesSboxOut_7_t_5 ^ iaesSboxOut_7_t_7; // @[CryptoUtils.scala 335:20]
  wire  iaesSboxOut_7_t_25 = iaesSboxOut_7_t_6 ^ iaesSboxOut_7_t_10; // @[CryptoUtils.scala 336:20]
  wire  iaesSboxOut_7_t_26 = iaesSboxOut_7_t_9 ^ iaesSboxOut_7_t_11; // @[CryptoUtils.scala 337:20]
  wire  iaesSboxOut_7_t_27 = iaesSboxOut_7_t_10 ^ iaesSboxOut_7_t_18; // @[CryptoUtils.scala 338:20]
  wire  iaesSboxOut_7_t_28 = iaesSboxOut_7_t_11 ^ iaesSboxOut_7_t_25; // @[CryptoUtils.scala 339:20]
  wire  iaesSboxOut_7_t_29 = iaesSboxOut_7_t_15 ^ iaesSboxOut_7_t_20; // @[CryptoUtils.scala 340:20]
  wire  iaesSboxOut_7_o_0 = iaesSboxOut_7_t_9 ^ iaesSboxOut_7_t_16; // @[CryptoUtils.scala 341:20]
  wire  iaesSboxOut_7_o_1 = iaesSboxOut_7_t_14 ^ iaesSboxOut_7_t_23; // @[CryptoUtils.scala 342:20]
  wire  iaesSboxOut_7_o_2 = iaesSboxOut_7_t_19 ^ iaesSboxOut_7_t_24; // @[CryptoUtils.scala 343:20]
  wire  iaesSboxOut_7_o_3 = iaesSboxOut_7_t_23 ^ iaesSboxOut_7_t_27; // @[CryptoUtils.scala 344:20]
  wire  iaesSboxOut_7_o_4 = iaesSboxOut_7_t_12 ^ iaesSboxOut_7_t_22; // @[CryptoUtils.scala 345:20]
  wire  iaesSboxOut_7_o_5 = iaesSboxOut_7_t_17 ^ iaesSboxOut_7_t_28; // @[CryptoUtils.scala 346:20]
  wire  iaesSboxOut_7_o_6 = iaesSboxOut_7_t_26 ^ iaesSboxOut_7_t_29; // @[CryptoUtils.scala 347:20]
  wire  iaesSboxOut_7_o_7 = iaesSboxOut_7_t_13 ^ iaesSboxOut_7_t_22; // @[CryptoUtils.scala 348:20]
  wire [7:0] iaesSboxOut_7 = {iaesSboxOut_7_o_7,iaesSboxOut_7_o_6,iaesSboxOut_7_o_5,iaesSboxOut_7_o_4,iaesSboxOut_7_o_3,
    iaesSboxOut_7_o_2,iaesSboxOut_7_o_1,iaesSboxOut_7_o_0}; // @[CryptoUtils.scala 349:7]
  wire [15:0] aes64es_lo_lo = {aesSboxOut_1_o_7,aesSboxOut_1_o_6,aesSboxOut_1_o_5,aesSboxOut_1_o_4,aesSboxOut_1_o_3,
    aesSboxOut_1_o_2,aesSboxOut_1_o_1,aesSboxOut_1_o_0,aesSboxOut_0}; // @[Bku.scala 227:28]
  wire [31:0] aes64es_lo = {aesSboxOut_3_o_7,aesSboxOut_3_o_6,aesSboxOut_3_o_5,aesSboxOut_3_o_4,aesSboxOut_3_o_3,
    aesSboxOut_3_o_2,aesSboxOut_3_o_1,aesSboxOut_3_o_0,aesSboxOut_2,aes64es_lo_lo}; // @[Bku.scala 227:28]
  wire [15:0] aes64es_hi_lo = {aesSboxOut_5_o_7,aesSboxOut_5_o_6,aesSboxOut_5_o_5,aesSboxOut_5_o_4,aesSboxOut_5_o_3,
    aesSboxOut_5_o_2,aesSboxOut_5_o_1,aesSboxOut_5_o_0,aesSboxOut_4}; // @[Bku.scala 227:28]
  wire [31:0] aes64es_hi = {aesSboxOut_7_o_7,aesSboxOut_7_o_6,aesSboxOut_7_o_5,aesSboxOut_7_o_4,aesSboxOut_7_o_3,
    aesSboxOut_7_o_2,aesSboxOut_7_o_1,aesSboxOut_7_o_0,aesSboxOut_6,aes64es_hi_lo}; // @[Bku.scala 227:28]
  wire [63:0] aes64es = {aes64es_hi,aes64es_lo}; // @[Bku.scala 227:28]
  wire [15:0] aes64ds_lo_lo = {iaesSboxOut_1_o_7,iaesSboxOut_1_o_6,iaesSboxOut_1_o_5,iaesSboxOut_1_o_4,iaesSboxOut_1_o_3
    ,iaesSboxOut_1_o_2,iaesSboxOut_1_o_1,iaesSboxOut_1_o_0,iaesSboxOut_0}; // @[Bku.scala 228:29]
  wire [31:0] aes64ds_lo = {iaesSboxOut_3_o_7,iaesSboxOut_3_o_6,iaesSboxOut_3_o_5,iaesSboxOut_3_o_4,iaesSboxOut_3_o_3,
    iaesSboxOut_3_o_2,iaesSboxOut_3_o_1,iaesSboxOut_3_o_0,iaesSboxOut_2,aes64ds_lo_lo}; // @[Bku.scala 228:29]
  wire [15:0] aes64ds_hi_lo = {iaesSboxOut_5_o_7,iaesSboxOut_5_o_6,iaesSboxOut_5_o_5,iaesSboxOut_5_o_4,iaesSboxOut_5_o_3
    ,iaesSboxOut_5_o_2,iaesSboxOut_5_o_1,iaesSboxOut_5_o_0,iaesSboxOut_4}; // @[Bku.scala 228:29]
  wire [31:0] aes64ds_hi = {iaesSboxOut_7_o_7,iaesSboxOut_7_o_6,iaesSboxOut_7_o_5,iaesSboxOut_7_o_4,iaesSboxOut_7_o_3,
    iaesSboxOut_7_o_2,iaesSboxOut_7_o_1,iaesSboxOut_7_o_0,iaesSboxOut_6,aes64ds_hi_lo}; // @[Bku.scala 228:29]
  wire [63:0] aes64ds = {aes64ds_hi,aes64ds_lo}; // @[Bku.scala 228:29]
  reg [7:0] imMinIn_0; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_1; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_2; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_3; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_4; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_5; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_6; // @[Reg.scala 16:16]
  reg [7:0] imMinIn_7; // @[Reg.scala 16:16]
  wire [8:0] _aes64esm_byte1_T = {aesSboxOut_7, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_2 = aesSboxOut_7[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_432 = {{4'd0}, _aes64esm_byte1_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_3 = _aes64esm_byte1_T ^ _GEN_432; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1 = _aes64esm_byte1_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64esm_byte1_T_4 = {aesSboxOut_4, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_6 = aesSboxOut_4[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_435 = {{4'd0}, _aes64esm_byte1_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_7 = _aes64esm_byte1_T_4 ^ _GEN_435; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_1 = _aes64esm_byte1_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_1 = aesSboxOut_4 ^ aes64esm_byte1_1; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_2 = aes64esm_byte1 ^ aes64esm_result_1; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_3 = _aes64esm_T_2 ^ aesSboxOut_5; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_4 = _aes64esm_T_3 ^ aesSboxOut_6; // @[CryptoUtils.scala 433:62]
  wire [8:0] _aes64esm_byte1_T_8 = {aesSboxOut_6, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_10 = aesSboxOut_6[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_438 = {{4'd0}, _aes64esm_byte1_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_11 = _aes64esm_byte1_T_8 ^ _GEN_438; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_2 = _aes64esm_byte1_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_3 = aesSboxOut_7 ^ aes64esm_byte1; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_7 = aes64esm_byte1_2 ^ aes64esm_result_3; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_8 = _aes64esm_T_7 ^ aesSboxOut_4; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_9 = _aes64esm_T_8 ^ aesSboxOut_5; // @[CryptoUtils.scala 433:62]
  wire [8:0] _aes64esm_byte1_T_16 = {aesSboxOut_5, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_18 = aesSboxOut_5[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_444 = {{4'd0}, _aes64esm_byte1_T_18}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_19 = _aes64esm_byte1_T_16 ^ _GEN_444; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_4 = _aes64esm_byte1_T_19[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_5 = aesSboxOut_6 ^ aes64esm_byte1_2; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_12 = aes64esm_byte1_4 ^ aes64esm_result_5; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_13 = _aes64esm_T_12 ^ aesSboxOut_7; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_14 = _aes64esm_T_13 ^ aesSboxOut_4; // @[CryptoUtils.scala 433:62]
  wire [7:0] aes64esm_result_7 = aesSboxOut_5 ^ aes64esm_byte1_4; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_17 = aes64esm_byte1_1 ^ aes64esm_result_7; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_18 = _aes64esm_T_17 ^ aesSboxOut_6; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_19 = _aes64esm_T_18 ^ aesSboxOut_7; // @[CryptoUtils.scala 433:62]
  wire [8:0] _aes64esm_byte1_T_32 = {aesSboxOut_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_34 = aesSboxOut_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_456 = {{4'd0}, _aes64esm_byte1_T_34}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_35 = _aes64esm_byte1_T_32 ^ _GEN_456; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_8 = _aes64esm_byte1_T_35[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64esm_byte1_T_36 = {aesSboxOut_0, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_38 = aesSboxOut_0[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_459 = {{4'd0}, _aes64esm_byte1_T_38}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_39 = _aes64esm_byte1_T_36 ^ _GEN_459; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_9 = _aes64esm_byte1_T_39[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_9 = aesSboxOut_0 ^ aes64esm_byte1_9; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_23 = aes64esm_byte1_8 ^ aes64esm_result_9; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_24 = _aes64esm_T_23 ^ aesSboxOut_1; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_25 = _aes64esm_T_24 ^ aesSboxOut_2; // @[CryptoUtils.scala 433:62]
  wire [8:0] _aes64esm_byte1_T_40 = {aesSboxOut_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_42 = aesSboxOut_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_462 = {{4'd0}, _aes64esm_byte1_T_42}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_43 = _aes64esm_byte1_T_40 ^ _GEN_462; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_10 = _aes64esm_byte1_T_43[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_11 = aesSboxOut_3 ^ aes64esm_byte1_8; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_28 = aes64esm_byte1_10 ^ aes64esm_result_11; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_29 = _aes64esm_T_28 ^ aesSboxOut_0; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_30 = _aes64esm_T_29 ^ aesSboxOut_1; // @[CryptoUtils.scala 433:62]
  wire [8:0] _aes64esm_byte1_T_48 = {aesSboxOut_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64esm_byte1_T_50 = aesSboxOut_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_468 = {{4'd0}, _aes64esm_byte1_T_50}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64esm_byte1_T_51 = _aes64esm_byte1_T_48 ^ _GEN_468; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64esm_byte1_12 = _aes64esm_byte1_T_51[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64esm_result_13 = aesSboxOut_2 ^ aes64esm_byte1_10; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_33 = aes64esm_byte1_12 ^ aes64esm_result_13; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_34 = _aes64esm_T_33 ^ aesSboxOut_3; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_35 = _aes64esm_T_34 ^ aesSboxOut_0; // @[CryptoUtils.scala 433:62]
  wire [7:0] aes64esm_result_15 = aesSboxOut_1 ^ aes64esm_byte1_12; // @[CryptoUtils.scala 426:39]
  wire [7:0] _aes64esm_T_38 = aes64esm_byte1_9 ^ aes64esm_result_15; // @[CryptoUtils.scala 433:27]
  wire [7:0] _aes64esm_T_39 = _aes64esm_T_38 ^ aesSboxOut_2; // @[CryptoUtils.scala 433:51]
  wire [7:0] _aes64esm_T_40 = _aes64esm_T_39 ^ aesSboxOut_3; // @[CryptoUtils.scala 433:62]
  wire [63:0] aes64esm = {_aes64esm_T_4,_aes64esm_T_9,_aes64esm_T_14,_aes64esm_T_19,_aes64esm_T_25,_aes64esm_T_30,
    _aes64esm_T_35,_aes64esm_T_40}; // @[Cat.scala 31:58]
  wire [8:0] _aes64dsm_byte1_T = {iaesSboxOut_7, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_2 = iaesSboxOut_7[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_480 = {{4'd0}, _aes64dsm_byte1_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_3 = _aes64dsm_byte1_T ^ _GEN_480; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1 = _aes64dsm_byte1_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T = {aes64dsm_byte1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_2 = aes64dsm_byte1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_481 = {{4'd0}, _aes64dsm_byte2_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_3 = _aes64dsm_byte2_T ^ _GEN_481; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2 = _aes64dsm_byte2_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T = {aes64dsm_byte2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_2 = aes64dsm_byte2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_482 = {{4'd0}, _aes64dsm_byte3_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_3 = _aes64dsm_byte3_T ^ _GEN_482; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3 = _aes64dsm_byte3_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_4 = aes64dsm_byte1 ^ aes64dsm_byte2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result = _aes64dsm_result_T_4 ^ aes64dsm_byte3; // @[CryptoUtils.scala 426:87]
  wire [8:0] _aes64dsm_byte1_T_4 = {iaesSboxOut_4, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_6 = iaesSboxOut_4[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_483 = {{4'd0}, _aes64dsm_byte1_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_7 = _aes64dsm_byte1_T_4 ^ _GEN_483; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_1 = _aes64dsm_byte1_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_4 = {aes64dsm_byte1_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_6 = aes64dsm_byte1_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_484 = {{4'd0}, _aes64dsm_byte2_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_7 = _aes64dsm_byte2_T_4 ^ _GEN_484; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_1 = _aes64dsm_byte2_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_4 = {aes64dsm_byte2_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_6 = aes64dsm_byte2_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_485 = {{4'd0}, _aes64dsm_byte3_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_7 = _aes64dsm_byte3_T_4 ^ _GEN_485; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_1 = _aes64dsm_byte3_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_8 = iaesSboxOut_4 ^ aes64dsm_byte1_1; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_1 = _aes64dsm_result_T_8 ^ aes64dsm_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_2 = aes64dsm_result ^ aes64dsm_result_1; // @[CryptoUtils.scala 439:27]
  wire [8:0] _aes64dsm_byte1_T_8 = {iaesSboxOut_5, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_10 = iaesSboxOut_5[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_486 = {{4'd0}, _aes64dsm_byte1_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_11 = _aes64dsm_byte1_T_8 ^ _GEN_486; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_2 = _aes64dsm_byte1_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_8 = {aes64dsm_byte1_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_10 = aes64dsm_byte1_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_487 = {{4'd0}, _aes64dsm_byte2_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_11 = _aes64dsm_byte2_T_8 ^ _GEN_487; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_2 = _aes64dsm_byte2_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_8 = {aes64dsm_byte2_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_10 = aes64dsm_byte2_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_488 = {{4'd0}, _aes64dsm_byte3_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_11 = _aes64dsm_byte3_T_8 ^ _GEN_488; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_2 = _aes64dsm_byte3_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_16 = iaesSboxOut_5 ^ aes64dsm_byte2_2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_2 = _aes64dsm_result_T_16 ^ aes64dsm_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_4 = _aes64dsm_T_2 ^ aes64dsm_result_2; // @[CryptoUtils.scala 439:51]
  wire [8:0] _aes64dsm_byte1_T_12 = {iaesSboxOut_6, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_14 = iaesSboxOut_6[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_489 = {{4'd0}, _aes64dsm_byte1_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_15 = _aes64dsm_byte1_T_12 ^ _GEN_489; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_3 = _aes64dsm_byte1_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_12 = {aes64dsm_byte1_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_14 = aes64dsm_byte1_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_490 = {{4'd0}, _aes64dsm_byte2_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_15 = _aes64dsm_byte2_T_12 ^ _GEN_490; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_3 = _aes64dsm_byte2_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_12 = {aes64dsm_byte2_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_14 = aes64dsm_byte2_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_491 = {{4'd0}, _aes64dsm_byte3_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_15 = _aes64dsm_byte3_T_12 ^ _GEN_491; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_3 = _aes64dsm_byte3_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64dsm_result_3 = iaesSboxOut_6 ^ aes64dsm_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_6 = _aes64dsm_T_4 ^ aes64dsm_result_3; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_28 = aes64dsm_byte1_3 ^ aes64dsm_byte2_3; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_4 = _aes64dsm_result_T_28 ^ aes64dsm_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_32 = iaesSboxOut_7 ^ aes64dsm_byte1; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_5 = _aes64dsm_result_T_32 ^ aes64dsm_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_9 = aes64dsm_result_4 ^ aes64dsm_result_5; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_40 = iaesSboxOut_4 ^ aes64dsm_byte2_1; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_6 = _aes64dsm_result_T_40 ^ aes64dsm_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_11 = _aes64dsm_T_9 ^ aes64dsm_result_6; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_7 = iaesSboxOut_5 ^ aes64dsm_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_13 = _aes64dsm_T_11 ^ aes64dsm_result_7; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_52 = aes64dsm_byte1_2 ^ aes64dsm_byte2_2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_8 = _aes64dsm_result_T_52 ^ aes64dsm_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_56 = iaesSboxOut_6 ^ aes64dsm_byte1_3; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_9 = _aes64dsm_result_T_56 ^ aes64dsm_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_16 = aes64dsm_result_8 ^ aes64dsm_result_9; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_64 = iaesSboxOut_7 ^ aes64dsm_byte2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_10 = _aes64dsm_result_T_64 ^ aes64dsm_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_18 = _aes64dsm_T_16 ^ aes64dsm_result_10; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_11 = iaesSboxOut_4 ^ aes64dsm_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_20 = _aes64dsm_T_18 ^ aes64dsm_result_11; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_76 = aes64dsm_byte1_1 ^ aes64dsm_byte2_1; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_12 = _aes64dsm_result_T_76 ^ aes64dsm_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_80 = iaesSboxOut_5 ^ aes64dsm_byte1_2; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_13 = _aes64dsm_result_T_80 ^ aes64dsm_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_23 = aes64dsm_result_12 ^ aes64dsm_result_13; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_88 = iaesSboxOut_6 ^ aes64dsm_byte2_3; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_14 = _aes64dsm_result_T_88 ^ aes64dsm_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_25 = _aes64dsm_T_23 ^ aes64dsm_result_14; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_15 = iaesSboxOut_7 ^ aes64dsm_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_27 = _aes64dsm_T_25 ^ aes64dsm_result_15; // @[CryptoUtils.scala 439:75]
  wire [8:0] _aes64dsm_byte1_T_64 = {iaesSboxOut_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_66 = iaesSboxOut_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_528 = {{4'd0}, _aes64dsm_byte1_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_67 = _aes64dsm_byte1_T_64 ^ _GEN_528; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_16 = _aes64dsm_byte1_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_64 = {aes64dsm_byte1_16, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_66 = aes64dsm_byte1_16[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_529 = {{4'd0}, _aes64dsm_byte2_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_67 = _aes64dsm_byte2_T_64 ^ _GEN_529; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_16 = _aes64dsm_byte2_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_64 = {aes64dsm_byte2_16, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_66 = aes64dsm_byte2_16[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_530 = {{4'd0}, _aes64dsm_byte3_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_67 = _aes64dsm_byte3_T_64 ^ _GEN_530; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_16 = _aes64dsm_byte3_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_100 = aes64dsm_byte1_16 ^ aes64dsm_byte2_16; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_16 = _aes64dsm_result_T_100 ^ aes64dsm_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [8:0] _aes64dsm_byte1_T_68 = {iaesSboxOut_0, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_70 = iaesSboxOut_0[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_531 = {{4'd0}, _aes64dsm_byte1_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_71 = _aes64dsm_byte1_T_68 ^ _GEN_531; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_17 = _aes64dsm_byte1_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_68 = {aes64dsm_byte1_17, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_70 = aes64dsm_byte1_17[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_532 = {{4'd0}, _aes64dsm_byte2_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_71 = _aes64dsm_byte2_T_68 ^ _GEN_532; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_17 = _aes64dsm_byte2_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_68 = {aes64dsm_byte2_17, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_70 = aes64dsm_byte2_17[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_533 = {{4'd0}, _aes64dsm_byte3_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_71 = _aes64dsm_byte3_T_68 ^ _GEN_533; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_17 = _aes64dsm_byte3_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_104 = iaesSboxOut_0 ^ aes64dsm_byte1_17; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_17 = _aes64dsm_result_T_104 ^ aes64dsm_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_31 = aes64dsm_result_16 ^ aes64dsm_result_17; // @[CryptoUtils.scala 439:27]
  wire [8:0] _aes64dsm_byte1_T_72 = {iaesSboxOut_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_74 = iaesSboxOut_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_534 = {{4'd0}, _aes64dsm_byte1_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_75 = _aes64dsm_byte1_T_72 ^ _GEN_534; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_18 = _aes64dsm_byte1_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_72 = {aes64dsm_byte1_18, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_74 = aes64dsm_byte1_18[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_535 = {{4'd0}, _aes64dsm_byte2_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_75 = _aes64dsm_byte2_T_72 ^ _GEN_535; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_18 = _aes64dsm_byte2_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_72 = {aes64dsm_byte2_18, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_74 = aes64dsm_byte2_18[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_536 = {{4'd0}, _aes64dsm_byte3_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_75 = _aes64dsm_byte3_T_72 ^ _GEN_536; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_18 = _aes64dsm_byte3_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64dsm_result_T_112 = iaesSboxOut_1 ^ aes64dsm_byte2_18; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_18 = _aes64dsm_result_T_112 ^ aes64dsm_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_33 = _aes64dsm_T_31 ^ aes64dsm_result_18; // @[CryptoUtils.scala 439:51]
  wire [8:0] _aes64dsm_byte1_T_76 = {iaesSboxOut_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte1_T_78 = iaesSboxOut_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_537 = {{4'd0}, _aes64dsm_byte1_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte1_T_79 = _aes64dsm_byte1_T_76 ^ _GEN_537; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte1_19 = _aes64dsm_byte1_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte2_T_76 = {aes64dsm_byte1_19, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte2_T_78 = aes64dsm_byte1_19[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_538 = {{4'd0}, _aes64dsm_byte2_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte2_T_79 = _aes64dsm_byte2_T_76 ^ _GEN_538; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte2_19 = _aes64dsm_byte2_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64dsm_byte3_T_76 = {aes64dsm_byte2_19, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64dsm_byte3_T_78 = aes64dsm_byte2_19[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_539 = {{4'd0}, _aes64dsm_byte3_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64dsm_byte3_T_79 = _aes64dsm_byte3_T_76 ^ _GEN_539; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64dsm_byte3_19 = _aes64dsm_byte3_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64dsm_result_19 = iaesSboxOut_2 ^ aes64dsm_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_35 = _aes64dsm_T_33 ^ aes64dsm_result_19; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_124 = aes64dsm_byte1_19 ^ aes64dsm_byte2_19; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_20 = _aes64dsm_result_T_124 ^ aes64dsm_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_128 = iaesSboxOut_3 ^ aes64dsm_byte1_16; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_21 = _aes64dsm_result_T_128 ^ aes64dsm_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_38 = aes64dsm_result_20 ^ aes64dsm_result_21; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_136 = iaesSboxOut_0 ^ aes64dsm_byte2_17; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_22 = _aes64dsm_result_T_136 ^ aes64dsm_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_40 = _aes64dsm_T_38 ^ aes64dsm_result_22; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_23 = iaesSboxOut_1 ^ aes64dsm_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_42 = _aes64dsm_T_40 ^ aes64dsm_result_23; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_148 = aes64dsm_byte1_18 ^ aes64dsm_byte2_18; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_24 = _aes64dsm_result_T_148 ^ aes64dsm_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_152 = iaesSboxOut_2 ^ aes64dsm_byte1_19; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_25 = _aes64dsm_result_T_152 ^ aes64dsm_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_45 = aes64dsm_result_24 ^ aes64dsm_result_25; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_160 = iaesSboxOut_3 ^ aes64dsm_byte2_16; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_26 = _aes64dsm_result_T_160 ^ aes64dsm_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_47 = _aes64dsm_T_45 ^ aes64dsm_result_26; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_27 = iaesSboxOut_0 ^ aes64dsm_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_49 = _aes64dsm_T_47 ^ aes64dsm_result_27; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64dsm_result_T_172 = aes64dsm_byte1_17 ^ aes64dsm_byte2_17; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_28 = _aes64dsm_result_T_172 ^ aes64dsm_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_result_T_176 = iaesSboxOut_1 ^ aes64dsm_byte1_18; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64dsm_result_29 = _aes64dsm_result_T_176 ^ aes64dsm_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_52 = aes64dsm_result_28 ^ aes64dsm_result_29; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64dsm_result_T_184 = iaesSboxOut_2 ^ aes64dsm_byte2_19; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64dsm_result_30 = _aes64dsm_result_T_184 ^ aes64dsm_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_54 = _aes64dsm_T_52 ^ aes64dsm_result_30; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64dsm_result_31 = iaesSboxOut_3 ^ aes64dsm_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64dsm_T_56 = _aes64dsm_T_54 ^ aes64dsm_result_31; // @[CryptoUtils.scala 439:75]
  wire [63:0] aes64dsm = {_aes64dsm_T_6,_aes64dsm_T_13,_aes64dsm_T_20,_aes64dsm_T_27,_aes64dsm_T_35,_aes64dsm_T_42,
    _aes64dsm_T_49,_aes64dsm_T_56}; // @[Cat.scala 31:58]
  wire [8:0] _aes64im_byte1_T = {imMinIn_7, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_2 = imMinIn_7[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_576 = {{4'd0}, _aes64im_byte1_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_3 = _aes64im_byte1_T ^ _GEN_576; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1 = _aes64im_byte1_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T = {aes64im_byte1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_2 = aes64im_byte1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_577 = {{4'd0}, _aes64im_byte2_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_3 = _aes64im_byte2_T ^ _GEN_577; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2 = _aes64im_byte2_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T = {aes64im_byte2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_2 = aes64im_byte2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_578 = {{4'd0}, _aes64im_byte3_T_2}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_3 = _aes64im_byte3_T ^ _GEN_578; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3 = _aes64im_byte3_T_3[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_4 = aes64im_byte1 ^ aes64im_byte2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result = _aes64im_result_T_4 ^ aes64im_byte3; // @[CryptoUtils.scala 426:87]
  wire [8:0] _aes64im_byte1_T_4 = {imMinIn_4, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_6 = imMinIn_4[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_579 = {{4'd0}, _aes64im_byte1_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_7 = _aes64im_byte1_T_4 ^ _GEN_579; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_1 = _aes64im_byte1_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_4 = {aes64im_byte1_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_6 = aes64im_byte1_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_580 = {{4'd0}, _aes64im_byte2_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_7 = _aes64im_byte2_T_4 ^ _GEN_580; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_1 = _aes64im_byte2_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_4 = {aes64im_byte2_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_6 = aes64im_byte2_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_581 = {{4'd0}, _aes64im_byte3_T_6}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_7 = _aes64im_byte3_T_4 ^ _GEN_581; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_1 = _aes64im_byte3_T_7[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_8 = imMinIn_4 ^ aes64im_byte1_1; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_1 = _aes64im_result_T_8 ^ aes64im_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_2 = aes64im_result ^ aes64im_result_1; // @[CryptoUtils.scala 439:27]
  wire [8:0] _aes64im_byte1_T_8 = {imMinIn_5, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_10 = imMinIn_5[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_582 = {{4'd0}, _aes64im_byte1_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_11 = _aes64im_byte1_T_8 ^ _GEN_582; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_2 = _aes64im_byte1_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_8 = {aes64im_byte1_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_10 = aes64im_byte1_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_583 = {{4'd0}, _aes64im_byte2_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_11 = _aes64im_byte2_T_8 ^ _GEN_583; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_2 = _aes64im_byte2_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_8 = {aes64im_byte2_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_10 = aes64im_byte2_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_584 = {{4'd0}, _aes64im_byte3_T_10}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_11 = _aes64im_byte3_T_8 ^ _GEN_584; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_2 = _aes64im_byte3_T_11[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_16 = imMinIn_5 ^ aes64im_byte2_2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_2 = _aes64im_result_T_16 ^ aes64im_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_4 = _aes64im_T_2 ^ aes64im_result_2; // @[CryptoUtils.scala 439:51]
  wire [8:0] _aes64im_byte1_T_12 = {imMinIn_6, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_14 = imMinIn_6[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_585 = {{4'd0}, _aes64im_byte1_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_15 = _aes64im_byte1_T_12 ^ _GEN_585; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_3 = _aes64im_byte1_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_12 = {aes64im_byte1_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_14 = aes64im_byte1_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_586 = {{4'd0}, _aes64im_byte2_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_15 = _aes64im_byte2_T_12 ^ _GEN_586; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_3 = _aes64im_byte2_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_12 = {aes64im_byte2_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_14 = aes64im_byte2_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_587 = {{4'd0}, _aes64im_byte3_T_14}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_15 = _aes64im_byte3_T_12 ^ _GEN_587; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_3 = _aes64im_byte3_T_15[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64im_result_3 = imMinIn_6 ^ aes64im_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_6 = _aes64im_T_4 ^ aes64im_result_3; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_28 = aes64im_byte1_3 ^ aes64im_byte2_3; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_4 = _aes64im_result_T_28 ^ aes64im_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_32 = imMinIn_7 ^ aes64im_byte1; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_5 = _aes64im_result_T_32 ^ aes64im_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_9 = aes64im_result_4 ^ aes64im_result_5; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_40 = imMinIn_4 ^ aes64im_byte2_1; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_6 = _aes64im_result_T_40 ^ aes64im_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_11 = _aes64im_T_9 ^ aes64im_result_6; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_7 = imMinIn_5 ^ aes64im_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_13 = _aes64im_T_11 ^ aes64im_result_7; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_52 = aes64im_byte1_2 ^ aes64im_byte2_2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_8 = _aes64im_result_T_52 ^ aes64im_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_56 = imMinIn_6 ^ aes64im_byte1_3; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_9 = _aes64im_result_T_56 ^ aes64im_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_16 = aes64im_result_8 ^ aes64im_result_9; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_64 = imMinIn_7 ^ aes64im_byte2; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_10 = _aes64im_result_T_64 ^ aes64im_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_18 = _aes64im_T_16 ^ aes64im_result_10; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_11 = imMinIn_4 ^ aes64im_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_20 = _aes64im_T_18 ^ aes64im_result_11; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_76 = aes64im_byte1_1 ^ aes64im_byte2_1; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_12 = _aes64im_result_T_76 ^ aes64im_byte3_1; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_80 = imMinIn_5 ^ aes64im_byte1_2; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_13 = _aes64im_result_T_80 ^ aes64im_byte3_2; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_23 = aes64im_result_12 ^ aes64im_result_13; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_88 = imMinIn_6 ^ aes64im_byte2_3; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_14 = _aes64im_result_T_88 ^ aes64im_byte3_3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_25 = _aes64im_T_23 ^ aes64im_result_14; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_15 = imMinIn_7 ^ aes64im_byte3; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_27 = _aes64im_T_25 ^ aes64im_result_15; // @[CryptoUtils.scala 439:75]
  wire [8:0] _aes64im_byte1_T_64 = {imMinIn_3, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_66 = imMinIn_3[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_624 = {{4'd0}, _aes64im_byte1_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_67 = _aes64im_byte1_T_64 ^ _GEN_624; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_16 = _aes64im_byte1_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_64 = {aes64im_byte1_16, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_66 = aes64im_byte1_16[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_625 = {{4'd0}, _aes64im_byte2_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_67 = _aes64im_byte2_T_64 ^ _GEN_625; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_16 = _aes64im_byte2_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_64 = {aes64im_byte2_16, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_66 = aes64im_byte2_16[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_626 = {{4'd0}, _aes64im_byte3_T_66}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_67 = _aes64im_byte3_T_64 ^ _GEN_626; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_16 = _aes64im_byte3_T_67[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_100 = aes64im_byte1_16 ^ aes64im_byte2_16; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_16 = _aes64im_result_T_100 ^ aes64im_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [8:0] _aes64im_byte1_T_68 = {imMinIn_0, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_70 = imMinIn_0[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_627 = {{4'd0}, _aes64im_byte1_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_71 = _aes64im_byte1_T_68 ^ _GEN_627; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_17 = _aes64im_byte1_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_68 = {aes64im_byte1_17, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_70 = aes64im_byte1_17[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_628 = {{4'd0}, _aes64im_byte2_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_71 = _aes64im_byte2_T_68 ^ _GEN_628; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_17 = _aes64im_byte2_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_68 = {aes64im_byte2_17, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_70 = aes64im_byte2_17[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_629 = {{4'd0}, _aes64im_byte3_T_70}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_71 = _aes64im_byte3_T_68 ^ _GEN_629; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_17 = _aes64im_byte3_T_71[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_104 = imMinIn_0 ^ aes64im_byte1_17; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_17 = _aes64im_result_T_104 ^ aes64im_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_31 = aes64im_result_16 ^ aes64im_result_17; // @[CryptoUtils.scala 439:27]
  wire [8:0] _aes64im_byte1_T_72 = {imMinIn_1, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_74 = imMinIn_1[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_630 = {{4'd0}, _aes64im_byte1_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_75 = _aes64im_byte1_T_72 ^ _GEN_630; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_18 = _aes64im_byte1_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_72 = {aes64im_byte1_18, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_74 = aes64im_byte1_18[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_631 = {{4'd0}, _aes64im_byte2_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_75 = _aes64im_byte2_T_72 ^ _GEN_631; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_18 = _aes64im_byte2_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_72 = {aes64im_byte2_18, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_74 = aes64im_byte2_18[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_632 = {{4'd0}, _aes64im_byte3_T_74}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_75 = _aes64im_byte3_T_72 ^ _GEN_632; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_18 = _aes64im_byte3_T_75[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] _aes64im_result_T_112 = imMinIn_1 ^ aes64im_byte2_18; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_18 = _aes64im_result_T_112 ^ aes64im_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_33 = _aes64im_T_31 ^ aes64im_result_18; // @[CryptoUtils.scala 439:51]
  wire [8:0] _aes64im_byte1_T_76 = {imMinIn_2, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte1_T_78 = imMinIn_2[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_633 = {{4'd0}, _aes64im_byte1_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte1_T_79 = _aes64im_byte1_T_76 ^ _GEN_633; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte1_19 = _aes64im_byte1_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte2_T_76 = {aes64im_byte1_19, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte2_T_78 = aes64im_byte1_19[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_634 = {{4'd0}, _aes64im_byte2_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte2_T_79 = _aes64im_byte2_T_76 ^ _GEN_634; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte2_19 = _aes64im_byte2_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [8:0] _aes64im_byte3_T_76 = {aes64im_byte2_19, 1'h0}; // @[CryptoUtils.scala 420:38]
  wire [4:0] _aes64im_byte3_T_78 = aes64im_byte2_19[7] ? 5'h1b : 5'h0; // @[CryptoUtils.scala 420:49]
  wire [8:0] _GEN_635 = {{4'd0}, _aes64im_byte3_T_78}; // @[CryptoUtils.scala 420:44]
  wire [8:0] _aes64im_byte3_T_79 = _aes64im_byte3_T_76 ^ _GEN_635; // @[CryptoUtils.scala 420:44]
  wire [7:0] aes64im_byte3_19 = _aes64im_byte3_T_79[7:0]; // @[CryptoUtils.scala 420:73]
  wire [7:0] aes64im_result_19 = imMinIn_2 ^ aes64im_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_35 = _aes64im_T_33 ^ aes64im_result_19; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_124 = aes64im_byte1_19 ^ aes64im_byte2_19; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_20 = _aes64im_result_T_124 ^ aes64im_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_128 = imMinIn_3 ^ aes64im_byte1_16; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_21 = _aes64im_result_T_128 ^ aes64im_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_38 = aes64im_result_20 ^ aes64im_result_21; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_136 = imMinIn_0 ^ aes64im_byte2_17; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_22 = _aes64im_result_T_136 ^ aes64im_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_40 = _aes64im_T_38 ^ aes64im_result_22; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_23 = imMinIn_1 ^ aes64im_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_42 = _aes64im_T_40 ^ aes64im_result_23; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_148 = aes64im_byte1_18 ^ aes64im_byte2_18; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_24 = _aes64im_result_T_148 ^ aes64im_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_152 = imMinIn_2 ^ aes64im_byte1_19; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_25 = _aes64im_result_T_152 ^ aes64im_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_45 = aes64im_result_24 ^ aes64im_result_25; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_160 = imMinIn_3 ^ aes64im_byte2_16; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_26 = _aes64im_result_T_160 ^ aes64im_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_47 = _aes64im_T_45 ^ aes64im_result_26; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_27 = imMinIn_0 ^ aes64im_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_49 = _aes64im_T_47 ^ aes64im_result_27; // @[CryptoUtils.scala 439:75]
  wire [7:0] _aes64im_result_T_172 = aes64im_byte1_17 ^ aes64im_byte2_17; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_28 = _aes64im_result_T_172 ^ aes64im_byte3_17; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_result_T_176 = imMinIn_1 ^ aes64im_byte1_18; // @[CryptoUtils.scala 426:39]
  wire [7:0] aes64im_result_29 = _aes64im_result_T_176 ^ aes64im_byte3_18; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_52 = aes64im_result_28 ^ aes64im_result_29; // @[CryptoUtils.scala 439:27]
  wire [7:0] _aes64im_result_T_184 = imMinIn_2 ^ aes64im_byte2_19; // @[CryptoUtils.scala 426:63]
  wire [7:0] aes64im_result_30 = _aes64im_result_T_184 ^ aes64im_byte3_19; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_54 = _aes64im_T_52 ^ aes64im_result_30; // @[CryptoUtils.scala 439:51]
  wire [7:0] aes64im_result_31 = imMinIn_3 ^ aes64im_byte3_16; // @[CryptoUtils.scala 426:87]
  wire [7:0] _aes64im_T_56 = _aes64im_T_54 ^ aes64im_result_31; // @[CryptoUtils.scala 439:75]
  wire [63:0] aes64im = {_aes64im_T_6,_aes64im_T_13,_aes64im_T_20,_aes64im_T_27,_aes64im_T_35,_aes64im_T_42,
    _aes64im_T_49,_aes64im_T_56}; // @[Cat.scala 31:58]
  reg  ksSboxTop_0_0; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_1; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_2; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_3; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_4; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_5; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_6; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_7; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_8; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_9; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_10; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_11; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_12; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_13; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_14; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_15; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_16; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_17; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_18; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_19; // @[Bku.scala 245:22]
  reg  ksSboxTop_0_20; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_0; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_1; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_2; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_3; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_4; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_5; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_6; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_7; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_8; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_9; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_10; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_11; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_12; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_13; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_14; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_15; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_16; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_17; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_18; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_19; // @[Bku.scala 245:22]
  reg  ksSboxTop_1_20; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_0; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_1; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_2; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_3; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_4; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_5; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_6; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_7; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_8; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_9; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_10; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_11; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_12; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_13; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_14; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_15; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_16; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_17; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_18; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_19; // @[Bku.scala 245:22]
  reg  ksSboxTop_2_20; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_0; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_1; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_2; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_3; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_4; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_5; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_6; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_7; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_8; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_9; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_10; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_11; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_12; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_13; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_14; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_15; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_16; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_17; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_18; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_19; // @[Bku.scala 245:22]
  reg  ksSboxTop_3_20; // @[Bku.scala 245:22]
  wire  _ksSboxIn_0_T_1 = io_src_1[3:0] == 4'ha; // @[Bku.scala 247:32]
  wire [7:0] ksSboxIn_0 = io_src_1[3:0] == 4'ha ? src1Bytes_4 : src1Bytes_5; // @[Bku.scala 247:21]
  wire [7:0] ksSboxIn_1 = _ksSboxIn_0_T_1 ? src1Bytes_5 : src1Bytes_6; // @[Bku.scala 248:21]
  wire [7:0] ksSboxIn_2 = _ksSboxIn_0_T_1 ? src1Bytes_6 : src1Bytes_7; // @[Bku.scala 249:21]
  wire [7:0] ksSboxIn_3 = _ksSboxIn_0_T_1 ? src1Bytes_7 : src1Bytes_4; // @[Bku.scala 250:21]
  wire  t_32_0 = ksSboxIn_0[3] ^ ksSboxIn_0[1]; // @[CryptoUtils.scala 83:20]
  wire  t_32_1 = ksSboxIn_0[6] ^ ksSboxIn_0[5]; // @[CryptoUtils.scala 84:20]
  wire  t_32_2 = ksSboxIn_0[6] ^ ksSboxIn_0[2]; // @[CryptoUtils.scala 85:20]
  wire  t_32_3 = ksSboxIn_0[5] ^ ksSboxIn_0[2]; // @[CryptoUtils.scala 86:20]
  wire  t_32_4 = ksSboxIn_0[4] ^ ksSboxIn_0[0]; // @[CryptoUtils.scala 87:20]
  wire  t_32_5 = ksSboxIn_0[1] ^ ksSboxIn_0[0]; // @[CryptoUtils.scala 88:20]
  wire  o_32_1 = ksSboxIn_0[7] ^ ksSboxIn_0[4]; // @[CryptoUtils.scala 90:20]
  wire  o_32_2 = ksSboxIn_0[7] ^ ksSboxIn_0[2]; // @[CryptoUtils.scala 91:20]
  wire  o_32_3 = ksSboxIn_0[7] ^ ksSboxIn_0[1]; // @[CryptoUtils.scala 92:20]
  wire  o_32_4 = ksSboxIn_0[4] ^ ksSboxIn_0[2]; // @[CryptoUtils.scala 93:20]
  wire  o_32_5 = o_32_1 ^ t_32_0; // @[CryptoUtils.scala 94:20]
  wire  o_32_6 = ksSboxIn_0[0] ^ o_32_5; // @[CryptoUtils.scala 95:20]
  wire  o_32_7 = ksSboxIn_0[0] ^ t_32_1; // @[CryptoUtils.scala 96:20]
  wire  o_32_8 = o_32_5 ^ t_32_1; // @[CryptoUtils.scala 97:20]
  wire  o_32_9 = o_32_3 ^ o_32_4; // @[CryptoUtils.scala 98:20]
  wire  o_32_10 = o_32_5 ^ t_32_2; // @[CryptoUtils.scala 99:20]
  wire  o_32_11 = t_32_0 ^ t_32_2; // @[CryptoUtils.scala 100:20]
  wire  o_32_12 = t_32_0 ^ t_32_3; // @[CryptoUtils.scala 101:20]
  wire  o_32_13 = o_32_7 ^ o_32_12; // @[CryptoUtils.scala 102:20]
  wire  o_32_14 = t_32_1 ^ t_32_4; // @[CryptoUtils.scala 103:20]
  wire  o_32_15 = o_32_1 ^ o_32_14; // @[CryptoUtils.scala 104:20]
  wire  o_32_16 = t_32_1 ^ t_32_5; // @[CryptoUtils.scala 105:20]
  wire  o_32_17 = o_32_2 ^ o_32_16; // @[CryptoUtils.scala 106:20]
  wire  o_32_18 = o_32_2 ^ o_32_8; // @[CryptoUtils.scala 107:20]
  wire  o_32_19 = o_32_15 ^ o_32_13; // @[CryptoUtils.scala 108:20]
  wire  o_32_20 = o_32_1 ^ t_32_3; // @[CryptoUtils.scala 109:20]
  wire  ksSboxOut_0_t__0 = ksSboxTop_0_3 ^ ksSboxTop_0_12; // @[CryptoUtils.scala 191:20]
  wire  ksSboxOut_0_t__1 = ksSboxTop_0_9 & ksSboxTop_0_5; // @[CryptoUtils.scala 192:20]
  wire  ksSboxOut_0_t__2 = ksSboxTop_0_17 & ksSboxTop_0_6; // @[CryptoUtils.scala 193:20]
  wire  ksSboxOut_0_t__3 = ksSboxTop_0_10 ^ ksSboxOut_0_t__1; // @[CryptoUtils.scala 194:20]
  wire  ksSboxOut_0_t__4 = ksSboxTop_0_14 & ksSboxTop_0_0; // @[CryptoUtils.scala 195:20]
  wire  ksSboxOut_0_t__5 = ksSboxOut_0_t__4 ^ ksSboxOut_0_t__1; // @[CryptoUtils.scala 196:20]
  wire  ksSboxOut_0_t__6 = ksSboxTop_0_3 & ksSboxTop_0_12; // @[CryptoUtils.scala 197:20]
  wire  ksSboxOut_0_t__7 = ksSboxTop_0_16 & ksSboxTop_0_7; // @[CryptoUtils.scala 198:20]
  wire  ksSboxOut_0_t__8 = ksSboxOut_0_t__0 ^ ksSboxOut_0_t__6; // @[CryptoUtils.scala 199:20]
  wire  ksSboxOut_0_t__9 = ksSboxTop_0_15 & ksSboxTop_0_13; // @[CryptoUtils.scala 200:20]
  wire  ksSboxOut_0_t__10 = ksSboxOut_0_t__9 ^ ksSboxOut_0_t__6; // @[CryptoUtils.scala 201:20]
  wire  ksSboxOut_0_t__11 = ksSboxTop_0_1 & ksSboxTop_0_11; // @[CryptoUtils.scala 202:20]
  wire  ksSboxOut_0_t__12 = ksSboxTop_0_4 & ksSboxTop_0_20; // @[CryptoUtils.scala 203:20]
  wire  ksSboxOut_0_t__13 = ksSboxOut_0_t__12 ^ ksSboxOut_0_t__11; // @[CryptoUtils.scala 204:20]
  wire  ksSboxOut_0_t__14 = ksSboxTop_0_2 & ksSboxTop_0_8; // @[CryptoUtils.scala 205:20]
  wire  ksSboxOut_0_t__15 = ksSboxOut_0_t__14 ^ ksSboxOut_0_t__11; // @[CryptoUtils.scala 206:20]
  wire  ksSboxOut_0_t__16 = ksSboxOut_0_t__3 ^ ksSboxOut_0_t__2; // @[CryptoUtils.scala 207:20]
  wire  ksSboxOut_0_t__17 = ksSboxOut_0_t__5 ^ ksSboxTop_0_18; // @[CryptoUtils.scala 208:20]
  wire  ksSboxOut_0_t__18 = ksSboxOut_0_t__8 ^ ksSboxOut_0_t__7; // @[CryptoUtils.scala 209:20]
  wire  ksSboxOut_0_t__19 = ksSboxOut_0_t__10 ^ ksSboxOut_0_t__15; // @[CryptoUtils.scala 210:20]
  wire  ksSboxOut_0_t__20 = ksSboxOut_0_t__16 ^ ksSboxOut_0_t__13; // @[CryptoUtils.scala 211:20]
  wire  ksSboxOut_0_t__21 = ksSboxOut_0_t__17 ^ ksSboxOut_0_t__15; // @[CryptoUtils.scala 212:20]
  wire  ksSboxOut_0_t__22 = ksSboxOut_0_t__18 ^ ksSboxOut_0_t__13; // @[CryptoUtils.scala 213:20]
  wire  ksSboxOut_0_t__23 = ksSboxOut_0_t__19 ^ ksSboxTop_0_19; // @[CryptoUtils.scala 214:20]
  wire  ksSboxOut_0_t__24 = ksSboxOut_0_t__22 ^ ksSboxOut_0_t__23; // @[CryptoUtils.scala 215:20]
  wire  ksSboxOut_0_t__25 = ksSboxOut_0_t__22 & ksSboxOut_0_t__20; // @[CryptoUtils.scala 216:20]
  wire  ksSboxOut_0_t__26 = ksSboxOut_0_t__21 ^ ksSboxOut_0_t__25; // @[CryptoUtils.scala 217:20]
  wire  ksSboxOut_0_t__27 = ksSboxOut_0_t__20 ^ ksSboxOut_0_t__21; // @[CryptoUtils.scala 218:20]
  wire  ksSboxOut_0_t__28 = ksSboxOut_0_t__23 ^ ksSboxOut_0_t__25; // @[CryptoUtils.scala 219:20]
  wire  ksSboxOut_0_t__29 = ksSboxOut_0_t__28 & ksSboxOut_0_t__27; // @[CryptoUtils.scala 220:20]
  wire  ksSboxOut_0_t__30 = ksSboxOut_0_t__26 & ksSboxOut_0_t__24; // @[CryptoUtils.scala 221:20]
  wire  ksSboxOut_0_t__31 = ksSboxOut_0_t__20 & ksSboxOut_0_t__23; // @[CryptoUtils.scala 222:20]
  wire  ksSboxOut_0_t__32 = ksSboxOut_0_t__27 & ksSboxOut_0_t__31; // @[CryptoUtils.scala 223:20]
  wire  ksSboxOut_0_t__33 = ksSboxOut_0_t__27 ^ ksSboxOut_0_t__25; // @[CryptoUtils.scala 224:20]
  wire  ksSboxOut_0_t__34 = ksSboxOut_0_t__21 & ksSboxOut_0_t__22; // @[CryptoUtils.scala 225:20]
  wire  ksSboxOut_0_t__35 = ksSboxOut_0_t__24 & ksSboxOut_0_t__34; // @[CryptoUtils.scala 226:20]
  wire  ksSboxOut_0_t__36 = ksSboxOut_0_t__24 ^ ksSboxOut_0_t__25; // @[CryptoUtils.scala 227:20]
  wire  ksSboxOut_0_t__37 = ksSboxOut_0_t__21 ^ ksSboxOut_0_t__29; // @[CryptoUtils.scala 228:20]
  wire  ksSboxOut_0_t__38 = ksSboxOut_0_t__32 ^ ksSboxOut_0_t__33; // @[CryptoUtils.scala 229:20]
  wire  ksSboxOut_0_t__39 = ksSboxOut_0_t__23 ^ ksSboxOut_0_t__30; // @[CryptoUtils.scala 230:20]
  wire  ksSboxOut_0_t__40 = ksSboxOut_0_t__35 ^ ksSboxOut_0_t__36; // @[CryptoUtils.scala 231:20]
  wire  ksSboxOut_0_t__41 = ksSboxOut_0_t__38 ^ ksSboxOut_0_t__40; // @[CryptoUtils.scala 232:20]
  wire  ksSboxOut_0_t__42 = ksSboxOut_0_t__37 ^ ksSboxOut_0_t__39; // @[CryptoUtils.scala 233:20]
  wire  ksSboxOut_0_t__43 = ksSboxOut_0_t__37 ^ ksSboxOut_0_t__38; // @[CryptoUtils.scala 234:20]
  wire  ksSboxOut_0_t__44 = ksSboxOut_0_t__39 ^ ksSboxOut_0_t__40; // @[CryptoUtils.scala 235:20]
  wire  ksSboxOut_0_t__45 = ksSboxOut_0_t__42 ^ ksSboxOut_0_t__41; // @[CryptoUtils.scala 236:20]
  wire  ksSboxOut_0_o__0 = ksSboxOut_0_t__38 & ksSboxTop_0_7; // @[CryptoUtils.scala 237:20]
  wire  ksSboxOut_0_o__1 = ksSboxOut_0_t__37 & ksSboxTop_0_13; // @[CryptoUtils.scala 238:20]
  wire  ksSboxOut_0_o__2 = ksSboxOut_0_t__42 & ksSboxTop_0_11; // @[CryptoUtils.scala 239:20]
  wire  ksSboxOut_0_o__3 = ksSboxOut_0_t__45 & ksSboxTop_0_20; // @[CryptoUtils.scala 240:20]
  wire  ksSboxOut_0_o__4 = ksSboxOut_0_t__41 & ksSboxTop_0_8; // @[CryptoUtils.scala 241:20]
  wire  ksSboxOut_0_o__5 = ksSboxOut_0_t__44 & ksSboxTop_0_9; // @[CryptoUtils.scala 242:20]
  wire  ksSboxOut_0_o__6 = ksSboxOut_0_t__40 & ksSboxTop_0_17; // @[CryptoUtils.scala 243:20]
  wire  ksSboxOut_0_o__7 = ksSboxOut_0_t__39 & ksSboxTop_0_14; // @[CryptoUtils.scala 244:20]
  wire  ksSboxOut_0_o__8 = ksSboxOut_0_t__43 & ksSboxTop_0_3; // @[CryptoUtils.scala 245:20]
  wire  ksSboxOut_0_o__9 = ksSboxOut_0_t__38 & ksSboxTop_0_16; // @[CryptoUtils.scala 246:20]
  wire  ksSboxOut_0_o__10 = ksSboxOut_0_t__37 & ksSboxTop_0_15; // @[CryptoUtils.scala 247:20]
  wire  ksSboxOut_0_o__11 = ksSboxOut_0_t__42 & ksSboxTop_0_1; // @[CryptoUtils.scala 248:20]
  wire  ksSboxOut_0_o__12 = ksSboxOut_0_t__45 & ksSboxTop_0_4; // @[CryptoUtils.scala 249:20]
  wire  ksSboxOut_0_o__13 = ksSboxOut_0_t__41 & ksSboxTop_0_2; // @[CryptoUtils.scala 250:20]
  wire  ksSboxOut_0_o__14 = ksSboxOut_0_t__44 & ksSboxTop_0_5; // @[CryptoUtils.scala 251:20]
  wire  ksSboxOut_0_o__15 = ksSboxOut_0_t__40 & ksSboxTop_0_6; // @[CryptoUtils.scala 252:20]
  wire  ksSboxOut_0_o__16 = ksSboxOut_0_t__39 & ksSboxTop_0_0; // @[CryptoUtils.scala 253:20]
  wire  ksSboxOut_0_o__17 = ksSboxOut_0_t__43 & ksSboxTop_0_12; // @[CryptoUtils.scala 254:20]
  wire  ksSboxOut_0_t_1_0 = ksSboxOut_0_o__11 ^ ksSboxOut_0_o__12; // @[CryptoUtils.scala 264:20]
  wire  ksSboxOut_0_t_1_1 = ksSboxOut_0_o__0 ^ ksSboxOut_0_o__6; // @[CryptoUtils.scala 265:20]
  wire  ksSboxOut_0_t_1_2 = ksSboxOut_0_o__14 ^ ksSboxOut_0_o__16; // @[CryptoUtils.scala 266:20]
  wire  ksSboxOut_0_t_1_3 = ksSboxOut_0_o__15 ^ ksSboxOut_0_o__5; // @[CryptoUtils.scala 267:20]
  wire  ksSboxOut_0_t_1_4 = ksSboxOut_0_o__4 ^ ksSboxOut_0_o__8; // @[CryptoUtils.scala 268:20]
  wire  ksSboxOut_0_t_1_5 = ksSboxOut_0_o__17 ^ ksSboxOut_0_o__11; // @[CryptoUtils.scala 269:20]
  wire  ksSboxOut_0_t_1_6 = ksSboxOut_0_o__12 ^ ksSboxOut_0_t_1_5; // @[CryptoUtils.scala 270:20]
  wire  ksSboxOut_0_t_1_7 = ksSboxOut_0_o__14 ^ ksSboxOut_0_t_1_3; // @[CryptoUtils.scala 271:20]
  wire  ksSboxOut_0_t_1_8 = ksSboxOut_0_o__1 ^ ksSboxOut_0_o__9; // @[CryptoUtils.scala 272:20]
  wire  ksSboxOut_0_t_1_9 = ksSboxOut_0_o__2 ^ ksSboxOut_0_o__3; // @[CryptoUtils.scala 273:20]
  wire  ksSboxOut_0_t_1_10 = ksSboxOut_0_o__3 ^ ksSboxOut_0_t_1_4; // @[CryptoUtils.scala 274:20]
  wire  ksSboxOut_0_t_1_11 = ksSboxOut_0_o__10 ^ ksSboxOut_0_t_1_2; // @[CryptoUtils.scala 275:20]
  wire  ksSboxOut_0_t_1_12 = ksSboxOut_0_o__16 ^ ksSboxOut_0_o__1; // @[CryptoUtils.scala 276:20]
  wire  ksSboxOut_0_t_1_13 = ksSboxOut_0_o__0 ^ ksSboxOut_0_t_1_0; // @[CryptoUtils.scala 277:20]
  wire  ksSboxOut_0_t_1_14 = ksSboxOut_0_o__2 ^ ksSboxOut_0_o__11; // @[CryptoUtils.scala 278:20]
  wire  ksSboxOut_0_t_1_15 = ksSboxOut_0_o__5 ^ ksSboxOut_0_t_1_1; // @[CryptoUtils.scala 279:20]
  wire  ksSboxOut_0_t_1_16 = ksSboxOut_0_o__6 ^ ksSboxOut_0_t_1_0; // @[CryptoUtils.scala 280:20]
  wire  ksSboxOut_0_t_1_17 = ksSboxOut_0_o__7 ^ ksSboxOut_0_t_1_1; // @[CryptoUtils.scala 281:20]
  wire  ksSboxOut_0_t_1_18 = ksSboxOut_0_o__8 ^ ksSboxOut_0_t_1_8; // @[CryptoUtils.scala 282:20]
  wire  ksSboxOut_0_t_1_19 = ksSboxOut_0_o__13 ^ ksSboxOut_0_t_1_4; // @[CryptoUtils.scala 283:20]
  wire  ksSboxOut_0_t_1_20 = ksSboxOut_0_t_1_0 ^ ksSboxOut_0_t_1_1; // @[CryptoUtils.scala 284:20]
  wire  ksSboxOut_0_t_1_21 = ksSboxOut_0_t_1_1 ^ ksSboxOut_0_t_1_7; // @[CryptoUtils.scala 285:20]
  wire  ksSboxOut_0_t_1_22 = ksSboxOut_0_t_1_3 ^ ksSboxOut_0_t_1_12; // @[CryptoUtils.scala 286:20]
  wire  ksSboxOut_0_t_1_23 = ksSboxOut_0_t_1_18 ^ ksSboxOut_0_t_1_2; // @[CryptoUtils.scala 287:20]
  wire  ksSboxOut_0_t_1_24 = ksSboxOut_0_t_1_15 ^ ksSboxOut_0_t_1_9; // @[CryptoUtils.scala 288:20]
  wire  ksSboxOut_0_t_1_25 = ksSboxOut_0_t_1_6 ^ ksSboxOut_0_t_1_10; // @[CryptoUtils.scala 289:20]
  wire  ksSboxOut_0_t_1_26 = ksSboxOut_0_t_1_7 ^ ksSboxOut_0_t_1_9; // @[CryptoUtils.scala 290:20]
  wire  ksSboxOut_0_t_1_27 = ksSboxOut_0_t_1_8 ^ ksSboxOut_0_t_1_10; // @[CryptoUtils.scala 291:20]
  wire  ksSboxOut_0_t_1_28 = ksSboxOut_0_t_1_11 ^ ksSboxOut_0_t_1_14; // @[CryptoUtils.scala 292:20]
  wire  ksSboxOut_0_t_1_29 = ksSboxOut_0_t_1_11 ^ ksSboxOut_0_t_1_17; // @[CryptoUtils.scala 293:20]
  wire  ksSboxOut_0_o_1_0 = ksSboxOut_0_t_1_6 ^ ~ksSboxOut_0_t_1_23; // @[CryptoUtils.scala 294:20]
  wire  ksSboxOut_0_o_1_1 = ksSboxOut_0_t_1_13 ^ ~ksSboxOut_0_t_1_27; // @[CryptoUtils.scala 295:20]
  wire  ksSboxOut_0_o_1_2 = ksSboxOut_0_t_1_25 ^ ksSboxOut_0_t_1_29; // @[CryptoUtils.scala 296:20]
  wire  ksSboxOut_0_o_1_3 = ksSboxOut_0_t_1_20 ^ ksSboxOut_0_t_1_22; // @[CryptoUtils.scala 297:20]
  wire  ksSboxOut_0_o_1_4 = ksSboxOut_0_t_1_6 ^ ksSboxOut_0_t_1_21; // @[CryptoUtils.scala 298:20]
  wire  ksSboxOut_0_o_1_5 = ksSboxOut_0_t_1_19 ^ ~ksSboxOut_0_t_1_28; // @[CryptoUtils.scala 299:20]
  wire  ksSboxOut_0_o_1_6 = ksSboxOut_0_t_1_16 ^ ~ksSboxOut_0_t_1_26; // @[CryptoUtils.scala 300:20]
  wire  ksSboxOut_0_o_1_7 = ksSboxOut_0_t_1_6 ^ ksSboxOut_0_t_1_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] ksSboxOut_0 = {ksSboxOut_0_o_1_7,ksSboxOut_0_o_1_6,ksSboxOut_0_o_1_5,ksSboxOut_0_o_1_4,ksSboxOut_0_o_1_3,
    ksSboxOut_0_o_1_2,ksSboxOut_0_o_1_1,ksSboxOut_0_o_1_0}; // @[CryptoUtils.scala 302:7]
  wire  t_33_0 = ksSboxIn_1[3] ^ ksSboxIn_1[1]; // @[CryptoUtils.scala 83:20]
  wire  t_33_1 = ksSboxIn_1[6] ^ ksSboxIn_1[5]; // @[CryptoUtils.scala 84:20]
  wire  t_33_2 = ksSboxIn_1[6] ^ ksSboxIn_1[2]; // @[CryptoUtils.scala 85:20]
  wire  t_33_3 = ksSboxIn_1[5] ^ ksSboxIn_1[2]; // @[CryptoUtils.scala 86:20]
  wire  t_33_4 = ksSboxIn_1[4] ^ ksSboxIn_1[0]; // @[CryptoUtils.scala 87:20]
  wire  t_33_5 = ksSboxIn_1[1] ^ ksSboxIn_1[0]; // @[CryptoUtils.scala 88:20]
  wire  o_33_1 = ksSboxIn_1[7] ^ ksSboxIn_1[4]; // @[CryptoUtils.scala 90:20]
  wire  o_33_2 = ksSboxIn_1[7] ^ ksSboxIn_1[2]; // @[CryptoUtils.scala 91:20]
  wire  o_33_3 = ksSboxIn_1[7] ^ ksSboxIn_1[1]; // @[CryptoUtils.scala 92:20]
  wire  o_33_4 = ksSboxIn_1[4] ^ ksSboxIn_1[2]; // @[CryptoUtils.scala 93:20]
  wire  o_33_5 = o_33_1 ^ t_33_0; // @[CryptoUtils.scala 94:20]
  wire  o_33_6 = ksSboxIn_1[0] ^ o_33_5; // @[CryptoUtils.scala 95:20]
  wire  o_33_7 = ksSboxIn_1[0] ^ t_33_1; // @[CryptoUtils.scala 96:20]
  wire  o_33_8 = o_33_5 ^ t_33_1; // @[CryptoUtils.scala 97:20]
  wire  o_33_9 = o_33_3 ^ o_33_4; // @[CryptoUtils.scala 98:20]
  wire  o_33_10 = o_33_5 ^ t_33_2; // @[CryptoUtils.scala 99:20]
  wire  o_33_11 = t_33_0 ^ t_33_2; // @[CryptoUtils.scala 100:20]
  wire  o_33_12 = t_33_0 ^ t_33_3; // @[CryptoUtils.scala 101:20]
  wire  o_33_13 = o_33_7 ^ o_33_12; // @[CryptoUtils.scala 102:20]
  wire  o_33_14 = t_33_1 ^ t_33_4; // @[CryptoUtils.scala 103:20]
  wire  o_33_15 = o_33_1 ^ o_33_14; // @[CryptoUtils.scala 104:20]
  wire  o_33_16 = t_33_1 ^ t_33_5; // @[CryptoUtils.scala 105:20]
  wire  o_33_17 = o_33_2 ^ o_33_16; // @[CryptoUtils.scala 106:20]
  wire  o_33_18 = o_33_2 ^ o_33_8; // @[CryptoUtils.scala 107:20]
  wire  o_33_19 = o_33_15 ^ o_33_13; // @[CryptoUtils.scala 108:20]
  wire  o_33_20 = o_33_1 ^ t_33_3; // @[CryptoUtils.scala 109:20]
  wire  ksSboxOut_1_t__0 = ksSboxTop_1_3 ^ ksSboxTop_1_12; // @[CryptoUtils.scala 191:20]
  wire  ksSboxOut_1_t__1 = ksSboxTop_1_9 & ksSboxTop_1_5; // @[CryptoUtils.scala 192:20]
  wire  ksSboxOut_1_t__2 = ksSboxTop_1_17 & ksSboxTop_1_6; // @[CryptoUtils.scala 193:20]
  wire  ksSboxOut_1_t__3 = ksSboxTop_1_10 ^ ksSboxOut_1_t__1; // @[CryptoUtils.scala 194:20]
  wire  ksSboxOut_1_t__4 = ksSboxTop_1_14 & ksSboxTop_1_0; // @[CryptoUtils.scala 195:20]
  wire  ksSboxOut_1_t__5 = ksSboxOut_1_t__4 ^ ksSboxOut_1_t__1; // @[CryptoUtils.scala 196:20]
  wire  ksSboxOut_1_t__6 = ksSboxTop_1_3 & ksSboxTop_1_12; // @[CryptoUtils.scala 197:20]
  wire  ksSboxOut_1_t__7 = ksSboxTop_1_16 & ksSboxTop_1_7; // @[CryptoUtils.scala 198:20]
  wire  ksSboxOut_1_t__8 = ksSboxOut_1_t__0 ^ ksSboxOut_1_t__6; // @[CryptoUtils.scala 199:20]
  wire  ksSboxOut_1_t__9 = ksSboxTop_1_15 & ksSboxTop_1_13; // @[CryptoUtils.scala 200:20]
  wire  ksSboxOut_1_t__10 = ksSboxOut_1_t__9 ^ ksSboxOut_1_t__6; // @[CryptoUtils.scala 201:20]
  wire  ksSboxOut_1_t__11 = ksSboxTop_1_1 & ksSboxTop_1_11; // @[CryptoUtils.scala 202:20]
  wire  ksSboxOut_1_t__12 = ksSboxTop_1_4 & ksSboxTop_1_20; // @[CryptoUtils.scala 203:20]
  wire  ksSboxOut_1_t__13 = ksSboxOut_1_t__12 ^ ksSboxOut_1_t__11; // @[CryptoUtils.scala 204:20]
  wire  ksSboxOut_1_t__14 = ksSboxTop_1_2 & ksSboxTop_1_8; // @[CryptoUtils.scala 205:20]
  wire  ksSboxOut_1_t__15 = ksSboxOut_1_t__14 ^ ksSboxOut_1_t__11; // @[CryptoUtils.scala 206:20]
  wire  ksSboxOut_1_t__16 = ksSboxOut_1_t__3 ^ ksSboxOut_1_t__2; // @[CryptoUtils.scala 207:20]
  wire  ksSboxOut_1_t__17 = ksSboxOut_1_t__5 ^ ksSboxTop_1_18; // @[CryptoUtils.scala 208:20]
  wire  ksSboxOut_1_t__18 = ksSboxOut_1_t__8 ^ ksSboxOut_1_t__7; // @[CryptoUtils.scala 209:20]
  wire  ksSboxOut_1_t__19 = ksSboxOut_1_t__10 ^ ksSboxOut_1_t__15; // @[CryptoUtils.scala 210:20]
  wire  ksSboxOut_1_t__20 = ksSboxOut_1_t__16 ^ ksSboxOut_1_t__13; // @[CryptoUtils.scala 211:20]
  wire  ksSboxOut_1_t__21 = ksSboxOut_1_t__17 ^ ksSboxOut_1_t__15; // @[CryptoUtils.scala 212:20]
  wire  ksSboxOut_1_t__22 = ksSboxOut_1_t__18 ^ ksSboxOut_1_t__13; // @[CryptoUtils.scala 213:20]
  wire  ksSboxOut_1_t__23 = ksSboxOut_1_t__19 ^ ksSboxTop_1_19; // @[CryptoUtils.scala 214:20]
  wire  ksSboxOut_1_t__24 = ksSboxOut_1_t__22 ^ ksSboxOut_1_t__23; // @[CryptoUtils.scala 215:20]
  wire  ksSboxOut_1_t__25 = ksSboxOut_1_t__22 & ksSboxOut_1_t__20; // @[CryptoUtils.scala 216:20]
  wire  ksSboxOut_1_t__26 = ksSboxOut_1_t__21 ^ ksSboxOut_1_t__25; // @[CryptoUtils.scala 217:20]
  wire  ksSboxOut_1_t__27 = ksSboxOut_1_t__20 ^ ksSboxOut_1_t__21; // @[CryptoUtils.scala 218:20]
  wire  ksSboxOut_1_t__28 = ksSboxOut_1_t__23 ^ ksSboxOut_1_t__25; // @[CryptoUtils.scala 219:20]
  wire  ksSboxOut_1_t__29 = ksSboxOut_1_t__28 & ksSboxOut_1_t__27; // @[CryptoUtils.scala 220:20]
  wire  ksSboxOut_1_t__30 = ksSboxOut_1_t__26 & ksSboxOut_1_t__24; // @[CryptoUtils.scala 221:20]
  wire  ksSboxOut_1_t__31 = ksSboxOut_1_t__20 & ksSboxOut_1_t__23; // @[CryptoUtils.scala 222:20]
  wire  ksSboxOut_1_t__32 = ksSboxOut_1_t__27 & ksSboxOut_1_t__31; // @[CryptoUtils.scala 223:20]
  wire  ksSboxOut_1_t__33 = ksSboxOut_1_t__27 ^ ksSboxOut_1_t__25; // @[CryptoUtils.scala 224:20]
  wire  ksSboxOut_1_t__34 = ksSboxOut_1_t__21 & ksSboxOut_1_t__22; // @[CryptoUtils.scala 225:20]
  wire  ksSboxOut_1_t__35 = ksSboxOut_1_t__24 & ksSboxOut_1_t__34; // @[CryptoUtils.scala 226:20]
  wire  ksSboxOut_1_t__36 = ksSboxOut_1_t__24 ^ ksSboxOut_1_t__25; // @[CryptoUtils.scala 227:20]
  wire  ksSboxOut_1_t__37 = ksSboxOut_1_t__21 ^ ksSboxOut_1_t__29; // @[CryptoUtils.scala 228:20]
  wire  ksSboxOut_1_t__38 = ksSboxOut_1_t__32 ^ ksSboxOut_1_t__33; // @[CryptoUtils.scala 229:20]
  wire  ksSboxOut_1_t__39 = ksSboxOut_1_t__23 ^ ksSboxOut_1_t__30; // @[CryptoUtils.scala 230:20]
  wire  ksSboxOut_1_t__40 = ksSboxOut_1_t__35 ^ ksSboxOut_1_t__36; // @[CryptoUtils.scala 231:20]
  wire  ksSboxOut_1_t__41 = ksSboxOut_1_t__38 ^ ksSboxOut_1_t__40; // @[CryptoUtils.scala 232:20]
  wire  ksSboxOut_1_t__42 = ksSboxOut_1_t__37 ^ ksSboxOut_1_t__39; // @[CryptoUtils.scala 233:20]
  wire  ksSboxOut_1_t__43 = ksSboxOut_1_t__37 ^ ksSboxOut_1_t__38; // @[CryptoUtils.scala 234:20]
  wire  ksSboxOut_1_t__44 = ksSboxOut_1_t__39 ^ ksSboxOut_1_t__40; // @[CryptoUtils.scala 235:20]
  wire  ksSboxOut_1_t__45 = ksSboxOut_1_t__42 ^ ksSboxOut_1_t__41; // @[CryptoUtils.scala 236:20]
  wire  ksSboxOut_1_o__0 = ksSboxOut_1_t__38 & ksSboxTop_1_7; // @[CryptoUtils.scala 237:20]
  wire  ksSboxOut_1_o__1 = ksSboxOut_1_t__37 & ksSboxTop_1_13; // @[CryptoUtils.scala 238:20]
  wire  ksSboxOut_1_o__2 = ksSboxOut_1_t__42 & ksSboxTop_1_11; // @[CryptoUtils.scala 239:20]
  wire  ksSboxOut_1_o__3 = ksSboxOut_1_t__45 & ksSboxTop_1_20; // @[CryptoUtils.scala 240:20]
  wire  ksSboxOut_1_o__4 = ksSboxOut_1_t__41 & ksSboxTop_1_8; // @[CryptoUtils.scala 241:20]
  wire  ksSboxOut_1_o__5 = ksSboxOut_1_t__44 & ksSboxTop_1_9; // @[CryptoUtils.scala 242:20]
  wire  ksSboxOut_1_o__6 = ksSboxOut_1_t__40 & ksSboxTop_1_17; // @[CryptoUtils.scala 243:20]
  wire  ksSboxOut_1_o__7 = ksSboxOut_1_t__39 & ksSboxTop_1_14; // @[CryptoUtils.scala 244:20]
  wire  ksSboxOut_1_o__8 = ksSboxOut_1_t__43 & ksSboxTop_1_3; // @[CryptoUtils.scala 245:20]
  wire  ksSboxOut_1_o__9 = ksSboxOut_1_t__38 & ksSboxTop_1_16; // @[CryptoUtils.scala 246:20]
  wire  ksSboxOut_1_o__10 = ksSboxOut_1_t__37 & ksSboxTop_1_15; // @[CryptoUtils.scala 247:20]
  wire  ksSboxOut_1_o__11 = ksSboxOut_1_t__42 & ksSboxTop_1_1; // @[CryptoUtils.scala 248:20]
  wire  ksSboxOut_1_o__12 = ksSboxOut_1_t__45 & ksSboxTop_1_4; // @[CryptoUtils.scala 249:20]
  wire  ksSboxOut_1_o__13 = ksSboxOut_1_t__41 & ksSboxTop_1_2; // @[CryptoUtils.scala 250:20]
  wire  ksSboxOut_1_o__14 = ksSboxOut_1_t__44 & ksSboxTop_1_5; // @[CryptoUtils.scala 251:20]
  wire  ksSboxOut_1_o__15 = ksSboxOut_1_t__40 & ksSboxTop_1_6; // @[CryptoUtils.scala 252:20]
  wire  ksSboxOut_1_o__16 = ksSboxOut_1_t__39 & ksSboxTop_1_0; // @[CryptoUtils.scala 253:20]
  wire  ksSboxOut_1_o__17 = ksSboxOut_1_t__43 & ksSboxTop_1_12; // @[CryptoUtils.scala 254:20]
  wire  ksSboxOut_1_t_1_0 = ksSboxOut_1_o__11 ^ ksSboxOut_1_o__12; // @[CryptoUtils.scala 264:20]
  wire  ksSboxOut_1_t_1_1 = ksSboxOut_1_o__0 ^ ksSboxOut_1_o__6; // @[CryptoUtils.scala 265:20]
  wire  ksSboxOut_1_t_1_2 = ksSboxOut_1_o__14 ^ ksSboxOut_1_o__16; // @[CryptoUtils.scala 266:20]
  wire  ksSboxOut_1_t_1_3 = ksSboxOut_1_o__15 ^ ksSboxOut_1_o__5; // @[CryptoUtils.scala 267:20]
  wire  ksSboxOut_1_t_1_4 = ksSboxOut_1_o__4 ^ ksSboxOut_1_o__8; // @[CryptoUtils.scala 268:20]
  wire  ksSboxOut_1_t_1_5 = ksSboxOut_1_o__17 ^ ksSboxOut_1_o__11; // @[CryptoUtils.scala 269:20]
  wire  ksSboxOut_1_t_1_6 = ksSboxOut_1_o__12 ^ ksSboxOut_1_t_1_5; // @[CryptoUtils.scala 270:20]
  wire  ksSboxOut_1_t_1_7 = ksSboxOut_1_o__14 ^ ksSboxOut_1_t_1_3; // @[CryptoUtils.scala 271:20]
  wire  ksSboxOut_1_t_1_8 = ksSboxOut_1_o__1 ^ ksSboxOut_1_o__9; // @[CryptoUtils.scala 272:20]
  wire  ksSboxOut_1_t_1_9 = ksSboxOut_1_o__2 ^ ksSboxOut_1_o__3; // @[CryptoUtils.scala 273:20]
  wire  ksSboxOut_1_t_1_10 = ksSboxOut_1_o__3 ^ ksSboxOut_1_t_1_4; // @[CryptoUtils.scala 274:20]
  wire  ksSboxOut_1_t_1_11 = ksSboxOut_1_o__10 ^ ksSboxOut_1_t_1_2; // @[CryptoUtils.scala 275:20]
  wire  ksSboxOut_1_t_1_12 = ksSboxOut_1_o__16 ^ ksSboxOut_1_o__1; // @[CryptoUtils.scala 276:20]
  wire  ksSboxOut_1_t_1_13 = ksSboxOut_1_o__0 ^ ksSboxOut_1_t_1_0; // @[CryptoUtils.scala 277:20]
  wire  ksSboxOut_1_t_1_14 = ksSboxOut_1_o__2 ^ ksSboxOut_1_o__11; // @[CryptoUtils.scala 278:20]
  wire  ksSboxOut_1_t_1_15 = ksSboxOut_1_o__5 ^ ksSboxOut_1_t_1_1; // @[CryptoUtils.scala 279:20]
  wire  ksSboxOut_1_t_1_16 = ksSboxOut_1_o__6 ^ ksSboxOut_1_t_1_0; // @[CryptoUtils.scala 280:20]
  wire  ksSboxOut_1_t_1_17 = ksSboxOut_1_o__7 ^ ksSboxOut_1_t_1_1; // @[CryptoUtils.scala 281:20]
  wire  ksSboxOut_1_t_1_18 = ksSboxOut_1_o__8 ^ ksSboxOut_1_t_1_8; // @[CryptoUtils.scala 282:20]
  wire  ksSboxOut_1_t_1_19 = ksSboxOut_1_o__13 ^ ksSboxOut_1_t_1_4; // @[CryptoUtils.scala 283:20]
  wire  ksSboxOut_1_t_1_20 = ksSboxOut_1_t_1_0 ^ ksSboxOut_1_t_1_1; // @[CryptoUtils.scala 284:20]
  wire  ksSboxOut_1_t_1_21 = ksSboxOut_1_t_1_1 ^ ksSboxOut_1_t_1_7; // @[CryptoUtils.scala 285:20]
  wire  ksSboxOut_1_t_1_22 = ksSboxOut_1_t_1_3 ^ ksSboxOut_1_t_1_12; // @[CryptoUtils.scala 286:20]
  wire  ksSboxOut_1_t_1_23 = ksSboxOut_1_t_1_18 ^ ksSboxOut_1_t_1_2; // @[CryptoUtils.scala 287:20]
  wire  ksSboxOut_1_t_1_24 = ksSboxOut_1_t_1_15 ^ ksSboxOut_1_t_1_9; // @[CryptoUtils.scala 288:20]
  wire  ksSboxOut_1_t_1_25 = ksSboxOut_1_t_1_6 ^ ksSboxOut_1_t_1_10; // @[CryptoUtils.scala 289:20]
  wire  ksSboxOut_1_t_1_26 = ksSboxOut_1_t_1_7 ^ ksSboxOut_1_t_1_9; // @[CryptoUtils.scala 290:20]
  wire  ksSboxOut_1_t_1_27 = ksSboxOut_1_t_1_8 ^ ksSboxOut_1_t_1_10; // @[CryptoUtils.scala 291:20]
  wire  ksSboxOut_1_t_1_28 = ksSboxOut_1_t_1_11 ^ ksSboxOut_1_t_1_14; // @[CryptoUtils.scala 292:20]
  wire  ksSboxOut_1_t_1_29 = ksSboxOut_1_t_1_11 ^ ksSboxOut_1_t_1_17; // @[CryptoUtils.scala 293:20]
  wire  ksSboxOut_1_o_1_0 = ksSboxOut_1_t_1_6 ^ ~ksSboxOut_1_t_1_23; // @[CryptoUtils.scala 294:20]
  wire  ksSboxOut_1_o_1_1 = ksSboxOut_1_t_1_13 ^ ~ksSboxOut_1_t_1_27; // @[CryptoUtils.scala 295:20]
  wire  ksSboxOut_1_o_1_2 = ksSboxOut_1_t_1_25 ^ ksSboxOut_1_t_1_29; // @[CryptoUtils.scala 296:20]
  wire  ksSboxOut_1_o_1_3 = ksSboxOut_1_t_1_20 ^ ksSboxOut_1_t_1_22; // @[CryptoUtils.scala 297:20]
  wire  ksSboxOut_1_o_1_4 = ksSboxOut_1_t_1_6 ^ ksSboxOut_1_t_1_21; // @[CryptoUtils.scala 298:20]
  wire  ksSboxOut_1_o_1_5 = ksSboxOut_1_t_1_19 ^ ~ksSboxOut_1_t_1_28; // @[CryptoUtils.scala 299:20]
  wire  ksSboxOut_1_o_1_6 = ksSboxOut_1_t_1_16 ^ ~ksSboxOut_1_t_1_26; // @[CryptoUtils.scala 300:20]
  wire  ksSboxOut_1_o_1_7 = ksSboxOut_1_t_1_6 ^ ksSboxOut_1_t_1_24; // @[CryptoUtils.scala 301:20]
  wire  t_34_0 = ksSboxIn_2[3] ^ ksSboxIn_2[1]; // @[CryptoUtils.scala 83:20]
  wire  t_34_1 = ksSboxIn_2[6] ^ ksSboxIn_2[5]; // @[CryptoUtils.scala 84:20]
  wire  t_34_2 = ksSboxIn_2[6] ^ ksSboxIn_2[2]; // @[CryptoUtils.scala 85:20]
  wire  t_34_3 = ksSboxIn_2[5] ^ ksSboxIn_2[2]; // @[CryptoUtils.scala 86:20]
  wire  t_34_4 = ksSboxIn_2[4] ^ ksSboxIn_2[0]; // @[CryptoUtils.scala 87:20]
  wire  t_34_5 = ksSboxIn_2[1] ^ ksSboxIn_2[0]; // @[CryptoUtils.scala 88:20]
  wire  o_34_1 = ksSboxIn_2[7] ^ ksSboxIn_2[4]; // @[CryptoUtils.scala 90:20]
  wire  o_34_2 = ksSboxIn_2[7] ^ ksSboxIn_2[2]; // @[CryptoUtils.scala 91:20]
  wire  o_34_3 = ksSboxIn_2[7] ^ ksSboxIn_2[1]; // @[CryptoUtils.scala 92:20]
  wire  o_34_4 = ksSboxIn_2[4] ^ ksSboxIn_2[2]; // @[CryptoUtils.scala 93:20]
  wire  o_34_5 = o_34_1 ^ t_34_0; // @[CryptoUtils.scala 94:20]
  wire  o_34_6 = ksSboxIn_2[0] ^ o_34_5; // @[CryptoUtils.scala 95:20]
  wire  o_34_7 = ksSboxIn_2[0] ^ t_34_1; // @[CryptoUtils.scala 96:20]
  wire  o_34_8 = o_34_5 ^ t_34_1; // @[CryptoUtils.scala 97:20]
  wire  o_34_9 = o_34_3 ^ o_34_4; // @[CryptoUtils.scala 98:20]
  wire  o_34_10 = o_34_5 ^ t_34_2; // @[CryptoUtils.scala 99:20]
  wire  o_34_11 = t_34_0 ^ t_34_2; // @[CryptoUtils.scala 100:20]
  wire  o_34_12 = t_34_0 ^ t_34_3; // @[CryptoUtils.scala 101:20]
  wire  o_34_13 = o_34_7 ^ o_34_12; // @[CryptoUtils.scala 102:20]
  wire  o_34_14 = t_34_1 ^ t_34_4; // @[CryptoUtils.scala 103:20]
  wire  o_34_15 = o_34_1 ^ o_34_14; // @[CryptoUtils.scala 104:20]
  wire  o_34_16 = t_34_1 ^ t_34_5; // @[CryptoUtils.scala 105:20]
  wire  o_34_17 = o_34_2 ^ o_34_16; // @[CryptoUtils.scala 106:20]
  wire  o_34_18 = o_34_2 ^ o_34_8; // @[CryptoUtils.scala 107:20]
  wire  o_34_19 = o_34_15 ^ o_34_13; // @[CryptoUtils.scala 108:20]
  wire  o_34_20 = o_34_1 ^ t_34_3; // @[CryptoUtils.scala 109:20]
  wire  ksSboxOut_2_t__0 = ksSboxTop_2_3 ^ ksSboxTop_2_12; // @[CryptoUtils.scala 191:20]
  wire  ksSboxOut_2_t__1 = ksSboxTop_2_9 & ksSboxTop_2_5; // @[CryptoUtils.scala 192:20]
  wire  ksSboxOut_2_t__2 = ksSboxTop_2_17 & ksSboxTop_2_6; // @[CryptoUtils.scala 193:20]
  wire  ksSboxOut_2_t__3 = ksSboxTop_2_10 ^ ksSboxOut_2_t__1; // @[CryptoUtils.scala 194:20]
  wire  ksSboxOut_2_t__4 = ksSboxTop_2_14 & ksSboxTop_2_0; // @[CryptoUtils.scala 195:20]
  wire  ksSboxOut_2_t__5 = ksSboxOut_2_t__4 ^ ksSboxOut_2_t__1; // @[CryptoUtils.scala 196:20]
  wire  ksSboxOut_2_t__6 = ksSboxTop_2_3 & ksSboxTop_2_12; // @[CryptoUtils.scala 197:20]
  wire  ksSboxOut_2_t__7 = ksSboxTop_2_16 & ksSboxTop_2_7; // @[CryptoUtils.scala 198:20]
  wire  ksSboxOut_2_t__8 = ksSboxOut_2_t__0 ^ ksSboxOut_2_t__6; // @[CryptoUtils.scala 199:20]
  wire  ksSboxOut_2_t__9 = ksSboxTop_2_15 & ksSboxTop_2_13; // @[CryptoUtils.scala 200:20]
  wire  ksSboxOut_2_t__10 = ksSboxOut_2_t__9 ^ ksSboxOut_2_t__6; // @[CryptoUtils.scala 201:20]
  wire  ksSboxOut_2_t__11 = ksSboxTop_2_1 & ksSboxTop_2_11; // @[CryptoUtils.scala 202:20]
  wire  ksSboxOut_2_t__12 = ksSboxTop_2_4 & ksSboxTop_2_20; // @[CryptoUtils.scala 203:20]
  wire  ksSboxOut_2_t__13 = ksSboxOut_2_t__12 ^ ksSboxOut_2_t__11; // @[CryptoUtils.scala 204:20]
  wire  ksSboxOut_2_t__14 = ksSboxTop_2_2 & ksSboxTop_2_8; // @[CryptoUtils.scala 205:20]
  wire  ksSboxOut_2_t__15 = ksSboxOut_2_t__14 ^ ksSboxOut_2_t__11; // @[CryptoUtils.scala 206:20]
  wire  ksSboxOut_2_t__16 = ksSboxOut_2_t__3 ^ ksSboxOut_2_t__2; // @[CryptoUtils.scala 207:20]
  wire  ksSboxOut_2_t__17 = ksSboxOut_2_t__5 ^ ksSboxTop_2_18; // @[CryptoUtils.scala 208:20]
  wire  ksSboxOut_2_t__18 = ksSboxOut_2_t__8 ^ ksSboxOut_2_t__7; // @[CryptoUtils.scala 209:20]
  wire  ksSboxOut_2_t__19 = ksSboxOut_2_t__10 ^ ksSboxOut_2_t__15; // @[CryptoUtils.scala 210:20]
  wire  ksSboxOut_2_t__20 = ksSboxOut_2_t__16 ^ ksSboxOut_2_t__13; // @[CryptoUtils.scala 211:20]
  wire  ksSboxOut_2_t__21 = ksSboxOut_2_t__17 ^ ksSboxOut_2_t__15; // @[CryptoUtils.scala 212:20]
  wire  ksSboxOut_2_t__22 = ksSboxOut_2_t__18 ^ ksSboxOut_2_t__13; // @[CryptoUtils.scala 213:20]
  wire  ksSboxOut_2_t__23 = ksSboxOut_2_t__19 ^ ksSboxTop_2_19; // @[CryptoUtils.scala 214:20]
  wire  ksSboxOut_2_t__24 = ksSboxOut_2_t__22 ^ ksSboxOut_2_t__23; // @[CryptoUtils.scala 215:20]
  wire  ksSboxOut_2_t__25 = ksSboxOut_2_t__22 & ksSboxOut_2_t__20; // @[CryptoUtils.scala 216:20]
  wire  ksSboxOut_2_t__26 = ksSboxOut_2_t__21 ^ ksSboxOut_2_t__25; // @[CryptoUtils.scala 217:20]
  wire  ksSboxOut_2_t__27 = ksSboxOut_2_t__20 ^ ksSboxOut_2_t__21; // @[CryptoUtils.scala 218:20]
  wire  ksSboxOut_2_t__28 = ksSboxOut_2_t__23 ^ ksSboxOut_2_t__25; // @[CryptoUtils.scala 219:20]
  wire  ksSboxOut_2_t__29 = ksSboxOut_2_t__28 & ksSboxOut_2_t__27; // @[CryptoUtils.scala 220:20]
  wire  ksSboxOut_2_t__30 = ksSboxOut_2_t__26 & ksSboxOut_2_t__24; // @[CryptoUtils.scala 221:20]
  wire  ksSboxOut_2_t__31 = ksSboxOut_2_t__20 & ksSboxOut_2_t__23; // @[CryptoUtils.scala 222:20]
  wire  ksSboxOut_2_t__32 = ksSboxOut_2_t__27 & ksSboxOut_2_t__31; // @[CryptoUtils.scala 223:20]
  wire  ksSboxOut_2_t__33 = ksSboxOut_2_t__27 ^ ksSboxOut_2_t__25; // @[CryptoUtils.scala 224:20]
  wire  ksSboxOut_2_t__34 = ksSboxOut_2_t__21 & ksSboxOut_2_t__22; // @[CryptoUtils.scala 225:20]
  wire  ksSboxOut_2_t__35 = ksSboxOut_2_t__24 & ksSboxOut_2_t__34; // @[CryptoUtils.scala 226:20]
  wire  ksSboxOut_2_t__36 = ksSboxOut_2_t__24 ^ ksSboxOut_2_t__25; // @[CryptoUtils.scala 227:20]
  wire  ksSboxOut_2_t__37 = ksSboxOut_2_t__21 ^ ksSboxOut_2_t__29; // @[CryptoUtils.scala 228:20]
  wire  ksSboxOut_2_t__38 = ksSboxOut_2_t__32 ^ ksSboxOut_2_t__33; // @[CryptoUtils.scala 229:20]
  wire  ksSboxOut_2_t__39 = ksSboxOut_2_t__23 ^ ksSboxOut_2_t__30; // @[CryptoUtils.scala 230:20]
  wire  ksSboxOut_2_t__40 = ksSboxOut_2_t__35 ^ ksSboxOut_2_t__36; // @[CryptoUtils.scala 231:20]
  wire  ksSboxOut_2_t__41 = ksSboxOut_2_t__38 ^ ksSboxOut_2_t__40; // @[CryptoUtils.scala 232:20]
  wire  ksSboxOut_2_t__42 = ksSboxOut_2_t__37 ^ ksSboxOut_2_t__39; // @[CryptoUtils.scala 233:20]
  wire  ksSboxOut_2_t__43 = ksSboxOut_2_t__37 ^ ksSboxOut_2_t__38; // @[CryptoUtils.scala 234:20]
  wire  ksSboxOut_2_t__44 = ksSboxOut_2_t__39 ^ ksSboxOut_2_t__40; // @[CryptoUtils.scala 235:20]
  wire  ksSboxOut_2_t__45 = ksSboxOut_2_t__42 ^ ksSboxOut_2_t__41; // @[CryptoUtils.scala 236:20]
  wire  ksSboxOut_2_o__0 = ksSboxOut_2_t__38 & ksSboxTop_2_7; // @[CryptoUtils.scala 237:20]
  wire  ksSboxOut_2_o__1 = ksSboxOut_2_t__37 & ksSboxTop_2_13; // @[CryptoUtils.scala 238:20]
  wire  ksSboxOut_2_o__2 = ksSboxOut_2_t__42 & ksSboxTop_2_11; // @[CryptoUtils.scala 239:20]
  wire  ksSboxOut_2_o__3 = ksSboxOut_2_t__45 & ksSboxTop_2_20; // @[CryptoUtils.scala 240:20]
  wire  ksSboxOut_2_o__4 = ksSboxOut_2_t__41 & ksSboxTop_2_8; // @[CryptoUtils.scala 241:20]
  wire  ksSboxOut_2_o__5 = ksSboxOut_2_t__44 & ksSboxTop_2_9; // @[CryptoUtils.scala 242:20]
  wire  ksSboxOut_2_o__6 = ksSboxOut_2_t__40 & ksSboxTop_2_17; // @[CryptoUtils.scala 243:20]
  wire  ksSboxOut_2_o__7 = ksSboxOut_2_t__39 & ksSboxTop_2_14; // @[CryptoUtils.scala 244:20]
  wire  ksSboxOut_2_o__8 = ksSboxOut_2_t__43 & ksSboxTop_2_3; // @[CryptoUtils.scala 245:20]
  wire  ksSboxOut_2_o__9 = ksSboxOut_2_t__38 & ksSboxTop_2_16; // @[CryptoUtils.scala 246:20]
  wire  ksSboxOut_2_o__10 = ksSboxOut_2_t__37 & ksSboxTop_2_15; // @[CryptoUtils.scala 247:20]
  wire  ksSboxOut_2_o__11 = ksSboxOut_2_t__42 & ksSboxTop_2_1; // @[CryptoUtils.scala 248:20]
  wire  ksSboxOut_2_o__12 = ksSboxOut_2_t__45 & ksSboxTop_2_4; // @[CryptoUtils.scala 249:20]
  wire  ksSboxOut_2_o__13 = ksSboxOut_2_t__41 & ksSboxTop_2_2; // @[CryptoUtils.scala 250:20]
  wire  ksSboxOut_2_o__14 = ksSboxOut_2_t__44 & ksSboxTop_2_5; // @[CryptoUtils.scala 251:20]
  wire  ksSboxOut_2_o__15 = ksSboxOut_2_t__40 & ksSboxTop_2_6; // @[CryptoUtils.scala 252:20]
  wire  ksSboxOut_2_o__16 = ksSboxOut_2_t__39 & ksSboxTop_2_0; // @[CryptoUtils.scala 253:20]
  wire  ksSboxOut_2_o__17 = ksSboxOut_2_t__43 & ksSboxTop_2_12; // @[CryptoUtils.scala 254:20]
  wire  ksSboxOut_2_t_1_0 = ksSboxOut_2_o__11 ^ ksSboxOut_2_o__12; // @[CryptoUtils.scala 264:20]
  wire  ksSboxOut_2_t_1_1 = ksSboxOut_2_o__0 ^ ksSboxOut_2_o__6; // @[CryptoUtils.scala 265:20]
  wire  ksSboxOut_2_t_1_2 = ksSboxOut_2_o__14 ^ ksSboxOut_2_o__16; // @[CryptoUtils.scala 266:20]
  wire  ksSboxOut_2_t_1_3 = ksSboxOut_2_o__15 ^ ksSboxOut_2_o__5; // @[CryptoUtils.scala 267:20]
  wire  ksSboxOut_2_t_1_4 = ksSboxOut_2_o__4 ^ ksSboxOut_2_o__8; // @[CryptoUtils.scala 268:20]
  wire  ksSboxOut_2_t_1_5 = ksSboxOut_2_o__17 ^ ksSboxOut_2_o__11; // @[CryptoUtils.scala 269:20]
  wire  ksSboxOut_2_t_1_6 = ksSboxOut_2_o__12 ^ ksSboxOut_2_t_1_5; // @[CryptoUtils.scala 270:20]
  wire  ksSboxOut_2_t_1_7 = ksSboxOut_2_o__14 ^ ksSboxOut_2_t_1_3; // @[CryptoUtils.scala 271:20]
  wire  ksSboxOut_2_t_1_8 = ksSboxOut_2_o__1 ^ ksSboxOut_2_o__9; // @[CryptoUtils.scala 272:20]
  wire  ksSboxOut_2_t_1_9 = ksSboxOut_2_o__2 ^ ksSboxOut_2_o__3; // @[CryptoUtils.scala 273:20]
  wire  ksSboxOut_2_t_1_10 = ksSboxOut_2_o__3 ^ ksSboxOut_2_t_1_4; // @[CryptoUtils.scala 274:20]
  wire  ksSboxOut_2_t_1_11 = ksSboxOut_2_o__10 ^ ksSboxOut_2_t_1_2; // @[CryptoUtils.scala 275:20]
  wire  ksSboxOut_2_t_1_12 = ksSboxOut_2_o__16 ^ ksSboxOut_2_o__1; // @[CryptoUtils.scala 276:20]
  wire  ksSboxOut_2_t_1_13 = ksSboxOut_2_o__0 ^ ksSboxOut_2_t_1_0; // @[CryptoUtils.scala 277:20]
  wire  ksSboxOut_2_t_1_14 = ksSboxOut_2_o__2 ^ ksSboxOut_2_o__11; // @[CryptoUtils.scala 278:20]
  wire  ksSboxOut_2_t_1_15 = ksSboxOut_2_o__5 ^ ksSboxOut_2_t_1_1; // @[CryptoUtils.scala 279:20]
  wire  ksSboxOut_2_t_1_16 = ksSboxOut_2_o__6 ^ ksSboxOut_2_t_1_0; // @[CryptoUtils.scala 280:20]
  wire  ksSboxOut_2_t_1_17 = ksSboxOut_2_o__7 ^ ksSboxOut_2_t_1_1; // @[CryptoUtils.scala 281:20]
  wire  ksSboxOut_2_t_1_18 = ksSboxOut_2_o__8 ^ ksSboxOut_2_t_1_8; // @[CryptoUtils.scala 282:20]
  wire  ksSboxOut_2_t_1_19 = ksSboxOut_2_o__13 ^ ksSboxOut_2_t_1_4; // @[CryptoUtils.scala 283:20]
  wire  ksSboxOut_2_t_1_20 = ksSboxOut_2_t_1_0 ^ ksSboxOut_2_t_1_1; // @[CryptoUtils.scala 284:20]
  wire  ksSboxOut_2_t_1_21 = ksSboxOut_2_t_1_1 ^ ksSboxOut_2_t_1_7; // @[CryptoUtils.scala 285:20]
  wire  ksSboxOut_2_t_1_22 = ksSboxOut_2_t_1_3 ^ ksSboxOut_2_t_1_12; // @[CryptoUtils.scala 286:20]
  wire  ksSboxOut_2_t_1_23 = ksSboxOut_2_t_1_18 ^ ksSboxOut_2_t_1_2; // @[CryptoUtils.scala 287:20]
  wire  ksSboxOut_2_t_1_24 = ksSboxOut_2_t_1_15 ^ ksSboxOut_2_t_1_9; // @[CryptoUtils.scala 288:20]
  wire  ksSboxOut_2_t_1_25 = ksSboxOut_2_t_1_6 ^ ksSboxOut_2_t_1_10; // @[CryptoUtils.scala 289:20]
  wire  ksSboxOut_2_t_1_26 = ksSboxOut_2_t_1_7 ^ ksSboxOut_2_t_1_9; // @[CryptoUtils.scala 290:20]
  wire  ksSboxOut_2_t_1_27 = ksSboxOut_2_t_1_8 ^ ksSboxOut_2_t_1_10; // @[CryptoUtils.scala 291:20]
  wire  ksSboxOut_2_t_1_28 = ksSboxOut_2_t_1_11 ^ ksSboxOut_2_t_1_14; // @[CryptoUtils.scala 292:20]
  wire  ksSboxOut_2_t_1_29 = ksSboxOut_2_t_1_11 ^ ksSboxOut_2_t_1_17; // @[CryptoUtils.scala 293:20]
  wire  ksSboxOut_2_o_1_0 = ksSboxOut_2_t_1_6 ^ ~ksSboxOut_2_t_1_23; // @[CryptoUtils.scala 294:20]
  wire  ksSboxOut_2_o_1_1 = ksSboxOut_2_t_1_13 ^ ~ksSboxOut_2_t_1_27; // @[CryptoUtils.scala 295:20]
  wire  ksSboxOut_2_o_1_2 = ksSboxOut_2_t_1_25 ^ ksSboxOut_2_t_1_29; // @[CryptoUtils.scala 296:20]
  wire  ksSboxOut_2_o_1_3 = ksSboxOut_2_t_1_20 ^ ksSboxOut_2_t_1_22; // @[CryptoUtils.scala 297:20]
  wire  ksSboxOut_2_o_1_4 = ksSboxOut_2_t_1_6 ^ ksSboxOut_2_t_1_21; // @[CryptoUtils.scala 298:20]
  wire  ksSboxOut_2_o_1_5 = ksSboxOut_2_t_1_19 ^ ~ksSboxOut_2_t_1_28; // @[CryptoUtils.scala 299:20]
  wire  ksSboxOut_2_o_1_6 = ksSboxOut_2_t_1_16 ^ ~ksSboxOut_2_t_1_26; // @[CryptoUtils.scala 300:20]
  wire  ksSboxOut_2_o_1_7 = ksSboxOut_2_t_1_6 ^ ksSboxOut_2_t_1_24; // @[CryptoUtils.scala 301:20]
  wire [7:0] ksSboxOut_2 = {ksSboxOut_2_o_1_7,ksSboxOut_2_o_1_6,ksSboxOut_2_o_1_5,ksSboxOut_2_o_1_4,ksSboxOut_2_o_1_3,
    ksSboxOut_2_o_1_2,ksSboxOut_2_o_1_1,ksSboxOut_2_o_1_0}; // @[CryptoUtils.scala 302:7]
  wire  t_35_0 = ksSboxIn_3[3] ^ ksSboxIn_3[1]; // @[CryptoUtils.scala 83:20]
  wire  t_35_1 = ksSboxIn_3[6] ^ ksSboxIn_3[5]; // @[CryptoUtils.scala 84:20]
  wire  t_35_2 = ksSboxIn_3[6] ^ ksSboxIn_3[2]; // @[CryptoUtils.scala 85:20]
  wire  t_35_3 = ksSboxIn_3[5] ^ ksSboxIn_3[2]; // @[CryptoUtils.scala 86:20]
  wire  t_35_4 = ksSboxIn_3[4] ^ ksSboxIn_3[0]; // @[CryptoUtils.scala 87:20]
  wire  t_35_5 = ksSboxIn_3[1] ^ ksSboxIn_3[0]; // @[CryptoUtils.scala 88:20]
  wire  o_35_1 = ksSboxIn_3[7] ^ ksSboxIn_3[4]; // @[CryptoUtils.scala 90:20]
  wire  o_35_2 = ksSboxIn_3[7] ^ ksSboxIn_3[2]; // @[CryptoUtils.scala 91:20]
  wire  o_35_3 = ksSboxIn_3[7] ^ ksSboxIn_3[1]; // @[CryptoUtils.scala 92:20]
  wire  o_35_4 = ksSboxIn_3[4] ^ ksSboxIn_3[2]; // @[CryptoUtils.scala 93:20]
  wire  o_35_5 = o_35_1 ^ t_35_0; // @[CryptoUtils.scala 94:20]
  wire  o_35_6 = ksSboxIn_3[0] ^ o_35_5; // @[CryptoUtils.scala 95:20]
  wire  o_35_7 = ksSboxIn_3[0] ^ t_35_1; // @[CryptoUtils.scala 96:20]
  wire  o_35_8 = o_35_5 ^ t_35_1; // @[CryptoUtils.scala 97:20]
  wire  o_35_9 = o_35_3 ^ o_35_4; // @[CryptoUtils.scala 98:20]
  wire  o_35_10 = o_35_5 ^ t_35_2; // @[CryptoUtils.scala 99:20]
  wire  o_35_11 = t_35_0 ^ t_35_2; // @[CryptoUtils.scala 100:20]
  wire  o_35_12 = t_35_0 ^ t_35_3; // @[CryptoUtils.scala 101:20]
  wire  o_35_13 = o_35_7 ^ o_35_12; // @[CryptoUtils.scala 102:20]
  wire  o_35_14 = t_35_1 ^ t_35_4; // @[CryptoUtils.scala 103:20]
  wire  o_35_15 = o_35_1 ^ o_35_14; // @[CryptoUtils.scala 104:20]
  wire  o_35_16 = t_35_1 ^ t_35_5; // @[CryptoUtils.scala 105:20]
  wire  o_35_17 = o_35_2 ^ o_35_16; // @[CryptoUtils.scala 106:20]
  wire  o_35_18 = o_35_2 ^ o_35_8; // @[CryptoUtils.scala 107:20]
  wire  o_35_19 = o_35_15 ^ o_35_13; // @[CryptoUtils.scala 108:20]
  wire  o_35_20 = o_35_1 ^ t_35_3; // @[CryptoUtils.scala 109:20]
  wire  ksSboxOut_3_t__0 = ksSboxTop_3_3 ^ ksSboxTop_3_12; // @[CryptoUtils.scala 191:20]
  wire  ksSboxOut_3_t__1 = ksSboxTop_3_9 & ksSboxTop_3_5; // @[CryptoUtils.scala 192:20]
  wire  ksSboxOut_3_t__2 = ksSboxTop_3_17 & ksSboxTop_3_6; // @[CryptoUtils.scala 193:20]
  wire  ksSboxOut_3_t__3 = ksSboxTop_3_10 ^ ksSboxOut_3_t__1; // @[CryptoUtils.scala 194:20]
  wire  ksSboxOut_3_t__4 = ksSboxTop_3_14 & ksSboxTop_3_0; // @[CryptoUtils.scala 195:20]
  wire  ksSboxOut_3_t__5 = ksSboxOut_3_t__4 ^ ksSboxOut_3_t__1; // @[CryptoUtils.scala 196:20]
  wire  ksSboxOut_3_t__6 = ksSboxTop_3_3 & ksSboxTop_3_12; // @[CryptoUtils.scala 197:20]
  wire  ksSboxOut_3_t__7 = ksSboxTop_3_16 & ksSboxTop_3_7; // @[CryptoUtils.scala 198:20]
  wire  ksSboxOut_3_t__8 = ksSboxOut_3_t__0 ^ ksSboxOut_3_t__6; // @[CryptoUtils.scala 199:20]
  wire  ksSboxOut_3_t__9 = ksSboxTop_3_15 & ksSboxTop_3_13; // @[CryptoUtils.scala 200:20]
  wire  ksSboxOut_3_t__10 = ksSboxOut_3_t__9 ^ ksSboxOut_3_t__6; // @[CryptoUtils.scala 201:20]
  wire  ksSboxOut_3_t__11 = ksSboxTop_3_1 & ksSboxTop_3_11; // @[CryptoUtils.scala 202:20]
  wire  ksSboxOut_3_t__12 = ksSboxTop_3_4 & ksSboxTop_3_20; // @[CryptoUtils.scala 203:20]
  wire  ksSboxOut_3_t__13 = ksSboxOut_3_t__12 ^ ksSboxOut_3_t__11; // @[CryptoUtils.scala 204:20]
  wire  ksSboxOut_3_t__14 = ksSboxTop_3_2 & ksSboxTop_3_8; // @[CryptoUtils.scala 205:20]
  wire  ksSboxOut_3_t__15 = ksSboxOut_3_t__14 ^ ksSboxOut_3_t__11; // @[CryptoUtils.scala 206:20]
  wire  ksSboxOut_3_t__16 = ksSboxOut_3_t__3 ^ ksSboxOut_3_t__2; // @[CryptoUtils.scala 207:20]
  wire  ksSboxOut_3_t__17 = ksSboxOut_3_t__5 ^ ksSboxTop_3_18; // @[CryptoUtils.scala 208:20]
  wire  ksSboxOut_3_t__18 = ksSboxOut_3_t__8 ^ ksSboxOut_3_t__7; // @[CryptoUtils.scala 209:20]
  wire  ksSboxOut_3_t__19 = ksSboxOut_3_t__10 ^ ksSboxOut_3_t__15; // @[CryptoUtils.scala 210:20]
  wire  ksSboxOut_3_t__20 = ksSboxOut_3_t__16 ^ ksSboxOut_3_t__13; // @[CryptoUtils.scala 211:20]
  wire  ksSboxOut_3_t__21 = ksSboxOut_3_t__17 ^ ksSboxOut_3_t__15; // @[CryptoUtils.scala 212:20]
  wire  ksSboxOut_3_t__22 = ksSboxOut_3_t__18 ^ ksSboxOut_3_t__13; // @[CryptoUtils.scala 213:20]
  wire  ksSboxOut_3_t__23 = ksSboxOut_3_t__19 ^ ksSboxTop_3_19; // @[CryptoUtils.scala 214:20]
  wire  ksSboxOut_3_t__24 = ksSboxOut_3_t__22 ^ ksSboxOut_3_t__23; // @[CryptoUtils.scala 215:20]
  wire  ksSboxOut_3_t__25 = ksSboxOut_3_t__22 & ksSboxOut_3_t__20; // @[CryptoUtils.scala 216:20]
  wire  ksSboxOut_3_t__26 = ksSboxOut_3_t__21 ^ ksSboxOut_3_t__25; // @[CryptoUtils.scala 217:20]
  wire  ksSboxOut_3_t__27 = ksSboxOut_3_t__20 ^ ksSboxOut_3_t__21; // @[CryptoUtils.scala 218:20]
  wire  ksSboxOut_3_t__28 = ksSboxOut_3_t__23 ^ ksSboxOut_3_t__25; // @[CryptoUtils.scala 219:20]
  wire  ksSboxOut_3_t__29 = ksSboxOut_3_t__28 & ksSboxOut_3_t__27; // @[CryptoUtils.scala 220:20]
  wire  ksSboxOut_3_t__30 = ksSboxOut_3_t__26 & ksSboxOut_3_t__24; // @[CryptoUtils.scala 221:20]
  wire  ksSboxOut_3_t__31 = ksSboxOut_3_t__20 & ksSboxOut_3_t__23; // @[CryptoUtils.scala 222:20]
  wire  ksSboxOut_3_t__32 = ksSboxOut_3_t__27 & ksSboxOut_3_t__31; // @[CryptoUtils.scala 223:20]
  wire  ksSboxOut_3_t__33 = ksSboxOut_3_t__27 ^ ksSboxOut_3_t__25; // @[CryptoUtils.scala 224:20]
  wire  ksSboxOut_3_t__34 = ksSboxOut_3_t__21 & ksSboxOut_3_t__22; // @[CryptoUtils.scala 225:20]
  wire  ksSboxOut_3_t__35 = ksSboxOut_3_t__24 & ksSboxOut_3_t__34; // @[CryptoUtils.scala 226:20]
  wire  ksSboxOut_3_t__36 = ksSboxOut_3_t__24 ^ ksSboxOut_3_t__25; // @[CryptoUtils.scala 227:20]
  wire  ksSboxOut_3_t__37 = ksSboxOut_3_t__21 ^ ksSboxOut_3_t__29; // @[CryptoUtils.scala 228:20]
  wire  ksSboxOut_3_t__38 = ksSboxOut_3_t__32 ^ ksSboxOut_3_t__33; // @[CryptoUtils.scala 229:20]
  wire  ksSboxOut_3_t__39 = ksSboxOut_3_t__23 ^ ksSboxOut_3_t__30; // @[CryptoUtils.scala 230:20]
  wire  ksSboxOut_3_t__40 = ksSboxOut_3_t__35 ^ ksSboxOut_3_t__36; // @[CryptoUtils.scala 231:20]
  wire  ksSboxOut_3_t__41 = ksSboxOut_3_t__38 ^ ksSboxOut_3_t__40; // @[CryptoUtils.scala 232:20]
  wire  ksSboxOut_3_t__42 = ksSboxOut_3_t__37 ^ ksSboxOut_3_t__39; // @[CryptoUtils.scala 233:20]
  wire  ksSboxOut_3_t__43 = ksSboxOut_3_t__37 ^ ksSboxOut_3_t__38; // @[CryptoUtils.scala 234:20]
  wire  ksSboxOut_3_t__44 = ksSboxOut_3_t__39 ^ ksSboxOut_3_t__40; // @[CryptoUtils.scala 235:20]
  wire  ksSboxOut_3_t__45 = ksSboxOut_3_t__42 ^ ksSboxOut_3_t__41; // @[CryptoUtils.scala 236:20]
  wire  ksSboxOut_3_o__0 = ksSboxOut_3_t__38 & ksSboxTop_3_7; // @[CryptoUtils.scala 237:20]
  wire  ksSboxOut_3_o__1 = ksSboxOut_3_t__37 & ksSboxTop_3_13; // @[CryptoUtils.scala 238:20]
  wire  ksSboxOut_3_o__2 = ksSboxOut_3_t__42 & ksSboxTop_3_11; // @[CryptoUtils.scala 239:20]
  wire  ksSboxOut_3_o__3 = ksSboxOut_3_t__45 & ksSboxTop_3_20; // @[CryptoUtils.scala 240:20]
  wire  ksSboxOut_3_o__4 = ksSboxOut_3_t__41 & ksSboxTop_3_8; // @[CryptoUtils.scala 241:20]
  wire  ksSboxOut_3_o__5 = ksSboxOut_3_t__44 & ksSboxTop_3_9; // @[CryptoUtils.scala 242:20]
  wire  ksSboxOut_3_o__6 = ksSboxOut_3_t__40 & ksSboxTop_3_17; // @[CryptoUtils.scala 243:20]
  wire  ksSboxOut_3_o__7 = ksSboxOut_3_t__39 & ksSboxTop_3_14; // @[CryptoUtils.scala 244:20]
  wire  ksSboxOut_3_o__8 = ksSboxOut_3_t__43 & ksSboxTop_3_3; // @[CryptoUtils.scala 245:20]
  wire  ksSboxOut_3_o__9 = ksSboxOut_3_t__38 & ksSboxTop_3_16; // @[CryptoUtils.scala 246:20]
  wire  ksSboxOut_3_o__10 = ksSboxOut_3_t__37 & ksSboxTop_3_15; // @[CryptoUtils.scala 247:20]
  wire  ksSboxOut_3_o__11 = ksSboxOut_3_t__42 & ksSboxTop_3_1; // @[CryptoUtils.scala 248:20]
  wire  ksSboxOut_3_o__12 = ksSboxOut_3_t__45 & ksSboxTop_3_4; // @[CryptoUtils.scala 249:20]
  wire  ksSboxOut_3_o__13 = ksSboxOut_3_t__41 & ksSboxTop_3_2; // @[CryptoUtils.scala 250:20]
  wire  ksSboxOut_3_o__14 = ksSboxOut_3_t__44 & ksSboxTop_3_5; // @[CryptoUtils.scala 251:20]
  wire  ksSboxOut_3_o__15 = ksSboxOut_3_t__40 & ksSboxTop_3_6; // @[CryptoUtils.scala 252:20]
  wire  ksSboxOut_3_o__16 = ksSboxOut_3_t__39 & ksSboxTop_3_0; // @[CryptoUtils.scala 253:20]
  wire  ksSboxOut_3_o__17 = ksSboxOut_3_t__43 & ksSboxTop_3_12; // @[CryptoUtils.scala 254:20]
  wire  ksSboxOut_3_t_1_0 = ksSboxOut_3_o__11 ^ ksSboxOut_3_o__12; // @[CryptoUtils.scala 264:20]
  wire  ksSboxOut_3_t_1_1 = ksSboxOut_3_o__0 ^ ksSboxOut_3_o__6; // @[CryptoUtils.scala 265:20]
  wire  ksSboxOut_3_t_1_2 = ksSboxOut_3_o__14 ^ ksSboxOut_3_o__16; // @[CryptoUtils.scala 266:20]
  wire  ksSboxOut_3_t_1_3 = ksSboxOut_3_o__15 ^ ksSboxOut_3_o__5; // @[CryptoUtils.scala 267:20]
  wire  ksSboxOut_3_t_1_4 = ksSboxOut_3_o__4 ^ ksSboxOut_3_o__8; // @[CryptoUtils.scala 268:20]
  wire  ksSboxOut_3_t_1_5 = ksSboxOut_3_o__17 ^ ksSboxOut_3_o__11; // @[CryptoUtils.scala 269:20]
  wire  ksSboxOut_3_t_1_6 = ksSboxOut_3_o__12 ^ ksSboxOut_3_t_1_5; // @[CryptoUtils.scala 270:20]
  wire  ksSboxOut_3_t_1_7 = ksSboxOut_3_o__14 ^ ksSboxOut_3_t_1_3; // @[CryptoUtils.scala 271:20]
  wire  ksSboxOut_3_t_1_8 = ksSboxOut_3_o__1 ^ ksSboxOut_3_o__9; // @[CryptoUtils.scala 272:20]
  wire  ksSboxOut_3_t_1_9 = ksSboxOut_3_o__2 ^ ksSboxOut_3_o__3; // @[CryptoUtils.scala 273:20]
  wire  ksSboxOut_3_t_1_10 = ksSboxOut_3_o__3 ^ ksSboxOut_3_t_1_4; // @[CryptoUtils.scala 274:20]
  wire  ksSboxOut_3_t_1_11 = ksSboxOut_3_o__10 ^ ksSboxOut_3_t_1_2; // @[CryptoUtils.scala 275:20]
  wire  ksSboxOut_3_t_1_12 = ksSboxOut_3_o__16 ^ ksSboxOut_3_o__1; // @[CryptoUtils.scala 276:20]
  wire  ksSboxOut_3_t_1_13 = ksSboxOut_3_o__0 ^ ksSboxOut_3_t_1_0; // @[CryptoUtils.scala 277:20]
  wire  ksSboxOut_3_t_1_14 = ksSboxOut_3_o__2 ^ ksSboxOut_3_o__11; // @[CryptoUtils.scala 278:20]
  wire  ksSboxOut_3_t_1_15 = ksSboxOut_3_o__5 ^ ksSboxOut_3_t_1_1; // @[CryptoUtils.scala 279:20]
  wire  ksSboxOut_3_t_1_16 = ksSboxOut_3_o__6 ^ ksSboxOut_3_t_1_0; // @[CryptoUtils.scala 280:20]
  wire  ksSboxOut_3_t_1_17 = ksSboxOut_3_o__7 ^ ksSboxOut_3_t_1_1; // @[CryptoUtils.scala 281:20]
  wire  ksSboxOut_3_t_1_18 = ksSboxOut_3_o__8 ^ ksSboxOut_3_t_1_8; // @[CryptoUtils.scala 282:20]
  wire  ksSboxOut_3_t_1_19 = ksSboxOut_3_o__13 ^ ksSboxOut_3_t_1_4; // @[CryptoUtils.scala 283:20]
  wire  ksSboxOut_3_t_1_20 = ksSboxOut_3_t_1_0 ^ ksSboxOut_3_t_1_1; // @[CryptoUtils.scala 284:20]
  wire  ksSboxOut_3_t_1_21 = ksSboxOut_3_t_1_1 ^ ksSboxOut_3_t_1_7; // @[CryptoUtils.scala 285:20]
  wire  ksSboxOut_3_t_1_22 = ksSboxOut_3_t_1_3 ^ ksSboxOut_3_t_1_12; // @[CryptoUtils.scala 286:20]
  wire  ksSboxOut_3_t_1_23 = ksSboxOut_3_t_1_18 ^ ksSboxOut_3_t_1_2; // @[CryptoUtils.scala 287:20]
  wire  ksSboxOut_3_t_1_24 = ksSboxOut_3_t_1_15 ^ ksSboxOut_3_t_1_9; // @[CryptoUtils.scala 288:20]
  wire  ksSboxOut_3_t_1_25 = ksSboxOut_3_t_1_6 ^ ksSboxOut_3_t_1_10; // @[CryptoUtils.scala 289:20]
  wire  ksSboxOut_3_t_1_26 = ksSboxOut_3_t_1_7 ^ ksSboxOut_3_t_1_9; // @[CryptoUtils.scala 290:20]
  wire  ksSboxOut_3_t_1_27 = ksSboxOut_3_t_1_8 ^ ksSboxOut_3_t_1_10; // @[CryptoUtils.scala 291:20]
  wire  ksSboxOut_3_t_1_28 = ksSboxOut_3_t_1_11 ^ ksSboxOut_3_t_1_14; // @[CryptoUtils.scala 292:20]
  wire  ksSboxOut_3_t_1_29 = ksSboxOut_3_t_1_11 ^ ksSboxOut_3_t_1_17; // @[CryptoUtils.scala 293:20]
  wire  ksSboxOut_3_o_1_0 = ksSboxOut_3_t_1_6 ^ ~ksSboxOut_3_t_1_23; // @[CryptoUtils.scala 294:20]
  wire  ksSboxOut_3_o_1_1 = ksSboxOut_3_t_1_13 ^ ~ksSboxOut_3_t_1_27; // @[CryptoUtils.scala 295:20]
  wire  ksSboxOut_3_o_1_2 = ksSboxOut_3_t_1_25 ^ ksSboxOut_3_t_1_29; // @[CryptoUtils.scala 296:20]
  wire  ksSboxOut_3_o_1_3 = ksSboxOut_3_t_1_20 ^ ksSboxOut_3_t_1_22; // @[CryptoUtils.scala 297:20]
  wire  ksSboxOut_3_o_1_4 = ksSboxOut_3_t_1_6 ^ ksSboxOut_3_t_1_21; // @[CryptoUtils.scala 298:20]
  wire  ksSboxOut_3_o_1_5 = ksSboxOut_3_t_1_19 ^ ~ksSboxOut_3_t_1_28; // @[CryptoUtils.scala 299:20]
  wire  ksSboxOut_3_o_1_6 = ksSboxOut_3_t_1_16 ^ ~ksSboxOut_3_t_1_26; // @[CryptoUtils.scala 300:20]
  wire  ksSboxOut_3_o_1_7 = ksSboxOut_3_t_1_6 ^ ksSboxOut_3_t_1_24; // @[CryptoUtils.scala 301:20]
  reg [3:0] ks1Idx; // @[Reg.scala 16:16]
  wire [15:0] aes64ks1i_lo = {ksSboxOut_1_o_1_7,ksSboxOut_1_o_1_6,ksSboxOut_1_o_1_5,ksSboxOut_1_o_1_4,ksSboxOut_1_o_1_3,
    ksSboxOut_1_o_1_2,ksSboxOut_1_o_1_1,ksSboxOut_1_o_1_0,ksSboxOut_0}; // @[Bku.scala 259:33]
  wire [31:0] _aes64ks1i_T = {ksSboxOut_3_o_1_7,ksSboxOut_3_o_1_6,ksSboxOut_3_o_1_5,ksSboxOut_3_o_1_4,ksSboxOut_3_o_1_3,
    ksSboxOut_3_o_1_2,ksSboxOut_3_o_1_1,ksSboxOut_3_o_1_0,ksSboxOut_2,aes64ks1i_lo}; // @[Bku.scala 259:33]
  wire [7:0] _GEN_383 = 4'h1 == ks1Idx ? 8'h2 : 8'h1; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_384 = 4'h2 == ks1Idx ? 8'h4 : _GEN_383; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_385 = 4'h3 == ks1Idx ? 8'h8 : _GEN_384; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_386 = 4'h4 == ks1Idx ? 8'h10 : _GEN_385; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_387 = 4'h5 == ks1Idx ? 8'h20 : _GEN_386; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_388 = 4'h6 == ks1Idx ? 8'h40 : _GEN_387; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_389 = 4'h7 == ks1Idx ? 8'h80 : _GEN_388; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_390 = 4'h8 == ks1Idx ? 8'h1b : _GEN_389; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_391 = 4'h9 == ks1Idx ? 8'h36 : _GEN_390; // @[Bku.scala 259:{40,40}]
  wire [7:0] _GEN_392 = 4'ha == ks1Idx ? 8'h0 : _GEN_391; // @[Bku.scala 259:{40,40}]
  wire [31:0] _GEN_672 = {{24'd0}, _GEN_392}; // @[Bku.scala 259:40]
  wire [31:0] _aes64ks1i_T_1 = _aes64ks1i_T ^ _GEN_672; // @[Bku.scala 259:40]
  wire [63:0] aes64ks1i = {_aes64ks1i_T_1,_aes64ks1i_T_1}; // @[Cat.scala 31:58]
  wire [31:0] aes64ks2Temp = io_src_0[63:32] ^ io_src_1[31:0]; // @[Bku.scala 261:34]
  wire [31:0] _aes64ks2_T_1 = aes64ks2Temp ^ io_src_1[63:32]; // @[Bku.scala 262:45]
  wire [63:0] _aes64ks2_T_2 = {_aes64ks2_T_1,aes64ks2Temp}; // @[Cat.scala 31:58]
  reg [63:0] aes64ks2; // @[Reg.scala 16:16]
  wire [63:0] _aesResult_T_3 = 7'h21 == funcReg ? aes64esm : aes64es; // @[Mux.scala 81:58]
  wire [63:0] _aesResult_T_5 = 7'h22 == funcReg ? aes64ds : _aesResult_T_3; // @[Mux.scala 81:58]
  wire [63:0] _aesResult_T_7 = 7'h23 == funcReg ? aes64dsm : _aesResult_T_5; // @[Mux.scala 81:58]
  wire [63:0] _aesResult_T_9 = 7'h24 == funcReg ? aes64im : _aesResult_T_7; // @[Mux.scala 81:58]
  wire [63:0] _aesResult_T_11 = 7'h25 == funcReg ? aes64ks1i : _aesResult_T_9; // @[Mux.scala 81:58]
  wire [63:0] aesResult = 7'h26 == funcReg ? aes64ks2 : _aesResult_T_11; // @[Mux.scala 81:58]
  reg  sm4SboxTop_0; // @[Bku.scala 276:23]
  reg  sm4SboxTop_1; // @[Bku.scala 276:23]
  reg  sm4SboxTop_2; // @[Bku.scala 276:23]
  reg  sm4SboxTop_3; // @[Bku.scala 276:23]
  reg  sm4SboxTop_4; // @[Bku.scala 276:23]
  reg  sm4SboxTop_5; // @[Bku.scala 276:23]
  reg  sm4SboxTop_6; // @[Bku.scala 276:23]
  reg  sm4SboxTop_7; // @[Bku.scala 276:23]
  reg  sm4SboxTop_8; // @[Bku.scala 276:23]
  reg  sm4SboxTop_9; // @[Bku.scala 276:23]
  reg  sm4SboxTop_10; // @[Bku.scala 276:23]
  reg  sm4SboxTop_11; // @[Bku.scala 276:23]
  reg  sm4SboxTop_12; // @[Bku.scala 276:23]
  reg  sm4SboxTop_13; // @[Bku.scala 276:23]
  reg  sm4SboxTop_14; // @[Bku.scala 276:23]
  reg  sm4SboxTop_15; // @[Bku.scala 276:23]
  reg  sm4SboxTop_16; // @[Bku.scala 276:23]
  reg  sm4SboxTop_17; // @[Bku.scala 276:23]
  reg  sm4SboxTop_18; // @[Bku.scala 276:23]
  reg  sm4SboxTop_19; // @[Bku.scala 276:23]
  reg  sm4SboxTop_20; // @[Bku.scala 276:23]
  wire [7:0] _GEN_395 = 2'h1 == io_func[1:0] ? src2Bytes_1 : src2Bytes_0; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_396 = 2'h2 == io_func[1:0] ? src2Bytes_2 : _GEN_395; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_397 = 2'h3 == io_func[1:0] ? src2Bytes_3 : _GEN_396; // @[CryptoUtils.scala 154:{15,15}]
  wire [2:0] _GEN_674 = {{1'd0}, io_func[1:0]}; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_398 = 3'h4 == _GEN_674 ? src2Bytes_4 : _GEN_397; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_399 = 3'h5 == _GEN_674 ? src2Bytes_5 : _GEN_398; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_400 = 3'h6 == _GEN_674 ? src2Bytes_6 : _GEN_399; // @[CryptoUtils.scala 154:{15,15}]
  wire [7:0] _GEN_401 = 3'h7 == _GEN_674 ? src2Bytes_7 : _GEN_400; // @[CryptoUtils.scala 154:{15,15}]
  wire  t_36_0 = _GEN_401[3] ^ _GEN_401[4]; // @[CryptoUtils.scala 154:19]
  wire  t_36_1 = _GEN_401[2] ^ _GEN_401[7]; // @[CryptoUtils.scala 155:19]
  wire  o_36_18 = _GEN_401[2] ^ _GEN_401[6]; // @[CryptoUtils.scala 179:19]
  wire  t_36_2 = _GEN_401[7] ^ o_36_18; // @[CryptoUtils.scala 156:19]
  wire  t_36_3 = _GEN_401[1] ^ t_36_1; // @[CryptoUtils.scala 157:19]
  wire  t_36_4 = _GEN_401[6] ^ _GEN_401[7]; // @[CryptoUtils.scala 158:19]
  wire  t_36_5 = _GEN_401[0] ^ o_36_18; // @[CryptoUtils.scala 159:19]
  wire  t_36_6 = _GEN_401[3] ^ _GEN_401[6]; // @[CryptoUtils.scala 160:19]
  wire  o_36_10 = _GEN_401[1] ^ o_36_18; // @[CryptoUtils.scala 171:19]
  wire  _o_0_T_45 = ~o_36_10; // @[CryptoUtils.scala 161:21]
  wire  o_36_0 = _GEN_401[5] ^ ~o_36_10; // @[CryptoUtils.scala 161:19]
  wire  o_36_1 = t_36_0 ^ t_36_3; // @[CryptoUtils.scala 162:19]
  wire  o_36_2 = _GEN_401[0] ^ t_36_0; // @[CryptoUtils.scala 163:19]
  wire  o_36_4 = _GEN_401[0] ^ t_36_3; // @[CryptoUtils.scala 165:19]
  wire  o_36_3 = _GEN_401[3] ^ o_36_4; // @[CryptoUtils.scala 164:19]
  wire  o_36_5 = _GEN_401[5] ^ t_36_5; // @[CryptoUtils.scala 166:19]
  wire  o_36_6 = _GEN_401[0] ^ ~_GEN_401[1]; // @[CryptoUtils.scala 167:19]
  wire  o_36_7 = t_36_0 ^ _o_0_T_45; // @[CryptoUtils.scala 168:19]
  wire  o_36_8 = t_36_0 ^ t_36_5; // @[CryptoUtils.scala 169:19]
  wire  o_36_11 = t_36_0 ^ t_36_4; // @[CryptoUtils.scala 172:19]
  wire  o_36_12 = _GEN_401[5] ^ t_36_4; // @[CryptoUtils.scala 173:19]
  wire  o_36_13 = _GEN_401[5] ^ ~o_36_1; // @[CryptoUtils.scala 174:19]
  wire  _o_14_T_37 = ~t_36_2; // @[CryptoUtils.scala 175:21]
  wire  o_36_14 = _GEN_401[4] ^ ~t_36_2; // @[CryptoUtils.scala 175:19]
  wire  o_36_15 = _GEN_401[1] ^ ~t_36_6; // @[CryptoUtils.scala 176:19]
  wire  o_36_16 = _GEN_401[0] ^ _o_14_T_37; // @[CryptoUtils.scala 177:19]
  wire  o_36_17 = t_36_0 ^ _o_14_T_37; // @[CryptoUtils.scala 178:19]
  wire  o_36_19 = _GEN_401[5] ^ ~o_36_14; // @[CryptoUtils.scala 180:19]
  wire  o_36_20 = _GEN_401[0] ^ t_36_1; // @[CryptoUtils.scala 181:19]
  wire  sm4SboxOut_t__0 = sm4SboxTop_3 ^ sm4SboxTop_12; // @[CryptoUtils.scala 191:20]
  wire  sm4SboxOut_t__1 = sm4SboxTop_9 & sm4SboxTop_5; // @[CryptoUtils.scala 192:20]
  wire  sm4SboxOut_t__2 = sm4SboxTop_17 & sm4SboxTop_6; // @[CryptoUtils.scala 193:20]
  wire  sm4SboxOut_t__3 = sm4SboxTop_10 ^ sm4SboxOut_t__1; // @[CryptoUtils.scala 194:20]
  wire  sm4SboxOut_t__4 = sm4SboxTop_14 & sm4SboxTop_0; // @[CryptoUtils.scala 195:20]
  wire  sm4SboxOut_t__5 = sm4SboxOut_t__4 ^ sm4SboxOut_t__1; // @[CryptoUtils.scala 196:20]
  wire  sm4SboxOut_t__6 = sm4SboxTop_3 & sm4SboxTop_12; // @[CryptoUtils.scala 197:20]
  wire  sm4SboxOut_t__7 = sm4SboxTop_16 & sm4SboxTop_7; // @[CryptoUtils.scala 198:20]
  wire  sm4SboxOut_t__8 = sm4SboxOut_t__0 ^ sm4SboxOut_t__6; // @[CryptoUtils.scala 199:20]
  wire  sm4SboxOut_t__9 = sm4SboxTop_15 & sm4SboxTop_13; // @[CryptoUtils.scala 200:20]
  wire  sm4SboxOut_t__10 = sm4SboxOut_t__9 ^ sm4SboxOut_t__6; // @[CryptoUtils.scala 201:20]
  wire  sm4SboxOut_t__11 = sm4SboxTop_1 & sm4SboxTop_11; // @[CryptoUtils.scala 202:20]
  wire  sm4SboxOut_t__12 = sm4SboxTop_4 & sm4SboxTop_20; // @[CryptoUtils.scala 203:20]
  wire  sm4SboxOut_t__13 = sm4SboxOut_t__12 ^ sm4SboxOut_t__11; // @[CryptoUtils.scala 204:20]
  wire  sm4SboxOut_t__14 = sm4SboxTop_2 & sm4SboxTop_8; // @[CryptoUtils.scala 205:20]
  wire  sm4SboxOut_t__15 = sm4SboxOut_t__14 ^ sm4SboxOut_t__11; // @[CryptoUtils.scala 206:20]
  wire  sm4SboxOut_t__16 = sm4SboxOut_t__3 ^ sm4SboxOut_t__2; // @[CryptoUtils.scala 207:20]
  wire  sm4SboxOut_t__17 = sm4SboxOut_t__5 ^ sm4SboxTop_18; // @[CryptoUtils.scala 208:20]
  wire  sm4SboxOut_t__18 = sm4SboxOut_t__8 ^ sm4SboxOut_t__7; // @[CryptoUtils.scala 209:20]
  wire  sm4SboxOut_t__19 = sm4SboxOut_t__10 ^ sm4SboxOut_t__15; // @[CryptoUtils.scala 210:20]
  wire  sm4SboxOut_t__20 = sm4SboxOut_t__16 ^ sm4SboxOut_t__13; // @[CryptoUtils.scala 211:20]
  wire  sm4SboxOut_t__21 = sm4SboxOut_t__17 ^ sm4SboxOut_t__15; // @[CryptoUtils.scala 212:20]
  wire  sm4SboxOut_t__22 = sm4SboxOut_t__18 ^ sm4SboxOut_t__13; // @[CryptoUtils.scala 213:20]
  wire  sm4SboxOut_t__23 = sm4SboxOut_t__19 ^ sm4SboxTop_19; // @[CryptoUtils.scala 214:20]
  wire  sm4SboxOut_t__24 = sm4SboxOut_t__22 ^ sm4SboxOut_t__23; // @[CryptoUtils.scala 215:20]
  wire  sm4SboxOut_t__25 = sm4SboxOut_t__22 & sm4SboxOut_t__20; // @[CryptoUtils.scala 216:20]
  wire  sm4SboxOut_t__26 = sm4SboxOut_t__21 ^ sm4SboxOut_t__25; // @[CryptoUtils.scala 217:20]
  wire  sm4SboxOut_t__27 = sm4SboxOut_t__20 ^ sm4SboxOut_t__21; // @[CryptoUtils.scala 218:20]
  wire  sm4SboxOut_t__28 = sm4SboxOut_t__23 ^ sm4SboxOut_t__25; // @[CryptoUtils.scala 219:20]
  wire  sm4SboxOut_t__29 = sm4SboxOut_t__28 & sm4SboxOut_t__27; // @[CryptoUtils.scala 220:20]
  wire  sm4SboxOut_t__30 = sm4SboxOut_t__26 & sm4SboxOut_t__24; // @[CryptoUtils.scala 221:20]
  wire  sm4SboxOut_t__31 = sm4SboxOut_t__20 & sm4SboxOut_t__23; // @[CryptoUtils.scala 222:20]
  wire  sm4SboxOut_t__32 = sm4SboxOut_t__27 & sm4SboxOut_t__31; // @[CryptoUtils.scala 223:20]
  wire  sm4SboxOut_t__33 = sm4SboxOut_t__27 ^ sm4SboxOut_t__25; // @[CryptoUtils.scala 224:20]
  wire  sm4SboxOut_t__34 = sm4SboxOut_t__21 & sm4SboxOut_t__22; // @[CryptoUtils.scala 225:20]
  wire  sm4SboxOut_t__35 = sm4SboxOut_t__24 & sm4SboxOut_t__34; // @[CryptoUtils.scala 226:20]
  wire  sm4SboxOut_t__36 = sm4SboxOut_t__24 ^ sm4SboxOut_t__25; // @[CryptoUtils.scala 227:20]
  wire  sm4SboxOut_t__37 = sm4SboxOut_t__21 ^ sm4SboxOut_t__29; // @[CryptoUtils.scala 228:20]
  wire  sm4SboxOut_t__38 = sm4SboxOut_t__32 ^ sm4SboxOut_t__33; // @[CryptoUtils.scala 229:20]
  wire  sm4SboxOut_t__39 = sm4SboxOut_t__23 ^ sm4SboxOut_t__30; // @[CryptoUtils.scala 230:20]
  wire  sm4SboxOut_t__40 = sm4SboxOut_t__35 ^ sm4SboxOut_t__36; // @[CryptoUtils.scala 231:20]
  wire  sm4SboxOut_t__41 = sm4SboxOut_t__38 ^ sm4SboxOut_t__40; // @[CryptoUtils.scala 232:20]
  wire  sm4SboxOut_t__42 = sm4SboxOut_t__37 ^ sm4SboxOut_t__39; // @[CryptoUtils.scala 233:20]
  wire  sm4SboxOut_t__43 = sm4SboxOut_t__37 ^ sm4SboxOut_t__38; // @[CryptoUtils.scala 234:20]
  wire  sm4SboxOut_t__44 = sm4SboxOut_t__39 ^ sm4SboxOut_t__40; // @[CryptoUtils.scala 235:20]
  wire  sm4SboxOut_t__45 = sm4SboxOut_t__42 ^ sm4SboxOut_t__41; // @[CryptoUtils.scala 236:20]
  wire  sm4SboxOut_o__0 = sm4SboxOut_t__38 & sm4SboxTop_7; // @[CryptoUtils.scala 237:20]
  wire  sm4SboxOut_o__1 = sm4SboxOut_t__37 & sm4SboxTop_13; // @[CryptoUtils.scala 238:20]
  wire  sm4SboxOut_o__2 = sm4SboxOut_t__42 & sm4SboxTop_11; // @[CryptoUtils.scala 239:20]
  wire  sm4SboxOut_o__3 = sm4SboxOut_t__45 & sm4SboxTop_20; // @[CryptoUtils.scala 240:20]
  wire  sm4SboxOut_o__4 = sm4SboxOut_t__41 & sm4SboxTop_8; // @[CryptoUtils.scala 241:20]
  wire  sm4SboxOut_o__5 = sm4SboxOut_t__44 & sm4SboxTop_9; // @[CryptoUtils.scala 242:20]
  wire  sm4SboxOut_o__6 = sm4SboxOut_t__40 & sm4SboxTop_17; // @[CryptoUtils.scala 243:20]
  wire  sm4SboxOut_o__7 = sm4SboxOut_t__39 & sm4SboxTop_14; // @[CryptoUtils.scala 244:20]
  wire  sm4SboxOut_o__8 = sm4SboxOut_t__43 & sm4SboxTop_3; // @[CryptoUtils.scala 245:20]
  wire  sm4SboxOut_o__9 = sm4SboxOut_t__38 & sm4SboxTop_16; // @[CryptoUtils.scala 246:20]
  wire  sm4SboxOut_o__10 = sm4SboxOut_t__37 & sm4SboxTop_15; // @[CryptoUtils.scala 247:20]
  wire  sm4SboxOut_o__11 = sm4SboxOut_t__42 & sm4SboxTop_1; // @[CryptoUtils.scala 248:20]
  wire  sm4SboxOut_o__12 = sm4SboxOut_t__45 & sm4SboxTop_4; // @[CryptoUtils.scala 249:20]
  wire  sm4SboxOut_o__13 = sm4SboxOut_t__41 & sm4SboxTop_2; // @[CryptoUtils.scala 250:20]
  wire  sm4SboxOut_o__14 = sm4SboxOut_t__44 & sm4SboxTop_5; // @[CryptoUtils.scala 251:20]
  wire  sm4SboxOut_o__15 = sm4SboxOut_t__40 & sm4SboxTop_6; // @[CryptoUtils.scala 252:20]
  wire  sm4SboxOut_o__16 = sm4SboxOut_t__39 & sm4SboxTop_0; // @[CryptoUtils.scala 253:20]
  wire  sm4SboxOut_o__17 = sm4SboxOut_t__43 & sm4SboxTop_12; // @[CryptoUtils.scala 254:20]
  wire  sm4SboxOut_t_1_0 = sm4SboxOut_o__4 ^ sm4SboxOut_o__7; // @[CryptoUtils.scala 358:20]
  wire  sm4SboxOut_t_1_1 = sm4SboxOut_o__13 ^ sm4SboxOut_o__15; // @[CryptoUtils.scala 359:20]
  wire  sm4SboxOut_t_1_2 = sm4SboxOut_o__2 ^ sm4SboxOut_o__16; // @[CryptoUtils.scala 360:20]
  wire  sm4SboxOut_t_1_3 = sm4SboxOut_o__6 ^ sm4SboxOut_t_1_0; // @[CryptoUtils.scala 361:20]
  wire  sm4SboxOut_t_1_4 = sm4SboxOut_o__12 ^ sm4SboxOut_t_1_1; // @[CryptoUtils.scala 362:20]
  wire  sm4SboxOut_t_1_5 = sm4SboxOut_o__9 ^ sm4SboxOut_o__10; // @[CryptoUtils.scala 363:20]
  wire  sm4SboxOut_t_1_6 = sm4SboxOut_o__11 ^ sm4SboxOut_t_1_2; // @[CryptoUtils.scala 364:20]
  wire  sm4SboxOut_t_1_7 = sm4SboxOut_o__1 ^ sm4SboxOut_t_1_4; // @[CryptoUtils.scala 365:20]
  wire  sm4SboxOut_t_1_8 = sm4SboxOut_o__0 ^ sm4SboxOut_o__17; // @[CryptoUtils.scala 366:20]
  wire  sm4SboxOut_t_1_9 = sm4SboxOut_o__3 ^ sm4SboxOut_o__17; // @[CryptoUtils.scala 367:20]
  wire  sm4SboxOut_t_1_10 = sm4SboxOut_o__8 ^ sm4SboxOut_t_1_3; // @[CryptoUtils.scala 368:20]
  wire  sm4SboxOut_t_1_11 = sm4SboxOut_t_1_2 ^ sm4SboxOut_t_1_5; // @[CryptoUtils.scala 369:20]
  wire  sm4SboxOut_t_1_12 = sm4SboxOut_o__14 ^ sm4SboxOut_t_1_6; // @[CryptoUtils.scala 370:20]
  wire  sm4SboxOut_t_1_13 = sm4SboxOut_t_1_7 ^ sm4SboxOut_t_1_9; // @[CryptoUtils.scala 371:20]
  wire  sm4SboxOut_t_1_14 = sm4SboxOut_o__0 ^ sm4SboxOut_o__6; // @[CryptoUtils.scala 372:20]
  wire  sm4SboxOut_t_1_15 = sm4SboxOut_o__7 ^ sm4SboxOut_o__16; // @[CryptoUtils.scala 373:20]
  wire  sm4SboxOut_t_1_16 = sm4SboxOut_o__5 ^ sm4SboxOut_o__13; // @[CryptoUtils.scala 374:20]
  wire  sm4SboxOut_t_1_17 = sm4SboxOut_o__3 ^ sm4SboxOut_o__15; // @[CryptoUtils.scala 375:20]
  wire  sm4SboxOut_t_1_18 = sm4SboxOut_o__10 ^ sm4SboxOut_o__12; // @[CryptoUtils.scala 376:20]
  wire  sm4SboxOut_t_1_19 = sm4SboxOut_o__9 ^ sm4SboxOut_t_1_1; // @[CryptoUtils.scala 377:20]
  wire  sm4SboxOut_t_1_20 = sm4SboxOut_o__4 ^ sm4SboxOut_t_1_4; // @[CryptoUtils.scala 378:20]
  wire  sm4SboxOut_t_1_21 = sm4SboxOut_o__14 ^ sm4SboxOut_t_1_3; // @[CryptoUtils.scala 379:20]
  wire  sm4SboxOut_t_1_22 = sm4SboxOut_o__16 ^ sm4SboxOut_t_1_5; // @[CryptoUtils.scala 380:20]
  wire  sm4SboxOut_t_1_23 = sm4SboxOut_t_1_7 ^ sm4SboxOut_t_1_14; // @[CryptoUtils.scala 381:20]
  wire  sm4SboxOut_t_1_24 = sm4SboxOut_t_1_8 ^ sm4SboxOut_t_1_11; // @[CryptoUtils.scala 382:20]
  wire  sm4SboxOut_t_1_25 = sm4SboxOut_t_1_0 ^ sm4SboxOut_t_1_12; // @[CryptoUtils.scala 383:20]
  wire  sm4SboxOut_t_1_26 = sm4SboxOut_t_1_17 ^ sm4SboxOut_t_1_3; // @[CryptoUtils.scala 384:20]
  wire  sm4SboxOut_t_1_27 = sm4SboxOut_t_1_18 ^ sm4SboxOut_t_1_10; // @[CryptoUtils.scala 385:20]
  wire  sm4SboxOut_t_1_28 = sm4SboxOut_t_1_19 ^ sm4SboxOut_t_1_6; // @[CryptoUtils.scala 386:20]
  wire  sm4SboxOut_t_1_29 = sm4SboxOut_t_1_8 ^ sm4SboxOut_t_1_10; // @[CryptoUtils.scala 387:20]
  wire  sm4SboxOut_o_1_0 = sm4SboxOut_t_1_11 ^ ~sm4SboxOut_t_1_13; // @[CryptoUtils.scala 388:20]
  wire  sm4SboxOut_o_1_1 = sm4SboxOut_t_1_15 ^ ~sm4SboxOut_t_1_23; // @[CryptoUtils.scala 389:20]
  wire  sm4SboxOut_o_1_2 = sm4SboxOut_t_1_20 ^ sm4SboxOut_t_1_24; // @[CryptoUtils.scala 390:20]
  wire  sm4SboxOut_o_1_3 = sm4SboxOut_t_1_16 ^ sm4SboxOut_t_1_25; // @[CryptoUtils.scala 391:20]
  wire  sm4SboxOut_o_1_4 = sm4SboxOut_t_1_26 ^ ~sm4SboxOut_t_1_22; // @[CryptoUtils.scala 392:20]
  wire  sm4SboxOut_o_1_5 = sm4SboxOut_t_1_21 ^ sm4SboxOut_t_1_13; // @[CryptoUtils.scala 393:20]
  wire  sm4SboxOut_o_1_6 = sm4SboxOut_t_1_27 ^ ~sm4SboxOut_t_1_12; // @[CryptoUtils.scala 394:20]
  wire  sm4SboxOut_o_1_7 = sm4SboxOut_t_1_28 ^ ~sm4SboxOut_t_1_29; // @[CryptoUtils.scala 395:20]
  wire [7:0] sm4SboxOut = {sm4SboxOut_o_1_7,sm4SboxOut_o_1_6,sm4SboxOut_o_1_5,sm4SboxOut_o_1_4,sm4SboxOut_o_1_3,
    sm4SboxOut_o_1_2,sm4SboxOut_o_1_1,sm4SboxOut_o_1_0}; // @[CryptoUtils.scala 396:7]
  wire [15:0] _sm4ed_T = {sm4SboxOut, 8'h0}; // @[Bku.scala 282:39]
  wire [15:0] _GEN_678 = {{8'd0}, sm4SboxOut}; // @[Bku.scala 282:26]
  wire [15:0] _sm4ed_T_1 = _GEN_678 ^ _sm4ed_T; // @[Bku.scala 282:26]
  wire [9:0] _sm4ed_T_2 = {sm4SboxOut, 2'h0}; // @[Bku.scala 282:57]
  wire [15:0] _GEN_679 = {{6'd0}, _sm4ed_T_2}; // @[Bku.scala 282:44]
  wire [15:0] _sm4ed_T_3 = _sm4ed_T_1 ^ _GEN_679; // @[Bku.scala 282:44]
  wire [25:0] _sm4ed_T_4 = {sm4SboxOut, 18'h0}; // @[Bku.scala 282:75]
  wire [25:0] _GEN_680 = {{10'd0}, _sm4ed_T_3}; // @[Bku.scala 282:62]
  wire [25:0] _sm4ed_T_5 = _GEN_680 ^ _sm4ed_T_4; // @[Bku.scala 282:62]
  wire [7:0] _sm4ed_T_6 = sm4SboxOut & 8'h3f; // @[Bku.scala 282:95]
  wire [33:0] _sm4ed_T_7 = {_sm4ed_T_6, 26'h0}; // @[Bku.scala 282:104]
  wire [33:0] _GEN_681 = {{8'd0}, _sm4ed_T_5}; // @[Bku.scala 282:81]
  wire [33:0] _sm4ed_T_8 = _GEN_681 ^ _sm4ed_T_7; // @[Bku.scala 282:81]
  wire [7:0] _sm4ed_T_9 = sm4SboxOut & 8'hc0; // @[Bku.scala 282:124]
  wire [17:0] _sm4ed_T_10 = {_sm4ed_T_9, 10'h0}; // @[Bku.scala 282:133]
  wire [33:0] _GEN_682 = {{16'd0}, _sm4ed_T_10}; // @[Bku.scala 282:110]
  wire [33:0] sm4ed = _sm4ed_T_8 ^ _GEN_682; // @[Bku.scala 282:110]
  wire [7:0] _sm4ks_T = sm4SboxOut & 8'h7; // @[Bku.scala 283:40]
  wire [36:0] _sm4ks_T_1 = {_sm4ks_T, 29'h0}; // @[Bku.scala 283:49]
  wire [36:0] _GEN_683 = {{29'd0}, sm4SboxOut}; // @[Bku.scala 283:26]
  wire [36:0] _sm4ks_T_2 = _GEN_683 ^ _sm4ks_T_1; // @[Bku.scala 283:26]
  wire [7:0] _sm4ks_T_3 = sm4SboxOut & 8'hfe; // @[Bku.scala 283:69]
  wire [14:0] _sm4ks_T_4 = {_sm4ks_T_3, 7'h0}; // @[Bku.scala 283:78]
  wire [36:0] _GEN_684 = {{22'd0}, _sm4ks_T_4}; // @[Bku.scala 283:55]
  wire [36:0] _sm4ks_T_5 = _sm4ks_T_2 ^ _GEN_684; // @[Bku.scala 283:55]
  wire [7:0] _sm4ks_T_6 = sm4SboxOut & 8'h1; // @[Bku.scala 283:97]
  wire [30:0] _sm4ks_T_7 = {_sm4ks_T_6, 23'h0}; // @[Bku.scala 283:106]
  wire [36:0] _GEN_685 = {{6'd0}, _sm4ks_T_7}; // @[Bku.scala 283:83]
  wire [36:0] _sm4ks_T_8 = _sm4ks_T_5 ^ _GEN_685; // @[Bku.scala 283:83]
  wire [7:0] _sm4ks_T_9 = sm4SboxOut & 8'hf8; // @[Bku.scala 283:126]
  wire [20:0] _sm4ks_T_10 = {_sm4ks_T_9, 13'h0}; // @[Bku.scala 283:135]
  wire [36:0] _GEN_686 = {{16'd0}, _sm4ks_T_10}; // @[Bku.scala 283:112]
  wire [36:0] sm4ks = _sm4ks_T_8 ^ _GEN_686; // @[Bku.scala 283:112]
  wire [31:0] sm4Source_0 = sm4ed[31:0]; // @[Bku.scala 285:10]
  wire [31:0] sm4Source_1 = {sm4ed[23:0],sm4ed[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] sm4Source_2 = {sm4ed[15:0],sm4ed[31:16]}; // @[Cat.scala 31:58]
  wire [31:0] sm4Source_3 = {sm4ed[7:0],sm4ed[31:8]}; // @[Cat.scala 31:58]
  wire [31:0] sm4Source_4 = sm4ks[31:0]; // @[Bku.scala 289:10]
  wire [31:0] sm4Source_5 = {sm4ks[23:0],sm4ks[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] sm4Source_6 = {sm4ks[15:0],sm4ks[31:16]}; // @[Cat.scala 31:58]
  wire [31:0] sm4Source_7 = {sm4ks[7:0],sm4ks[31:8]}; // @[Cat.scala 31:58]
  reg [31:0] sm4Result_r; // @[Reg.scala 16:16]
  wire [31:0] _GEN_425 = 3'h1 == funcReg[2:0] ? sm4Source_1 : sm4Source_0; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_426 = 3'h2 == funcReg[2:0] ? sm4Source_2 : _GEN_425; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_427 = 3'h3 == funcReg[2:0] ? sm4Source_3 : _GEN_426; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_428 = 3'h4 == funcReg[2:0] ? sm4Source_4 : _GEN_427; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_429 = 3'h5 == funcReg[2:0] ? sm4Source_5 : _GEN_428; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_430 = 3'h6 == funcReg[2:0] ? sm4Source_6 : _GEN_429; // @[Bku.scala 294:{52,52}]
  wire [31:0] _GEN_431 = 3'h7 == funcReg[2:0] ? sm4Source_7 : _GEN_430; // @[Bku.scala 294:{52,52}]
  wire [31:0] _sm4Result_T_2 = _GEN_431 ^ sm4Result_r; // @[Bku.scala 294:52]
  wire  sm4Result_signBit = _sm4Result_T_2[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _sm4Result_T_5 = sm4Result_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] sm4Result = {_sm4Result_T_5,_sm4Result_T_2}; // @[Cat.scala 31:58]
  assign io_out = funcReg[3] ? sm4Result : aesResult; // @[Bku.scala 296:16]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      funcReg <= io_func; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_0 <= o_1_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_1 <= o_1_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_2 <= o_1_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_3 <= o_1_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_4 <= o_1_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_5 <= o_1_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_6 <= o_1_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_7 <= o_1_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_8 <= o_1_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_9 <= o_1_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_10 <= o_1_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_11 <= o_1_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_12 <= o_1_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_13 <= o_1_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_14 <= o_1_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_15 <= o_1_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_16 <= o_1_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_0_17 <= o_1_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_0 <= o_3_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_1 <= o_3_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_2 <= o_3_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_3 <= o_3_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_4 <= o_3_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_5 <= o_3_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_6 <= o_3_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_7 <= o_3_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_8 <= o_3_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_9 <= o_3_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_10 <= o_3_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_11 <= o_3_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_12 <= o_3_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_13 <= o_3_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_14 <= o_3_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_15 <= o_3_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_16 <= o_3_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_1_17 <= o_3_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_0 <= o_5_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_1 <= o_5_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_2 <= o_5_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_3 <= o_5_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_4 <= o_5_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_5 <= o_5_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_6 <= o_5_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_7 <= o_5_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_8 <= o_5_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_9 <= o_5_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_10 <= o_5_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_11 <= o_5_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_12 <= o_5_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_13 <= o_5_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_14 <= o_5_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_15 <= o_5_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_16 <= o_5_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_2_17 <= o_5_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_0 <= o_7_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_1 <= o_7_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_2 <= o_7_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_3 <= o_7_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_4 <= o_7_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_5 <= o_7_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_6 <= o_7_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_7 <= o_7_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_8 <= o_7_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_9 <= o_7_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_10 <= o_7_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_11 <= o_7_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_12 <= o_7_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_13 <= o_7_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_14 <= o_7_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_15 <= o_7_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_16 <= o_7_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_3_17 <= o_7_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_0 <= o_9_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_1 <= o_9_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_2 <= o_9_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_3 <= o_9_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_4 <= o_9_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_5 <= o_9_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_6 <= o_9_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_7 <= o_9_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_8 <= o_9_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_9 <= o_9_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_10 <= o_9_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_11 <= o_9_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_12 <= o_9_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_13 <= o_9_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_14 <= o_9_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_15 <= o_9_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_16 <= o_9_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_4_17 <= o_9_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_0 <= o_11_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_1 <= o_11_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_2 <= o_11_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_3 <= o_11_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_4 <= o_11_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_5 <= o_11_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_6 <= o_11_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_7 <= o_11_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_8 <= o_11_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_9 <= o_11_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_10 <= o_11_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_11 <= o_11_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_12 <= o_11_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_13 <= o_11_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_14 <= o_11_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_15 <= o_11_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_16 <= o_11_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_5_17 <= o_11_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_0 <= o_13_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_1 <= o_13_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_2 <= o_13_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_3 <= o_13_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_4 <= o_13_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_5 <= o_13_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_6 <= o_13_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_7 <= o_13_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_8 <= o_13_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_9 <= o_13_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_10 <= o_13_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_11 <= o_13_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_12 <= o_13_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_13 <= o_13_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_14 <= o_13_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_15 <= o_13_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_16 <= o_13_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_6_17 <= o_13_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_0 <= o_15_0; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_1 <= o_15_1; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_2 <= o_15_2; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_3 <= o_15_3; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_4 <= o_15_4; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_5 <= o_15_5; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_6 <= o_15_6; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_7 <= o_15_7; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_8 <= o_15_8; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_9 <= o_15_9; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_10 <= o_15_10; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_11 <= o_15_11; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_12 <= o_15_12; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_13 <= o_15_13; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_14 <= o_15_14; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_15 <= o_15_15; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_16 <= o_15_16; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 214:25]
      aesSboxMid_7_17 <= o_15_17; // @[Bku.scala 215:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_0 <= o_17_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_1 <= o_17_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_2 <= o_17_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_3 <= o_17_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_4 <= o_17_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_5 <= o_17_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_6 <= o_17_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_7 <= o_17_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_8 <= o_17_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_9 <= o_17_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_10 <= o_17_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_11 <= o_17_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_12 <= o_17_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_13 <= o_17_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_14 <= o_17_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_15 <= o_17_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_16 <= o_17_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_0_17 <= o_17_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_0 <= o_19_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_1 <= o_19_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_2 <= o_19_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_3 <= o_19_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_4 <= o_19_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_5 <= o_19_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_6 <= o_19_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_7 <= o_19_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_8 <= o_19_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_9 <= o_19_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_10 <= o_19_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_11 <= o_19_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_12 <= o_19_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_13 <= o_19_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_14 <= o_19_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_15 <= o_19_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_16 <= o_19_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_1_17 <= o_19_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_0 <= o_21_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_1 <= o_21_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_2 <= o_21_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_3 <= o_21_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_4 <= o_21_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_5 <= o_21_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_6 <= o_21_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_7 <= o_21_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_8 <= o_21_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_9 <= o_21_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_10 <= o_21_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_11 <= o_21_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_12 <= o_21_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_13 <= o_21_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_14 <= o_21_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_15 <= o_21_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_16 <= o_21_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_2_17 <= o_21_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_0 <= o_23_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_1 <= o_23_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_2 <= o_23_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_3 <= o_23_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_4 <= o_23_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_5 <= o_23_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_6 <= o_23_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_7 <= o_23_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_8 <= o_23_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_9 <= o_23_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_10 <= o_23_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_11 <= o_23_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_12 <= o_23_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_13 <= o_23_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_14 <= o_23_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_15 <= o_23_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_16 <= o_23_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_3_17 <= o_23_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_0 <= o_25_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_1 <= o_25_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_2 <= o_25_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_3 <= o_25_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_4 <= o_25_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_5 <= o_25_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_6 <= o_25_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_7 <= o_25_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_8 <= o_25_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_9 <= o_25_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_10 <= o_25_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_11 <= o_25_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_12 <= o_25_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_13 <= o_25_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_14 <= o_25_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_15 <= o_25_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_16 <= o_25_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_4_17 <= o_25_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_0 <= o_27_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_1 <= o_27_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_2 <= o_27_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_3 <= o_27_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_4 <= o_27_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_5 <= o_27_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_6 <= o_27_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_7 <= o_27_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_8 <= o_27_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_9 <= o_27_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_10 <= o_27_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_11 <= o_27_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_12 <= o_27_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_13 <= o_27_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_14 <= o_27_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_15 <= o_27_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_16 <= o_27_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_5_17 <= o_27_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_0 <= o_29_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_1 <= o_29_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_2 <= o_29_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_3 <= o_29_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_4 <= o_29_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_5 <= o_29_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_6 <= o_29_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_7 <= o_29_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_8 <= o_29_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_9 <= o_29_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_10 <= o_29_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_11 <= o_29_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_12 <= o_29_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_13 <= o_29_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_14 <= o_29_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_15 <= o_29_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_16 <= o_29_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_6_17 <= o_29_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_0 <= o_31_0; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_1 <= o_31_1; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_2 <= o_31_2; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_3 <= o_31_3; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_4 <= o_31_4; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_5 <= o_31_5; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_6 <= o_31_6; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_7 <= o_31_7; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_8 <= o_31_8; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_9 <= o_31_9; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_10 <= o_31_10; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_11 <= o_31_11; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_12 <= o_31_12; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_13 <= o_31_13; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_14 <= o_31_14; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_15 <= o_31_15; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_16 <= o_31_16; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Bku.scala 221:25]
      iaesSboxMid_7_17 <= o_31_17; // @[Bku.scala 222:11]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_0 <= src1Bytes_0; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_1 <= src1Bytes_1; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_2 <= src1Bytes_2; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_3 <= src1Bytes_3; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_4 <= src1Bytes_4; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_5 <= src1Bytes_5; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_6 <= src1Bytes_6; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      imMinIn_7 <= src1Bytes_7; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_0 <= ksSboxIn_0[0]; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_1 <= o_32_1; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_2 <= o_32_2; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_3 <= o_32_3; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_4 <= o_32_4; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_5 <= o_32_5; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_6 <= o_32_6; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_7 <= o_32_7; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_8 <= o_32_8; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_9 <= o_32_9; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_10 <= o_32_10; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_11 <= o_32_11; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_12 <= o_32_12; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_13 <= o_32_13; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_14 <= o_32_14; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_15 <= o_32_15; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_16 <= o_32_16; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_17 <= o_32_17; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_18 <= o_32_18; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_19 <= o_32_19; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_0_20 <= o_32_20; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_0 <= ksSboxIn_1[0]; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_1 <= o_33_1; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_2 <= o_33_2; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_3 <= o_33_3; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_4 <= o_33_4; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_5 <= o_33_5; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_6 <= o_33_6; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_7 <= o_33_7; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_8 <= o_33_8; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_9 <= o_33_9; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_10 <= o_33_10; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_11 <= o_33_11; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_12 <= o_33_12; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_13 <= o_33_13; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_14 <= o_33_14; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_15 <= o_33_15; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_16 <= o_33_16; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_17 <= o_33_17; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_18 <= o_33_18; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_19 <= o_33_19; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_1_20 <= o_33_20; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_0 <= ksSboxIn_2[0]; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_1 <= o_34_1; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_2 <= o_34_2; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_3 <= o_34_3; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_4 <= o_34_4; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_5 <= o_34_5; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_6 <= o_34_6; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_7 <= o_34_7; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_8 <= o_34_8; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_9 <= o_34_9; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_10 <= o_34_10; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_11 <= o_34_11; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_12 <= o_34_12; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_13 <= o_34_13; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_14 <= o_34_14; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_15 <= o_34_15; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_16 <= o_34_16; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_17 <= o_34_17; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_18 <= o_34_18; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_19 <= o_34_19; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_2_20 <= o_34_20; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_0 <= ksSboxIn_3[0]; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_1 <= o_35_1; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_2 <= o_35_2; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_3 <= o_35_3; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_4 <= o_35_4; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_5 <= o_35_5; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_6 <= o_35_6; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_7 <= o_35_7; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_8 <= o_35_8; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_9 <= o_35_9; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_10 <= o_35_10; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_11 <= o_35_11; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_12 <= o_35_12; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_13 <= o_35_13; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_14 <= o_35_14; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_15 <= o_35_15; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_16 <= o_35_16; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_17 <= o_35_17; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_18 <= o_35_18; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_19 <= o_35_19; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Bku.scala 252:25]
      ksSboxTop_3_20 <= o_35_20; // @[Bku.scala 253:11]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      ks1Idx <= io_src_1[3:0]; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      aes64ks2 <= _aes64ks2_T_2; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_0 <= o_36_0; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_1 <= o_36_1; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_2 <= o_36_2; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_3 <= o_36_3; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_4 <= o_36_4; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_5 <= o_36_5; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_6 <= o_36_6; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_7 <= o_36_7; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_8 <= o_36_8; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_9 <= _GEN_401[3]; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_10 <= o_36_10; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_11 <= o_36_11; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_12 <= o_36_12; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_13 <= o_36_13; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_14 <= o_36_14; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_15 <= o_36_15; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_16 <= o_36_16; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_17 <= o_36_17; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_18 <= o_36_18; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_19 <= o_36_19; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Bku.scala 277:23]
      sm4SboxTop_20 <= o_36_20; // @[Bku.scala 278:16]
    end
    if (io_regEnable) begin // @[Reg.scala 17:18]
      sm4Result_r <= io_src_0[31:0]; // @[Reg.scala 17:22]
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
  funcReg = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  aesSboxMid_0_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  aesSboxMid_0_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  aesSboxMid_0_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  aesSboxMid_0_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  aesSboxMid_0_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  aesSboxMid_0_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  aesSboxMid_0_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  aesSboxMid_0_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  aesSboxMid_0_8 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  aesSboxMid_0_9 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  aesSboxMid_0_10 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  aesSboxMid_0_11 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  aesSboxMid_0_12 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  aesSboxMid_0_13 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  aesSboxMid_0_14 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  aesSboxMid_0_15 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  aesSboxMid_0_16 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  aesSboxMid_0_17 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  aesSboxMid_1_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  aesSboxMid_1_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  aesSboxMid_1_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  aesSboxMid_1_3 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  aesSboxMid_1_4 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  aesSboxMid_1_5 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  aesSboxMid_1_6 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  aesSboxMid_1_7 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  aesSboxMid_1_8 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  aesSboxMid_1_9 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  aesSboxMid_1_10 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  aesSboxMid_1_11 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  aesSboxMid_1_12 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  aesSboxMid_1_13 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  aesSboxMid_1_14 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  aesSboxMid_1_15 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  aesSboxMid_1_16 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  aesSboxMid_1_17 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  aesSboxMid_2_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  aesSboxMid_2_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  aesSboxMid_2_2 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  aesSboxMid_2_3 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  aesSboxMid_2_4 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  aesSboxMid_2_5 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  aesSboxMid_2_6 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  aesSboxMid_2_7 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  aesSboxMid_2_8 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  aesSboxMid_2_9 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  aesSboxMid_2_10 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  aesSboxMid_2_11 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  aesSboxMid_2_12 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  aesSboxMid_2_13 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  aesSboxMid_2_14 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  aesSboxMid_2_15 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  aesSboxMid_2_16 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  aesSboxMid_2_17 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  aesSboxMid_3_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  aesSboxMid_3_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  aesSboxMid_3_2 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  aesSboxMid_3_3 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  aesSboxMid_3_4 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  aesSboxMid_3_5 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  aesSboxMid_3_6 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  aesSboxMid_3_7 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  aesSboxMid_3_8 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  aesSboxMid_3_9 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  aesSboxMid_3_10 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  aesSboxMid_3_11 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  aesSboxMid_3_12 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  aesSboxMid_3_13 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  aesSboxMid_3_14 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  aesSboxMid_3_15 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  aesSboxMid_3_16 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  aesSboxMid_3_17 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  aesSboxMid_4_0 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  aesSboxMid_4_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  aesSboxMid_4_2 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  aesSboxMid_4_3 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  aesSboxMid_4_4 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  aesSboxMid_4_5 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  aesSboxMid_4_6 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  aesSboxMid_4_7 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  aesSboxMid_4_8 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  aesSboxMid_4_9 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  aesSboxMid_4_10 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  aesSboxMid_4_11 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  aesSboxMid_4_12 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  aesSboxMid_4_13 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  aesSboxMid_4_14 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  aesSboxMid_4_15 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  aesSboxMid_4_16 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  aesSboxMid_4_17 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  aesSboxMid_5_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  aesSboxMid_5_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  aesSboxMid_5_2 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  aesSboxMid_5_3 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  aesSboxMid_5_4 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  aesSboxMid_5_5 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  aesSboxMid_5_6 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  aesSboxMid_5_7 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  aesSboxMid_5_8 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  aesSboxMid_5_9 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  aesSboxMid_5_10 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  aesSboxMid_5_11 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  aesSboxMid_5_12 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  aesSboxMid_5_13 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  aesSboxMid_5_14 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  aesSboxMid_5_15 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  aesSboxMid_5_16 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  aesSboxMid_5_17 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  aesSboxMid_6_0 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  aesSboxMid_6_1 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  aesSboxMid_6_2 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  aesSboxMid_6_3 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  aesSboxMid_6_4 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  aesSboxMid_6_5 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  aesSboxMid_6_6 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  aesSboxMid_6_7 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  aesSboxMid_6_8 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  aesSboxMid_6_9 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  aesSboxMid_6_10 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  aesSboxMid_6_11 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  aesSboxMid_6_12 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  aesSboxMid_6_13 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  aesSboxMid_6_14 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  aesSboxMid_6_15 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  aesSboxMid_6_16 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  aesSboxMid_6_17 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  aesSboxMid_7_0 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  aesSboxMid_7_1 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  aesSboxMid_7_2 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  aesSboxMid_7_3 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  aesSboxMid_7_4 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  aesSboxMid_7_5 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  aesSboxMid_7_6 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  aesSboxMid_7_7 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  aesSboxMid_7_8 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  aesSboxMid_7_9 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  aesSboxMid_7_10 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  aesSboxMid_7_11 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  aesSboxMid_7_12 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  aesSboxMid_7_13 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  aesSboxMid_7_14 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  aesSboxMid_7_15 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  aesSboxMid_7_16 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  aesSboxMid_7_17 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  iaesSboxMid_0_0 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  iaesSboxMid_0_1 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  iaesSboxMid_0_2 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  iaesSboxMid_0_3 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  iaesSboxMid_0_4 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  iaesSboxMid_0_5 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  iaesSboxMid_0_6 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  iaesSboxMid_0_7 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  iaesSboxMid_0_8 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  iaesSboxMid_0_9 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  iaesSboxMid_0_10 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  iaesSboxMid_0_11 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  iaesSboxMid_0_12 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  iaesSboxMid_0_13 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  iaesSboxMid_0_14 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  iaesSboxMid_0_15 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  iaesSboxMid_0_16 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  iaesSboxMid_0_17 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  iaesSboxMid_1_0 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  iaesSboxMid_1_1 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  iaesSboxMid_1_2 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  iaesSboxMid_1_3 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  iaesSboxMid_1_4 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  iaesSboxMid_1_5 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  iaesSboxMid_1_6 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  iaesSboxMid_1_7 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  iaesSboxMid_1_8 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  iaesSboxMid_1_9 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  iaesSboxMid_1_10 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  iaesSboxMid_1_11 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  iaesSboxMid_1_12 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  iaesSboxMid_1_13 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  iaesSboxMid_1_14 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  iaesSboxMid_1_15 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  iaesSboxMid_1_16 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  iaesSboxMid_1_17 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  iaesSboxMid_2_0 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  iaesSboxMid_2_1 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  iaesSboxMid_2_2 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  iaesSboxMid_2_3 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  iaesSboxMid_2_4 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  iaesSboxMid_2_5 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  iaesSboxMid_2_6 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  iaesSboxMid_2_7 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  iaesSboxMid_2_8 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  iaesSboxMid_2_9 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  iaesSboxMid_2_10 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  iaesSboxMid_2_11 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  iaesSboxMid_2_12 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  iaesSboxMid_2_13 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  iaesSboxMid_2_14 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  iaesSboxMid_2_15 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  iaesSboxMid_2_16 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  iaesSboxMid_2_17 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  iaesSboxMid_3_0 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  iaesSboxMid_3_1 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  iaesSboxMid_3_2 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  iaesSboxMid_3_3 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  iaesSboxMid_3_4 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  iaesSboxMid_3_5 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  iaesSboxMid_3_6 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  iaesSboxMid_3_7 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  iaesSboxMid_3_8 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  iaesSboxMid_3_9 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  iaesSboxMid_3_10 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  iaesSboxMid_3_11 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  iaesSboxMid_3_12 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  iaesSboxMid_3_13 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  iaesSboxMid_3_14 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  iaesSboxMid_3_15 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  iaesSboxMid_3_16 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  iaesSboxMid_3_17 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  iaesSboxMid_4_0 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  iaesSboxMid_4_1 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  iaesSboxMid_4_2 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  iaesSboxMid_4_3 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  iaesSboxMid_4_4 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  iaesSboxMid_4_5 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  iaesSboxMid_4_6 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  iaesSboxMid_4_7 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  iaesSboxMid_4_8 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  iaesSboxMid_4_9 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  iaesSboxMid_4_10 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  iaesSboxMid_4_11 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  iaesSboxMid_4_12 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  iaesSboxMid_4_13 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  iaesSboxMid_4_14 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  iaesSboxMid_4_15 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  iaesSboxMid_4_16 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  iaesSboxMid_4_17 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  iaesSboxMid_5_0 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  iaesSboxMid_5_1 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  iaesSboxMid_5_2 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  iaesSboxMid_5_3 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  iaesSboxMid_5_4 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  iaesSboxMid_5_5 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  iaesSboxMid_5_6 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  iaesSboxMid_5_7 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  iaesSboxMid_5_8 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  iaesSboxMid_5_9 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  iaesSboxMid_5_10 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  iaesSboxMid_5_11 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  iaesSboxMid_5_12 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  iaesSboxMid_5_13 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  iaesSboxMid_5_14 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  iaesSboxMid_5_15 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  iaesSboxMid_5_16 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  iaesSboxMid_5_17 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  iaesSboxMid_6_0 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  iaesSboxMid_6_1 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  iaesSboxMid_6_2 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  iaesSboxMid_6_3 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  iaesSboxMid_6_4 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  iaesSboxMid_6_5 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  iaesSboxMid_6_6 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  iaesSboxMid_6_7 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  iaesSboxMid_6_8 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  iaesSboxMid_6_9 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  iaesSboxMid_6_10 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  iaesSboxMid_6_11 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  iaesSboxMid_6_12 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  iaesSboxMid_6_13 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  iaesSboxMid_6_14 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  iaesSboxMid_6_15 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  iaesSboxMid_6_16 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  iaesSboxMid_6_17 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  iaesSboxMid_7_0 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  iaesSboxMid_7_1 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  iaesSboxMid_7_2 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  iaesSboxMid_7_3 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  iaesSboxMid_7_4 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  iaesSboxMid_7_5 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  iaesSboxMid_7_6 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  iaesSboxMid_7_7 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  iaesSboxMid_7_8 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  iaesSboxMid_7_9 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  iaesSboxMid_7_10 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  iaesSboxMid_7_11 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  iaesSboxMid_7_12 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  iaesSboxMid_7_13 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  iaesSboxMid_7_14 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  iaesSboxMid_7_15 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  iaesSboxMid_7_16 = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  iaesSboxMid_7_17 = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  imMinIn_0 = _RAND_289[7:0];
  _RAND_290 = {1{`RANDOM}};
  imMinIn_1 = _RAND_290[7:0];
  _RAND_291 = {1{`RANDOM}};
  imMinIn_2 = _RAND_291[7:0];
  _RAND_292 = {1{`RANDOM}};
  imMinIn_3 = _RAND_292[7:0];
  _RAND_293 = {1{`RANDOM}};
  imMinIn_4 = _RAND_293[7:0];
  _RAND_294 = {1{`RANDOM}};
  imMinIn_5 = _RAND_294[7:0];
  _RAND_295 = {1{`RANDOM}};
  imMinIn_6 = _RAND_295[7:0];
  _RAND_296 = {1{`RANDOM}};
  imMinIn_7 = _RAND_296[7:0];
  _RAND_297 = {1{`RANDOM}};
  ksSboxTop_0_0 = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  ksSboxTop_0_1 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  ksSboxTop_0_2 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  ksSboxTop_0_3 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  ksSboxTop_0_4 = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  ksSboxTop_0_5 = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  ksSboxTop_0_6 = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  ksSboxTop_0_7 = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  ksSboxTop_0_8 = _RAND_305[0:0];
  _RAND_306 = {1{`RANDOM}};
  ksSboxTop_0_9 = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  ksSboxTop_0_10 = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  ksSboxTop_0_11 = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  ksSboxTop_0_12 = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  ksSboxTop_0_13 = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  ksSboxTop_0_14 = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  ksSboxTop_0_15 = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  ksSboxTop_0_16 = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  ksSboxTop_0_17 = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  ksSboxTop_0_18 = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  ksSboxTop_0_19 = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  ksSboxTop_0_20 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  ksSboxTop_1_0 = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  ksSboxTop_1_1 = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  ksSboxTop_1_2 = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  ksSboxTop_1_3 = _RAND_321[0:0];
  _RAND_322 = {1{`RANDOM}};
  ksSboxTop_1_4 = _RAND_322[0:0];
  _RAND_323 = {1{`RANDOM}};
  ksSboxTop_1_5 = _RAND_323[0:0];
  _RAND_324 = {1{`RANDOM}};
  ksSboxTop_1_6 = _RAND_324[0:0];
  _RAND_325 = {1{`RANDOM}};
  ksSboxTop_1_7 = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  ksSboxTop_1_8 = _RAND_326[0:0];
  _RAND_327 = {1{`RANDOM}};
  ksSboxTop_1_9 = _RAND_327[0:0];
  _RAND_328 = {1{`RANDOM}};
  ksSboxTop_1_10 = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  ksSboxTop_1_11 = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  ksSboxTop_1_12 = _RAND_330[0:0];
  _RAND_331 = {1{`RANDOM}};
  ksSboxTop_1_13 = _RAND_331[0:0];
  _RAND_332 = {1{`RANDOM}};
  ksSboxTop_1_14 = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  ksSboxTop_1_15 = _RAND_333[0:0];
  _RAND_334 = {1{`RANDOM}};
  ksSboxTop_1_16 = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  ksSboxTop_1_17 = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  ksSboxTop_1_18 = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  ksSboxTop_1_19 = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  ksSboxTop_1_20 = _RAND_338[0:0];
  _RAND_339 = {1{`RANDOM}};
  ksSboxTop_2_0 = _RAND_339[0:0];
  _RAND_340 = {1{`RANDOM}};
  ksSboxTop_2_1 = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  ksSboxTop_2_2 = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  ksSboxTop_2_3 = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  ksSboxTop_2_4 = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  ksSboxTop_2_5 = _RAND_344[0:0];
  _RAND_345 = {1{`RANDOM}};
  ksSboxTop_2_6 = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  ksSboxTop_2_7 = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  ksSboxTop_2_8 = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  ksSboxTop_2_9 = _RAND_348[0:0];
  _RAND_349 = {1{`RANDOM}};
  ksSboxTop_2_10 = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  ksSboxTop_2_11 = _RAND_350[0:0];
  _RAND_351 = {1{`RANDOM}};
  ksSboxTop_2_12 = _RAND_351[0:0];
  _RAND_352 = {1{`RANDOM}};
  ksSboxTop_2_13 = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  ksSboxTop_2_14 = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  ksSboxTop_2_15 = _RAND_354[0:0];
  _RAND_355 = {1{`RANDOM}};
  ksSboxTop_2_16 = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  ksSboxTop_2_17 = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  ksSboxTop_2_18 = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  ksSboxTop_2_19 = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  ksSboxTop_2_20 = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  ksSboxTop_3_0 = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  ksSboxTop_3_1 = _RAND_361[0:0];
  _RAND_362 = {1{`RANDOM}};
  ksSboxTop_3_2 = _RAND_362[0:0];
  _RAND_363 = {1{`RANDOM}};
  ksSboxTop_3_3 = _RAND_363[0:0];
  _RAND_364 = {1{`RANDOM}};
  ksSboxTop_3_4 = _RAND_364[0:0];
  _RAND_365 = {1{`RANDOM}};
  ksSboxTop_3_5 = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  ksSboxTop_3_6 = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  ksSboxTop_3_7 = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  ksSboxTop_3_8 = _RAND_368[0:0];
  _RAND_369 = {1{`RANDOM}};
  ksSboxTop_3_9 = _RAND_369[0:0];
  _RAND_370 = {1{`RANDOM}};
  ksSboxTop_3_10 = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  ksSboxTop_3_11 = _RAND_371[0:0];
  _RAND_372 = {1{`RANDOM}};
  ksSboxTop_3_12 = _RAND_372[0:0];
  _RAND_373 = {1{`RANDOM}};
  ksSboxTop_3_13 = _RAND_373[0:0];
  _RAND_374 = {1{`RANDOM}};
  ksSboxTop_3_14 = _RAND_374[0:0];
  _RAND_375 = {1{`RANDOM}};
  ksSboxTop_3_15 = _RAND_375[0:0];
  _RAND_376 = {1{`RANDOM}};
  ksSboxTop_3_16 = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  ksSboxTop_3_17 = _RAND_377[0:0];
  _RAND_378 = {1{`RANDOM}};
  ksSboxTop_3_18 = _RAND_378[0:0];
  _RAND_379 = {1{`RANDOM}};
  ksSboxTop_3_19 = _RAND_379[0:0];
  _RAND_380 = {1{`RANDOM}};
  ksSboxTop_3_20 = _RAND_380[0:0];
  _RAND_381 = {1{`RANDOM}};
  ks1Idx = _RAND_381[3:0];
  _RAND_382 = {2{`RANDOM}};
  aes64ks2 = _RAND_382[63:0];
  _RAND_383 = {1{`RANDOM}};
  sm4SboxTop_0 = _RAND_383[0:0];
  _RAND_384 = {1{`RANDOM}};
  sm4SboxTop_1 = _RAND_384[0:0];
  _RAND_385 = {1{`RANDOM}};
  sm4SboxTop_2 = _RAND_385[0:0];
  _RAND_386 = {1{`RANDOM}};
  sm4SboxTop_3 = _RAND_386[0:0];
  _RAND_387 = {1{`RANDOM}};
  sm4SboxTop_4 = _RAND_387[0:0];
  _RAND_388 = {1{`RANDOM}};
  sm4SboxTop_5 = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  sm4SboxTop_6 = _RAND_389[0:0];
  _RAND_390 = {1{`RANDOM}};
  sm4SboxTop_7 = _RAND_390[0:0];
  _RAND_391 = {1{`RANDOM}};
  sm4SboxTop_8 = _RAND_391[0:0];
  _RAND_392 = {1{`RANDOM}};
  sm4SboxTop_9 = _RAND_392[0:0];
  _RAND_393 = {1{`RANDOM}};
  sm4SboxTop_10 = _RAND_393[0:0];
  _RAND_394 = {1{`RANDOM}};
  sm4SboxTop_11 = _RAND_394[0:0];
  _RAND_395 = {1{`RANDOM}};
  sm4SboxTop_12 = _RAND_395[0:0];
  _RAND_396 = {1{`RANDOM}};
  sm4SboxTop_13 = _RAND_396[0:0];
  _RAND_397 = {1{`RANDOM}};
  sm4SboxTop_14 = _RAND_397[0:0];
  _RAND_398 = {1{`RANDOM}};
  sm4SboxTop_15 = _RAND_398[0:0];
  _RAND_399 = {1{`RANDOM}};
  sm4SboxTop_16 = _RAND_399[0:0];
  _RAND_400 = {1{`RANDOM}};
  sm4SboxTop_17 = _RAND_400[0:0];
  _RAND_401 = {1{`RANDOM}};
  sm4SboxTop_18 = _RAND_401[0:0];
  _RAND_402 = {1{`RANDOM}};
  sm4SboxTop_19 = _RAND_402[0:0];
  _RAND_403 = {1{`RANDOM}};
  sm4SboxTop_20 = _RAND_403[0:0];
  _RAND_404 = {1{`RANDOM}};
  sm4Result_r = _RAND_404[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

