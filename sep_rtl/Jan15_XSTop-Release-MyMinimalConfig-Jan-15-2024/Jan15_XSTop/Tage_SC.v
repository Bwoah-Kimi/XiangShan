module Tage_SC(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc_0,
  input  [38:0]  io_in_bits_s0_pc_1,
  input  [38:0]  io_in_bits_s0_pc_3,
  input  [7:0]   io_in_bits_folded_hist_1_hist_17_folded_hist,
  input  [10:0]  io_in_bits_folded_hist_1_hist_15_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_1_hist_14_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_1_hist_13_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_1_hist_12_folded_hist,
  input  [6:0]   io_in_bits_folded_hist_1_hist_9_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_1_hist_8_folded_hist,
  input  [10:0]  io_in_bits_folded_hist_1_hist_5_folded_hist,
  input  [10:0]  io_in_bits_folded_hist_1_hist_3_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_1_hist_2_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_1_hist_1_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_3_hist_16_folded_hist,
  input  [3:0]   io_in_bits_folded_hist_3_hist_4_folded_hist,
  input  [7:0]   io_in_bits_folded_hist_3_hist_0_folded_hist,
  output         io_out_s2_full_pred_0_br_taken_mask_0,
  output         io_out_s2_full_pred_0_br_taken_mask_1,
  output         io_out_s2_full_pred_1_br_taken_mask_0,
  output         io_out_s2_full_pred_1_br_taken_mask_1,
  output         io_out_s2_full_pred_2_br_taken_mask_0,
  output         io_out_s2_full_pred_2_br_taken_mask_1,
  output         io_out_s2_full_pred_3_br_taken_mask_0,
  output         io_out_s2_full_pred_3_br_taken_mask_1,
  output         io_out_s3_full_pred_0_br_taken_mask_0,
  output         io_out_s3_full_pred_0_br_taken_mask_1,
  output         io_out_s3_full_pred_1_br_taken_mask_0,
  output         io_out_s3_full_pred_1_br_taken_mask_1,
  output         io_out_s3_full_pred_2_br_taken_mask_0,
  output         io_out_s3_full_pred_2_br_taken_mask_1,
  output         io_out_s3_full_pred_3_br_taken_mask_0,
  output         io_out_s3_full_pred_3_br_taken_mask_1,
  output [255:0] io_out_last_stage_meta,
  input          io_ctrl_tage_enable,
  input          io_ctrl_sc_enable,
  input          io_s0_fire_0,
  input          io_s0_fire_1,
  input          io_s0_fire_3,
  input          io_s1_fire_0,
  input          io_s1_fire_1,
  input          io_s1_fire_2,
  input          io_s1_fire_3,
  input          io_s2_fire_0,
  input          io_s2_fire_1,
  input          io_s2_fire_2,
  input          io_s2_fire_3,
  input          io_update_valid,
  input  [38:0]  io_update_bits_pc,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_17_folded_hist,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_16_folded_hist,
  input  [10:0]  io_update_bits_spec_info_folded_hist_hist_15_folded_hist,
  input  [6:0]   io_update_bits_spec_info_folded_hist_hist_14_folded_hist,
  input  [6:0]   io_update_bits_spec_info_folded_hist_hist_13_folded_hist,
  input  [6:0]   io_update_bits_spec_info_folded_hist_hist_12_folded_hist,
  input  [6:0]   io_update_bits_spec_info_folded_hist_hist_9_folded_hist,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_8_folded_hist,
  input  [10:0]  io_update_bits_spec_info_folded_hist_hist_5_folded_hist,
  input  [3:0]   io_update_bits_spec_info_folded_hist_hist_4_folded_hist,
  input  [10:0]  io_update_bits_spec_info_folded_hist_hist_3_folded_hist,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_2_folded_hist,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_1_folded_hist,
  input  [7:0]   io_update_bits_spec_info_folded_hist_hist_0_folded_hist,
  input          io_update_bits_ftb_entry_brSlots_0_valid,
  input          io_update_bits_ftb_entry_tailSlot_sharing,
  input          io_update_bits_ftb_entry_tailSlot_valid,
  input          io_update_bits_ftb_entry_always_taken_0,
  input          io_update_bits_ftb_entry_always_taken_1,
  input          io_update_bits_br_taken_mask_0,
  input          io_update_bits_br_taken_mask_1,
  input          io_update_bits_mispred_mask_0,
  input          io_update_bits_mispred_mask_1,
  input  [255:0] io_update_bits_meta,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
  reg [63:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [63:0] _RAND_326;
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
  reg [63:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [63:0] _RAND_372;
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
  reg [63:0] _RAND_383;
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
  reg [63:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [31:0] _RAND_399;
  reg [31:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [63:0] _RAND_402;
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
  reg [63:0] _RAND_461;
  reg [31:0] _RAND_462;
  reg [31:0] _RAND_463;
  reg [31:0] _RAND_464;
  reg [31:0] _RAND_465;
  reg [63:0] _RAND_466;
  reg [31:0] _RAND_467;
  reg [31:0] _RAND_468;
  reg [31:0] _RAND_469;
  reg [31:0] _RAND_470;
  reg [31:0] _RAND_471;
  reg [63:0] _RAND_472;
  reg [31:0] _RAND_473;
  reg [31:0] _RAND_474;
  reg [31:0] _RAND_475;
  reg [31:0] _RAND_476;
  reg [31:0] _RAND_477;
  reg [63:0] _RAND_478;
  reg [31:0] _RAND_479;
  reg [31:0] _RAND_480;
  reg [31:0] _RAND_481;
  reg [31:0] _RAND_482;
  reg [31:0] _RAND_483;
  reg [31:0] _RAND_484;
  reg [31:0] _RAND_485;
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 97:23]
  wire  tables_0_clock; // @[Tage.scala 540:21]
  wire  tables_0_reset; // @[Tage.scala 540:21]
  wire  tables_0_io_req_ready; // @[Tage.scala 540:21]
  wire  tables_0_io_req_valid; // @[Tage.scala 540:21]
  wire [38:0] tables_0_io_req_bits_pc; // @[Tage.scala 540:21]
  wire [6:0] tables_0_io_req_bits_folded_hist_hist_13_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_0_io_req_bits_folded_hist_hist_8_folded_hist; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_0_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_0_io_resps_0_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_0_bits_u; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_0_bits_unconf; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_1_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_0_io_resps_1_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_1_bits_u; // @[Tage.scala 540:21]
  wire  tables_0_io_resps_1_bits_unconf; // @[Tage.scala 540:21]
  wire [38:0] tables_0_io_update_pc; // @[Tage.scala 540:21]
  wire [6:0] tables_0_io_update_folded_hist_hist_13_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_0_io_update_folded_hist_hist_8_folded_hist; // @[Tage.scala 540:21]
  wire  tables_0_io_update_mask_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_mask_1; // @[Tage.scala 540:21]
  wire  tables_0_io_update_takens_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_takens_1; // @[Tage.scala 540:21]
  wire  tables_0_io_update_alloc_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_alloc_1; // @[Tage.scala 540:21]
  wire [2:0] tables_0_io_update_oldCtrs_0; // @[Tage.scala 540:21]
  wire [2:0] tables_0_io_update_oldCtrs_1; // @[Tage.scala 540:21]
  wire  tables_0_io_update_uMask_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_uMask_1; // @[Tage.scala 540:21]
  wire  tables_0_io_update_us_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_us_1; // @[Tage.scala 540:21]
  wire  tables_0_io_update_reset_u_0; // @[Tage.scala 540:21]
  wire  tables_0_io_update_reset_u_1; // @[Tage.scala 540:21]
  wire  tables_1_clock; // @[Tage.scala 540:21]
  wire  tables_1_reset; // @[Tage.scala 540:21]
  wire  tables_1_io_req_ready; // @[Tage.scala 540:21]
  wire  tables_1_io_req_valid; // @[Tage.scala 540:21]
  wire [38:0] tables_1_io_req_bits_pc; // @[Tage.scala 540:21]
  wire [7:0] tables_1_io_req_bits_folded_hist_hist_17_folded_hist; // @[Tage.scala 540:21]
  wire [6:0] tables_1_io_req_bits_folded_hist_hist_12_folded_hist; // @[Tage.scala 540:21]
  wire [10:0] tables_1_io_req_bits_folded_hist_hist_5_folded_hist; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_0_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_1_io_resps_0_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_0_bits_u; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_0_bits_unconf; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_1_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_1_io_resps_1_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_1_bits_u; // @[Tage.scala 540:21]
  wire  tables_1_io_resps_1_bits_unconf; // @[Tage.scala 540:21]
  wire [38:0] tables_1_io_update_pc; // @[Tage.scala 540:21]
  wire [7:0] tables_1_io_update_folded_hist_hist_17_folded_hist; // @[Tage.scala 540:21]
  wire [6:0] tables_1_io_update_folded_hist_hist_12_folded_hist; // @[Tage.scala 540:21]
  wire [10:0] tables_1_io_update_folded_hist_hist_5_folded_hist; // @[Tage.scala 540:21]
  wire  tables_1_io_update_mask_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_mask_1; // @[Tage.scala 540:21]
  wire  tables_1_io_update_takens_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_takens_1; // @[Tage.scala 540:21]
  wire  tables_1_io_update_alloc_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_alloc_1; // @[Tage.scala 540:21]
  wire [2:0] tables_1_io_update_oldCtrs_0; // @[Tage.scala 540:21]
  wire [2:0] tables_1_io_update_oldCtrs_1; // @[Tage.scala 540:21]
  wire  tables_1_io_update_uMask_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_uMask_1; // @[Tage.scala 540:21]
  wire  tables_1_io_update_us_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_us_1; // @[Tage.scala 540:21]
  wire  tables_1_io_update_reset_u_0; // @[Tage.scala 540:21]
  wire  tables_1_io_update_reset_u_1; // @[Tage.scala 540:21]
  wire  tables_2_clock; // @[Tage.scala 540:21]
  wire  tables_2_reset; // @[Tage.scala 540:21]
  wire  tables_2_io_req_ready; // @[Tage.scala 540:21]
  wire  tables_2_io_req_valid; // @[Tage.scala 540:21]
  wire [38:0] tables_2_io_req_bits_pc; // @[Tage.scala 540:21]
  wire [6:0] tables_2_io_req_bits_folded_hist_hist_9_folded_hist; // @[Tage.scala 540:21]
  wire [10:0] tables_2_io_req_bits_folded_hist_hist_3_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_2_io_req_bits_folded_hist_hist_1_folded_hist; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_0_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_2_io_resps_0_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_0_bits_u; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_0_bits_unconf; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_1_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_2_io_resps_1_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_1_bits_u; // @[Tage.scala 540:21]
  wire  tables_2_io_resps_1_bits_unconf; // @[Tage.scala 540:21]
  wire [38:0] tables_2_io_update_pc; // @[Tage.scala 540:21]
  wire [6:0] tables_2_io_update_folded_hist_hist_9_folded_hist; // @[Tage.scala 540:21]
  wire [10:0] tables_2_io_update_folded_hist_hist_3_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_2_io_update_folded_hist_hist_1_folded_hist; // @[Tage.scala 540:21]
  wire  tables_2_io_update_mask_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_mask_1; // @[Tage.scala 540:21]
  wire  tables_2_io_update_takens_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_takens_1; // @[Tage.scala 540:21]
  wire  tables_2_io_update_alloc_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_alloc_1; // @[Tage.scala 540:21]
  wire [2:0] tables_2_io_update_oldCtrs_0; // @[Tage.scala 540:21]
  wire [2:0] tables_2_io_update_oldCtrs_1; // @[Tage.scala 540:21]
  wire  tables_2_io_update_uMask_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_uMask_1; // @[Tage.scala 540:21]
  wire  tables_2_io_update_us_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_us_1; // @[Tage.scala 540:21]
  wire  tables_2_io_update_reset_u_0; // @[Tage.scala 540:21]
  wire  tables_2_io_update_reset_u_1; // @[Tage.scala 540:21]
  wire  tables_3_clock; // @[Tage.scala 540:21]
  wire  tables_3_reset; // @[Tage.scala 540:21]
  wire  tables_3_io_req_ready; // @[Tage.scala 540:21]
  wire  tables_3_io_req_valid; // @[Tage.scala 540:21]
  wire [38:0] tables_3_io_req_bits_pc; // @[Tage.scala 540:21]
  wire [10:0] tables_3_io_req_bits_folded_hist_hist_15_folded_hist; // @[Tage.scala 540:21]
  wire [6:0] tables_3_io_req_bits_folded_hist_hist_14_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_3_io_req_bits_folded_hist_hist_2_folded_hist; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_0_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_3_io_resps_0_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_0_bits_u; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_0_bits_unconf; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_1_valid; // @[Tage.scala 540:21]
  wire [2:0] tables_3_io_resps_1_bits_ctr; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_1_bits_u; // @[Tage.scala 540:21]
  wire  tables_3_io_resps_1_bits_unconf; // @[Tage.scala 540:21]
  wire [38:0] tables_3_io_update_pc; // @[Tage.scala 540:21]
  wire [10:0] tables_3_io_update_folded_hist_hist_15_folded_hist; // @[Tage.scala 540:21]
  wire [6:0] tables_3_io_update_folded_hist_hist_14_folded_hist; // @[Tage.scala 540:21]
  wire [7:0] tables_3_io_update_folded_hist_hist_2_folded_hist; // @[Tage.scala 540:21]
  wire  tables_3_io_update_mask_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_mask_1; // @[Tage.scala 540:21]
  wire  tables_3_io_update_takens_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_takens_1; // @[Tage.scala 540:21]
  wire  tables_3_io_update_alloc_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_alloc_1; // @[Tage.scala 540:21]
  wire [2:0] tables_3_io_update_oldCtrs_0; // @[Tage.scala 540:21]
  wire [2:0] tables_3_io_update_oldCtrs_1; // @[Tage.scala 540:21]
  wire  tables_3_io_update_uMask_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_uMask_1; // @[Tage.scala 540:21]
  wire  tables_3_io_update_us_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_us_1; // @[Tage.scala 540:21]
  wire  tables_3_io_update_reset_u_0; // @[Tage.scala 540:21]
  wire  tables_3_io_update_reset_u_1; // @[Tage.scala 540:21]
  wire  bt_clock; // @[Tage.scala 548:19]
  wire  bt_reset; // @[Tage.scala 548:19]
  wire  bt_io_s0_fire; // @[Tage.scala 548:19]
  wire [38:0] bt_io_s0_pc; // @[Tage.scala 548:19]
  wire [1:0] bt_io_s1_cnt_0; // @[Tage.scala 548:19]
  wire [1:0] bt_io_s1_cnt_1; // @[Tage.scala 548:19]
  wire  bt_io_update_mask_0; // @[Tage.scala 548:19]
  wire  bt_io_update_mask_1; // @[Tage.scala 548:19]
  wire [38:0] bt_io_update_pc; // @[Tage.scala 548:19]
  wire [1:0] bt_io_update_cnt_0; // @[Tage.scala 548:19]
  wire [1:0] bt_io_update_cnt_1; // @[Tage.scala 548:19]
  wire  bt_io_update_takens_0; // @[Tage.scala 548:19]
  wire  bt_io_update_takens_1; // @[Tage.scala 548:19]
  wire  scTables_0_clock; // @[SC.scala 219:23]
  wire  scTables_0_reset; // @[SC.scala 219:23]
  wire  scTables_0_io_req_valid; // @[SC.scala 219:23]
  wire [38:0] scTables_0_io_req_bits_pc; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_resp_ctrs_0_0; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_resp_ctrs_0_1; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_resp_ctrs_1_0; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_resp_ctrs_1_1; // @[SC.scala 219:23]
  wire [38:0] scTables_0_io_update_pc; // @[SC.scala 219:23]
  wire  scTables_0_io_update_mask_0; // @[SC.scala 219:23]
  wire  scTables_0_io_update_mask_1; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_update_oldCtrs_0; // @[SC.scala 219:23]
  wire [5:0] scTables_0_io_update_oldCtrs_1; // @[SC.scala 219:23]
  wire  scTables_0_io_update_tagePreds_0; // @[SC.scala 219:23]
  wire  scTables_0_io_update_tagePreds_1; // @[SC.scala 219:23]
  wire  scTables_0_io_update_takens_0; // @[SC.scala 219:23]
  wire  scTables_0_io_update_takens_1; // @[SC.scala 219:23]
  wire  scTables_1_clock; // @[SC.scala 219:23]
  wire  scTables_1_reset; // @[SC.scala 219:23]
  wire  scTables_1_io_req_valid; // @[SC.scala 219:23]
  wire [38:0] scTables_1_io_req_bits_pc; // @[SC.scala 219:23]
  wire [3:0] scTables_1_io_req_bits_folded_hist_hist_4_folded_hist; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_resp_ctrs_0_0; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_resp_ctrs_0_1; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_resp_ctrs_1_0; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_resp_ctrs_1_1; // @[SC.scala 219:23]
  wire [38:0] scTables_1_io_update_pc; // @[SC.scala 219:23]
  wire [3:0] scTables_1_io_update_folded_hist_hist_4_folded_hist; // @[SC.scala 219:23]
  wire  scTables_1_io_update_mask_0; // @[SC.scala 219:23]
  wire  scTables_1_io_update_mask_1; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_update_oldCtrs_0; // @[SC.scala 219:23]
  wire [5:0] scTables_1_io_update_oldCtrs_1; // @[SC.scala 219:23]
  wire  scTables_1_io_update_tagePreds_0; // @[SC.scala 219:23]
  wire  scTables_1_io_update_tagePreds_1; // @[SC.scala 219:23]
  wire  scTables_1_io_update_takens_0; // @[SC.scala 219:23]
  wire  scTables_1_io_update_takens_1; // @[SC.scala 219:23]
  wire  scTables_2_clock; // @[SC.scala 219:23]
  wire  scTables_2_reset; // @[SC.scala 219:23]
  wire  scTables_2_io_req_valid; // @[SC.scala 219:23]
  wire [38:0] scTables_2_io_req_bits_pc; // @[SC.scala 219:23]
  wire [7:0] scTables_2_io_req_bits_folded_hist_hist_16_folded_hist; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_resp_ctrs_0_0; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_resp_ctrs_0_1; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_resp_ctrs_1_0; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_resp_ctrs_1_1; // @[SC.scala 219:23]
  wire [38:0] scTables_2_io_update_pc; // @[SC.scala 219:23]
  wire [7:0] scTables_2_io_update_folded_hist_hist_16_folded_hist; // @[SC.scala 219:23]
  wire  scTables_2_io_update_mask_0; // @[SC.scala 219:23]
  wire  scTables_2_io_update_mask_1; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_update_oldCtrs_0; // @[SC.scala 219:23]
  wire [5:0] scTables_2_io_update_oldCtrs_1; // @[SC.scala 219:23]
  wire  scTables_2_io_update_tagePreds_0; // @[SC.scala 219:23]
  wire  scTables_2_io_update_tagePreds_1; // @[SC.scala 219:23]
  wire  scTables_2_io_update_takens_0; // @[SC.scala 219:23]
  wire  scTables_2_io_update_takens_1; // @[SC.scala 219:23]
  wire  scTables_3_clock; // @[SC.scala 219:23]
  wire  scTables_3_reset; // @[SC.scala 219:23]
  wire  scTables_3_io_req_valid; // @[SC.scala 219:23]
  wire [38:0] scTables_3_io_req_bits_pc; // @[SC.scala 219:23]
  wire [7:0] scTables_3_io_req_bits_folded_hist_hist_0_folded_hist; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_resp_ctrs_0_0; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_resp_ctrs_0_1; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_resp_ctrs_1_0; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_resp_ctrs_1_1; // @[SC.scala 219:23]
  wire [38:0] scTables_3_io_update_pc; // @[SC.scala 219:23]
  wire [7:0] scTables_3_io_update_folded_hist_hist_0_folded_hist; // @[SC.scala 219:23]
  wire  scTables_3_io_update_mask_0; // @[SC.scala 219:23]
  wire  scTables_3_io_update_mask_1; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_update_oldCtrs_0; // @[SC.scala 219:23]
  wire [5:0] scTables_3_io_update_oldCtrs_1; // @[SC.scala 219:23]
  wire  scTables_3_io_update_tagePreds_0; // @[SC.scala 219:23]
  wire  scTables_3_io_update_tagePreds_1; // @[SC.scala 219:23]
  wire  scTables_3_io_update_takens_0; // @[SC.scala 219:23]
  wire  scTables_3_io_update_takens_1; // @[SC.scala 219:23]
  reg [38:0] s1_pc_dup_0; // @[Reg.scala 16:16]
  reg  REG; // @[BPU.scala 191:24]
  reg  REG_1; // @[BPU.scala 191:16]
  reg [6:0] bankTickCtrDistanceToTops_0; // @[Tage.scala 552:58]
  reg [6:0] bankTickCtrDistanceToTops_1; // @[Tage.scala 552:58]
  reg [6:0] bankTickCtrs_0; // @[Tage.scala 553:45]
  reg [6:0] bankTickCtrs_1; // @[Tage.scala 553:45]
  reg [3:0] useAltOnNaCtrs_0_0; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_1; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_2; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_3; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_4; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_5; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_6; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_7; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_8; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_9; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_10; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_11; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_12; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_13; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_14; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_15; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_16; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_17; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_18; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_19; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_20; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_21; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_22; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_23; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_24; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_25; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_26; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_27; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_28; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_29; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_30; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_31; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_32; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_33; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_34; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_35; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_36; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_37; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_38; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_39; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_40; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_41; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_42; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_43; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_44; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_45; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_46; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_47; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_48; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_49; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_50; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_51; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_52; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_53; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_54; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_55; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_56; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_57; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_58; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_59; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_60; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_61; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_62; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_63; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_64; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_65; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_66; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_67; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_68; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_69; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_70; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_71; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_72; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_73; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_74; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_75; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_76; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_77; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_78; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_79; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_80; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_81; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_82; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_83; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_84; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_85; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_86; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_87; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_88; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_89; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_90; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_91; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_92; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_93; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_94; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_95; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_96; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_97; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_98; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_99; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_100; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_101; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_102; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_103; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_104; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_105; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_106; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_107; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_108; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_109; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_110; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_111; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_112; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_113; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_114; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_115; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_116; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_117; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_118; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_119; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_120; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_121; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_122; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_123; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_124; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_125; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_126; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_0_127; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_0; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_1; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_2; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_3; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_4; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_5; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_6; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_7; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_8; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_9; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_10; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_11; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_12; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_13; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_14; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_15; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_16; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_17; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_18; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_19; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_20; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_21; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_22; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_23; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_24; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_25; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_26; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_27; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_28; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_29; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_30; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_31; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_32; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_33; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_34; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_35; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_36; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_37; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_38; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_39; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_40; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_41; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_42; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_43; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_44; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_45; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_46; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_47; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_48; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_49; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_50; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_51; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_52; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_53; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_54; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_55; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_56; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_57; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_58; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_59; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_60; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_61; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_62; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_63; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_64; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_65; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_66; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_67; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_68; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_69; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_70; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_71; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_72; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_73; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_74; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_75; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_76; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_77; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_78; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_79; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_80; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_81; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_82; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_83; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_84; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_85; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_86; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_87; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_88; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_89; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_90; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_91; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_92; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_93; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_94; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_95; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_96; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_97; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_98; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_99; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_100; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_101; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_102; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_103; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_104; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_105; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_106; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_107; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_108; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_109; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_110; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_111; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_112; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_113; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_114; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_115; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_116; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_117; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_118; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_119; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_120; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_121; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_122; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_123; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_124; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_125; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_126; // @[Tage.scala 554:31]
  reg [3:0] useAltOnNaCtrs_1_127; // @[Tage.scala 554:31]
  reg  s2_provideds_0; // @[Reg.scala 16:16]
  reg  s2_provideds_1; // @[Reg.scala 16:16]
  wire  s1_resps_0_0_valid = tables_0_io_resps_0_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_0_valid = tables_1_io_resps_0_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_0_valid = tables_2_io_resps_0_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_3_0_valid = tables_3_io_resps_0_valid; // @[Tage.scala 563:{25,25}]
  wire  provided = s1_resps_0_0_valid | s1_resps_1_0_valid | s1_resps_2_0_valid | s1_resps_3_0_valid; // @[Tage.scala 647:47]
  wire  s1_resps_0_1_valid = tables_0_io_resps_1_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_1_valid = tables_1_io_resps_1_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_1_valid = tables_2_io_resps_1_valid; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_3_1_valid = tables_3_io_resps_1_valid; // @[Tage.scala 563:{25,25}]
  wire  provided_1 = s1_resps_0_1_valid | s1_resps_1_1_valid | s1_resps_2_1_valid | s1_resps_3_1_valid; // @[Tage.scala 647:47]
  reg [1:0] s2_providers_0; // @[Reg.scala 16:16]
  reg [1:0] s2_providers_1; // @[Reg.scala 16:16]
  wire [1:0] _providerInfo_T_1_tableIdx = s1_resps_3_0_valid ? 2'h3 : 2'h2; // @[ParallelMux.scala 90:77]
  wire [1:0] _providerInfo_T_3_tableIdx = s1_resps_1_0_valid ? 2'h1 : 2'h0; // @[ParallelMux.scala 90:77]
  wire [1:0] providerInfo_tableIdx = s1_resps_3_0_valid | s1_resps_2_0_valid ? _providerInfo_T_1_tableIdx :
    _providerInfo_T_3_tableIdx; // @[ParallelMux.scala 90:77]
  wire [1:0] _providerInfo_T_6_tableIdx = s1_resps_3_1_valid ? 2'h3 : 2'h2; // @[ParallelMux.scala 90:77]
  wire [1:0] _providerInfo_T_8_tableIdx = s1_resps_1_1_valid ? 2'h1 : 2'h0; // @[ParallelMux.scala 90:77]
  wire [1:0] providerInfo_1_tableIdx = s1_resps_3_1_valid | s1_resps_2_1_valid ? _providerInfo_T_6_tableIdx :
    _providerInfo_T_8_tableIdx; // @[ParallelMux.scala 90:77]
  reg [2:0] s2_providerResps_0_ctr; // @[Reg.scala 16:16]
  reg  s2_providerResps_0_u; // @[Reg.scala 16:16]
  reg  s2_providerResps_0_unconf; // @[Reg.scala 16:16]
  reg [2:0] s2_providerResps_1_ctr; // @[Reg.scala 16:16]
  reg  s2_providerResps_1_u; // @[Reg.scala 16:16]
  reg  s2_providerResps_1_unconf; // @[Reg.scala 16:16]
  wire [2:0] s1_resps_3_0_bits_ctr = tables_3_io_resps_0_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] s1_resps_2_0_bits_ctr = tables_2_io_resps_0_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] _providerInfo_T_1_resp_ctr = s1_resps_3_0_valid ? s1_resps_3_0_bits_ctr : s1_resps_2_0_bits_ctr; // @[ParallelMux.scala 90:77]
  wire [2:0] s1_resps_1_0_bits_ctr = tables_1_io_resps_0_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] s1_resps_0_0_bits_ctr = tables_0_io_resps_0_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] _providerInfo_T_3_resp_ctr = s1_resps_1_0_valid ? s1_resps_1_0_bits_ctr : s1_resps_0_0_bits_ctr; // @[ParallelMux.scala 90:77]
  wire [2:0] providerInfo_resp_ctr = s1_resps_3_0_valid | s1_resps_2_0_valid ? _providerInfo_T_1_resp_ctr :
    _providerInfo_T_3_resp_ctr; // @[ParallelMux.scala 90:77]
  wire  s1_resps_3_0_bits_u = tables_3_io_resps_0_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_0_bits_u = tables_2_io_resps_0_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_0_bits_u = tables_1_io_resps_0_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_0_0_bits_u = tables_0_io_resps_0_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_3_0_bits_unconf = tables_3_io_resps_0_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_0_bits_unconf = tables_2_io_resps_0_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_0_bits_unconf = tables_1_io_resps_0_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_0_0_bits_unconf = tables_0_io_resps_0_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire [2:0] s1_resps_3_1_bits_ctr = tables_3_io_resps_1_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] s1_resps_2_1_bits_ctr = tables_2_io_resps_1_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] _providerInfo_T_6_resp_ctr = s1_resps_3_1_valid ? s1_resps_3_1_bits_ctr : s1_resps_2_1_bits_ctr; // @[ParallelMux.scala 90:77]
  wire [2:0] s1_resps_1_1_bits_ctr = tables_1_io_resps_1_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] s1_resps_0_1_bits_ctr = tables_0_io_resps_1_bits_ctr; // @[Tage.scala 563:{25,25}]
  wire [2:0] _providerInfo_T_8_resp_ctr = s1_resps_1_1_valid ? s1_resps_1_1_bits_ctr : s1_resps_0_1_bits_ctr; // @[ParallelMux.scala 90:77]
  wire [2:0] providerInfo_1_resp_ctr = s1_resps_3_1_valid | s1_resps_2_1_valid ? _providerInfo_T_6_resp_ctr :
    _providerInfo_T_8_resp_ctr; // @[ParallelMux.scala 90:77]
  wire  s1_resps_3_1_bits_u = tables_3_io_resps_1_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_1_bits_u = tables_2_io_resps_1_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_1_bits_u = tables_1_io_resps_1_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_0_1_bits_u = tables_0_io_resps_1_bits_u; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_3_1_bits_unconf = tables_3_io_resps_1_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_2_1_bits_unconf = tables_2_io_resps_1_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_1_1_bits_unconf = tables_1_io_resps_1_bits_unconf; // @[Tage.scala 563:{25,25}]
  wire  s1_resps_0_1_bits_unconf = tables_0_io_resps_1_bits_unconf; // @[Tage.scala 563:{25,25}]
  reg  s2_altUsed_0; // @[Reg.scala 16:16]
  reg  s2_altUsed_1; // @[Reg.scala 16:16]
  wire [6:0] useAltCtr_shiftAmount = s1_pc_dup_0[7:1]; // @[Tage.scala 46:53]
  wire [127:0] _useAltCtr_T_2 = 128'h1 << useAltCtr_shiftAmount; // @[OneHot.scala 64:12]
  wire [3:0] _useAltCtr_T_132 = _useAltCtr_T_2[0] ? useAltOnNaCtrs_0_0 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_133 = _useAltCtr_T_2[1] ? useAltOnNaCtrs_0_1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_260 = _useAltCtr_T_132 | _useAltCtr_T_133; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_134 = _useAltCtr_T_2[2] ? useAltOnNaCtrs_0_2 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_261 = _useAltCtr_T_260 | _useAltCtr_T_134; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_135 = _useAltCtr_T_2[3] ? useAltOnNaCtrs_0_3 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_262 = _useAltCtr_T_261 | _useAltCtr_T_135; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_136 = _useAltCtr_T_2[4] ? useAltOnNaCtrs_0_4 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_263 = _useAltCtr_T_262 | _useAltCtr_T_136; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_137 = _useAltCtr_T_2[5] ? useAltOnNaCtrs_0_5 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_264 = _useAltCtr_T_263 | _useAltCtr_T_137; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_138 = _useAltCtr_T_2[6] ? useAltOnNaCtrs_0_6 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_265 = _useAltCtr_T_264 | _useAltCtr_T_138; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_139 = _useAltCtr_T_2[7] ? useAltOnNaCtrs_0_7 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_266 = _useAltCtr_T_265 | _useAltCtr_T_139; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_140 = _useAltCtr_T_2[8] ? useAltOnNaCtrs_0_8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_267 = _useAltCtr_T_266 | _useAltCtr_T_140; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_141 = _useAltCtr_T_2[9] ? useAltOnNaCtrs_0_9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_268 = _useAltCtr_T_267 | _useAltCtr_T_141; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_142 = _useAltCtr_T_2[10] ? useAltOnNaCtrs_0_10 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_269 = _useAltCtr_T_268 | _useAltCtr_T_142; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_143 = _useAltCtr_T_2[11] ? useAltOnNaCtrs_0_11 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_270 = _useAltCtr_T_269 | _useAltCtr_T_143; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_144 = _useAltCtr_T_2[12] ? useAltOnNaCtrs_0_12 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_271 = _useAltCtr_T_270 | _useAltCtr_T_144; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_145 = _useAltCtr_T_2[13] ? useAltOnNaCtrs_0_13 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_272 = _useAltCtr_T_271 | _useAltCtr_T_145; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_146 = _useAltCtr_T_2[14] ? useAltOnNaCtrs_0_14 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_273 = _useAltCtr_T_272 | _useAltCtr_T_146; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_147 = _useAltCtr_T_2[15] ? useAltOnNaCtrs_0_15 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_274 = _useAltCtr_T_273 | _useAltCtr_T_147; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_148 = _useAltCtr_T_2[16] ? useAltOnNaCtrs_0_16 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_275 = _useAltCtr_T_274 | _useAltCtr_T_148; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_149 = _useAltCtr_T_2[17] ? useAltOnNaCtrs_0_17 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_276 = _useAltCtr_T_275 | _useAltCtr_T_149; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_150 = _useAltCtr_T_2[18] ? useAltOnNaCtrs_0_18 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_277 = _useAltCtr_T_276 | _useAltCtr_T_150; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_151 = _useAltCtr_T_2[19] ? useAltOnNaCtrs_0_19 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_278 = _useAltCtr_T_277 | _useAltCtr_T_151; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_152 = _useAltCtr_T_2[20] ? useAltOnNaCtrs_0_20 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_279 = _useAltCtr_T_278 | _useAltCtr_T_152; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_153 = _useAltCtr_T_2[21] ? useAltOnNaCtrs_0_21 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_280 = _useAltCtr_T_279 | _useAltCtr_T_153; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_154 = _useAltCtr_T_2[22] ? useAltOnNaCtrs_0_22 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_281 = _useAltCtr_T_280 | _useAltCtr_T_154; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_155 = _useAltCtr_T_2[23] ? useAltOnNaCtrs_0_23 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_282 = _useAltCtr_T_281 | _useAltCtr_T_155; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_156 = _useAltCtr_T_2[24] ? useAltOnNaCtrs_0_24 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_283 = _useAltCtr_T_282 | _useAltCtr_T_156; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_157 = _useAltCtr_T_2[25] ? useAltOnNaCtrs_0_25 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_284 = _useAltCtr_T_283 | _useAltCtr_T_157; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_158 = _useAltCtr_T_2[26] ? useAltOnNaCtrs_0_26 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_285 = _useAltCtr_T_284 | _useAltCtr_T_158; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_159 = _useAltCtr_T_2[27] ? useAltOnNaCtrs_0_27 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_286 = _useAltCtr_T_285 | _useAltCtr_T_159; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_160 = _useAltCtr_T_2[28] ? useAltOnNaCtrs_0_28 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_287 = _useAltCtr_T_286 | _useAltCtr_T_160; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_161 = _useAltCtr_T_2[29] ? useAltOnNaCtrs_0_29 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_288 = _useAltCtr_T_287 | _useAltCtr_T_161; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_162 = _useAltCtr_T_2[30] ? useAltOnNaCtrs_0_30 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_289 = _useAltCtr_T_288 | _useAltCtr_T_162; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_163 = _useAltCtr_T_2[31] ? useAltOnNaCtrs_0_31 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_290 = _useAltCtr_T_289 | _useAltCtr_T_163; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_164 = _useAltCtr_T_2[32] ? useAltOnNaCtrs_0_32 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_291 = _useAltCtr_T_290 | _useAltCtr_T_164; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_165 = _useAltCtr_T_2[33] ? useAltOnNaCtrs_0_33 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_292 = _useAltCtr_T_291 | _useAltCtr_T_165; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_166 = _useAltCtr_T_2[34] ? useAltOnNaCtrs_0_34 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_293 = _useAltCtr_T_292 | _useAltCtr_T_166; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_167 = _useAltCtr_T_2[35] ? useAltOnNaCtrs_0_35 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_294 = _useAltCtr_T_293 | _useAltCtr_T_167; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_168 = _useAltCtr_T_2[36] ? useAltOnNaCtrs_0_36 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_295 = _useAltCtr_T_294 | _useAltCtr_T_168; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_169 = _useAltCtr_T_2[37] ? useAltOnNaCtrs_0_37 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_296 = _useAltCtr_T_295 | _useAltCtr_T_169; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_170 = _useAltCtr_T_2[38] ? useAltOnNaCtrs_0_38 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_297 = _useAltCtr_T_296 | _useAltCtr_T_170; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_171 = _useAltCtr_T_2[39] ? useAltOnNaCtrs_0_39 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_298 = _useAltCtr_T_297 | _useAltCtr_T_171; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_172 = _useAltCtr_T_2[40] ? useAltOnNaCtrs_0_40 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_299 = _useAltCtr_T_298 | _useAltCtr_T_172; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_173 = _useAltCtr_T_2[41] ? useAltOnNaCtrs_0_41 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_300 = _useAltCtr_T_299 | _useAltCtr_T_173; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_174 = _useAltCtr_T_2[42] ? useAltOnNaCtrs_0_42 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_301 = _useAltCtr_T_300 | _useAltCtr_T_174; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_175 = _useAltCtr_T_2[43] ? useAltOnNaCtrs_0_43 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_302 = _useAltCtr_T_301 | _useAltCtr_T_175; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_176 = _useAltCtr_T_2[44] ? useAltOnNaCtrs_0_44 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_303 = _useAltCtr_T_302 | _useAltCtr_T_176; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_177 = _useAltCtr_T_2[45] ? useAltOnNaCtrs_0_45 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_304 = _useAltCtr_T_303 | _useAltCtr_T_177; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_178 = _useAltCtr_T_2[46] ? useAltOnNaCtrs_0_46 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_305 = _useAltCtr_T_304 | _useAltCtr_T_178; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_179 = _useAltCtr_T_2[47] ? useAltOnNaCtrs_0_47 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_306 = _useAltCtr_T_305 | _useAltCtr_T_179; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_180 = _useAltCtr_T_2[48] ? useAltOnNaCtrs_0_48 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_307 = _useAltCtr_T_306 | _useAltCtr_T_180; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_181 = _useAltCtr_T_2[49] ? useAltOnNaCtrs_0_49 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_308 = _useAltCtr_T_307 | _useAltCtr_T_181; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_182 = _useAltCtr_T_2[50] ? useAltOnNaCtrs_0_50 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_309 = _useAltCtr_T_308 | _useAltCtr_T_182; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_183 = _useAltCtr_T_2[51] ? useAltOnNaCtrs_0_51 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_310 = _useAltCtr_T_309 | _useAltCtr_T_183; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_184 = _useAltCtr_T_2[52] ? useAltOnNaCtrs_0_52 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_311 = _useAltCtr_T_310 | _useAltCtr_T_184; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_185 = _useAltCtr_T_2[53] ? useAltOnNaCtrs_0_53 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_312 = _useAltCtr_T_311 | _useAltCtr_T_185; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_186 = _useAltCtr_T_2[54] ? useAltOnNaCtrs_0_54 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_313 = _useAltCtr_T_312 | _useAltCtr_T_186; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_187 = _useAltCtr_T_2[55] ? useAltOnNaCtrs_0_55 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_314 = _useAltCtr_T_313 | _useAltCtr_T_187; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_188 = _useAltCtr_T_2[56] ? useAltOnNaCtrs_0_56 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_315 = _useAltCtr_T_314 | _useAltCtr_T_188; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_189 = _useAltCtr_T_2[57] ? useAltOnNaCtrs_0_57 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_316 = _useAltCtr_T_315 | _useAltCtr_T_189; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_190 = _useAltCtr_T_2[58] ? useAltOnNaCtrs_0_58 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_317 = _useAltCtr_T_316 | _useAltCtr_T_190; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_191 = _useAltCtr_T_2[59] ? useAltOnNaCtrs_0_59 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_318 = _useAltCtr_T_317 | _useAltCtr_T_191; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_192 = _useAltCtr_T_2[60] ? useAltOnNaCtrs_0_60 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_319 = _useAltCtr_T_318 | _useAltCtr_T_192; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_193 = _useAltCtr_T_2[61] ? useAltOnNaCtrs_0_61 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_320 = _useAltCtr_T_319 | _useAltCtr_T_193; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_194 = _useAltCtr_T_2[62] ? useAltOnNaCtrs_0_62 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_321 = _useAltCtr_T_320 | _useAltCtr_T_194; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_195 = _useAltCtr_T_2[63] ? useAltOnNaCtrs_0_63 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_322 = _useAltCtr_T_321 | _useAltCtr_T_195; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_196 = _useAltCtr_T_2[64] ? useAltOnNaCtrs_0_64 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_323 = _useAltCtr_T_322 | _useAltCtr_T_196; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_197 = _useAltCtr_T_2[65] ? useAltOnNaCtrs_0_65 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_324 = _useAltCtr_T_323 | _useAltCtr_T_197; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_198 = _useAltCtr_T_2[66] ? useAltOnNaCtrs_0_66 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_325 = _useAltCtr_T_324 | _useAltCtr_T_198; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_199 = _useAltCtr_T_2[67] ? useAltOnNaCtrs_0_67 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_326 = _useAltCtr_T_325 | _useAltCtr_T_199; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_200 = _useAltCtr_T_2[68] ? useAltOnNaCtrs_0_68 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_327 = _useAltCtr_T_326 | _useAltCtr_T_200; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_201 = _useAltCtr_T_2[69] ? useAltOnNaCtrs_0_69 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_328 = _useAltCtr_T_327 | _useAltCtr_T_201; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_202 = _useAltCtr_T_2[70] ? useAltOnNaCtrs_0_70 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_329 = _useAltCtr_T_328 | _useAltCtr_T_202; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_203 = _useAltCtr_T_2[71] ? useAltOnNaCtrs_0_71 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_330 = _useAltCtr_T_329 | _useAltCtr_T_203; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_204 = _useAltCtr_T_2[72] ? useAltOnNaCtrs_0_72 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_331 = _useAltCtr_T_330 | _useAltCtr_T_204; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_205 = _useAltCtr_T_2[73] ? useAltOnNaCtrs_0_73 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_332 = _useAltCtr_T_331 | _useAltCtr_T_205; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_206 = _useAltCtr_T_2[74] ? useAltOnNaCtrs_0_74 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_333 = _useAltCtr_T_332 | _useAltCtr_T_206; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_207 = _useAltCtr_T_2[75] ? useAltOnNaCtrs_0_75 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_334 = _useAltCtr_T_333 | _useAltCtr_T_207; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_208 = _useAltCtr_T_2[76] ? useAltOnNaCtrs_0_76 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_335 = _useAltCtr_T_334 | _useAltCtr_T_208; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_209 = _useAltCtr_T_2[77] ? useAltOnNaCtrs_0_77 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_336 = _useAltCtr_T_335 | _useAltCtr_T_209; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_210 = _useAltCtr_T_2[78] ? useAltOnNaCtrs_0_78 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_337 = _useAltCtr_T_336 | _useAltCtr_T_210; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_211 = _useAltCtr_T_2[79] ? useAltOnNaCtrs_0_79 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_338 = _useAltCtr_T_337 | _useAltCtr_T_211; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_212 = _useAltCtr_T_2[80] ? useAltOnNaCtrs_0_80 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_339 = _useAltCtr_T_338 | _useAltCtr_T_212; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_213 = _useAltCtr_T_2[81] ? useAltOnNaCtrs_0_81 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_340 = _useAltCtr_T_339 | _useAltCtr_T_213; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_214 = _useAltCtr_T_2[82] ? useAltOnNaCtrs_0_82 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_341 = _useAltCtr_T_340 | _useAltCtr_T_214; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_215 = _useAltCtr_T_2[83] ? useAltOnNaCtrs_0_83 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_342 = _useAltCtr_T_341 | _useAltCtr_T_215; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_216 = _useAltCtr_T_2[84] ? useAltOnNaCtrs_0_84 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_343 = _useAltCtr_T_342 | _useAltCtr_T_216; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_217 = _useAltCtr_T_2[85] ? useAltOnNaCtrs_0_85 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_344 = _useAltCtr_T_343 | _useAltCtr_T_217; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_218 = _useAltCtr_T_2[86] ? useAltOnNaCtrs_0_86 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_345 = _useAltCtr_T_344 | _useAltCtr_T_218; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_219 = _useAltCtr_T_2[87] ? useAltOnNaCtrs_0_87 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_346 = _useAltCtr_T_345 | _useAltCtr_T_219; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_220 = _useAltCtr_T_2[88] ? useAltOnNaCtrs_0_88 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_347 = _useAltCtr_T_346 | _useAltCtr_T_220; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_221 = _useAltCtr_T_2[89] ? useAltOnNaCtrs_0_89 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_348 = _useAltCtr_T_347 | _useAltCtr_T_221; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_222 = _useAltCtr_T_2[90] ? useAltOnNaCtrs_0_90 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_349 = _useAltCtr_T_348 | _useAltCtr_T_222; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_223 = _useAltCtr_T_2[91] ? useAltOnNaCtrs_0_91 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_350 = _useAltCtr_T_349 | _useAltCtr_T_223; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_224 = _useAltCtr_T_2[92] ? useAltOnNaCtrs_0_92 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_351 = _useAltCtr_T_350 | _useAltCtr_T_224; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_225 = _useAltCtr_T_2[93] ? useAltOnNaCtrs_0_93 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_352 = _useAltCtr_T_351 | _useAltCtr_T_225; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_226 = _useAltCtr_T_2[94] ? useAltOnNaCtrs_0_94 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_353 = _useAltCtr_T_352 | _useAltCtr_T_226; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_227 = _useAltCtr_T_2[95] ? useAltOnNaCtrs_0_95 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_354 = _useAltCtr_T_353 | _useAltCtr_T_227; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_228 = _useAltCtr_T_2[96] ? useAltOnNaCtrs_0_96 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_355 = _useAltCtr_T_354 | _useAltCtr_T_228; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_229 = _useAltCtr_T_2[97] ? useAltOnNaCtrs_0_97 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_356 = _useAltCtr_T_355 | _useAltCtr_T_229; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_230 = _useAltCtr_T_2[98] ? useAltOnNaCtrs_0_98 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_357 = _useAltCtr_T_356 | _useAltCtr_T_230; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_231 = _useAltCtr_T_2[99] ? useAltOnNaCtrs_0_99 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_358 = _useAltCtr_T_357 | _useAltCtr_T_231; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_232 = _useAltCtr_T_2[100] ? useAltOnNaCtrs_0_100 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_359 = _useAltCtr_T_358 | _useAltCtr_T_232; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_233 = _useAltCtr_T_2[101] ? useAltOnNaCtrs_0_101 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_360 = _useAltCtr_T_359 | _useAltCtr_T_233; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_234 = _useAltCtr_T_2[102] ? useAltOnNaCtrs_0_102 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_361 = _useAltCtr_T_360 | _useAltCtr_T_234; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_235 = _useAltCtr_T_2[103] ? useAltOnNaCtrs_0_103 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_362 = _useAltCtr_T_361 | _useAltCtr_T_235; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_236 = _useAltCtr_T_2[104] ? useAltOnNaCtrs_0_104 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_363 = _useAltCtr_T_362 | _useAltCtr_T_236; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_237 = _useAltCtr_T_2[105] ? useAltOnNaCtrs_0_105 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_364 = _useAltCtr_T_363 | _useAltCtr_T_237; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_238 = _useAltCtr_T_2[106] ? useAltOnNaCtrs_0_106 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_365 = _useAltCtr_T_364 | _useAltCtr_T_238; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_239 = _useAltCtr_T_2[107] ? useAltOnNaCtrs_0_107 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_366 = _useAltCtr_T_365 | _useAltCtr_T_239; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_240 = _useAltCtr_T_2[108] ? useAltOnNaCtrs_0_108 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_367 = _useAltCtr_T_366 | _useAltCtr_T_240; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_241 = _useAltCtr_T_2[109] ? useAltOnNaCtrs_0_109 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_368 = _useAltCtr_T_367 | _useAltCtr_T_241; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_242 = _useAltCtr_T_2[110] ? useAltOnNaCtrs_0_110 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_369 = _useAltCtr_T_368 | _useAltCtr_T_242; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_243 = _useAltCtr_T_2[111] ? useAltOnNaCtrs_0_111 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_370 = _useAltCtr_T_369 | _useAltCtr_T_243; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_244 = _useAltCtr_T_2[112] ? useAltOnNaCtrs_0_112 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_371 = _useAltCtr_T_370 | _useAltCtr_T_244; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_245 = _useAltCtr_T_2[113] ? useAltOnNaCtrs_0_113 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_372 = _useAltCtr_T_371 | _useAltCtr_T_245; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_246 = _useAltCtr_T_2[114] ? useAltOnNaCtrs_0_114 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_373 = _useAltCtr_T_372 | _useAltCtr_T_246; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_247 = _useAltCtr_T_2[115] ? useAltOnNaCtrs_0_115 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_374 = _useAltCtr_T_373 | _useAltCtr_T_247; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_248 = _useAltCtr_T_2[116] ? useAltOnNaCtrs_0_116 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_375 = _useAltCtr_T_374 | _useAltCtr_T_248; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_249 = _useAltCtr_T_2[117] ? useAltOnNaCtrs_0_117 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_376 = _useAltCtr_T_375 | _useAltCtr_T_249; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_250 = _useAltCtr_T_2[118] ? useAltOnNaCtrs_0_118 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_377 = _useAltCtr_T_376 | _useAltCtr_T_250; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_251 = _useAltCtr_T_2[119] ? useAltOnNaCtrs_0_119 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_378 = _useAltCtr_T_377 | _useAltCtr_T_251; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_252 = _useAltCtr_T_2[120] ? useAltOnNaCtrs_0_120 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_379 = _useAltCtr_T_378 | _useAltCtr_T_252; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_253 = _useAltCtr_T_2[121] ? useAltOnNaCtrs_0_121 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_380 = _useAltCtr_T_379 | _useAltCtr_T_253; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_254 = _useAltCtr_T_2[122] ? useAltOnNaCtrs_0_122 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_381 = _useAltCtr_T_380 | _useAltCtr_T_254; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_255 = _useAltCtr_T_2[123] ? useAltOnNaCtrs_0_123 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_382 = _useAltCtr_T_381 | _useAltCtr_T_255; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_256 = _useAltCtr_T_2[124] ? useAltOnNaCtrs_0_124 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_383 = _useAltCtr_T_382 | _useAltCtr_T_256; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_257 = _useAltCtr_T_2[125] ? useAltOnNaCtrs_0_125 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_384 = _useAltCtr_T_383 | _useAltCtr_T_257; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_258 = _useAltCtr_T_2[126] ? useAltOnNaCtrs_0_126 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_385 = _useAltCtr_T_384 | _useAltCtr_T_258; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_259 = _useAltCtr_T_2[127] ? useAltOnNaCtrs_0_127 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] useAltCtr = _useAltCtr_T_385 | _useAltCtr_T_259; // @[Mux.scala 27:73]
  wire  useAltOnNa = useAltCtr[3]; // @[Tage.scala 636:31]
  wire  tableInfo_3_use_alt_on_unconf = s1_resps_3_0_bits_unconf & useAltOnNa; // @[Tage.scala 642:52]
  wire  tableInfo_2_use_alt_on_unconf = s1_resps_2_0_bits_unconf & useAltOnNa; // @[Tage.scala 642:52]
  wire  _providerInfo_T_1_use_alt_on_unconf = s1_resps_3_0_valid ? tableInfo_3_use_alt_on_unconf :
    tableInfo_2_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  tableInfo_1_use_alt_on_unconf = s1_resps_1_0_bits_unconf & useAltOnNa; // @[Tage.scala 642:52]
  wire  tableInfo_use_alt_on_unconf = s1_resps_0_0_bits_unconf & useAltOnNa; // @[Tage.scala 642:52]
  wire  _providerInfo_T_3_use_alt_on_unconf = s1_resps_1_0_valid ? tableInfo_1_use_alt_on_unconf :
    tableInfo_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  providerInfo_use_alt_on_unconf = s1_resps_3_0_valid | s1_resps_2_0_valid ? _providerInfo_T_1_use_alt_on_unconf
     : _providerInfo_T_3_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  s1_altUsed_0 = ~provided | providerInfo_use_alt_on_unconf; // @[Tage.scala 680:38]
  wire [3:0] _useAltCtr_T_519 = _useAltCtr_T_2[0] ? useAltOnNaCtrs_1_0 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_520 = _useAltCtr_T_2[1] ? useAltOnNaCtrs_1_1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_647 = _useAltCtr_T_519 | _useAltCtr_T_520; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_521 = _useAltCtr_T_2[2] ? useAltOnNaCtrs_1_2 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_648 = _useAltCtr_T_647 | _useAltCtr_T_521; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_522 = _useAltCtr_T_2[3] ? useAltOnNaCtrs_1_3 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_649 = _useAltCtr_T_648 | _useAltCtr_T_522; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_523 = _useAltCtr_T_2[4] ? useAltOnNaCtrs_1_4 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_650 = _useAltCtr_T_649 | _useAltCtr_T_523; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_524 = _useAltCtr_T_2[5] ? useAltOnNaCtrs_1_5 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_651 = _useAltCtr_T_650 | _useAltCtr_T_524; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_525 = _useAltCtr_T_2[6] ? useAltOnNaCtrs_1_6 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_652 = _useAltCtr_T_651 | _useAltCtr_T_525; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_526 = _useAltCtr_T_2[7] ? useAltOnNaCtrs_1_7 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_653 = _useAltCtr_T_652 | _useAltCtr_T_526; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_527 = _useAltCtr_T_2[8] ? useAltOnNaCtrs_1_8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_654 = _useAltCtr_T_653 | _useAltCtr_T_527; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_528 = _useAltCtr_T_2[9] ? useAltOnNaCtrs_1_9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_655 = _useAltCtr_T_654 | _useAltCtr_T_528; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_529 = _useAltCtr_T_2[10] ? useAltOnNaCtrs_1_10 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_656 = _useAltCtr_T_655 | _useAltCtr_T_529; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_530 = _useAltCtr_T_2[11] ? useAltOnNaCtrs_1_11 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_657 = _useAltCtr_T_656 | _useAltCtr_T_530; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_531 = _useAltCtr_T_2[12] ? useAltOnNaCtrs_1_12 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_658 = _useAltCtr_T_657 | _useAltCtr_T_531; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_532 = _useAltCtr_T_2[13] ? useAltOnNaCtrs_1_13 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_659 = _useAltCtr_T_658 | _useAltCtr_T_532; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_533 = _useAltCtr_T_2[14] ? useAltOnNaCtrs_1_14 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_660 = _useAltCtr_T_659 | _useAltCtr_T_533; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_534 = _useAltCtr_T_2[15] ? useAltOnNaCtrs_1_15 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_661 = _useAltCtr_T_660 | _useAltCtr_T_534; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_535 = _useAltCtr_T_2[16] ? useAltOnNaCtrs_1_16 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_662 = _useAltCtr_T_661 | _useAltCtr_T_535; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_536 = _useAltCtr_T_2[17] ? useAltOnNaCtrs_1_17 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_663 = _useAltCtr_T_662 | _useAltCtr_T_536; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_537 = _useAltCtr_T_2[18] ? useAltOnNaCtrs_1_18 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_664 = _useAltCtr_T_663 | _useAltCtr_T_537; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_538 = _useAltCtr_T_2[19] ? useAltOnNaCtrs_1_19 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_665 = _useAltCtr_T_664 | _useAltCtr_T_538; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_539 = _useAltCtr_T_2[20] ? useAltOnNaCtrs_1_20 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_666 = _useAltCtr_T_665 | _useAltCtr_T_539; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_540 = _useAltCtr_T_2[21] ? useAltOnNaCtrs_1_21 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_667 = _useAltCtr_T_666 | _useAltCtr_T_540; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_541 = _useAltCtr_T_2[22] ? useAltOnNaCtrs_1_22 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_668 = _useAltCtr_T_667 | _useAltCtr_T_541; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_542 = _useAltCtr_T_2[23] ? useAltOnNaCtrs_1_23 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_669 = _useAltCtr_T_668 | _useAltCtr_T_542; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_543 = _useAltCtr_T_2[24] ? useAltOnNaCtrs_1_24 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_670 = _useAltCtr_T_669 | _useAltCtr_T_543; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_544 = _useAltCtr_T_2[25] ? useAltOnNaCtrs_1_25 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_671 = _useAltCtr_T_670 | _useAltCtr_T_544; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_545 = _useAltCtr_T_2[26] ? useAltOnNaCtrs_1_26 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_672 = _useAltCtr_T_671 | _useAltCtr_T_545; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_546 = _useAltCtr_T_2[27] ? useAltOnNaCtrs_1_27 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_673 = _useAltCtr_T_672 | _useAltCtr_T_546; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_547 = _useAltCtr_T_2[28] ? useAltOnNaCtrs_1_28 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_674 = _useAltCtr_T_673 | _useAltCtr_T_547; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_548 = _useAltCtr_T_2[29] ? useAltOnNaCtrs_1_29 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_675 = _useAltCtr_T_674 | _useAltCtr_T_548; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_549 = _useAltCtr_T_2[30] ? useAltOnNaCtrs_1_30 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_676 = _useAltCtr_T_675 | _useAltCtr_T_549; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_550 = _useAltCtr_T_2[31] ? useAltOnNaCtrs_1_31 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_677 = _useAltCtr_T_676 | _useAltCtr_T_550; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_551 = _useAltCtr_T_2[32] ? useAltOnNaCtrs_1_32 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_678 = _useAltCtr_T_677 | _useAltCtr_T_551; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_552 = _useAltCtr_T_2[33] ? useAltOnNaCtrs_1_33 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_679 = _useAltCtr_T_678 | _useAltCtr_T_552; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_553 = _useAltCtr_T_2[34] ? useAltOnNaCtrs_1_34 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_680 = _useAltCtr_T_679 | _useAltCtr_T_553; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_554 = _useAltCtr_T_2[35] ? useAltOnNaCtrs_1_35 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_681 = _useAltCtr_T_680 | _useAltCtr_T_554; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_555 = _useAltCtr_T_2[36] ? useAltOnNaCtrs_1_36 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_682 = _useAltCtr_T_681 | _useAltCtr_T_555; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_556 = _useAltCtr_T_2[37] ? useAltOnNaCtrs_1_37 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_683 = _useAltCtr_T_682 | _useAltCtr_T_556; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_557 = _useAltCtr_T_2[38] ? useAltOnNaCtrs_1_38 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_684 = _useAltCtr_T_683 | _useAltCtr_T_557; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_558 = _useAltCtr_T_2[39] ? useAltOnNaCtrs_1_39 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_685 = _useAltCtr_T_684 | _useAltCtr_T_558; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_559 = _useAltCtr_T_2[40] ? useAltOnNaCtrs_1_40 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_686 = _useAltCtr_T_685 | _useAltCtr_T_559; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_560 = _useAltCtr_T_2[41] ? useAltOnNaCtrs_1_41 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_687 = _useAltCtr_T_686 | _useAltCtr_T_560; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_561 = _useAltCtr_T_2[42] ? useAltOnNaCtrs_1_42 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_688 = _useAltCtr_T_687 | _useAltCtr_T_561; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_562 = _useAltCtr_T_2[43] ? useAltOnNaCtrs_1_43 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_689 = _useAltCtr_T_688 | _useAltCtr_T_562; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_563 = _useAltCtr_T_2[44] ? useAltOnNaCtrs_1_44 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_690 = _useAltCtr_T_689 | _useAltCtr_T_563; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_564 = _useAltCtr_T_2[45] ? useAltOnNaCtrs_1_45 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_691 = _useAltCtr_T_690 | _useAltCtr_T_564; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_565 = _useAltCtr_T_2[46] ? useAltOnNaCtrs_1_46 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_692 = _useAltCtr_T_691 | _useAltCtr_T_565; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_566 = _useAltCtr_T_2[47] ? useAltOnNaCtrs_1_47 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_693 = _useAltCtr_T_692 | _useAltCtr_T_566; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_567 = _useAltCtr_T_2[48] ? useAltOnNaCtrs_1_48 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_694 = _useAltCtr_T_693 | _useAltCtr_T_567; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_568 = _useAltCtr_T_2[49] ? useAltOnNaCtrs_1_49 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_695 = _useAltCtr_T_694 | _useAltCtr_T_568; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_569 = _useAltCtr_T_2[50] ? useAltOnNaCtrs_1_50 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_696 = _useAltCtr_T_695 | _useAltCtr_T_569; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_570 = _useAltCtr_T_2[51] ? useAltOnNaCtrs_1_51 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_697 = _useAltCtr_T_696 | _useAltCtr_T_570; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_571 = _useAltCtr_T_2[52] ? useAltOnNaCtrs_1_52 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_698 = _useAltCtr_T_697 | _useAltCtr_T_571; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_572 = _useAltCtr_T_2[53] ? useAltOnNaCtrs_1_53 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_699 = _useAltCtr_T_698 | _useAltCtr_T_572; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_573 = _useAltCtr_T_2[54] ? useAltOnNaCtrs_1_54 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_700 = _useAltCtr_T_699 | _useAltCtr_T_573; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_574 = _useAltCtr_T_2[55] ? useAltOnNaCtrs_1_55 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_701 = _useAltCtr_T_700 | _useAltCtr_T_574; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_575 = _useAltCtr_T_2[56] ? useAltOnNaCtrs_1_56 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_702 = _useAltCtr_T_701 | _useAltCtr_T_575; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_576 = _useAltCtr_T_2[57] ? useAltOnNaCtrs_1_57 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_703 = _useAltCtr_T_702 | _useAltCtr_T_576; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_577 = _useAltCtr_T_2[58] ? useAltOnNaCtrs_1_58 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_704 = _useAltCtr_T_703 | _useAltCtr_T_577; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_578 = _useAltCtr_T_2[59] ? useAltOnNaCtrs_1_59 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_705 = _useAltCtr_T_704 | _useAltCtr_T_578; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_579 = _useAltCtr_T_2[60] ? useAltOnNaCtrs_1_60 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_706 = _useAltCtr_T_705 | _useAltCtr_T_579; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_580 = _useAltCtr_T_2[61] ? useAltOnNaCtrs_1_61 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_707 = _useAltCtr_T_706 | _useAltCtr_T_580; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_581 = _useAltCtr_T_2[62] ? useAltOnNaCtrs_1_62 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_708 = _useAltCtr_T_707 | _useAltCtr_T_581; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_582 = _useAltCtr_T_2[63] ? useAltOnNaCtrs_1_63 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_709 = _useAltCtr_T_708 | _useAltCtr_T_582; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_583 = _useAltCtr_T_2[64] ? useAltOnNaCtrs_1_64 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_710 = _useAltCtr_T_709 | _useAltCtr_T_583; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_584 = _useAltCtr_T_2[65] ? useAltOnNaCtrs_1_65 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_711 = _useAltCtr_T_710 | _useAltCtr_T_584; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_585 = _useAltCtr_T_2[66] ? useAltOnNaCtrs_1_66 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_712 = _useAltCtr_T_711 | _useAltCtr_T_585; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_586 = _useAltCtr_T_2[67] ? useAltOnNaCtrs_1_67 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_713 = _useAltCtr_T_712 | _useAltCtr_T_586; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_587 = _useAltCtr_T_2[68] ? useAltOnNaCtrs_1_68 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_714 = _useAltCtr_T_713 | _useAltCtr_T_587; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_588 = _useAltCtr_T_2[69] ? useAltOnNaCtrs_1_69 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_715 = _useAltCtr_T_714 | _useAltCtr_T_588; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_589 = _useAltCtr_T_2[70] ? useAltOnNaCtrs_1_70 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_716 = _useAltCtr_T_715 | _useAltCtr_T_589; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_590 = _useAltCtr_T_2[71] ? useAltOnNaCtrs_1_71 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_717 = _useAltCtr_T_716 | _useAltCtr_T_590; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_591 = _useAltCtr_T_2[72] ? useAltOnNaCtrs_1_72 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_718 = _useAltCtr_T_717 | _useAltCtr_T_591; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_592 = _useAltCtr_T_2[73] ? useAltOnNaCtrs_1_73 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_719 = _useAltCtr_T_718 | _useAltCtr_T_592; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_593 = _useAltCtr_T_2[74] ? useAltOnNaCtrs_1_74 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_720 = _useAltCtr_T_719 | _useAltCtr_T_593; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_594 = _useAltCtr_T_2[75] ? useAltOnNaCtrs_1_75 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_721 = _useAltCtr_T_720 | _useAltCtr_T_594; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_595 = _useAltCtr_T_2[76] ? useAltOnNaCtrs_1_76 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_722 = _useAltCtr_T_721 | _useAltCtr_T_595; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_596 = _useAltCtr_T_2[77] ? useAltOnNaCtrs_1_77 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_723 = _useAltCtr_T_722 | _useAltCtr_T_596; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_597 = _useAltCtr_T_2[78] ? useAltOnNaCtrs_1_78 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_724 = _useAltCtr_T_723 | _useAltCtr_T_597; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_598 = _useAltCtr_T_2[79] ? useAltOnNaCtrs_1_79 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_725 = _useAltCtr_T_724 | _useAltCtr_T_598; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_599 = _useAltCtr_T_2[80] ? useAltOnNaCtrs_1_80 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_726 = _useAltCtr_T_725 | _useAltCtr_T_599; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_600 = _useAltCtr_T_2[81] ? useAltOnNaCtrs_1_81 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_727 = _useAltCtr_T_726 | _useAltCtr_T_600; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_601 = _useAltCtr_T_2[82] ? useAltOnNaCtrs_1_82 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_728 = _useAltCtr_T_727 | _useAltCtr_T_601; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_602 = _useAltCtr_T_2[83] ? useAltOnNaCtrs_1_83 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_729 = _useAltCtr_T_728 | _useAltCtr_T_602; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_603 = _useAltCtr_T_2[84] ? useAltOnNaCtrs_1_84 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_730 = _useAltCtr_T_729 | _useAltCtr_T_603; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_604 = _useAltCtr_T_2[85] ? useAltOnNaCtrs_1_85 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_731 = _useAltCtr_T_730 | _useAltCtr_T_604; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_605 = _useAltCtr_T_2[86] ? useAltOnNaCtrs_1_86 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_732 = _useAltCtr_T_731 | _useAltCtr_T_605; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_606 = _useAltCtr_T_2[87] ? useAltOnNaCtrs_1_87 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_733 = _useAltCtr_T_732 | _useAltCtr_T_606; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_607 = _useAltCtr_T_2[88] ? useAltOnNaCtrs_1_88 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_734 = _useAltCtr_T_733 | _useAltCtr_T_607; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_608 = _useAltCtr_T_2[89] ? useAltOnNaCtrs_1_89 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_735 = _useAltCtr_T_734 | _useAltCtr_T_608; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_609 = _useAltCtr_T_2[90] ? useAltOnNaCtrs_1_90 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_736 = _useAltCtr_T_735 | _useAltCtr_T_609; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_610 = _useAltCtr_T_2[91] ? useAltOnNaCtrs_1_91 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_737 = _useAltCtr_T_736 | _useAltCtr_T_610; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_611 = _useAltCtr_T_2[92] ? useAltOnNaCtrs_1_92 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_738 = _useAltCtr_T_737 | _useAltCtr_T_611; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_612 = _useAltCtr_T_2[93] ? useAltOnNaCtrs_1_93 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_739 = _useAltCtr_T_738 | _useAltCtr_T_612; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_613 = _useAltCtr_T_2[94] ? useAltOnNaCtrs_1_94 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_740 = _useAltCtr_T_739 | _useAltCtr_T_613; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_614 = _useAltCtr_T_2[95] ? useAltOnNaCtrs_1_95 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_741 = _useAltCtr_T_740 | _useAltCtr_T_614; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_615 = _useAltCtr_T_2[96] ? useAltOnNaCtrs_1_96 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_742 = _useAltCtr_T_741 | _useAltCtr_T_615; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_616 = _useAltCtr_T_2[97] ? useAltOnNaCtrs_1_97 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_743 = _useAltCtr_T_742 | _useAltCtr_T_616; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_617 = _useAltCtr_T_2[98] ? useAltOnNaCtrs_1_98 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_744 = _useAltCtr_T_743 | _useAltCtr_T_617; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_618 = _useAltCtr_T_2[99] ? useAltOnNaCtrs_1_99 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_745 = _useAltCtr_T_744 | _useAltCtr_T_618; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_619 = _useAltCtr_T_2[100] ? useAltOnNaCtrs_1_100 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_746 = _useAltCtr_T_745 | _useAltCtr_T_619; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_620 = _useAltCtr_T_2[101] ? useAltOnNaCtrs_1_101 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_747 = _useAltCtr_T_746 | _useAltCtr_T_620; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_621 = _useAltCtr_T_2[102] ? useAltOnNaCtrs_1_102 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_748 = _useAltCtr_T_747 | _useAltCtr_T_621; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_622 = _useAltCtr_T_2[103] ? useAltOnNaCtrs_1_103 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_749 = _useAltCtr_T_748 | _useAltCtr_T_622; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_623 = _useAltCtr_T_2[104] ? useAltOnNaCtrs_1_104 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_750 = _useAltCtr_T_749 | _useAltCtr_T_623; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_624 = _useAltCtr_T_2[105] ? useAltOnNaCtrs_1_105 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_751 = _useAltCtr_T_750 | _useAltCtr_T_624; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_625 = _useAltCtr_T_2[106] ? useAltOnNaCtrs_1_106 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_752 = _useAltCtr_T_751 | _useAltCtr_T_625; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_626 = _useAltCtr_T_2[107] ? useAltOnNaCtrs_1_107 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_753 = _useAltCtr_T_752 | _useAltCtr_T_626; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_627 = _useAltCtr_T_2[108] ? useAltOnNaCtrs_1_108 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_754 = _useAltCtr_T_753 | _useAltCtr_T_627; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_628 = _useAltCtr_T_2[109] ? useAltOnNaCtrs_1_109 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_755 = _useAltCtr_T_754 | _useAltCtr_T_628; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_629 = _useAltCtr_T_2[110] ? useAltOnNaCtrs_1_110 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_756 = _useAltCtr_T_755 | _useAltCtr_T_629; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_630 = _useAltCtr_T_2[111] ? useAltOnNaCtrs_1_111 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_757 = _useAltCtr_T_756 | _useAltCtr_T_630; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_631 = _useAltCtr_T_2[112] ? useAltOnNaCtrs_1_112 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_758 = _useAltCtr_T_757 | _useAltCtr_T_631; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_632 = _useAltCtr_T_2[113] ? useAltOnNaCtrs_1_113 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_759 = _useAltCtr_T_758 | _useAltCtr_T_632; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_633 = _useAltCtr_T_2[114] ? useAltOnNaCtrs_1_114 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_760 = _useAltCtr_T_759 | _useAltCtr_T_633; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_634 = _useAltCtr_T_2[115] ? useAltOnNaCtrs_1_115 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_761 = _useAltCtr_T_760 | _useAltCtr_T_634; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_635 = _useAltCtr_T_2[116] ? useAltOnNaCtrs_1_116 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_762 = _useAltCtr_T_761 | _useAltCtr_T_635; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_636 = _useAltCtr_T_2[117] ? useAltOnNaCtrs_1_117 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_763 = _useAltCtr_T_762 | _useAltCtr_T_636; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_637 = _useAltCtr_T_2[118] ? useAltOnNaCtrs_1_118 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_764 = _useAltCtr_T_763 | _useAltCtr_T_637; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_638 = _useAltCtr_T_2[119] ? useAltOnNaCtrs_1_119 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_765 = _useAltCtr_T_764 | _useAltCtr_T_638; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_639 = _useAltCtr_T_2[120] ? useAltOnNaCtrs_1_120 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_766 = _useAltCtr_T_765 | _useAltCtr_T_639; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_640 = _useAltCtr_T_2[121] ? useAltOnNaCtrs_1_121 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_767 = _useAltCtr_T_766 | _useAltCtr_T_640; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_641 = _useAltCtr_T_2[122] ? useAltOnNaCtrs_1_122 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_768 = _useAltCtr_T_767 | _useAltCtr_T_641; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_642 = _useAltCtr_T_2[123] ? useAltOnNaCtrs_1_123 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_769 = _useAltCtr_T_768 | _useAltCtr_T_642; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_643 = _useAltCtr_T_2[124] ? useAltOnNaCtrs_1_124 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_770 = _useAltCtr_T_769 | _useAltCtr_T_643; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_644 = _useAltCtr_T_2[125] ? useAltOnNaCtrs_1_125 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_771 = _useAltCtr_T_770 | _useAltCtr_T_644; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_645 = _useAltCtr_T_2[126] ? useAltOnNaCtrs_1_126 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_772 = _useAltCtr_T_771 | _useAltCtr_T_645; // @[Mux.scala 27:73]
  wire [3:0] _useAltCtr_T_646 = _useAltCtr_T_2[127] ? useAltOnNaCtrs_1_127 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] useAltCtr_1 = _useAltCtr_T_772 | _useAltCtr_T_646; // @[Mux.scala 27:73]
  wire  useAltOnNa_1 = useAltCtr_1[3]; // @[Tage.scala 636:31]
  wire  tableInfo_7_use_alt_on_unconf = s1_resps_3_1_bits_unconf & useAltOnNa_1; // @[Tage.scala 642:52]
  wire  tableInfo_6_use_alt_on_unconf = s1_resps_2_1_bits_unconf & useAltOnNa_1; // @[Tage.scala 642:52]
  wire  _providerInfo_T_6_use_alt_on_unconf = s1_resps_3_1_valid ? tableInfo_7_use_alt_on_unconf :
    tableInfo_6_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  tableInfo_5_use_alt_on_unconf = s1_resps_1_1_bits_unconf & useAltOnNa_1; // @[Tage.scala 642:52]
  wire  tableInfo_4_use_alt_on_unconf = s1_resps_0_1_bits_unconf & useAltOnNa_1; // @[Tage.scala 642:52]
  wire  _providerInfo_T_8_use_alt_on_unconf = s1_resps_1_1_valid ? tableInfo_5_use_alt_on_unconf :
    tableInfo_4_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  providerInfo_1_use_alt_on_unconf = s1_resps_3_1_valid | s1_resps_2_1_valid ? _providerInfo_T_6_use_alt_on_unconf
     : _providerInfo_T_8_use_alt_on_unconf; // @[ParallelMux.scala 90:77]
  wire  s1_altUsed_1 = ~provided_1 | providerInfo_1_use_alt_on_unconf; // @[Tage.scala 680:38]
  reg  s2_tageTakens_dup_0_0; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_0_1; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_1_0; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_1_1; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_2_0; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_2_1; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_3_0; // @[Reg.scala 16:16]
  reg  s2_tageTakens_dup_3_1; // @[Reg.scala 16:16]
  reg  s2_finalAltPreds_0; // @[Reg.scala 16:16]
  reg  s2_finalAltPreds_1; // @[Reg.scala 16:16]
  reg [1:0] s2_basecnts_0; // @[Reg.scala 16:16]
  reg [1:0] s2_basecnts_1; // @[Reg.scala 16:16]
  wire [1:0] s1_basecnts_0 = bt_io_s1_cnt_0; // @[Tage.scala 581:33 687:25]
  wire [1:0] s1_basecnts_1 = bt_io_s1_cnt_1; // @[Tage.scala 581:33 687:25]
  reg [5:0] r__0; // @[Reg.scala 16:16]
  reg [5:0] r__1; // @[Reg.scala 16:16]
  reg [5:0] r__2; // @[Reg.scala 16:16]
  reg [5:0] r__3; // @[Reg.scala 16:16]
  reg [5:0] r_1_0; // @[Reg.scala 16:16]
  reg [5:0] r_1_1; // @[Reg.scala 16:16]
  reg [5:0] r_1_2; // @[Reg.scala 16:16]
  reg [5:0] r_1_3; // @[Reg.scala 16:16]
  wire [47:0] io_out_last_stage_meta_lo_lo = {r_1_3,r_1_2,r_1_1,r_1_0,r__3,r__2,r__1,r__0}; // @[Tage.scala 597:39]
  reg  resp_meta_scMeta_scPreds_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_scMeta_scPreds_0_r; // @[Reg.scala 16:16]
  reg  resp_meta_scMeta_scUsed_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_scMeta_scUsed_0_r; // @[Reg.scala 16:16]
  reg  resp_meta_scMeta_tageTakens_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_scMeta_tageTakens_0_r; // @[Reg.scala 16:16]
  reg [3:0] resp_meta_allocates_0_r; // @[Reg.scala 16:16]
  reg  resp_meta_takens_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_takens_0_r; // @[Reg.scala 16:16]
  wire [59:0] io_out_last_stage_meta_lo = {resp_meta_allocates_0_r,resp_meta_takens_1_r,resp_meta_takens_0_r,
    resp_meta_scMeta_tageTakens_1_r,resp_meta_scMeta_tageTakens_0_r,resp_meta_scMeta_scUsed_1_r,
    resp_meta_scMeta_scUsed_0_r,resp_meta_scMeta_scPreds_1_r,resp_meta_scMeta_scPreds_0_r,io_out_last_stage_meta_lo_lo}; // @[Tage.scala 597:39]
  reg [1:0] resp_meta_basecnts_0_r; // @[Reg.scala 16:16]
  reg [3:0] resp_meta_allocates_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_altDiffers_0_r; // @[Reg.scala 16:16]
  reg [1:0] resp_meta_basecnts_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_altUsed_0_r; // @[Reg.scala 16:16]
  reg  resp_meta_altDiffers_1_r; // @[Reg.scala 16:16]
  reg  resp_meta_providerResps_0_runconf; // @[Reg.scala 16:16]
  reg  resp_meta_altUsed_1_r; // @[Reg.scala 16:16]
  wire [12:0] io_out_last_stage_meta_hi_lo = {resp_meta_providerResps_0_runconf,resp_meta_altUsed_1_r,
    resp_meta_altUsed_0_r,resp_meta_altDiffers_1_r,resp_meta_altDiffers_0_r,resp_meta_basecnts_1_r,
    resp_meta_basecnts_0_r,resp_meta_allocates_1_r}; // @[Tage.scala 597:39]
  reg [2:0] resp_meta_providerResps_0_rctr; // @[Reg.scala 16:16]
  reg  resp_meta_providerResps_0_ru; // @[Reg.scala 16:16]
  reg  resp_meta_providerResps_1_ru; // @[Reg.scala 16:16]
  reg  resp_meta_providerResps_1_runconf; // @[Reg.scala 16:16]
  reg [1:0] resp_meta_providers_0_bits_r; // @[Reg.scala 16:16]
  reg [2:0] resp_meta_providerResps_1_rctr; // @[Reg.scala 16:16]
  reg  resp_meta_providers_1_valid_r; // @[Reg.scala 16:16]
  reg [1:0] resp_meta_providers_1_bits_r; // @[Reg.scala 16:16]
  reg  resp_meta_providers_0_valid_r; // @[Reg.scala 16:16]
  wire [27:0] io_out_last_stage_meta_hi = {resp_meta_providers_1_valid_r,resp_meta_providers_1_bits_r,
    resp_meta_providers_0_valid_r,resp_meta_providers_0_bits_r,resp_meta_providerResps_1_rctr,
    resp_meta_providerResps_1_ru,resp_meta_providerResps_1_runconf,resp_meta_providerResps_0_rctr,
    resp_meta_providerResps_0_ru,io_out_last_stage_meta_hi_lo}; // @[Tage.scala 597:39]
  wire [87:0] _io_out_last_stage_meta_T_8 = {io_out_last_stage_meta_hi,io_out_last_stage_meta_lo}; // @[Tage.scala 597:39]
  wire  _updateValids_T = io_update_bits_ftb_entry_tailSlot_valid & io_update_bits_ftb_entry_tailSlot_sharing; // @[FTB.scala 207:47]
  wire  updateValids_0 = io_update_bits_ftb_entry_brSlots_0_valid & io_update_valid & ~
    io_update_bits_ftb_entry_always_taken_0; // @[Tage.scala 605:47]
  wire  _updateValids_T_4 = io_update_bits_br_taken_mask_0 ? 1'h0 : 1'h1; // @[Mux.scala 47:70]
  wire  _updateValids_T_14 = ~(_updateValids_T_4 < 1'h1); // @[Tage.scala 606:7]
  wire  updateValids_1 = _updateValids_T & io_update_valid & ~io_update_bits_ftb_entry_always_taken_1 &
    _updateValids_T_14; // @[Tage.scala 605:84]
  wire  updateMeta_scMeta_scPreds_0 = io_update_bits_meta[48]; // @[Tage.scala 609:40]
  wire  updateMeta_scMeta_scPreds_1 = io_update_bits_meta[49]; // @[Tage.scala 609:40]
  wire  updateMeta_scMeta_scUsed_0 = io_update_bits_meta[50]; // @[Tage.scala 609:40]
  wire  updateMeta_scMeta_scUsed_1 = io_update_bits_meta[51]; // @[Tage.scala 609:40]
  wire  updateMeta_scMeta_tageTakens_0 = io_update_bits_meta[52]; // @[Tage.scala 609:40]
  wire  updateMeta_scMeta_tageTakens_1 = io_update_bits_meta[53]; // @[Tage.scala 609:40]
  wire [3:0] updateMeta_allocates_0 = io_update_bits_meta[59:56]; // @[Tage.scala 609:40]
  wire [3:0] updateMeta_allocates_1 = io_update_bits_meta[63:60]; // @[Tage.scala 609:40]
  wire [1:0] updateMeta_basecnts_0 = io_update_bits_meta[65:64]; // @[Tage.scala 609:40]
  wire [1:0] updateMeta_basecnts_1 = io_update_bits_meta[67:66]; // @[Tage.scala 609:40]
  wire  updateMeta_altDiffers_0 = io_update_bits_meta[68]; // @[Tage.scala 609:40]
  wire  updateMeta_altDiffers_1 = io_update_bits_meta[69]; // @[Tage.scala 609:40]
  wire  updateMeta_altUsed_0 = io_update_bits_meta[70]; // @[Tage.scala 609:40]
  wire  updateMeta_altUsed_1 = io_update_bits_meta[71]; // @[Tage.scala 609:40]
  wire [2:0] updateMeta_providerResps_0_ctr = io_update_bits_meta[76:74]; // @[Tage.scala 609:40]
  wire [2:0] updateMeta_providerResps_1_ctr = io_update_bits_meta[81:79]; // @[Tage.scala 609:40]
  wire [1:0] updateMeta_providers_0_bits = io_update_bits_meta[83:82]; // @[Tage.scala 609:40]
  wire  updateMeta_providers_0_valid = io_update_bits_meta[84]; // @[Tage.scala 609:40]
  wire [1:0] updateMeta_providers_1_bits = io_update_bits_meta[86:85]; // @[Tage.scala 609:40]
  wire  updateMeta_providers_1_valid = io_update_bits_meta[87]; // @[Tage.scala 609:40]
  wire  _allocatableSlots_T_2 = ~s1_resps_0_0_valid & ~s1_resps_0_0_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_5 = ~s1_resps_1_0_valid & ~s1_resps_1_0_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_8 = ~s1_resps_2_0_valid & ~s1_resps_2_0_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_11 = ~s1_resps_3_0_valid & ~s1_resps_3_0_bits_u; // @[Tage.scala 671:50]
  wire [3:0] _allocatableSlots_T_12 = {_allocatableSlots_T_11,_allocatableSlots_T_8,_allocatableSlots_T_5,
    _allocatableSlots_T_2}; // @[Tage.scala 671:65]
  wire [3:0] _allocatableSlots_T_13 = 4'h1 << providerInfo_tableIdx; // @[OneHot.scala 57:35]
  wire [3:0] _GEN_1340 = {{1'd0}, _allocatableSlots_T_13[3:1]}; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_T_18 = _allocatableSlots_T_13 | _GEN_1340; // @[ParallelMux.scala 36:53]
  wire [1:0] _GEN_1341 = {{1'd0}, _allocatableSlots_T_13[3]}; // @[ParallelMux.scala 36:53]
  wire [1:0] _allocatableSlots_T_19 = _allocatableSlots_T_13[3:2] | _GEN_1341; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_WIRE_2 = {{2'd0}, _allocatableSlots_T_19}; // @[ParallelMux.scala 36:{73,73}]
  wire [3:0] _allocatableSlots_T_20 = _allocatableSlots_T_18 | _allocatableSlots_WIRE_2; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_T_22 = provided ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _allocatableSlots_T_23 = _allocatableSlots_T_20 & _allocatableSlots_T_22; // @[Tage.scala 672:63]
  wire [3:0] _allocatableSlots_T_24 = ~_allocatableSlots_T_23; // @[Tage.scala 672:11]
  wire [3:0] _allocatableSlots_T_25 = _allocatableSlots_T_12 & _allocatableSlots_T_24; // @[Tage.scala 671:72]
  reg [3:0] allocatableSlots; // @[Reg.scala 16:16]
  wire  _resp_meta_altDiffers_0_T = s2_finalAltPreds_0 != s2_tageTakens_dup_0_0; // @[Tage.scala 691:62]
  reg  tage_enable_dup_REG; // @[Tage.scala 695:38]
  wire  updateTaken = updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
  wire  updateProviderCorrect = updateMeta_providerResps_0_ctr[2] == updateTaken; // @[Tage.scala 710:71]
  wire [6:0] updateAltIdx = io_update_bits_pc[7:1]; // @[Tage.scala 46:53]
  wire [127:0] _updateUseAltCtr_T = 128'h1 << updateAltIdx; // @[OneHot.scala 64:12]
  wire [3:0] _updateUseAltCtr_T_130 = _updateUseAltCtr_T[0] ? useAltOnNaCtrs_0_0 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_131 = _updateUseAltCtr_T[1] ? useAltOnNaCtrs_0_1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_132 = _updateUseAltCtr_T[2] ? useAltOnNaCtrs_0_2 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_133 = _updateUseAltCtr_T[3] ? useAltOnNaCtrs_0_3 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_134 = _updateUseAltCtr_T[4] ? useAltOnNaCtrs_0_4 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_135 = _updateUseAltCtr_T[5] ? useAltOnNaCtrs_0_5 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_136 = _updateUseAltCtr_T[6] ? useAltOnNaCtrs_0_6 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_137 = _updateUseAltCtr_T[7] ? useAltOnNaCtrs_0_7 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_138 = _updateUseAltCtr_T[8] ? useAltOnNaCtrs_0_8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_139 = _updateUseAltCtr_T[9] ? useAltOnNaCtrs_0_9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_140 = _updateUseAltCtr_T[10] ? useAltOnNaCtrs_0_10 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_141 = _updateUseAltCtr_T[11] ? useAltOnNaCtrs_0_11 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_142 = _updateUseAltCtr_T[12] ? useAltOnNaCtrs_0_12 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_143 = _updateUseAltCtr_T[13] ? useAltOnNaCtrs_0_13 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_144 = _updateUseAltCtr_T[14] ? useAltOnNaCtrs_0_14 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_145 = _updateUseAltCtr_T[15] ? useAltOnNaCtrs_0_15 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_146 = _updateUseAltCtr_T[16] ? useAltOnNaCtrs_0_16 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_147 = _updateUseAltCtr_T[17] ? useAltOnNaCtrs_0_17 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_148 = _updateUseAltCtr_T[18] ? useAltOnNaCtrs_0_18 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_149 = _updateUseAltCtr_T[19] ? useAltOnNaCtrs_0_19 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_150 = _updateUseAltCtr_T[20] ? useAltOnNaCtrs_0_20 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_151 = _updateUseAltCtr_T[21] ? useAltOnNaCtrs_0_21 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_152 = _updateUseAltCtr_T[22] ? useAltOnNaCtrs_0_22 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_153 = _updateUseAltCtr_T[23] ? useAltOnNaCtrs_0_23 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_154 = _updateUseAltCtr_T[24] ? useAltOnNaCtrs_0_24 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_155 = _updateUseAltCtr_T[25] ? useAltOnNaCtrs_0_25 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_156 = _updateUseAltCtr_T[26] ? useAltOnNaCtrs_0_26 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_157 = _updateUseAltCtr_T[27] ? useAltOnNaCtrs_0_27 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_158 = _updateUseAltCtr_T[28] ? useAltOnNaCtrs_0_28 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_159 = _updateUseAltCtr_T[29] ? useAltOnNaCtrs_0_29 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_160 = _updateUseAltCtr_T[30] ? useAltOnNaCtrs_0_30 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_161 = _updateUseAltCtr_T[31] ? useAltOnNaCtrs_0_31 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_162 = _updateUseAltCtr_T[32] ? useAltOnNaCtrs_0_32 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_163 = _updateUseAltCtr_T[33] ? useAltOnNaCtrs_0_33 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_164 = _updateUseAltCtr_T[34] ? useAltOnNaCtrs_0_34 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_165 = _updateUseAltCtr_T[35] ? useAltOnNaCtrs_0_35 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_166 = _updateUseAltCtr_T[36] ? useAltOnNaCtrs_0_36 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_167 = _updateUseAltCtr_T[37] ? useAltOnNaCtrs_0_37 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_168 = _updateUseAltCtr_T[38] ? useAltOnNaCtrs_0_38 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_169 = _updateUseAltCtr_T[39] ? useAltOnNaCtrs_0_39 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_170 = _updateUseAltCtr_T[40] ? useAltOnNaCtrs_0_40 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_171 = _updateUseAltCtr_T[41] ? useAltOnNaCtrs_0_41 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_172 = _updateUseAltCtr_T[42] ? useAltOnNaCtrs_0_42 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_173 = _updateUseAltCtr_T[43] ? useAltOnNaCtrs_0_43 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_174 = _updateUseAltCtr_T[44] ? useAltOnNaCtrs_0_44 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_175 = _updateUseAltCtr_T[45] ? useAltOnNaCtrs_0_45 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_176 = _updateUseAltCtr_T[46] ? useAltOnNaCtrs_0_46 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_177 = _updateUseAltCtr_T[47] ? useAltOnNaCtrs_0_47 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_178 = _updateUseAltCtr_T[48] ? useAltOnNaCtrs_0_48 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_179 = _updateUseAltCtr_T[49] ? useAltOnNaCtrs_0_49 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_180 = _updateUseAltCtr_T[50] ? useAltOnNaCtrs_0_50 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_181 = _updateUseAltCtr_T[51] ? useAltOnNaCtrs_0_51 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_182 = _updateUseAltCtr_T[52] ? useAltOnNaCtrs_0_52 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_183 = _updateUseAltCtr_T[53] ? useAltOnNaCtrs_0_53 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_184 = _updateUseAltCtr_T[54] ? useAltOnNaCtrs_0_54 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_185 = _updateUseAltCtr_T[55] ? useAltOnNaCtrs_0_55 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_186 = _updateUseAltCtr_T[56] ? useAltOnNaCtrs_0_56 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_187 = _updateUseAltCtr_T[57] ? useAltOnNaCtrs_0_57 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_188 = _updateUseAltCtr_T[58] ? useAltOnNaCtrs_0_58 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_189 = _updateUseAltCtr_T[59] ? useAltOnNaCtrs_0_59 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_190 = _updateUseAltCtr_T[60] ? useAltOnNaCtrs_0_60 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_191 = _updateUseAltCtr_T[61] ? useAltOnNaCtrs_0_61 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_192 = _updateUseAltCtr_T[62] ? useAltOnNaCtrs_0_62 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_193 = _updateUseAltCtr_T[63] ? useAltOnNaCtrs_0_63 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_194 = _updateUseAltCtr_T[64] ? useAltOnNaCtrs_0_64 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_195 = _updateUseAltCtr_T[65] ? useAltOnNaCtrs_0_65 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_196 = _updateUseAltCtr_T[66] ? useAltOnNaCtrs_0_66 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_197 = _updateUseAltCtr_T[67] ? useAltOnNaCtrs_0_67 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_198 = _updateUseAltCtr_T[68] ? useAltOnNaCtrs_0_68 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_199 = _updateUseAltCtr_T[69] ? useAltOnNaCtrs_0_69 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_200 = _updateUseAltCtr_T[70] ? useAltOnNaCtrs_0_70 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_201 = _updateUseAltCtr_T[71] ? useAltOnNaCtrs_0_71 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_202 = _updateUseAltCtr_T[72] ? useAltOnNaCtrs_0_72 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_203 = _updateUseAltCtr_T[73] ? useAltOnNaCtrs_0_73 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_204 = _updateUseAltCtr_T[74] ? useAltOnNaCtrs_0_74 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_205 = _updateUseAltCtr_T[75] ? useAltOnNaCtrs_0_75 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_206 = _updateUseAltCtr_T[76] ? useAltOnNaCtrs_0_76 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_207 = _updateUseAltCtr_T[77] ? useAltOnNaCtrs_0_77 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_208 = _updateUseAltCtr_T[78] ? useAltOnNaCtrs_0_78 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_209 = _updateUseAltCtr_T[79] ? useAltOnNaCtrs_0_79 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_210 = _updateUseAltCtr_T[80] ? useAltOnNaCtrs_0_80 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_211 = _updateUseAltCtr_T[81] ? useAltOnNaCtrs_0_81 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_212 = _updateUseAltCtr_T[82] ? useAltOnNaCtrs_0_82 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_213 = _updateUseAltCtr_T[83] ? useAltOnNaCtrs_0_83 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_214 = _updateUseAltCtr_T[84] ? useAltOnNaCtrs_0_84 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_215 = _updateUseAltCtr_T[85] ? useAltOnNaCtrs_0_85 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_216 = _updateUseAltCtr_T[86] ? useAltOnNaCtrs_0_86 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_217 = _updateUseAltCtr_T[87] ? useAltOnNaCtrs_0_87 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_218 = _updateUseAltCtr_T[88] ? useAltOnNaCtrs_0_88 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_219 = _updateUseAltCtr_T[89] ? useAltOnNaCtrs_0_89 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_220 = _updateUseAltCtr_T[90] ? useAltOnNaCtrs_0_90 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_221 = _updateUseAltCtr_T[91] ? useAltOnNaCtrs_0_91 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_222 = _updateUseAltCtr_T[92] ? useAltOnNaCtrs_0_92 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_223 = _updateUseAltCtr_T[93] ? useAltOnNaCtrs_0_93 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_224 = _updateUseAltCtr_T[94] ? useAltOnNaCtrs_0_94 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_225 = _updateUseAltCtr_T[95] ? useAltOnNaCtrs_0_95 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_226 = _updateUseAltCtr_T[96] ? useAltOnNaCtrs_0_96 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_227 = _updateUseAltCtr_T[97] ? useAltOnNaCtrs_0_97 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_228 = _updateUseAltCtr_T[98] ? useAltOnNaCtrs_0_98 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_229 = _updateUseAltCtr_T[99] ? useAltOnNaCtrs_0_99 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_230 = _updateUseAltCtr_T[100] ? useAltOnNaCtrs_0_100 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_231 = _updateUseAltCtr_T[101] ? useAltOnNaCtrs_0_101 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_232 = _updateUseAltCtr_T[102] ? useAltOnNaCtrs_0_102 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_233 = _updateUseAltCtr_T[103] ? useAltOnNaCtrs_0_103 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_234 = _updateUseAltCtr_T[104] ? useAltOnNaCtrs_0_104 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_235 = _updateUseAltCtr_T[105] ? useAltOnNaCtrs_0_105 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_236 = _updateUseAltCtr_T[106] ? useAltOnNaCtrs_0_106 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_237 = _updateUseAltCtr_T[107] ? useAltOnNaCtrs_0_107 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_238 = _updateUseAltCtr_T[108] ? useAltOnNaCtrs_0_108 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_239 = _updateUseAltCtr_T[109] ? useAltOnNaCtrs_0_109 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_240 = _updateUseAltCtr_T[110] ? useAltOnNaCtrs_0_110 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_241 = _updateUseAltCtr_T[111] ? useAltOnNaCtrs_0_111 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_242 = _updateUseAltCtr_T[112] ? useAltOnNaCtrs_0_112 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_243 = _updateUseAltCtr_T[113] ? useAltOnNaCtrs_0_113 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_244 = _updateUseAltCtr_T[114] ? useAltOnNaCtrs_0_114 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_245 = _updateUseAltCtr_T[115] ? useAltOnNaCtrs_0_115 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_246 = _updateUseAltCtr_T[116] ? useAltOnNaCtrs_0_116 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_247 = _updateUseAltCtr_T[117] ? useAltOnNaCtrs_0_117 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_248 = _updateUseAltCtr_T[118] ? useAltOnNaCtrs_0_118 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_249 = _updateUseAltCtr_T[119] ? useAltOnNaCtrs_0_119 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_250 = _updateUseAltCtr_T[120] ? useAltOnNaCtrs_0_120 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_251 = _updateUseAltCtr_T[121] ? useAltOnNaCtrs_0_121 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_252 = _updateUseAltCtr_T[122] ? useAltOnNaCtrs_0_122 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_253 = _updateUseAltCtr_T[123] ? useAltOnNaCtrs_0_123 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_254 = _updateUseAltCtr_T[124] ? useAltOnNaCtrs_0_124 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_255 = _updateUseAltCtr_T[125] ? useAltOnNaCtrs_0_125 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_256 = _updateUseAltCtr_T[126] ? useAltOnNaCtrs_0_126 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_257 = _updateUseAltCtr_T[127] ? useAltOnNaCtrs_0_127 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_258 = _updateUseAltCtr_T_130 | _updateUseAltCtr_T_131; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_259 = _updateUseAltCtr_T_258 | _updateUseAltCtr_T_132; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_260 = _updateUseAltCtr_T_259 | _updateUseAltCtr_T_133; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_261 = _updateUseAltCtr_T_260 | _updateUseAltCtr_T_134; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_262 = _updateUseAltCtr_T_261 | _updateUseAltCtr_T_135; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_263 = _updateUseAltCtr_T_262 | _updateUseAltCtr_T_136; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_264 = _updateUseAltCtr_T_263 | _updateUseAltCtr_T_137; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_265 = _updateUseAltCtr_T_264 | _updateUseAltCtr_T_138; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_266 = _updateUseAltCtr_T_265 | _updateUseAltCtr_T_139; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_267 = _updateUseAltCtr_T_266 | _updateUseAltCtr_T_140; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_268 = _updateUseAltCtr_T_267 | _updateUseAltCtr_T_141; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_269 = _updateUseAltCtr_T_268 | _updateUseAltCtr_T_142; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_270 = _updateUseAltCtr_T_269 | _updateUseAltCtr_T_143; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_271 = _updateUseAltCtr_T_270 | _updateUseAltCtr_T_144; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_272 = _updateUseAltCtr_T_271 | _updateUseAltCtr_T_145; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_273 = _updateUseAltCtr_T_272 | _updateUseAltCtr_T_146; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_274 = _updateUseAltCtr_T_273 | _updateUseAltCtr_T_147; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_275 = _updateUseAltCtr_T_274 | _updateUseAltCtr_T_148; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_276 = _updateUseAltCtr_T_275 | _updateUseAltCtr_T_149; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_277 = _updateUseAltCtr_T_276 | _updateUseAltCtr_T_150; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_278 = _updateUseAltCtr_T_277 | _updateUseAltCtr_T_151; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_279 = _updateUseAltCtr_T_278 | _updateUseAltCtr_T_152; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_280 = _updateUseAltCtr_T_279 | _updateUseAltCtr_T_153; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_281 = _updateUseAltCtr_T_280 | _updateUseAltCtr_T_154; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_282 = _updateUseAltCtr_T_281 | _updateUseAltCtr_T_155; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_283 = _updateUseAltCtr_T_282 | _updateUseAltCtr_T_156; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_284 = _updateUseAltCtr_T_283 | _updateUseAltCtr_T_157; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_285 = _updateUseAltCtr_T_284 | _updateUseAltCtr_T_158; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_286 = _updateUseAltCtr_T_285 | _updateUseAltCtr_T_159; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_287 = _updateUseAltCtr_T_286 | _updateUseAltCtr_T_160; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_288 = _updateUseAltCtr_T_287 | _updateUseAltCtr_T_161; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_289 = _updateUseAltCtr_T_288 | _updateUseAltCtr_T_162; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_290 = _updateUseAltCtr_T_289 | _updateUseAltCtr_T_163; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_291 = _updateUseAltCtr_T_290 | _updateUseAltCtr_T_164; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_292 = _updateUseAltCtr_T_291 | _updateUseAltCtr_T_165; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_293 = _updateUseAltCtr_T_292 | _updateUseAltCtr_T_166; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_294 = _updateUseAltCtr_T_293 | _updateUseAltCtr_T_167; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_295 = _updateUseAltCtr_T_294 | _updateUseAltCtr_T_168; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_296 = _updateUseAltCtr_T_295 | _updateUseAltCtr_T_169; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_297 = _updateUseAltCtr_T_296 | _updateUseAltCtr_T_170; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_298 = _updateUseAltCtr_T_297 | _updateUseAltCtr_T_171; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_299 = _updateUseAltCtr_T_298 | _updateUseAltCtr_T_172; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_300 = _updateUseAltCtr_T_299 | _updateUseAltCtr_T_173; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_301 = _updateUseAltCtr_T_300 | _updateUseAltCtr_T_174; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_302 = _updateUseAltCtr_T_301 | _updateUseAltCtr_T_175; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_303 = _updateUseAltCtr_T_302 | _updateUseAltCtr_T_176; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_304 = _updateUseAltCtr_T_303 | _updateUseAltCtr_T_177; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_305 = _updateUseAltCtr_T_304 | _updateUseAltCtr_T_178; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_306 = _updateUseAltCtr_T_305 | _updateUseAltCtr_T_179; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_307 = _updateUseAltCtr_T_306 | _updateUseAltCtr_T_180; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_308 = _updateUseAltCtr_T_307 | _updateUseAltCtr_T_181; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_309 = _updateUseAltCtr_T_308 | _updateUseAltCtr_T_182; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_310 = _updateUseAltCtr_T_309 | _updateUseAltCtr_T_183; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_311 = _updateUseAltCtr_T_310 | _updateUseAltCtr_T_184; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_312 = _updateUseAltCtr_T_311 | _updateUseAltCtr_T_185; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_313 = _updateUseAltCtr_T_312 | _updateUseAltCtr_T_186; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_314 = _updateUseAltCtr_T_313 | _updateUseAltCtr_T_187; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_315 = _updateUseAltCtr_T_314 | _updateUseAltCtr_T_188; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_316 = _updateUseAltCtr_T_315 | _updateUseAltCtr_T_189; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_317 = _updateUseAltCtr_T_316 | _updateUseAltCtr_T_190; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_318 = _updateUseAltCtr_T_317 | _updateUseAltCtr_T_191; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_319 = _updateUseAltCtr_T_318 | _updateUseAltCtr_T_192; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_320 = _updateUseAltCtr_T_319 | _updateUseAltCtr_T_193; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_321 = _updateUseAltCtr_T_320 | _updateUseAltCtr_T_194; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_322 = _updateUseAltCtr_T_321 | _updateUseAltCtr_T_195; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_323 = _updateUseAltCtr_T_322 | _updateUseAltCtr_T_196; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_324 = _updateUseAltCtr_T_323 | _updateUseAltCtr_T_197; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_325 = _updateUseAltCtr_T_324 | _updateUseAltCtr_T_198; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_326 = _updateUseAltCtr_T_325 | _updateUseAltCtr_T_199; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_327 = _updateUseAltCtr_T_326 | _updateUseAltCtr_T_200; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_328 = _updateUseAltCtr_T_327 | _updateUseAltCtr_T_201; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_329 = _updateUseAltCtr_T_328 | _updateUseAltCtr_T_202; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_330 = _updateUseAltCtr_T_329 | _updateUseAltCtr_T_203; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_331 = _updateUseAltCtr_T_330 | _updateUseAltCtr_T_204; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_332 = _updateUseAltCtr_T_331 | _updateUseAltCtr_T_205; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_333 = _updateUseAltCtr_T_332 | _updateUseAltCtr_T_206; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_334 = _updateUseAltCtr_T_333 | _updateUseAltCtr_T_207; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_335 = _updateUseAltCtr_T_334 | _updateUseAltCtr_T_208; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_336 = _updateUseAltCtr_T_335 | _updateUseAltCtr_T_209; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_337 = _updateUseAltCtr_T_336 | _updateUseAltCtr_T_210; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_338 = _updateUseAltCtr_T_337 | _updateUseAltCtr_T_211; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_339 = _updateUseAltCtr_T_338 | _updateUseAltCtr_T_212; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_340 = _updateUseAltCtr_T_339 | _updateUseAltCtr_T_213; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_341 = _updateUseAltCtr_T_340 | _updateUseAltCtr_T_214; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_342 = _updateUseAltCtr_T_341 | _updateUseAltCtr_T_215; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_343 = _updateUseAltCtr_T_342 | _updateUseAltCtr_T_216; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_344 = _updateUseAltCtr_T_343 | _updateUseAltCtr_T_217; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_345 = _updateUseAltCtr_T_344 | _updateUseAltCtr_T_218; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_346 = _updateUseAltCtr_T_345 | _updateUseAltCtr_T_219; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_347 = _updateUseAltCtr_T_346 | _updateUseAltCtr_T_220; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_348 = _updateUseAltCtr_T_347 | _updateUseAltCtr_T_221; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_349 = _updateUseAltCtr_T_348 | _updateUseAltCtr_T_222; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_350 = _updateUseAltCtr_T_349 | _updateUseAltCtr_T_223; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_351 = _updateUseAltCtr_T_350 | _updateUseAltCtr_T_224; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_352 = _updateUseAltCtr_T_351 | _updateUseAltCtr_T_225; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_353 = _updateUseAltCtr_T_352 | _updateUseAltCtr_T_226; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_354 = _updateUseAltCtr_T_353 | _updateUseAltCtr_T_227; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_355 = _updateUseAltCtr_T_354 | _updateUseAltCtr_T_228; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_356 = _updateUseAltCtr_T_355 | _updateUseAltCtr_T_229; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_357 = _updateUseAltCtr_T_356 | _updateUseAltCtr_T_230; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_358 = _updateUseAltCtr_T_357 | _updateUseAltCtr_T_231; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_359 = _updateUseAltCtr_T_358 | _updateUseAltCtr_T_232; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_360 = _updateUseAltCtr_T_359 | _updateUseAltCtr_T_233; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_361 = _updateUseAltCtr_T_360 | _updateUseAltCtr_T_234; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_362 = _updateUseAltCtr_T_361 | _updateUseAltCtr_T_235; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_363 = _updateUseAltCtr_T_362 | _updateUseAltCtr_T_236; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_364 = _updateUseAltCtr_T_363 | _updateUseAltCtr_T_237; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_365 = _updateUseAltCtr_T_364 | _updateUseAltCtr_T_238; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_366 = _updateUseAltCtr_T_365 | _updateUseAltCtr_T_239; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_367 = _updateUseAltCtr_T_366 | _updateUseAltCtr_T_240; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_368 = _updateUseAltCtr_T_367 | _updateUseAltCtr_T_241; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_369 = _updateUseAltCtr_T_368 | _updateUseAltCtr_T_242; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_370 = _updateUseAltCtr_T_369 | _updateUseAltCtr_T_243; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_371 = _updateUseAltCtr_T_370 | _updateUseAltCtr_T_244; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_372 = _updateUseAltCtr_T_371 | _updateUseAltCtr_T_245; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_373 = _updateUseAltCtr_T_372 | _updateUseAltCtr_T_246; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_374 = _updateUseAltCtr_T_373 | _updateUseAltCtr_T_247; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_375 = _updateUseAltCtr_T_374 | _updateUseAltCtr_T_248; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_376 = _updateUseAltCtr_T_375 | _updateUseAltCtr_T_249; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_377 = _updateUseAltCtr_T_376 | _updateUseAltCtr_T_250; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_378 = _updateUseAltCtr_T_377 | _updateUseAltCtr_T_251; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_379 = _updateUseAltCtr_T_378 | _updateUseAltCtr_T_252; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_380 = _updateUseAltCtr_T_379 | _updateUseAltCtr_T_253; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_381 = _updateUseAltCtr_T_380 | _updateUseAltCtr_T_254; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_382 = _updateUseAltCtr_T_381 | _updateUseAltCtr_T_255; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_383 = _updateUseAltCtr_T_382 | _updateUseAltCtr_T_256; // @[Mux.scala 27:73]
  wire [3:0] updateUseAltCtr = _updateUseAltCtr_T_383 | _updateUseAltCtr_T_257; // @[Mux.scala 27:73]
  wire  updateAltPred = updateMeta_basecnts_0[1]; // @[Tage.scala 134:32]
  wire  updateAltCorrect = updateAltPred == updateTaken; // @[Tage.scala 716:42]
  wire  updateProviderWeakTaken = updateMeta_providerResps_0_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  updateProviderWeaknotTaken = updateMeta_providerResps_0_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  updateProviderWeak = updateProviderWeakTaken | updateProviderWeaknotTaken; // @[Tage.scala 57:42]
  wire  newCtr_oldSatTaken = updateUseAltCtr == 4'hf; // @[BPU.scala 95:27]
  wire  newCtr_oldSatNotTaken = updateUseAltCtr == 4'h0; // @[BPU.scala 96:30]
  wire [3:0] _newCtr_T_4 = updateUseAltCtr + 4'h1; // @[BPU.scala 99:24]
  wire [3:0] _newCtr_T_6 = updateUseAltCtr - 4'h1; // @[BPU.scala 99:35]
  wire [3:0] _newCtr_T_7 = updateAltCorrect ? _newCtr_T_4 : _newCtr_T_6; // @[BPU.scala 99:12]
  wire [3:0] _newCtr_T_8 = newCtr_oldSatNotTaken & ~updateAltCorrect ? 4'h0 : _newCtr_T_7; // @[BPU.scala 98:10]
  wire  _GEN_443 = 2'h0 == updateMeta_providers_0_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_444 = 2'h1 == updateMeta_providers_0_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_445 = 2'h2 == updateMeta_providers_0_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_446 = 2'h3 == updateMeta_providers_0_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_447 = _GEN_443 & updateMeta_altDiffers_0; // @[Tage.scala 747:{40,40}]
  wire  _GEN_448 = _GEN_444 & updateMeta_altDiffers_0; // @[Tage.scala 747:{40,40}]
  wire  _GEN_449 = _GEN_445 & updateMeta_altDiffers_0; // @[Tage.scala 747:{40,40}]
  wire  _GEN_450 = _GEN_446 & updateMeta_altDiffers_0; // @[Tage.scala 747:{40,40}]
  wire  _GEN_467 = updateMeta_providers_0_valid & _GEN_443; // @[Tage.scala 745:29]
  wire  _GEN_468 = updateMeta_providers_0_valid & _GEN_444; // @[Tage.scala 745:29]
  wire  _GEN_469 = updateMeta_providers_0_valid & _GEN_445; // @[Tage.scala 745:29]
  wire  _GEN_470 = updateMeta_providers_0_valid & _GEN_446; // @[Tage.scala 745:29]
  wire  _GEN_471 = updateMeta_providers_0_valid & _GEN_447; // @[Tage.scala 745:29]
  wire  _GEN_472 = updateMeta_providers_0_valid & _GEN_448; // @[Tage.scala 745:29]
  wire  _GEN_473 = updateMeta_providers_0_valid & _GEN_449; // @[Tage.scala 745:29]
  wire  _GEN_474 = updateMeta_providers_0_valid & _GEN_450; // @[Tage.scala 745:29]
  wire  _GEN_491 = updateValids_0 & _GEN_467; // @[Tage.scala 744:22]
  wire  _GEN_492 = updateValids_0 & _GEN_468; // @[Tage.scala 744:22]
  wire  _GEN_493 = updateValids_0 & _GEN_469; // @[Tage.scala 744:22]
  wire  _GEN_494 = updateValids_0 & _GEN_470; // @[Tage.scala 744:22]
  wire  _GEN_495 = updateValids_0 & _GEN_471; // @[Tage.scala 744:22]
  wire  _GEN_496 = updateValids_0 & _GEN_472; // @[Tage.scala 744:22]
  wire  _GEN_497 = updateValids_0 & _GEN_473; // @[Tage.scala 744:22]
  wire  _GEN_498 = updateValids_0 & _GEN_474; // @[Tage.scala 744:22]
  wire  needToAllocate = updateValids_0 & io_update_bits_mispred_mask_0 & ~(updateMeta_altUsed_0 & updateProviderCorrect
     & updateMeta_providers_0_valid); // @[Tage.scala 760:53]
  wire  canAllocate = |updateMeta_allocates_0; // @[Tage.scala 135:39]
  wire  _canAllocate_T = |updateMeta_allocates_1; // @[Tage.scala 135:39]
  reg [63:0] allocLFSR_lfsr; // @[LFSR64.scala 27:33]
  wire  allocLFSR_xor = allocLFSR_lfsr[0] ^ allocLFSR_lfsr[1] ^ allocLFSR_lfsr[3] ^ allocLFSR_lfsr[4]; // @[LFSR64.scala 29:43]
  wire [63:0] _allocLFSR_lfsr_T_2 = {allocLFSR_xor,allocLFSR_lfsr[63:1]}; // @[Cat.scala 31:58]
  wire [3:0] allocLFSR = allocLFSR_lfsr[3:0]; // @[Tage.scala 764:29]
  wire [3:0] _longerHistoryTableMask_T = 4'h1 << updateMeta_providers_0_bits; // @[OneHot.scala 57:35]
  wire [3:0] _GEN_1346 = {{1'd0}, _longerHistoryTableMask_T[3:1]}; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_T_5 = _longerHistoryTableMask_T | _GEN_1346; // @[ParallelMux.scala 36:53]
  wire [1:0] _GEN_1347 = {{1'd0}, _longerHistoryTableMask_T[3]}; // @[ParallelMux.scala 36:53]
  wire [1:0] _longerHistoryTableMask_T_6 = _longerHistoryTableMask_T[3:2] | _GEN_1347; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_WIRE_1 = {{2'd0}, _longerHistoryTableMask_T_6}; // @[ParallelMux.scala 36:{73,73}]
  wire [3:0] _longerHistoryTableMask_T_7 = _longerHistoryTableMask_T_5 | _longerHistoryTableMask_WIRE_1; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_T_9 = updateMeta_providers_0_valid ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _longerHistoryTableMask_T_10 = _longerHistoryTableMask_T_7 & _longerHistoryTableMask_T_9; // @[Tage.scala 765:85]
  wire [3:0] longerHistoryTableMask = ~_longerHistoryTableMask_T_10; // @[Tage.scala 765:34]
  wire [3:0] canAllocMask = updateMeta_allocates_0 & longerHistoryTableMask; // @[Tage.scala 766:40]
  wire [3:0] _allocFailureMask_T = ~updateMeta_allocates_0; // @[Tage.scala 767:28]
  wire [3:0] allocFailureMask = _allocFailureMask_T & longerHistoryTableMask; // @[Tage.scala 767:45]
  wire [1:0] _tickInc_T_4 = allocFailureMask[0] + allocFailureMask[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_6 = allocFailureMask[2] + allocFailureMask[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _tickInc_T_8 = _tickInc_T_4 + _tickInc_T_6; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_14 = canAllocMask[0] + canAllocMask[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_16 = canAllocMask[2] + canAllocMask[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _tickInc_T_18 = _tickInc_T_14 + _tickInc_T_16; // @[Bitwise.scala 48:55]
  wire  tickInc = _tickInc_T_8 > _tickInc_T_18; // @[Tage.scala 768:46]
  wire  tickDec = _tickInc_T_18 > _tickInc_T_8; // @[Tage.scala 769:42]
  wire [2:0] tickIncVal = _tickInc_T_8 - _tickInc_T_18; // @[Tage.scala 770:49]
  wire [2:0] tickDecVal = _tickInc_T_18 - _tickInc_T_8; // @[Tage.scala 771:45]
  wire [6:0] _GEN_1348 = {{4'd0}, tickIncVal}; // @[Tage.scala 772:35]
  wire  tickToPosSat = _GEN_1348 >= bankTickCtrDistanceToTops_0 & tickInc; // @[Tage.scala 772:67]
  wire [6:0] _GEN_1349 = {{4'd0}, tickDecVal}; // @[Tage.scala 773:35]
  wire  tickToNegSat = _GEN_1349 >= bankTickCtrs_0 & tickDec; // @[Tage.scala 773:54]
  wire [1:0] _firstEntry_T_4 = canAllocMask[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _firstEntry_T_5 = canAllocMask[1] ? 2'h1 : _firstEntry_T_4; // @[Mux.scala 47:70]
  wire [1:0] firstEntry = canAllocMask[0] ? 2'h0 : _firstEntry_T_5; // @[Mux.scala 47:70]
  wire [3:0] _maskedEntry_T = canAllocMask & allocLFSR; // @[Tage.scala 776:52]
  wire [1:0] _maskedEntry_T_5 = _maskedEntry_T[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _maskedEntry_T_6 = _maskedEntry_T[1] ? 2'h1 : _maskedEntry_T_5; // @[Mux.scala 47:70]
  wire [1:0] maskedEntry = _maskedEntry_T[0] ? 2'h0 : _maskedEntry_T_6; // @[Mux.scala 47:70]
  wire [3:0] _allocate_T = canAllocMask >> maskedEntry; // @[Tage.scala 777:36]
  wire [1:0] allocate = _allocate_T[0] ? maskedEntry : firstEntry; // @[Tage.scala 777:23]
  wire [6:0] _bankTickCtrs_0_T_1 = bankTickCtrs_0 + _GEN_1348; // @[Tage.scala 787:46]
  wire [6:0] _bankTickCtrDistanceToTops_0_T_1 = bankTickCtrDistanceToTops_0 - _GEN_1348; // @[Tage.scala 788:72]
  wire [6:0] _bankTickCtrs_0_T_3 = bankTickCtrs_0 - _GEN_1349; // @[Tage.scala 795:46]
  wire [6:0] _bankTickCtrDistanceToTops_0_T_3 = bankTickCtrDistanceToTops_0 + _GEN_1349; // @[Tage.scala 796:72]
  wire [6:0] _GEN_518 = tickToNegSat ? 7'h0 : _bankTickCtrs_0_T_3; // @[Tage.scala 791:29 792:27 795:27]
  wire [6:0] _GEN_519 = tickToNegSat ? 7'h7f : _bankTickCtrDistanceToTops_0_T_3; // @[Tage.scala 791:29 793:40 796:40]
  wire  _GEN_1354 = 2'h0 == allocate; // @[Tage.scala 800:{33,33}]
  wire  _GEN_524 = 2'h0 == allocate | _GEN_491; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1355 = 2'h1 == allocate; // @[Tage.scala 800:{33,33}]
  wire  _GEN_525 = 2'h1 == allocate | _GEN_492; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1356 = 2'h2 == allocate; // @[Tage.scala 800:{33,33}]
  wire  _GEN_526 = 2'h2 == allocate | _GEN_493; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1357 = 2'h3 == allocate; // @[Tage.scala 800:{33,33}]
  wire  _GEN_527 = 2'h3 == allocate | _GEN_494; // @[Tage.scala 800:{33,33}]
  wire  _GEN_536 = _GEN_1354 | _GEN_495; // @[Tage.scala 803:{34,34}]
  wire  _GEN_537 = _GEN_1355 | _GEN_496; // @[Tage.scala 803:{34,34}]
  wire  _GEN_538 = _GEN_1356 | _GEN_497; // @[Tage.scala 803:{34,34}]
  wire  _GEN_539 = _GEN_1357 | _GEN_498; // @[Tage.scala 803:{34,34}]
  wire  _GEN_552 = canAllocate & _GEN_1354; // @[Tage.scala 799:26]
  wire  _GEN_553 = canAllocate & _GEN_1355; // @[Tage.scala 799:26]
  wire  _GEN_554 = canAllocate & _GEN_1356; // @[Tage.scala 799:26]
  wire  _GEN_555 = canAllocate & _GEN_1357; // @[Tage.scala 799:26]
  wire  _T_38 = bankTickCtrs_0 == 7'h7f; // @[Tage.scala 806:29]
  wire  _allocatableSlots_T_28 = ~s1_resps_0_1_valid & ~s1_resps_0_1_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_31 = ~s1_resps_1_1_valid & ~s1_resps_1_1_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_34 = ~s1_resps_2_1_valid & ~s1_resps_2_1_bits_u; // @[Tage.scala 671:50]
  wire  _allocatableSlots_T_37 = ~s1_resps_3_1_valid & ~s1_resps_3_1_bits_u; // @[Tage.scala 671:50]
  wire [3:0] _allocatableSlots_T_38 = {_allocatableSlots_T_37,_allocatableSlots_T_34,_allocatableSlots_T_31,
    _allocatableSlots_T_28}; // @[Tage.scala 671:65]
  wire [3:0] _allocatableSlots_T_39 = 4'h1 << providerInfo_1_tableIdx; // @[OneHot.scala 57:35]
  wire [3:0] _GEN_1362 = {{1'd0}, _allocatableSlots_T_39[3:1]}; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_T_44 = _allocatableSlots_T_39 | _GEN_1362; // @[ParallelMux.scala 36:53]
  wire [1:0] _GEN_1363 = {{1'd0}, _allocatableSlots_T_39[3]}; // @[ParallelMux.scala 36:53]
  wire [1:0] _allocatableSlots_T_45 = _allocatableSlots_T_39[3:2] | _GEN_1363; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_WIRE_6 = {{2'd0}, _allocatableSlots_T_45}; // @[ParallelMux.scala 36:{73,73}]
  wire [3:0] _allocatableSlots_T_46 = _allocatableSlots_T_44 | _allocatableSlots_WIRE_6; // @[ParallelMux.scala 36:53]
  wire [3:0] _allocatableSlots_T_48 = provided_1 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _allocatableSlots_T_49 = _allocatableSlots_T_46 & _allocatableSlots_T_48; // @[Tage.scala 672:63]
  wire [3:0] _allocatableSlots_T_50 = ~_allocatableSlots_T_49; // @[Tage.scala 672:11]
  wire [3:0] _allocatableSlots_T_51 = _allocatableSlots_T_38 & _allocatableSlots_T_50; // @[Tage.scala 671:72]
  reg [3:0] allocatableSlots_1; // @[Reg.scala 16:16]
  wire  _resp_meta_altDiffers_1_T = s2_finalAltPreds_1 != s2_tageTakens_dup_0_1; // @[Tage.scala 691:62]
  reg  tage_enable_dup_REG_1; // @[Tage.scala 695:38]
  wire  updateTaken_1 = updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
  wire  updateProviderCorrect_1 = updateMeta_providerResps_1_ctr[2] == updateTaken_1; // @[Tage.scala 710:71]
  wire [3:0] _updateUseAltCtr_T_515 = _updateUseAltCtr_T[0] ? useAltOnNaCtrs_1_0 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_516 = _updateUseAltCtr_T[1] ? useAltOnNaCtrs_1_1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_517 = _updateUseAltCtr_T[2] ? useAltOnNaCtrs_1_2 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_518 = _updateUseAltCtr_T[3] ? useAltOnNaCtrs_1_3 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_519 = _updateUseAltCtr_T[4] ? useAltOnNaCtrs_1_4 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_520 = _updateUseAltCtr_T[5] ? useAltOnNaCtrs_1_5 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_521 = _updateUseAltCtr_T[6] ? useAltOnNaCtrs_1_6 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_522 = _updateUseAltCtr_T[7] ? useAltOnNaCtrs_1_7 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_523 = _updateUseAltCtr_T[8] ? useAltOnNaCtrs_1_8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_524 = _updateUseAltCtr_T[9] ? useAltOnNaCtrs_1_9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_525 = _updateUseAltCtr_T[10] ? useAltOnNaCtrs_1_10 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_526 = _updateUseAltCtr_T[11] ? useAltOnNaCtrs_1_11 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_527 = _updateUseAltCtr_T[12] ? useAltOnNaCtrs_1_12 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_528 = _updateUseAltCtr_T[13] ? useAltOnNaCtrs_1_13 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_529 = _updateUseAltCtr_T[14] ? useAltOnNaCtrs_1_14 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_530 = _updateUseAltCtr_T[15] ? useAltOnNaCtrs_1_15 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_531 = _updateUseAltCtr_T[16] ? useAltOnNaCtrs_1_16 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_532 = _updateUseAltCtr_T[17] ? useAltOnNaCtrs_1_17 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_533 = _updateUseAltCtr_T[18] ? useAltOnNaCtrs_1_18 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_534 = _updateUseAltCtr_T[19] ? useAltOnNaCtrs_1_19 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_535 = _updateUseAltCtr_T[20] ? useAltOnNaCtrs_1_20 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_536 = _updateUseAltCtr_T[21] ? useAltOnNaCtrs_1_21 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_537 = _updateUseAltCtr_T[22] ? useAltOnNaCtrs_1_22 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_538 = _updateUseAltCtr_T[23] ? useAltOnNaCtrs_1_23 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_539 = _updateUseAltCtr_T[24] ? useAltOnNaCtrs_1_24 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_540 = _updateUseAltCtr_T[25] ? useAltOnNaCtrs_1_25 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_541 = _updateUseAltCtr_T[26] ? useAltOnNaCtrs_1_26 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_542 = _updateUseAltCtr_T[27] ? useAltOnNaCtrs_1_27 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_543 = _updateUseAltCtr_T[28] ? useAltOnNaCtrs_1_28 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_544 = _updateUseAltCtr_T[29] ? useAltOnNaCtrs_1_29 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_545 = _updateUseAltCtr_T[30] ? useAltOnNaCtrs_1_30 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_546 = _updateUseAltCtr_T[31] ? useAltOnNaCtrs_1_31 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_547 = _updateUseAltCtr_T[32] ? useAltOnNaCtrs_1_32 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_548 = _updateUseAltCtr_T[33] ? useAltOnNaCtrs_1_33 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_549 = _updateUseAltCtr_T[34] ? useAltOnNaCtrs_1_34 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_550 = _updateUseAltCtr_T[35] ? useAltOnNaCtrs_1_35 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_551 = _updateUseAltCtr_T[36] ? useAltOnNaCtrs_1_36 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_552 = _updateUseAltCtr_T[37] ? useAltOnNaCtrs_1_37 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_553 = _updateUseAltCtr_T[38] ? useAltOnNaCtrs_1_38 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_554 = _updateUseAltCtr_T[39] ? useAltOnNaCtrs_1_39 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_555 = _updateUseAltCtr_T[40] ? useAltOnNaCtrs_1_40 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_556 = _updateUseAltCtr_T[41] ? useAltOnNaCtrs_1_41 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_557 = _updateUseAltCtr_T[42] ? useAltOnNaCtrs_1_42 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_558 = _updateUseAltCtr_T[43] ? useAltOnNaCtrs_1_43 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_559 = _updateUseAltCtr_T[44] ? useAltOnNaCtrs_1_44 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_560 = _updateUseAltCtr_T[45] ? useAltOnNaCtrs_1_45 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_561 = _updateUseAltCtr_T[46] ? useAltOnNaCtrs_1_46 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_562 = _updateUseAltCtr_T[47] ? useAltOnNaCtrs_1_47 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_563 = _updateUseAltCtr_T[48] ? useAltOnNaCtrs_1_48 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_564 = _updateUseAltCtr_T[49] ? useAltOnNaCtrs_1_49 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_565 = _updateUseAltCtr_T[50] ? useAltOnNaCtrs_1_50 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_566 = _updateUseAltCtr_T[51] ? useAltOnNaCtrs_1_51 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_567 = _updateUseAltCtr_T[52] ? useAltOnNaCtrs_1_52 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_568 = _updateUseAltCtr_T[53] ? useAltOnNaCtrs_1_53 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_569 = _updateUseAltCtr_T[54] ? useAltOnNaCtrs_1_54 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_570 = _updateUseAltCtr_T[55] ? useAltOnNaCtrs_1_55 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_571 = _updateUseAltCtr_T[56] ? useAltOnNaCtrs_1_56 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_572 = _updateUseAltCtr_T[57] ? useAltOnNaCtrs_1_57 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_573 = _updateUseAltCtr_T[58] ? useAltOnNaCtrs_1_58 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_574 = _updateUseAltCtr_T[59] ? useAltOnNaCtrs_1_59 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_575 = _updateUseAltCtr_T[60] ? useAltOnNaCtrs_1_60 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_576 = _updateUseAltCtr_T[61] ? useAltOnNaCtrs_1_61 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_577 = _updateUseAltCtr_T[62] ? useAltOnNaCtrs_1_62 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_578 = _updateUseAltCtr_T[63] ? useAltOnNaCtrs_1_63 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_579 = _updateUseAltCtr_T[64] ? useAltOnNaCtrs_1_64 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_580 = _updateUseAltCtr_T[65] ? useAltOnNaCtrs_1_65 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_581 = _updateUseAltCtr_T[66] ? useAltOnNaCtrs_1_66 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_582 = _updateUseAltCtr_T[67] ? useAltOnNaCtrs_1_67 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_583 = _updateUseAltCtr_T[68] ? useAltOnNaCtrs_1_68 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_584 = _updateUseAltCtr_T[69] ? useAltOnNaCtrs_1_69 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_585 = _updateUseAltCtr_T[70] ? useAltOnNaCtrs_1_70 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_586 = _updateUseAltCtr_T[71] ? useAltOnNaCtrs_1_71 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_587 = _updateUseAltCtr_T[72] ? useAltOnNaCtrs_1_72 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_588 = _updateUseAltCtr_T[73] ? useAltOnNaCtrs_1_73 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_589 = _updateUseAltCtr_T[74] ? useAltOnNaCtrs_1_74 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_590 = _updateUseAltCtr_T[75] ? useAltOnNaCtrs_1_75 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_591 = _updateUseAltCtr_T[76] ? useAltOnNaCtrs_1_76 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_592 = _updateUseAltCtr_T[77] ? useAltOnNaCtrs_1_77 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_593 = _updateUseAltCtr_T[78] ? useAltOnNaCtrs_1_78 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_594 = _updateUseAltCtr_T[79] ? useAltOnNaCtrs_1_79 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_595 = _updateUseAltCtr_T[80] ? useAltOnNaCtrs_1_80 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_596 = _updateUseAltCtr_T[81] ? useAltOnNaCtrs_1_81 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_597 = _updateUseAltCtr_T[82] ? useAltOnNaCtrs_1_82 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_598 = _updateUseAltCtr_T[83] ? useAltOnNaCtrs_1_83 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_599 = _updateUseAltCtr_T[84] ? useAltOnNaCtrs_1_84 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_600 = _updateUseAltCtr_T[85] ? useAltOnNaCtrs_1_85 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_601 = _updateUseAltCtr_T[86] ? useAltOnNaCtrs_1_86 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_602 = _updateUseAltCtr_T[87] ? useAltOnNaCtrs_1_87 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_603 = _updateUseAltCtr_T[88] ? useAltOnNaCtrs_1_88 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_604 = _updateUseAltCtr_T[89] ? useAltOnNaCtrs_1_89 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_605 = _updateUseAltCtr_T[90] ? useAltOnNaCtrs_1_90 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_606 = _updateUseAltCtr_T[91] ? useAltOnNaCtrs_1_91 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_607 = _updateUseAltCtr_T[92] ? useAltOnNaCtrs_1_92 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_608 = _updateUseAltCtr_T[93] ? useAltOnNaCtrs_1_93 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_609 = _updateUseAltCtr_T[94] ? useAltOnNaCtrs_1_94 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_610 = _updateUseAltCtr_T[95] ? useAltOnNaCtrs_1_95 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_611 = _updateUseAltCtr_T[96] ? useAltOnNaCtrs_1_96 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_612 = _updateUseAltCtr_T[97] ? useAltOnNaCtrs_1_97 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_613 = _updateUseAltCtr_T[98] ? useAltOnNaCtrs_1_98 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_614 = _updateUseAltCtr_T[99] ? useAltOnNaCtrs_1_99 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_615 = _updateUseAltCtr_T[100] ? useAltOnNaCtrs_1_100 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_616 = _updateUseAltCtr_T[101] ? useAltOnNaCtrs_1_101 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_617 = _updateUseAltCtr_T[102] ? useAltOnNaCtrs_1_102 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_618 = _updateUseAltCtr_T[103] ? useAltOnNaCtrs_1_103 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_619 = _updateUseAltCtr_T[104] ? useAltOnNaCtrs_1_104 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_620 = _updateUseAltCtr_T[105] ? useAltOnNaCtrs_1_105 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_621 = _updateUseAltCtr_T[106] ? useAltOnNaCtrs_1_106 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_622 = _updateUseAltCtr_T[107] ? useAltOnNaCtrs_1_107 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_623 = _updateUseAltCtr_T[108] ? useAltOnNaCtrs_1_108 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_624 = _updateUseAltCtr_T[109] ? useAltOnNaCtrs_1_109 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_625 = _updateUseAltCtr_T[110] ? useAltOnNaCtrs_1_110 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_626 = _updateUseAltCtr_T[111] ? useAltOnNaCtrs_1_111 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_627 = _updateUseAltCtr_T[112] ? useAltOnNaCtrs_1_112 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_628 = _updateUseAltCtr_T[113] ? useAltOnNaCtrs_1_113 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_629 = _updateUseAltCtr_T[114] ? useAltOnNaCtrs_1_114 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_630 = _updateUseAltCtr_T[115] ? useAltOnNaCtrs_1_115 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_631 = _updateUseAltCtr_T[116] ? useAltOnNaCtrs_1_116 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_632 = _updateUseAltCtr_T[117] ? useAltOnNaCtrs_1_117 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_633 = _updateUseAltCtr_T[118] ? useAltOnNaCtrs_1_118 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_634 = _updateUseAltCtr_T[119] ? useAltOnNaCtrs_1_119 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_635 = _updateUseAltCtr_T[120] ? useAltOnNaCtrs_1_120 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_636 = _updateUseAltCtr_T[121] ? useAltOnNaCtrs_1_121 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_637 = _updateUseAltCtr_T[122] ? useAltOnNaCtrs_1_122 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_638 = _updateUseAltCtr_T[123] ? useAltOnNaCtrs_1_123 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_639 = _updateUseAltCtr_T[124] ? useAltOnNaCtrs_1_124 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_640 = _updateUseAltCtr_T[125] ? useAltOnNaCtrs_1_125 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_641 = _updateUseAltCtr_T[126] ? useAltOnNaCtrs_1_126 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_642 = _updateUseAltCtr_T[127] ? useAltOnNaCtrs_1_127 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_643 = _updateUseAltCtr_T_515 | _updateUseAltCtr_T_516; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_644 = _updateUseAltCtr_T_643 | _updateUseAltCtr_T_517; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_645 = _updateUseAltCtr_T_644 | _updateUseAltCtr_T_518; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_646 = _updateUseAltCtr_T_645 | _updateUseAltCtr_T_519; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_647 = _updateUseAltCtr_T_646 | _updateUseAltCtr_T_520; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_648 = _updateUseAltCtr_T_647 | _updateUseAltCtr_T_521; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_649 = _updateUseAltCtr_T_648 | _updateUseAltCtr_T_522; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_650 = _updateUseAltCtr_T_649 | _updateUseAltCtr_T_523; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_651 = _updateUseAltCtr_T_650 | _updateUseAltCtr_T_524; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_652 = _updateUseAltCtr_T_651 | _updateUseAltCtr_T_525; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_653 = _updateUseAltCtr_T_652 | _updateUseAltCtr_T_526; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_654 = _updateUseAltCtr_T_653 | _updateUseAltCtr_T_527; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_655 = _updateUseAltCtr_T_654 | _updateUseAltCtr_T_528; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_656 = _updateUseAltCtr_T_655 | _updateUseAltCtr_T_529; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_657 = _updateUseAltCtr_T_656 | _updateUseAltCtr_T_530; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_658 = _updateUseAltCtr_T_657 | _updateUseAltCtr_T_531; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_659 = _updateUseAltCtr_T_658 | _updateUseAltCtr_T_532; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_660 = _updateUseAltCtr_T_659 | _updateUseAltCtr_T_533; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_661 = _updateUseAltCtr_T_660 | _updateUseAltCtr_T_534; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_662 = _updateUseAltCtr_T_661 | _updateUseAltCtr_T_535; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_663 = _updateUseAltCtr_T_662 | _updateUseAltCtr_T_536; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_664 = _updateUseAltCtr_T_663 | _updateUseAltCtr_T_537; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_665 = _updateUseAltCtr_T_664 | _updateUseAltCtr_T_538; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_666 = _updateUseAltCtr_T_665 | _updateUseAltCtr_T_539; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_667 = _updateUseAltCtr_T_666 | _updateUseAltCtr_T_540; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_668 = _updateUseAltCtr_T_667 | _updateUseAltCtr_T_541; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_669 = _updateUseAltCtr_T_668 | _updateUseAltCtr_T_542; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_670 = _updateUseAltCtr_T_669 | _updateUseAltCtr_T_543; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_671 = _updateUseAltCtr_T_670 | _updateUseAltCtr_T_544; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_672 = _updateUseAltCtr_T_671 | _updateUseAltCtr_T_545; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_673 = _updateUseAltCtr_T_672 | _updateUseAltCtr_T_546; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_674 = _updateUseAltCtr_T_673 | _updateUseAltCtr_T_547; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_675 = _updateUseAltCtr_T_674 | _updateUseAltCtr_T_548; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_676 = _updateUseAltCtr_T_675 | _updateUseAltCtr_T_549; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_677 = _updateUseAltCtr_T_676 | _updateUseAltCtr_T_550; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_678 = _updateUseAltCtr_T_677 | _updateUseAltCtr_T_551; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_679 = _updateUseAltCtr_T_678 | _updateUseAltCtr_T_552; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_680 = _updateUseAltCtr_T_679 | _updateUseAltCtr_T_553; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_681 = _updateUseAltCtr_T_680 | _updateUseAltCtr_T_554; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_682 = _updateUseAltCtr_T_681 | _updateUseAltCtr_T_555; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_683 = _updateUseAltCtr_T_682 | _updateUseAltCtr_T_556; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_684 = _updateUseAltCtr_T_683 | _updateUseAltCtr_T_557; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_685 = _updateUseAltCtr_T_684 | _updateUseAltCtr_T_558; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_686 = _updateUseAltCtr_T_685 | _updateUseAltCtr_T_559; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_687 = _updateUseAltCtr_T_686 | _updateUseAltCtr_T_560; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_688 = _updateUseAltCtr_T_687 | _updateUseAltCtr_T_561; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_689 = _updateUseAltCtr_T_688 | _updateUseAltCtr_T_562; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_690 = _updateUseAltCtr_T_689 | _updateUseAltCtr_T_563; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_691 = _updateUseAltCtr_T_690 | _updateUseAltCtr_T_564; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_692 = _updateUseAltCtr_T_691 | _updateUseAltCtr_T_565; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_693 = _updateUseAltCtr_T_692 | _updateUseAltCtr_T_566; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_694 = _updateUseAltCtr_T_693 | _updateUseAltCtr_T_567; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_695 = _updateUseAltCtr_T_694 | _updateUseAltCtr_T_568; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_696 = _updateUseAltCtr_T_695 | _updateUseAltCtr_T_569; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_697 = _updateUseAltCtr_T_696 | _updateUseAltCtr_T_570; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_698 = _updateUseAltCtr_T_697 | _updateUseAltCtr_T_571; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_699 = _updateUseAltCtr_T_698 | _updateUseAltCtr_T_572; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_700 = _updateUseAltCtr_T_699 | _updateUseAltCtr_T_573; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_701 = _updateUseAltCtr_T_700 | _updateUseAltCtr_T_574; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_702 = _updateUseAltCtr_T_701 | _updateUseAltCtr_T_575; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_703 = _updateUseAltCtr_T_702 | _updateUseAltCtr_T_576; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_704 = _updateUseAltCtr_T_703 | _updateUseAltCtr_T_577; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_705 = _updateUseAltCtr_T_704 | _updateUseAltCtr_T_578; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_706 = _updateUseAltCtr_T_705 | _updateUseAltCtr_T_579; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_707 = _updateUseAltCtr_T_706 | _updateUseAltCtr_T_580; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_708 = _updateUseAltCtr_T_707 | _updateUseAltCtr_T_581; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_709 = _updateUseAltCtr_T_708 | _updateUseAltCtr_T_582; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_710 = _updateUseAltCtr_T_709 | _updateUseAltCtr_T_583; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_711 = _updateUseAltCtr_T_710 | _updateUseAltCtr_T_584; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_712 = _updateUseAltCtr_T_711 | _updateUseAltCtr_T_585; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_713 = _updateUseAltCtr_T_712 | _updateUseAltCtr_T_586; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_714 = _updateUseAltCtr_T_713 | _updateUseAltCtr_T_587; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_715 = _updateUseAltCtr_T_714 | _updateUseAltCtr_T_588; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_716 = _updateUseAltCtr_T_715 | _updateUseAltCtr_T_589; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_717 = _updateUseAltCtr_T_716 | _updateUseAltCtr_T_590; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_718 = _updateUseAltCtr_T_717 | _updateUseAltCtr_T_591; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_719 = _updateUseAltCtr_T_718 | _updateUseAltCtr_T_592; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_720 = _updateUseAltCtr_T_719 | _updateUseAltCtr_T_593; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_721 = _updateUseAltCtr_T_720 | _updateUseAltCtr_T_594; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_722 = _updateUseAltCtr_T_721 | _updateUseAltCtr_T_595; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_723 = _updateUseAltCtr_T_722 | _updateUseAltCtr_T_596; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_724 = _updateUseAltCtr_T_723 | _updateUseAltCtr_T_597; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_725 = _updateUseAltCtr_T_724 | _updateUseAltCtr_T_598; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_726 = _updateUseAltCtr_T_725 | _updateUseAltCtr_T_599; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_727 = _updateUseAltCtr_T_726 | _updateUseAltCtr_T_600; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_728 = _updateUseAltCtr_T_727 | _updateUseAltCtr_T_601; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_729 = _updateUseAltCtr_T_728 | _updateUseAltCtr_T_602; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_730 = _updateUseAltCtr_T_729 | _updateUseAltCtr_T_603; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_731 = _updateUseAltCtr_T_730 | _updateUseAltCtr_T_604; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_732 = _updateUseAltCtr_T_731 | _updateUseAltCtr_T_605; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_733 = _updateUseAltCtr_T_732 | _updateUseAltCtr_T_606; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_734 = _updateUseAltCtr_T_733 | _updateUseAltCtr_T_607; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_735 = _updateUseAltCtr_T_734 | _updateUseAltCtr_T_608; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_736 = _updateUseAltCtr_T_735 | _updateUseAltCtr_T_609; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_737 = _updateUseAltCtr_T_736 | _updateUseAltCtr_T_610; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_738 = _updateUseAltCtr_T_737 | _updateUseAltCtr_T_611; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_739 = _updateUseAltCtr_T_738 | _updateUseAltCtr_T_612; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_740 = _updateUseAltCtr_T_739 | _updateUseAltCtr_T_613; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_741 = _updateUseAltCtr_T_740 | _updateUseAltCtr_T_614; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_742 = _updateUseAltCtr_T_741 | _updateUseAltCtr_T_615; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_743 = _updateUseAltCtr_T_742 | _updateUseAltCtr_T_616; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_744 = _updateUseAltCtr_T_743 | _updateUseAltCtr_T_617; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_745 = _updateUseAltCtr_T_744 | _updateUseAltCtr_T_618; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_746 = _updateUseAltCtr_T_745 | _updateUseAltCtr_T_619; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_747 = _updateUseAltCtr_T_746 | _updateUseAltCtr_T_620; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_748 = _updateUseAltCtr_T_747 | _updateUseAltCtr_T_621; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_749 = _updateUseAltCtr_T_748 | _updateUseAltCtr_T_622; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_750 = _updateUseAltCtr_T_749 | _updateUseAltCtr_T_623; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_751 = _updateUseAltCtr_T_750 | _updateUseAltCtr_T_624; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_752 = _updateUseAltCtr_T_751 | _updateUseAltCtr_T_625; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_753 = _updateUseAltCtr_T_752 | _updateUseAltCtr_T_626; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_754 = _updateUseAltCtr_T_753 | _updateUseAltCtr_T_627; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_755 = _updateUseAltCtr_T_754 | _updateUseAltCtr_T_628; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_756 = _updateUseAltCtr_T_755 | _updateUseAltCtr_T_629; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_757 = _updateUseAltCtr_T_756 | _updateUseAltCtr_T_630; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_758 = _updateUseAltCtr_T_757 | _updateUseAltCtr_T_631; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_759 = _updateUseAltCtr_T_758 | _updateUseAltCtr_T_632; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_760 = _updateUseAltCtr_T_759 | _updateUseAltCtr_T_633; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_761 = _updateUseAltCtr_T_760 | _updateUseAltCtr_T_634; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_762 = _updateUseAltCtr_T_761 | _updateUseAltCtr_T_635; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_763 = _updateUseAltCtr_T_762 | _updateUseAltCtr_T_636; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_764 = _updateUseAltCtr_T_763 | _updateUseAltCtr_T_637; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_765 = _updateUseAltCtr_T_764 | _updateUseAltCtr_T_638; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_766 = _updateUseAltCtr_T_765 | _updateUseAltCtr_T_639; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_767 = _updateUseAltCtr_T_766 | _updateUseAltCtr_T_640; // @[Mux.scala 27:73]
  wire [3:0] _updateUseAltCtr_T_768 = _updateUseAltCtr_T_767 | _updateUseAltCtr_T_641; // @[Mux.scala 27:73]
  wire [3:0] updateUseAltCtr_1 = _updateUseAltCtr_T_768 | _updateUseAltCtr_T_642; // @[Mux.scala 27:73]
  wire  updateAltCorrect_1 = updateMeta_basecnts_1[1] == updateTaken_1; // @[Tage.scala 716:42]
  wire  updateProviderWeakTaken_1 = updateMeta_providerResps_1_ctr == 3'h4; // @[Tage.scala 54:34]
  wire  updateProviderWeaknotTaken_1 = updateMeta_providerResps_1_ctr == 3'h3; // @[Tage.scala 55:34]
  wire  updateProviderWeak_1 = updateProviderWeakTaken_1 | updateProviderWeaknotTaken_1; // @[Tage.scala 57:42]
  wire  newCtr_oldSatTaken_1 = updateUseAltCtr_1 == 4'hf; // @[BPU.scala 95:27]
  wire  newCtr_oldSatNotTaken_1 = updateUseAltCtr_1 == 4'h0; // @[BPU.scala 96:30]
  wire [3:0] _newCtr_T_13 = updateUseAltCtr_1 + 4'h1; // @[BPU.scala 99:24]
  wire [3:0] _newCtr_T_15 = updateUseAltCtr_1 - 4'h1; // @[BPU.scala 99:35]
  wire [3:0] _newCtr_T_16 = updateAltCorrect_1 ? _newCtr_T_13 : _newCtr_T_15; // @[BPU.scala 99:12]
  wire [3:0] _newCtr_T_17 = newCtr_oldSatNotTaken_1 & ~updateAltCorrect_1 ? 4'h0 : _newCtr_T_16; // @[BPU.scala 98:10]
  wire  _GEN_989 = 2'h0 == updateMeta_providers_1_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_990 = 2'h1 == updateMeta_providers_1_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_991 = 2'h2 == updateMeta_providers_1_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_992 = 2'h3 == updateMeta_providers_1_bits; // @[Tage.scala 746:{39,39}]
  wire  _GEN_993 = _GEN_989 & updateMeta_altDiffers_1; // @[Tage.scala 747:{40,40}]
  wire  _GEN_994 = _GEN_990 & updateMeta_altDiffers_1; // @[Tage.scala 747:{40,40}]
  wire  _GEN_995 = _GEN_991 & updateMeta_altDiffers_1; // @[Tage.scala 747:{40,40}]
  wire  _GEN_996 = _GEN_992 & updateMeta_altDiffers_1; // @[Tage.scala 747:{40,40}]
  wire  _GEN_1013 = updateMeta_providers_1_valid & _GEN_989; // @[Tage.scala 745:29]
  wire  _GEN_1014 = updateMeta_providers_1_valid & _GEN_990; // @[Tage.scala 745:29]
  wire  _GEN_1015 = updateMeta_providers_1_valid & _GEN_991; // @[Tage.scala 745:29]
  wire  _GEN_1016 = updateMeta_providers_1_valid & _GEN_992; // @[Tage.scala 745:29]
  wire  _GEN_1017 = updateMeta_providers_1_valid & _GEN_993; // @[Tage.scala 745:29]
  wire  _GEN_1018 = updateMeta_providers_1_valid & _GEN_994; // @[Tage.scala 745:29]
  wire  _GEN_1019 = updateMeta_providers_1_valid & _GEN_995; // @[Tage.scala 745:29]
  wire  _GEN_1020 = updateMeta_providers_1_valid & _GEN_996; // @[Tage.scala 745:29]
  wire  _GEN_1037 = updateValids_1 & _GEN_1013; // @[Tage.scala 744:22]
  wire  _GEN_1038 = updateValids_1 & _GEN_1014; // @[Tage.scala 744:22]
  wire  _GEN_1039 = updateValids_1 & _GEN_1015; // @[Tage.scala 744:22]
  wire  _GEN_1040 = updateValids_1 & _GEN_1016; // @[Tage.scala 744:22]
  wire  _GEN_1041 = updateValids_1 & _GEN_1017; // @[Tage.scala 744:22]
  wire  _GEN_1042 = updateValids_1 & _GEN_1018; // @[Tage.scala 744:22]
  wire  _GEN_1043 = updateValids_1 & _GEN_1019; // @[Tage.scala 744:22]
  wire  _GEN_1044 = updateValids_1 & _GEN_1020; // @[Tage.scala 744:22]
  wire  needToAllocate_1 = updateValids_1 & io_update_bits_mispred_mask_1 & ~(updateMeta_altUsed_1 &
    updateProviderCorrect_1 & updateMeta_providers_1_valid); // @[Tage.scala 760:53]
  reg [63:0] allocLFSR_lfsr_1; // @[LFSR64.scala 27:33]
  wire  allocLFSR_xor_1 = allocLFSR_lfsr_1[0] ^ allocLFSR_lfsr_1[1] ^ allocLFSR_lfsr_1[3] ^ allocLFSR_lfsr_1[4]; // @[LFSR64.scala 29:43]
  wire [63:0] _allocLFSR_lfsr_T_6 = {allocLFSR_xor_1,allocLFSR_lfsr_1[63:1]}; // @[Cat.scala 31:58]
  wire [3:0] allocLFSR_1 = allocLFSR_lfsr_1[3:0]; // @[Tage.scala 764:29]
  wire [3:0] _longerHistoryTableMask_T_11 = 4'h1 << updateMeta_providers_1_bits; // @[OneHot.scala 57:35]
  wire [3:0] _GEN_1368 = {{1'd0}, _longerHistoryTableMask_T_11[3:1]}; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_T_16 = _longerHistoryTableMask_T_11 | _GEN_1368; // @[ParallelMux.scala 36:53]
  wire [1:0] _GEN_1369 = {{1'd0}, _longerHistoryTableMask_T_11[3]}; // @[ParallelMux.scala 36:53]
  wire [1:0] _longerHistoryTableMask_T_17 = _longerHistoryTableMask_T_11[3:2] | _GEN_1369; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_WIRE_4 = {{2'd0}, _longerHistoryTableMask_T_17}; // @[ParallelMux.scala 36:{73,73}]
  wire [3:0] _longerHistoryTableMask_T_18 = _longerHistoryTableMask_T_16 | _longerHistoryTableMask_WIRE_4; // @[ParallelMux.scala 36:53]
  wire [3:0] _longerHistoryTableMask_T_20 = updateMeta_providers_1_valid ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _longerHistoryTableMask_T_21 = _longerHistoryTableMask_T_18 & _longerHistoryTableMask_T_20; // @[Tage.scala 765:85]
  wire [3:0] longerHistoryTableMask_1 = ~_longerHistoryTableMask_T_21; // @[Tage.scala 765:34]
  wire [3:0] canAllocMask_1 = updateMeta_allocates_1 & longerHistoryTableMask_1; // @[Tage.scala 766:40]
  wire [3:0] _allocFailureMask_T_1 = ~updateMeta_allocates_1; // @[Tage.scala 767:28]
  wire [3:0] allocFailureMask_1 = _allocFailureMask_T_1 & longerHistoryTableMask_1; // @[Tage.scala 767:45]
  wire [1:0] _tickInc_T_24 = allocFailureMask_1[0] + allocFailureMask_1[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_26 = allocFailureMask_1[2] + allocFailureMask_1[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _tickInc_T_28 = _tickInc_T_24 + _tickInc_T_26; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_34 = canAllocMask_1[0] + canAllocMask_1[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _tickInc_T_36 = canAllocMask_1[2] + canAllocMask_1[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _tickInc_T_38 = _tickInc_T_34 + _tickInc_T_36; // @[Bitwise.scala 48:55]
  wire  tickInc_1 = _tickInc_T_28 > _tickInc_T_38; // @[Tage.scala 768:46]
  wire  tickDec_1 = _tickInc_T_38 > _tickInc_T_28; // @[Tage.scala 769:42]
  wire [2:0] tickIncVal_1 = _tickInc_T_28 - _tickInc_T_38; // @[Tage.scala 770:49]
  wire [2:0] tickDecVal_1 = _tickInc_T_38 - _tickInc_T_28; // @[Tage.scala 771:45]
  wire [6:0] _GEN_1370 = {{4'd0}, tickIncVal_1}; // @[Tage.scala 772:35]
  wire  tickToPosSat_1 = _GEN_1370 >= bankTickCtrDistanceToTops_1 & tickInc_1; // @[Tage.scala 772:67]
  wire [6:0] _GEN_1371 = {{4'd0}, tickDecVal_1}; // @[Tage.scala 773:35]
  wire  tickToNegSat_1 = _GEN_1371 >= bankTickCtrs_1 & tickDec_1; // @[Tage.scala 773:54]
  wire [1:0] _firstEntry_T_10 = canAllocMask_1[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _firstEntry_T_11 = canAllocMask_1[1] ? 2'h1 : _firstEntry_T_10; // @[Mux.scala 47:70]
  wire [1:0] firstEntry_1 = canAllocMask_1[0] ? 2'h0 : _firstEntry_T_11; // @[Mux.scala 47:70]
  wire [3:0] _maskedEntry_T_7 = canAllocMask_1 & allocLFSR_1; // @[Tage.scala 776:52]
  wire [1:0] _maskedEntry_T_12 = _maskedEntry_T_7[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _maskedEntry_T_13 = _maskedEntry_T_7[1] ? 2'h1 : _maskedEntry_T_12; // @[Mux.scala 47:70]
  wire [1:0] maskedEntry_1 = _maskedEntry_T_7[0] ? 2'h0 : _maskedEntry_T_13; // @[Mux.scala 47:70]
  wire [3:0] _allocate_T_2 = canAllocMask_1 >> maskedEntry_1; // @[Tage.scala 777:36]
  wire [1:0] allocate_1 = _allocate_T_2[0] ? maskedEntry_1 : firstEntry_1; // @[Tage.scala 777:23]
  wire [6:0] _bankTickCtrs_1_T_1 = bankTickCtrs_1 + _GEN_1370; // @[Tage.scala 787:46]
  wire [6:0] _bankTickCtrDistanceToTops_1_T_1 = bankTickCtrDistanceToTops_1 - _GEN_1370; // @[Tage.scala 788:72]
  wire [6:0] _bankTickCtrs_1_T_3 = bankTickCtrs_1 - _GEN_1371; // @[Tage.scala 795:46]
  wire [6:0] _bankTickCtrDistanceToTops_1_T_3 = bankTickCtrDistanceToTops_1 + _GEN_1371; // @[Tage.scala 796:72]
  wire [6:0] _GEN_1064 = tickToNegSat_1 ? 7'h0 : _bankTickCtrs_1_T_3; // @[Tage.scala 791:29 792:27 795:27]
  wire [6:0] _GEN_1065 = tickToNegSat_1 ? 7'h7f : _bankTickCtrDistanceToTops_1_T_3; // @[Tage.scala 791:29 793:40 796:40]
  wire  _GEN_1376 = 2'h0 == allocate_1; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1070 = 2'h0 == allocate_1 | _GEN_1037; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1377 = 2'h1 == allocate_1; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1071 = 2'h1 == allocate_1 | _GEN_1038; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1378 = 2'h2 == allocate_1; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1072 = 2'h2 == allocate_1 | _GEN_1039; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1379 = 2'h3 == allocate_1; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1073 = 2'h3 == allocate_1 | _GEN_1040; // @[Tage.scala 800:{33,33}]
  wire  _GEN_1082 = _GEN_1376 | _GEN_1041; // @[Tage.scala 803:{34,34}]
  wire  _GEN_1083 = _GEN_1377 | _GEN_1042; // @[Tage.scala 803:{34,34}]
  wire  _GEN_1084 = _GEN_1378 | _GEN_1043; // @[Tage.scala 803:{34,34}]
  wire  _GEN_1085 = _GEN_1379 | _GEN_1044; // @[Tage.scala 803:{34,34}]
  wire  _GEN_1098 = _canAllocate_T & _GEN_1376; // @[Tage.scala 799:26]
  wire  _GEN_1099 = _canAllocate_T & _GEN_1377; // @[Tage.scala 799:26]
  wire  _GEN_1100 = _canAllocate_T & _GEN_1378; // @[Tage.scala 799:26]
  wire  _GEN_1101 = _canAllocate_T & _GEN_1379; // @[Tage.scala 799:26]
  wire  _T_107 = bankTickCtrs_1 == 7'h7f; // @[Tage.scala 806:29]
  reg  tables_0_io_update_mask_0_REG; // @[Tage.scala 824:48]
  reg  tables_0_io_update_takens_0_REG; // @[Tage.scala 825:48]
  reg  tables_0_io_update_alloc_0_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_0_io_update_oldCtrs_0_REG; // @[Tage.scala 827:48]
  reg  tables_0_io_update_uMask_0_REG; // @[Tage.scala 829:48]
  reg  tables_0_io_update_us_0_REG; // @[Tage.scala 830:48]
  reg  tables_0_io_update_reset_u_0_REG; // @[Tage.scala 831:48]
  reg  tables_1_io_update_mask_0_REG; // @[Tage.scala 824:48]
  reg  tables_1_io_update_takens_0_REG; // @[Tage.scala 825:48]
  reg  tables_1_io_update_alloc_0_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_1_io_update_oldCtrs_0_REG; // @[Tage.scala 827:48]
  reg  tables_1_io_update_uMask_0_REG; // @[Tage.scala 829:48]
  reg  tables_1_io_update_us_0_REG; // @[Tage.scala 830:48]
  reg  tables_1_io_update_reset_u_0_REG; // @[Tage.scala 831:48]
  reg  tables_2_io_update_mask_0_REG; // @[Tage.scala 824:48]
  reg  tables_2_io_update_takens_0_REG; // @[Tage.scala 825:48]
  reg  tables_2_io_update_alloc_0_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_2_io_update_oldCtrs_0_REG; // @[Tage.scala 827:48]
  reg  tables_2_io_update_uMask_0_REG; // @[Tage.scala 829:48]
  reg  tables_2_io_update_us_0_REG; // @[Tage.scala 830:48]
  reg  tables_2_io_update_reset_u_0_REG; // @[Tage.scala 831:48]
  reg  tables_3_io_update_mask_0_REG; // @[Tage.scala 824:48]
  reg  tables_3_io_update_takens_0_REG; // @[Tage.scala 825:48]
  reg  tables_3_io_update_alloc_0_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_3_io_update_oldCtrs_0_REG; // @[Tage.scala 827:48]
  reg  tables_3_io_update_uMask_0_REG; // @[Tage.scala 829:48]
  reg  tables_3_io_update_us_0_REG; // @[Tage.scala 830:48]
  reg  tables_3_io_update_reset_u_0_REG; // @[Tage.scala 831:48]
  reg  tables_0_io_update_mask_1_REG; // @[Tage.scala 824:48]
  reg  tables_0_io_update_takens_1_REG; // @[Tage.scala 825:48]
  reg  tables_0_io_update_alloc_1_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_0_io_update_oldCtrs_1_REG; // @[Tage.scala 827:48]
  reg  tables_0_io_update_uMask_1_REG; // @[Tage.scala 829:48]
  reg  tables_0_io_update_us_1_REG; // @[Tage.scala 830:48]
  reg  tables_0_io_update_reset_u_1_REG; // @[Tage.scala 831:48]
  reg [38:0] tables_0_io_update_pc_REG_1; // @[Tage.scala 833:46]
  reg [6:0] tables_0_io_update_folded_hist_REG_1_hist_13_folded_hist; // @[Tage.scala 834:49]
  reg [7:0] tables_0_io_update_folded_hist_REG_1_hist_8_folded_hist; // @[Tage.scala 834:49]
  reg  tables_1_io_update_mask_1_REG; // @[Tage.scala 824:48]
  reg  tables_1_io_update_takens_1_REG; // @[Tage.scala 825:48]
  reg  tables_1_io_update_alloc_1_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_1_io_update_oldCtrs_1_REG; // @[Tage.scala 827:48]
  reg  tables_1_io_update_uMask_1_REG; // @[Tage.scala 829:48]
  reg  tables_1_io_update_us_1_REG; // @[Tage.scala 830:48]
  reg  tables_1_io_update_reset_u_1_REG; // @[Tage.scala 831:48]
  reg [38:0] tables_1_io_update_pc_REG_1; // @[Tage.scala 833:46]
  reg [7:0] tables_1_io_update_folded_hist_REG_1_hist_17_folded_hist; // @[Tage.scala 834:49]
  reg [6:0] tables_1_io_update_folded_hist_REG_1_hist_12_folded_hist; // @[Tage.scala 834:49]
  reg [10:0] tables_1_io_update_folded_hist_REG_1_hist_5_folded_hist; // @[Tage.scala 834:49]
  reg  tables_2_io_update_mask_1_REG; // @[Tage.scala 824:48]
  reg  tables_2_io_update_takens_1_REG; // @[Tage.scala 825:48]
  reg  tables_2_io_update_alloc_1_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_2_io_update_oldCtrs_1_REG; // @[Tage.scala 827:48]
  reg  tables_2_io_update_uMask_1_REG; // @[Tage.scala 829:48]
  reg  tables_2_io_update_us_1_REG; // @[Tage.scala 830:48]
  reg  tables_2_io_update_reset_u_1_REG; // @[Tage.scala 831:48]
  reg [38:0] tables_2_io_update_pc_REG_1; // @[Tage.scala 833:46]
  reg [6:0] tables_2_io_update_folded_hist_REG_1_hist_9_folded_hist; // @[Tage.scala 834:49]
  reg [10:0] tables_2_io_update_folded_hist_REG_1_hist_3_folded_hist; // @[Tage.scala 834:49]
  reg [7:0] tables_2_io_update_folded_hist_REG_1_hist_1_folded_hist; // @[Tage.scala 834:49]
  reg  tables_3_io_update_mask_1_REG; // @[Tage.scala 824:48]
  reg  tables_3_io_update_takens_1_REG; // @[Tage.scala 825:48]
  reg  tables_3_io_update_alloc_1_REG; // @[Tage.scala 826:48]
  reg [2:0] tables_3_io_update_oldCtrs_1_REG; // @[Tage.scala 827:48]
  reg  tables_3_io_update_uMask_1_REG; // @[Tage.scala 829:48]
  reg  tables_3_io_update_us_1_REG; // @[Tage.scala 830:48]
  reg  tables_3_io_update_reset_u_1_REG; // @[Tage.scala 831:48]
  reg [38:0] tables_3_io_update_pc_REG_1; // @[Tage.scala 833:46]
  reg [10:0] tables_3_io_update_folded_hist_REG_1_hist_15_folded_hist; // @[Tage.scala 834:49]
  reg [6:0] tables_3_io_update_folded_hist_REG_1_hist_14_folded_hist; // @[Tage.scala 834:49]
  reg [7:0] tables_3_io_update_folded_hist_REG_1_hist_2_folded_hist; // @[Tage.scala 834:49]
  reg  REG_2_0; // @[Tage.scala 838:31]
  reg  REG_2_1; // @[Tage.scala 838:31]
  reg [1:0] REG_3_0; // @[Tage.scala 839:30]
  reg [1:0] REG_3_1; // @[Tage.scala 839:30]
  reg [38:0] bt_io_update_pc_REG; // @[Tage.scala 840:29]
  reg  REG_4_0; // @[Tage.scala 841:33]
  reg  REG_4_1; // @[Tage.scala 841:33]
  reg [4:0] scThresholds_0_ctr; // @[SC.scala 231:52]
  reg [7:0] scThresholds_0_thres; // @[SC.scala 231:52]
  reg [4:0] scThresholds_1_ctr; // @[SC.scala 231:52]
  reg [7:0] scThresholds_1_thres; // @[SC.scala 231:52]
  wire [10:0] _updateThresholds_T = {scThresholds_0_thres, 3'h0}; // @[SC.scala 244:63]
  wire [11:0] updateThresholds_0 = _updateThresholds_T + 11'h15; // @[SC.scala 244:69]
  wire [10:0] _updateThresholds_T_2 = {scThresholds_1_thres, 3'h0}; // @[SC.scala 244:63]
  wire [11:0] updateThresholds_1 = _updateThresholds_T_2 + 11'h15; // @[SC.scala 244:69]
  wire [5:0] s1_scResps_0_ctrs_0_0 = scTables_0_io_resp_ctrs_0_0; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_1 = {scTables_0_io_resp_ctrs_0_0,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_1_ctrs_0_0 = scTables_1_io_resp_ctrs_0_0; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_3 = {scTables_1_io_resp_ctrs_0_0,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_2_ctrs_0_0 = scTables_2_io_resp_ctrs_0_0; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_5 = {scTables_2_io_resp_ctrs_0_0,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_3_ctrs_0_0 = scTables_3_io_resp_ctrs_0_0; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_7 = {scTables_3_io_resp_ctrs_0_0,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _s1_scTableSums_T_8 = $signed(_s1_scTableSums_T_1) + $signed(_s1_scTableSums_T_3); // @[ParallelMux.scala 115:82]
  wire [7:0] _s1_scTableSums_T_9 = $signed(_s1_scTableSums_T_5) + $signed(_s1_scTableSums_T_7); // @[ParallelMux.scala 115:82]
  wire [8:0] s1_scTableSums__0 = $signed(_s1_scTableSums_T_8) + $signed(_s1_scTableSums_T_9); // @[ParallelMux.scala 115:82]
  wire [5:0] s1_scResps_0_ctrs_0_1 = scTables_0_io_resp_ctrs_0_1; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_12 = {scTables_0_io_resp_ctrs_0_1,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_1_ctrs_0_1 = scTables_1_io_resp_ctrs_0_1; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_14 = {scTables_1_io_resp_ctrs_0_1,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_2_ctrs_0_1 = scTables_2_io_resp_ctrs_0_1; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_16 = {scTables_2_io_resp_ctrs_0_1,1'h1}; // @[SC.scala 266:59]
  wire [5:0] s1_scResps_3_ctrs_0_1 = scTables_3_io_resp_ctrs_0_1; // @[SC.scala 246:{29,29}]
  wire [6:0] _s1_scTableSums_T_18 = {scTables_3_io_resp_ctrs_0_1,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _s1_scTableSums_T_19 = $signed(_s1_scTableSums_T_12) + $signed(_s1_scTableSums_T_14); // @[ParallelMux.scala 115:82]
  wire [7:0] _s1_scTableSums_T_20 = $signed(_s1_scTableSums_T_16) + $signed(_s1_scTableSums_T_18); // @[ParallelMux.scala 115:82]
  wire [8:0] s1_scTableSums__1 = $signed(_s1_scTableSums_T_19) + $signed(_s1_scTableSums_T_20); // @[ParallelMux.scala 115:82]
  reg [8:0] s2_scTableSums__0; // @[Reg.scala 16:16]
  reg [8:0] s2_scTableSums__1; // @[Reg.scala 16:16]
  reg [2:0] s2_tagePrvdCtrCentered_r; // @[Reg.scala 16:16]
  wire [2:0] _s2_tagePrvdCtrCentered_T = s2_tagePrvdCtrCentered_r ^ 3'h4; // @[SC.scala 268:52]
  wire [6:0] s2_tagePrvdCtrCentered = {_s2_tagePrvdCtrCentered_T,1'h1,3'h0}; // @[SC.scala 268:100]
  wire [8:0] _GEN_1384 = {{2{s2_tagePrvdCtrCentered[6]}},s2_tagePrvdCtrCentered}; // @[SC.scala 281:47]
  wire [9:0] s2_totalSums_0 = $signed(s2_scTableSums__0) + $signed(_GEN_1384); // @[SC.scala 281:47]
  wire [9:0] s2_totalSums_1 = $signed(s2_scTableSums__1) + $signed(_GEN_1384); // @[SC.scala 281:47]
  wire [8:0] s2_sumAboveThresholds_signedThres = {1'b0,$signed(scThresholds_0_thres)}; // @[SC.scala 239:35]
  wire [8:0] _s2_sumAboveThresholds_T_2 = $signed(s2_sumAboveThresholds_signedThres) - $signed(_GEN_1384); // @[SC.scala 241:29]
  wire  _s2_sumAboveThresholds_T_5 = ~s2_totalSums_0[9]; // @[SC.scala 235:24]
  wire [8:0] _s2_sumAboveThresholds_T_9 = 9'sh0 - $signed(s2_sumAboveThresholds_signedThres); // @[SC.scala 242:16]
  wire [8:0] _s2_sumAboveThresholds_T_12 = $signed(_s2_sumAboveThresholds_T_9) - $signed(_GEN_1384); // @[SC.scala 242:29]
  wire  _s2_sumAboveThresholds_T_15 = $signed(s2_scTableSums__0) < $signed(_s2_sumAboveThresholds_T_12) & s2_totalSums_0
    [9]; // @[SC.scala 242:41]
  wire  s2_sumAboveThresholds__0 = $signed(s2_scTableSums__0) > $signed(_s2_sumAboveThresholds_T_2) &
    _s2_sumAboveThresholds_T_5 | _s2_sumAboveThresholds_T_15; // @[SC.scala 241:58]
  wire  _s2_sumAboveThresholds_T_22 = ~s2_totalSums_1[9]; // @[SC.scala 235:24]
  wire  _s2_sumAboveThresholds_T_32 = $signed(s2_scTableSums__1) < $signed(_s2_sumAboveThresholds_T_12) & s2_totalSums_1
    [9]; // @[SC.scala 242:41]
  wire  s2_sumAboveThresholds__1 = $signed(s2_scTableSums__1) > $signed(_s2_sumAboveThresholds_T_2) &
    _s2_sumAboveThresholds_T_22 | _s2_sumAboveThresholds_T_32; // @[SC.scala 241:58]
  wire  s2_scPreds__0 = $signed(s2_totalSums_0) >= 10'sh0; // @[SC.scala 283:51]
  wire  s2_scPreds__1 = $signed(s2_totalSums_1) >= 10'sh0; // @[SC.scala 283:51]
  reg [5:0] s2_scResps_r_0_ctrs_0_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_0_ctrs_0_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_1_ctrs_0_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_1_ctrs_0_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_2_ctrs_0_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_2_ctrs_0_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_3_ctrs_0_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r_3_ctrs_0_1; // @[Reg.scala 16:16]
  wire [5:0] s1_scResps_0_ctrs_1_0 = scTables_0_io_resp_ctrs_1_0; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_0_ctrs_1_1 = scTables_0_io_resp_ctrs_1_1; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_1_ctrs_1_0 = scTables_1_io_resp_ctrs_1_0; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_1_ctrs_1_1 = scTables_1_io_resp_ctrs_1_1; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_2_ctrs_1_0 = scTables_2_io_resp_ctrs_1_0; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_2_ctrs_1_1 = scTables_2_io_resp_ctrs_1_1; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_3_ctrs_1_0 = scTables_3_io_resp_ctrs_1_0; // @[SC.scala 246:{29,29}]
  wire [5:0] s1_scResps_3_ctrs_1_1 = scTables_3_io_resp_ctrs_1_1; // @[SC.scala 246:{29,29}]
  wire  _GEN_1196 = s2_tageTakens_dup_3_0 ? s2_sumAboveThresholds__1 : s2_sumAboveThresholds__0; // @[SC.scala 290:{29,29}]
  reg [8:0] s2_scTableSums_1_1; // @[Reg.scala 16:16]
  wire [8:0] s2_sumAboveThresholds_signedThres_3 = {1'b0,$signed(scThresholds_1_thres)}; // @[SC.scala 239:35]
  reg [2:0] s2_tagePrvdCtrCentered_r1; // @[Reg.scala 16:16]
  wire [2:0] _s2_tagePrvdCtrCentered_T_2 = s2_tagePrvdCtrCentered_r1 ^ 3'h4; // @[SC.scala 268:52]
  wire [6:0] s2_tagePrvdCtrCentered_1 = {_s2_tagePrvdCtrCentered_T_2,1'h1,3'h0}; // @[SC.scala 268:100]
  wire [8:0] _GEN_1392 = {{2{s2_tagePrvdCtrCentered_1[6]}},s2_tagePrvdCtrCentered_1}; // @[SC.scala 241:29]
  wire [8:0] _s2_sumAboveThresholds_T_53 = $signed(s2_sumAboveThresholds_signedThres_3) - $signed(_GEN_1392); // @[SC.scala 241:29]
  wire [9:0] s2_sumAboveThresholds_totalSum_3 = $signed(s2_scTableSums_1_1) + $signed(_GEN_1392); // @[SC.scala 240:28]
  wire  _s2_sumAboveThresholds_T_56 = ~s2_sumAboveThresholds_totalSum_3[9]; // @[SC.scala 235:24]
  wire [8:0] _s2_sumAboveThresholds_T_60 = 9'sh0 - $signed(s2_sumAboveThresholds_signedThres_3); // @[SC.scala 242:16]
  wire [8:0] _s2_sumAboveThresholds_T_63 = $signed(_s2_sumAboveThresholds_T_60) - $signed(_GEN_1392); // @[SC.scala 242:29]
  wire  _s2_sumAboveThresholds_T_66 = $signed(s2_scTableSums_1_1) < $signed(_s2_sumAboveThresholds_T_63) &
    s2_sumAboveThresholds_totalSum_3[9]; // @[SC.scala 242:41]
  wire  s2_sumAboveThresholds_1_1 = $signed(s2_scTableSums_1_1) > $signed(_s2_sumAboveThresholds_T_53) &
    _s2_sumAboveThresholds_T_56 | _s2_sumAboveThresholds_T_66; // @[SC.scala 241:58]
  reg [8:0] s2_scTableSums_1_0; // @[Reg.scala 16:16]
  wire [9:0] s2_sumAboveThresholds_totalSum_2 = $signed(s2_scTableSums_1_0) + $signed(_GEN_1392); // @[SC.scala 240:28]
  wire  _s2_sumAboveThresholds_T_39 = ~s2_sumAboveThresholds_totalSum_2[9]; // @[SC.scala 235:24]
  wire  _s2_sumAboveThresholds_T_49 = $signed(s2_scTableSums_1_0) < $signed(_s2_sumAboveThresholds_T_63) &
    s2_sumAboveThresholds_totalSum_2[9]; // @[SC.scala 242:41]
  wire  s2_sumAboveThresholds_1_0 = $signed(s2_scTableSums_1_0) > $signed(_s2_sumAboveThresholds_T_53) &
    _s2_sumAboveThresholds_T_39 | _s2_sumAboveThresholds_T_49; // @[SC.scala 241:58]
  wire  _GEN_1282 = s2_tageTakens_dup_3_1 ? s2_sumAboveThresholds_1_1 : s2_sumAboveThresholds_1_0; // @[SC.scala 290:{29,29}]
  wire  s2_scPreds_1_1 = $signed(s2_sumAboveThresholds_totalSum_3) >= 10'sh0; // @[SC.scala 283:51]
  wire  s2_scPreds_1_0 = $signed(s2_sumAboveThresholds_totalSum_2) >= 10'sh0; // @[SC.scala 283:51]
  reg  s3_pred_dup_0; // @[Reg.scala 16:16]
  reg  s3_pred_dup_1; // @[Reg.scala 16:16]
  reg  s3_pred_dup_2; // @[Reg.scala 16:16]
  reg  s3_pred_dup_3; // @[Reg.scala 16:16]
  reg  sc_enable_dup_REG; // @[SC.scala 323:38]
  wire  update_sc_used_0 = updateValids_0 & updateMeta_scMeta_scUsed_0; // @[SC.scala 332:29]
  wire [5:0] sum_hi = io_update_bits_meta[5:0]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_1 = {sum_hi,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_1 = io_update_bits_meta[11:6]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_3 = {sum_hi_1,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_2 = io_update_bits_meta[17:12]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_5 = {sum_hi_2,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_3 = io_update_bits_meta[23:18]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_7 = {sum_hi_3,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _sum_T_8 = $signed(_sum_T_1) + $signed(_sum_T_3); // @[ParallelMux.scala 115:82]
  wire [7:0] _sum_T_9 = $signed(_sum_T_5) + $signed(_sum_T_7); // @[ParallelMux.scala 115:82]
  wire [8:0] _sum_T_10 = $signed(_sum_T_8) + $signed(_sum_T_9); // @[ParallelMux.scala 115:82]
  wire [2:0] _sum_T_11 = updateMeta_providerResps_0_ctr ^ 3'h4; // @[SC.scala 268:52]
  wire [6:0] _sum_T_13 = {_sum_T_11,1'h1,3'h0}; // @[SC.scala 268:100]
  wire [8:0] _GEN_1400 = {{2{_sum_T_13[6]}},_sum_T_13}; // @[SC.scala 338:74]
  wire [9:0] sum = $signed(_sum_T_10) + $signed(_GEN_1400); // @[SC.scala 338:74]
  wire [9:0] _sumAbs_T_3 = 10'sh0 - $signed(sum); // @[SC.scala 339:26]
  wire [9:0] sumAbs = $signed(sum) < 10'sh0 ? $signed(_sumAbs_T_3) : $signed(sum); // @[SC.scala 339:30]
  wire [12:0] sumAboveThreshold_signedThres = {1'b0,$signed(updateThresholds_0)}; // @[SC.scala 239:35]
  wire [9:0] _GEN_1401 = {{3{_sum_T_13[6]}},_sum_T_13}; // @[SC.scala 240:28]
  wire [10:0] sumAboveThreshold_totalSum = $signed(sum) + $signed(_GEN_1401); // @[SC.scala 240:28]
  wire [12:0] _GEN_1402 = {{6{_sum_T_13[6]}},_sum_T_13}; // @[SC.scala 241:29]
  wire [12:0] _sumAboveThreshold_T_5 = $signed(sumAboveThreshold_signedThres) - $signed(_GEN_1402); // @[SC.scala 241:29]
  wire [12:0] _GEN_1403 = {{3{sum[9]}},sum}; // @[SC.scala 241:14]
  wire  _sumAboveThreshold_T_8 = ~sumAboveThreshold_totalSum[10]; // @[SC.scala 235:24]
  wire [12:0] _sumAboveThreshold_T_12 = 13'sh0 - $signed(sumAboveThreshold_signedThres); // @[SC.scala 242:16]
  wire [12:0] _sumAboveThreshold_T_15 = $signed(_sumAboveThreshold_T_12) - $signed(_GEN_1402); // @[SC.scala 242:29]
  wire  _sumAboveThreshold_T_18 = $signed(_GEN_1403) < $signed(_sumAboveThreshold_T_15) & sumAboveThreshold_totalSum[10]
    ; // @[SC.scala 242:41]
  wire  sumAboveThreshold = $signed(_GEN_1403) > $signed(_sumAboveThreshold_T_5) & _sumAboveThreshold_T_8 |
    _sumAboveThreshold_T_18; // @[SC.scala 241:58]
  wire  _update_unconf_0_T = ~sumAboveThreshold; // @[SC.scala 347:29]
  wire  _update_disagree_0_T = updateMeta_scMeta_scPreds_0 != updateMeta_scMeta_tageTakens_0; // @[SC.scala 350:38]
  wire  _sc_corr_tage_misp_0_T = updateMeta_scMeta_scPreds_0 == io_update_bits_br_taken_mask_0; // @[SC.scala 351:40]
  wire  _sc_misp_tage_corr_0_T = updateMeta_scMeta_scPreds_0 != io_update_bits_br_taken_mask_0; // @[SC.scala 352:40]
  wire [7:0] _T_230 = scThresholds_0_thres - 8'h4; // @[SC.scala 355:54]
  wire [9:0] _GEN_1406 = {{2'd0}, _T_230}; // @[SC.scala 355:45]
  wire [7:0] _T_234 = scThresholds_0_thres - 8'h2; // @[SC.scala 355:79]
  wire [9:0] _GEN_1407 = {{2'd0}, _T_234}; // @[SC.scala 355:70]
  wire  newThres_newCtr_oldSatTaken = scThresholds_0_ctr == 5'h1f; // @[BPU.scala 95:27]
  wire  newThres_newCtr_oldSatNotTaken = scThresholds_0_ctr == 5'h0; // @[BPU.scala 96:30]
  wire [4:0] _newThres_newCtr_T_4 = scThresholds_0_ctr + 5'h1; // @[BPU.scala 99:24]
  wire [4:0] _newThres_newCtr_T_6 = scThresholds_0_ctr - 5'h1; // @[BPU.scala 99:35]
  wire [4:0] _newThres_newCtr_T_7 = _sc_misp_tage_corr_0_T ? _newThres_newCtr_T_4 : _newThres_newCtr_T_6; // @[BPU.scala 99:12]
  wire [4:0] _newThres_newCtr_T_8 = newThres_newCtr_oldSatNotTaken & ~_sc_misp_tage_corr_0_T ? 5'h0 :
    _newThres_newCtr_T_7; // @[BPU.scala 98:10]
  wire [4:0] newThres_newCtr = newThres_newCtr_oldSatTaken & _sc_misp_tage_corr_0_T ? 5'h1f : _newThres_newCtr_T_8; // @[BPU.scala 97:8]
  wire [5:0] _newThres_newThres_T_2 = 6'h20 - 6'h1; // @[SC.scala 183:64]
  wire [5:0] _GEN_1408 = {{1'd0}, newThres_newCtr}; // @[SC.scala 183:42]
  wire  _newThres_newThres_T_3 = _GEN_1408 == _newThres_newThres_T_2; // @[SC.scala 183:42]
  wire [7:0] _newThres_newThres_T_7 = scThresholds_0_thres + 8'h2; // @[SC.scala 193:81]
  wire  _newThres_newThres_T_8 = newThres_newCtr == 5'h0; // @[SC.scala 184:42]
  wire  _T_239 = _sc_misp_tage_corr_0_T | _update_unconf_0_T; // @[SC.scala 361:32]
  wire  _GEN_1231 = (_sc_misp_tage_corr_0_T | _update_unconf_0_T) & _sc_misp_tage_corr_0_T; // @[SC.scala 361:55 372:32]
  wire  _GEN_1232 = (_sc_misp_tage_corr_0_T | _update_unconf_0_T) & _sc_corr_tage_misp_0_T; // @[SC.scala 361:55 373:31]
  wire  update_on_mispred_0 = update_sc_used_0 & _GEN_1231; // @[SC.scala 332:56]
  wire  update_on_unconf_0 = update_sc_used_0 & _GEN_1232; // @[SC.scala 332:56]
  wire [6:0] _s1_scTableSums_T_23 = {scTables_0_io_resp_ctrs_1_0,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_25 = {scTables_1_io_resp_ctrs_1_0,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_27 = {scTables_2_io_resp_ctrs_1_0,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_29 = {scTables_3_io_resp_ctrs_1_0,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _s1_scTableSums_T_30 = $signed(_s1_scTableSums_T_23) + $signed(_s1_scTableSums_T_25); // @[ParallelMux.scala 115:82]
  wire [7:0] _s1_scTableSums_T_31 = $signed(_s1_scTableSums_T_27) + $signed(_s1_scTableSums_T_29); // @[ParallelMux.scala 115:82]
  wire [8:0] s1_scTableSums_1_0 = $signed(_s1_scTableSums_T_30) + $signed(_s1_scTableSums_T_31); // @[ParallelMux.scala 115:82]
  wire [6:0] _s1_scTableSums_T_34 = {scTables_0_io_resp_ctrs_1_1,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_36 = {scTables_1_io_resp_ctrs_1_1,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_38 = {scTables_2_io_resp_ctrs_1_1,1'h1}; // @[SC.scala 266:59]
  wire [6:0] _s1_scTableSums_T_40 = {scTables_3_io_resp_ctrs_1_1,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _s1_scTableSums_T_41 = $signed(_s1_scTableSums_T_34) + $signed(_s1_scTableSums_T_36); // @[ParallelMux.scala 115:82]
  wire [7:0] _s1_scTableSums_T_42 = $signed(_s1_scTableSums_T_38) + $signed(_s1_scTableSums_T_40); // @[ParallelMux.scala 115:82]
  wire [8:0] s1_scTableSums_1_1 = $signed(_s1_scTableSums_T_41) + $signed(_s1_scTableSums_T_42); // @[ParallelMux.scala 115:82]
  reg [5:0] s2_scResps_r1_0_ctrs_1_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_0_ctrs_1_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_1_ctrs_1_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_1_ctrs_1_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_2_ctrs_1_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_2_ctrs_1_1; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_3_ctrs_1_0; // @[Reg.scala 16:16]
  reg [5:0] s2_scResps_r1_3_ctrs_1_1; // @[Reg.scala 16:16]
  reg  s3_pred_dup_0_1; // @[Reg.scala 16:16]
  reg  s3_pred_dup_1_1; // @[Reg.scala 16:16]
  reg  s3_pred_dup_2_1; // @[Reg.scala 16:16]
  reg  s3_pred_dup_3_1; // @[Reg.scala 16:16]
  reg  sc_enable_dup_REG_1; // @[SC.scala 323:38]
  wire  update_sc_used_1 = updateValids_1 & updateMeta_scMeta_scUsed_1; // @[SC.scala 332:29]
  wire [5:0] sum_hi_5 = io_update_bits_meta[29:24]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_15 = {sum_hi_5,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_6 = io_update_bits_meta[35:30]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_17 = {sum_hi_6,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_7 = io_update_bits_meta[41:36]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_19 = {sum_hi_7,1'h1}; // @[SC.scala 266:59]
  wire [5:0] sum_hi_8 = io_update_bits_meta[47:42]; // @[Cat.scala 31:58]
  wire [6:0] _sum_T_21 = {sum_hi_8,1'h1}; // @[SC.scala 266:59]
  wire [7:0] _sum_T_22 = $signed(_sum_T_15) + $signed(_sum_T_17); // @[ParallelMux.scala 115:82]
  wire [7:0] _sum_T_23 = $signed(_sum_T_19) + $signed(_sum_T_21); // @[ParallelMux.scala 115:82]
  wire [8:0] _sum_T_24 = $signed(_sum_T_22) + $signed(_sum_T_23); // @[ParallelMux.scala 115:82]
  wire [2:0] _sum_T_25 = updateMeta_providerResps_1_ctr ^ 3'h4; // @[SC.scala 268:52]
  wire [6:0] _sum_T_27 = {_sum_T_25,1'h1,3'h0}; // @[SC.scala 268:100]
  wire [8:0] _GEN_1410 = {{2{_sum_T_27[6]}},_sum_T_27}; // @[SC.scala 338:74]
  wire [9:0] sum_1 = $signed(_sum_T_24) + $signed(_GEN_1410); // @[SC.scala 338:74]
  wire [9:0] _sumAbs_T_8 = 10'sh0 - $signed(sum_1); // @[SC.scala 339:26]
  wire [9:0] sumAbs_1 = $signed(sum_1) < 10'sh0 ? $signed(_sumAbs_T_8) : $signed(sum_1); // @[SC.scala 339:30]
  wire [12:0] sumAboveThreshold_signedThres_1 = {1'b0,$signed(updateThresholds_1)}; // @[SC.scala 239:35]
  wire [9:0] _GEN_1411 = {{3{_sum_T_27[6]}},_sum_T_27}; // @[SC.scala 240:28]
  wire [10:0] sumAboveThreshold_totalSum_1 = $signed(sum_1) + $signed(_GEN_1411); // @[SC.scala 240:28]
  wire [12:0] _GEN_1412 = {{6{_sum_T_27[6]}},_sum_T_27}; // @[SC.scala 241:29]
  wire [12:0] _sumAboveThreshold_T_24 = $signed(sumAboveThreshold_signedThres_1) - $signed(_GEN_1412); // @[SC.scala 241:29]
  wire [12:0] _GEN_1413 = {{3{sum_1[9]}},sum_1}; // @[SC.scala 241:14]
  wire  _sumAboveThreshold_T_27 = ~sumAboveThreshold_totalSum_1[10]; // @[SC.scala 235:24]
  wire [12:0] _sumAboveThreshold_T_31 = 13'sh0 - $signed(sumAboveThreshold_signedThres_1); // @[SC.scala 242:16]
  wire [12:0] _sumAboveThreshold_T_34 = $signed(_sumAboveThreshold_T_31) - $signed(_GEN_1412); // @[SC.scala 242:29]
  wire  _sumAboveThreshold_T_37 = $signed(_GEN_1413) < $signed(_sumAboveThreshold_T_34) & sumAboveThreshold_totalSum_1[
    10]; // @[SC.scala 242:41]
  wire  sumAboveThreshold_1 = $signed(_GEN_1413) > $signed(_sumAboveThreshold_T_24) & _sumAboveThreshold_T_27 |
    _sumAboveThreshold_T_37; // @[SC.scala 241:58]
  wire  _update_unconf_1_T = ~sumAboveThreshold_1; // @[SC.scala 347:29]
  wire  _update_disagree_1_T = updateMeta_scMeta_scPreds_1 != updateMeta_scMeta_tageTakens_1; // @[SC.scala 350:38]
  wire  _sc_corr_tage_misp_1_T = updateMeta_scMeta_scPreds_1 == io_update_bits_br_taken_mask_1; // @[SC.scala 351:40]
  wire  _sc_misp_tage_corr_1_T = updateMeta_scMeta_scPreds_1 != io_update_bits_br_taken_mask_1; // @[SC.scala 352:40]
  wire [7:0] _T_247 = scThresholds_1_thres - 8'h4; // @[SC.scala 355:54]
  wire [9:0] _GEN_1416 = {{2'd0}, _T_247}; // @[SC.scala 355:45]
  wire [7:0] _T_251 = scThresholds_1_thres - 8'h2; // @[SC.scala 355:79]
  wire [9:0] _GEN_1417 = {{2'd0}, _T_251}; // @[SC.scala 355:70]
  wire  newThres_newCtr_oldSatTaken_1 = scThresholds_1_ctr == 5'h1f; // @[BPU.scala 95:27]
  wire  newThres_newCtr_oldSatNotTaken_1 = scThresholds_1_ctr == 5'h0; // @[BPU.scala 96:30]
  wire [4:0] _newThres_newCtr_T_13 = scThresholds_1_ctr + 5'h1; // @[BPU.scala 99:24]
  wire [4:0] _newThres_newCtr_T_15 = scThresholds_1_ctr - 5'h1; // @[BPU.scala 99:35]
  wire [4:0] _newThres_newCtr_T_16 = _sc_misp_tage_corr_1_T ? _newThres_newCtr_T_13 : _newThres_newCtr_T_15; // @[BPU.scala 99:12]
  wire [4:0] _newThres_newCtr_T_17 = newThres_newCtr_oldSatNotTaken_1 & ~_sc_misp_tage_corr_1_T ? 5'h0 :
    _newThres_newCtr_T_16; // @[BPU.scala 98:10]
  wire [4:0] newThres_newCtr_1 = newThres_newCtr_oldSatTaken_1 & _sc_misp_tage_corr_1_T ? 5'h1f : _newThres_newCtr_T_17; // @[BPU.scala 97:8]
  wire [5:0] _GEN_1418 = {{1'd0}, newThres_newCtr_1}; // @[SC.scala 183:42]
  wire  _newThres_newThres_T_17 = _GEN_1418 == _newThres_newThres_T_2; // @[SC.scala 183:42]
  wire [7:0] _newThres_newThres_T_21 = scThresholds_1_thres + 8'h2; // @[SC.scala 193:81]
  wire  _newThres_newThres_T_22 = newThres_newCtr_1 == 5'h0; // @[SC.scala 184:42]
  wire  _T_256 = _sc_misp_tage_corr_1_T | _update_unconf_1_T; // @[SC.scala 361:32]
  wire  _GEN_1317 = (_sc_misp_tage_corr_1_T | _update_unconf_1_T) & _sc_misp_tage_corr_1_T; // @[SC.scala 361:55 372:32]
  wire  _GEN_1318 = (_sc_misp_tage_corr_1_T | _update_unconf_1_T) & _sc_corr_tage_misp_1_T; // @[SC.scala 361:55 373:31]
  wire  update_on_mispred_1 = update_sc_used_1 & _GEN_1317; // @[SC.scala 332:56]
  wire  update_on_unconf_1 = update_sc_used_1 & _GEN_1318; // @[SC.scala 332:56]
  reg  scTables_0_io_update_mask_0_REG; // @[SC.scala 381:49]
  reg  scTables_0_io_update_tagePreds_0_REG; // @[SC.scala 382:54]
  reg  scTables_0_io_update_takens_0_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_0_io_update_oldCtrs_0_REG; // @[SC.scala 384:54]
  reg  scTables_1_io_update_mask_0_REG; // @[SC.scala 381:49]
  reg  scTables_1_io_update_tagePreds_0_REG; // @[SC.scala 382:54]
  reg  scTables_1_io_update_takens_0_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_1_io_update_oldCtrs_0_REG; // @[SC.scala 384:54]
  reg  scTables_2_io_update_mask_0_REG; // @[SC.scala 381:49]
  reg  scTables_2_io_update_tagePreds_0_REG; // @[SC.scala 382:54]
  reg  scTables_2_io_update_takens_0_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_2_io_update_oldCtrs_0_REG; // @[SC.scala 384:54]
  reg  scTables_3_io_update_mask_0_REG; // @[SC.scala 381:49]
  reg  scTables_3_io_update_tagePreds_0_REG; // @[SC.scala 382:54]
  reg  scTables_3_io_update_takens_0_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_3_io_update_oldCtrs_0_REG; // @[SC.scala 384:54]
  reg  scTables_0_io_update_mask_1_REG; // @[SC.scala 381:49]
  reg  scTables_0_io_update_tagePreds_1_REG; // @[SC.scala 382:54]
  reg  scTables_0_io_update_takens_1_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_0_io_update_oldCtrs_1_REG; // @[SC.scala 384:54]
  reg [38:0] scTables_0_io_update_pc_REG_1; // @[SC.scala 385:44]
  reg  scTables_1_io_update_mask_1_REG; // @[SC.scala 381:49]
  reg  scTables_1_io_update_tagePreds_1_REG; // @[SC.scala 382:54]
  reg  scTables_1_io_update_takens_1_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_1_io_update_oldCtrs_1_REG; // @[SC.scala 384:54]
  reg [38:0] scTables_1_io_update_pc_REG_1; // @[SC.scala 385:44]
  reg [3:0] scTables_1_io_update_folded_hist_REG_1_hist_4_folded_hist; // @[SC.scala 386:53]
  reg  scTables_2_io_update_mask_1_REG; // @[SC.scala 381:49]
  reg  scTables_2_io_update_tagePreds_1_REG; // @[SC.scala 382:54]
  reg  scTables_2_io_update_takens_1_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_2_io_update_oldCtrs_1_REG; // @[SC.scala 384:54]
  reg [38:0] scTables_2_io_update_pc_REG_1; // @[SC.scala 385:44]
  reg [7:0] scTables_2_io_update_folded_hist_REG_1_hist_16_folded_hist; // @[SC.scala 386:53]
  reg  scTables_3_io_update_mask_1_REG; // @[SC.scala 381:49]
  reg  scTables_3_io_update_tagePreds_1_REG; // @[SC.scala 382:54]
  reg  scTables_3_io_update_takens_1_REG; // @[SC.scala 383:54]
  reg [5:0] scTables_3_io_update_oldCtrs_1_REG; // @[SC.scala 384:54]
  reg [38:0] scTables_3_io_update_pc_REG_1; // @[SC.scala 385:44]
  reg [7:0] scTables_3_io_update_folded_hist_REG_1_hist_0_folded_hist; // @[SC.scala 386:53]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 97:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  TageTable tables_0 ( // @[Tage.scala 540:21]
    .clock(tables_0_clock),
    .reset(tables_0_reset),
    .io_req_ready(tables_0_io_req_ready),
    .io_req_valid(tables_0_io_req_valid),
    .io_req_bits_pc(tables_0_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_13_folded_hist(tables_0_io_req_bits_folded_hist_hist_13_folded_hist),
    .io_req_bits_folded_hist_hist_8_folded_hist(tables_0_io_req_bits_folded_hist_hist_8_folded_hist),
    .io_resps_0_valid(tables_0_io_resps_0_valid),
    .io_resps_0_bits_ctr(tables_0_io_resps_0_bits_ctr),
    .io_resps_0_bits_u(tables_0_io_resps_0_bits_u),
    .io_resps_0_bits_unconf(tables_0_io_resps_0_bits_unconf),
    .io_resps_1_valid(tables_0_io_resps_1_valid),
    .io_resps_1_bits_ctr(tables_0_io_resps_1_bits_ctr),
    .io_resps_1_bits_u(tables_0_io_resps_1_bits_u),
    .io_resps_1_bits_unconf(tables_0_io_resps_1_bits_unconf),
    .io_update_pc(tables_0_io_update_pc),
    .io_update_folded_hist_hist_13_folded_hist(tables_0_io_update_folded_hist_hist_13_folded_hist),
    .io_update_folded_hist_hist_8_folded_hist(tables_0_io_update_folded_hist_hist_8_folded_hist),
    .io_update_mask_0(tables_0_io_update_mask_0),
    .io_update_mask_1(tables_0_io_update_mask_1),
    .io_update_takens_0(tables_0_io_update_takens_0),
    .io_update_takens_1(tables_0_io_update_takens_1),
    .io_update_alloc_0(tables_0_io_update_alloc_0),
    .io_update_alloc_1(tables_0_io_update_alloc_1),
    .io_update_oldCtrs_0(tables_0_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(tables_0_io_update_oldCtrs_1),
    .io_update_uMask_0(tables_0_io_update_uMask_0),
    .io_update_uMask_1(tables_0_io_update_uMask_1),
    .io_update_us_0(tables_0_io_update_us_0),
    .io_update_us_1(tables_0_io_update_us_1),
    .io_update_reset_u_0(tables_0_io_update_reset_u_0),
    .io_update_reset_u_1(tables_0_io_update_reset_u_1)
  );
  TageTable_1 tables_1 ( // @[Tage.scala 540:21]
    .clock(tables_1_clock),
    .reset(tables_1_reset),
    .io_req_ready(tables_1_io_req_ready),
    .io_req_valid(tables_1_io_req_valid),
    .io_req_bits_pc(tables_1_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_17_folded_hist(tables_1_io_req_bits_folded_hist_hist_17_folded_hist),
    .io_req_bits_folded_hist_hist_12_folded_hist(tables_1_io_req_bits_folded_hist_hist_12_folded_hist),
    .io_req_bits_folded_hist_hist_5_folded_hist(tables_1_io_req_bits_folded_hist_hist_5_folded_hist),
    .io_resps_0_valid(tables_1_io_resps_0_valid),
    .io_resps_0_bits_ctr(tables_1_io_resps_0_bits_ctr),
    .io_resps_0_bits_u(tables_1_io_resps_0_bits_u),
    .io_resps_0_bits_unconf(tables_1_io_resps_0_bits_unconf),
    .io_resps_1_valid(tables_1_io_resps_1_valid),
    .io_resps_1_bits_ctr(tables_1_io_resps_1_bits_ctr),
    .io_resps_1_bits_u(tables_1_io_resps_1_bits_u),
    .io_resps_1_bits_unconf(tables_1_io_resps_1_bits_unconf),
    .io_update_pc(tables_1_io_update_pc),
    .io_update_folded_hist_hist_17_folded_hist(tables_1_io_update_folded_hist_hist_17_folded_hist),
    .io_update_folded_hist_hist_12_folded_hist(tables_1_io_update_folded_hist_hist_12_folded_hist),
    .io_update_folded_hist_hist_5_folded_hist(tables_1_io_update_folded_hist_hist_5_folded_hist),
    .io_update_mask_0(tables_1_io_update_mask_0),
    .io_update_mask_1(tables_1_io_update_mask_1),
    .io_update_takens_0(tables_1_io_update_takens_0),
    .io_update_takens_1(tables_1_io_update_takens_1),
    .io_update_alloc_0(tables_1_io_update_alloc_0),
    .io_update_alloc_1(tables_1_io_update_alloc_1),
    .io_update_oldCtrs_0(tables_1_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(tables_1_io_update_oldCtrs_1),
    .io_update_uMask_0(tables_1_io_update_uMask_0),
    .io_update_uMask_1(tables_1_io_update_uMask_1),
    .io_update_us_0(tables_1_io_update_us_0),
    .io_update_us_1(tables_1_io_update_us_1),
    .io_update_reset_u_0(tables_1_io_update_reset_u_0),
    .io_update_reset_u_1(tables_1_io_update_reset_u_1)
  );
  TageTable_2 tables_2 ( // @[Tage.scala 540:21]
    .clock(tables_2_clock),
    .reset(tables_2_reset),
    .io_req_ready(tables_2_io_req_ready),
    .io_req_valid(tables_2_io_req_valid),
    .io_req_bits_pc(tables_2_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_9_folded_hist(tables_2_io_req_bits_folded_hist_hist_9_folded_hist),
    .io_req_bits_folded_hist_hist_3_folded_hist(tables_2_io_req_bits_folded_hist_hist_3_folded_hist),
    .io_req_bits_folded_hist_hist_1_folded_hist(tables_2_io_req_bits_folded_hist_hist_1_folded_hist),
    .io_resps_0_valid(tables_2_io_resps_0_valid),
    .io_resps_0_bits_ctr(tables_2_io_resps_0_bits_ctr),
    .io_resps_0_bits_u(tables_2_io_resps_0_bits_u),
    .io_resps_0_bits_unconf(tables_2_io_resps_0_bits_unconf),
    .io_resps_1_valid(tables_2_io_resps_1_valid),
    .io_resps_1_bits_ctr(tables_2_io_resps_1_bits_ctr),
    .io_resps_1_bits_u(tables_2_io_resps_1_bits_u),
    .io_resps_1_bits_unconf(tables_2_io_resps_1_bits_unconf),
    .io_update_pc(tables_2_io_update_pc),
    .io_update_folded_hist_hist_9_folded_hist(tables_2_io_update_folded_hist_hist_9_folded_hist),
    .io_update_folded_hist_hist_3_folded_hist(tables_2_io_update_folded_hist_hist_3_folded_hist),
    .io_update_folded_hist_hist_1_folded_hist(tables_2_io_update_folded_hist_hist_1_folded_hist),
    .io_update_mask_0(tables_2_io_update_mask_0),
    .io_update_mask_1(tables_2_io_update_mask_1),
    .io_update_takens_0(tables_2_io_update_takens_0),
    .io_update_takens_1(tables_2_io_update_takens_1),
    .io_update_alloc_0(tables_2_io_update_alloc_0),
    .io_update_alloc_1(tables_2_io_update_alloc_1),
    .io_update_oldCtrs_0(tables_2_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(tables_2_io_update_oldCtrs_1),
    .io_update_uMask_0(tables_2_io_update_uMask_0),
    .io_update_uMask_1(tables_2_io_update_uMask_1),
    .io_update_us_0(tables_2_io_update_us_0),
    .io_update_us_1(tables_2_io_update_us_1),
    .io_update_reset_u_0(tables_2_io_update_reset_u_0),
    .io_update_reset_u_1(tables_2_io_update_reset_u_1)
  );
  TageTable_3 tables_3 ( // @[Tage.scala 540:21]
    .clock(tables_3_clock),
    .reset(tables_3_reset),
    .io_req_ready(tables_3_io_req_ready),
    .io_req_valid(tables_3_io_req_valid),
    .io_req_bits_pc(tables_3_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_15_folded_hist(tables_3_io_req_bits_folded_hist_hist_15_folded_hist),
    .io_req_bits_folded_hist_hist_14_folded_hist(tables_3_io_req_bits_folded_hist_hist_14_folded_hist),
    .io_req_bits_folded_hist_hist_2_folded_hist(tables_3_io_req_bits_folded_hist_hist_2_folded_hist),
    .io_resps_0_valid(tables_3_io_resps_0_valid),
    .io_resps_0_bits_ctr(tables_3_io_resps_0_bits_ctr),
    .io_resps_0_bits_u(tables_3_io_resps_0_bits_u),
    .io_resps_0_bits_unconf(tables_3_io_resps_0_bits_unconf),
    .io_resps_1_valid(tables_3_io_resps_1_valid),
    .io_resps_1_bits_ctr(tables_3_io_resps_1_bits_ctr),
    .io_resps_1_bits_u(tables_3_io_resps_1_bits_u),
    .io_resps_1_bits_unconf(tables_3_io_resps_1_bits_unconf),
    .io_update_pc(tables_3_io_update_pc),
    .io_update_folded_hist_hist_15_folded_hist(tables_3_io_update_folded_hist_hist_15_folded_hist),
    .io_update_folded_hist_hist_14_folded_hist(tables_3_io_update_folded_hist_hist_14_folded_hist),
    .io_update_folded_hist_hist_2_folded_hist(tables_3_io_update_folded_hist_hist_2_folded_hist),
    .io_update_mask_0(tables_3_io_update_mask_0),
    .io_update_mask_1(tables_3_io_update_mask_1),
    .io_update_takens_0(tables_3_io_update_takens_0),
    .io_update_takens_1(tables_3_io_update_takens_1),
    .io_update_alloc_0(tables_3_io_update_alloc_0),
    .io_update_alloc_1(tables_3_io_update_alloc_1),
    .io_update_oldCtrs_0(tables_3_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(tables_3_io_update_oldCtrs_1),
    .io_update_uMask_0(tables_3_io_update_uMask_0),
    .io_update_uMask_1(tables_3_io_update_uMask_1),
    .io_update_us_0(tables_3_io_update_us_0),
    .io_update_us_1(tables_3_io_update_us_1),
    .io_update_reset_u_0(tables_3_io_update_reset_u_0),
    .io_update_reset_u_1(tables_3_io_update_reset_u_1)
  );
  TageBTable bt ( // @[Tage.scala 548:19]
    .clock(bt_clock),
    .reset(bt_reset),
    .io_s0_fire(bt_io_s0_fire),
    .io_s0_pc(bt_io_s0_pc),
    .io_s1_cnt_0(bt_io_s1_cnt_0),
    .io_s1_cnt_1(bt_io_s1_cnt_1),
    .io_update_mask_0(bt_io_update_mask_0),
    .io_update_mask_1(bt_io_update_mask_1),
    .io_update_pc(bt_io_update_pc),
    .io_update_cnt_0(bt_io_update_cnt_0),
    .io_update_cnt_1(bt_io_update_cnt_1),
    .io_update_takens_0(bt_io_update_takens_0),
    .io_update_takens_1(bt_io_update_takens_1)
  );
  SCTable scTables_0 ( // @[SC.scala 219:23]
    .clock(scTables_0_clock),
    .reset(scTables_0_reset),
    .io_req_valid(scTables_0_io_req_valid),
    .io_req_bits_pc(scTables_0_io_req_bits_pc),
    .io_resp_ctrs_0_0(scTables_0_io_resp_ctrs_0_0),
    .io_resp_ctrs_0_1(scTables_0_io_resp_ctrs_0_1),
    .io_resp_ctrs_1_0(scTables_0_io_resp_ctrs_1_0),
    .io_resp_ctrs_1_1(scTables_0_io_resp_ctrs_1_1),
    .io_update_pc(scTables_0_io_update_pc),
    .io_update_mask_0(scTables_0_io_update_mask_0),
    .io_update_mask_1(scTables_0_io_update_mask_1),
    .io_update_oldCtrs_0(scTables_0_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(scTables_0_io_update_oldCtrs_1),
    .io_update_tagePreds_0(scTables_0_io_update_tagePreds_0),
    .io_update_tagePreds_1(scTables_0_io_update_tagePreds_1),
    .io_update_takens_0(scTables_0_io_update_takens_0),
    .io_update_takens_1(scTables_0_io_update_takens_1)
  );
  SCTable_1 scTables_1 ( // @[SC.scala 219:23]
    .clock(scTables_1_clock),
    .reset(scTables_1_reset),
    .io_req_valid(scTables_1_io_req_valid),
    .io_req_bits_pc(scTables_1_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_4_folded_hist(scTables_1_io_req_bits_folded_hist_hist_4_folded_hist),
    .io_resp_ctrs_0_0(scTables_1_io_resp_ctrs_0_0),
    .io_resp_ctrs_0_1(scTables_1_io_resp_ctrs_0_1),
    .io_resp_ctrs_1_0(scTables_1_io_resp_ctrs_1_0),
    .io_resp_ctrs_1_1(scTables_1_io_resp_ctrs_1_1),
    .io_update_pc(scTables_1_io_update_pc),
    .io_update_folded_hist_hist_4_folded_hist(scTables_1_io_update_folded_hist_hist_4_folded_hist),
    .io_update_mask_0(scTables_1_io_update_mask_0),
    .io_update_mask_1(scTables_1_io_update_mask_1),
    .io_update_oldCtrs_0(scTables_1_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(scTables_1_io_update_oldCtrs_1),
    .io_update_tagePreds_0(scTables_1_io_update_tagePreds_0),
    .io_update_tagePreds_1(scTables_1_io_update_tagePreds_1),
    .io_update_takens_0(scTables_1_io_update_takens_0),
    .io_update_takens_1(scTables_1_io_update_takens_1)
  );
  SCTable_2 scTables_2 ( // @[SC.scala 219:23]
    .clock(scTables_2_clock),
    .reset(scTables_2_reset),
    .io_req_valid(scTables_2_io_req_valid),
    .io_req_bits_pc(scTables_2_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_16_folded_hist(scTables_2_io_req_bits_folded_hist_hist_16_folded_hist),
    .io_resp_ctrs_0_0(scTables_2_io_resp_ctrs_0_0),
    .io_resp_ctrs_0_1(scTables_2_io_resp_ctrs_0_1),
    .io_resp_ctrs_1_0(scTables_2_io_resp_ctrs_1_0),
    .io_resp_ctrs_1_1(scTables_2_io_resp_ctrs_1_1),
    .io_update_pc(scTables_2_io_update_pc),
    .io_update_folded_hist_hist_16_folded_hist(scTables_2_io_update_folded_hist_hist_16_folded_hist),
    .io_update_mask_0(scTables_2_io_update_mask_0),
    .io_update_mask_1(scTables_2_io_update_mask_1),
    .io_update_oldCtrs_0(scTables_2_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(scTables_2_io_update_oldCtrs_1),
    .io_update_tagePreds_0(scTables_2_io_update_tagePreds_0),
    .io_update_tagePreds_1(scTables_2_io_update_tagePreds_1),
    .io_update_takens_0(scTables_2_io_update_takens_0),
    .io_update_takens_1(scTables_2_io_update_takens_1)
  );
  SCTable_3 scTables_3 ( // @[SC.scala 219:23]
    .clock(scTables_3_clock),
    .reset(scTables_3_reset),
    .io_req_valid(scTables_3_io_req_valid),
    .io_req_bits_pc(scTables_3_io_req_bits_pc),
    .io_req_bits_folded_hist_hist_0_folded_hist(scTables_3_io_req_bits_folded_hist_hist_0_folded_hist),
    .io_resp_ctrs_0_0(scTables_3_io_resp_ctrs_0_0),
    .io_resp_ctrs_0_1(scTables_3_io_resp_ctrs_0_1),
    .io_resp_ctrs_1_0(scTables_3_io_resp_ctrs_1_0),
    .io_resp_ctrs_1_1(scTables_3_io_resp_ctrs_1_1),
    .io_update_pc(scTables_3_io_update_pc),
    .io_update_folded_hist_hist_0_folded_hist(scTables_3_io_update_folded_hist_hist_0_folded_hist),
    .io_update_mask_0(scTables_3_io_update_mask_0),
    .io_update_mask_1(scTables_3_io_update_mask_1),
    .io_update_oldCtrs_0(scTables_3_io_update_oldCtrs_0),
    .io_update_oldCtrs_1(scTables_3_io_update_oldCtrs_1),
    .io_update_tagePreds_0(scTables_3_io_update_tagePreds_0),
    .io_update_tagePreds_1(scTables_3_io_update_tagePreds_1),
    .io_update_takens_0(scTables_3_io_update_takens_0),
    .io_update_takens_1(scTables_3_io_update_takens_1)
  );
  assign io_out_s2_full_pred_0_br_taken_mask_0 = tage_enable_dup_REG & s2_tageTakens_dup_0_0; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_0_br_taken_mask_1 = tage_enable_dup_REG_1 & s2_tageTakens_dup_0_1; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_1_br_taken_mask_0 = tage_enable_dup_REG & s2_tageTakens_dup_1_0; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_1_br_taken_mask_1 = tage_enable_dup_REG_1 & s2_tageTakens_dup_1_1; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_2_br_taken_mask_0 = tage_enable_dup_REG & s2_tageTakens_dup_2_0; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_2_br_taken_mask_1 = tage_enable_dup_REG_1 & s2_tageTakens_dup_2_1; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_3_br_taken_mask_0 = tage_enable_dup_REG & s2_tageTakens_dup_3_0; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s2_full_pred_3_br_taken_mask_1 = tage_enable_dup_REG_1 & s2_tageTakens_dup_3_1; // @[Tage.scala 596:10 697:26 698:29]
  assign io_out_s3_full_pred_0_br_taken_mask_0 = sc_enable_dup_REG & s3_pred_dup_0; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_0_br_taken_mask_1 = sc_enable_dup_REG_1 & s3_pred_dup_0_1; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_1_br_taken_mask_0 = sc_enable_dup_REG & s3_pred_dup_1; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_1_br_taken_mask_1 = sc_enable_dup_REG_1 & s3_pred_dup_1_1; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_2_br_taken_mask_0 = sc_enable_dup_REG & s3_pred_dup_2; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_2_br_taken_mask_1 = sc_enable_dup_REG_1 & s3_pred_dup_2_1; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_3_br_taken_mask_0 = sc_enable_dup_REG & s3_pred_dup_3; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_s3_full_pred_3_br_taken_mask_1 = sc_enable_dup_REG_1 & s3_pred_dup_3_1; // @[SC.scala 326:28 327:33 Tage.scala 596:10]
  assign io_out_last_stage_meta = {{168'd0}, _io_out_last_stage_meta_T_8}; // @[Tage.scala 597:26]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{4'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 98:17]
  assign tables_0_clock = clock;
  assign tables_0_reset = reset;
  assign tables_0_io_req_valid = io_s0_fire_1; // @[Tage.scala 541:22]
  assign tables_0_io_req_bits_pc = io_in_bits_s0_pc_1; // @[Tage.scala 542:24]
  assign tables_0_io_req_bits_folded_hist_hist_13_folded_hist = io_in_bits_folded_hist_1_hist_13_folded_hist; // @[Tage.scala 543:33]
  assign tables_0_io_req_bits_folded_hist_hist_8_folded_hist = io_in_bits_folded_hist_1_hist_8_folded_hist; // @[Tage.scala 543:33]
  assign tables_0_io_update_pc = tables_0_io_update_pc_REG_1; // @[Tage.scala 833:36]
  assign tables_0_io_update_folded_hist_hist_13_folded_hist = tables_0_io_update_folded_hist_REG_1_hist_13_folded_hist; // @[Tage.scala 834:39]
  assign tables_0_io_update_folded_hist_hist_8_folded_hist = tables_0_io_update_folded_hist_REG_1_hist_8_folded_hist; // @[Tage.scala 834:39]
  assign tables_0_io_update_mask_0 = tables_0_io_update_mask_0_REG; // @[Tage.scala 824:38]
  assign tables_0_io_update_mask_1 = tables_0_io_update_mask_1_REG; // @[Tage.scala 824:38]
  assign tables_0_io_update_takens_0 = tables_0_io_update_takens_0_REG; // @[Tage.scala 825:38]
  assign tables_0_io_update_takens_1 = tables_0_io_update_takens_1_REG; // @[Tage.scala 825:38]
  assign tables_0_io_update_alloc_0 = tables_0_io_update_alloc_0_REG; // @[Tage.scala 826:38]
  assign tables_0_io_update_alloc_1 = tables_0_io_update_alloc_1_REG; // @[Tage.scala 826:38]
  assign tables_0_io_update_oldCtrs_0 = tables_0_io_update_oldCtrs_0_REG; // @[Tage.scala 827:38]
  assign tables_0_io_update_oldCtrs_1 = tables_0_io_update_oldCtrs_1_REG; // @[Tage.scala 827:38]
  assign tables_0_io_update_uMask_0 = tables_0_io_update_uMask_0_REG; // @[Tage.scala 829:38]
  assign tables_0_io_update_uMask_1 = tables_0_io_update_uMask_1_REG; // @[Tage.scala 829:38]
  assign tables_0_io_update_us_0 = tables_0_io_update_us_0_REG; // @[Tage.scala 830:38]
  assign tables_0_io_update_us_1 = tables_0_io_update_us_1_REG; // @[Tage.scala 830:38]
  assign tables_0_io_update_reset_u_0 = tables_0_io_update_reset_u_0_REG; // @[Tage.scala 831:38]
  assign tables_0_io_update_reset_u_1 = tables_0_io_update_reset_u_1_REG; // @[Tage.scala 831:38]
  assign tables_1_clock = clock;
  assign tables_1_reset = reset;
  assign tables_1_io_req_valid = io_s0_fire_1; // @[Tage.scala 541:22]
  assign tables_1_io_req_bits_pc = io_in_bits_s0_pc_1; // @[Tage.scala 542:24]
  assign tables_1_io_req_bits_folded_hist_hist_17_folded_hist = io_in_bits_folded_hist_1_hist_17_folded_hist; // @[Tage.scala 543:33]
  assign tables_1_io_req_bits_folded_hist_hist_12_folded_hist = io_in_bits_folded_hist_1_hist_12_folded_hist; // @[Tage.scala 543:33]
  assign tables_1_io_req_bits_folded_hist_hist_5_folded_hist = io_in_bits_folded_hist_1_hist_5_folded_hist; // @[Tage.scala 543:33]
  assign tables_1_io_update_pc = tables_1_io_update_pc_REG_1; // @[Tage.scala 833:36]
  assign tables_1_io_update_folded_hist_hist_17_folded_hist = tables_1_io_update_folded_hist_REG_1_hist_17_folded_hist; // @[Tage.scala 834:39]
  assign tables_1_io_update_folded_hist_hist_12_folded_hist = tables_1_io_update_folded_hist_REG_1_hist_12_folded_hist; // @[Tage.scala 834:39]
  assign tables_1_io_update_folded_hist_hist_5_folded_hist = tables_1_io_update_folded_hist_REG_1_hist_5_folded_hist; // @[Tage.scala 834:39]
  assign tables_1_io_update_mask_0 = tables_1_io_update_mask_0_REG; // @[Tage.scala 824:38]
  assign tables_1_io_update_mask_1 = tables_1_io_update_mask_1_REG; // @[Tage.scala 824:38]
  assign tables_1_io_update_takens_0 = tables_1_io_update_takens_0_REG; // @[Tage.scala 825:38]
  assign tables_1_io_update_takens_1 = tables_1_io_update_takens_1_REG; // @[Tage.scala 825:38]
  assign tables_1_io_update_alloc_0 = tables_1_io_update_alloc_0_REG; // @[Tage.scala 826:38]
  assign tables_1_io_update_alloc_1 = tables_1_io_update_alloc_1_REG; // @[Tage.scala 826:38]
  assign tables_1_io_update_oldCtrs_0 = tables_1_io_update_oldCtrs_0_REG; // @[Tage.scala 827:38]
  assign tables_1_io_update_oldCtrs_1 = tables_1_io_update_oldCtrs_1_REG; // @[Tage.scala 827:38]
  assign tables_1_io_update_uMask_0 = tables_1_io_update_uMask_0_REG; // @[Tage.scala 829:38]
  assign tables_1_io_update_uMask_1 = tables_1_io_update_uMask_1_REG; // @[Tage.scala 829:38]
  assign tables_1_io_update_us_0 = tables_1_io_update_us_0_REG; // @[Tage.scala 830:38]
  assign tables_1_io_update_us_1 = tables_1_io_update_us_1_REG; // @[Tage.scala 830:38]
  assign tables_1_io_update_reset_u_0 = tables_1_io_update_reset_u_0_REG; // @[Tage.scala 831:38]
  assign tables_1_io_update_reset_u_1 = tables_1_io_update_reset_u_1_REG; // @[Tage.scala 831:38]
  assign tables_2_clock = clock;
  assign tables_2_reset = reset;
  assign tables_2_io_req_valid = io_s0_fire_1; // @[Tage.scala 541:22]
  assign tables_2_io_req_bits_pc = io_in_bits_s0_pc_1; // @[Tage.scala 542:24]
  assign tables_2_io_req_bits_folded_hist_hist_9_folded_hist = io_in_bits_folded_hist_1_hist_9_folded_hist; // @[Tage.scala 543:33]
  assign tables_2_io_req_bits_folded_hist_hist_3_folded_hist = io_in_bits_folded_hist_1_hist_3_folded_hist; // @[Tage.scala 543:33]
  assign tables_2_io_req_bits_folded_hist_hist_1_folded_hist = io_in_bits_folded_hist_1_hist_1_folded_hist; // @[Tage.scala 543:33]
  assign tables_2_io_update_pc = tables_2_io_update_pc_REG_1; // @[Tage.scala 833:36]
  assign tables_2_io_update_folded_hist_hist_9_folded_hist = tables_2_io_update_folded_hist_REG_1_hist_9_folded_hist; // @[Tage.scala 834:39]
  assign tables_2_io_update_folded_hist_hist_3_folded_hist = tables_2_io_update_folded_hist_REG_1_hist_3_folded_hist; // @[Tage.scala 834:39]
  assign tables_2_io_update_folded_hist_hist_1_folded_hist = tables_2_io_update_folded_hist_REG_1_hist_1_folded_hist; // @[Tage.scala 834:39]
  assign tables_2_io_update_mask_0 = tables_2_io_update_mask_0_REG; // @[Tage.scala 824:38]
  assign tables_2_io_update_mask_1 = tables_2_io_update_mask_1_REG; // @[Tage.scala 824:38]
  assign tables_2_io_update_takens_0 = tables_2_io_update_takens_0_REG; // @[Tage.scala 825:38]
  assign tables_2_io_update_takens_1 = tables_2_io_update_takens_1_REG; // @[Tage.scala 825:38]
  assign tables_2_io_update_alloc_0 = tables_2_io_update_alloc_0_REG; // @[Tage.scala 826:38]
  assign tables_2_io_update_alloc_1 = tables_2_io_update_alloc_1_REG; // @[Tage.scala 826:38]
  assign tables_2_io_update_oldCtrs_0 = tables_2_io_update_oldCtrs_0_REG; // @[Tage.scala 827:38]
  assign tables_2_io_update_oldCtrs_1 = tables_2_io_update_oldCtrs_1_REG; // @[Tage.scala 827:38]
  assign tables_2_io_update_uMask_0 = tables_2_io_update_uMask_0_REG; // @[Tage.scala 829:38]
  assign tables_2_io_update_uMask_1 = tables_2_io_update_uMask_1_REG; // @[Tage.scala 829:38]
  assign tables_2_io_update_us_0 = tables_2_io_update_us_0_REG; // @[Tage.scala 830:38]
  assign tables_2_io_update_us_1 = tables_2_io_update_us_1_REG; // @[Tage.scala 830:38]
  assign tables_2_io_update_reset_u_0 = tables_2_io_update_reset_u_0_REG; // @[Tage.scala 831:38]
  assign tables_2_io_update_reset_u_1 = tables_2_io_update_reset_u_1_REG; // @[Tage.scala 831:38]
  assign tables_3_clock = clock;
  assign tables_3_reset = reset;
  assign tables_3_io_req_valid = io_s0_fire_1; // @[Tage.scala 541:22]
  assign tables_3_io_req_bits_pc = io_in_bits_s0_pc_1; // @[Tage.scala 542:24]
  assign tables_3_io_req_bits_folded_hist_hist_15_folded_hist = io_in_bits_folded_hist_1_hist_15_folded_hist; // @[Tage.scala 543:33]
  assign tables_3_io_req_bits_folded_hist_hist_14_folded_hist = io_in_bits_folded_hist_1_hist_14_folded_hist; // @[Tage.scala 543:33]
  assign tables_3_io_req_bits_folded_hist_hist_2_folded_hist = io_in_bits_folded_hist_1_hist_2_folded_hist; // @[Tage.scala 543:33]
  assign tables_3_io_update_pc = tables_3_io_update_pc_REG_1; // @[Tage.scala 833:36]
  assign tables_3_io_update_folded_hist_hist_15_folded_hist = tables_3_io_update_folded_hist_REG_1_hist_15_folded_hist; // @[Tage.scala 834:39]
  assign tables_3_io_update_folded_hist_hist_14_folded_hist = tables_3_io_update_folded_hist_REG_1_hist_14_folded_hist; // @[Tage.scala 834:39]
  assign tables_3_io_update_folded_hist_hist_2_folded_hist = tables_3_io_update_folded_hist_REG_1_hist_2_folded_hist; // @[Tage.scala 834:39]
  assign tables_3_io_update_mask_0 = tables_3_io_update_mask_0_REG; // @[Tage.scala 824:38]
  assign tables_3_io_update_mask_1 = tables_3_io_update_mask_1_REG; // @[Tage.scala 824:38]
  assign tables_3_io_update_takens_0 = tables_3_io_update_takens_0_REG; // @[Tage.scala 825:38]
  assign tables_3_io_update_takens_1 = tables_3_io_update_takens_1_REG; // @[Tage.scala 825:38]
  assign tables_3_io_update_alloc_0 = tables_3_io_update_alloc_0_REG; // @[Tage.scala 826:38]
  assign tables_3_io_update_alloc_1 = tables_3_io_update_alloc_1_REG; // @[Tage.scala 826:38]
  assign tables_3_io_update_oldCtrs_0 = tables_3_io_update_oldCtrs_0_REG; // @[Tage.scala 827:38]
  assign tables_3_io_update_oldCtrs_1 = tables_3_io_update_oldCtrs_1_REG; // @[Tage.scala 827:38]
  assign tables_3_io_update_uMask_0 = tables_3_io_update_uMask_0_REG; // @[Tage.scala 829:38]
  assign tables_3_io_update_uMask_1 = tables_3_io_update_uMask_1_REG; // @[Tage.scala 829:38]
  assign tables_3_io_update_us_0 = tables_3_io_update_us_0_REG; // @[Tage.scala 830:38]
  assign tables_3_io_update_us_1 = tables_3_io_update_us_1_REG; // @[Tage.scala 830:38]
  assign tables_3_io_update_reset_u_0 = tables_3_io_update_reset_u_0_REG; // @[Tage.scala 831:38]
  assign tables_3_io_update_reset_u_1 = tables_3_io_update_reset_u_1_REG; // @[Tage.scala 831:38]
  assign bt_clock = clock;
  assign bt_reset = reset;
  assign bt_io_s0_fire = io_s0_fire_1; // @[Tage.scala 549:17]
  assign bt_io_s0_pc = io_in_bits_s0_pc_1; // @[Tage.scala 550:17]
  assign bt_io_update_mask_0 = REG_2_0; // @[Tage.scala 838:21]
  assign bt_io_update_mask_1 = REG_2_1; // @[Tage.scala 838:21]
  assign bt_io_update_pc = bt_io_update_pc_REG; // @[Tage.scala 840:19]
  assign bt_io_update_cnt_0 = REG_3_0; // @[Tage.scala 839:20]
  assign bt_io_update_cnt_1 = REG_3_1; // @[Tage.scala 839:20]
  assign bt_io_update_takens_0 = REG_4_0; // @[Tage.scala 841:23]
  assign bt_io_update_takens_1 = REG_4_1; // @[Tage.scala 841:23]
  assign scTables_0_clock = clock;
  assign scTables_0_reset = reset;
  assign scTables_0_io_req_valid = io_s0_fire_3; // @[SC.scala 221:19]
  assign scTables_0_io_req_bits_pc = io_in_bits_s0_pc_3; // @[SC.scala 222:21]
  assign scTables_0_io_update_pc = scTables_0_io_update_pc_REG_1; // @[SC.scala 385:34]
  assign scTables_0_io_update_mask_0 = scTables_0_io_update_mask_0_REG; // @[SC.scala 381:39]
  assign scTables_0_io_update_mask_1 = scTables_0_io_update_mask_1_REG; // @[SC.scala 381:39]
  assign scTables_0_io_update_oldCtrs_0 = scTables_0_io_update_oldCtrs_0_REG; // @[SC.scala 384:44]
  assign scTables_0_io_update_oldCtrs_1 = scTables_0_io_update_oldCtrs_1_REG; // @[SC.scala 384:44]
  assign scTables_0_io_update_tagePreds_0 = scTables_0_io_update_tagePreds_0_REG; // @[SC.scala 382:44]
  assign scTables_0_io_update_tagePreds_1 = scTables_0_io_update_tagePreds_1_REG; // @[SC.scala 382:44]
  assign scTables_0_io_update_takens_0 = scTables_0_io_update_takens_0_REG; // @[SC.scala 383:44]
  assign scTables_0_io_update_takens_1 = scTables_0_io_update_takens_1_REG; // @[SC.scala 383:44]
  assign scTables_1_clock = clock;
  assign scTables_1_reset = reset;
  assign scTables_1_io_req_valid = io_s0_fire_3; // @[SC.scala 221:19]
  assign scTables_1_io_req_bits_pc = io_in_bits_s0_pc_3; // @[SC.scala 222:21]
  assign scTables_1_io_req_bits_folded_hist_hist_4_folded_hist = io_in_bits_folded_hist_3_hist_4_folded_hist; // @[SC.scala 223:30]
  assign scTables_1_io_update_pc = scTables_1_io_update_pc_REG_1; // @[SC.scala 385:34]
  assign scTables_1_io_update_folded_hist_hist_4_folded_hist = scTables_1_io_update_folded_hist_REG_1_hist_4_folded_hist
    ; // @[SC.scala 386:43]
  assign scTables_1_io_update_mask_0 = scTables_1_io_update_mask_0_REG; // @[SC.scala 381:39]
  assign scTables_1_io_update_mask_1 = scTables_1_io_update_mask_1_REG; // @[SC.scala 381:39]
  assign scTables_1_io_update_oldCtrs_0 = scTables_1_io_update_oldCtrs_0_REG; // @[SC.scala 384:44]
  assign scTables_1_io_update_oldCtrs_1 = scTables_1_io_update_oldCtrs_1_REG; // @[SC.scala 384:44]
  assign scTables_1_io_update_tagePreds_0 = scTables_1_io_update_tagePreds_0_REG; // @[SC.scala 382:44]
  assign scTables_1_io_update_tagePreds_1 = scTables_1_io_update_tagePreds_1_REG; // @[SC.scala 382:44]
  assign scTables_1_io_update_takens_0 = scTables_1_io_update_takens_0_REG; // @[SC.scala 383:44]
  assign scTables_1_io_update_takens_1 = scTables_1_io_update_takens_1_REG; // @[SC.scala 383:44]
  assign scTables_2_clock = clock;
  assign scTables_2_reset = reset;
  assign scTables_2_io_req_valid = io_s0_fire_3; // @[SC.scala 221:19]
  assign scTables_2_io_req_bits_pc = io_in_bits_s0_pc_3; // @[SC.scala 222:21]
  assign scTables_2_io_req_bits_folded_hist_hist_16_folded_hist = io_in_bits_folded_hist_3_hist_16_folded_hist; // @[SC.scala 223:30]
  assign scTables_2_io_update_pc = scTables_2_io_update_pc_REG_1; // @[SC.scala 385:34]
  assign scTables_2_io_update_folded_hist_hist_16_folded_hist =
    scTables_2_io_update_folded_hist_REG_1_hist_16_folded_hist; // @[SC.scala 386:43]
  assign scTables_2_io_update_mask_0 = scTables_2_io_update_mask_0_REG; // @[SC.scala 381:39]
  assign scTables_2_io_update_mask_1 = scTables_2_io_update_mask_1_REG; // @[SC.scala 381:39]
  assign scTables_2_io_update_oldCtrs_0 = scTables_2_io_update_oldCtrs_0_REG; // @[SC.scala 384:44]
  assign scTables_2_io_update_oldCtrs_1 = scTables_2_io_update_oldCtrs_1_REG; // @[SC.scala 384:44]
  assign scTables_2_io_update_tagePreds_0 = scTables_2_io_update_tagePreds_0_REG; // @[SC.scala 382:44]
  assign scTables_2_io_update_tagePreds_1 = scTables_2_io_update_tagePreds_1_REG; // @[SC.scala 382:44]
  assign scTables_2_io_update_takens_0 = scTables_2_io_update_takens_0_REG; // @[SC.scala 383:44]
  assign scTables_2_io_update_takens_1 = scTables_2_io_update_takens_1_REG; // @[SC.scala 383:44]
  assign scTables_3_clock = clock;
  assign scTables_3_reset = reset;
  assign scTables_3_io_req_valid = io_s0_fire_3; // @[SC.scala 221:19]
  assign scTables_3_io_req_bits_pc = io_in_bits_s0_pc_3; // @[SC.scala 222:21]
  assign scTables_3_io_req_bits_folded_hist_hist_0_folded_hist = io_in_bits_folded_hist_3_hist_0_folded_hist; // @[SC.scala 223:30]
  assign scTables_3_io_update_pc = scTables_3_io_update_pc_REG_1; // @[SC.scala 385:34]
  assign scTables_3_io_update_folded_hist_hist_0_folded_hist = scTables_3_io_update_folded_hist_REG_1_hist_0_folded_hist
    ; // @[SC.scala 386:43]
  assign scTables_3_io_update_mask_0 = scTables_3_io_update_mask_0_REG; // @[SC.scala 381:39]
  assign scTables_3_io_update_mask_1 = scTables_3_io_update_mask_1_REG; // @[SC.scala 381:39]
  assign scTables_3_io_update_oldCtrs_0 = scTables_3_io_update_oldCtrs_0_REG; // @[SC.scala 384:44]
  assign scTables_3_io_update_oldCtrs_1 = scTables_3_io_update_oldCtrs_1_REG; // @[SC.scala 384:44]
  assign scTables_3_io_update_tagePreds_0 = scTables_3_io_update_tagePreds_0_REG; // @[SC.scala 382:44]
  assign scTables_3_io_update_tagePreds_1 = scTables_3_io_update_tagePreds_1_REG; // @[SC.scala 382:44]
  assign scTables_3_io_update_takens_0 = scTables_3_io_update_takens_0_REG; // @[SC.scala 383:44]
  assign scTables_3_io_update_takens_1 = scTables_3_io_update_takens_1_REG; // @[SC.scala 383:44]
  always @(posedge clock) begin
    if (REG_1) begin // @[BPU.scala 191:58]
      s1_pc_dup_0 <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 192:39]
    end else if (io_s0_fire_0) begin // @[Reg.scala 17:18]
      s1_pc_dup_0 <= io_in_bits_s0_pc_0; // @[Reg.scala 17:22]
    end
    REG <= reset; // @[BPU.scala 191:31]
    REG_1 <= REG & ~reset; // @[BPU.scala 191:39]
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_provideds_0 <= provided; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_provideds_1 <= provided_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_0_valid | s1_resps_2_0_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_0_valid) begin // @[ParallelMux.scala 90:77]
          s2_providers_0 <= 2'h3;
        end else begin
          s2_providers_0 <= 2'h2;
        end
      end else if (s1_resps_1_0_valid) begin // @[ParallelMux.scala 90:77]
        s2_providers_0 <= 2'h1;
      end else begin
        s2_providers_0 <= 2'h0;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_1_valid | s1_resps_2_1_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_1_valid) begin // @[ParallelMux.scala 90:77]
          s2_providers_1 <= 2'h3;
        end else begin
          s2_providers_1 <= 2'h2;
        end
      end else if (s1_resps_1_1_valid) begin // @[ParallelMux.scala 90:77]
        s2_providers_1 <= 2'h1;
      end else begin
        s2_providers_1 <= 2'h0;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_0_valid | s1_resps_2_0_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_0_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_0_ctr <= s1_resps_3_0_bits_ctr;
        end else begin
          s2_providerResps_0_ctr <= s1_resps_2_0_bits_ctr;
        end
      end else if (s1_resps_1_0_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_0_ctr <= s1_resps_1_0_bits_ctr;
      end else begin
        s2_providerResps_0_ctr <= s1_resps_0_0_bits_ctr;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_0_valid | s1_resps_2_0_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_0_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_0_u <= s1_resps_3_0_bits_u;
        end else begin
          s2_providerResps_0_u <= s1_resps_2_0_bits_u;
        end
      end else if (s1_resps_1_0_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_0_u <= s1_resps_1_0_bits_u;
      end else begin
        s2_providerResps_0_u <= s1_resps_0_0_bits_u;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_0_valid | s1_resps_2_0_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_0_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_0_unconf <= s1_resps_3_0_bits_unconf;
        end else begin
          s2_providerResps_0_unconf <= s1_resps_2_0_bits_unconf;
        end
      end else if (s1_resps_1_0_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_0_unconf <= s1_resps_1_0_bits_unconf;
      end else begin
        s2_providerResps_0_unconf <= s1_resps_0_0_bits_unconf;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_1_valid | s1_resps_2_1_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_1_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_1_ctr <= s1_resps_3_1_bits_ctr;
        end else begin
          s2_providerResps_1_ctr <= s1_resps_2_1_bits_ctr;
        end
      end else if (s1_resps_1_1_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_1_ctr <= s1_resps_1_1_bits_ctr;
      end else begin
        s2_providerResps_1_ctr <= s1_resps_0_1_bits_ctr;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_1_valid | s1_resps_2_1_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_1_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_1_u <= s1_resps_3_1_bits_u;
        end else begin
          s2_providerResps_1_u <= s1_resps_2_1_bits_u;
        end
      end else if (s1_resps_1_1_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_1_u <= s1_resps_1_1_bits_u;
      end else begin
        s2_providerResps_1_u <= s1_resps_0_1_bits_u;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_resps_3_1_valid | s1_resps_2_1_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_1_valid) begin // @[ParallelMux.scala 90:77]
          s2_providerResps_1_unconf <= s1_resps_3_1_bits_unconf;
        end else begin
          s2_providerResps_1_unconf <= s1_resps_2_1_bits_unconf;
        end
      end else if (s1_resps_1_1_valid) begin // @[ParallelMux.scala 90:77]
        s2_providerResps_1_unconf <= s1_resps_1_1_bits_unconf;
      end else begin
        s2_providerResps_1_unconf <= s1_resps_0_1_bits_unconf;
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_altUsed_0 <= s1_altUsed_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_altUsed_1 <= s1_altUsed_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      if (s1_altUsed_0) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_0_0 <= bt_io_s1_cnt_0[1];
      end else begin
        s2_tageTakens_dup_0_0 <= providerInfo_resp_ctr[2];
      end
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      if (s1_altUsed_1) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_0_1 <= bt_io_s1_cnt_1[1];
      end else begin
        s2_tageTakens_dup_0_1 <= providerInfo_1_resp_ctr[2];
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_altUsed_0) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_1_0 <= bt_io_s1_cnt_0[1];
      end else begin
        s2_tageTakens_dup_1_0 <= providerInfo_resp_ctr[2];
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      if (s1_altUsed_1) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_1_1 <= bt_io_s1_cnt_1[1];
      end else begin
        s2_tageTakens_dup_1_1 <= providerInfo_1_resp_ctr[2];
      end
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      if (s1_altUsed_0) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_2_0 <= bt_io_s1_cnt_0[1];
      end else begin
        s2_tageTakens_dup_2_0 <= providerInfo_resp_ctr[2];
      end
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      if (s1_altUsed_1) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_2_1 <= bt_io_s1_cnt_1[1];
      end else begin
        s2_tageTakens_dup_2_1 <= providerInfo_1_resp_ctr[2];
      end
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      if (s1_altUsed_0) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_3_0 <= bt_io_s1_cnt_0[1];
      end else begin
        s2_tageTakens_dup_3_0 <= providerInfo_resp_ctr[2];
      end
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      if (s1_altUsed_1) begin // @[Tage.scala 682:10]
        s2_tageTakens_dup_3_1 <= bt_io_s1_cnt_1[1];
      end else begin
        s2_tageTakens_dup_3_1 <= providerInfo_1_resp_ctr[2];
      end
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_finalAltPreds_0 <= bt_io_s1_cnt_0[1]; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_finalAltPreds_1 <= bt_io_s1_cnt_1[1]; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_basecnts_0 <= s1_basecnts_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_basecnts_1 <= s1_basecnts_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_0) begin // @[SC.scala 286:30]
        r__0 <= s2_scResps_r_0_ctrs_0_1; // @[SC.scala 286:30]
      end else begin
        r__0 <= s2_scResps_r_0_ctrs_0_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_0) begin // @[SC.scala 286:30]
        r__1 <= s2_scResps_r_1_ctrs_0_1; // @[SC.scala 286:30]
      end else begin
        r__1 <= s2_scResps_r_1_ctrs_0_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_0) begin // @[SC.scala 286:30]
        r__2 <= s2_scResps_r_2_ctrs_0_1; // @[SC.scala 286:30]
      end else begin
        r__2 <= s2_scResps_r_2_ctrs_0_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_0) begin // @[SC.scala 286:30]
        r__3 <= s2_scResps_r_3_ctrs_0_1; // @[SC.scala 286:30]
      end else begin
        r__3 <= s2_scResps_r_3_ctrs_0_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_1) begin // @[SC.scala 286:30]
        r_1_0 <= s2_scResps_r1_0_ctrs_1_1; // @[SC.scala 286:30]
      end else begin
        r_1_0 <= s2_scResps_r1_0_ctrs_1_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_1) begin // @[SC.scala 286:30]
        r_1_1 <= s2_scResps_r1_1_ctrs_1_1; // @[SC.scala 286:30]
      end else begin
        r_1_1 <= s2_scResps_r1_1_ctrs_1_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_1) begin // @[SC.scala 286:30]
        r_1_2 <= s2_scResps_r1_2_ctrs_1_1; // @[SC.scala 286:30]
      end else begin
        r_1_2 <= s2_scResps_r1_2_ctrs_1_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_1) begin // @[SC.scala 286:30]
        r_1_3 <= s2_scResps_r1_3_ctrs_1_1; // @[SC.scala 286:30]
      end else begin
        r_1_3 <= s2_scResps_r1_3_ctrs_1_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_1) begin // @[SC.scala 290:12]
        resp_meta_scMeta_scPreds_1_r <= s2_scPreds_1_1; // @[SC.scala 290:12]
      end else begin
        resp_meta_scMeta_scPreds_1_r <= s2_scPreds_1_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_tageTakens_dup_3_0) begin // @[SC.scala 290:12]
        resp_meta_scMeta_scPreds_0_r <= s2_scPreds__1; // @[SC.scala 290:12]
      end else begin
        resp_meta_scMeta_scPreds_0_r <= s2_scPreds__0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      resp_meta_scMeta_scUsed_1_r <= s2_provideds_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      resp_meta_scMeta_scUsed_0_r <= s2_provideds_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      resp_meta_scMeta_tageTakens_1_r <= s2_tageTakens_dup_3_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      resp_meta_scMeta_tageTakens_0_r <= s2_tageTakens_dup_3_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_allocates_0_r <= allocatableSlots; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_takens_1_r <= s2_tageTakens_dup_0_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_takens_0_r <= s2_tageTakens_dup_0_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_basecnts_0_r <= s2_basecnts_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_allocates_1_r <= allocatableSlots_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_altDiffers_0_r <= _resp_meta_altDiffers_0_T; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_basecnts_1_r <= s2_basecnts_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_altUsed_0_r <= s2_altUsed_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_altDiffers_1_r <= _resp_meta_altDiffers_1_T; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_0_runconf <= s2_providerResps_0_unconf; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_altUsed_1_r <= s2_altUsed_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_0_rctr <= s2_providerResps_0_ctr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_0_ru <= s2_providerResps_0_u; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_1_ru <= s2_providerResps_1_u; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_1_runconf <= s2_providerResps_1_unconf; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providers_0_bits_r <= s2_providers_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providerResps_1_rctr <= s2_providerResps_1_ctr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providers_1_valid_r <= s2_provideds_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providers_1_bits_r <= s2_providers_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      resp_meta_providers_0_valid_r <= s2_provideds_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      allocatableSlots <= _allocatableSlots_T_25; // @[Reg.scala 17:22]
    end
    tage_enable_dup_REG <= io_ctrl_tage_enable; // @[Tage.scala 695:38]
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      allocatableSlots_1 <= _allocatableSlots_T_51; // @[Reg.scala 17:22]
    end
    tage_enable_dup_REG_1 <= io_ctrl_tage_enable; // @[Tage.scala 695:38]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_0_io_update_mask_0_REG <= _GEN_524;
      end else begin
        tables_0_io_update_mask_0_REG <= _GEN_491;
      end
    end else begin
      tables_0_io_update_mask_0_REG <= _GEN_491;
    end
    tables_0_io_update_takens_0_REG <= updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
    tables_0_io_update_alloc_0_REG <= needToAllocate & _GEN_552; // @[Tage.scala 780:27]
    tables_0_io_update_oldCtrs_0_REG <= io_update_bits_meta[76:74]; // @[Tage.scala 609:40]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_0_io_update_uMask_0_REG <= _GEN_536;
      end else begin
        tables_0_io_update_uMask_0_REG <= _GEN_495;
      end
    end else begin
      tables_0_io_update_uMask_0_REG <= _GEN_495;
    end
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        if (2'h0 == allocate) begin // @[Tage.scala 804:30]
          tables_0_io_update_us_0_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_0_io_update_us_0_REG <= updateProviderCorrect;
        end
      end else begin
        tables_0_io_update_us_0_REG <= updateProviderCorrect;
      end
    end else begin
      tables_0_io_update_us_0_REG <= updateProviderCorrect;
    end
    tables_0_io_update_reset_u_0_REG <= needToAllocate & _T_38; // @[Tage.scala 780:27]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_1_io_update_mask_0_REG <= _GEN_525;
      end else begin
        tables_1_io_update_mask_0_REG <= _GEN_492;
      end
    end else begin
      tables_1_io_update_mask_0_REG <= _GEN_492;
    end
    tables_1_io_update_takens_0_REG <= updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
    tables_1_io_update_alloc_0_REG <= needToAllocate & _GEN_553; // @[Tage.scala 780:27]
    tables_1_io_update_oldCtrs_0_REG <= io_update_bits_meta[76:74]; // @[Tage.scala 609:40]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_1_io_update_uMask_0_REG <= _GEN_537;
      end else begin
        tables_1_io_update_uMask_0_REG <= _GEN_496;
      end
    end else begin
      tables_1_io_update_uMask_0_REG <= _GEN_496;
    end
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        if (2'h1 == allocate) begin // @[Tage.scala 804:30]
          tables_1_io_update_us_0_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_1_io_update_us_0_REG <= updateProviderCorrect;
        end
      end else begin
        tables_1_io_update_us_0_REG <= updateProviderCorrect;
      end
    end else begin
      tables_1_io_update_us_0_REG <= updateProviderCorrect;
    end
    tables_1_io_update_reset_u_0_REG <= needToAllocate & _T_38; // @[Tage.scala 780:27]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_2_io_update_mask_0_REG <= _GEN_526;
      end else begin
        tables_2_io_update_mask_0_REG <= _GEN_493;
      end
    end else begin
      tables_2_io_update_mask_0_REG <= _GEN_493;
    end
    tables_2_io_update_takens_0_REG <= updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
    tables_2_io_update_alloc_0_REG <= needToAllocate & _GEN_554; // @[Tage.scala 780:27]
    tables_2_io_update_oldCtrs_0_REG <= io_update_bits_meta[76:74]; // @[Tage.scala 609:40]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_2_io_update_uMask_0_REG <= _GEN_538;
      end else begin
        tables_2_io_update_uMask_0_REG <= _GEN_497;
      end
    end else begin
      tables_2_io_update_uMask_0_REG <= _GEN_497;
    end
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        if (2'h2 == allocate) begin // @[Tage.scala 804:30]
          tables_2_io_update_us_0_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_2_io_update_us_0_REG <= updateProviderCorrect;
        end
      end else begin
        tables_2_io_update_us_0_REG <= updateProviderCorrect;
      end
    end else begin
      tables_2_io_update_us_0_REG <= updateProviderCorrect;
    end
    tables_2_io_update_reset_u_0_REG <= needToAllocate & _T_38; // @[Tage.scala 780:27]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_3_io_update_mask_0_REG <= _GEN_527;
      end else begin
        tables_3_io_update_mask_0_REG <= _GEN_494;
      end
    end else begin
      tables_3_io_update_mask_0_REG <= _GEN_494;
    end
    tables_3_io_update_takens_0_REG <= updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
    tables_3_io_update_alloc_0_REG <= needToAllocate & _GEN_555; // @[Tage.scala 780:27]
    tables_3_io_update_oldCtrs_0_REG <= io_update_bits_meta[76:74]; // @[Tage.scala 609:40]
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        tables_3_io_update_uMask_0_REG <= _GEN_539;
      end else begin
        tables_3_io_update_uMask_0_REG <= _GEN_498;
      end
    end else begin
      tables_3_io_update_uMask_0_REG <= _GEN_498;
    end
    if (needToAllocate) begin // @[Tage.scala 780:27]
      if (canAllocate) begin // @[Tage.scala 799:26]
        if (2'h3 == allocate) begin // @[Tage.scala 804:30]
          tables_3_io_update_us_0_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_3_io_update_us_0_REG <= updateProviderCorrect;
        end
      end else begin
        tables_3_io_update_us_0_REG <= updateProviderCorrect;
      end
    end else begin
      tables_3_io_update_us_0_REG <= updateProviderCorrect;
    end
    tables_3_io_update_reset_u_0_REG <= needToAllocate & _T_38; // @[Tage.scala 780:27]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_0_io_update_mask_1_REG <= _GEN_1070;
      end else begin
        tables_0_io_update_mask_1_REG <= _GEN_1037;
      end
    end else begin
      tables_0_io_update_mask_1_REG <= _GEN_1037;
    end
    tables_0_io_update_takens_1_REG <= updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
    tables_0_io_update_alloc_1_REG <= needToAllocate_1 & _GEN_1098; // @[Tage.scala 780:27]
    tables_0_io_update_oldCtrs_1_REG <= io_update_bits_meta[81:79]; // @[Tage.scala 609:40]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_0_io_update_uMask_1_REG <= _GEN_1082;
      end else begin
        tables_0_io_update_uMask_1_REG <= _GEN_1041;
      end
    end else begin
      tables_0_io_update_uMask_1_REG <= _GEN_1041;
    end
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        if (2'h0 == allocate_1) begin // @[Tage.scala 804:30]
          tables_0_io_update_us_1_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_0_io_update_us_1_REG <= updateProviderCorrect_1;
        end
      end else begin
        tables_0_io_update_us_1_REG <= updateProviderCorrect_1;
      end
    end else begin
      tables_0_io_update_us_1_REG <= updateProviderCorrect_1;
    end
    tables_0_io_update_reset_u_1_REG <= needToAllocate_1 & _T_107; // @[Tage.scala 780:27]
    tables_0_io_update_pc_REG_1 <= io_update_bits_pc; // @[Tage.scala 833:46]
    tables_0_io_update_folded_hist_REG_1_hist_13_folded_hist <= io_update_bits_spec_info_folded_hist_hist_13_folded_hist
      ; // @[Tage.scala 834:49]
    tables_0_io_update_folded_hist_REG_1_hist_8_folded_hist <= io_update_bits_spec_info_folded_hist_hist_8_folded_hist; // @[Tage.scala 834:49]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_1_io_update_mask_1_REG <= _GEN_1071;
      end else begin
        tables_1_io_update_mask_1_REG <= _GEN_1038;
      end
    end else begin
      tables_1_io_update_mask_1_REG <= _GEN_1038;
    end
    tables_1_io_update_takens_1_REG <= updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
    tables_1_io_update_alloc_1_REG <= needToAllocate_1 & _GEN_1099; // @[Tage.scala 780:27]
    tables_1_io_update_oldCtrs_1_REG <= io_update_bits_meta[81:79]; // @[Tage.scala 609:40]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_1_io_update_uMask_1_REG <= _GEN_1083;
      end else begin
        tables_1_io_update_uMask_1_REG <= _GEN_1042;
      end
    end else begin
      tables_1_io_update_uMask_1_REG <= _GEN_1042;
    end
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        if (2'h1 == allocate_1) begin // @[Tage.scala 804:30]
          tables_1_io_update_us_1_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_1_io_update_us_1_REG <= updateProviderCorrect_1;
        end
      end else begin
        tables_1_io_update_us_1_REG <= updateProviderCorrect_1;
      end
    end else begin
      tables_1_io_update_us_1_REG <= updateProviderCorrect_1;
    end
    tables_1_io_update_reset_u_1_REG <= needToAllocate_1 & _T_107; // @[Tage.scala 780:27]
    tables_1_io_update_pc_REG_1 <= io_update_bits_pc; // @[Tage.scala 833:46]
    tables_1_io_update_folded_hist_REG_1_hist_17_folded_hist <= io_update_bits_spec_info_folded_hist_hist_17_folded_hist
      ; // @[Tage.scala 834:49]
    tables_1_io_update_folded_hist_REG_1_hist_12_folded_hist <= io_update_bits_spec_info_folded_hist_hist_12_folded_hist
      ; // @[Tage.scala 834:49]
    tables_1_io_update_folded_hist_REG_1_hist_5_folded_hist <= io_update_bits_spec_info_folded_hist_hist_5_folded_hist; // @[Tage.scala 834:49]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_2_io_update_mask_1_REG <= _GEN_1072;
      end else begin
        tables_2_io_update_mask_1_REG <= _GEN_1039;
      end
    end else begin
      tables_2_io_update_mask_1_REG <= _GEN_1039;
    end
    tables_2_io_update_takens_1_REG <= updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
    tables_2_io_update_alloc_1_REG <= needToAllocate_1 & _GEN_1100; // @[Tage.scala 780:27]
    tables_2_io_update_oldCtrs_1_REG <= io_update_bits_meta[81:79]; // @[Tage.scala 609:40]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_2_io_update_uMask_1_REG <= _GEN_1084;
      end else begin
        tables_2_io_update_uMask_1_REG <= _GEN_1043;
      end
    end else begin
      tables_2_io_update_uMask_1_REG <= _GEN_1043;
    end
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        if (2'h2 == allocate_1) begin // @[Tage.scala 804:30]
          tables_2_io_update_us_1_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_2_io_update_us_1_REG <= updateProviderCorrect_1;
        end
      end else begin
        tables_2_io_update_us_1_REG <= updateProviderCorrect_1;
      end
    end else begin
      tables_2_io_update_us_1_REG <= updateProviderCorrect_1;
    end
    tables_2_io_update_reset_u_1_REG <= needToAllocate_1 & _T_107; // @[Tage.scala 780:27]
    tables_2_io_update_pc_REG_1 <= io_update_bits_pc; // @[Tage.scala 833:46]
    tables_2_io_update_folded_hist_REG_1_hist_9_folded_hist <= io_update_bits_spec_info_folded_hist_hist_9_folded_hist; // @[Tage.scala 834:49]
    tables_2_io_update_folded_hist_REG_1_hist_3_folded_hist <= io_update_bits_spec_info_folded_hist_hist_3_folded_hist; // @[Tage.scala 834:49]
    tables_2_io_update_folded_hist_REG_1_hist_1_folded_hist <= io_update_bits_spec_info_folded_hist_hist_1_folded_hist; // @[Tage.scala 834:49]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_3_io_update_mask_1_REG <= _GEN_1073;
      end else begin
        tables_3_io_update_mask_1_REG <= _GEN_1040;
      end
    end else begin
      tables_3_io_update_mask_1_REG <= _GEN_1040;
    end
    tables_3_io_update_takens_1_REG <= updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
    tables_3_io_update_alloc_1_REG <= needToAllocate_1 & _GEN_1101; // @[Tage.scala 780:27]
    tables_3_io_update_oldCtrs_1_REG <= io_update_bits_meta[81:79]; // @[Tage.scala 609:40]
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        tables_3_io_update_uMask_1_REG <= _GEN_1085;
      end else begin
        tables_3_io_update_uMask_1_REG <= _GEN_1044;
      end
    end else begin
      tables_3_io_update_uMask_1_REG <= _GEN_1044;
    end
    if (needToAllocate_1) begin // @[Tage.scala 780:27]
      if (_canAllocate_T) begin // @[Tage.scala 799:26]
        if (2'h3 == allocate_1) begin // @[Tage.scala 804:30]
          tables_3_io_update_us_1_REG <= 1'h0; // @[Tage.scala 804:30]
        end else begin
          tables_3_io_update_us_1_REG <= updateProviderCorrect_1;
        end
      end else begin
        tables_3_io_update_us_1_REG <= updateProviderCorrect_1;
      end
    end else begin
      tables_3_io_update_us_1_REG <= updateProviderCorrect_1;
    end
    tables_3_io_update_reset_u_1_REG <= needToAllocate_1 & _T_107; // @[Tage.scala 780:27]
    tables_3_io_update_pc_REG_1 <= io_update_bits_pc; // @[Tage.scala 833:46]
    tables_3_io_update_folded_hist_REG_1_hist_15_folded_hist <= io_update_bits_spec_info_folded_hist_hist_15_folded_hist
      ; // @[Tage.scala 834:49]
    tables_3_io_update_folded_hist_REG_1_hist_14_folded_hist <= io_update_bits_spec_info_folded_hist_hist_14_folded_hist
      ; // @[Tage.scala 834:49]
    tables_3_io_update_folded_hist_REG_1_hist_2_folded_hist <= io_update_bits_spec_info_folded_hist_hist_2_folded_hist; // @[Tage.scala 834:49]
    REG_2_0 <= updateValids_0 & updateMeta_altUsed_0; // @[Tage.scala 756:32]
    REG_2_1 <= updateValids_1 & updateMeta_altUsed_1; // @[Tage.scala 756:32]
    REG_3_0 <= io_update_bits_meta[65:64]; // @[Tage.scala 609:40]
    REG_3_1 <= io_update_bits_meta[67:66]; // @[Tage.scala 609:40]
    bt_io_update_pc_REG <= io_update_bits_pc; // @[Tage.scala 840:29]
    REG_4_0 <= updateValids_0 & io_update_bits_br_taken_mask_0; // @[Tage.scala 705:33]
    REG_4_1 <= updateValids_1 & io_update_bits_br_taken_mask_1; // @[Tage.scala 705:33]
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scTableSums__0 <= s1_scTableSums__0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scTableSums__1 <= s1_scTableSums__1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      if (s1_resps_3_0_valid | s1_resps_2_0_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_0_valid) begin // @[ParallelMux.scala 90:77]
          s2_tagePrvdCtrCentered_r <= s1_resps_3_0_bits_ctr;
        end else begin
          s2_tagePrvdCtrCentered_r <= s1_resps_2_0_bits_ctr;
        end
      end else if (s1_resps_1_0_valid) begin // @[ParallelMux.scala 90:77]
        s2_tagePrvdCtrCentered_r <= s1_resps_1_0_bits_ctr;
      end else begin
        s2_tagePrvdCtrCentered_r <= s1_resps_0_0_bits_ctr;
      end
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_0_ctrs_0_0 <= s1_scResps_0_ctrs_0_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_0_ctrs_0_1 <= s1_scResps_0_ctrs_0_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_1_ctrs_0_0 <= s1_scResps_1_ctrs_0_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_1_ctrs_0_1 <= s1_scResps_1_ctrs_0_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_2_ctrs_0_0 <= s1_scResps_2_ctrs_0_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_2_ctrs_0_1 <= s1_scResps_2_ctrs_0_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_3_ctrs_0_0 <= s1_scResps_3_ctrs_0_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r_3_ctrs_0_1 <= s1_scResps_3_ctrs_0_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scTableSums_1_1 <= s1_scTableSums_1_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      if (s1_resps_3_1_valid | s1_resps_2_1_valid) begin // @[ParallelMux.scala 90:77]
        if (s1_resps_3_1_valid) begin // @[ParallelMux.scala 90:77]
          s2_tagePrvdCtrCentered_r1 <= s1_resps_3_1_bits_ctr;
        end else begin
          s2_tagePrvdCtrCentered_r1 <= s1_resps_2_1_bits_ctr;
        end
      end else if (s1_resps_1_1_valid) begin // @[ParallelMux.scala 90:77]
        s2_tagePrvdCtrCentered_r1 <= s1_resps_1_1_bits_ctr;
      end else begin
        s2_tagePrvdCtrCentered_r1 <= s1_resps_0_1_bits_ctr;
      end
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scTableSums_1_0 <= s1_scTableSums_1_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      if (s2_provideds_0 & _GEN_1196) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_0) begin // @[SC.scala 290:12]
          s3_pred_dup_0 <= s2_scPreds__1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_0 <= s2_scPreds__0;
        end
      end else begin
        s3_pred_dup_0 <= s2_tageTakens_dup_3_0;
      end
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      if (s2_provideds_0 & _GEN_1196) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_0) begin // @[SC.scala 290:12]
          s3_pred_dup_1 <= s2_scPreds__1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_1 <= s2_scPreds__0;
        end
      end else begin
        s3_pred_dup_1 <= s2_tageTakens_dup_3_0;
      end
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      if (s2_provideds_0 & _GEN_1196) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_0) begin // @[SC.scala 290:12]
          s3_pred_dup_2 <= s2_scPreds__1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_2 <= s2_scPreds__0;
        end
      end else begin
        s3_pred_dup_2 <= s2_tageTakens_dup_3_0;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_provideds_0 & _GEN_1196) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_0) begin // @[SC.scala 290:12]
          s3_pred_dup_3 <= s2_scPreds__1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_3 <= s2_scPreds__0;
        end
      end else begin
        s3_pred_dup_3 <= s2_tageTakens_dup_3_0;
      end
    end
    sc_enable_dup_REG <= io_ctrl_sc_enable; // @[SC.scala 323:38]
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_0_ctrs_1_0 <= s1_scResps_0_ctrs_1_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_0_ctrs_1_1 <= s1_scResps_0_ctrs_1_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_1_ctrs_1_0 <= s1_scResps_1_ctrs_1_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_1_ctrs_1_1 <= s1_scResps_1_ctrs_1_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_2_ctrs_1_0 <= s1_scResps_2_ctrs_1_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_2_ctrs_1_1 <= s1_scResps_2_ctrs_1_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_3_ctrs_1_0 <= s1_scResps_3_ctrs_1_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_scResps_r1_3_ctrs_1_1 <= s1_scResps_3_ctrs_1_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      if (s2_provideds_1 & _GEN_1282) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_1) begin // @[SC.scala 290:12]
          s3_pred_dup_0_1 <= s2_scPreds_1_1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_0_1 <= s2_scPreds_1_0;
        end
      end else begin
        s3_pred_dup_0_1 <= s2_tageTakens_dup_3_1;
      end
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      if (s2_provideds_1 & _GEN_1282) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_1) begin // @[SC.scala 290:12]
          s3_pred_dup_1_1 <= s2_scPreds_1_1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_1_1 <= s2_scPreds_1_0;
        end
      end else begin
        s3_pred_dup_1_1 <= s2_tageTakens_dup_3_1;
      end
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      if (s2_provideds_1 & _GEN_1282) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_1) begin // @[SC.scala 290:12]
          s3_pred_dup_2_1 <= s2_scPreds_1_1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_2_1 <= s2_scPreds_1_0;
        end
      end else begin
        s3_pred_dup_2_1 <= s2_tageTakens_dup_3_1;
      end
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      if (s2_provideds_1 & _GEN_1282) begin // @[SC.scala 290:12]
        if (s2_tageTakens_dup_3_1) begin // @[SC.scala 290:12]
          s3_pred_dup_3_1 <= s2_scPreds_1_1; // @[SC.scala 290:12]
        end else begin
          s3_pred_dup_3_1 <= s2_scPreds_1_0;
        end
      end else begin
        s3_pred_dup_3_1 <= s2_tageTakens_dup_3_1;
      end
    end
    sc_enable_dup_REG_1 <= io_ctrl_sc_enable; // @[SC.scala 323:38]
    scTables_0_io_update_mask_0_REG <= update_sc_used_0 & _T_239; // @[SC.scala 332:56]
    scTables_0_io_update_tagePreds_0_REG <= io_update_bits_meta[52]; // @[Tage.scala 609:40]
    scTables_0_io_update_takens_0_REG <= io_update_bits_br_taken_mask_0; // @[SC.scala 332:56 343:27]
    scTables_0_io_update_oldCtrs_0_REG <= io_update_bits_meta[5:0]; // @[Tage.scala 609:40]
    scTables_1_io_update_mask_0_REG <= update_sc_used_0 & _T_239; // @[SC.scala 332:56]
    scTables_1_io_update_tagePreds_0_REG <= io_update_bits_meta[52]; // @[Tage.scala 609:40]
    scTables_1_io_update_takens_0_REG <= io_update_bits_br_taken_mask_0; // @[SC.scala 332:56 343:27]
    scTables_1_io_update_oldCtrs_0_REG <= io_update_bits_meta[11:6]; // @[Tage.scala 609:40]
    scTables_2_io_update_mask_0_REG <= update_sc_used_0 & _T_239; // @[SC.scala 332:56]
    scTables_2_io_update_tagePreds_0_REG <= io_update_bits_meta[52]; // @[Tage.scala 609:40]
    scTables_2_io_update_takens_0_REG <= io_update_bits_br_taken_mask_0; // @[SC.scala 332:56 343:27]
    scTables_2_io_update_oldCtrs_0_REG <= io_update_bits_meta[17:12]; // @[Tage.scala 609:40]
    scTables_3_io_update_mask_0_REG <= update_sc_used_0 & _T_239; // @[SC.scala 332:56]
    scTables_3_io_update_tagePreds_0_REG <= io_update_bits_meta[52]; // @[Tage.scala 609:40]
    scTables_3_io_update_takens_0_REG <= io_update_bits_br_taken_mask_0; // @[SC.scala 332:56 343:27]
    scTables_3_io_update_oldCtrs_0_REG <= io_update_bits_meta[23:18]; // @[Tage.scala 609:40]
    scTables_0_io_update_mask_1_REG <= update_sc_used_1 & _T_256; // @[SC.scala 332:56]
    scTables_0_io_update_tagePreds_1_REG <= io_update_bits_meta[53]; // @[Tage.scala 609:40]
    scTables_0_io_update_takens_1_REG <= io_update_bits_br_taken_mask_1; // @[SC.scala 332:56 343:27]
    scTables_0_io_update_oldCtrs_1_REG <= io_update_bits_meta[29:24]; // @[Tage.scala 609:40]
    scTables_0_io_update_pc_REG_1 <= io_update_bits_pc; // @[SC.scala 385:44]
    scTables_1_io_update_mask_1_REG <= update_sc_used_1 & _T_256; // @[SC.scala 332:56]
    scTables_1_io_update_tagePreds_1_REG <= io_update_bits_meta[53]; // @[Tage.scala 609:40]
    scTables_1_io_update_takens_1_REG <= io_update_bits_br_taken_mask_1; // @[SC.scala 332:56 343:27]
    scTables_1_io_update_oldCtrs_1_REG <= io_update_bits_meta[35:30]; // @[Tage.scala 609:40]
    scTables_1_io_update_pc_REG_1 <= io_update_bits_pc; // @[SC.scala 385:44]
    scTables_1_io_update_folded_hist_REG_1_hist_4_folded_hist <= io_update_bits_spec_info_folded_hist_hist_4_folded_hist
      ; // @[SC.scala 386:53]
    scTables_2_io_update_mask_1_REG <= update_sc_used_1 & _T_256; // @[SC.scala 332:56]
    scTables_2_io_update_tagePreds_1_REG <= io_update_bits_meta[53]; // @[Tage.scala 609:40]
    scTables_2_io_update_takens_1_REG <= io_update_bits_br_taken_mask_1; // @[SC.scala 332:56 343:27]
    scTables_2_io_update_oldCtrs_1_REG <= io_update_bits_meta[41:36]; // @[Tage.scala 609:40]
    scTables_2_io_update_pc_REG_1 <= io_update_bits_pc; // @[SC.scala 385:44]
    scTables_2_io_update_folded_hist_REG_1_hist_16_folded_hist <=
      io_update_bits_spec_info_folded_hist_hist_16_folded_hist; // @[SC.scala 386:53]
    scTables_3_io_update_mask_1_REG <= update_sc_used_1 & _T_256; // @[SC.scala 332:56]
    scTables_3_io_update_tagePreds_1_REG <= io_update_bits_meta[53]; // @[Tage.scala 609:40]
    scTables_3_io_update_takens_1_REG <= io_update_bits_br_taken_mask_1; // @[SC.scala 332:56 343:27]
    scTables_3_io_update_oldCtrs_1_REG <= io_update_bits_meta[47:42]; // @[Tage.scala 609:40]
    scTables_3_io_update_pc_REG_1 <= io_update_bits_pc; // @[SC.scala 385:44]
    scTables_3_io_update_folded_hist_REG_1_hist_0_folded_hist <= io_update_bits_spec_info_folded_hist_hist_0_folded_hist
      ; // @[SC.scala 386:53]
    io_perf_0_value_REG <= updateMeta_providers_0_valid + updateMeta_providers_1_valid; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= update_on_mispred_0 + update_on_mispred_1; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= update_on_unconf_0 + update_on_unconf_1; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 780:27]
      bankTickCtrDistanceToTops_0 <= 7'h40; // @[Tage.scala 782:22 783:29 785:40 790:28 806:59 808:38 788:40 552:58]
    end else if (needToAllocate) begin // @[Tage.scala 552:58]
      if (bankTickCtrs_0 == 7'h7f) begin
        bankTickCtrDistanceToTops_0 <= 7'h7f;
      end else if (tickInc) begin
        if (tickToPosSat) begin
          bankTickCtrDistanceToTops_0 <= 7'h0;
        end else begin
          bankTickCtrDistanceToTops_0 <= _bankTickCtrDistanceToTops_0_T_1;
        end
      end else if (tickDec) begin
        bankTickCtrDistanceToTops_0 <= _GEN_519;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 780:27]
      bankTickCtrDistanceToTops_1 <= 7'h40; // @[Tage.scala 782:22 783:29 785:40 790:28 806:59 808:38 788:40 552:58]
    end else if (needToAllocate_1) begin // @[Tage.scala 552:58]
      if (bankTickCtrs_1 == 7'h7f) begin
        bankTickCtrDistanceToTops_1 <= 7'h7f;
      end else if (tickInc_1) begin
        if (tickToPosSat_1) begin
          bankTickCtrDistanceToTops_1 <= 7'h0;
        end else begin
          bankTickCtrDistanceToTops_1 <= _bankTickCtrDistanceToTops_1_T_1;
        end
      end else if (tickDec_1) begin
        bankTickCtrDistanceToTops_1 <= _GEN_1065;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 780:27]
      bankTickCtrs_0 <= 7'h0; // @[Tage.scala 782:22 783:29 784:27 790:28 806:59 807:25 787:27 553:45]
    end else if (needToAllocate) begin // @[Tage.scala 553:45]
      if (bankTickCtrs_0 == 7'h7f) begin
        bankTickCtrs_0 <= 7'h0;
      end else if (tickInc) begin
        if (tickToPosSat) begin
          bankTickCtrs_0 <= 7'h7f;
        end else begin
          bankTickCtrs_0 <= _bankTickCtrs_0_T_1;
        end
      end else if (tickDec) begin
        bankTickCtrs_0 <= _GEN_518;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 780:27]
      bankTickCtrs_1 <= 7'h0; // @[Tage.scala 782:22 783:29 784:27 790:28 806:59 807:25 787:27 553:45]
    end else if (needToAllocate_1) begin // @[Tage.scala 553:45]
      if (bankTickCtrs_1 == 7'h7f) begin
        bankTickCtrs_1 <= 7'h0;
      end else if (tickInc_1) begin
        if (tickToPosSat_1) begin
          bankTickCtrs_1 <= 7'h7f;
        end else begin
          bankTickCtrs_1 <= _bankTickCtrs_1_T_1;
        end
      end else if (tickDec_1) begin
        bankTickCtrs_1 <= _GEN_1064;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_0 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h0 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_0 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_0 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_1 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_1 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_1 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_2 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_2 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_2 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_3 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_3 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_3 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_4 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_4 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_4 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_5 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_5 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_5 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_6 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_6 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_6 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_7 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_7 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_7 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_8 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h8 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_8 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_8 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_9 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h9 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_9 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_9 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_10 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'ha == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_10 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_10 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_11 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'hb == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_11 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_11 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_12 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'hc == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_12 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_12 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_13 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'hd == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_13 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_13 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_14 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'he == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_14 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_14 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_15 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'hf == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_15 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_15 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_16 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h10 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_16 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_16 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_17 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h11 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_17 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_17 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_18 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h12 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_18 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_18 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_19 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h13 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_19 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_19 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_20 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h14 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_20 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_20 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_21 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h15 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_21 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_21 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_22 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h16 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_22 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_22 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_23 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h17 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_23 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_23 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_24 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h18 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_24 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_24 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_25 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h19 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_25 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_25 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_26 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_26 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_26 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_27 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_27 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_27 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_28 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_28 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_28 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_29 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_29 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_29 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_30 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_30 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_30 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_31 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h1f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_31 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_31 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_32 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h20 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_32 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_32 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_33 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h21 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_33 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_33 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_34 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h22 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_34 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_34 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_35 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h23 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_35 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_35 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_36 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h24 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_36 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_36 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_37 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h25 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_37 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_37 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_38 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h26 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_38 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_38 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_39 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h27 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_39 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_39 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_40 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h28 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_40 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_40 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_41 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h29 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_41 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_41 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_42 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_42 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_42 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_43 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_43 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_43 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_44 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_44 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_44 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_45 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_45 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_45 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_46 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_46 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_46 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_47 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h2f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_47 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_47 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_48 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h30 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_48 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_48 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_49 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h31 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_49 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_49 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_50 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h32 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_50 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_50 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_51 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h33 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_51 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_51 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_52 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h34 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_52 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_52 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_53 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h35 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_53 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_53 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_54 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h36 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_54 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_54 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_55 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h37 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_55 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_55 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_56 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h38 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_56 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_56 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_57 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h39 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_57 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_57 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_58 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_58 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_58 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_59 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_59 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_59 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_60 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_60 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_60 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_61 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_61 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_61 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_62 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_62 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_62 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_63 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h3f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_63 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_63 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_64 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h40 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_64 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_64 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_65 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h41 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_65 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_65 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_66 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h42 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_66 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_66 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_67 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h43 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_67 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_67 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_68 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h44 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_68 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_68 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_69 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h45 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_69 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_69 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_70 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h46 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_70 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_70 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_71 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h47 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_71 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_71 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_72 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h48 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_72 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_72 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_73 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h49 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_73 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_73 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_74 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_74 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_74 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_75 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_75 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_75 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_76 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_76 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_76 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_77 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_77 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_77 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_78 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_78 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_78 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_79 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h4f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_79 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_79 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_80 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h50 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_80 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_80 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_81 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h51 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_81 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_81 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_82 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h52 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_82 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_82 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_83 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h53 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_83 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_83 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_84 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h54 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_84 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_84 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_85 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h55 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_85 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_85 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_86 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h56 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_86 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_86 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_87 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h57 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_87 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_87 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_88 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h58 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_88 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_88 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_89 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h59 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_89 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_89 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_90 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_90 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_90 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_91 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_91 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_91 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_92 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_92 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_92 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_93 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_93 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_93 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_94 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_94 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_94 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_95 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h5f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_95 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_95 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_96 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h60 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_96 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_96 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_97 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h61 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_97 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_97 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_98 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h62 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_98 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_98 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_99 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h63 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_99 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_99 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_100 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h64 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_100 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_100 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_101 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h65 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_101 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_101 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_102 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h66 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_102 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_102 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_103 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h67 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_103 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_103 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_104 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h68 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_104 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_104 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_105 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h69 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_105 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_105 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_106 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_106 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_106 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_107 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_107 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_107 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_108 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_108 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_108 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_109 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_109 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_109 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_110 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_110 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_110 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_111 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h6f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_111 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_111 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_112 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h70 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_112 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_112 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_113 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h71 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_113 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_113 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_114 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h72 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_114 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_114 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_115 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h73 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_115 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_115 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_116 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h74 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_116 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_116 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_117 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h75 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_117 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_117 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_118 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h76 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_118 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_118 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_119 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h77 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_119 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_119 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_120 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h78 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_120 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_120 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_121 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h79 == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_121 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_121 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_122 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7a == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_122 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_122 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_123 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7b == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_123 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_123 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_124 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7c == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_124 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_124 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_125 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7d == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_125 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_125 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_126 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7e == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_126 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_126 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_0_127 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_0) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_0_valid & updateProviderWeak & updateMeta_altDiffers_0) begin
        if (7'h7f == updateAltIdx) begin
          if (newCtr_oldSatTaken & updateAltCorrect) begin
            useAltOnNaCtrs_0_127 <= 4'hf;
          end else begin
            useAltOnNaCtrs_0_127 <= _newCtr_T_8;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_0 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h0 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_0 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_0 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_1 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_1 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_1 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_2 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_2 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_2 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_3 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_3 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_3 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_4 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_4 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_4 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_5 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_5 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_5 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_6 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_6 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_6 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_7 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_7 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_7 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_8 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h8 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_8 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_8 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_9 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h9 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_9 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_9 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_10 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'ha == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_10 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_10 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_11 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'hb == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_11 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_11 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_12 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'hc == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_12 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_12 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_13 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'hd == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_13 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_13 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_14 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'he == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_14 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_14 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_15 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'hf == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_15 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_15 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_16 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h10 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_16 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_16 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_17 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h11 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_17 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_17 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_18 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h12 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_18 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_18 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_19 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h13 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_19 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_19 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_20 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h14 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_20 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_20 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_21 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h15 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_21 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_21 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_22 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h16 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_22 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_22 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_23 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h17 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_23 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_23 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_24 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h18 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_24 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_24 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_25 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h19 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_25 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_25 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_26 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_26 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_26 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_27 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_27 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_27 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_28 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_28 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_28 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_29 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_29 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_29 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_30 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_30 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_30 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_31 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h1f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_31 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_31 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_32 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h20 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_32 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_32 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_33 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h21 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_33 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_33 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_34 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h22 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_34 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_34 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_35 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h23 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_35 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_35 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_36 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h24 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_36 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_36 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_37 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h25 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_37 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_37 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_38 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h26 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_38 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_38 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_39 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h27 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_39 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_39 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_40 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h28 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_40 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_40 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_41 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h29 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_41 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_41 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_42 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_42 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_42 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_43 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_43 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_43 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_44 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_44 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_44 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_45 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_45 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_45 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_46 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_46 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_46 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_47 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h2f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_47 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_47 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_48 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h30 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_48 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_48 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_49 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h31 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_49 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_49 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_50 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h32 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_50 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_50 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_51 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h33 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_51 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_51 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_52 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h34 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_52 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_52 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_53 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h35 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_53 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_53 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_54 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h36 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_54 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_54 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_55 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h37 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_55 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_55 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_56 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h38 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_56 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_56 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_57 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h39 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_57 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_57 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_58 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_58 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_58 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_59 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_59 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_59 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_60 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_60 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_60 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_61 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_61 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_61 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_62 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_62 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_62 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_63 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h3f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_63 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_63 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_64 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h40 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_64 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_64 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_65 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h41 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_65 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_65 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_66 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h42 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_66 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_66 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_67 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h43 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_67 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_67 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_68 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h44 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_68 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_68 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_69 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h45 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_69 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_69 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_70 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h46 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_70 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_70 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_71 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h47 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_71 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_71 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_72 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h48 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_72 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_72 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_73 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h49 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_73 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_73 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_74 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_74 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_74 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_75 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_75 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_75 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_76 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_76 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_76 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_77 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_77 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_77 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_78 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_78 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_78 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_79 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h4f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_79 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_79 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_80 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h50 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_80 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_80 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_81 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h51 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_81 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_81 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_82 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h52 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_82 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_82 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_83 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h53 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_83 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_83 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_84 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h54 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_84 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_84 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_85 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h55 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_85 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_85 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_86 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h56 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_86 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_86 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_87 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h57 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_87 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_87 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_88 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h58 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_88 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_88 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_89 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h59 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_89 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_89 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_90 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_90 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_90 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_91 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_91 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_91 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_92 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_92 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_92 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_93 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_93 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_93 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_94 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_94 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_94 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_95 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h5f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_95 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_95 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_96 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h60 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_96 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_96 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_97 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h61 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_97 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_97 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_98 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h62 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_98 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_98 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_99 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h63 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_99 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_99 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_100 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h64 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_100 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_100 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_101 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h65 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_101 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_101 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_102 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h66 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_102 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_102 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_103 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h67 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_103 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_103 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_104 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h68 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_104 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_104 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_105 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h69 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_105 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_105 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_106 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_106 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_106 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_107 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_107 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_107 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_108 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_108 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_108 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_109 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_109 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_109 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_110 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_110 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_110 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_111 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h6f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_111 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_111 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_112 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h70 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_112 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_112 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_113 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h71 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_113 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_113 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_114 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h72 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_114 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_114 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_115 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h73 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_115 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_115 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_116 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h74 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_116 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_116 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_117 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h75 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_117 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_117 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_118 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h76 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_118 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_118 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_119 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h77 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_119 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_119 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_120 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h78 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_120 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_120 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_121 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h79 == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_121 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_121 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_122 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7a == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_122 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_122 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_123 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7b == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_123 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_123 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_124 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7c == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_124 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_124 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_125 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7d == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_125 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_125 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_126 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7e == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_126 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_126 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Tage.scala 723:22]
      useAltOnNaCtrs_1_127 <= 4'h8; // @[Tage.scala 724:71 726:41 BPU.scala 97:8 Tage.scala 554:{31,31}]
    end else if (updateValids_1) begin // @[Tage.scala 554:31]
      if (updateMeta_providers_1_valid & updateProviderWeak_1 & updateMeta_altDiffers_1) begin
        if (7'h7f == updateAltIdx) begin
          if (newCtr_oldSatTaken_1 & updateAltCorrect_1) begin
            useAltOnNaCtrs_1_127 <= 4'hf;
          end else begin
            useAltOnNaCtrs_1_127 <= _newCtr_T_17;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LFSR64.scala 31:18]
      allocLFSR_lfsr <= 64'h1234567887654321;
    end else if (allocLFSR_lfsr == 64'h0) begin
      allocLFSR_lfsr <= 64'h1;
    end else begin
      allocLFSR_lfsr <= _allocLFSR_lfsr_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LFSR64.scala 31:18]
      allocLFSR_lfsr_1 <= 64'h1234567887654321;
    end else if (allocLFSR_lfsr_1 == 64'h0) begin
      allocLFSR_lfsr_1 <= 64'h1;
    end else begin
      allocLFSR_lfsr_1 <= _allocLFSR_lfsr_T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SC.scala 332:56]
      scThresholds_0_ctr <= 5'h10; // @[SC.scala 197:19 231:52 355:86 BPU.scala 97:8]
    end else if (update_sc_used_0) begin // @[SC.scala 231:52]
      if (_update_disagree_0_T & sumAbs >= _GEN_1406 & sumAbs <= _GEN_1407) begin
        if (_newThres_newThres_T_3 | _newThres_newThres_T_8) begin
          scThresholds_0_ctr <= 5'h10;
        end else if (newThres_newCtr_oldSatTaken & _sc_misp_tage_corr_0_T) begin
          scThresholds_0_ctr <= 5'h1f;
        end else begin
          scThresholds_0_ctr <= _newThres_newCtr_T_8;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SC.scala 332:56]
      scThresholds_0_thres <= 8'h6; // @[SC.scala 193:23 194:26 231:52 355:86]
    end else if (update_sc_used_0) begin // @[SC.scala 231:52]
      if (_update_disagree_0_T & sumAbs >= _GEN_1406 & sumAbs <= _GEN_1407) begin
        if (_newThres_newThres_T_3 & scThresholds_0_thres <= 8'h1f) begin
          scThresholds_0_thres <= _newThres_newThres_T_7;
        end else if (_newThres_newThres_T_8 & scThresholds_0_thres >= 8'h6) begin
          scThresholds_0_thres <= _T_234;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SC.scala 332:56]
      scThresholds_1_ctr <= 5'h10; // @[SC.scala 197:19 231:52 355:86 BPU.scala 97:8]
    end else if (update_sc_used_1) begin // @[SC.scala 231:52]
      if (_update_disagree_1_T & sumAbs_1 >= _GEN_1416 & sumAbs_1 <= _GEN_1417) begin
        if (_newThres_newThres_T_17 | _newThres_newThres_T_22) begin
          scThresholds_1_ctr <= 5'h10;
        end else if (newThres_newCtr_oldSatTaken_1 & _sc_misp_tage_corr_1_T) begin
          scThresholds_1_ctr <= 5'h1f;
        end else begin
          scThresholds_1_ctr <= _newThres_newCtr_T_17;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SC.scala 332:56]
      scThresholds_1_thres <= 8'h6; // @[SC.scala 193:23 194:26 231:52 355:86]
    end else if (update_sc_used_1) begin // @[SC.scala 231:52]
      if (_update_disagree_1_T & sumAbs_1 >= _GEN_1416 & sumAbs_1 <= _GEN_1417) begin
        if (_newThres_newThres_T_17 & scThresholds_1_thres <= 8'h1f) begin
          scThresholds_1_thres <= _newThres_newThres_T_21;
        end else if (_newThres_newThres_T_22 & scThresholds_1_thres >= 8'h6) begin
          scThresholds_1_thres <= _T_251;
        end
      end
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
  _RAND_0 = {2{`RANDOM}};
  s1_pc_dup_0 = _RAND_0[38:0];
  _RAND_1 = {1{`RANDOM}};
  REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  bankTickCtrDistanceToTops_0 = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  bankTickCtrDistanceToTops_1 = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  bankTickCtrs_0 = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  bankTickCtrs_1 = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  useAltOnNaCtrs_0_0 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  useAltOnNaCtrs_0_1 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  useAltOnNaCtrs_0_2 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  useAltOnNaCtrs_0_3 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  useAltOnNaCtrs_0_4 = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  useAltOnNaCtrs_0_5 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  useAltOnNaCtrs_0_6 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  useAltOnNaCtrs_0_7 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  useAltOnNaCtrs_0_8 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  useAltOnNaCtrs_0_9 = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  useAltOnNaCtrs_0_10 = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  useAltOnNaCtrs_0_11 = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  useAltOnNaCtrs_0_12 = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  useAltOnNaCtrs_0_13 = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  useAltOnNaCtrs_0_14 = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  useAltOnNaCtrs_0_15 = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  useAltOnNaCtrs_0_16 = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  useAltOnNaCtrs_0_17 = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  useAltOnNaCtrs_0_18 = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  useAltOnNaCtrs_0_19 = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  useAltOnNaCtrs_0_20 = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  useAltOnNaCtrs_0_21 = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  useAltOnNaCtrs_0_22 = _RAND_29[3:0];
  _RAND_30 = {1{`RANDOM}};
  useAltOnNaCtrs_0_23 = _RAND_30[3:0];
  _RAND_31 = {1{`RANDOM}};
  useAltOnNaCtrs_0_24 = _RAND_31[3:0];
  _RAND_32 = {1{`RANDOM}};
  useAltOnNaCtrs_0_25 = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  useAltOnNaCtrs_0_26 = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  useAltOnNaCtrs_0_27 = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  useAltOnNaCtrs_0_28 = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  useAltOnNaCtrs_0_29 = _RAND_36[3:0];
  _RAND_37 = {1{`RANDOM}};
  useAltOnNaCtrs_0_30 = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  useAltOnNaCtrs_0_31 = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  useAltOnNaCtrs_0_32 = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  useAltOnNaCtrs_0_33 = _RAND_40[3:0];
  _RAND_41 = {1{`RANDOM}};
  useAltOnNaCtrs_0_34 = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  useAltOnNaCtrs_0_35 = _RAND_42[3:0];
  _RAND_43 = {1{`RANDOM}};
  useAltOnNaCtrs_0_36 = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  useAltOnNaCtrs_0_37 = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  useAltOnNaCtrs_0_38 = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  useAltOnNaCtrs_0_39 = _RAND_46[3:0];
  _RAND_47 = {1{`RANDOM}};
  useAltOnNaCtrs_0_40 = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  useAltOnNaCtrs_0_41 = _RAND_48[3:0];
  _RAND_49 = {1{`RANDOM}};
  useAltOnNaCtrs_0_42 = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  useAltOnNaCtrs_0_43 = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  useAltOnNaCtrs_0_44 = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  useAltOnNaCtrs_0_45 = _RAND_52[3:0];
  _RAND_53 = {1{`RANDOM}};
  useAltOnNaCtrs_0_46 = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  useAltOnNaCtrs_0_47 = _RAND_54[3:0];
  _RAND_55 = {1{`RANDOM}};
  useAltOnNaCtrs_0_48 = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  useAltOnNaCtrs_0_49 = _RAND_56[3:0];
  _RAND_57 = {1{`RANDOM}};
  useAltOnNaCtrs_0_50 = _RAND_57[3:0];
  _RAND_58 = {1{`RANDOM}};
  useAltOnNaCtrs_0_51 = _RAND_58[3:0];
  _RAND_59 = {1{`RANDOM}};
  useAltOnNaCtrs_0_52 = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  useAltOnNaCtrs_0_53 = _RAND_60[3:0];
  _RAND_61 = {1{`RANDOM}};
  useAltOnNaCtrs_0_54 = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  useAltOnNaCtrs_0_55 = _RAND_62[3:0];
  _RAND_63 = {1{`RANDOM}};
  useAltOnNaCtrs_0_56 = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  useAltOnNaCtrs_0_57 = _RAND_64[3:0];
  _RAND_65 = {1{`RANDOM}};
  useAltOnNaCtrs_0_58 = _RAND_65[3:0];
  _RAND_66 = {1{`RANDOM}};
  useAltOnNaCtrs_0_59 = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  useAltOnNaCtrs_0_60 = _RAND_67[3:0];
  _RAND_68 = {1{`RANDOM}};
  useAltOnNaCtrs_0_61 = _RAND_68[3:0];
  _RAND_69 = {1{`RANDOM}};
  useAltOnNaCtrs_0_62 = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  useAltOnNaCtrs_0_63 = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  useAltOnNaCtrs_0_64 = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  useAltOnNaCtrs_0_65 = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  useAltOnNaCtrs_0_66 = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  useAltOnNaCtrs_0_67 = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  useAltOnNaCtrs_0_68 = _RAND_75[3:0];
  _RAND_76 = {1{`RANDOM}};
  useAltOnNaCtrs_0_69 = _RAND_76[3:0];
  _RAND_77 = {1{`RANDOM}};
  useAltOnNaCtrs_0_70 = _RAND_77[3:0];
  _RAND_78 = {1{`RANDOM}};
  useAltOnNaCtrs_0_71 = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  useAltOnNaCtrs_0_72 = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  useAltOnNaCtrs_0_73 = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  useAltOnNaCtrs_0_74 = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  useAltOnNaCtrs_0_75 = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  useAltOnNaCtrs_0_76 = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  useAltOnNaCtrs_0_77 = _RAND_84[3:0];
  _RAND_85 = {1{`RANDOM}};
  useAltOnNaCtrs_0_78 = _RAND_85[3:0];
  _RAND_86 = {1{`RANDOM}};
  useAltOnNaCtrs_0_79 = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  useAltOnNaCtrs_0_80 = _RAND_87[3:0];
  _RAND_88 = {1{`RANDOM}};
  useAltOnNaCtrs_0_81 = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  useAltOnNaCtrs_0_82 = _RAND_89[3:0];
  _RAND_90 = {1{`RANDOM}};
  useAltOnNaCtrs_0_83 = _RAND_90[3:0];
  _RAND_91 = {1{`RANDOM}};
  useAltOnNaCtrs_0_84 = _RAND_91[3:0];
  _RAND_92 = {1{`RANDOM}};
  useAltOnNaCtrs_0_85 = _RAND_92[3:0];
  _RAND_93 = {1{`RANDOM}};
  useAltOnNaCtrs_0_86 = _RAND_93[3:0];
  _RAND_94 = {1{`RANDOM}};
  useAltOnNaCtrs_0_87 = _RAND_94[3:0];
  _RAND_95 = {1{`RANDOM}};
  useAltOnNaCtrs_0_88 = _RAND_95[3:0];
  _RAND_96 = {1{`RANDOM}};
  useAltOnNaCtrs_0_89 = _RAND_96[3:0];
  _RAND_97 = {1{`RANDOM}};
  useAltOnNaCtrs_0_90 = _RAND_97[3:0];
  _RAND_98 = {1{`RANDOM}};
  useAltOnNaCtrs_0_91 = _RAND_98[3:0];
  _RAND_99 = {1{`RANDOM}};
  useAltOnNaCtrs_0_92 = _RAND_99[3:0];
  _RAND_100 = {1{`RANDOM}};
  useAltOnNaCtrs_0_93 = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  useAltOnNaCtrs_0_94 = _RAND_101[3:0];
  _RAND_102 = {1{`RANDOM}};
  useAltOnNaCtrs_0_95 = _RAND_102[3:0];
  _RAND_103 = {1{`RANDOM}};
  useAltOnNaCtrs_0_96 = _RAND_103[3:0];
  _RAND_104 = {1{`RANDOM}};
  useAltOnNaCtrs_0_97 = _RAND_104[3:0];
  _RAND_105 = {1{`RANDOM}};
  useAltOnNaCtrs_0_98 = _RAND_105[3:0];
  _RAND_106 = {1{`RANDOM}};
  useAltOnNaCtrs_0_99 = _RAND_106[3:0];
  _RAND_107 = {1{`RANDOM}};
  useAltOnNaCtrs_0_100 = _RAND_107[3:0];
  _RAND_108 = {1{`RANDOM}};
  useAltOnNaCtrs_0_101 = _RAND_108[3:0];
  _RAND_109 = {1{`RANDOM}};
  useAltOnNaCtrs_0_102 = _RAND_109[3:0];
  _RAND_110 = {1{`RANDOM}};
  useAltOnNaCtrs_0_103 = _RAND_110[3:0];
  _RAND_111 = {1{`RANDOM}};
  useAltOnNaCtrs_0_104 = _RAND_111[3:0];
  _RAND_112 = {1{`RANDOM}};
  useAltOnNaCtrs_0_105 = _RAND_112[3:0];
  _RAND_113 = {1{`RANDOM}};
  useAltOnNaCtrs_0_106 = _RAND_113[3:0];
  _RAND_114 = {1{`RANDOM}};
  useAltOnNaCtrs_0_107 = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  useAltOnNaCtrs_0_108 = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  useAltOnNaCtrs_0_109 = _RAND_116[3:0];
  _RAND_117 = {1{`RANDOM}};
  useAltOnNaCtrs_0_110 = _RAND_117[3:0];
  _RAND_118 = {1{`RANDOM}};
  useAltOnNaCtrs_0_111 = _RAND_118[3:0];
  _RAND_119 = {1{`RANDOM}};
  useAltOnNaCtrs_0_112 = _RAND_119[3:0];
  _RAND_120 = {1{`RANDOM}};
  useAltOnNaCtrs_0_113 = _RAND_120[3:0];
  _RAND_121 = {1{`RANDOM}};
  useAltOnNaCtrs_0_114 = _RAND_121[3:0];
  _RAND_122 = {1{`RANDOM}};
  useAltOnNaCtrs_0_115 = _RAND_122[3:0];
  _RAND_123 = {1{`RANDOM}};
  useAltOnNaCtrs_0_116 = _RAND_123[3:0];
  _RAND_124 = {1{`RANDOM}};
  useAltOnNaCtrs_0_117 = _RAND_124[3:0];
  _RAND_125 = {1{`RANDOM}};
  useAltOnNaCtrs_0_118 = _RAND_125[3:0];
  _RAND_126 = {1{`RANDOM}};
  useAltOnNaCtrs_0_119 = _RAND_126[3:0];
  _RAND_127 = {1{`RANDOM}};
  useAltOnNaCtrs_0_120 = _RAND_127[3:0];
  _RAND_128 = {1{`RANDOM}};
  useAltOnNaCtrs_0_121 = _RAND_128[3:0];
  _RAND_129 = {1{`RANDOM}};
  useAltOnNaCtrs_0_122 = _RAND_129[3:0];
  _RAND_130 = {1{`RANDOM}};
  useAltOnNaCtrs_0_123 = _RAND_130[3:0];
  _RAND_131 = {1{`RANDOM}};
  useAltOnNaCtrs_0_124 = _RAND_131[3:0];
  _RAND_132 = {1{`RANDOM}};
  useAltOnNaCtrs_0_125 = _RAND_132[3:0];
  _RAND_133 = {1{`RANDOM}};
  useAltOnNaCtrs_0_126 = _RAND_133[3:0];
  _RAND_134 = {1{`RANDOM}};
  useAltOnNaCtrs_0_127 = _RAND_134[3:0];
  _RAND_135 = {1{`RANDOM}};
  useAltOnNaCtrs_1_0 = _RAND_135[3:0];
  _RAND_136 = {1{`RANDOM}};
  useAltOnNaCtrs_1_1 = _RAND_136[3:0];
  _RAND_137 = {1{`RANDOM}};
  useAltOnNaCtrs_1_2 = _RAND_137[3:0];
  _RAND_138 = {1{`RANDOM}};
  useAltOnNaCtrs_1_3 = _RAND_138[3:0];
  _RAND_139 = {1{`RANDOM}};
  useAltOnNaCtrs_1_4 = _RAND_139[3:0];
  _RAND_140 = {1{`RANDOM}};
  useAltOnNaCtrs_1_5 = _RAND_140[3:0];
  _RAND_141 = {1{`RANDOM}};
  useAltOnNaCtrs_1_6 = _RAND_141[3:0];
  _RAND_142 = {1{`RANDOM}};
  useAltOnNaCtrs_1_7 = _RAND_142[3:0];
  _RAND_143 = {1{`RANDOM}};
  useAltOnNaCtrs_1_8 = _RAND_143[3:0];
  _RAND_144 = {1{`RANDOM}};
  useAltOnNaCtrs_1_9 = _RAND_144[3:0];
  _RAND_145 = {1{`RANDOM}};
  useAltOnNaCtrs_1_10 = _RAND_145[3:0];
  _RAND_146 = {1{`RANDOM}};
  useAltOnNaCtrs_1_11 = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  useAltOnNaCtrs_1_12 = _RAND_147[3:0];
  _RAND_148 = {1{`RANDOM}};
  useAltOnNaCtrs_1_13 = _RAND_148[3:0];
  _RAND_149 = {1{`RANDOM}};
  useAltOnNaCtrs_1_14 = _RAND_149[3:0];
  _RAND_150 = {1{`RANDOM}};
  useAltOnNaCtrs_1_15 = _RAND_150[3:0];
  _RAND_151 = {1{`RANDOM}};
  useAltOnNaCtrs_1_16 = _RAND_151[3:0];
  _RAND_152 = {1{`RANDOM}};
  useAltOnNaCtrs_1_17 = _RAND_152[3:0];
  _RAND_153 = {1{`RANDOM}};
  useAltOnNaCtrs_1_18 = _RAND_153[3:0];
  _RAND_154 = {1{`RANDOM}};
  useAltOnNaCtrs_1_19 = _RAND_154[3:0];
  _RAND_155 = {1{`RANDOM}};
  useAltOnNaCtrs_1_20 = _RAND_155[3:0];
  _RAND_156 = {1{`RANDOM}};
  useAltOnNaCtrs_1_21 = _RAND_156[3:0];
  _RAND_157 = {1{`RANDOM}};
  useAltOnNaCtrs_1_22 = _RAND_157[3:0];
  _RAND_158 = {1{`RANDOM}};
  useAltOnNaCtrs_1_23 = _RAND_158[3:0];
  _RAND_159 = {1{`RANDOM}};
  useAltOnNaCtrs_1_24 = _RAND_159[3:0];
  _RAND_160 = {1{`RANDOM}};
  useAltOnNaCtrs_1_25 = _RAND_160[3:0];
  _RAND_161 = {1{`RANDOM}};
  useAltOnNaCtrs_1_26 = _RAND_161[3:0];
  _RAND_162 = {1{`RANDOM}};
  useAltOnNaCtrs_1_27 = _RAND_162[3:0];
  _RAND_163 = {1{`RANDOM}};
  useAltOnNaCtrs_1_28 = _RAND_163[3:0];
  _RAND_164 = {1{`RANDOM}};
  useAltOnNaCtrs_1_29 = _RAND_164[3:0];
  _RAND_165 = {1{`RANDOM}};
  useAltOnNaCtrs_1_30 = _RAND_165[3:0];
  _RAND_166 = {1{`RANDOM}};
  useAltOnNaCtrs_1_31 = _RAND_166[3:0];
  _RAND_167 = {1{`RANDOM}};
  useAltOnNaCtrs_1_32 = _RAND_167[3:0];
  _RAND_168 = {1{`RANDOM}};
  useAltOnNaCtrs_1_33 = _RAND_168[3:0];
  _RAND_169 = {1{`RANDOM}};
  useAltOnNaCtrs_1_34 = _RAND_169[3:0];
  _RAND_170 = {1{`RANDOM}};
  useAltOnNaCtrs_1_35 = _RAND_170[3:0];
  _RAND_171 = {1{`RANDOM}};
  useAltOnNaCtrs_1_36 = _RAND_171[3:0];
  _RAND_172 = {1{`RANDOM}};
  useAltOnNaCtrs_1_37 = _RAND_172[3:0];
  _RAND_173 = {1{`RANDOM}};
  useAltOnNaCtrs_1_38 = _RAND_173[3:0];
  _RAND_174 = {1{`RANDOM}};
  useAltOnNaCtrs_1_39 = _RAND_174[3:0];
  _RAND_175 = {1{`RANDOM}};
  useAltOnNaCtrs_1_40 = _RAND_175[3:0];
  _RAND_176 = {1{`RANDOM}};
  useAltOnNaCtrs_1_41 = _RAND_176[3:0];
  _RAND_177 = {1{`RANDOM}};
  useAltOnNaCtrs_1_42 = _RAND_177[3:0];
  _RAND_178 = {1{`RANDOM}};
  useAltOnNaCtrs_1_43 = _RAND_178[3:0];
  _RAND_179 = {1{`RANDOM}};
  useAltOnNaCtrs_1_44 = _RAND_179[3:0];
  _RAND_180 = {1{`RANDOM}};
  useAltOnNaCtrs_1_45 = _RAND_180[3:0];
  _RAND_181 = {1{`RANDOM}};
  useAltOnNaCtrs_1_46 = _RAND_181[3:0];
  _RAND_182 = {1{`RANDOM}};
  useAltOnNaCtrs_1_47 = _RAND_182[3:0];
  _RAND_183 = {1{`RANDOM}};
  useAltOnNaCtrs_1_48 = _RAND_183[3:0];
  _RAND_184 = {1{`RANDOM}};
  useAltOnNaCtrs_1_49 = _RAND_184[3:0];
  _RAND_185 = {1{`RANDOM}};
  useAltOnNaCtrs_1_50 = _RAND_185[3:0];
  _RAND_186 = {1{`RANDOM}};
  useAltOnNaCtrs_1_51 = _RAND_186[3:0];
  _RAND_187 = {1{`RANDOM}};
  useAltOnNaCtrs_1_52 = _RAND_187[3:0];
  _RAND_188 = {1{`RANDOM}};
  useAltOnNaCtrs_1_53 = _RAND_188[3:0];
  _RAND_189 = {1{`RANDOM}};
  useAltOnNaCtrs_1_54 = _RAND_189[3:0];
  _RAND_190 = {1{`RANDOM}};
  useAltOnNaCtrs_1_55 = _RAND_190[3:0];
  _RAND_191 = {1{`RANDOM}};
  useAltOnNaCtrs_1_56 = _RAND_191[3:0];
  _RAND_192 = {1{`RANDOM}};
  useAltOnNaCtrs_1_57 = _RAND_192[3:0];
  _RAND_193 = {1{`RANDOM}};
  useAltOnNaCtrs_1_58 = _RAND_193[3:0];
  _RAND_194 = {1{`RANDOM}};
  useAltOnNaCtrs_1_59 = _RAND_194[3:0];
  _RAND_195 = {1{`RANDOM}};
  useAltOnNaCtrs_1_60 = _RAND_195[3:0];
  _RAND_196 = {1{`RANDOM}};
  useAltOnNaCtrs_1_61 = _RAND_196[3:0];
  _RAND_197 = {1{`RANDOM}};
  useAltOnNaCtrs_1_62 = _RAND_197[3:0];
  _RAND_198 = {1{`RANDOM}};
  useAltOnNaCtrs_1_63 = _RAND_198[3:0];
  _RAND_199 = {1{`RANDOM}};
  useAltOnNaCtrs_1_64 = _RAND_199[3:0];
  _RAND_200 = {1{`RANDOM}};
  useAltOnNaCtrs_1_65 = _RAND_200[3:0];
  _RAND_201 = {1{`RANDOM}};
  useAltOnNaCtrs_1_66 = _RAND_201[3:0];
  _RAND_202 = {1{`RANDOM}};
  useAltOnNaCtrs_1_67 = _RAND_202[3:0];
  _RAND_203 = {1{`RANDOM}};
  useAltOnNaCtrs_1_68 = _RAND_203[3:0];
  _RAND_204 = {1{`RANDOM}};
  useAltOnNaCtrs_1_69 = _RAND_204[3:0];
  _RAND_205 = {1{`RANDOM}};
  useAltOnNaCtrs_1_70 = _RAND_205[3:0];
  _RAND_206 = {1{`RANDOM}};
  useAltOnNaCtrs_1_71 = _RAND_206[3:0];
  _RAND_207 = {1{`RANDOM}};
  useAltOnNaCtrs_1_72 = _RAND_207[3:0];
  _RAND_208 = {1{`RANDOM}};
  useAltOnNaCtrs_1_73 = _RAND_208[3:0];
  _RAND_209 = {1{`RANDOM}};
  useAltOnNaCtrs_1_74 = _RAND_209[3:0];
  _RAND_210 = {1{`RANDOM}};
  useAltOnNaCtrs_1_75 = _RAND_210[3:0];
  _RAND_211 = {1{`RANDOM}};
  useAltOnNaCtrs_1_76 = _RAND_211[3:0];
  _RAND_212 = {1{`RANDOM}};
  useAltOnNaCtrs_1_77 = _RAND_212[3:0];
  _RAND_213 = {1{`RANDOM}};
  useAltOnNaCtrs_1_78 = _RAND_213[3:0];
  _RAND_214 = {1{`RANDOM}};
  useAltOnNaCtrs_1_79 = _RAND_214[3:0];
  _RAND_215 = {1{`RANDOM}};
  useAltOnNaCtrs_1_80 = _RAND_215[3:0];
  _RAND_216 = {1{`RANDOM}};
  useAltOnNaCtrs_1_81 = _RAND_216[3:0];
  _RAND_217 = {1{`RANDOM}};
  useAltOnNaCtrs_1_82 = _RAND_217[3:0];
  _RAND_218 = {1{`RANDOM}};
  useAltOnNaCtrs_1_83 = _RAND_218[3:0];
  _RAND_219 = {1{`RANDOM}};
  useAltOnNaCtrs_1_84 = _RAND_219[3:0];
  _RAND_220 = {1{`RANDOM}};
  useAltOnNaCtrs_1_85 = _RAND_220[3:0];
  _RAND_221 = {1{`RANDOM}};
  useAltOnNaCtrs_1_86 = _RAND_221[3:0];
  _RAND_222 = {1{`RANDOM}};
  useAltOnNaCtrs_1_87 = _RAND_222[3:0];
  _RAND_223 = {1{`RANDOM}};
  useAltOnNaCtrs_1_88 = _RAND_223[3:0];
  _RAND_224 = {1{`RANDOM}};
  useAltOnNaCtrs_1_89 = _RAND_224[3:0];
  _RAND_225 = {1{`RANDOM}};
  useAltOnNaCtrs_1_90 = _RAND_225[3:0];
  _RAND_226 = {1{`RANDOM}};
  useAltOnNaCtrs_1_91 = _RAND_226[3:0];
  _RAND_227 = {1{`RANDOM}};
  useAltOnNaCtrs_1_92 = _RAND_227[3:0];
  _RAND_228 = {1{`RANDOM}};
  useAltOnNaCtrs_1_93 = _RAND_228[3:0];
  _RAND_229 = {1{`RANDOM}};
  useAltOnNaCtrs_1_94 = _RAND_229[3:0];
  _RAND_230 = {1{`RANDOM}};
  useAltOnNaCtrs_1_95 = _RAND_230[3:0];
  _RAND_231 = {1{`RANDOM}};
  useAltOnNaCtrs_1_96 = _RAND_231[3:0];
  _RAND_232 = {1{`RANDOM}};
  useAltOnNaCtrs_1_97 = _RAND_232[3:0];
  _RAND_233 = {1{`RANDOM}};
  useAltOnNaCtrs_1_98 = _RAND_233[3:0];
  _RAND_234 = {1{`RANDOM}};
  useAltOnNaCtrs_1_99 = _RAND_234[3:0];
  _RAND_235 = {1{`RANDOM}};
  useAltOnNaCtrs_1_100 = _RAND_235[3:0];
  _RAND_236 = {1{`RANDOM}};
  useAltOnNaCtrs_1_101 = _RAND_236[3:0];
  _RAND_237 = {1{`RANDOM}};
  useAltOnNaCtrs_1_102 = _RAND_237[3:0];
  _RAND_238 = {1{`RANDOM}};
  useAltOnNaCtrs_1_103 = _RAND_238[3:0];
  _RAND_239 = {1{`RANDOM}};
  useAltOnNaCtrs_1_104 = _RAND_239[3:0];
  _RAND_240 = {1{`RANDOM}};
  useAltOnNaCtrs_1_105 = _RAND_240[3:0];
  _RAND_241 = {1{`RANDOM}};
  useAltOnNaCtrs_1_106 = _RAND_241[3:0];
  _RAND_242 = {1{`RANDOM}};
  useAltOnNaCtrs_1_107 = _RAND_242[3:0];
  _RAND_243 = {1{`RANDOM}};
  useAltOnNaCtrs_1_108 = _RAND_243[3:0];
  _RAND_244 = {1{`RANDOM}};
  useAltOnNaCtrs_1_109 = _RAND_244[3:0];
  _RAND_245 = {1{`RANDOM}};
  useAltOnNaCtrs_1_110 = _RAND_245[3:0];
  _RAND_246 = {1{`RANDOM}};
  useAltOnNaCtrs_1_111 = _RAND_246[3:0];
  _RAND_247 = {1{`RANDOM}};
  useAltOnNaCtrs_1_112 = _RAND_247[3:0];
  _RAND_248 = {1{`RANDOM}};
  useAltOnNaCtrs_1_113 = _RAND_248[3:0];
  _RAND_249 = {1{`RANDOM}};
  useAltOnNaCtrs_1_114 = _RAND_249[3:0];
  _RAND_250 = {1{`RANDOM}};
  useAltOnNaCtrs_1_115 = _RAND_250[3:0];
  _RAND_251 = {1{`RANDOM}};
  useAltOnNaCtrs_1_116 = _RAND_251[3:0];
  _RAND_252 = {1{`RANDOM}};
  useAltOnNaCtrs_1_117 = _RAND_252[3:0];
  _RAND_253 = {1{`RANDOM}};
  useAltOnNaCtrs_1_118 = _RAND_253[3:0];
  _RAND_254 = {1{`RANDOM}};
  useAltOnNaCtrs_1_119 = _RAND_254[3:0];
  _RAND_255 = {1{`RANDOM}};
  useAltOnNaCtrs_1_120 = _RAND_255[3:0];
  _RAND_256 = {1{`RANDOM}};
  useAltOnNaCtrs_1_121 = _RAND_256[3:0];
  _RAND_257 = {1{`RANDOM}};
  useAltOnNaCtrs_1_122 = _RAND_257[3:0];
  _RAND_258 = {1{`RANDOM}};
  useAltOnNaCtrs_1_123 = _RAND_258[3:0];
  _RAND_259 = {1{`RANDOM}};
  useAltOnNaCtrs_1_124 = _RAND_259[3:0];
  _RAND_260 = {1{`RANDOM}};
  useAltOnNaCtrs_1_125 = _RAND_260[3:0];
  _RAND_261 = {1{`RANDOM}};
  useAltOnNaCtrs_1_126 = _RAND_261[3:0];
  _RAND_262 = {1{`RANDOM}};
  useAltOnNaCtrs_1_127 = _RAND_262[3:0];
  _RAND_263 = {1{`RANDOM}};
  s2_provideds_0 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  s2_provideds_1 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  s2_providers_0 = _RAND_265[1:0];
  _RAND_266 = {1{`RANDOM}};
  s2_providers_1 = _RAND_266[1:0];
  _RAND_267 = {1{`RANDOM}};
  s2_providerResps_0_ctr = _RAND_267[2:0];
  _RAND_268 = {1{`RANDOM}};
  s2_providerResps_0_u = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  s2_providerResps_0_unconf = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  s2_providerResps_1_ctr = _RAND_270[2:0];
  _RAND_271 = {1{`RANDOM}};
  s2_providerResps_1_u = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  s2_providerResps_1_unconf = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  s2_altUsed_0 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  s2_altUsed_1 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  s2_tageTakens_dup_0_0 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  s2_tageTakens_dup_0_1 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  s2_tageTakens_dup_1_0 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  s2_tageTakens_dup_1_1 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  s2_tageTakens_dup_2_0 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  s2_tageTakens_dup_2_1 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  s2_tageTakens_dup_3_0 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  s2_tageTakens_dup_3_1 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  s2_finalAltPreds_0 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  s2_finalAltPreds_1 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  s2_basecnts_0 = _RAND_285[1:0];
  _RAND_286 = {1{`RANDOM}};
  s2_basecnts_1 = _RAND_286[1:0];
  _RAND_287 = {1{`RANDOM}};
  r__0 = _RAND_287[5:0];
  _RAND_288 = {1{`RANDOM}};
  r__1 = _RAND_288[5:0];
  _RAND_289 = {1{`RANDOM}};
  r__2 = _RAND_289[5:0];
  _RAND_290 = {1{`RANDOM}};
  r__3 = _RAND_290[5:0];
  _RAND_291 = {1{`RANDOM}};
  r_1_0 = _RAND_291[5:0];
  _RAND_292 = {1{`RANDOM}};
  r_1_1 = _RAND_292[5:0];
  _RAND_293 = {1{`RANDOM}};
  r_1_2 = _RAND_293[5:0];
  _RAND_294 = {1{`RANDOM}};
  r_1_3 = _RAND_294[5:0];
  _RAND_295 = {1{`RANDOM}};
  resp_meta_scMeta_scPreds_1_r = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  resp_meta_scMeta_scPreds_0_r = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  resp_meta_scMeta_scUsed_1_r = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  resp_meta_scMeta_scUsed_0_r = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  resp_meta_scMeta_tageTakens_1_r = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  resp_meta_scMeta_tageTakens_0_r = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  resp_meta_allocates_0_r = _RAND_301[3:0];
  _RAND_302 = {1{`RANDOM}};
  resp_meta_takens_1_r = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  resp_meta_takens_0_r = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  resp_meta_basecnts_0_r = _RAND_304[1:0];
  _RAND_305 = {1{`RANDOM}};
  resp_meta_allocates_1_r = _RAND_305[3:0];
  _RAND_306 = {1{`RANDOM}};
  resp_meta_altDiffers_0_r = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  resp_meta_basecnts_1_r = _RAND_307[1:0];
  _RAND_308 = {1{`RANDOM}};
  resp_meta_altUsed_0_r = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  resp_meta_altDiffers_1_r = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  resp_meta_providerResps_0_runconf = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  resp_meta_altUsed_1_r = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  resp_meta_providerResps_0_rctr = _RAND_312[2:0];
  _RAND_313 = {1{`RANDOM}};
  resp_meta_providerResps_0_ru = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  resp_meta_providerResps_1_ru = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  resp_meta_providerResps_1_runconf = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  resp_meta_providers_0_bits_r = _RAND_316[1:0];
  _RAND_317 = {1{`RANDOM}};
  resp_meta_providerResps_1_rctr = _RAND_317[2:0];
  _RAND_318 = {1{`RANDOM}};
  resp_meta_providers_1_valid_r = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  resp_meta_providers_1_bits_r = _RAND_319[1:0];
  _RAND_320 = {1{`RANDOM}};
  resp_meta_providers_0_valid_r = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  allocatableSlots = _RAND_321[3:0];
  _RAND_322 = {1{`RANDOM}};
  tage_enable_dup_REG = _RAND_322[0:0];
  _RAND_323 = {2{`RANDOM}};
  allocLFSR_lfsr = _RAND_323[63:0];
  _RAND_324 = {1{`RANDOM}};
  allocatableSlots_1 = _RAND_324[3:0];
  _RAND_325 = {1{`RANDOM}};
  tage_enable_dup_REG_1 = _RAND_325[0:0];
  _RAND_326 = {2{`RANDOM}};
  allocLFSR_lfsr_1 = _RAND_326[63:0];
  _RAND_327 = {1{`RANDOM}};
  tables_0_io_update_mask_0_REG = _RAND_327[0:0];
  _RAND_328 = {1{`RANDOM}};
  tables_0_io_update_takens_0_REG = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  tables_0_io_update_alloc_0_REG = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  tables_0_io_update_oldCtrs_0_REG = _RAND_330[2:0];
  _RAND_331 = {1{`RANDOM}};
  tables_0_io_update_uMask_0_REG = _RAND_331[0:0];
  _RAND_332 = {1{`RANDOM}};
  tables_0_io_update_us_0_REG = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  tables_0_io_update_reset_u_0_REG = _RAND_333[0:0];
  _RAND_334 = {1{`RANDOM}};
  tables_1_io_update_mask_0_REG = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  tables_1_io_update_takens_0_REG = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  tables_1_io_update_alloc_0_REG = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  tables_1_io_update_oldCtrs_0_REG = _RAND_337[2:0];
  _RAND_338 = {1{`RANDOM}};
  tables_1_io_update_uMask_0_REG = _RAND_338[0:0];
  _RAND_339 = {1{`RANDOM}};
  tables_1_io_update_us_0_REG = _RAND_339[0:0];
  _RAND_340 = {1{`RANDOM}};
  tables_1_io_update_reset_u_0_REG = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  tables_2_io_update_mask_0_REG = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  tables_2_io_update_takens_0_REG = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  tables_2_io_update_alloc_0_REG = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  tables_2_io_update_oldCtrs_0_REG = _RAND_344[2:0];
  _RAND_345 = {1{`RANDOM}};
  tables_2_io_update_uMask_0_REG = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  tables_2_io_update_us_0_REG = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  tables_2_io_update_reset_u_0_REG = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  tables_3_io_update_mask_0_REG = _RAND_348[0:0];
  _RAND_349 = {1{`RANDOM}};
  tables_3_io_update_takens_0_REG = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  tables_3_io_update_alloc_0_REG = _RAND_350[0:0];
  _RAND_351 = {1{`RANDOM}};
  tables_3_io_update_oldCtrs_0_REG = _RAND_351[2:0];
  _RAND_352 = {1{`RANDOM}};
  tables_3_io_update_uMask_0_REG = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  tables_3_io_update_us_0_REG = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  tables_3_io_update_reset_u_0_REG = _RAND_354[0:0];
  _RAND_355 = {1{`RANDOM}};
  tables_0_io_update_mask_1_REG = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  tables_0_io_update_takens_1_REG = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  tables_0_io_update_alloc_1_REG = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  tables_0_io_update_oldCtrs_1_REG = _RAND_358[2:0];
  _RAND_359 = {1{`RANDOM}};
  tables_0_io_update_uMask_1_REG = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  tables_0_io_update_us_1_REG = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  tables_0_io_update_reset_u_1_REG = _RAND_361[0:0];
  _RAND_362 = {2{`RANDOM}};
  tables_0_io_update_pc_REG_1 = _RAND_362[38:0];
  _RAND_363 = {1{`RANDOM}};
  tables_0_io_update_folded_hist_REG_1_hist_13_folded_hist = _RAND_363[6:0];
  _RAND_364 = {1{`RANDOM}};
  tables_0_io_update_folded_hist_REG_1_hist_8_folded_hist = _RAND_364[7:0];
  _RAND_365 = {1{`RANDOM}};
  tables_1_io_update_mask_1_REG = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  tables_1_io_update_takens_1_REG = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  tables_1_io_update_alloc_1_REG = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  tables_1_io_update_oldCtrs_1_REG = _RAND_368[2:0];
  _RAND_369 = {1{`RANDOM}};
  tables_1_io_update_uMask_1_REG = _RAND_369[0:0];
  _RAND_370 = {1{`RANDOM}};
  tables_1_io_update_us_1_REG = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  tables_1_io_update_reset_u_1_REG = _RAND_371[0:0];
  _RAND_372 = {2{`RANDOM}};
  tables_1_io_update_pc_REG_1 = _RAND_372[38:0];
  _RAND_373 = {1{`RANDOM}};
  tables_1_io_update_folded_hist_REG_1_hist_17_folded_hist = _RAND_373[7:0];
  _RAND_374 = {1{`RANDOM}};
  tables_1_io_update_folded_hist_REG_1_hist_12_folded_hist = _RAND_374[6:0];
  _RAND_375 = {1{`RANDOM}};
  tables_1_io_update_folded_hist_REG_1_hist_5_folded_hist = _RAND_375[10:0];
  _RAND_376 = {1{`RANDOM}};
  tables_2_io_update_mask_1_REG = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  tables_2_io_update_takens_1_REG = _RAND_377[0:0];
  _RAND_378 = {1{`RANDOM}};
  tables_2_io_update_alloc_1_REG = _RAND_378[0:0];
  _RAND_379 = {1{`RANDOM}};
  tables_2_io_update_oldCtrs_1_REG = _RAND_379[2:0];
  _RAND_380 = {1{`RANDOM}};
  tables_2_io_update_uMask_1_REG = _RAND_380[0:0];
  _RAND_381 = {1{`RANDOM}};
  tables_2_io_update_us_1_REG = _RAND_381[0:0];
  _RAND_382 = {1{`RANDOM}};
  tables_2_io_update_reset_u_1_REG = _RAND_382[0:0];
  _RAND_383 = {2{`RANDOM}};
  tables_2_io_update_pc_REG_1 = _RAND_383[38:0];
  _RAND_384 = {1{`RANDOM}};
  tables_2_io_update_folded_hist_REG_1_hist_9_folded_hist = _RAND_384[6:0];
  _RAND_385 = {1{`RANDOM}};
  tables_2_io_update_folded_hist_REG_1_hist_3_folded_hist = _RAND_385[10:0];
  _RAND_386 = {1{`RANDOM}};
  tables_2_io_update_folded_hist_REG_1_hist_1_folded_hist = _RAND_386[7:0];
  _RAND_387 = {1{`RANDOM}};
  tables_3_io_update_mask_1_REG = _RAND_387[0:0];
  _RAND_388 = {1{`RANDOM}};
  tables_3_io_update_takens_1_REG = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  tables_3_io_update_alloc_1_REG = _RAND_389[0:0];
  _RAND_390 = {1{`RANDOM}};
  tables_3_io_update_oldCtrs_1_REG = _RAND_390[2:0];
  _RAND_391 = {1{`RANDOM}};
  tables_3_io_update_uMask_1_REG = _RAND_391[0:0];
  _RAND_392 = {1{`RANDOM}};
  tables_3_io_update_us_1_REG = _RAND_392[0:0];
  _RAND_393 = {1{`RANDOM}};
  tables_3_io_update_reset_u_1_REG = _RAND_393[0:0];
  _RAND_394 = {2{`RANDOM}};
  tables_3_io_update_pc_REG_1 = _RAND_394[38:0];
  _RAND_395 = {1{`RANDOM}};
  tables_3_io_update_folded_hist_REG_1_hist_15_folded_hist = _RAND_395[10:0];
  _RAND_396 = {1{`RANDOM}};
  tables_3_io_update_folded_hist_REG_1_hist_14_folded_hist = _RAND_396[6:0];
  _RAND_397 = {1{`RANDOM}};
  tables_3_io_update_folded_hist_REG_1_hist_2_folded_hist = _RAND_397[7:0];
  _RAND_398 = {1{`RANDOM}};
  REG_2_0 = _RAND_398[0:0];
  _RAND_399 = {1{`RANDOM}};
  REG_2_1 = _RAND_399[0:0];
  _RAND_400 = {1{`RANDOM}};
  REG_3_0 = _RAND_400[1:0];
  _RAND_401 = {1{`RANDOM}};
  REG_3_1 = _RAND_401[1:0];
  _RAND_402 = {2{`RANDOM}};
  bt_io_update_pc_REG = _RAND_402[38:0];
  _RAND_403 = {1{`RANDOM}};
  REG_4_0 = _RAND_403[0:0];
  _RAND_404 = {1{`RANDOM}};
  REG_4_1 = _RAND_404[0:0];
  _RAND_405 = {1{`RANDOM}};
  scThresholds_0_ctr = _RAND_405[4:0];
  _RAND_406 = {1{`RANDOM}};
  scThresholds_0_thres = _RAND_406[7:0];
  _RAND_407 = {1{`RANDOM}};
  scThresholds_1_ctr = _RAND_407[4:0];
  _RAND_408 = {1{`RANDOM}};
  scThresholds_1_thres = _RAND_408[7:0];
  _RAND_409 = {1{`RANDOM}};
  s2_scTableSums__0 = _RAND_409[8:0];
  _RAND_410 = {1{`RANDOM}};
  s2_scTableSums__1 = _RAND_410[8:0];
  _RAND_411 = {1{`RANDOM}};
  s2_tagePrvdCtrCentered_r = _RAND_411[2:0];
  _RAND_412 = {1{`RANDOM}};
  s2_scResps_r_0_ctrs_0_0 = _RAND_412[5:0];
  _RAND_413 = {1{`RANDOM}};
  s2_scResps_r_0_ctrs_0_1 = _RAND_413[5:0];
  _RAND_414 = {1{`RANDOM}};
  s2_scResps_r_1_ctrs_0_0 = _RAND_414[5:0];
  _RAND_415 = {1{`RANDOM}};
  s2_scResps_r_1_ctrs_0_1 = _RAND_415[5:0];
  _RAND_416 = {1{`RANDOM}};
  s2_scResps_r_2_ctrs_0_0 = _RAND_416[5:0];
  _RAND_417 = {1{`RANDOM}};
  s2_scResps_r_2_ctrs_0_1 = _RAND_417[5:0];
  _RAND_418 = {1{`RANDOM}};
  s2_scResps_r_3_ctrs_0_0 = _RAND_418[5:0];
  _RAND_419 = {1{`RANDOM}};
  s2_scResps_r_3_ctrs_0_1 = _RAND_419[5:0];
  _RAND_420 = {1{`RANDOM}};
  s2_scTableSums_1_1 = _RAND_420[8:0];
  _RAND_421 = {1{`RANDOM}};
  s2_tagePrvdCtrCentered_r1 = _RAND_421[2:0];
  _RAND_422 = {1{`RANDOM}};
  s2_scTableSums_1_0 = _RAND_422[8:0];
  _RAND_423 = {1{`RANDOM}};
  s3_pred_dup_0 = _RAND_423[0:0];
  _RAND_424 = {1{`RANDOM}};
  s3_pred_dup_1 = _RAND_424[0:0];
  _RAND_425 = {1{`RANDOM}};
  s3_pred_dup_2 = _RAND_425[0:0];
  _RAND_426 = {1{`RANDOM}};
  s3_pred_dup_3 = _RAND_426[0:0];
  _RAND_427 = {1{`RANDOM}};
  sc_enable_dup_REG = _RAND_427[0:0];
  _RAND_428 = {1{`RANDOM}};
  s2_scResps_r1_0_ctrs_1_0 = _RAND_428[5:0];
  _RAND_429 = {1{`RANDOM}};
  s2_scResps_r1_0_ctrs_1_1 = _RAND_429[5:0];
  _RAND_430 = {1{`RANDOM}};
  s2_scResps_r1_1_ctrs_1_0 = _RAND_430[5:0];
  _RAND_431 = {1{`RANDOM}};
  s2_scResps_r1_1_ctrs_1_1 = _RAND_431[5:0];
  _RAND_432 = {1{`RANDOM}};
  s2_scResps_r1_2_ctrs_1_0 = _RAND_432[5:0];
  _RAND_433 = {1{`RANDOM}};
  s2_scResps_r1_2_ctrs_1_1 = _RAND_433[5:0];
  _RAND_434 = {1{`RANDOM}};
  s2_scResps_r1_3_ctrs_1_0 = _RAND_434[5:0];
  _RAND_435 = {1{`RANDOM}};
  s2_scResps_r1_3_ctrs_1_1 = _RAND_435[5:0];
  _RAND_436 = {1{`RANDOM}};
  s3_pred_dup_0_1 = _RAND_436[0:0];
  _RAND_437 = {1{`RANDOM}};
  s3_pred_dup_1_1 = _RAND_437[0:0];
  _RAND_438 = {1{`RANDOM}};
  s3_pred_dup_2_1 = _RAND_438[0:0];
  _RAND_439 = {1{`RANDOM}};
  s3_pred_dup_3_1 = _RAND_439[0:0];
  _RAND_440 = {1{`RANDOM}};
  sc_enable_dup_REG_1 = _RAND_440[0:0];
  _RAND_441 = {1{`RANDOM}};
  scTables_0_io_update_mask_0_REG = _RAND_441[0:0];
  _RAND_442 = {1{`RANDOM}};
  scTables_0_io_update_tagePreds_0_REG = _RAND_442[0:0];
  _RAND_443 = {1{`RANDOM}};
  scTables_0_io_update_takens_0_REG = _RAND_443[0:0];
  _RAND_444 = {1{`RANDOM}};
  scTables_0_io_update_oldCtrs_0_REG = _RAND_444[5:0];
  _RAND_445 = {1{`RANDOM}};
  scTables_1_io_update_mask_0_REG = _RAND_445[0:0];
  _RAND_446 = {1{`RANDOM}};
  scTables_1_io_update_tagePreds_0_REG = _RAND_446[0:0];
  _RAND_447 = {1{`RANDOM}};
  scTables_1_io_update_takens_0_REG = _RAND_447[0:0];
  _RAND_448 = {1{`RANDOM}};
  scTables_1_io_update_oldCtrs_0_REG = _RAND_448[5:0];
  _RAND_449 = {1{`RANDOM}};
  scTables_2_io_update_mask_0_REG = _RAND_449[0:0];
  _RAND_450 = {1{`RANDOM}};
  scTables_2_io_update_tagePreds_0_REG = _RAND_450[0:0];
  _RAND_451 = {1{`RANDOM}};
  scTables_2_io_update_takens_0_REG = _RAND_451[0:0];
  _RAND_452 = {1{`RANDOM}};
  scTables_2_io_update_oldCtrs_0_REG = _RAND_452[5:0];
  _RAND_453 = {1{`RANDOM}};
  scTables_3_io_update_mask_0_REG = _RAND_453[0:0];
  _RAND_454 = {1{`RANDOM}};
  scTables_3_io_update_tagePreds_0_REG = _RAND_454[0:0];
  _RAND_455 = {1{`RANDOM}};
  scTables_3_io_update_takens_0_REG = _RAND_455[0:0];
  _RAND_456 = {1{`RANDOM}};
  scTables_3_io_update_oldCtrs_0_REG = _RAND_456[5:0];
  _RAND_457 = {1{`RANDOM}};
  scTables_0_io_update_mask_1_REG = _RAND_457[0:0];
  _RAND_458 = {1{`RANDOM}};
  scTables_0_io_update_tagePreds_1_REG = _RAND_458[0:0];
  _RAND_459 = {1{`RANDOM}};
  scTables_0_io_update_takens_1_REG = _RAND_459[0:0];
  _RAND_460 = {1{`RANDOM}};
  scTables_0_io_update_oldCtrs_1_REG = _RAND_460[5:0];
  _RAND_461 = {2{`RANDOM}};
  scTables_0_io_update_pc_REG_1 = _RAND_461[38:0];
  _RAND_462 = {1{`RANDOM}};
  scTables_1_io_update_mask_1_REG = _RAND_462[0:0];
  _RAND_463 = {1{`RANDOM}};
  scTables_1_io_update_tagePreds_1_REG = _RAND_463[0:0];
  _RAND_464 = {1{`RANDOM}};
  scTables_1_io_update_takens_1_REG = _RAND_464[0:0];
  _RAND_465 = {1{`RANDOM}};
  scTables_1_io_update_oldCtrs_1_REG = _RAND_465[5:0];
  _RAND_466 = {2{`RANDOM}};
  scTables_1_io_update_pc_REG_1 = _RAND_466[38:0];
  _RAND_467 = {1{`RANDOM}};
  scTables_1_io_update_folded_hist_REG_1_hist_4_folded_hist = _RAND_467[3:0];
  _RAND_468 = {1{`RANDOM}};
  scTables_2_io_update_mask_1_REG = _RAND_468[0:0];
  _RAND_469 = {1{`RANDOM}};
  scTables_2_io_update_tagePreds_1_REG = _RAND_469[0:0];
  _RAND_470 = {1{`RANDOM}};
  scTables_2_io_update_takens_1_REG = _RAND_470[0:0];
  _RAND_471 = {1{`RANDOM}};
  scTables_2_io_update_oldCtrs_1_REG = _RAND_471[5:0];
  _RAND_472 = {2{`RANDOM}};
  scTables_2_io_update_pc_REG_1 = _RAND_472[38:0];
  _RAND_473 = {1{`RANDOM}};
  scTables_2_io_update_folded_hist_REG_1_hist_16_folded_hist = _RAND_473[7:0];
  _RAND_474 = {1{`RANDOM}};
  scTables_3_io_update_mask_1_REG = _RAND_474[0:0];
  _RAND_475 = {1{`RANDOM}};
  scTables_3_io_update_tagePreds_1_REG = _RAND_475[0:0];
  _RAND_476 = {1{`RANDOM}};
  scTables_3_io_update_takens_1_REG = _RAND_476[0:0];
  _RAND_477 = {1{`RANDOM}};
  scTables_3_io_update_oldCtrs_1_REG = _RAND_477[5:0];
  _RAND_478 = {2{`RANDOM}};
  scTables_3_io_update_pc_REG_1 = _RAND_478[38:0];
  _RAND_479 = {1{`RANDOM}};
  scTables_3_io_update_folded_hist_REG_1_hist_0_folded_hist = _RAND_479[7:0];
  _RAND_480 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_480[1:0];
  _RAND_481 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_481[1:0];
  _RAND_482 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_482[1:0];
  _RAND_483 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_483[1:0];
  _RAND_484 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_484[1:0];
  _RAND_485 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_485[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    bankTickCtrDistanceToTops_0 = 7'h40;
  end
  if (reset) begin
    bankTickCtrDistanceToTops_1 = 7'h40;
  end
  if (reset) begin
    bankTickCtrs_0 = 7'h0;
  end
  if (reset) begin
    bankTickCtrs_1 = 7'h0;
  end
  if (reset) begin
    useAltOnNaCtrs_0_0 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_1 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_2 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_3 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_4 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_5 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_6 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_7 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_8 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_9 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_10 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_11 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_12 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_13 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_14 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_15 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_16 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_17 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_18 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_19 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_20 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_21 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_22 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_23 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_24 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_25 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_26 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_27 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_28 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_29 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_30 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_31 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_32 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_33 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_34 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_35 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_36 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_37 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_38 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_39 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_40 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_41 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_42 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_43 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_44 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_45 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_46 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_47 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_48 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_49 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_50 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_51 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_52 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_53 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_54 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_55 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_56 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_57 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_58 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_59 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_60 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_61 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_62 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_63 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_64 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_65 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_66 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_67 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_68 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_69 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_70 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_71 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_72 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_73 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_74 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_75 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_76 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_77 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_78 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_79 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_80 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_81 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_82 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_83 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_84 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_85 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_86 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_87 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_88 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_89 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_90 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_91 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_92 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_93 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_94 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_95 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_96 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_97 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_98 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_99 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_100 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_101 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_102 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_103 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_104 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_105 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_106 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_107 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_108 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_109 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_110 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_111 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_112 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_113 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_114 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_115 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_116 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_117 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_118 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_119 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_120 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_121 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_122 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_123 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_124 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_125 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_126 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_0_127 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_0 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_1 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_2 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_3 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_4 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_5 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_6 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_7 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_8 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_9 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_10 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_11 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_12 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_13 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_14 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_15 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_16 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_17 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_18 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_19 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_20 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_21 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_22 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_23 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_24 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_25 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_26 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_27 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_28 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_29 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_30 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_31 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_32 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_33 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_34 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_35 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_36 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_37 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_38 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_39 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_40 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_41 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_42 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_43 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_44 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_45 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_46 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_47 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_48 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_49 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_50 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_51 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_52 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_53 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_54 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_55 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_56 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_57 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_58 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_59 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_60 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_61 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_62 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_63 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_64 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_65 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_66 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_67 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_68 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_69 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_70 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_71 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_72 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_73 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_74 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_75 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_76 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_77 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_78 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_79 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_80 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_81 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_82 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_83 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_84 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_85 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_86 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_87 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_88 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_89 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_90 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_91 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_92 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_93 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_94 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_95 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_96 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_97 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_98 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_99 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_100 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_101 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_102 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_103 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_104 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_105 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_106 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_107 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_108 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_109 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_110 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_111 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_112 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_113 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_114 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_115 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_116 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_117 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_118 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_119 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_120 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_121 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_122 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_123 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_124 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_125 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_126 = 4'h8;
  end
  if (reset) begin
    useAltOnNaCtrs_1_127 = 4'h8;
  end
  if (reset) begin
    allocLFSR_lfsr = 64'h1234567887654321;
  end
  if (reset) begin
    allocLFSR_lfsr_1 = 64'h1234567887654321;
  end
  if (reset) begin
    scThresholds_0_ctr = 5'h10;
  end
  if (reset) begin
    scThresholds_0_thres = 8'h6;
  end
  if (reset) begin
    scThresholds_1_ctr = 5'h10;
  end
  if (reset) begin
    scThresholds_1_thres = 8'h6;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

