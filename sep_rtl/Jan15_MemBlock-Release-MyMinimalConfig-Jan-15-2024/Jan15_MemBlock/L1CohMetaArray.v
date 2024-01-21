module L1CohMetaArray(
  input        clock,
  input        reset,
  input        io_read_0_valid,
  input  [5:0] io_read_0_bits_idx,
  input        io_read_1_valid,
  input  [5:0] io_read_1_bits_idx,
  input        io_read_2_valid,
  input  [5:0] io_read_2_bits_idx,
  output [1:0] io_resp_0_0_coh_state,
  output [1:0] io_resp_0_1_coh_state,
  output [1:0] io_resp_0_2_coh_state,
  output [1:0] io_resp_0_3_coh_state,
  output [1:0] io_resp_0_4_coh_state,
  output [1:0] io_resp_0_5_coh_state,
  output [1:0] io_resp_0_6_coh_state,
  output [1:0] io_resp_0_7_coh_state,
  output [1:0] io_resp_1_0_coh_state,
  output [1:0] io_resp_1_1_coh_state,
  output [1:0] io_resp_1_2_coh_state,
  output [1:0] io_resp_1_3_coh_state,
  output [1:0] io_resp_1_4_coh_state,
  output [1:0] io_resp_1_5_coh_state,
  output [1:0] io_resp_1_6_coh_state,
  output [1:0] io_resp_1_7_coh_state,
  output [1:0] io_resp_2_0_coh_state,
  output [1:0] io_resp_2_1_coh_state,
  output [1:0] io_resp_2_2_coh_state,
  output [1:0] io_resp_2_3_coh_state,
  output [1:0] io_resp_2_4_coh_state,
  output [1:0] io_resp_2_5_coh_state,
  output [1:0] io_resp_2_6_coh_state,
  output [1:0] io_resp_2_7_coh_state,
  input        io_write_0_valid,
  input  [5:0] io_write_0_bits_idx,
  input  [7:0] io_write_0_bits_way_en,
  input  [1:0] io_write_0_bits_meta_coh_state,
  input        io_write_1_valid,
  input  [5:0] io_write_1_bits_idx,
  input  [7:0] io_write_1_bits_way_en,
  input  [1:0] io_write_1_bits_meta_coh_state
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
  reg [31:0] _RAND_504;
  reg [31:0] _RAND_505;
  reg [31:0] _RAND_506;
  reg [31:0] _RAND_507;
  reg [31:0] _RAND_508;
  reg [31:0] _RAND_509;
  reg [31:0] _RAND_510;
  reg [31:0] _RAND_511;
  reg [31:0] _RAND_512;
  reg [31:0] _RAND_513;
  reg [31:0] _RAND_514;
  reg [31:0] _RAND_515;
  reg [31:0] _RAND_516;
  reg [31:0] _RAND_517;
  reg [31:0] _RAND_518;
  reg [31:0] _RAND_519;
  reg [31:0] _RAND_520;
  reg [31:0] _RAND_521;
  reg [31:0] _RAND_522;
  reg [31:0] _RAND_523;
  reg [31:0] _RAND_524;
  reg [31:0] _RAND_525;
  reg [31:0] _RAND_526;
  reg [31:0] _RAND_527;
  reg [31:0] _RAND_528;
  reg [31:0] _RAND_529;
  reg [31:0] _RAND_530;
  reg [31:0] _RAND_531;
  reg [31:0] _RAND_532;
  reg [31:0] _RAND_533;
  reg [31:0] _RAND_534;
  reg [31:0] _RAND_535;
  reg [31:0] _RAND_536;
  reg [31:0] _RAND_537;
  reg [31:0] _RAND_538;
  reg [31:0] _RAND_539;
  reg [31:0] _RAND_540;
  reg [31:0] _RAND_541;
  reg [31:0] _RAND_542;
  reg [31:0] _RAND_543;
  reg [31:0] _RAND_544;
  reg [31:0] _RAND_545;
  reg [31:0] _RAND_546;
  reg [31:0] _RAND_547;
  reg [31:0] _RAND_548;
  reg [31:0] _RAND_549;
  reg [31:0] _RAND_550;
  reg [31:0] _RAND_551;
  reg [31:0] _RAND_552;
  reg [31:0] _RAND_553;
  reg [31:0] _RAND_554;
  reg [31:0] _RAND_555;
  reg [31:0] _RAND_556;
  reg [31:0] _RAND_557;
  reg [31:0] _RAND_558;
  reg [31:0] _RAND_559;
  reg [31:0] _RAND_560;
  reg [31:0] _RAND_561;
  reg [31:0] _RAND_562;
  reg [31:0] _RAND_563;
  reg [31:0] _RAND_564;
  reg [31:0] _RAND_565;
  reg [31:0] _RAND_566;
  reg [31:0] _RAND_567;
  reg [31:0] _RAND_568;
  reg [31:0] _RAND_569;
  reg [31:0] _RAND_570;
  reg [31:0] _RAND_571;
  reg [31:0] _RAND_572;
  reg [31:0] _RAND_573;
  reg [31:0] _RAND_574;
  reg [31:0] _RAND_575;
  reg [31:0] _RAND_576;
  reg [31:0] _RAND_577;
  reg [31:0] _RAND_578;
  reg [31:0] _RAND_579;
  reg [31:0] _RAND_580;
  reg [31:0] _RAND_581;
  reg [31:0] _RAND_582;
  reg [31:0] _RAND_583;
  reg [31:0] _RAND_584;
  reg [31:0] _RAND_585;
  reg [31:0] _RAND_586;
  reg [31:0] _RAND_587;
  reg [31:0] _RAND_588;
  reg [31:0] _RAND_589;
  reg [31:0] _RAND_590;
  reg [31:0] _RAND_591;
  reg [31:0] _RAND_592;
  reg [31:0] _RAND_593;
  reg [31:0] _RAND_594;
  reg [31:0] _RAND_595;
  reg [31:0] _RAND_596;
  reg [31:0] _RAND_597;
  reg [31:0] _RAND_598;
  reg [31:0] _RAND_599;
  reg [31:0] _RAND_600;
  reg [31:0] _RAND_601;
  reg [31:0] _RAND_602;
  reg [31:0] _RAND_603;
  reg [31:0] _RAND_604;
  reg [31:0] _RAND_605;
  reg [31:0] _RAND_606;
  reg [31:0] _RAND_607;
  reg [31:0] _RAND_608;
  reg [31:0] _RAND_609;
  reg [31:0] _RAND_610;
  reg [31:0] _RAND_611;
  reg [31:0] _RAND_612;
  reg [31:0] _RAND_613;
  reg [31:0] _RAND_614;
  reg [31:0] _RAND_615;
  reg [31:0] _RAND_616;
  reg [31:0] _RAND_617;
  reg [31:0] _RAND_618;
  reg [31:0] _RAND_619;
  reg [31:0] _RAND_620;
  reg [31:0] _RAND_621;
  reg [31:0] _RAND_622;
  reg [31:0] _RAND_623;
  reg [31:0] _RAND_624;
  reg [31:0] _RAND_625;
  reg [31:0] _RAND_626;
  reg [31:0] _RAND_627;
  reg [31:0] _RAND_628;
  reg [31:0] _RAND_629;
  reg [31:0] _RAND_630;
  reg [31:0] _RAND_631;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] meta_array_0_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_0_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_1_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_2_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_3_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_4_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_5_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_6_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_7_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_8_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_9_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_10_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_11_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_12_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_13_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_14_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_15_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_16_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_17_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_18_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_19_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_20_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_21_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_22_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_23_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_24_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_25_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_26_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_27_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_28_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_29_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_30_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_31_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_32_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_33_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_34_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_35_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_36_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_37_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_38_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_39_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_40_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_41_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_42_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_43_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_44_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_45_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_46_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_47_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_48_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_49_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_50_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_51_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_52_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_53_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_54_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_55_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_56_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_57_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_58_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_59_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_60_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_61_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_62_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_0_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_1_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_2_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_3_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_4_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_5_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_6_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [1:0] meta_array_63_7_coh_state; // @[AsynchronousMetaArray.scala 58:27]
  reg [5:0] s1_way_waddr_0_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_0_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_0_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_0_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_0_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass = s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_0_bits_idx | s1_way_wen_0_0_REG &
    s1_way_waddr_0_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_0_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_0_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_0_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_0_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_7 = 6'h1 == io_read_0_bits_idx ? meta_array_1_0_coh_state : meta_array_0_0_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_8 = 6'h2 == io_read_0_bits_idx ? meta_array_2_0_coh_state : _GEN_7; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_9 = 6'h3 == io_read_0_bits_idx ? meta_array_3_0_coh_state : _GEN_8; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_10 = 6'h4 == io_read_0_bits_idx ? meta_array_4_0_coh_state : _GEN_9; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_11 = 6'h5 == io_read_0_bits_idx ? meta_array_5_0_coh_state : _GEN_10; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_12 = 6'h6 == io_read_0_bits_idx ? meta_array_6_0_coh_state : _GEN_11; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_13 = 6'h7 == io_read_0_bits_idx ? meta_array_7_0_coh_state : _GEN_12; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_14 = 6'h8 == io_read_0_bits_idx ? meta_array_8_0_coh_state : _GEN_13; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_15 = 6'h9 == io_read_0_bits_idx ? meta_array_9_0_coh_state : _GEN_14; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_16 = 6'ha == io_read_0_bits_idx ? meta_array_10_0_coh_state : _GEN_15; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_17 = 6'hb == io_read_0_bits_idx ? meta_array_11_0_coh_state : _GEN_16; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_18 = 6'hc == io_read_0_bits_idx ? meta_array_12_0_coh_state : _GEN_17; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_19 = 6'hd == io_read_0_bits_idx ? meta_array_13_0_coh_state : _GEN_18; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_20 = 6'he == io_read_0_bits_idx ? meta_array_14_0_coh_state : _GEN_19; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_21 = 6'hf == io_read_0_bits_idx ? meta_array_15_0_coh_state : _GEN_20; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_22 = 6'h10 == io_read_0_bits_idx ? meta_array_16_0_coh_state : _GEN_21; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_23 = 6'h11 == io_read_0_bits_idx ? meta_array_17_0_coh_state : _GEN_22; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_24 = 6'h12 == io_read_0_bits_idx ? meta_array_18_0_coh_state : _GEN_23; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_25 = 6'h13 == io_read_0_bits_idx ? meta_array_19_0_coh_state : _GEN_24; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_26 = 6'h14 == io_read_0_bits_idx ? meta_array_20_0_coh_state : _GEN_25; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_27 = 6'h15 == io_read_0_bits_idx ? meta_array_21_0_coh_state : _GEN_26; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_28 = 6'h16 == io_read_0_bits_idx ? meta_array_22_0_coh_state : _GEN_27; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_29 = 6'h17 == io_read_0_bits_idx ? meta_array_23_0_coh_state : _GEN_28; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_30 = 6'h18 == io_read_0_bits_idx ? meta_array_24_0_coh_state : _GEN_29; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_31 = 6'h19 == io_read_0_bits_idx ? meta_array_25_0_coh_state : _GEN_30; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_32 = 6'h1a == io_read_0_bits_idx ? meta_array_26_0_coh_state : _GEN_31; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_33 = 6'h1b == io_read_0_bits_idx ? meta_array_27_0_coh_state : _GEN_32; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_34 = 6'h1c == io_read_0_bits_idx ? meta_array_28_0_coh_state : _GEN_33; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_35 = 6'h1d == io_read_0_bits_idx ? meta_array_29_0_coh_state : _GEN_34; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_36 = 6'h1e == io_read_0_bits_idx ? meta_array_30_0_coh_state : _GEN_35; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_37 = 6'h1f == io_read_0_bits_idx ? meta_array_31_0_coh_state : _GEN_36; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_38 = 6'h20 == io_read_0_bits_idx ? meta_array_32_0_coh_state : _GEN_37; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_39 = 6'h21 == io_read_0_bits_idx ? meta_array_33_0_coh_state : _GEN_38; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_40 = 6'h22 == io_read_0_bits_idx ? meta_array_34_0_coh_state : _GEN_39; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_41 = 6'h23 == io_read_0_bits_idx ? meta_array_35_0_coh_state : _GEN_40; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_42 = 6'h24 == io_read_0_bits_idx ? meta_array_36_0_coh_state : _GEN_41; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_43 = 6'h25 == io_read_0_bits_idx ? meta_array_37_0_coh_state : _GEN_42; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_44 = 6'h26 == io_read_0_bits_idx ? meta_array_38_0_coh_state : _GEN_43; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_45 = 6'h27 == io_read_0_bits_idx ? meta_array_39_0_coh_state : _GEN_44; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_46 = 6'h28 == io_read_0_bits_idx ? meta_array_40_0_coh_state : _GEN_45; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_47 = 6'h29 == io_read_0_bits_idx ? meta_array_41_0_coh_state : _GEN_46; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_48 = 6'h2a == io_read_0_bits_idx ? meta_array_42_0_coh_state : _GEN_47; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_49 = 6'h2b == io_read_0_bits_idx ? meta_array_43_0_coh_state : _GEN_48; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_50 = 6'h2c == io_read_0_bits_idx ? meta_array_44_0_coh_state : _GEN_49; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_51 = 6'h2d == io_read_0_bits_idx ? meta_array_45_0_coh_state : _GEN_50; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_52 = 6'h2e == io_read_0_bits_idx ? meta_array_46_0_coh_state : _GEN_51; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_53 = 6'h2f == io_read_0_bits_idx ? meta_array_47_0_coh_state : _GEN_52; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_54 = 6'h30 == io_read_0_bits_idx ? meta_array_48_0_coh_state : _GEN_53; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_55 = 6'h31 == io_read_0_bits_idx ? meta_array_49_0_coh_state : _GEN_54; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_56 = 6'h32 == io_read_0_bits_idx ? meta_array_50_0_coh_state : _GEN_55; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_57 = 6'h33 == io_read_0_bits_idx ? meta_array_51_0_coh_state : _GEN_56; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_58 = 6'h34 == io_read_0_bits_idx ? meta_array_52_0_coh_state : _GEN_57; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_59 = 6'h35 == io_read_0_bits_idx ? meta_array_53_0_coh_state : _GEN_58; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_60 = 6'h36 == io_read_0_bits_idx ? meta_array_54_0_coh_state : _GEN_59; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_61 = 6'h37 == io_read_0_bits_idx ? meta_array_55_0_coh_state : _GEN_60; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_62 = 6'h38 == io_read_0_bits_idx ? meta_array_56_0_coh_state : _GEN_61; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_63 = 6'h39 == io_read_0_bits_idx ? meta_array_57_0_coh_state : _GEN_62; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_64 = 6'h3a == io_read_0_bits_idx ? meta_array_58_0_coh_state : _GEN_63; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_65 = 6'h3b == io_read_0_bits_idx ? meta_array_59_0_coh_state : _GEN_64; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_66 = 6'h3c == io_read_0_bits_idx ? meta_array_60_0_coh_state : _GEN_65; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_1_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_1_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_1_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_1_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_1_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_1 = s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_0_bits_idx | s1_way_wen_1_0_REG &
    s1_way_waddr_1_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_1_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_1_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_1_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_1_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_78 = 6'h1 == io_read_0_bits_idx ? meta_array_1_1_coh_state : meta_array_0_1_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_79 = 6'h2 == io_read_0_bits_idx ? meta_array_2_1_coh_state : _GEN_78; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_80 = 6'h3 == io_read_0_bits_idx ? meta_array_3_1_coh_state : _GEN_79; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_81 = 6'h4 == io_read_0_bits_idx ? meta_array_4_1_coh_state : _GEN_80; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_82 = 6'h5 == io_read_0_bits_idx ? meta_array_5_1_coh_state : _GEN_81; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_83 = 6'h6 == io_read_0_bits_idx ? meta_array_6_1_coh_state : _GEN_82; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_84 = 6'h7 == io_read_0_bits_idx ? meta_array_7_1_coh_state : _GEN_83; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_85 = 6'h8 == io_read_0_bits_idx ? meta_array_8_1_coh_state : _GEN_84; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_86 = 6'h9 == io_read_0_bits_idx ? meta_array_9_1_coh_state : _GEN_85; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_87 = 6'ha == io_read_0_bits_idx ? meta_array_10_1_coh_state : _GEN_86; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_88 = 6'hb == io_read_0_bits_idx ? meta_array_11_1_coh_state : _GEN_87; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_89 = 6'hc == io_read_0_bits_idx ? meta_array_12_1_coh_state : _GEN_88; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_90 = 6'hd == io_read_0_bits_idx ? meta_array_13_1_coh_state : _GEN_89; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_91 = 6'he == io_read_0_bits_idx ? meta_array_14_1_coh_state : _GEN_90; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_92 = 6'hf == io_read_0_bits_idx ? meta_array_15_1_coh_state : _GEN_91; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_93 = 6'h10 == io_read_0_bits_idx ? meta_array_16_1_coh_state : _GEN_92; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_94 = 6'h11 == io_read_0_bits_idx ? meta_array_17_1_coh_state : _GEN_93; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_95 = 6'h12 == io_read_0_bits_idx ? meta_array_18_1_coh_state : _GEN_94; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_96 = 6'h13 == io_read_0_bits_idx ? meta_array_19_1_coh_state : _GEN_95; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_97 = 6'h14 == io_read_0_bits_idx ? meta_array_20_1_coh_state : _GEN_96; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_98 = 6'h15 == io_read_0_bits_idx ? meta_array_21_1_coh_state : _GEN_97; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_99 = 6'h16 == io_read_0_bits_idx ? meta_array_22_1_coh_state : _GEN_98; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_100 = 6'h17 == io_read_0_bits_idx ? meta_array_23_1_coh_state : _GEN_99; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_101 = 6'h18 == io_read_0_bits_idx ? meta_array_24_1_coh_state : _GEN_100; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_102 = 6'h19 == io_read_0_bits_idx ? meta_array_25_1_coh_state : _GEN_101; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_103 = 6'h1a == io_read_0_bits_idx ? meta_array_26_1_coh_state : _GEN_102; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_104 = 6'h1b == io_read_0_bits_idx ? meta_array_27_1_coh_state : _GEN_103; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_105 = 6'h1c == io_read_0_bits_idx ? meta_array_28_1_coh_state : _GEN_104; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_106 = 6'h1d == io_read_0_bits_idx ? meta_array_29_1_coh_state : _GEN_105; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_107 = 6'h1e == io_read_0_bits_idx ? meta_array_30_1_coh_state : _GEN_106; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_108 = 6'h1f == io_read_0_bits_idx ? meta_array_31_1_coh_state : _GEN_107; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_109 = 6'h20 == io_read_0_bits_idx ? meta_array_32_1_coh_state : _GEN_108; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_110 = 6'h21 == io_read_0_bits_idx ? meta_array_33_1_coh_state : _GEN_109; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_111 = 6'h22 == io_read_0_bits_idx ? meta_array_34_1_coh_state : _GEN_110; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_112 = 6'h23 == io_read_0_bits_idx ? meta_array_35_1_coh_state : _GEN_111; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_113 = 6'h24 == io_read_0_bits_idx ? meta_array_36_1_coh_state : _GEN_112; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_114 = 6'h25 == io_read_0_bits_idx ? meta_array_37_1_coh_state : _GEN_113; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_115 = 6'h26 == io_read_0_bits_idx ? meta_array_38_1_coh_state : _GEN_114; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_116 = 6'h27 == io_read_0_bits_idx ? meta_array_39_1_coh_state : _GEN_115; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_117 = 6'h28 == io_read_0_bits_idx ? meta_array_40_1_coh_state : _GEN_116; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_118 = 6'h29 == io_read_0_bits_idx ? meta_array_41_1_coh_state : _GEN_117; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_119 = 6'h2a == io_read_0_bits_idx ? meta_array_42_1_coh_state : _GEN_118; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_120 = 6'h2b == io_read_0_bits_idx ? meta_array_43_1_coh_state : _GEN_119; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_121 = 6'h2c == io_read_0_bits_idx ? meta_array_44_1_coh_state : _GEN_120; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_122 = 6'h2d == io_read_0_bits_idx ? meta_array_45_1_coh_state : _GEN_121; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_123 = 6'h2e == io_read_0_bits_idx ? meta_array_46_1_coh_state : _GEN_122; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_124 = 6'h2f == io_read_0_bits_idx ? meta_array_47_1_coh_state : _GEN_123; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_125 = 6'h30 == io_read_0_bits_idx ? meta_array_48_1_coh_state : _GEN_124; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_126 = 6'h31 == io_read_0_bits_idx ? meta_array_49_1_coh_state : _GEN_125; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_127 = 6'h32 == io_read_0_bits_idx ? meta_array_50_1_coh_state : _GEN_126; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_128 = 6'h33 == io_read_0_bits_idx ? meta_array_51_1_coh_state : _GEN_127; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_129 = 6'h34 == io_read_0_bits_idx ? meta_array_52_1_coh_state : _GEN_128; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_130 = 6'h35 == io_read_0_bits_idx ? meta_array_53_1_coh_state : _GEN_129; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_131 = 6'h36 == io_read_0_bits_idx ? meta_array_54_1_coh_state : _GEN_130; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_132 = 6'h37 == io_read_0_bits_idx ? meta_array_55_1_coh_state : _GEN_131; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_133 = 6'h38 == io_read_0_bits_idx ? meta_array_56_1_coh_state : _GEN_132; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_134 = 6'h39 == io_read_0_bits_idx ? meta_array_57_1_coh_state : _GEN_133; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_135 = 6'h3a == io_read_0_bits_idx ? meta_array_58_1_coh_state : _GEN_134; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_136 = 6'h3b == io_read_0_bits_idx ? meta_array_59_1_coh_state : _GEN_135; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_137 = 6'h3c == io_read_0_bits_idx ? meta_array_60_1_coh_state : _GEN_136; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_2_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_2_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_2_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_2_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_2_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_2 = s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_0_bits_idx | s1_way_wen_2_0_REG &
    s1_way_waddr_2_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_2_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_2_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_2_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_2_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_149 = 6'h1 == io_read_0_bits_idx ? meta_array_1_2_coh_state : meta_array_0_2_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_150 = 6'h2 == io_read_0_bits_idx ? meta_array_2_2_coh_state : _GEN_149; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_151 = 6'h3 == io_read_0_bits_idx ? meta_array_3_2_coh_state : _GEN_150; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_152 = 6'h4 == io_read_0_bits_idx ? meta_array_4_2_coh_state : _GEN_151; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_153 = 6'h5 == io_read_0_bits_idx ? meta_array_5_2_coh_state : _GEN_152; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_154 = 6'h6 == io_read_0_bits_idx ? meta_array_6_2_coh_state : _GEN_153; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_155 = 6'h7 == io_read_0_bits_idx ? meta_array_7_2_coh_state : _GEN_154; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_156 = 6'h8 == io_read_0_bits_idx ? meta_array_8_2_coh_state : _GEN_155; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_157 = 6'h9 == io_read_0_bits_idx ? meta_array_9_2_coh_state : _GEN_156; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_158 = 6'ha == io_read_0_bits_idx ? meta_array_10_2_coh_state : _GEN_157; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_159 = 6'hb == io_read_0_bits_idx ? meta_array_11_2_coh_state : _GEN_158; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_160 = 6'hc == io_read_0_bits_idx ? meta_array_12_2_coh_state : _GEN_159; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_161 = 6'hd == io_read_0_bits_idx ? meta_array_13_2_coh_state : _GEN_160; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_162 = 6'he == io_read_0_bits_idx ? meta_array_14_2_coh_state : _GEN_161; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_163 = 6'hf == io_read_0_bits_idx ? meta_array_15_2_coh_state : _GEN_162; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_164 = 6'h10 == io_read_0_bits_idx ? meta_array_16_2_coh_state : _GEN_163; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_165 = 6'h11 == io_read_0_bits_idx ? meta_array_17_2_coh_state : _GEN_164; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_166 = 6'h12 == io_read_0_bits_idx ? meta_array_18_2_coh_state : _GEN_165; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_167 = 6'h13 == io_read_0_bits_idx ? meta_array_19_2_coh_state : _GEN_166; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_168 = 6'h14 == io_read_0_bits_idx ? meta_array_20_2_coh_state : _GEN_167; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_169 = 6'h15 == io_read_0_bits_idx ? meta_array_21_2_coh_state : _GEN_168; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_170 = 6'h16 == io_read_0_bits_idx ? meta_array_22_2_coh_state : _GEN_169; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_171 = 6'h17 == io_read_0_bits_idx ? meta_array_23_2_coh_state : _GEN_170; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_172 = 6'h18 == io_read_0_bits_idx ? meta_array_24_2_coh_state : _GEN_171; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_173 = 6'h19 == io_read_0_bits_idx ? meta_array_25_2_coh_state : _GEN_172; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_174 = 6'h1a == io_read_0_bits_idx ? meta_array_26_2_coh_state : _GEN_173; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_175 = 6'h1b == io_read_0_bits_idx ? meta_array_27_2_coh_state : _GEN_174; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_176 = 6'h1c == io_read_0_bits_idx ? meta_array_28_2_coh_state : _GEN_175; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_177 = 6'h1d == io_read_0_bits_idx ? meta_array_29_2_coh_state : _GEN_176; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_178 = 6'h1e == io_read_0_bits_idx ? meta_array_30_2_coh_state : _GEN_177; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_179 = 6'h1f == io_read_0_bits_idx ? meta_array_31_2_coh_state : _GEN_178; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_180 = 6'h20 == io_read_0_bits_idx ? meta_array_32_2_coh_state : _GEN_179; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_181 = 6'h21 == io_read_0_bits_idx ? meta_array_33_2_coh_state : _GEN_180; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_182 = 6'h22 == io_read_0_bits_idx ? meta_array_34_2_coh_state : _GEN_181; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_183 = 6'h23 == io_read_0_bits_idx ? meta_array_35_2_coh_state : _GEN_182; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_184 = 6'h24 == io_read_0_bits_idx ? meta_array_36_2_coh_state : _GEN_183; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_185 = 6'h25 == io_read_0_bits_idx ? meta_array_37_2_coh_state : _GEN_184; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_186 = 6'h26 == io_read_0_bits_idx ? meta_array_38_2_coh_state : _GEN_185; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_187 = 6'h27 == io_read_0_bits_idx ? meta_array_39_2_coh_state : _GEN_186; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_188 = 6'h28 == io_read_0_bits_idx ? meta_array_40_2_coh_state : _GEN_187; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_189 = 6'h29 == io_read_0_bits_idx ? meta_array_41_2_coh_state : _GEN_188; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_190 = 6'h2a == io_read_0_bits_idx ? meta_array_42_2_coh_state : _GEN_189; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_191 = 6'h2b == io_read_0_bits_idx ? meta_array_43_2_coh_state : _GEN_190; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_192 = 6'h2c == io_read_0_bits_idx ? meta_array_44_2_coh_state : _GEN_191; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_193 = 6'h2d == io_read_0_bits_idx ? meta_array_45_2_coh_state : _GEN_192; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_194 = 6'h2e == io_read_0_bits_idx ? meta_array_46_2_coh_state : _GEN_193; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_195 = 6'h2f == io_read_0_bits_idx ? meta_array_47_2_coh_state : _GEN_194; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_196 = 6'h30 == io_read_0_bits_idx ? meta_array_48_2_coh_state : _GEN_195; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_197 = 6'h31 == io_read_0_bits_idx ? meta_array_49_2_coh_state : _GEN_196; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_198 = 6'h32 == io_read_0_bits_idx ? meta_array_50_2_coh_state : _GEN_197; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_199 = 6'h33 == io_read_0_bits_idx ? meta_array_51_2_coh_state : _GEN_198; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_200 = 6'h34 == io_read_0_bits_idx ? meta_array_52_2_coh_state : _GEN_199; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_201 = 6'h35 == io_read_0_bits_idx ? meta_array_53_2_coh_state : _GEN_200; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_202 = 6'h36 == io_read_0_bits_idx ? meta_array_54_2_coh_state : _GEN_201; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_203 = 6'h37 == io_read_0_bits_idx ? meta_array_55_2_coh_state : _GEN_202; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_204 = 6'h38 == io_read_0_bits_idx ? meta_array_56_2_coh_state : _GEN_203; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_205 = 6'h39 == io_read_0_bits_idx ? meta_array_57_2_coh_state : _GEN_204; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_206 = 6'h3a == io_read_0_bits_idx ? meta_array_58_2_coh_state : _GEN_205; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_207 = 6'h3b == io_read_0_bits_idx ? meta_array_59_2_coh_state : _GEN_206; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_208 = 6'h3c == io_read_0_bits_idx ? meta_array_60_2_coh_state : _GEN_207; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_3_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_3_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_3_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_3_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_3_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_3 = s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_0_bits_idx | s1_way_wen_3_0_REG &
    s1_way_waddr_3_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_3_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_3_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_3_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_3_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_220 = 6'h1 == io_read_0_bits_idx ? meta_array_1_3_coh_state : meta_array_0_3_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_221 = 6'h2 == io_read_0_bits_idx ? meta_array_2_3_coh_state : _GEN_220; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_222 = 6'h3 == io_read_0_bits_idx ? meta_array_3_3_coh_state : _GEN_221; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_223 = 6'h4 == io_read_0_bits_idx ? meta_array_4_3_coh_state : _GEN_222; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_224 = 6'h5 == io_read_0_bits_idx ? meta_array_5_3_coh_state : _GEN_223; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_225 = 6'h6 == io_read_0_bits_idx ? meta_array_6_3_coh_state : _GEN_224; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_226 = 6'h7 == io_read_0_bits_idx ? meta_array_7_3_coh_state : _GEN_225; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_227 = 6'h8 == io_read_0_bits_idx ? meta_array_8_3_coh_state : _GEN_226; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_228 = 6'h9 == io_read_0_bits_idx ? meta_array_9_3_coh_state : _GEN_227; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_229 = 6'ha == io_read_0_bits_idx ? meta_array_10_3_coh_state : _GEN_228; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_230 = 6'hb == io_read_0_bits_idx ? meta_array_11_3_coh_state : _GEN_229; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_231 = 6'hc == io_read_0_bits_idx ? meta_array_12_3_coh_state : _GEN_230; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_232 = 6'hd == io_read_0_bits_idx ? meta_array_13_3_coh_state : _GEN_231; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_233 = 6'he == io_read_0_bits_idx ? meta_array_14_3_coh_state : _GEN_232; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_234 = 6'hf == io_read_0_bits_idx ? meta_array_15_3_coh_state : _GEN_233; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_235 = 6'h10 == io_read_0_bits_idx ? meta_array_16_3_coh_state : _GEN_234; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_236 = 6'h11 == io_read_0_bits_idx ? meta_array_17_3_coh_state : _GEN_235; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_237 = 6'h12 == io_read_0_bits_idx ? meta_array_18_3_coh_state : _GEN_236; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_238 = 6'h13 == io_read_0_bits_idx ? meta_array_19_3_coh_state : _GEN_237; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_239 = 6'h14 == io_read_0_bits_idx ? meta_array_20_3_coh_state : _GEN_238; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_240 = 6'h15 == io_read_0_bits_idx ? meta_array_21_3_coh_state : _GEN_239; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_241 = 6'h16 == io_read_0_bits_idx ? meta_array_22_3_coh_state : _GEN_240; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_242 = 6'h17 == io_read_0_bits_idx ? meta_array_23_3_coh_state : _GEN_241; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_243 = 6'h18 == io_read_0_bits_idx ? meta_array_24_3_coh_state : _GEN_242; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_244 = 6'h19 == io_read_0_bits_idx ? meta_array_25_3_coh_state : _GEN_243; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_245 = 6'h1a == io_read_0_bits_idx ? meta_array_26_3_coh_state : _GEN_244; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_246 = 6'h1b == io_read_0_bits_idx ? meta_array_27_3_coh_state : _GEN_245; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_247 = 6'h1c == io_read_0_bits_idx ? meta_array_28_3_coh_state : _GEN_246; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_248 = 6'h1d == io_read_0_bits_idx ? meta_array_29_3_coh_state : _GEN_247; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_249 = 6'h1e == io_read_0_bits_idx ? meta_array_30_3_coh_state : _GEN_248; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_250 = 6'h1f == io_read_0_bits_idx ? meta_array_31_3_coh_state : _GEN_249; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_251 = 6'h20 == io_read_0_bits_idx ? meta_array_32_3_coh_state : _GEN_250; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_252 = 6'h21 == io_read_0_bits_idx ? meta_array_33_3_coh_state : _GEN_251; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_253 = 6'h22 == io_read_0_bits_idx ? meta_array_34_3_coh_state : _GEN_252; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_254 = 6'h23 == io_read_0_bits_idx ? meta_array_35_3_coh_state : _GEN_253; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_255 = 6'h24 == io_read_0_bits_idx ? meta_array_36_3_coh_state : _GEN_254; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_256 = 6'h25 == io_read_0_bits_idx ? meta_array_37_3_coh_state : _GEN_255; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_257 = 6'h26 == io_read_0_bits_idx ? meta_array_38_3_coh_state : _GEN_256; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_258 = 6'h27 == io_read_0_bits_idx ? meta_array_39_3_coh_state : _GEN_257; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_259 = 6'h28 == io_read_0_bits_idx ? meta_array_40_3_coh_state : _GEN_258; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_260 = 6'h29 == io_read_0_bits_idx ? meta_array_41_3_coh_state : _GEN_259; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_261 = 6'h2a == io_read_0_bits_idx ? meta_array_42_3_coh_state : _GEN_260; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_262 = 6'h2b == io_read_0_bits_idx ? meta_array_43_3_coh_state : _GEN_261; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_263 = 6'h2c == io_read_0_bits_idx ? meta_array_44_3_coh_state : _GEN_262; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_264 = 6'h2d == io_read_0_bits_idx ? meta_array_45_3_coh_state : _GEN_263; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_265 = 6'h2e == io_read_0_bits_idx ? meta_array_46_3_coh_state : _GEN_264; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_266 = 6'h2f == io_read_0_bits_idx ? meta_array_47_3_coh_state : _GEN_265; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_267 = 6'h30 == io_read_0_bits_idx ? meta_array_48_3_coh_state : _GEN_266; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_268 = 6'h31 == io_read_0_bits_idx ? meta_array_49_3_coh_state : _GEN_267; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_269 = 6'h32 == io_read_0_bits_idx ? meta_array_50_3_coh_state : _GEN_268; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_270 = 6'h33 == io_read_0_bits_idx ? meta_array_51_3_coh_state : _GEN_269; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_271 = 6'h34 == io_read_0_bits_idx ? meta_array_52_3_coh_state : _GEN_270; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_272 = 6'h35 == io_read_0_bits_idx ? meta_array_53_3_coh_state : _GEN_271; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_273 = 6'h36 == io_read_0_bits_idx ? meta_array_54_3_coh_state : _GEN_272; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_274 = 6'h37 == io_read_0_bits_idx ? meta_array_55_3_coh_state : _GEN_273; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_275 = 6'h38 == io_read_0_bits_idx ? meta_array_56_3_coh_state : _GEN_274; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_276 = 6'h39 == io_read_0_bits_idx ? meta_array_57_3_coh_state : _GEN_275; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_277 = 6'h3a == io_read_0_bits_idx ? meta_array_58_3_coh_state : _GEN_276; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_278 = 6'h3b == io_read_0_bits_idx ? meta_array_59_3_coh_state : _GEN_277; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_279 = 6'h3c == io_read_0_bits_idx ? meta_array_60_3_coh_state : _GEN_278; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_4_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_4_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_4_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_4_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_4_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_4 = s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_0_bits_idx | s1_way_wen_4_0_REG &
    s1_way_waddr_4_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_4_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_4_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_4_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_4_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_291 = 6'h1 == io_read_0_bits_idx ? meta_array_1_4_coh_state : meta_array_0_4_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_292 = 6'h2 == io_read_0_bits_idx ? meta_array_2_4_coh_state : _GEN_291; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_293 = 6'h3 == io_read_0_bits_idx ? meta_array_3_4_coh_state : _GEN_292; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_294 = 6'h4 == io_read_0_bits_idx ? meta_array_4_4_coh_state : _GEN_293; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_295 = 6'h5 == io_read_0_bits_idx ? meta_array_5_4_coh_state : _GEN_294; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_296 = 6'h6 == io_read_0_bits_idx ? meta_array_6_4_coh_state : _GEN_295; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_297 = 6'h7 == io_read_0_bits_idx ? meta_array_7_4_coh_state : _GEN_296; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_298 = 6'h8 == io_read_0_bits_idx ? meta_array_8_4_coh_state : _GEN_297; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_299 = 6'h9 == io_read_0_bits_idx ? meta_array_9_4_coh_state : _GEN_298; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_300 = 6'ha == io_read_0_bits_idx ? meta_array_10_4_coh_state : _GEN_299; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_301 = 6'hb == io_read_0_bits_idx ? meta_array_11_4_coh_state : _GEN_300; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_302 = 6'hc == io_read_0_bits_idx ? meta_array_12_4_coh_state : _GEN_301; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_303 = 6'hd == io_read_0_bits_idx ? meta_array_13_4_coh_state : _GEN_302; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_304 = 6'he == io_read_0_bits_idx ? meta_array_14_4_coh_state : _GEN_303; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_305 = 6'hf == io_read_0_bits_idx ? meta_array_15_4_coh_state : _GEN_304; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_306 = 6'h10 == io_read_0_bits_idx ? meta_array_16_4_coh_state : _GEN_305; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_307 = 6'h11 == io_read_0_bits_idx ? meta_array_17_4_coh_state : _GEN_306; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_308 = 6'h12 == io_read_0_bits_idx ? meta_array_18_4_coh_state : _GEN_307; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_309 = 6'h13 == io_read_0_bits_idx ? meta_array_19_4_coh_state : _GEN_308; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_310 = 6'h14 == io_read_0_bits_idx ? meta_array_20_4_coh_state : _GEN_309; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_311 = 6'h15 == io_read_0_bits_idx ? meta_array_21_4_coh_state : _GEN_310; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_312 = 6'h16 == io_read_0_bits_idx ? meta_array_22_4_coh_state : _GEN_311; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_313 = 6'h17 == io_read_0_bits_idx ? meta_array_23_4_coh_state : _GEN_312; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_314 = 6'h18 == io_read_0_bits_idx ? meta_array_24_4_coh_state : _GEN_313; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_315 = 6'h19 == io_read_0_bits_idx ? meta_array_25_4_coh_state : _GEN_314; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_316 = 6'h1a == io_read_0_bits_idx ? meta_array_26_4_coh_state : _GEN_315; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_317 = 6'h1b == io_read_0_bits_idx ? meta_array_27_4_coh_state : _GEN_316; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_318 = 6'h1c == io_read_0_bits_idx ? meta_array_28_4_coh_state : _GEN_317; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_319 = 6'h1d == io_read_0_bits_idx ? meta_array_29_4_coh_state : _GEN_318; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_320 = 6'h1e == io_read_0_bits_idx ? meta_array_30_4_coh_state : _GEN_319; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_321 = 6'h1f == io_read_0_bits_idx ? meta_array_31_4_coh_state : _GEN_320; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_322 = 6'h20 == io_read_0_bits_idx ? meta_array_32_4_coh_state : _GEN_321; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_323 = 6'h21 == io_read_0_bits_idx ? meta_array_33_4_coh_state : _GEN_322; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_324 = 6'h22 == io_read_0_bits_idx ? meta_array_34_4_coh_state : _GEN_323; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_325 = 6'h23 == io_read_0_bits_idx ? meta_array_35_4_coh_state : _GEN_324; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_326 = 6'h24 == io_read_0_bits_idx ? meta_array_36_4_coh_state : _GEN_325; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_327 = 6'h25 == io_read_0_bits_idx ? meta_array_37_4_coh_state : _GEN_326; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_328 = 6'h26 == io_read_0_bits_idx ? meta_array_38_4_coh_state : _GEN_327; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_329 = 6'h27 == io_read_0_bits_idx ? meta_array_39_4_coh_state : _GEN_328; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_330 = 6'h28 == io_read_0_bits_idx ? meta_array_40_4_coh_state : _GEN_329; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_331 = 6'h29 == io_read_0_bits_idx ? meta_array_41_4_coh_state : _GEN_330; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_332 = 6'h2a == io_read_0_bits_idx ? meta_array_42_4_coh_state : _GEN_331; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_333 = 6'h2b == io_read_0_bits_idx ? meta_array_43_4_coh_state : _GEN_332; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_334 = 6'h2c == io_read_0_bits_idx ? meta_array_44_4_coh_state : _GEN_333; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_335 = 6'h2d == io_read_0_bits_idx ? meta_array_45_4_coh_state : _GEN_334; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_336 = 6'h2e == io_read_0_bits_idx ? meta_array_46_4_coh_state : _GEN_335; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_337 = 6'h2f == io_read_0_bits_idx ? meta_array_47_4_coh_state : _GEN_336; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_338 = 6'h30 == io_read_0_bits_idx ? meta_array_48_4_coh_state : _GEN_337; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_339 = 6'h31 == io_read_0_bits_idx ? meta_array_49_4_coh_state : _GEN_338; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_340 = 6'h32 == io_read_0_bits_idx ? meta_array_50_4_coh_state : _GEN_339; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_341 = 6'h33 == io_read_0_bits_idx ? meta_array_51_4_coh_state : _GEN_340; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_342 = 6'h34 == io_read_0_bits_idx ? meta_array_52_4_coh_state : _GEN_341; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_343 = 6'h35 == io_read_0_bits_idx ? meta_array_53_4_coh_state : _GEN_342; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_344 = 6'h36 == io_read_0_bits_idx ? meta_array_54_4_coh_state : _GEN_343; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_345 = 6'h37 == io_read_0_bits_idx ? meta_array_55_4_coh_state : _GEN_344; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_346 = 6'h38 == io_read_0_bits_idx ? meta_array_56_4_coh_state : _GEN_345; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_347 = 6'h39 == io_read_0_bits_idx ? meta_array_57_4_coh_state : _GEN_346; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_348 = 6'h3a == io_read_0_bits_idx ? meta_array_58_4_coh_state : _GEN_347; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_349 = 6'h3b == io_read_0_bits_idx ? meta_array_59_4_coh_state : _GEN_348; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_350 = 6'h3c == io_read_0_bits_idx ? meta_array_60_4_coh_state : _GEN_349; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_5_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_5_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_5_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_5_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_5_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_5 = s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_0_bits_idx | s1_way_wen_5_0_REG &
    s1_way_waddr_5_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_5_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_5_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_5_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_5_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_362 = 6'h1 == io_read_0_bits_idx ? meta_array_1_5_coh_state : meta_array_0_5_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_363 = 6'h2 == io_read_0_bits_idx ? meta_array_2_5_coh_state : _GEN_362; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_364 = 6'h3 == io_read_0_bits_idx ? meta_array_3_5_coh_state : _GEN_363; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_365 = 6'h4 == io_read_0_bits_idx ? meta_array_4_5_coh_state : _GEN_364; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_366 = 6'h5 == io_read_0_bits_idx ? meta_array_5_5_coh_state : _GEN_365; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_367 = 6'h6 == io_read_0_bits_idx ? meta_array_6_5_coh_state : _GEN_366; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_368 = 6'h7 == io_read_0_bits_idx ? meta_array_7_5_coh_state : _GEN_367; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_369 = 6'h8 == io_read_0_bits_idx ? meta_array_8_5_coh_state : _GEN_368; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_370 = 6'h9 == io_read_0_bits_idx ? meta_array_9_5_coh_state : _GEN_369; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_371 = 6'ha == io_read_0_bits_idx ? meta_array_10_5_coh_state : _GEN_370; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_372 = 6'hb == io_read_0_bits_idx ? meta_array_11_5_coh_state : _GEN_371; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_373 = 6'hc == io_read_0_bits_idx ? meta_array_12_5_coh_state : _GEN_372; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_374 = 6'hd == io_read_0_bits_idx ? meta_array_13_5_coh_state : _GEN_373; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_375 = 6'he == io_read_0_bits_idx ? meta_array_14_5_coh_state : _GEN_374; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_376 = 6'hf == io_read_0_bits_idx ? meta_array_15_5_coh_state : _GEN_375; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_377 = 6'h10 == io_read_0_bits_idx ? meta_array_16_5_coh_state : _GEN_376; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_378 = 6'h11 == io_read_0_bits_idx ? meta_array_17_5_coh_state : _GEN_377; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_379 = 6'h12 == io_read_0_bits_idx ? meta_array_18_5_coh_state : _GEN_378; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_380 = 6'h13 == io_read_0_bits_idx ? meta_array_19_5_coh_state : _GEN_379; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_381 = 6'h14 == io_read_0_bits_idx ? meta_array_20_5_coh_state : _GEN_380; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_382 = 6'h15 == io_read_0_bits_idx ? meta_array_21_5_coh_state : _GEN_381; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_383 = 6'h16 == io_read_0_bits_idx ? meta_array_22_5_coh_state : _GEN_382; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_384 = 6'h17 == io_read_0_bits_idx ? meta_array_23_5_coh_state : _GEN_383; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_385 = 6'h18 == io_read_0_bits_idx ? meta_array_24_5_coh_state : _GEN_384; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_386 = 6'h19 == io_read_0_bits_idx ? meta_array_25_5_coh_state : _GEN_385; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_387 = 6'h1a == io_read_0_bits_idx ? meta_array_26_5_coh_state : _GEN_386; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_388 = 6'h1b == io_read_0_bits_idx ? meta_array_27_5_coh_state : _GEN_387; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_389 = 6'h1c == io_read_0_bits_idx ? meta_array_28_5_coh_state : _GEN_388; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_390 = 6'h1d == io_read_0_bits_idx ? meta_array_29_5_coh_state : _GEN_389; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_391 = 6'h1e == io_read_0_bits_idx ? meta_array_30_5_coh_state : _GEN_390; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_392 = 6'h1f == io_read_0_bits_idx ? meta_array_31_5_coh_state : _GEN_391; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_393 = 6'h20 == io_read_0_bits_idx ? meta_array_32_5_coh_state : _GEN_392; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_394 = 6'h21 == io_read_0_bits_idx ? meta_array_33_5_coh_state : _GEN_393; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_395 = 6'h22 == io_read_0_bits_idx ? meta_array_34_5_coh_state : _GEN_394; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_396 = 6'h23 == io_read_0_bits_idx ? meta_array_35_5_coh_state : _GEN_395; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_397 = 6'h24 == io_read_0_bits_idx ? meta_array_36_5_coh_state : _GEN_396; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_398 = 6'h25 == io_read_0_bits_idx ? meta_array_37_5_coh_state : _GEN_397; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_399 = 6'h26 == io_read_0_bits_idx ? meta_array_38_5_coh_state : _GEN_398; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_400 = 6'h27 == io_read_0_bits_idx ? meta_array_39_5_coh_state : _GEN_399; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_401 = 6'h28 == io_read_0_bits_idx ? meta_array_40_5_coh_state : _GEN_400; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_402 = 6'h29 == io_read_0_bits_idx ? meta_array_41_5_coh_state : _GEN_401; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_403 = 6'h2a == io_read_0_bits_idx ? meta_array_42_5_coh_state : _GEN_402; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_404 = 6'h2b == io_read_0_bits_idx ? meta_array_43_5_coh_state : _GEN_403; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_405 = 6'h2c == io_read_0_bits_idx ? meta_array_44_5_coh_state : _GEN_404; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_406 = 6'h2d == io_read_0_bits_idx ? meta_array_45_5_coh_state : _GEN_405; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_407 = 6'h2e == io_read_0_bits_idx ? meta_array_46_5_coh_state : _GEN_406; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_408 = 6'h2f == io_read_0_bits_idx ? meta_array_47_5_coh_state : _GEN_407; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_409 = 6'h30 == io_read_0_bits_idx ? meta_array_48_5_coh_state : _GEN_408; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_410 = 6'h31 == io_read_0_bits_idx ? meta_array_49_5_coh_state : _GEN_409; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_411 = 6'h32 == io_read_0_bits_idx ? meta_array_50_5_coh_state : _GEN_410; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_412 = 6'h33 == io_read_0_bits_idx ? meta_array_51_5_coh_state : _GEN_411; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_413 = 6'h34 == io_read_0_bits_idx ? meta_array_52_5_coh_state : _GEN_412; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_414 = 6'h35 == io_read_0_bits_idx ? meta_array_53_5_coh_state : _GEN_413; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_415 = 6'h36 == io_read_0_bits_idx ? meta_array_54_5_coh_state : _GEN_414; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_416 = 6'h37 == io_read_0_bits_idx ? meta_array_55_5_coh_state : _GEN_415; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_417 = 6'h38 == io_read_0_bits_idx ? meta_array_56_5_coh_state : _GEN_416; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_418 = 6'h39 == io_read_0_bits_idx ? meta_array_57_5_coh_state : _GEN_417; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_419 = 6'h3a == io_read_0_bits_idx ? meta_array_58_5_coh_state : _GEN_418; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_420 = 6'h3b == io_read_0_bits_idx ? meta_array_59_5_coh_state : _GEN_419; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_421 = 6'h3c == io_read_0_bits_idx ? meta_array_60_5_coh_state : _GEN_420; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_6_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_6_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_6_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_6_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_6_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_6 = s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_0_bits_idx | s1_way_wen_6_0_REG &
    s1_way_waddr_6_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_6_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_6_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_6_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_6_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_433 = 6'h1 == io_read_0_bits_idx ? meta_array_1_6_coh_state : meta_array_0_6_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_434 = 6'h2 == io_read_0_bits_idx ? meta_array_2_6_coh_state : _GEN_433; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_435 = 6'h3 == io_read_0_bits_idx ? meta_array_3_6_coh_state : _GEN_434; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_436 = 6'h4 == io_read_0_bits_idx ? meta_array_4_6_coh_state : _GEN_435; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_437 = 6'h5 == io_read_0_bits_idx ? meta_array_5_6_coh_state : _GEN_436; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_438 = 6'h6 == io_read_0_bits_idx ? meta_array_6_6_coh_state : _GEN_437; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_439 = 6'h7 == io_read_0_bits_idx ? meta_array_7_6_coh_state : _GEN_438; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_440 = 6'h8 == io_read_0_bits_idx ? meta_array_8_6_coh_state : _GEN_439; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_441 = 6'h9 == io_read_0_bits_idx ? meta_array_9_6_coh_state : _GEN_440; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_442 = 6'ha == io_read_0_bits_idx ? meta_array_10_6_coh_state : _GEN_441; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_443 = 6'hb == io_read_0_bits_idx ? meta_array_11_6_coh_state : _GEN_442; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_444 = 6'hc == io_read_0_bits_idx ? meta_array_12_6_coh_state : _GEN_443; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_445 = 6'hd == io_read_0_bits_idx ? meta_array_13_6_coh_state : _GEN_444; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_446 = 6'he == io_read_0_bits_idx ? meta_array_14_6_coh_state : _GEN_445; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_447 = 6'hf == io_read_0_bits_idx ? meta_array_15_6_coh_state : _GEN_446; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_448 = 6'h10 == io_read_0_bits_idx ? meta_array_16_6_coh_state : _GEN_447; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_449 = 6'h11 == io_read_0_bits_idx ? meta_array_17_6_coh_state : _GEN_448; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_450 = 6'h12 == io_read_0_bits_idx ? meta_array_18_6_coh_state : _GEN_449; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_451 = 6'h13 == io_read_0_bits_idx ? meta_array_19_6_coh_state : _GEN_450; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_452 = 6'h14 == io_read_0_bits_idx ? meta_array_20_6_coh_state : _GEN_451; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_453 = 6'h15 == io_read_0_bits_idx ? meta_array_21_6_coh_state : _GEN_452; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_454 = 6'h16 == io_read_0_bits_idx ? meta_array_22_6_coh_state : _GEN_453; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_455 = 6'h17 == io_read_0_bits_idx ? meta_array_23_6_coh_state : _GEN_454; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_456 = 6'h18 == io_read_0_bits_idx ? meta_array_24_6_coh_state : _GEN_455; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_457 = 6'h19 == io_read_0_bits_idx ? meta_array_25_6_coh_state : _GEN_456; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_458 = 6'h1a == io_read_0_bits_idx ? meta_array_26_6_coh_state : _GEN_457; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_459 = 6'h1b == io_read_0_bits_idx ? meta_array_27_6_coh_state : _GEN_458; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_460 = 6'h1c == io_read_0_bits_idx ? meta_array_28_6_coh_state : _GEN_459; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_461 = 6'h1d == io_read_0_bits_idx ? meta_array_29_6_coh_state : _GEN_460; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_462 = 6'h1e == io_read_0_bits_idx ? meta_array_30_6_coh_state : _GEN_461; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_463 = 6'h1f == io_read_0_bits_idx ? meta_array_31_6_coh_state : _GEN_462; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_464 = 6'h20 == io_read_0_bits_idx ? meta_array_32_6_coh_state : _GEN_463; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_465 = 6'h21 == io_read_0_bits_idx ? meta_array_33_6_coh_state : _GEN_464; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_466 = 6'h22 == io_read_0_bits_idx ? meta_array_34_6_coh_state : _GEN_465; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_467 = 6'h23 == io_read_0_bits_idx ? meta_array_35_6_coh_state : _GEN_466; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_468 = 6'h24 == io_read_0_bits_idx ? meta_array_36_6_coh_state : _GEN_467; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_469 = 6'h25 == io_read_0_bits_idx ? meta_array_37_6_coh_state : _GEN_468; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_470 = 6'h26 == io_read_0_bits_idx ? meta_array_38_6_coh_state : _GEN_469; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_471 = 6'h27 == io_read_0_bits_idx ? meta_array_39_6_coh_state : _GEN_470; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_472 = 6'h28 == io_read_0_bits_idx ? meta_array_40_6_coh_state : _GEN_471; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_473 = 6'h29 == io_read_0_bits_idx ? meta_array_41_6_coh_state : _GEN_472; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_474 = 6'h2a == io_read_0_bits_idx ? meta_array_42_6_coh_state : _GEN_473; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_475 = 6'h2b == io_read_0_bits_idx ? meta_array_43_6_coh_state : _GEN_474; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_476 = 6'h2c == io_read_0_bits_idx ? meta_array_44_6_coh_state : _GEN_475; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_477 = 6'h2d == io_read_0_bits_idx ? meta_array_45_6_coh_state : _GEN_476; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_478 = 6'h2e == io_read_0_bits_idx ? meta_array_46_6_coh_state : _GEN_477; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_479 = 6'h2f == io_read_0_bits_idx ? meta_array_47_6_coh_state : _GEN_478; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_480 = 6'h30 == io_read_0_bits_idx ? meta_array_48_6_coh_state : _GEN_479; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_481 = 6'h31 == io_read_0_bits_idx ? meta_array_49_6_coh_state : _GEN_480; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_482 = 6'h32 == io_read_0_bits_idx ? meta_array_50_6_coh_state : _GEN_481; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_483 = 6'h33 == io_read_0_bits_idx ? meta_array_51_6_coh_state : _GEN_482; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_484 = 6'h34 == io_read_0_bits_idx ? meta_array_52_6_coh_state : _GEN_483; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_485 = 6'h35 == io_read_0_bits_idx ? meta_array_53_6_coh_state : _GEN_484; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_486 = 6'h36 == io_read_0_bits_idx ? meta_array_54_6_coh_state : _GEN_485; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_487 = 6'h37 == io_read_0_bits_idx ? meta_array_55_6_coh_state : _GEN_486; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_488 = 6'h38 == io_read_0_bits_idx ? meta_array_56_6_coh_state : _GEN_487; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_489 = 6'h39 == io_read_0_bits_idx ? meta_array_57_6_coh_state : _GEN_488; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_490 = 6'h3a == io_read_0_bits_idx ? meta_array_58_6_coh_state : _GEN_489; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_491 = 6'h3b == io_read_0_bits_idx ? meta_array_59_6_coh_state : _GEN_490; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_492 = 6'h3c == io_read_0_bits_idx ? meta_array_60_6_coh_state : _GEN_491; // @[Reg.scala 17:{22,22}]
  reg [5:0] s1_way_waddr_7_0_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_7_0_REG; // @[AsynchronousMetaArray.scala 96:44]
  reg [1:0] s1_way_wdata_7_0_rcoh_state; // @[Reg.scala 16:16]
  reg [5:0] s1_way_waddr_7_1_r; // @[Reg.scala 16:16]
  reg  s1_way_wen_7_1_REG; // @[AsynchronousMetaArray.scala 96:44]
  wire  read_way_bypass_7 = s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_0_bits_idx | s1_way_wen_7_0_REG &
    s1_way_waddr_7_0_r == io_read_0_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg [1:0] s1_way_wdata_7_1_rcoh_state; // @[Reg.scala 16:16]
  reg  io_resp_0_7_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_7_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_0_7_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_504 = 6'h1 == io_read_0_bits_idx ? meta_array_1_7_coh_state : meta_array_0_7_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_505 = 6'h2 == io_read_0_bits_idx ? meta_array_2_7_coh_state : _GEN_504; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_506 = 6'h3 == io_read_0_bits_idx ? meta_array_3_7_coh_state : _GEN_505; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_507 = 6'h4 == io_read_0_bits_idx ? meta_array_4_7_coh_state : _GEN_506; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_508 = 6'h5 == io_read_0_bits_idx ? meta_array_5_7_coh_state : _GEN_507; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_509 = 6'h6 == io_read_0_bits_idx ? meta_array_6_7_coh_state : _GEN_508; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_510 = 6'h7 == io_read_0_bits_idx ? meta_array_7_7_coh_state : _GEN_509; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_511 = 6'h8 == io_read_0_bits_idx ? meta_array_8_7_coh_state : _GEN_510; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_512 = 6'h9 == io_read_0_bits_idx ? meta_array_9_7_coh_state : _GEN_511; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_513 = 6'ha == io_read_0_bits_idx ? meta_array_10_7_coh_state : _GEN_512; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_514 = 6'hb == io_read_0_bits_idx ? meta_array_11_7_coh_state : _GEN_513; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_515 = 6'hc == io_read_0_bits_idx ? meta_array_12_7_coh_state : _GEN_514; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_516 = 6'hd == io_read_0_bits_idx ? meta_array_13_7_coh_state : _GEN_515; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_517 = 6'he == io_read_0_bits_idx ? meta_array_14_7_coh_state : _GEN_516; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_518 = 6'hf == io_read_0_bits_idx ? meta_array_15_7_coh_state : _GEN_517; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_519 = 6'h10 == io_read_0_bits_idx ? meta_array_16_7_coh_state : _GEN_518; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_520 = 6'h11 == io_read_0_bits_idx ? meta_array_17_7_coh_state : _GEN_519; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_521 = 6'h12 == io_read_0_bits_idx ? meta_array_18_7_coh_state : _GEN_520; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_522 = 6'h13 == io_read_0_bits_idx ? meta_array_19_7_coh_state : _GEN_521; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_523 = 6'h14 == io_read_0_bits_idx ? meta_array_20_7_coh_state : _GEN_522; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_524 = 6'h15 == io_read_0_bits_idx ? meta_array_21_7_coh_state : _GEN_523; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_525 = 6'h16 == io_read_0_bits_idx ? meta_array_22_7_coh_state : _GEN_524; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_526 = 6'h17 == io_read_0_bits_idx ? meta_array_23_7_coh_state : _GEN_525; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_527 = 6'h18 == io_read_0_bits_idx ? meta_array_24_7_coh_state : _GEN_526; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_528 = 6'h19 == io_read_0_bits_idx ? meta_array_25_7_coh_state : _GEN_527; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_529 = 6'h1a == io_read_0_bits_idx ? meta_array_26_7_coh_state : _GEN_528; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_530 = 6'h1b == io_read_0_bits_idx ? meta_array_27_7_coh_state : _GEN_529; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_531 = 6'h1c == io_read_0_bits_idx ? meta_array_28_7_coh_state : _GEN_530; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_532 = 6'h1d == io_read_0_bits_idx ? meta_array_29_7_coh_state : _GEN_531; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_533 = 6'h1e == io_read_0_bits_idx ? meta_array_30_7_coh_state : _GEN_532; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_534 = 6'h1f == io_read_0_bits_idx ? meta_array_31_7_coh_state : _GEN_533; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_535 = 6'h20 == io_read_0_bits_idx ? meta_array_32_7_coh_state : _GEN_534; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_536 = 6'h21 == io_read_0_bits_idx ? meta_array_33_7_coh_state : _GEN_535; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_537 = 6'h22 == io_read_0_bits_idx ? meta_array_34_7_coh_state : _GEN_536; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_538 = 6'h23 == io_read_0_bits_idx ? meta_array_35_7_coh_state : _GEN_537; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_539 = 6'h24 == io_read_0_bits_idx ? meta_array_36_7_coh_state : _GEN_538; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_540 = 6'h25 == io_read_0_bits_idx ? meta_array_37_7_coh_state : _GEN_539; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_541 = 6'h26 == io_read_0_bits_idx ? meta_array_38_7_coh_state : _GEN_540; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_542 = 6'h27 == io_read_0_bits_idx ? meta_array_39_7_coh_state : _GEN_541; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_543 = 6'h28 == io_read_0_bits_idx ? meta_array_40_7_coh_state : _GEN_542; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_544 = 6'h29 == io_read_0_bits_idx ? meta_array_41_7_coh_state : _GEN_543; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_545 = 6'h2a == io_read_0_bits_idx ? meta_array_42_7_coh_state : _GEN_544; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_546 = 6'h2b == io_read_0_bits_idx ? meta_array_43_7_coh_state : _GEN_545; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_547 = 6'h2c == io_read_0_bits_idx ? meta_array_44_7_coh_state : _GEN_546; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_548 = 6'h2d == io_read_0_bits_idx ? meta_array_45_7_coh_state : _GEN_547; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_549 = 6'h2e == io_read_0_bits_idx ? meta_array_46_7_coh_state : _GEN_548; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_550 = 6'h2f == io_read_0_bits_idx ? meta_array_47_7_coh_state : _GEN_549; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_551 = 6'h30 == io_read_0_bits_idx ? meta_array_48_7_coh_state : _GEN_550; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_552 = 6'h31 == io_read_0_bits_idx ? meta_array_49_7_coh_state : _GEN_551; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_553 = 6'h32 == io_read_0_bits_idx ? meta_array_50_7_coh_state : _GEN_552; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_554 = 6'h33 == io_read_0_bits_idx ? meta_array_51_7_coh_state : _GEN_553; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_555 = 6'h34 == io_read_0_bits_idx ? meta_array_52_7_coh_state : _GEN_554; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_556 = 6'h35 == io_read_0_bits_idx ? meta_array_53_7_coh_state : _GEN_555; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_557 = 6'h36 == io_read_0_bits_idx ? meta_array_54_7_coh_state : _GEN_556; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_558 = 6'h37 == io_read_0_bits_idx ? meta_array_55_7_coh_state : _GEN_557; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_559 = 6'h38 == io_read_0_bits_idx ? meta_array_56_7_coh_state : _GEN_558; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_560 = 6'h39 == io_read_0_bits_idx ? meta_array_57_7_coh_state : _GEN_559; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_561 = 6'h3a == io_read_0_bits_idx ? meta_array_58_7_coh_state : _GEN_560; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_562 = 6'h3b == io_read_0_bits_idx ? meta_array_59_7_coh_state : _GEN_561; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_563 = 6'h3c == io_read_0_bits_idx ? meta_array_60_7_coh_state : _GEN_562; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_8 = s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_1_bits_idx | s1_way_wen_0_0_REG &
    s1_way_waddr_0_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_0_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_0_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_0_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_575 = 6'h1 == io_read_1_bits_idx ? meta_array_1_0_coh_state : meta_array_0_0_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_576 = 6'h2 == io_read_1_bits_idx ? meta_array_2_0_coh_state : _GEN_575; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_577 = 6'h3 == io_read_1_bits_idx ? meta_array_3_0_coh_state : _GEN_576; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_578 = 6'h4 == io_read_1_bits_idx ? meta_array_4_0_coh_state : _GEN_577; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_579 = 6'h5 == io_read_1_bits_idx ? meta_array_5_0_coh_state : _GEN_578; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_580 = 6'h6 == io_read_1_bits_idx ? meta_array_6_0_coh_state : _GEN_579; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_581 = 6'h7 == io_read_1_bits_idx ? meta_array_7_0_coh_state : _GEN_580; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_582 = 6'h8 == io_read_1_bits_idx ? meta_array_8_0_coh_state : _GEN_581; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_583 = 6'h9 == io_read_1_bits_idx ? meta_array_9_0_coh_state : _GEN_582; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_584 = 6'ha == io_read_1_bits_idx ? meta_array_10_0_coh_state : _GEN_583; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_585 = 6'hb == io_read_1_bits_idx ? meta_array_11_0_coh_state : _GEN_584; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_586 = 6'hc == io_read_1_bits_idx ? meta_array_12_0_coh_state : _GEN_585; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_587 = 6'hd == io_read_1_bits_idx ? meta_array_13_0_coh_state : _GEN_586; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_588 = 6'he == io_read_1_bits_idx ? meta_array_14_0_coh_state : _GEN_587; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_589 = 6'hf == io_read_1_bits_idx ? meta_array_15_0_coh_state : _GEN_588; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_590 = 6'h10 == io_read_1_bits_idx ? meta_array_16_0_coh_state : _GEN_589; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_591 = 6'h11 == io_read_1_bits_idx ? meta_array_17_0_coh_state : _GEN_590; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_592 = 6'h12 == io_read_1_bits_idx ? meta_array_18_0_coh_state : _GEN_591; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_593 = 6'h13 == io_read_1_bits_idx ? meta_array_19_0_coh_state : _GEN_592; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_594 = 6'h14 == io_read_1_bits_idx ? meta_array_20_0_coh_state : _GEN_593; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_595 = 6'h15 == io_read_1_bits_idx ? meta_array_21_0_coh_state : _GEN_594; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_596 = 6'h16 == io_read_1_bits_idx ? meta_array_22_0_coh_state : _GEN_595; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_597 = 6'h17 == io_read_1_bits_idx ? meta_array_23_0_coh_state : _GEN_596; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_598 = 6'h18 == io_read_1_bits_idx ? meta_array_24_0_coh_state : _GEN_597; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_599 = 6'h19 == io_read_1_bits_idx ? meta_array_25_0_coh_state : _GEN_598; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_600 = 6'h1a == io_read_1_bits_idx ? meta_array_26_0_coh_state : _GEN_599; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_601 = 6'h1b == io_read_1_bits_idx ? meta_array_27_0_coh_state : _GEN_600; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_602 = 6'h1c == io_read_1_bits_idx ? meta_array_28_0_coh_state : _GEN_601; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_603 = 6'h1d == io_read_1_bits_idx ? meta_array_29_0_coh_state : _GEN_602; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_604 = 6'h1e == io_read_1_bits_idx ? meta_array_30_0_coh_state : _GEN_603; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_605 = 6'h1f == io_read_1_bits_idx ? meta_array_31_0_coh_state : _GEN_604; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_606 = 6'h20 == io_read_1_bits_idx ? meta_array_32_0_coh_state : _GEN_605; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_607 = 6'h21 == io_read_1_bits_idx ? meta_array_33_0_coh_state : _GEN_606; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_608 = 6'h22 == io_read_1_bits_idx ? meta_array_34_0_coh_state : _GEN_607; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_609 = 6'h23 == io_read_1_bits_idx ? meta_array_35_0_coh_state : _GEN_608; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_610 = 6'h24 == io_read_1_bits_idx ? meta_array_36_0_coh_state : _GEN_609; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_611 = 6'h25 == io_read_1_bits_idx ? meta_array_37_0_coh_state : _GEN_610; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_612 = 6'h26 == io_read_1_bits_idx ? meta_array_38_0_coh_state : _GEN_611; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_613 = 6'h27 == io_read_1_bits_idx ? meta_array_39_0_coh_state : _GEN_612; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_614 = 6'h28 == io_read_1_bits_idx ? meta_array_40_0_coh_state : _GEN_613; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_615 = 6'h29 == io_read_1_bits_idx ? meta_array_41_0_coh_state : _GEN_614; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_616 = 6'h2a == io_read_1_bits_idx ? meta_array_42_0_coh_state : _GEN_615; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_617 = 6'h2b == io_read_1_bits_idx ? meta_array_43_0_coh_state : _GEN_616; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_618 = 6'h2c == io_read_1_bits_idx ? meta_array_44_0_coh_state : _GEN_617; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_619 = 6'h2d == io_read_1_bits_idx ? meta_array_45_0_coh_state : _GEN_618; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_620 = 6'h2e == io_read_1_bits_idx ? meta_array_46_0_coh_state : _GEN_619; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_621 = 6'h2f == io_read_1_bits_idx ? meta_array_47_0_coh_state : _GEN_620; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_622 = 6'h30 == io_read_1_bits_idx ? meta_array_48_0_coh_state : _GEN_621; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_623 = 6'h31 == io_read_1_bits_idx ? meta_array_49_0_coh_state : _GEN_622; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_624 = 6'h32 == io_read_1_bits_idx ? meta_array_50_0_coh_state : _GEN_623; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_625 = 6'h33 == io_read_1_bits_idx ? meta_array_51_0_coh_state : _GEN_624; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_626 = 6'h34 == io_read_1_bits_idx ? meta_array_52_0_coh_state : _GEN_625; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_627 = 6'h35 == io_read_1_bits_idx ? meta_array_53_0_coh_state : _GEN_626; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_628 = 6'h36 == io_read_1_bits_idx ? meta_array_54_0_coh_state : _GEN_627; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_629 = 6'h37 == io_read_1_bits_idx ? meta_array_55_0_coh_state : _GEN_628; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_630 = 6'h38 == io_read_1_bits_idx ? meta_array_56_0_coh_state : _GEN_629; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_631 = 6'h39 == io_read_1_bits_idx ? meta_array_57_0_coh_state : _GEN_630; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_632 = 6'h3a == io_read_1_bits_idx ? meta_array_58_0_coh_state : _GEN_631; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_633 = 6'h3b == io_read_1_bits_idx ? meta_array_59_0_coh_state : _GEN_632; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_634 = 6'h3c == io_read_1_bits_idx ? meta_array_60_0_coh_state : _GEN_633; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_9 = s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_1_bits_idx | s1_way_wen_1_0_REG &
    s1_way_waddr_1_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_1_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_1_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_1_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_646 = 6'h1 == io_read_1_bits_idx ? meta_array_1_1_coh_state : meta_array_0_1_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_647 = 6'h2 == io_read_1_bits_idx ? meta_array_2_1_coh_state : _GEN_646; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_648 = 6'h3 == io_read_1_bits_idx ? meta_array_3_1_coh_state : _GEN_647; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_649 = 6'h4 == io_read_1_bits_idx ? meta_array_4_1_coh_state : _GEN_648; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_650 = 6'h5 == io_read_1_bits_idx ? meta_array_5_1_coh_state : _GEN_649; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_651 = 6'h6 == io_read_1_bits_idx ? meta_array_6_1_coh_state : _GEN_650; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_652 = 6'h7 == io_read_1_bits_idx ? meta_array_7_1_coh_state : _GEN_651; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_653 = 6'h8 == io_read_1_bits_idx ? meta_array_8_1_coh_state : _GEN_652; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_654 = 6'h9 == io_read_1_bits_idx ? meta_array_9_1_coh_state : _GEN_653; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_655 = 6'ha == io_read_1_bits_idx ? meta_array_10_1_coh_state : _GEN_654; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_656 = 6'hb == io_read_1_bits_idx ? meta_array_11_1_coh_state : _GEN_655; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_657 = 6'hc == io_read_1_bits_idx ? meta_array_12_1_coh_state : _GEN_656; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_658 = 6'hd == io_read_1_bits_idx ? meta_array_13_1_coh_state : _GEN_657; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_659 = 6'he == io_read_1_bits_idx ? meta_array_14_1_coh_state : _GEN_658; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_660 = 6'hf == io_read_1_bits_idx ? meta_array_15_1_coh_state : _GEN_659; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_661 = 6'h10 == io_read_1_bits_idx ? meta_array_16_1_coh_state : _GEN_660; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_662 = 6'h11 == io_read_1_bits_idx ? meta_array_17_1_coh_state : _GEN_661; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_663 = 6'h12 == io_read_1_bits_idx ? meta_array_18_1_coh_state : _GEN_662; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_664 = 6'h13 == io_read_1_bits_idx ? meta_array_19_1_coh_state : _GEN_663; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_665 = 6'h14 == io_read_1_bits_idx ? meta_array_20_1_coh_state : _GEN_664; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_666 = 6'h15 == io_read_1_bits_idx ? meta_array_21_1_coh_state : _GEN_665; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_667 = 6'h16 == io_read_1_bits_idx ? meta_array_22_1_coh_state : _GEN_666; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_668 = 6'h17 == io_read_1_bits_idx ? meta_array_23_1_coh_state : _GEN_667; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_669 = 6'h18 == io_read_1_bits_idx ? meta_array_24_1_coh_state : _GEN_668; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_670 = 6'h19 == io_read_1_bits_idx ? meta_array_25_1_coh_state : _GEN_669; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_671 = 6'h1a == io_read_1_bits_idx ? meta_array_26_1_coh_state : _GEN_670; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_672 = 6'h1b == io_read_1_bits_idx ? meta_array_27_1_coh_state : _GEN_671; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_673 = 6'h1c == io_read_1_bits_idx ? meta_array_28_1_coh_state : _GEN_672; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_674 = 6'h1d == io_read_1_bits_idx ? meta_array_29_1_coh_state : _GEN_673; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_675 = 6'h1e == io_read_1_bits_idx ? meta_array_30_1_coh_state : _GEN_674; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_676 = 6'h1f == io_read_1_bits_idx ? meta_array_31_1_coh_state : _GEN_675; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_677 = 6'h20 == io_read_1_bits_idx ? meta_array_32_1_coh_state : _GEN_676; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_678 = 6'h21 == io_read_1_bits_idx ? meta_array_33_1_coh_state : _GEN_677; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_679 = 6'h22 == io_read_1_bits_idx ? meta_array_34_1_coh_state : _GEN_678; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_680 = 6'h23 == io_read_1_bits_idx ? meta_array_35_1_coh_state : _GEN_679; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_681 = 6'h24 == io_read_1_bits_idx ? meta_array_36_1_coh_state : _GEN_680; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_682 = 6'h25 == io_read_1_bits_idx ? meta_array_37_1_coh_state : _GEN_681; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_683 = 6'h26 == io_read_1_bits_idx ? meta_array_38_1_coh_state : _GEN_682; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_684 = 6'h27 == io_read_1_bits_idx ? meta_array_39_1_coh_state : _GEN_683; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_685 = 6'h28 == io_read_1_bits_idx ? meta_array_40_1_coh_state : _GEN_684; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_686 = 6'h29 == io_read_1_bits_idx ? meta_array_41_1_coh_state : _GEN_685; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_687 = 6'h2a == io_read_1_bits_idx ? meta_array_42_1_coh_state : _GEN_686; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_688 = 6'h2b == io_read_1_bits_idx ? meta_array_43_1_coh_state : _GEN_687; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_689 = 6'h2c == io_read_1_bits_idx ? meta_array_44_1_coh_state : _GEN_688; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_690 = 6'h2d == io_read_1_bits_idx ? meta_array_45_1_coh_state : _GEN_689; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_691 = 6'h2e == io_read_1_bits_idx ? meta_array_46_1_coh_state : _GEN_690; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_692 = 6'h2f == io_read_1_bits_idx ? meta_array_47_1_coh_state : _GEN_691; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_693 = 6'h30 == io_read_1_bits_idx ? meta_array_48_1_coh_state : _GEN_692; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_694 = 6'h31 == io_read_1_bits_idx ? meta_array_49_1_coh_state : _GEN_693; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_695 = 6'h32 == io_read_1_bits_idx ? meta_array_50_1_coh_state : _GEN_694; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_696 = 6'h33 == io_read_1_bits_idx ? meta_array_51_1_coh_state : _GEN_695; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_697 = 6'h34 == io_read_1_bits_idx ? meta_array_52_1_coh_state : _GEN_696; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_698 = 6'h35 == io_read_1_bits_idx ? meta_array_53_1_coh_state : _GEN_697; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_699 = 6'h36 == io_read_1_bits_idx ? meta_array_54_1_coh_state : _GEN_698; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_700 = 6'h37 == io_read_1_bits_idx ? meta_array_55_1_coh_state : _GEN_699; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_701 = 6'h38 == io_read_1_bits_idx ? meta_array_56_1_coh_state : _GEN_700; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_702 = 6'h39 == io_read_1_bits_idx ? meta_array_57_1_coh_state : _GEN_701; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_703 = 6'h3a == io_read_1_bits_idx ? meta_array_58_1_coh_state : _GEN_702; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_704 = 6'h3b == io_read_1_bits_idx ? meta_array_59_1_coh_state : _GEN_703; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_705 = 6'h3c == io_read_1_bits_idx ? meta_array_60_1_coh_state : _GEN_704; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_10 = s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_1_bits_idx | s1_way_wen_2_0_REG &
    s1_way_waddr_2_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_2_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_2_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_2_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_717 = 6'h1 == io_read_1_bits_idx ? meta_array_1_2_coh_state : meta_array_0_2_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_718 = 6'h2 == io_read_1_bits_idx ? meta_array_2_2_coh_state : _GEN_717; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_719 = 6'h3 == io_read_1_bits_idx ? meta_array_3_2_coh_state : _GEN_718; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_720 = 6'h4 == io_read_1_bits_idx ? meta_array_4_2_coh_state : _GEN_719; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_721 = 6'h5 == io_read_1_bits_idx ? meta_array_5_2_coh_state : _GEN_720; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_722 = 6'h6 == io_read_1_bits_idx ? meta_array_6_2_coh_state : _GEN_721; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_723 = 6'h7 == io_read_1_bits_idx ? meta_array_7_2_coh_state : _GEN_722; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_724 = 6'h8 == io_read_1_bits_idx ? meta_array_8_2_coh_state : _GEN_723; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_725 = 6'h9 == io_read_1_bits_idx ? meta_array_9_2_coh_state : _GEN_724; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_726 = 6'ha == io_read_1_bits_idx ? meta_array_10_2_coh_state : _GEN_725; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_727 = 6'hb == io_read_1_bits_idx ? meta_array_11_2_coh_state : _GEN_726; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_728 = 6'hc == io_read_1_bits_idx ? meta_array_12_2_coh_state : _GEN_727; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_729 = 6'hd == io_read_1_bits_idx ? meta_array_13_2_coh_state : _GEN_728; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_730 = 6'he == io_read_1_bits_idx ? meta_array_14_2_coh_state : _GEN_729; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_731 = 6'hf == io_read_1_bits_idx ? meta_array_15_2_coh_state : _GEN_730; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_732 = 6'h10 == io_read_1_bits_idx ? meta_array_16_2_coh_state : _GEN_731; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_733 = 6'h11 == io_read_1_bits_idx ? meta_array_17_2_coh_state : _GEN_732; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_734 = 6'h12 == io_read_1_bits_idx ? meta_array_18_2_coh_state : _GEN_733; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_735 = 6'h13 == io_read_1_bits_idx ? meta_array_19_2_coh_state : _GEN_734; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_736 = 6'h14 == io_read_1_bits_idx ? meta_array_20_2_coh_state : _GEN_735; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_737 = 6'h15 == io_read_1_bits_idx ? meta_array_21_2_coh_state : _GEN_736; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_738 = 6'h16 == io_read_1_bits_idx ? meta_array_22_2_coh_state : _GEN_737; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_739 = 6'h17 == io_read_1_bits_idx ? meta_array_23_2_coh_state : _GEN_738; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_740 = 6'h18 == io_read_1_bits_idx ? meta_array_24_2_coh_state : _GEN_739; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_741 = 6'h19 == io_read_1_bits_idx ? meta_array_25_2_coh_state : _GEN_740; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_742 = 6'h1a == io_read_1_bits_idx ? meta_array_26_2_coh_state : _GEN_741; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_743 = 6'h1b == io_read_1_bits_idx ? meta_array_27_2_coh_state : _GEN_742; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_744 = 6'h1c == io_read_1_bits_idx ? meta_array_28_2_coh_state : _GEN_743; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_745 = 6'h1d == io_read_1_bits_idx ? meta_array_29_2_coh_state : _GEN_744; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_746 = 6'h1e == io_read_1_bits_idx ? meta_array_30_2_coh_state : _GEN_745; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_747 = 6'h1f == io_read_1_bits_idx ? meta_array_31_2_coh_state : _GEN_746; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_748 = 6'h20 == io_read_1_bits_idx ? meta_array_32_2_coh_state : _GEN_747; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_749 = 6'h21 == io_read_1_bits_idx ? meta_array_33_2_coh_state : _GEN_748; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_750 = 6'h22 == io_read_1_bits_idx ? meta_array_34_2_coh_state : _GEN_749; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_751 = 6'h23 == io_read_1_bits_idx ? meta_array_35_2_coh_state : _GEN_750; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_752 = 6'h24 == io_read_1_bits_idx ? meta_array_36_2_coh_state : _GEN_751; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_753 = 6'h25 == io_read_1_bits_idx ? meta_array_37_2_coh_state : _GEN_752; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_754 = 6'h26 == io_read_1_bits_idx ? meta_array_38_2_coh_state : _GEN_753; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_755 = 6'h27 == io_read_1_bits_idx ? meta_array_39_2_coh_state : _GEN_754; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_756 = 6'h28 == io_read_1_bits_idx ? meta_array_40_2_coh_state : _GEN_755; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_757 = 6'h29 == io_read_1_bits_idx ? meta_array_41_2_coh_state : _GEN_756; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_758 = 6'h2a == io_read_1_bits_idx ? meta_array_42_2_coh_state : _GEN_757; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_759 = 6'h2b == io_read_1_bits_idx ? meta_array_43_2_coh_state : _GEN_758; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_760 = 6'h2c == io_read_1_bits_idx ? meta_array_44_2_coh_state : _GEN_759; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_761 = 6'h2d == io_read_1_bits_idx ? meta_array_45_2_coh_state : _GEN_760; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_762 = 6'h2e == io_read_1_bits_idx ? meta_array_46_2_coh_state : _GEN_761; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_763 = 6'h2f == io_read_1_bits_idx ? meta_array_47_2_coh_state : _GEN_762; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_764 = 6'h30 == io_read_1_bits_idx ? meta_array_48_2_coh_state : _GEN_763; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_765 = 6'h31 == io_read_1_bits_idx ? meta_array_49_2_coh_state : _GEN_764; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_766 = 6'h32 == io_read_1_bits_idx ? meta_array_50_2_coh_state : _GEN_765; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_767 = 6'h33 == io_read_1_bits_idx ? meta_array_51_2_coh_state : _GEN_766; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_768 = 6'h34 == io_read_1_bits_idx ? meta_array_52_2_coh_state : _GEN_767; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_769 = 6'h35 == io_read_1_bits_idx ? meta_array_53_2_coh_state : _GEN_768; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_770 = 6'h36 == io_read_1_bits_idx ? meta_array_54_2_coh_state : _GEN_769; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_771 = 6'h37 == io_read_1_bits_idx ? meta_array_55_2_coh_state : _GEN_770; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_772 = 6'h38 == io_read_1_bits_idx ? meta_array_56_2_coh_state : _GEN_771; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_773 = 6'h39 == io_read_1_bits_idx ? meta_array_57_2_coh_state : _GEN_772; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_774 = 6'h3a == io_read_1_bits_idx ? meta_array_58_2_coh_state : _GEN_773; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_775 = 6'h3b == io_read_1_bits_idx ? meta_array_59_2_coh_state : _GEN_774; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_776 = 6'h3c == io_read_1_bits_idx ? meta_array_60_2_coh_state : _GEN_775; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_11 = s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_1_bits_idx | s1_way_wen_3_0_REG &
    s1_way_waddr_3_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_3_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_3_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_3_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_788 = 6'h1 == io_read_1_bits_idx ? meta_array_1_3_coh_state : meta_array_0_3_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_789 = 6'h2 == io_read_1_bits_idx ? meta_array_2_3_coh_state : _GEN_788; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_790 = 6'h3 == io_read_1_bits_idx ? meta_array_3_3_coh_state : _GEN_789; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_791 = 6'h4 == io_read_1_bits_idx ? meta_array_4_3_coh_state : _GEN_790; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_792 = 6'h5 == io_read_1_bits_idx ? meta_array_5_3_coh_state : _GEN_791; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_793 = 6'h6 == io_read_1_bits_idx ? meta_array_6_3_coh_state : _GEN_792; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_794 = 6'h7 == io_read_1_bits_idx ? meta_array_7_3_coh_state : _GEN_793; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_795 = 6'h8 == io_read_1_bits_idx ? meta_array_8_3_coh_state : _GEN_794; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_796 = 6'h9 == io_read_1_bits_idx ? meta_array_9_3_coh_state : _GEN_795; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_797 = 6'ha == io_read_1_bits_idx ? meta_array_10_3_coh_state : _GEN_796; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_798 = 6'hb == io_read_1_bits_idx ? meta_array_11_3_coh_state : _GEN_797; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_799 = 6'hc == io_read_1_bits_idx ? meta_array_12_3_coh_state : _GEN_798; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_800 = 6'hd == io_read_1_bits_idx ? meta_array_13_3_coh_state : _GEN_799; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_801 = 6'he == io_read_1_bits_idx ? meta_array_14_3_coh_state : _GEN_800; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_802 = 6'hf == io_read_1_bits_idx ? meta_array_15_3_coh_state : _GEN_801; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_803 = 6'h10 == io_read_1_bits_idx ? meta_array_16_3_coh_state : _GEN_802; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_804 = 6'h11 == io_read_1_bits_idx ? meta_array_17_3_coh_state : _GEN_803; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_805 = 6'h12 == io_read_1_bits_idx ? meta_array_18_3_coh_state : _GEN_804; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_806 = 6'h13 == io_read_1_bits_idx ? meta_array_19_3_coh_state : _GEN_805; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_807 = 6'h14 == io_read_1_bits_idx ? meta_array_20_3_coh_state : _GEN_806; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_808 = 6'h15 == io_read_1_bits_idx ? meta_array_21_3_coh_state : _GEN_807; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_809 = 6'h16 == io_read_1_bits_idx ? meta_array_22_3_coh_state : _GEN_808; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_810 = 6'h17 == io_read_1_bits_idx ? meta_array_23_3_coh_state : _GEN_809; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_811 = 6'h18 == io_read_1_bits_idx ? meta_array_24_3_coh_state : _GEN_810; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_812 = 6'h19 == io_read_1_bits_idx ? meta_array_25_3_coh_state : _GEN_811; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_813 = 6'h1a == io_read_1_bits_idx ? meta_array_26_3_coh_state : _GEN_812; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_814 = 6'h1b == io_read_1_bits_idx ? meta_array_27_3_coh_state : _GEN_813; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_815 = 6'h1c == io_read_1_bits_idx ? meta_array_28_3_coh_state : _GEN_814; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_816 = 6'h1d == io_read_1_bits_idx ? meta_array_29_3_coh_state : _GEN_815; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_817 = 6'h1e == io_read_1_bits_idx ? meta_array_30_3_coh_state : _GEN_816; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_818 = 6'h1f == io_read_1_bits_idx ? meta_array_31_3_coh_state : _GEN_817; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_819 = 6'h20 == io_read_1_bits_idx ? meta_array_32_3_coh_state : _GEN_818; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_820 = 6'h21 == io_read_1_bits_idx ? meta_array_33_3_coh_state : _GEN_819; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_821 = 6'h22 == io_read_1_bits_idx ? meta_array_34_3_coh_state : _GEN_820; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_822 = 6'h23 == io_read_1_bits_idx ? meta_array_35_3_coh_state : _GEN_821; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_823 = 6'h24 == io_read_1_bits_idx ? meta_array_36_3_coh_state : _GEN_822; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_824 = 6'h25 == io_read_1_bits_idx ? meta_array_37_3_coh_state : _GEN_823; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_825 = 6'h26 == io_read_1_bits_idx ? meta_array_38_3_coh_state : _GEN_824; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_826 = 6'h27 == io_read_1_bits_idx ? meta_array_39_3_coh_state : _GEN_825; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_827 = 6'h28 == io_read_1_bits_idx ? meta_array_40_3_coh_state : _GEN_826; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_828 = 6'h29 == io_read_1_bits_idx ? meta_array_41_3_coh_state : _GEN_827; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_829 = 6'h2a == io_read_1_bits_idx ? meta_array_42_3_coh_state : _GEN_828; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_830 = 6'h2b == io_read_1_bits_idx ? meta_array_43_3_coh_state : _GEN_829; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_831 = 6'h2c == io_read_1_bits_idx ? meta_array_44_3_coh_state : _GEN_830; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_832 = 6'h2d == io_read_1_bits_idx ? meta_array_45_3_coh_state : _GEN_831; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_833 = 6'h2e == io_read_1_bits_idx ? meta_array_46_3_coh_state : _GEN_832; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_834 = 6'h2f == io_read_1_bits_idx ? meta_array_47_3_coh_state : _GEN_833; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_835 = 6'h30 == io_read_1_bits_idx ? meta_array_48_3_coh_state : _GEN_834; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_836 = 6'h31 == io_read_1_bits_idx ? meta_array_49_3_coh_state : _GEN_835; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_837 = 6'h32 == io_read_1_bits_idx ? meta_array_50_3_coh_state : _GEN_836; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_838 = 6'h33 == io_read_1_bits_idx ? meta_array_51_3_coh_state : _GEN_837; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_839 = 6'h34 == io_read_1_bits_idx ? meta_array_52_3_coh_state : _GEN_838; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_840 = 6'h35 == io_read_1_bits_idx ? meta_array_53_3_coh_state : _GEN_839; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_841 = 6'h36 == io_read_1_bits_idx ? meta_array_54_3_coh_state : _GEN_840; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_842 = 6'h37 == io_read_1_bits_idx ? meta_array_55_3_coh_state : _GEN_841; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_843 = 6'h38 == io_read_1_bits_idx ? meta_array_56_3_coh_state : _GEN_842; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_844 = 6'h39 == io_read_1_bits_idx ? meta_array_57_3_coh_state : _GEN_843; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_845 = 6'h3a == io_read_1_bits_idx ? meta_array_58_3_coh_state : _GEN_844; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_846 = 6'h3b == io_read_1_bits_idx ? meta_array_59_3_coh_state : _GEN_845; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_847 = 6'h3c == io_read_1_bits_idx ? meta_array_60_3_coh_state : _GEN_846; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_12 = s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_1_bits_idx | s1_way_wen_4_0_REG &
    s1_way_waddr_4_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_4_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_4_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_4_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_859 = 6'h1 == io_read_1_bits_idx ? meta_array_1_4_coh_state : meta_array_0_4_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_860 = 6'h2 == io_read_1_bits_idx ? meta_array_2_4_coh_state : _GEN_859; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_861 = 6'h3 == io_read_1_bits_idx ? meta_array_3_4_coh_state : _GEN_860; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_862 = 6'h4 == io_read_1_bits_idx ? meta_array_4_4_coh_state : _GEN_861; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_863 = 6'h5 == io_read_1_bits_idx ? meta_array_5_4_coh_state : _GEN_862; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_864 = 6'h6 == io_read_1_bits_idx ? meta_array_6_4_coh_state : _GEN_863; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_865 = 6'h7 == io_read_1_bits_idx ? meta_array_7_4_coh_state : _GEN_864; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_866 = 6'h8 == io_read_1_bits_idx ? meta_array_8_4_coh_state : _GEN_865; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_867 = 6'h9 == io_read_1_bits_idx ? meta_array_9_4_coh_state : _GEN_866; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_868 = 6'ha == io_read_1_bits_idx ? meta_array_10_4_coh_state : _GEN_867; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_869 = 6'hb == io_read_1_bits_idx ? meta_array_11_4_coh_state : _GEN_868; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_870 = 6'hc == io_read_1_bits_idx ? meta_array_12_4_coh_state : _GEN_869; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_871 = 6'hd == io_read_1_bits_idx ? meta_array_13_4_coh_state : _GEN_870; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_872 = 6'he == io_read_1_bits_idx ? meta_array_14_4_coh_state : _GEN_871; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_873 = 6'hf == io_read_1_bits_idx ? meta_array_15_4_coh_state : _GEN_872; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_874 = 6'h10 == io_read_1_bits_idx ? meta_array_16_4_coh_state : _GEN_873; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_875 = 6'h11 == io_read_1_bits_idx ? meta_array_17_4_coh_state : _GEN_874; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_876 = 6'h12 == io_read_1_bits_idx ? meta_array_18_4_coh_state : _GEN_875; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_877 = 6'h13 == io_read_1_bits_idx ? meta_array_19_4_coh_state : _GEN_876; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_878 = 6'h14 == io_read_1_bits_idx ? meta_array_20_4_coh_state : _GEN_877; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_879 = 6'h15 == io_read_1_bits_idx ? meta_array_21_4_coh_state : _GEN_878; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_880 = 6'h16 == io_read_1_bits_idx ? meta_array_22_4_coh_state : _GEN_879; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_881 = 6'h17 == io_read_1_bits_idx ? meta_array_23_4_coh_state : _GEN_880; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_882 = 6'h18 == io_read_1_bits_idx ? meta_array_24_4_coh_state : _GEN_881; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_883 = 6'h19 == io_read_1_bits_idx ? meta_array_25_4_coh_state : _GEN_882; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_884 = 6'h1a == io_read_1_bits_idx ? meta_array_26_4_coh_state : _GEN_883; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_885 = 6'h1b == io_read_1_bits_idx ? meta_array_27_4_coh_state : _GEN_884; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_886 = 6'h1c == io_read_1_bits_idx ? meta_array_28_4_coh_state : _GEN_885; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_887 = 6'h1d == io_read_1_bits_idx ? meta_array_29_4_coh_state : _GEN_886; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_888 = 6'h1e == io_read_1_bits_idx ? meta_array_30_4_coh_state : _GEN_887; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_889 = 6'h1f == io_read_1_bits_idx ? meta_array_31_4_coh_state : _GEN_888; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_890 = 6'h20 == io_read_1_bits_idx ? meta_array_32_4_coh_state : _GEN_889; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_891 = 6'h21 == io_read_1_bits_idx ? meta_array_33_4_coh_state : _GEN_890; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_892 = 6'h22 == io_read_1_bits_idx ? meta_array_34_4_coh_state : _GEN_891; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_893 = 6'h23 == io_read_1_bits_idx ? meta_array_35_4_coh_state : _GEN_892; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_894 = 6'h24 == io_read_1_bits_idx ? meta_array_36_4_coh_state : _GEN_893; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_895 = 6'h25 == io_read_1_bits_idx ? meta_array_37_4_coh_state : _GEN_894; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_896 = 6'h26 == io_read_1_bits_idx ? meta_array_38_4_coh_state : _GEN_895; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_897 = 6'h27 == io_read_1_bits_idx ? meta_array_39_4_coh_state : _GEN_896; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_898 = 6'h28 == io_read_1_bits_idx ? meta_array_40_4_coh_state : _GEN_897; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_899 = 6'h29 == io_read_1_bits_idx ? meta_array_41_4_coh_state : _GEN_898; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_900 = 6'h2a == io_read_1_bits_idx ? meta_array_42_4_coh_state : _GEN_899; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_901 = 6'h2b == io_read_1_bits_idx ? meta_array_43_4_coh_state : _GEN_900; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_902 = 6'h2c == io_read_1_bits_idx ? meta_array_44_4_coh_state : _GEN_901; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_903 = 6'h2d == io_read_1_bits_idx ? meta_array_45_4_coh_state : _GEN_902; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_904 = 6'h2e == io_read_1_bits_idx ? meta_array_46_4_coh_state : _GEN_903; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_905 = 6'h2f == io_read_1_bits_idx ? meta_array_47_4_coh_state : _GEN_904; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_906 = 6'h30 == io_read_1_bits_idx ? meta_array_48_4_coh_state : _GEN_905; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_907 = 6'h31 == io_read_1_bits_idx ? meta_array_49_4_coh_state : _GEN_906; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_908 = 6'h32 == io_read_1_bits_idx ? meta_array_50_4_coh_state : _GEN_907; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_909 = 6'h33 == io_read_1_bits_idx ? meta_array_51_4_coh_state : _GEN_908; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_910 = 6'h34 == io_read_1_bits_idx ? meta_array_52_4_coh_state : _GEN_909; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_911 = 6'h35 == io_read_1_bits_idx ? meta_array_53_4_coh_state : _GEN_910; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_912 = 6'h36 == io_read_1_bits_idx ? meta_array_54_4_coh_state : _GEN_911; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_913 = 6'h37 == io_read_1_bits_idx ? meta_array_55_4_coh_state : _GEN_912; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_914 = 6'h38 == io_read_1_bits_idx ? meta_array_56_4_coh_state : _GEN_913; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_915 = 6'h39 == io_read_1_bits_idx ? meta_array_57_4_coh_state : _GEN_914; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_916 = 6'h3a == io_read_1_bits_idx ? meta_array_58_4_coh_state : _GEN_915; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_917 = 6'h3b == io_read_1_bits_idx ? meta_array_59_4_coh_state : _GEN_916; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_918 = 6'h3c == io_read_1_bits_idx ? meta_array_60_4_coh_state : _GEN_917; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_13 = s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_1_bits_idx | s1_way_wen_5_0_REG &
    s1_way_waddr_5_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_5_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_5_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_5_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_930 = 6'h1 == io_read_1_bits_idx ? meta_array_1_5_coh_state : meta_array_0_5_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_931 = 6'h2 == io_read_1_bits_idx ? meta_array_2_5_coh_state : _GEN_930; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_932 = 6'h3 == io_read_1_bits_idx ? meta_array_3_5_coh_state : _GEN_931; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_933 = 6'h4 == io_read_1_bits_idx ? meta_array_4_5_coh_state : _GEN_932; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_934 = 6'h5 == io_read_1_bits_idx ? meta_array_5_5_coh_state : _GEN_933; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_935 = 6'h6 == io_read_1_bits_idx ? meta_array_6_5_coh_state : _GEN_934; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_936 = 6'h7 == io_read_1_bits_idx ? meta_array_7_5_coh_state : _GEN_935; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_937 = 6'h8 == io_read_1_bits_idx ? meta_array_8_5_coh_state : _GEN_936; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_938 = 6'h9 == io_read_1_bits_idx ? meta_array_9_5_coh_state : _GEN_937; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_939 = 6'ha == io_read_1_bits_idx ? meta_array_10_5_coh_state : _GEN_938; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_940 = 6'hb == io_read_1_bits_idx ? meta_array_11_5_coh_state : _GEN_939; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_941 = 6'hc == io_read_1_bits_idx ? meta_array_12_5_coh_state : _GEN_940; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_942 = 6'hd == io_read_1_bits_idx ? meta_array_13_5_coh_state : _GEN_941; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_943 = 6'he == io_read_1_bits_idx ? meta_array_14_5_coh_state : _GEN_942; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_944 = 6'hf == io_read_1_bits_idx ? meta_array_15_5_coh_state : _GEN_943; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_945 = 6'h10 == io_read_1_bits_idx ? meta_array_16_5_coh_state : _GEN_944; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_946 = 6'h11 == io_read_1_bits_idx ? meta_array_17_5_coh_state : _GEN_945; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_947 = 6'h12 == io_read_1_bits_idx ? meta_array_18_5_coh_state : _GEN_946; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_948 = 6'h13 == io_read_1_bits_idx ? meta_array_19_5_coh_state : _GEN_947; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_949 = 6'h14 == io_read_1_bits_idx ? meta_array_20_5_coh_state : _GEN_948; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_950 = 6'h15 == io_read_1_bits_idx ? meta_array_21_5_coh_state : _GEN_949; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_951 = 6'h16 == io_read_1_bits_idx ? meta_array_22_5_coh_state : _GEN_950; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_952 = 6'h17 == io_read_1_bits_idx ? meta_array_23_5_coh_state : _GEN_951; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_953 = 6'h18 == io_read_1_bits_idx ? meta_array_24_5_coh_state : _GEN_952; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_954 = 6'h19 == io_read_1_bits_idx ? meta_array_25_5_coh_state : _GEN_953; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_955 = 6'h1a == io_read_1_bits_idx ? meta_array_26_5_coh_state : _GEN_954; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_956 = 6'h1b == io_read_1_bits_idx ? meta_array_27_5_coh_state : _GEN_955; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_957 = 6'h1c == io_read_1_bits_idx ? meta_array_28_5_coh_state : _GEN_956; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_958 = 6'h1d == io_read_1_bits_idx ? meta_array_29_5_coh_state : _GEN_957; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_959 = 6'h1e == io_read_1_bits_idx ? meta_array_30_5_coh_state : _GEN_958; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_960 = 6'h1f == io_read_1_bits_idx ? meta_array_31_5_coh_state : _GEN_959; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_961 = 6'h20 == io_read_1_bits_idx ? meta_array_32_5_coh_state : _GEN_960; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_962 = 6'h21 == io_read_1_bits_idx ? meta_array_33_5_coh_state : _GEN_961; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_963 = 6'h22 == io_read_1_bits_idx ? meta_array_34_5_coh_state : _GEN_962; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_964 = 6'h23 == io_read_1_bits_idx ? meta_array_35_5_coh_state : _GEN_963; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_965 = 6'h24 == io_read_1_bits_idx ? meta_array_36_5_coh_state : _GEN_964; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_966 = 6'h25 == io_read_1_bits_idx ? meta_array_37_5_coh_state : _GEN_965; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_967 = 6'h26 == io_read_1_bits_idx ? meta_array_38_5_coh_state : _GEN_966; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_968 = 6'h27 == io_read_1_bits_idx ? meta_array_39_5_coh_state : _GEN_967; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_969 = 6'h28 == io_read_1_bits_idx ? meta_array_40_5_coh_state : _GEN_968; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_970 = 6'h29 == io_read_1_bits_idx ? meta_array_41_5_coh_state : _GEN_969; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_971 = 6'h2a == io_read_1_bits_idx ? meta_array_42_5_coh_state : _GEN_970; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_972 = 6'h2b == io_read_1_bits_idx ? meta_array_43_5_coh_state : _GEN_971; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_973 = 6'h2c == io_read_1_bits_idx ? meta_array_44_5_coh_state : _GEN_972; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_974 = 6'h2d == io_read_1_bits_idx ? meta_array_45_5_coh_state : _GEN_973; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_975 = 6'h2e == io_read_1_bits_idx ? meta_array_46_5_coh_state : _GEN_974; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_976 = 6'h2f == io_read_1_bits_idx ? meta_array_47_5_coh_state : _GEN_975; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_977 = 6'h30 == io_read_1_bits_idx ? meta_array_48_5_coh_state : _GEN_976; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_978 = 6'h31 == io_read_1_bits_idx ? meta_array_49_5_coh_state : _GEN_977; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_979 = 6'h32 == io_read_1_bits_idx ? meta_array_50_5_coh_state : _GEN_978; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_980 = 6'h33 == io_read_1_bits_idx ? meta_array_51_5_coh_state : _GEN_979; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_981 = 6'h34 == io_read_1_bits_idx ? meta_array_52_5_coh_state : _GEN_980; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_982 = 6'h35 == io_read_1_bits_idx ? meta_array_53_5_coh_state : _GEN_981; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_983 = 6'h36 == io_read_1_bits_idx ? meta_array_54_5_coh_state : _GEN_982; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_984 = 6'h37 == io_read_1_bits_idx ? meta_array_55_5_coh_state : _GEN_983; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_985 = 6'h38 == io_read_1_bits_idx ? meta_array_56_5_coh_state : _GEN_984; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_986 = 6'h39 == io_read_1_bits_idx ? meta_array_57_5_coh_state : _GEN_985; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_987 = 6'h3a == io_read_1_bits_idx ? meta_array_58_5_coh_state : _GEN_986; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_988 = 6'h3b == io_read_1_bits_idx ? meta_array_59_5_coh_state : _GEN_987; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_989 = 6'h3c == io_read_1_bits_idx ? meta_array_60_5_coh_state : _GEN_988; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_14 = s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_1_bits_idx | s1_way_wen_6_0_REG &
    s1_way_waddr_6_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_6_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_6_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_6_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1001 = 6'h1 == io_read_1_bits_idx ? meta_array_1_6_coh_state : meta_array_0_6_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1002 = 6'h2 == io_read_1_bits_idx ? meta_array_2_6_coh_state : _GEN_1001; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1003 = 6'h3 == io_read_1_bits_idx ? meta_array_3_6_coh_state : _GEN_1002; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1004 = 6'h4 == io_read_1_bits_idx ? meta_array_4_6_coh_state : _GEN_1003; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1005 = 6'h5 == io_read_1_bits_idx ? meta_array_5_6_coh_state : _GEN_1004; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1006 = 6'h6 == io_read_1_bits_idx ? meta_array_6_6_coh_state : _GEN_1005; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1007 = 6'h7 == io_read_1_bits_idx ? meta_array_7_6_coh_state : _GEN_1006; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1008 = 6'h8 == io_read_1_bits_idx ? meta_array_8_6_coh_state : _GEN_1007; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1009 = 6'h9 == io_read_1_bits_idx ? meta_array_9_6_coh_state : _GEN_1008; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1010 = 6'ha == io_read_1_bits_idx ? meta_array_10_6_coh_state : _GEN_1009; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1011 = 6'hb == io_read_1_bits_idx ? meta_array_11_6_coh_state : _GEN_1010; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1012 = 6'hc == io_read_1_bits_idx ? meta_array_12_6_coh_state : _GEN_1011; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1013 = 6'hd == io_read_1_bits_idx ? meta_array_13_6_coh_state : _GEN_1012; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1014 = 6'he == io_read_1_bits_idx ? meta_array_14_6_coh_state : _GEN_1013; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1015 = 6'hf == io_read_1_bits_idx ? meta_array_15_6_coh_state : _GEN_1014; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1016 = 6'h10 == io_read_1_bits_idx ? meta_array_16_6_coh_state : _GEN_1015; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1017 = 6'h11 == io_read_1_bits_idx ? meta_array_17_6_coh_state : _GEN_1016; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1018 = 6'h12 == io_read_1_bits_idx ? meta_array_18_6_coh_state : _GEN_1017; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1019 = 6'h13 == io_read_1_bits_idx ? meta_array_19_6_coh_state : _GEN_1018; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1020 = 6'h14 == io_read_1_bits_idx ? meta_array_20_6_coh_state : _GEN_1019; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1021 = 6'h15 == io_read_1_bits_idx ? meta_array_21_6_coh_state : _GEN_1020; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1022 = 6'h16 == io_read_1_bits_idx ? meta_array_22_6_coh_state : _GEN_1021; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1023 = 6'h17 == io_read_1_bits_idx ? meta_array_23_6_coh_state : _GEN_1022; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1024 = 6'h18 == io_read_1_bits_idx ? meta_array_24_6_coh_state : _GEN_1023; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1025 = 6'h19 == io_read_1_bits_idx ? meta_array_25_6_coh_state : _GEN_1024; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1026 = 6'h1a == io_read_1_bits_idx ? meta_array_26_6_coh_state : _GEN_1025; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1027 = 6'h1b == io_read_1_bits_idx ? meta_array_27_6_coh_state : _GEN_1026; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1028 = 6'h1c == io_read_1_bits_idx ? meta_array_28_6_coh_state : _GEN_1027; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1029 = 6'h1d == io_read_1_bits_idx ? meta_array_29_6_coh_state : _GEN_1028; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1030 = 6'h1e == io_read_1_bits_idx ? meta_array_30_6_coh_state : _GEN_1029; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1031 = 6'h1f == io_read_1_bits_idx ? meta_array_31_6_coh_state : _GEN_1030; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1032 = 6'h20 == io_read_1_bits_idx ? meta_array_32_6_coh_state : _GEN_1031; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1033 = 6'h21 == io_read_1_bits_idx ? meta_array_33_6_coh_state : _GEN_1032; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1034 = 6'h22 == io_read_1_bits_idx ? meta_array_34_6_coh_state : _GEN_1033; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1035 = 6'h23 == io_read_1_bits_idx ? meta_array_35_6_coh_state : _GEN_1034; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1036 = 6'h24 == io_read_1_bits_idx ? meta_array_36_6_coh_state : _GEN_1035; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1037 = 6'h25 == io_read_1_bits_idx ? meta_array_37_6_coh_state : _GEN_1036; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1038 = 6'h26 == io_read_1_bits_idx ? meta_array_38_6_coh_state : _GEN_1037; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1039 = 6'h27 == io_read_1_bits_idx ? meta_array_39_6_coh_state : _GEN_1038; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1040 = 6'h28 == io_read_1_bits_idx ? meta_array_40_6_coh_state : _GEN_1039; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1041 = 6'h29 == io_read_1_bits_idx ? meta_array_41_6_coh_state : _GEN_1040; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1042 = 6'h2a == io_read_1_bits_idx ? meta_array_42_6_coh_state : _GEN_1041; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1043 = 6'h2b == io_read_1_bits_idx ? meta_array_43_6_coh_state : _GEN_1042; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1044 = 6'h2c == io_read_1_bits_idx ? meta_array_44_6_coh_state : _GEN_1043; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1045 = 6'h2d == io_read_1_bits_idx ? meta_array_45_6_coh_state : _GEN_1044; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1046 = 6'h2e == io_read_1_bits_idx ? meta_array_46_6_coh_state : _GEN_1045; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1047 = 6'h2f == io_read_1_bits_idx ? meta_array_47_6_coh_state : _GEN_1046; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1048 = 6'h30 == io_read_1_bits_idx ? meta_array_48_6_coh_state : _GEN_1047; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1049 = 6'h31 == io_read_1_bits_idx ? meta_array_49_6_coh_state : _GEN_1048; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1050 = 6'h32 == io_read_1_bits_idx ? meta_array_50_6_coh_state : _GEN_1049; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1051 = 6'h33 == io_read_1_bits_idx ? meta_array_51_6_coh_state : _GEN_1050; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1052 = 6'h34 == io_read_1_bits_idx ? meta_array_52_6_coh_state : _GEN_1051; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1053 = 6'h35 == io_read_1_bits_idx ? meta_array_53_6_coh_state : _GEN_1052; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1054 = 6'h36 == io_read_1_bits_idx ? meta_array_54_6_coh_state : _GEN_1053; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1055 = 6'h37 == io_read_1_bits_idx ? meta_array_55_6_coh_state : _GEN_1054; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1056 = 6'h38 == io_read_1_bits_idx ? meta_array_56_6_coh_state : _GEN_1055; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1057 = 6'h39 == io_read_1_bits_idx ? meta_array_57_6_coh_state : _GEN_1056; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1058 = 6'h3a == io_read_1_bits_idx ? meta_array_58_6_coh_state : _GEN_1057; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1059 = 6'h3b == io_read_1_bits_idx ? meta_array_59_6_coh_state : _GEN_1058; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1060 = 6'h3c == io_read_1_bits_idx ? meta_array_60_6_coh_state : _GEN_1059; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_15 = s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_1_bits_idx | s1_way_wen_7_0_REG &
    s1_way_waddr_7_0_r == io_read_1_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_1_7_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_7_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_1_7_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1072 = 6'h1 == io_read_1_bits_idx ? meta_array_1_7_coh_state : meta_array_0_7_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1073 = 6'h2 == io_read_1_bits_idx ? meta_array_2_7_coh_state : _GEN_1072; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1074 = 6'h3 == io_read_1_bits_idx ? meta_array_3_7_coh_state : _GEN_1073; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1075 = 6'h4 == io_read_1_bits_idx ? meta_array_4_7_coh_state : _GEN_1074; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1076 = 6'h5 == io_read_1_bits_idx ? meta_array_5_7_coh_state : _GEN_1075; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1077 = 6'h6 == io_read_1_bits_idx ? meta_array_6_7_coh_state : _GEN_1076; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1078 = 6'h7 == io_read_1_bits_idx ? meta_array_7_7_coh_state : _GEN_1077; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1079 = 6'h8 == io_read_1_bits_idx ? meta_array_8_7_coh_state : _GEN_1078; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1080 = 6'h9 == io_read_1_bits_idx ? meta_array_9_7_coh_state : _GEN_1079; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1081 = 6'ha == io_read_1_bits_idx ? meta_array_10_7_coh_state : _GEN_1080; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1082 = 6'hb == io_read_1_bits_idx ? meta_array_11_7_coh_state : _GEN_1081; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1083 = 6'hc == io_read_1_bits_idx ? meta_array_12_7_coh_state : _GEN_1082; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1084 = 6'hd == io_read_1_bits_idx ? meta_array_13_7_coh_state : _GEN_1083; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1085 = 6'he == io_read_1_bits_idx ? meta_array_14_7_coh_state : _GEN_1084; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1086 = 6'hf == io_read_1_bits_idx ? meta_array_15_7_coh_state : _GEN_1085; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1087 = 6'h10 == io_read_1_bits_idx ? meta_array_16_7_coh_state : _GEN_1086; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1088 = 6'h11 == io_read_1_bits_idx ? meta_array_17_7_coh_state : _GEN_1087; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1089 = 6'h12 == io_read_1_bits_idx ? meta_array_18_7_coh_state : _GEN_1088; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1090 = 6'h13 == io_read_1_bits_idx ? meta_array_19_7_coh_state : _GEN_1089; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1091 = 6'h14 == io_read_1_bits_idx ? meta_array_20_7_coh_state : _GEN_1090; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1092 = 6'h15 == io_read_1_bits_idx ? meta_array_21_7_coh_state : _GEN_1091; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1093 = 6'h16 == io_read_1_bits_idx ? meta_array_22_7_coh_state : _GEN_1092; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1094 = 6'h17 == io_read_1_bits_idx ? meta_array_23_7_coh_state : _GEN_1093; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1095 = 6'h18 == io_read_1_bits_idx ? meta_array_24_7_coh_state : _GEN_1094; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1096 = 6'h19 == io_read_1_bits_idx ? meta_array_25_7_coh_state : _GEN_1095; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1097 = 6'h1a == io_read_1_bits_idx ? meta_array_26_7_coh_state : _GEN_1096; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1098 = 6'h1b == io_read_1_bits_idx ? meta_array_27_7_coh_state : _GEN_1097; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1099 = 6'h1c == io_read_1_bits_idx ? meta_array_28_7_coh_state : _GEN_1098; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1100 = 6'h1d == io_read_1_bits_idx ? meta_array_29_7_coh_state : _GEN_1099; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1101 = 6'h1e == io_read_1_bits_idx ? meta_array_30_7_coh_state : _GEN_1100; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1102 = 6'h1f == io_read_1_bits_idx ? meta_array_31_7_coh_state : _GEN_1101; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1103 = 6'h20 == io_read_1_bits_idx ? meta_array_32_7_coh_state : _GEN_1102; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1104 = 6'h21 == io_read_1_bits_idx ? meta_array_33_7_coh_state : _GEN_1103; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1105 = 6'h22 == io_read_1_bits_idx ? meta_array_34_7_coh_state : _GEN_1104; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1106 = 6'h23 == io_read_1_bits_idx ? meta_array_35_7_coh_state : _GEN_1105; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1107 = 6'h24 == io_read_1_bits_idx ? meta_array_36_7_coh_state : _GEN_1106; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1108 = 6'h25 == io_read_1_bits_idx ? meta_array_37_7_coh_state : _GEN_1107; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1109 = 6'h26 == io_read_1_bits_idx ? meta_array_38_7_coh_state : _GEN_1108; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1110 = 6'h27 == io_read_1_bits_idx ? meta_array_39_7_coh_state : _GEN_1109; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1111 = 6'h28 == io_read_1_bits_idx ? meta_array_40_7_coh_state : _GEN_1110; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1112 = 6'h29 == io_read_1_bits_idx ? meta_array_41_7_coh_state : _GEN_1111; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1113 = 6'h2a == io_read_1_bits_idx ? meta_array_42_7_coh_state : _GEN_1112; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1114 = 6'h2b == io_read_1_bits_idx ? meta_array_43_7_coh_state : _GEN_1113; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1115 = 6'h2c == io_read_1_bits_idx ? meta_array_44_7_coh_state : _GEN_1114; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1116 = 6'h2d == io_read_1_bits_idx ? meta_array_45_7_coh_state : _GEN_1115; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1117 = 6'h2e == io_read_1_bits_idx ? meta_array_46_7_coh_state : _GEN_1116; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1118 = 6'h2f == io_read_1_bits_idx ? meta_array_47_7_coh_state : _GEN_1117; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1119 = 6'h30 == io_read_1_bits_idx ? meta_array_48_7_coh_state : _GEN_1118; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1120 = 6'h31 == io_read_1_bits_idx ? meta_array_49_7_coh_state : _GEN_1119; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1121 = 6'h32 == io_read_1_bits_idx ? meta_array_50_7_coh_state : _GEN_1120; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1122 = 6'h33 == io_read_1_bits_idx ? meta_array_51_7_coh_state : _GEN_1121; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1123 = 6'h34 == io_read_1_bits_idx ? meta_array_52_7_coh_state : _GEN_1122; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1124 = 6'h35 == io_read_1_bits_idx ? meta_array_53_7_coh_state : _GEN_1123; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1125 = 6'h36 == io_read_1_bits_idx ? meta_array_54_7_coh_state : _GEN_1124; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1126 = 6'h37 == io_read_1_bits_idx ? meta_array_55_7_coh_state : _GEN_1125; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1127 = 6'h38 == io_read_1_bits_idx ? meta_array_56_7_coh_state : _GEN_1126; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1128 = 6'h39 == io_read_1_bits_idx ? meta_array_57_7_coh_state : _GEN_1127; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1129 = 6'h3a == io_read_1_bits_idx ? meta_array_58_7_coh_state : _GEN_1128; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1130 = 6'h3b == io_read_1_bits_idx ? meta_array_59_7_coh_state : _GEN_1129; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1131 = 6'h3c == io_read_1_bits_idx ? meta_array_60_7_coh_state : _GEN_1130; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_16 = s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_2_bits_idx | s1_way_wen_0_0_REG &
    s1_way_waddr_0_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_0_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_0_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_0_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1143 = 6'h1 == io_read_2_bits_idx ? meta_array_1_0_coh_state : meta_array_0_0_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1144 = 6'h2 == io_read_2_bits_idx ? meta_array_2_0_coh_state : _GEN_1143; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1145 = 6'h3 == io_read_2_bits_idx ? meta_array_3_0_coh_state : _GEN_1144; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1146 = 6'h4 == io_read_2_bits_idx ? meta_array_4_0_coh_state : _GEN_1145; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1147 = 6'h5 == io_read_2_bits_idx ? meta_array_5_0_coh_state : _GEN_1146; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1148 = 6'h6 == io_read_2_bits_idx ? meta_array_6_0_coh_state : _GEN_1147; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1149 = 6'h7 == io_read_2_bits_idx ? meta_array_7_0_coh_state : _GEN_1148; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1150 = 6'h8 == io_read_2_bits_idx ? meta_array_8_0_coh_state : _GEN_1149; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1151 = 6'h9 == io_read_2_bits_idx ? meta_array_9_0_coh_state : _GEN_1150; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1152 = 6'ha == io_read_2_bits_idx ? meta_array_10_0_coh_state : _GEN_1151; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1153 = 6'hb == io_read_2_bits_idx ? meta_array_11_0_coh_state : _GEN_1152; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1154 = 6'hc == io_read_2_bits_idx ? meta_array_12_0_coh_state : _GEN_1153; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1155 = 6'hd == io_read_2_bits_idx ? meta_array_13_0_coh_state : _GEN_1154; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1156 = 6'he == io_read_2_bits_idx ? meta_array_14_0_coh_state : _GEN_1155; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1157 = 6'hf == io_read_2_bits_idx ? meta_array_15_0_coh_state : _GEN_1156; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1158 = 6'h10 == io_read_2_bits_idx ? meta_array_16_0_coh_state : _GEN_1157; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1159 = 6'h11 == io_read_2_bits_idx ? meta_array_17_0_coh_state : _GEN_1158; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1160 = 6'h12 == io_read_2_bits_idx ? meta_array_18_0_coh_state : _GEN_1159; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1161 = 6'h13 == io_read_2_bits_idx ? meta_array_19_0_coh_state : _GEN_1160; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1162 = 6'h14 == io_read_2_bits_idx ? meta_array_20_0_coh_state : _GEN_1161; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1163 = 6'h15 == io_read_2_bits_idx ? meta_array_21_0_coh_state : _GEN_1162; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1164 = 6'h16 == io_read_2_bits_idx ? meta_array_22_0_coh_state : _GEN_1163; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1165 = 6'h17 == io_read_2_bits_idx ? meta_array_23_0_coh_state : _GEN_1164; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1166 = 6'h18 == io_read_2_bits_idx ? meta_array_24_0_coh_state : _GEN_1165; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1167 = 6'h19 == io_read_2_bits_idx ? meta_array_25_0_coh_state : _GEN_1166; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1168 = 6'h1a == io_read_2_bits_idx ? meta_array_26_0_coh_state : _GEN_1167; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1169 = 6'h1b == io_read_2_bits_idx ? meta_array_27_0_coh_state : _GEN_1168; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1170 = 6'h1c == io_read_2_bits_idx ? meta_array_28_0_coh_state : _GEN_1169; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1171 = 6'h1d == io_read_2_bits_idx ? meta_array_29_0_coh_state : _GEN_1170; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1172 = 6'h1e == io_read_2_bits_idx ? meta_array_30_0_coh_state : _GEN_1171; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1173 = 6'h1f == io_read_2_bits_idx ? meta_array_31_0_coh_state : _GEN_1172; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1174 = 6'h20 == io_read_2_bits_idx ? meta_array_32_0_coh_state : _GEN_1173; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1175 = 6'h21 == io_read_2_bits_idx ? meta_array_33_0_coh_state : _GEN_1174; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1176 = 6'h22 == io_read_2_bits_idx ? meta_array_34_0_coh_state : _GEN_1175; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1177 = 6'h23 == io_read_2_bits_idx ? meta_array_35_0_coh_state : _GEN_1176; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1178 = 6'h24 == io_read_2_bits_idx ? meta_array_36_0_coh_state : _GEN_1177; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1179 = 6'h25 == io_read_2_bits_idx ? meta_array_37_0_coh_state : _GEN_1178; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1180 = 6'h26 == io_read_2_bits_idx ? meta_array_38_0_coh_state : _GEN_1179; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1181 = 6'h27 == io_read_2_bits_idx ? meta_array_39_0_coh_state : _GEN_1180; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1182 = 6'h28 == io_read_2_bits_idx ? meta_array_40_0_coh_state : _GEN_1181; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1183 = 6'h29 == io_read_2_bits_idx ? meta_array_41_0_coh_state : _GEN_1182; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1184 = 6'h2a == io_read_2_bits_idx ? meta_array_42_0_coh_state : _GEN_1183; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1185 = 6'h2b == io_read_2_bits_idx ? meta_array_43_0_coh_state : _GEN_1184; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1186 = 6'h2c == io_read_2_bits_idx ? meta_array_44_0_coh_state : _GEN_1185; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1187 = 6'h2d == io_read_2_bits_idx ? meta_array_45_0_coh_state : _GEN_1186; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1188 = 6'h2e == io_read_2_bits_idx ? meta_array_46_0_coh_state : _GEN_1187; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1189 = 6'h2f == io_read_2_bits_idx ? meta_array_47_0_coh_state : _GEN_1188; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1190 = 6'h30 == io_read_2_bits_idx ? meta_array_48_0_coh_state : _GEN_1189; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1191 = 6'h31 == io_read_2_bits_idx ? meta_array_49_0_coh_state : _GEN_1190; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1192 = 6'h32 == io_read_2_bits_idx ? meta_array_50_0_coh_state : _GEN_1191; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1193 = 6'h33 == io_read_2_bits_idx ? meta_array_51_0_coh_state : _GEN_1192; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1194 = 6'h34 == io_read_2_bits_idx ? meta_array_52_0_coh_state : _GEN_1193; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1195 = 6'h35 == io_read_2_bits_idx ? meta_array_53_0_coh_state : _GEN_1194; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1196 = 6'h36 == io_read_2_bits_idx ? meta_array_54_0_coh_state : _GEN_1195; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1197 = 6'h37 == io_read_2_bits_idx ? meta_array_55_0_coh_state : _GEN_1196; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1198 = 6'h38 == io_read_2_bits_idx ? meta_array_56_0_coh_state : _GEN_1197; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1199 = 6'h39 == io_read_2_bits_idx ? meta_array_57_0_coh_state : _GEN_1198; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1200 = 6'h3a == io_read_2_bits_idx ? meta_array_58_0_coh_state : _GEN_1199; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1201 = 6'h3b == io_read_2_bits_idx ? meta_array_59_0_coh_state : _GEN_1200; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1202 = 6'h3c == io_read_2_bits_idx ? meta_array_60_0_coh_state : _GEN_1201; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_17 = s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_2_bits_idx | s1_way_wen_1_0_REG &
    s1_way_waddr_1_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_1_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_1_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_1_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1214 = 6'h1 == io_read_2_bits_idx ? meta_array_1_1_coh_state : meta_array_0_1_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1215 = 6'h2 == io_read_2_bits_idx ? meta_array_2_1_coh_state : _GEN_1214; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1216 = 6'h3 == io_read_2_bits_idx ? meta_array_3_1_coh_state : _GEN_1215; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1217 = 6'h4 == io_read_2_bits_idx ? meta_array_4_1_coh_state : _GEN_1216; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1218 = 6'h5 == io_read_2_bits_idx ? meta_array_5_1_coh_state : _GEN_1217; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1219 = 6'h6 == io_read_2_bits_idx ? meta_array_6_1_coh_state : _GEN_1218; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1220 = 6'h7 == io_read_2_bits_idx ? meta_array_7_1_coh_state : _GEN_1219; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1221 = 6'h8 == io_read_2_bits_idx ? meta_array_8_1_coh_state : _GEN_1220; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1222 = 6'h9 == io_read_2_bits_idx ? meta_array_9_1_coh_state : _GEN_1221; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1223 = 6'ha == io_read_2_bits_idx ? meta_array_10_1_coh_state : _GEN_1222; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1224 = 6'hb == io_read_2_bits_idx ? meta_array_11_1_coh_state : _GEN_1223; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1225 = 6'hc == io_read_2_bits_idx ? meta_array_12_1_coh_state : _GEN_1224; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1226 = 6'hd == io_read_2_bits_idx ? meta_array_13_1_coh_state : _GEN_1225; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1227 = 6'he == io_read_2_bits_idx ? meta_array_14_1_coh_state : _GEN_1226; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1228 = 6'hf == io_read_2_bits_idx ? meta_array_15_1_coh_state : _GEN_1227; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1229 = 6'h10 == io_read_2_bits_idx ? meta_array_16_1_coh_state : _GEN_1228; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1230 = 6'h11 == io_read_2_bits_idx ? meta_array_17_1_coh_state : _GEN_1229; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1231 = 6'h12 == io_read_2_bits_idx ? meta_array_18_1_coh_state : _GEN_1230; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1232 = 6'h13 == io_read_2_bits_idx ? meta_array_19_1_coh_state : _GEN_1231; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1233 = 6'h14 == io_read_2_bits_idx ? meta_array_20_1_coh_state : _GEN_1232; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1234 = 6'h15 == io_read_2_bits_idx ? meta_array_21_1_coh_state : _GEN_1233; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1235 = 6'h16 == io_read_2_bits_idx ? meta_array_22_1_coh_state : _GEN_1234; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1236 = 6'h17 == io_read_2_bits_idx ? meta_array_23_1_coh_state : _GEN_1235; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1237 = 6'h18 == io_read_2_bits_idx ? meta_array_24_1_coh_state : _GEN_1236; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1238 = 6'h19 == io_read_2_bits_idx ? meta_array_25_1_coh_state : _GEN_1237; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1239 = 6'h1a == io_read_2_bits_idx ? meta_array_26_1_coh_state : _GEN_1238; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1240 = 6'h1b == io_read_2_bits_idx ? meta_array_27_1_coh_state : _GEN_1239; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1241 = 6'h1c == io_read_2_bits_idx ? meta_array_28_1_coh_state : _GEN_1240; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1242 = 6'h1d == io_read_2_bits_idx ? meta_array_29_1_coh_state : _GEN_1241; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1243 = 6'h1e == io_read_2_bits_idx ? meta_array_30_1_coh_state : _GEN_1242; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1244 = 6'h1f == io_read_2_bits_idx ? meta_array_31_1_coh_state : _GEN_1243; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1245 = 6'h20 == io_read_2_bits_idx ? meta_array_32_1_coh_state : _GEN_1244; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1246 = 6'h21 == io_read_2_bits_idx ? meta_array_33_1_coh_state : _GEN_1245; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1247 = 6'h22 == io_read_2_bits_idx ? meta_array_34_1_coh_state : _GEN_1246; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1248 = 6'h23 == io_read_2_bits_idx ? meta_array_35_1_coh_state : _GEN_1247; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1249 = 6'h24 == io_read_2_bits_idx ? meta_array_36_1_coh_state : _GEN_1248; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1250 = 6'h25 == io_read_2_bits_idx ? meta_array_37_1_coh_state : _GEN_1249; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1251 = 6'h26 == io_read_2_bits_idx ? meta_array_38_1_coh_state : _GEN_1250; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1252 = 6'h27 == io_read_2_bits_idx ? meta_array_39_1_coh_state : _GEN_1251; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1253 = 6'h28 == io_read_2_bits_idx ? meta_array_40_1_coh_state : _GEN_1252; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1254 = 6'h29 == io_read_2_bits_idx ? meta_array_41_1_coh_state : _GEN_1253; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1255 = 6'h2a == io_read_2_bits_idx ? meta_array_42_1_coh_state : _GEN_1254; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1256 = 6'h2b == io_read_2_bits_idx ? meta_array_43_1_coh_state : _GEN_1255; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1257 = 6'h2c == io_read_2_bits_idx ? meta_array_44_1_coh_state : _GEN_1256; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1258 = 6'h2d == io_read_2_bits_idx ? meta_array_45_1_coh_state : _GEN_1257; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1259 = 6'h2e == io_read_2_bits_idx ? meta_array_46_1_coh_state : _GEN_1258; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1260 = 6'h2f == io_read_2_bits_idx ? meta_array_47_1_coh_state : _GEN_1259; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1261 = 6'h30 == io_read_2_bits_idx ? meta_array_48_1_coh_state : _GEN_1260; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1262 = 6'h31 == io_read_2_bits_idx ? meta_array_49_1_coh_state : _GEN_1261; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1263 = 6'h32 == io_read_2_bits_idx ? meta_array_50_1_coh_state : _GEN_1262; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1264 = 6'h33 == io_read_2_bits_idx ? meta_array_51_1_coh_state : _GEN_1263; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1265 = 6'h34 == io_read_2_bits_idx ? meta_array_52_1_coh_state : _GEN_1264; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1266 = 6'h35 == io_read_2_bits_idx ? meta_array_53_1_coh_state : _GEN_1265; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1267 = 6'h36 == io_read_2_bits_idx ? meta_array_54_1_coh_state : _GEN_1266; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1268 = 6'h37 == io_read_2_bits_idx ? meta_array_55_1_coh_state : _GEN_1267; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1269 = 6'h38 == io_read_2_bits_idx ? meta_array_56_1_coh_state : _GEN_1268; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1270 = 6'h39 == io_read_2_bits_idx ? meta_array_57_1_coh_state : _GEN_1269; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1271 = 6'h3a == io_read_2_bits_idx ? meta_array_58_1_coh_state : _GEN_1270; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1272 = 6'h3b == io_read_2_bits_idx ? meta_array_59_1_coh_state : _GEN_1271; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1273 = 6'h3c == io_read_2_bits_idx ? meta_array_60_1_coh_state : _GEN_1272; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_18 = s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_2_bits_idx | s1_way_wen_2_0_REG &
    s1_way_waddr_2_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_2_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_2_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_2_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1285 = 6'h1 == io_read_2_bits_idx ? meta_array_1_2_coh_state : meta_array_0_2_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1286 = 6'h2 == io_read_2_bits_idx ? meta_array_2_2_coh_state : _GEN_1285; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1287 = 6'h3 == io_read_2_bits_idx ? meta_array_3_2_coh_state : _GEN_1286; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1288 = 6'h4 == io_read_2_bits_idx ? meta_array_4_2_coh_state : _GEN_1287; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1289 = 6'h5 == io_read_2_bits_idx ? meta_array_5_2_coh_state : _GEN_1288; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1290 = 6'h6 == io_read_2_bits_idx ? meta_array_6_2_coh_state : _GEN_1289; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1291 = 6'h7 == io_read_2_bits_idx ? meta_array_7_2_coh_state : _GEN_1290; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1292 = 6'h8 == io_read_2_bits_idx ? meta_array_8_2_coh_state : _GEN_1291; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1293 = 6'h9 == io_read_2_bits_idx ? meta_array_9_2_coh_state : _GEN_1292; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1294 = 6'ha == io_read_2_bits_idx ? meta_array_10_2_coh_state : _GEN_1293; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1295 = 6'hb == io_read_2_bits_idx ? meta_array_11_2_coh_state : _GEN_1294; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1296 = 6'hc == io_read_2_bits_idx ? meta_array_12_2_coh_state : _GEN_1295; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1297 = 6'hd == io_read_2_bits_idx ? meta_array_13_2_coh_state : _GEN_1296; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1298 = 6'he == io_read_2_bits_idx ? meta_array_14_2_coh_state : _GEN_1297; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1299 = 6'hf == io_read_2_bits_idx ? meta_array_15_2_coh_state : _GEN_1298; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1300 = 6'h10 == io_read_2_bits_idx ? meta_array_16_2_coh_state : _GEN_1299; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1301 = 6'h11 == io_read_2_bits_idx ? meta_array_17_2_coh_state : _GEN_1300; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1302 = 6'h12 == io_read_2_bits_idx ? meta_array_18_2_coh_state : _GEN_1301; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1303 = 6'h13 == io_read_2_bits_idx ? meta_array_19_2_coh_state : _GEN_1302; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1304 = 6'h14 == io_read_2_bits_idx ? meta_array_20_2_coh_state : _GEN_1303; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1305 = 6'h15 == io_read_2_bits_idx ? meta_array_21_2_coh_state : _GEN_1304; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1306 = 6'h16 == io_read_2_bits_idx ? meta_array_22_2_coh_state : _GEN_1305; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1307 = 6'h17 == io_read_2_bits_idx ? meta_array_23_2_coh_state : _GEN_1306; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1308 = 6'h18 == io_read_2_bits_idx ? meta_array_24_2_coh_state : _GEN_1307; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1309 = 6'h19 == io_read_2_bits_idx ? meta_array_25_2_coh_state : _GEN_1308; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1310 = 6'h1a == io_read_2_bits_idx ? meta_array_26_2_coh_state : _GEN_1309; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1311 = 6'h1b == io_read_2_bits_idx ? meta_array_27_2_coh_state : _GEN_1310; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1312 = 6'h1c == io_read_2_bits_idx ? meta_array_28_2_coh_state : _GEN_1311; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1313 = 6'h1d == io_read_2_bits_idx ? meta_array_29_2_coh_state : _GEN_1312; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1314 = 6'h1e == io_read_2_bits_idx ? meta_array_30_2_coh_state : _GEN_1313; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1315 = 6'h1f == io_read_2_bits_idx ? meta_array_31_2_coh_state : _GEN_1314; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1316 = 6'h20 == io_read_2_bits_idx ? meta_array_32_2_coh_state : _GEN_1315; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1317 = 6'h21 == io_read_2_bits_idx ? meta_array_33_2_coh_state : _GEN_1316; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1318 = 6'h22 == io_read_2_bits_idx ? meta_array_34_2_coh_state : _GEN_1317; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1319 = 6'h23 == io_read_2_bits_idx ? meta_array_35_2_coh_state : _GEN_1318; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1320 = 6'h24 == io_read_2_bits_idx ? meta_array_36_2_coh_state : _GEN_1319; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1321 = 6'h25 == io_read_2_bits_idx ? meta_array_37_2_coh_state : _GEN_1320; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1322 = 6'h26 == io_read_2_bits_idx ? meta_array_38_2_coh_state : _GEN_1321; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1323 = 6'h27 == io_read_2_bits_idx ? meta_array_39_2_coh_state : _GEN_1322; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1324 = 6'h28 == io_read_2_bits_idx ? meta_array_40_2_coh_state : _GEN_1323; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1325 = 6'h29 == io_read_2_bits_idx ? meta_array_41_2_coh_state : _GEN_1324; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1326 = 6'h2a == io_read_2_bits_idx ? meta_array_42_2_coh_state : _GEN_1325; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1327 = 6'h2b == io_read_2_bits_idx ? meta_array_43_2_coh_state : _GEN_1326; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1328 = 6'h2c == io_read_2_bits_idx ? meta_array_44_2_coh_state : _GEN_1327; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1329 = 6'h2d == io_read_2_bits_idx ? meta_array_45_2_coh_state : _GEN_1328; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1330 = 6'h2e == io_read_2_bits_idx ? meta_array_46_2_coh_state : _GEN_1329; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1331 = 6'h2f == io_read_2_bits_idx ? meta_array_47_2_coh_state : _GEN_1330; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1332 = 6'h30 == io_read_2_bits_idx ? meta_array_48_2_coh_state : _GEN_1331; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1333 = 6'h31 == io_read_2_bits_idx ? meta_array_49_2_coh_state : _GEN_1332; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1334 = 6'h32 == io_read_2_bits_idx ? meta_array_50_2_coh_state : _GEN_1333; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1335 = 6'h33 == io_read_2_bits_idx ? meta_array_51_2_coh_state : _GEN_1334; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1336 = 6'h34 == io_read_2_bits_idx ? meta_array_52_2_coh_state : _GEN_1335; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1337 = 6'h35 == io_read_2_bits_idx ? meta_array_53_2_coh_state : _GEN_1336; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1338 = 6'h36 == io_read_2_bits_idx ? meta_array_54_2_coh_state : _GEN_1337; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1339 = 6'h37 == io_read_2_bits_idx ? meta_array_55_2_coh_state : _GEN_1338; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1340 = 6'h38 == io_read_2_bits_idx ? meta_array_56_2_coh_state : _GEN_1339; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1341 = 6'h39 == io_read_2_bits_idx ? meta_array_57_2_coh_state : _GEN_1340; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1342 = 6'h3a == io_read_2_bits_idx ? meta_array_58_2_coh_state : _GEN_1341; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1343 = 6'h3b == io_read_2_bits_idx ? meta_array_59_2_coh_state : _GEN_1342; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1344 = 6'h3c == io_read_2_bits_idx ? meta_array_60_2_coh_state : _GEN_1343; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_19 = s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_2_bits_idx | s1_way_wen_3_0_REG &
    s1_way_waddr_3_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_3_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_3_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_3_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1356 = 6'h1 == io_read_2_bits_idx ? meta_array_1_3_coh_state : meta_array_0_3_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1357 = 6'h2 == io_read_2_bits_idx ? meta_array_2_3_coh_state : _GEN_1356; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1358 = 6'h3 == io_read_2_bits_idx ? meta_array_3_3_coh_state : _GEN_1357; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1359 = 6'h4 == io_read_2_bits_idx ? meta_array_4_3_coh_state : _GEN_1358; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1360 = 6'h5 == io_read_2_bits_idx ? meta_array_5_3_coh_state : _GEN_1359; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1361 = 6'h6 == io_read_2_bits_idx ? meta_array_6_3_coh_state : _GEN_1360; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1362 = 6'h7 == io_read_2_bits_idx ? meta_array_7_3_coh_state : _GEN_1361; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1363 = 6'h8 == io_read_2_bits_idx ? meta_array_8_3_coh_state : _GEN_1362; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1364 = 6'h9 == io_read_2_bits_idx ? meta_array_9_3_coh_state : _GEN_1363; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1365 = 6'ha == io_read_2_bits_idx ? meta_array_10_3_coh_state : _GEN_1364; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1366 = 6'hb == io_read_2_bits_idx ? meta_array_11_3_coh_state : _GEN_1365; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1367 = 6'hc == io_read_2_bits_idx ? meta_array_12_3_coh_state : _GEN_1366; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1368 = 6'hd == io_read_2_bits_idx ? meta_array_13_3_coh_state : _GEN_1367; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1369 = 6'he == io_read_2_bits_idx ? meta_array_14_3_coh_state : _GEN_1368; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1370 = 6'hf == io_read_2_bits_idx ? meta_array_15_3_coh_state : _GEN_1369; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1371 = 6'h10 == io_read_2_bits_idx ? meta_array_16_3_coh_state : _GEN_1370; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1372 = 6'h11 == io_read_2_bits_idx ? meta_array_17_3_coh_state : _GEN_1371; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1373 = 6'h12 == io_read_2_bits_idx ? meta_array_18_3_coh_state : _GEN_1372; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1374 = 6'h13 == io_read_2_bits_idx ? meta_array_19_3_coh_state : _GEN_1373; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1375 = 6'h14 == io_read_2_bits_idx ? meta_array_20_3_coh_state : _GEN_1374; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1376 = 6'h15 == io_read_2_bits_idx ? meta_array_21_3_coh_state : _GEN_1375; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1377 = 6'h16 == io_read_2_bits_idx ? meta_array_22_3_coh_state : _GEN_1376; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1378 = 6'h17 == io_read_2_bits_idx ? meta_array_23_3_coh_state : _GEN_1377; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1379 = 6'h18 == io_read_2_bits_idx ? meta_array_24_3_coh_state : _GEN_1378; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1380 = 6'h19 == io_read_2_bits_idx ? meta_array_25_3_coh_state : _GEN_1379; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1381 = 6'h1a == io_read_2_bits_idx ? meta_array_26_3_coh_state : _GEN_1380; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1382 = 6'h1b == io_read_2_bits_idx ? meta_array_27_3_coh_state : _GEN_1381; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1383 = 6'h1c == io_read_2_bits_idx ? meta_array_28_3_coh_state : _GEN_1382; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1384 = 6'h1d == io_read_2_bits_idx ? meta_array_29_3_coh_state : _GEN_1383; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1385 = 6'h1e == io_read_2_bits_idx ? meta_array_30_3_coh_state : _GEN_1384; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1386 = 6'h1f == io_read_2_bits_idx ? meta_array_31_3_coh_state : _GEN_1385; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1387 = 6'h20 == io_read_2_bits_idx ? meta_array_32_3_coh_state : _GEN_1386; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1388 = 6'h21 == io_read_2_bits_idx ? meta_array_33_3_coh_state : _GEN_1387; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1389 = 6'h22 == io_read_2_bits_idx ? meta_array_34_3_coh_state : _GEN_1388; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1390 = 6'h23 == io_read_2_bits_idx ? meta_array_35_3_coh_state : _GEN_1389; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1391 = 6'h24 == io_read_2_bits_idx ? meta_array_36_3_coh_state : _GEN_1390; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1392 = 6'h25 == io_read_2_bits_idx ? meta_array_37_3_coh_state : _GEN_1391; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1393 = 6'h26 == io_read_2_bits_idx ? meta_array_38_3_coh_state : _GEN_1392; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1394 = 6'h27 == io_read_2_bits_idx ? meta_array_39_3_coh_state : _GEN_1393; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1395 = 6'h28 == io_read_2_bits_idx ? meta_array_40_3_coh_state : _GEN_1394; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1396 = 6'h29 == io_read_2_bits_idx ? meta_array_41_3_coh_state : _GEN_1395; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1397 = 6'h2a == io_read_2_bits_idx ? meta_array_42_3_coh_state : _GEN_1396; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1398 = 6'h2b == io_read_2_bits_idx ? meta_array_43_3_coh_state : _GEN_1397; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1399 = 6'h2c == io_read_2_bits_idx ? meta_array_44_3_coh_state : _GEN_1398; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1400 = 6'h2d == io_read_2_bits_idx ? meta_array_45_3_coh_state : _GEN_1399; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1401 = 6'h2e == io_read_2_bits_idx ? meta_array_46_3_coh_state : _GEN_1400; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1402 = 6'h2f == io_read_2_bits_idx ? meta_array_47_3_coh_state : _GEN_1401; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1403 = 6'h30 == io_read_2_bits_idx ? meta_array_48_3_coh_state : _GEN_1402; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1404 = 6'h31 == io_read_2_bits_idx ? meta_array_49_3_coh_state : _GEN_1403; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1405 = 6'h32 == io_read_2_bits_idx ? meta_array_50_3_coh_state : _GEN_1404; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1406 = 6'h33 == io_read_2_bits_idx ? meta_array_51_3_coh_state : _GEN_1405; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1407 = 6'h34 == io_read_2_bits_idx ? meta_array_52_3_coh_state : _GEN_1406; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1408 = 6'h35 == io_read_2_bits_idx ? meta_array_53_3_coh_state : _GEN_1407; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1409 = 6'h36 == io_read_2_bits_idx ? meta_array_54_3_coh_state : _GEN_1408; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1410 = 6'h37 == io_read_2_bits_idx ? meta_array_55_3_coh_state : _GEN_1409; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1411 = 6'h38 == io_read_2_bits_idx ? meta_array_56_3_coh_state : _GEN_1410; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1412 = 6'h39 == io_read_2_bits_idx ? meta_array_57_3_coh_state : _GEN_1411; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1413 = 6'h3a == io_read_2_bits_idx ? meta_array_58_3_coh_state : _GEN_1412; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1414 = 6'h3b == io_read_2_bits_idx ? meta_array_59_3_coh_state : _GEN_1413; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1415 = 6'h3c == io_read_2_bits_idx ? meta_array_60_3_coh_state : _GEN_1414; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_20 = s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_2_bits_idx | s1_way_wen_4_0_REG &
    s1_way_waddr_4_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_4_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_4_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_4_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1427 = 6'h1 == io_read_2_bits_idx ? meta_array_1_4_coh_state : meta_array_0_4_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1428 = 6'h2 == io_read_2_bits_idx ? meta_array_2_4_coh_state : _GEN_1427; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1429 = 6'h3 == io_read_2_bits_idx ? meta_array_3_4_coh_state : _GEN_1428; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1430 = 6'h4 == io_read_2_bits_idx ? meta_array_4_4_coh_state : _GEN_1429; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1431 = 6'h5 == io_read_2_bits_idx ? meta_array_5_4_coh_state : _GEN_1430; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1432 = 6'h6 == io_read_2_bits_idx ? meta_array_6_4_coh_state : _GEN_1431; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1433 = 6'h7 == io_read_2_bits_idx ? meta_array_7_4_coh_state : _GEN_1432; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1434 = 6'h8 == io_read_2_bits_idx ? meta_array_8_4_coh_state : _GEN_1433; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1435 = 6'h9 == io_read_2_bits_idx ? meta_array_9_4_coh_state : _GEN_1434; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1436 = 6'ha == io_read_2_bits_idx ? meta_array_10_4_coh_state : _GEN_1435; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1437 = 6'hb == io_read_2_bits_idx ? meta_array_11_4_coh_state : _GEN_1436; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1438 = 6'hc == io_read_2_bits_idx ? meta_array_12_4_coh_state : _GEN_1437; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1439 = 6'hd == io_read_2_bits_idx ? meta_array_13_4_coh_state : _GEN_1438; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1440 = 6'he == io_read_2_bits_idx ? meta_array_14_4_coh_state : _GEN_1439; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1441 = 6'hf == io_read_2_bits_idx ? meta_array_15_4_coh_state : _GEN_1440; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1442 = 6'h10 == io_read_2_bits_idx ? meta_array_16_4_coh_state : _GEN_1441; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1443 = 6'h11 == io_read_2_bits_idx ? meta_array_17_4_coh_state : _GEN_1442; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1444 = 6'h12 == io_read_2_bits_idx ? meta_array_18_4_coh_state : _GEN_1443; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1445 = 6'h13 == io_read_2_bits_idx ? meta_array_19_4_coh_state : _GEN_1444; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1446 = 6'h14 == io_read_2_bits_idx ? meta_array_20_4_coh_state : _GEN_1445; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1447 = 6'h15 == io_read_2_bits_idx ? meta_array_21_4_coh_state : _GEN_1446; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1448 = 6'h16 == io_read_2_bits_idx ? meta_array_22_4_coh_state : _GEN_1447; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1449 = 6'h17 == io_read_2_bits_idx ? meta_array_23_4_coh_state : _GEN_1448; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1450 = 6'h18 == io_read_2_bits_idx ? meta_array_24_4_coh_state : _GEN_1449; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1451 = 6'h19 == io_read_2_bits_idx ? meta_array_25_4_coh_state : _GEN_1450; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1452 = 6'h1a == io_read_2_bits_idx ? meta_array_26_4_coh_state : _GEN_1451; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1453 = 6'h1b == io_read_2_bits_idx ? meta_array_27_4_coh_state : _GEN_1452; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1454 = 6'h1c == io_read_2_bits_idx ? meta_array_28_4_coh_state : _GEN_1453; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1455 = 6'h1d == io_read_2_bits_idx ? meta_array_29_4_coh_state : _GEN_1454; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1456 = 6'h1e == io_read_2_bits_idx ? meta_array_30_4_coh_state : _GEN_1455; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1457 = 6'h1f == io_read_2_bits_idx ? meta_array_31_4_coh_state : _GEN_1456; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1458 = 6'h20 == io_read_2_bits_idx ? meta_array_32_4_coh_state : _GEN_1457; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1459 = 6'h21 == io_read_2_bits_idx ? meta_array_33_4_coh_state : _GEN_1458; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1460 = 6'h22 == io_read_2_bits_idx ? meta_array_34_4_coh_state : _GEN_1459; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1461 = 6'h23 == io_read_2_bits_idx ? meta_array_35_4_coh_state : _GEN_1460; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1462 = 6'h24 == io_read_2_bits_idx ? meta_array_36_4_coh_state : _GEN_1461; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1463 = 6'h25 == io_read_2_bits_idx ? meta_array_37_4_coh_state : _GEN_1462; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1464 = 6'h26 == io_read_2_bits_idx ? meta_array_38_4_coh_state : _GEN_1463; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1465 = 6'h27 == io_read_2_bits_idx ? meta_array_39_4_coh_state : _GEN_1464; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1466 = 6'h28 == io_read_2_bits_idx ? meta_array_40_4_coh_state : _GEN_1465; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1467 = 6'h29 == io_read_2_bits_idx ? meta_array_41_4_coh_state : _GEN_1466; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1468 = 6'h2a == io_read_2_bits_idx ? meta_array_42_4_coh_state : _GEN_1467; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1469 = 6'h2b == io_read_2_bits_idx ? meta_array_43_4_coh_state : _GEN_1468; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1470 = 6'h2c == io_read_2_bits_idx ? meta_array_44_4_coh_state : _GEN_1469; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1471 = 6'h2d == io_read_2_bits_idx ? meta_array_45_4_coh_state : _GEN_1470; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1472 = 6'h2e == io_read_2_bits_idx ? meta_array_46_4_coh_state : _GEN_1471; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1473 = 6'h2f == io_read_2_bits_idx ? meta_array_47_4_coh_state : _GEN_1472; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1474 = 6'h30 == io_read_2_bits_idx ? meta_array_48_4_coh_state : _GEN_1473; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1475 = 6'h31 == io_read_2_bits_idx ? meta_array_49_4_coh_state : _GEN_1474; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1476 = 6'h32 == io_read_2_bits_idx ? meta_array_50_4_coh_state : _GEN_1475; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1477 = 6'h33 == io_read_2_bits_idx ? meta_array_51_4_coh_state : _GEN_1476; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1478 = 6'h34 == io_read_2_bits_idx ? meta_array_52_4_coh_state : _GEN_1477; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1479 = 6'h35 == io_read_2_bits_idx ? meta_array_53_4_coh_state : _GEN_1478; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1480 = 6'h36 == io_read_2_bits_idx ? meta_array_54_4_coh_state : _GEN_1479; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1481 = 6'h37 == io_read_2_bits_idx ? meta_array_55_4_coh_state : _GEN_1480; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1482 = 6'h38 == io_read_2_bits_idx ? meta_array_56_4_coh_state : _GEN_1481; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1483 = 6'h39 == io_read_2_bits_idx ? meta_array_57_4_coh_state : _GEN_1482; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1484 = 6'h3a == io_read_2_bits_idx ? meta_array_58_4_coh_state : _GEN_1483; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1485 = 6'h3b == io_read_2_bits_idx ? meta_array_59_4_coh_state : _GEN_1484; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1486 = 6'h3c == io_read_2_bits_idx ? meta_array_60_4_coh_state : _GEN_1485; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_21 = s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_2_bits_idx | s1_way_wen_5_0_REG &
    s1_way_waddr_5_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_5_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_5_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_5_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1498 = 6'h1 == io_read_2_bits_idx ? meta_array_1_5_coh_state : meta_array_0_5_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1499 = 6'h2 == io_read_2_bits_idx ? meta_array_2_5_coh_state : _GEN_1498; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1500 = 6'h3 == io_read_2_bits_idx ? meta_array_3_5_coh_state : _GEN_1499; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1501 = 6'h4 == io_read_2_bits_idx ? meta_array_4_5_coh_state : _GEN_1500; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1502 = 6'h5 == io_read_2_bits_idx ? meta_array_5_5_coh_state : _GEN_1501; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1503 = 6'h6 == io_read_2_bits_idx ? meta_array_6_5_coh_state : _GEN_1502; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1504 = 6'h7 == io_read_2_bits_idx ? meta_array_7_5_coh_state : _GEN_1503; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1505 = 6'h8 == io_read_2_bits_idx ? meta_array_8_5_coh_state : _GEN_1504; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1506 = 6'h9 == io_read_2_bits_idx ? meta_array_9_5_coh_state : _GEN_1505; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1507 = 6'ha == io_read_2_bits_idx ? meta_array_10_5_coh_state : _GEN_1506; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1508 = 6'hb == io_read_2_bits_idx ? meta_array_11_5_coh_state : _GEN_1507; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1509 = 6'hc == io_read_2_bits_idx ? meta_array_12_5_coh_state : _GEN_1508; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1510 = 6'hd == io_read_2_bits_idx ? meta_array_13_5_coh_state : _GEN_1509; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1511 = 6'he == io_read_2_bits_idx ? meta_array_14_5_coh_state : _GEN_1510; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1512 = 6'hf == io_read_2_bits_idx ? meta_array_15_5_coh_state : _GEN_1511; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1513 = 6'h10 == io_read_2_bits_idx ? meta_array_16_5_coh_state : _GEN_1512; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1514 = 6'h11 == io_read_2_bits_idx ? meta_array_17_5_coh_state : _GEN_1513; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1515 = 6'h12 == io_read_2_bits_idx ? meta_array_18_5_coh_state : _GEN_1514; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1516 = 6'h13 == io_read_2_bits_idx ? meta_array_19_5_coh_state : _GEN_1515; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1517 = 6'h14 == io_read_2_bits_idx ? meta_array_20_5_coh_state : _GEN_1516; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1518 = 6'h15 == io_read_2_bits_idx ? meta_array_21_5_coh_state : _GEN_1517; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1519 = 6'h16 == io_read_2_bits_idx ? meta_array_22_5_coh_state : _GEN_1518; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1520 = 6'h17 == io_read_2_bits_idx ? meta_array_23_5_coh_state : _GEN_1519; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1521 = 6'h18 == io_read_2_bits_idx ? meta_array_24_5_coh_state : _GEN_1520; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1522 = 6'h19 == io_read_2_bits_idx ? meta_array_25_5_coh_state : _GEN_1521; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1523 = 6'h1a == io_read_2_bits_idx ? meta_array_26_5_coh_state : _GEN_1522; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1524 = 6'h1b == io_read_2_bits_idx ? meta_array_27_5_coh_state : _GEN_1523; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1525 = 6'h1c == io_read_2_bits_idx ? meta_array_28_5_coh_state : _GEN_1524; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1526 = 6'h1d == io_read_2_bits_idx ? meta_array_29_5_coh_state : _GEN_1525; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1527 = 6'h1e == io_read_2_bits_idx ? meta_array_30_5_coh_state : _GEN_1526; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1528 = 6'h1f == io_read_2_bits_idx ? meta_array_31_5_coh_state : _GEN_1527; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1529 = 6'h20 == io_read_2_bits_idx ? meta_array_32_5_coh_state : _GEN_1528; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1530 = 6'h21 == io_read_2_bits_idx ? meta_array_33_5_coh_state : _GEN_1529; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1531 = 6'h22 == io_read_2_bits_idx ? meta_array_34_5_coh_state : _GEN_1530; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1532 = 6'h23 == io_read_2_bits_idx ? meta_array_35_5_coh_state : _GEN_1531; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1533 = 6'h24 == io_read_2_bits_idx ? meta_array_36_5_coh_state : _GEN_1532; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1534 = 6'h25 == io_read_2_bits_idx ? meta_array_37_5_coh_state : _GEN_1533; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1535 = 6'h26 == io_read_2_bits_idx ? meta_array_38_5_coh_state : _GEN_1534; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1536 = 6'h27 == io_read_2_bits_idx ? meta_array_39_5_coh_state : _GEN_1535; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1537 = 6'h28 == io_read_2_bits_idx ? meta_array_40_5_coh_state : _GEN_1536; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1538 = 6'h29 == io_read_2_bits_idx ? meta_array_41_5_coh_state : _GEN_1537; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1539 = 6'h2a == io_read_2_bits_idx ? meta_array_42_5_coh_state : _GEN_1538; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1540 = 6'h2b == io_read_2_bits_idx ? meta_array_43_5_coh_state : _GEN_1539; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1541 = 6'h2c == io_read_2_bits_idx ? meta_array_44_5_coh_state : _GEN_1540; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1542 = 6'h2d == io_read_2_bits_idx ? meta_array_45_5_coh_state : _GEN_1541; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1543 = 6'h2e == io_read_2_bits_idx ? meta_array_46_5_coh_state : _GEN_1542; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1544 = 6'h2f == io_read_2_bits_idx ? meta_array_47_5_coh_state : _GEN_1543; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1545 = 6'h30 == io_read_2_bits_idx ? meta_array_48_5_coh_state : _GEN_1544; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1546 = 6'h31 == io_read_2_bits_idx ? meta_array_49_5_coh_state : _GEN_1545; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1547 = 6'h32 == io_read_2_bits_idx ? meta_array_50_5_coh_state : _GEN_1546; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1548 = 6'h33 == io_read_2_bits_idx ? meta_array_51_5_coh_state : _GEN_1547; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1549 = 6'h34 == io_read_2_bits_idx ? meta_array_52_5_coh_state : _GEN_1548; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1550 = 6'h35 == io_read_2_bits_idx ? meta_array_53_5_coh_state : _GEN_1549; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1551 = 6'h36 == io_read_2_bits_idx ? meta_array_54_5_coh_state : _GEN_1550; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1552 = 6'h37 == io_read_2_bits_idx ? meta_array_55_5_coh_state : _GEN_1551; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1553 = 6'h38 == io_read_2_bits_idx ? meta_array_56_5_coh_state : _GEN_1552; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1554 = 6'h39 == io_read_2_bits_idx ? meta_array_57_5_coh_state : _GEN_1553; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1555 = 6'h3a == io_read_2_bits_idx ? meta_array_58_5_coh_state : _GEN_1554; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1556 = 6'h3b == io_read_2_bits_idx ? meta_array_59_5_coh_state : _GEN_1555; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1557 = 6'h3c == io_read_2_bits_idx ? meta_array_60_5_coh_state : _GEN_1556; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_22 = s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_2_bits_idx | s1_way_wen_6_0_REG &
    s1_way_waddr_6_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_6_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_6_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_6_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1569 = 6'h1 == io_read_2_bits_idx ? meta_array_1_6_coh_state : meta_array_0_6_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1570 = 6'h2 == io_read_2_bits_idx ? meta_array_2_6_coh_state : _GEN_1569; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1571 = 6'h3 == io_read_2_bits_idx ? meta_array_3_6_coh_state : _GEN_1570; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1572 = 6'h4 == io_read_2_bits_idx ? meta_array_4_6_coh_state : _GEN_1571; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1573 = 6'h5 == io_read_2_bits_idx ? meta_array_5_6_coh_state : _GEN_1572; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1574 = 6'h6 == io_read_2_bits_idx ? meta_array_6_6_coh_state : _GEN_1573; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1575 = 6'h7 == io_read_2_bits_idx ? meta_array_7_6_coh_state : _GEN_1574; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1576 = 6'h8 == io_read_2_bits_idx ? meta_array_8_6_coh_state : _GEN_1575; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1577 = 6'h9 == io_read_2_bits_idx ? meta_array_9_6_coh_state : _GEN_1576; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1578 = 6'ha == io_read_2_bits_idx ? meta_array_10_6_coh_state : _GEN_1577; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1579 = 6'hb == io_read_2_bits_idx ? meta_array_11_6_coh_state : _GEN_1578; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1580 = 6'hc == io_read_2_bits_idx ? meta_array_12_6_coh_state : _GEN_1579; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1581 = 6'hd == io_read_2_bits_idx ? meta_array_13_6_coh_state : _GEN_1580; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1582 = 6'he == io_read_2_bits_idx ? meta_array_14_6_coh_state : _GEN_1581; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1583 = 6'hf == io_read_2_bits_idx ? meta_array_15_6_coh_state : _GEN_1582; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1584 = 6'h10 == io_read_2_bits_idx ? meta_array_16_6_coh_state : _GEN_1583; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1585 = 6'h11 == io_read_2_bits_idx ? meta_array_17_6_coh_state : _GEN_1584; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1586 = 6'h12 == io_read_2_bits_idx ? meta_array_18_6_coh_state : _GEN_1585; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1587 = 6'h13 == io_read_2_bits_idx ? meta_array_19_6_coh_state : _GEN_1586; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1588 = 6'h14 == io_read_2_bits_idx ? meta_array_20_6_coh_state : _GEN_1587; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1589 = 6'h15 == io_read_2_bits_idx ? meta_array_21_6_coh_state : _GEN_1588; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1590 = 6'h16 == io_read_2_bits_idx ? meta_array_22_6_coh_state : _GEN_1589; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1591 = 6'h17 == io_read_2_bits_idx ? meta_array_23_6_coh_state : _GEN_1590; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1592 = 6'h18 == io_read_2_bits_idx ? meta_array_24_6_coh_state : _GEN_1591; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1593 = 6'h19 == io_read_2_bits_idx ? meta_array_25_6_coh_state : _GEN_1592; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1594 = 6'h1a == io_read_2_bits_idx ? meta_array_26_6_coh_state : _GEN_1593; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1595 = 6'h1b == io_read_2_bits_idx ? meta_array_27_6_coh_state : _GEN_1594; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1596 = 6'h1c == io_read_2_bits_idx ? meta_array_28_6_coh_state : _GEN_1595; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1597 = 6'h1d == io_read_2_bits_idx ? meta_array_29_6_coh_state : _GEN_1596; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1598 = 6'h1e == io_read_2_bits_idx ? meta_array_30_6_coh_state : _GEN_1597; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1599 = 6'h1f == io_read_2_bits_idx ? meta_array_31_6_coh_state : _GEN_1598; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1600 = 6'h20 == io_read_2_bits_idx ? meta_array_32_6_coh_state : _GEN_1599; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1601 = 6'h21 == io_read_2_bits_idx ? meta_array_33_6_coh_state : _GEN_1600; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1602 = 6'h22 == io_read_2_bits_idx ? meta_array_34_6_coh_state : _GEN_1601; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1603 = 6'h23 == io_read_2_bits_idx ? meta_array_35_6_coh_state : _GEN_1602; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1604 = 6'h24 == io_read_2_bits_idx ? meta_array_36_6_coh_state : _GEN_1603; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1605 = 6'h25 == io_read_2_bits_idx ? meta_array_37_6_coh_state : _GEN_1604; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1606 = 6'h26 == io_read_2_bits_idx ? meta_array_38_6_coh_state : _GEN_1605; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1607 = 6'h27 == io_read_2_bits_idx ? meta_array_39_6_coh_state : _GEN_1606; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1608 = 6'h28 == io_read_2_bits_idx ? meta_array_40_6_coh_state : _GEN_1607; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1609 = 6'h29 == io_read_2_bits_idx ? meta_array_41_6_coh_state : _GEN_1608; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1610 = 6'h2a == io_read_2_bits_idx ? meta_array_42_6_coh_state : _GEN_1609; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1611 = 6'h2b == io_read_2_bits_idx ? meta_array_43_6_coh_state : _GEN_1610; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1612 = 6'h2c == io_read_2_bits_idx ? meta_array_44_6_coh_state : _GEN_1611; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1613 = 6'h2d == io_read_2_bits_idx ? meta_array_45_6_coh_state : _GEN_1612; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1614 = 6'h2e == io_read_2_bits_idx ? meta_array_46_6_coh_state : _GEN_1613; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1615 = 6'h2f == io_read_2_bits_idx ? meta_array_47_6_coh_state : _GEN_1614; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1616 = 6'h30 == io_read_2_bits_idx ? meta_array_48_6_coh_state : _GEN_1615; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1617 = 6'h31 == io_read_2_bits_idx ? meta_array_49_6_coh_state : _GEN_1616; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1618 = 6'h32 == io_read_2_bits_idx ? meta_array_50_6_coh_state : _GEN_1617; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1619 = 6'h33 == io_read_2_bits_idx ? meta_array_51_6_coh_state : _GEN_1618; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1620 = 6'h34 == io_read_2_bits_idx ? meta_array_52_6_coh_state : _GEN_1619; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1621 = 6'h35 == io_read_2_bits_idx ? meta_array_53_6_coh_state : _GEN_1620; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1622 = 6'h36 == io_read_2_bits_idx ? meta_array_54_6_coh_state : _GEN_1621; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1623 = 6'h37 == io_read_2_bits_idx ? meta_array_55_6_coh_state : _GEN_1622; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1624 = 6'h38 == io_read_2_bits_idx ? meta_array_56_6_coh_state : _GEN_1623; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1625 = 6'h39 == io_read_2_bits_idx ? meta_array_57_6_coh_state : _GEN_1624; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1626 = 6'h3a == io_read_2_bits_idx ? meta_array_58_6_coh_state : _GEN_1625; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1627 = 6'h3b == io_read_2_bits_idx ? meta_array_59_6_coh_state : _GEN_1626; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1628 = 6'h3c == io_read_2_bits_idx ? meta_array_60_6_coh_state : _GEN_1627; // @[Reg.scala 17:{22,22}]
  wire  read_way_bypass_23 = s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_2_bits_idx | s1_way_wen_7_0_REG &
    s1_way_waddr_7_0_r == io_read_2_bits_idx; // @[AsynchronousMetaArray.scala 77:85 78:29]
  reg  io_resp_2_7_r; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_7_r1_coh_state; // @[Reg.scala 16:16]
  reg [1:0] io_resp_2_7_r2_coh_state; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1640 = 6'h1 == io_read_2_bits_idx ? meta_array_1_7_coh_state : meta_array_0_7_coh_state; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1641 = 6'h2 == io_read_2_bits_idx ? meta_array_2_7_coh_state : _GEN_1640; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1642 = 6'h3 == io_read_2_bits_idx ? meta_array_3_7_coh_state : _GEN_1641; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1643 = 6'h4 == io_read_2_bits_idx ? meta_array_4_7_coh_state : _GEN_1642; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1644 = 6'h5 == io_read_2_bits_idx ? meta_array_5_7_coh_state : _GEN_1643; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1645 = 6'h6 == io_read_2_bits_idx ? meta_array_6_7_coh_state : _GEN_1644; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1646 = 6'h7 == io_read_2_bits_idx ? meta_array_7_7_coh_state : _GEN_1645; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1647 = 6'h8 == io_read_2_bits_idx ? meta_array_8_7_coh_state : _GEN_1646; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1648 = 6'h9 == io_read_2_bits_idx ? meta_array_9_7_coh_state : _GEN_1647; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1649 = 6'ha == io_read_2_bits_idx ? meta_array_10_7_coh_state : _GEN_1648; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1650 = 6'hb == io_read_2_bits_idx ? meta_array_11_7_coh_state : _GEN_1649; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1651 = 6'hc == io_read_2_bits_idx ? meta_array_12_7_coh_state : _GEN_1650; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1652 = 6'hd == io_read_2_bits_idx ? meta_array_13_7_coh_state : _GEN_1651; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1653 = 6'he == io_read_2_bits_idx ? meta_array_14_7_coh_state : _GEN_1652; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1654 = 6'hf == io_read_2_bits_idx ? meta_array_15_7_coh_state : _GEN_1653; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1655 = 6'h10 == io_read_2_bits_idx ? meta_array_16_7_coh_state : _GEN_1654; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1656 = 6'h11 == io_read_2_bits_idx ? meta_array_17_7_coh_state : _GEN_1655; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1657 = 6'h12 == io_read_2_bits_idx ? meta_array_18_7_coh_state : _GEN_1656; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1658 = 6'h13 == io_read_2_bits_idx ? meta_array_19_7_coh_state : _GEN_1657; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1659 = 6'h14 == io_read_2_bits_idx ? meta_array_20_7_coh_state : _GEN_1658; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1660 = 6'h15 == io_read_2_bits_idx ? meta_array_21_7_coh_state : _GEN_1659; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1661 = 6'h16 == io_read_2_bits_idx ? meta_array_22_7_coh_state : _GEN_1660; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1662 = 6'h17 == io_read_2_bits_idx ? meta_array_23_7_coh_state : _GEN_1661; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1663 = 6'h18 == io_read_2_bits_idx ? meta_array_24_7_coh_state : _GEN_1662; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1664 = 6'h19 == io_read_2_bits_idx ? meta_array_25_7_coh_state : _GEN_1663; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1665 = 6'h1a == io_read_2_bits_idx ? meta_array_26_7_coh_state : _GEN_1664; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1666 = 6'h1b == io_read_2_bits_idx ? meta_array_27_7_coh_state : _GEN_1665; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1667 = 6'h1c == io_read_2_bits_idx ? meta_array_28_7_coh_state : _GEN_1666; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1668 = 6'h1d == io_read_2_bits_idx ? meta_array_29_7_coh_state : _GEN_1667; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1669 = 6'h1e == io_read_2_bits_idx ? meta_array_30_7_coh_state : _GEN_1668; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1670 = 6'h1f == io_read_2_bits_idx ? meta_array_31_7_coh_state : _GEN_1669; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1671 = 6'h20 == io_read_2_bits_idx ? meta_array_32_7_coh_state : _GEN_1670; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1672 = 6'h21 == io_read_2_bits_idx ? meta_array_33_7_coh_state : _GEN_1671; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1673 = 6'h22 == io_read_2_bits_idx ? meta_array_34_7_coh_state : _GEN_1672; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1674 = 6'h23 == io_read_2_bits_idx ? meta_array_35_7_coh_state : _GEN_1673; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1675 = 6'h24 == io_read_2_bits_idx ? meta_array_36_7_coh_state : _GEN_1674; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1676 = 6'h25 == io_read_2_bits_idx ? meta_array_37_7_coh_state : _GEN_1675; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1677 = 6'h26 == io_read_2_bits_idx ? meta_array_38_7_coh_state : _GEN_1676; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1678 = 6'h27 == io_read_2_bits_idx ? meta_array_39_7_coh_state : _GEN_1677; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1679 = 6'h28 == io_read_2_bits_idx ? meta_array_40_7_coh_state : _GEN_1678; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1680 = 6'h29 == io_read_2_bits_idx ? meta_array_41_7_coh_state : _GEN_1679; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1681 = 6'h2a == io_read_2_bits_idx ? meta_array_42_7_coh_state : _GEN_1680; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1682 = 6'h2b == io_read_2_bits_idx ? meta_array_43_7_coh_state : _GEN_1681; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1683 = 6'h2c == io_read_2_bits_idx ? meta_array_44_7_coh_state : _GEN_1682; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1684 = 6'h2d == io_read_2_bits_idx ? meta_array_45_7_coh_state : _GEN_1683; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1685 = 6'h2e == io_read_2_bits_idx ? meta_array_46_7_coh_state : _GEN_1684; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1686 = 6'h2f == io_read_2_bits_idx ? meta_array_47_7_coh_state : _GEN_1685; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1687 = 6'h30 == io_read_2_bits_idx ? meta_array_48_7_coh_state : _GEN_1686; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1688 = 6'h31 == io_read_2_bits_idx ? meta_array_49_7_coh_state : _GEN_1687; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1689 = 6'h32 == io_read_2_bits_idx ? meta_array_50_7_coh_state : _GEN_1688; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1690 = 6'h33 == io_read_2_bits_idx ? meta_array_51_7_coh_state : _GEN_1689; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1691 = 6'h34 == io_read_2_bits_idx ? meta_array_52_7_coh_state : _GEN_1690; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1692 = 6'h35 == io_read_2_bits_idx ? meta_array_53_7_coh_state : _GEN_1691; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1693 = 6'h36 == io_read_2_bits_idx ? meta_array_54_7_coh_state : _GEN_1692; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1694 = 6'h37 == io_read_2_bits_idx ? meta_array_55_7_coh_state : _GEN_1693; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1695 = 6'h38 == io_read_2_bits_idx ? meta_array_56_7_coh_state : _GEN_1694; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1696 = 6'h39 == io_read_2_bits_idx ? meta_array_57_7_coh_state : _GEN_1695; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1697 = 6'h3a == io_read_2_bits_idx ? meta_array_58_7_coh_state : _GEN_1696; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1698 = 6'h3b == io_read_2_bits_idx ? meta_array_59_7_coh_state : _GEN_1697; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1699 = 6'h3c == io_read_2_bits_idx ? meta_array_60_7_coh_state : _GEN_1698; // @[Reg.scala 17:{22,22}]
  wire  s0_way_wen_0_0 = io_write_0_valid & io_write_0_bits_way_en[0]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_1706 = 6'h0 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_0_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1707 = 6'h1 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_1_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1708 = 6'h2 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_2_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1709 = 6'h3 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_3_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1710 = 6'h4 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_4_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1711 = 6'h5 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_5_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1712 = 6'h6 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_6_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1713 = 6'h7 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_7_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1714 = 6'h8 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_8_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1715 = 6'h9 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_9_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1716 = 6'ha == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_10_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1717 = 6'hb == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_11_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1718 = 6'hc == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_12_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1719 = 6'hd == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_13_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1720 = 6'he == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_14_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1721 = 6'hf == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_15_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1722 = 6'h10 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_16_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1723 = 6'h11 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_17_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1724 = 6'h12 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_18_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1725 = 6'h13 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_19_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1726 = 6'h14 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_20_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1727 = 6'h15 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_21_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1728 = 6'h16 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_22_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1729 = 6'h17 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_23_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1730 = 6'h18 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_24_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1731 = 6'h19 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_25_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1732 = 6'h1a == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_26_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1733 = 6'h1b == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_27_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1734 = 6'h1c == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_28_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1735 = 6'h1d == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_29_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1736 = 6'h1e == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_30_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1737 = 6'h1f == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_31_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1738 = 6'h20 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_32_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1739 = 6'h21 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_33_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1740 = 6'h22 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_34_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1741 = 6'h23 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_35_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1742 = 6'h24 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_36_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1743 = 6'h25 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_37_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1744 = 6'h26 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_38_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1745 = 6'h27 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_39_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1746 = 6'h28 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_40_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1747 = 6'h29 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_41_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1748 = 6'h2a == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_42_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1749 = 6'h2b == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_43_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1750 = 6'h2c == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_44_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1751 = 6'h2d == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_45_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1752 = 6'h2e == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_46_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1753 = 6'h2f == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_47_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1754 = 6'h30 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_48_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1755 = 6'h31 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_49_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1756 = 6'h32 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_50_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1757 = 6'h33 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_51_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1758 = 6'h34 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_52_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1759 = 6'h35 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_53_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1760 = 6'h36 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_54_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1761 = 6'h37 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_55_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1762 = 6'h38 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_56_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1763 = 6'h39 == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_57_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1764 = 6'h3a == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_58_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1765 = 6'h3b == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_59_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1766 = 6'h3c == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_60_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1767 = 6'h3d == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_61_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1768 = 6'h3e == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_62_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1769 = 6'h3f == s1_way_waddr_0_0_r ? s1_way_wdata_0_0_rcoh_state : meta_array_63_0_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1770 = s1_way_wen_0_0_REG ? _GEN_1706 : meta_array_0_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1771 = s1_way_wen_0_0_REG ? _GEN_1707 : meta_array_1_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1772 = s1_way_wen_0_0_REG ? _GEN_1708 : meta_array_2_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1773 = s1_way_wen_0_0_REG ? _GEN_1709 : meta_array_3_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1774 = s1_way_wen_0_0_REG ? _GEN_1710 : meta_array_4_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1775 = s1_way_wen_0_0_REG ? _GEN_1711 : meta_array_5_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1776 = s1_way_wen_0_0_REG ? _GEN_1712 : meta_array_6_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1777 = s1_way_wen_0_0_REG ? _GEN_1713 : meta_array_7_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1778 = s1_way_wen_0_0_REG ? _GEN_1714 : meta_array_8_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1779 = s1_way_wen_0_0_REG ? _GEN_1715 : meta_array_9_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1780 = s1_way_wen_0_0_REG ? _GEN_1716 : meta_array_10_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1781 = s1_way_wen_0_0_REG ? _GEN_1717 : meta_array_11_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1782 = s1_way_wen_0_0_REG ? _GEN_1718 : meta_array_12_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1783 = s1_way_wen_0_0_REG ? _GEN_1719 : meta_array_13_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1784 = s1_way_wen_0_0_REG ? _GEN_1720 : meta_array_14_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1785 = s1_way_wen_0_0_REG ? _GEN_1721 : meta_array_15_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1786 = s1_way_wen_0_0_REG ? _GEN_1722 : meta_array_16_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1787 = s1_way_wen_0_0_REG ? _GEN_1723 : meta_array_17_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1788 = s1_way_wen_0_0_REG ? _GEN_1724 : meta_array_18_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1789 = s1_way_wen_0_0_REG ? _GEN_1725 : meta_array_19_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1790 = s1_way_wen_0_0_REG ? _GEN_1726 : meta_array_20_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1791 = s1_way_wen_0_0_REG ? _GEN_1727 : meta_array_21_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1792 = s1_way_wen_0_0_REG ? _GEN_1728 : meta_array_22_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1793 = s1_way_wen_0_0_REG ? _GEN_1729 : meta_array_23_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1794 = s1_way_wen_0_0_REG ? _GEN_1730 : meta_array_24_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1795 = s1_way_wen_0_0_REG ? _GEN_1731 : meta_array_25_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1796 = s1_way_wen_0_0_REG ? _GEN_1732 : meta_array_26_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1797 = s1_way_wen_0_0_REG ? _GEN_1733 : meta_array_27_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1798 = s1_way_wen_0_0_REG ? _GEN_1734 : meta_array_28_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1799 = s1_way_wen_0_0_REG ? _GEN_1735 : meta_array_29_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1800 = s1_way_wen_0_0_REG ? _GEN_1736 : meta_array_30_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1801 = s1_way_wen_0_0_REG ? _GEN_1737 : meta_array_31_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1802 = s1_way_wen_0_0_REG ? _GEN_1738 : meta_array_32_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1803 = s1_way_wen_0_0_REG ? _GEN_1739 : meta_array_33_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1804 = s1_way_wen_0_0_REG ? _GEN_1740 : meta_array_34_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1805 = s1_way_wen_0_0_REG ? _GEN_1741 : meta_array_35_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1806 = s1_way_wen_0_0_REG ? _GEN_1742 : meta_array_36_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1807 = s1_way_wen_0_0_REG ? _GEN_1743 : meta_array_37_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1808 = s1_way_wen_0_0_REG ? _GEN_1744 : meta_array_38_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1809 = s1_way_wen_0_0_REG ? _GEN_1745 : meta_array_39_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1810 = s1_way_wen_0_0_REG ? _GEN_1746 : meta_array_40_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1811 = s1_way_wen_0_0_REG ? _GEN_1747 : meta_array_41_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1812 = s1_way_wen_0_0_REG ? _GEN_1748 : meta_array_42_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1813 = s1_way_wen_0_0_REG ? _GEN_1749 : meta_array_43_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1814 = s1_way_wen_0_0_REG ? _GEN_1750 : meta_array_44_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1815 = s1_way_wen_0_0_REG ? _GEN_1751 : meta_array_45_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1816 = s1_way_wen_0_0_REG ? _GEN_1752 : meta_array_46_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1817 = s1_way_wen_0_0_REG ? _GEN_1753 : meta_array_47_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1818 = s1_way_wen_0_0_REG ? _GEN_1754 : meta_array_48_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1819 = s1_way_wen_0_0_REG ? _GEN_1755 : meta_array_49_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1820 = s1_way_wen_0_0_REG ? _GEN_1756 : meta_array_50_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1821 = s1_way_wen_0_0_REG ? _GEN_1757 : meta_array_51_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1822 = s1_way_wen_0_0_REG ? _GEN_1758 : meta_array_52_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1823 = s1_way_wen_0_0_REG ? _GEN_1759 : meta_array_53_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1824 = s1_way_wen_0_0_REG ? _GEN_1760 : meta_array_54_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1825 = s1_way_wen_0_0_REG ? _GEN_1761 : meta_array_55_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1826 = s1_way_wen_0_0_REG ? _GEN_1762 : meta_array_56_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1827 = s1_way_wen_0_0_REG ? _GEN_1763 : meta_array_57_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1828 = s1_way_wen_0_0_REG ? _GEN_1764 : meta_array_58_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1829 = s1_way_wen_0_0_REG ? _GEN_1765 : meta_array_59_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1830 = s1_way_wen_0_0_REG ? _GEN_1766 : meta_array_60_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1831 = s1_way_wen_0_0_REG ? _GEN_1767 : meta_array_61_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1832 = s1_way_wen_0_0_REG ? _GEN_1768 : meta_array_62_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1833 = s1_way_wen_0_0_REG ? _GEN_1769 : meta_array_63_0_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_1_0 = io_write_0_valid & io_write_0_bits_way_en[1]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_1836 = 6'h0 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_0_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1837 = 6'h1 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_1_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1838 = 6'h2 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_2_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1839 = 6'h3 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_3_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1840 = 6'h4 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_4_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1841 = 6'h5 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_5_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1842 = 6'h6 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_6_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1843 = 6'h7 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_7_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1844 = 6'h8 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_8_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1845 = 6'h9 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_9_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1846 = 6'ha == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_10_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1847 = 6'hb == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_11_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1848 = 6'hc == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_12_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1849 = 6'hd == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_13_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1850 = 6'he == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_14_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1851 = 6'hf == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_15_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1852 = 6'h10 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_16_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1853 = 6'h11 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_17_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1854 = 6'h12 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_18_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1855 = 6'h13 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_19_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1856 = 6'h14 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_20_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1857 = 6'h15 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_21_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1858 = 6'h16 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_22_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1859 = 6'h17 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_23_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1860 = 6'h18 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_24_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1861 = 6'h19 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_25_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1862 = 6'h1a == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_26_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1863 = 6'h1b == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_27_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1864 = 6'h1c == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_28_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1865 = 6'h1d == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_29_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1866 = 6'h1e == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_30_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1867 = 6'h1f == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_31_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1868 = 6'h20 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_32_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1869 = 6'h21 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_33_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1870 = 6'h22 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_34_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1871 = 6'h23 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_35_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1872 = 6'h24 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_36_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1873 = 6'h25 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_37_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1874 = 6'h26 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_38_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1875 = 6'h27 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_39_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1876 = 6'h28 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_40_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1877 = 6'h29 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_41_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1878 = 6'h2a == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_42_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1879 = 6'h2b == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_43_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1880 = 6'h2c == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_44_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1881 = 6'h2d == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_45_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1882 = 6'h2e == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_46_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1883 = 6'h2f == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_47_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1884 = 6'h30 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_48_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1885 = 6'h31 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_49_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1886 = 6'h32 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_50_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1887 = 6'h33 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_51_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1888 = 6'h34 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_52_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1889 = 6'h35 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_53_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1890 = 6'h36 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_54_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1891 = 6'h37 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_55_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1892 = 6'h38 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_56_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1893 = 6'h39 == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_57_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1894 = 6'h3a == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_58_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1895 = 6'h3b == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_59_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1896 = 6'h3c == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_60_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1897 = 6'h3d == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_61_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1898 = 6'h3e == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_62_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1899 = 6'h3f == s1_way_waddr_1_0_r ? s1_way_wdata_1_0_rcoh_state : meta_array_63_1_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1900 = s1_way_wen_1_0_REG ? _GEN_1836 : meta_array_0_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1901 = s1_way_wen_1_0_REG ? _GEN_1837 : meta_array_1_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1902 = s1_way_wen_1_0_REG ? _GEN_1838 : meta_array_2_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1903 = s1_way_wen_1_0_REG ? _GEN_1839 : meta_array_3_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1904 = s1_way_wen_1_0_REG ? _GEN_1840 : meta_array_4_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1905 = s1_way_wen_1_0_REG ? _GEN_1841 : meta_array_5_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1906 = s1_way_wen_1_0_REG ? _GEN_1842 : meta_array_6_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1907 = s1_way_wen_1_0_REG ? _GEN_1843 : meta_array_7_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1908 = s1_way_wen_1_0_REG ? _GEN_1844 : meta_array_8_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1909 = s1_way_wen_1_0_REG ? _GEN_1845 : meta_array_9_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1910 = s1_way_wen_1_0_REG ? _GEN_1846 : meta_array_10_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1911 = s1_way_wen_1_0_REG ? _GEN_1847 : meta_array_11_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1912 = s1_way_wen_1_0_REG ? _GEN_1848 : meta_array_12_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1913 = s1_way_wen_1_0_REG ? _GEN_1849 : meta_array_13_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1914 = s1_way_wen_1_0_REG ? _GEN_1850 : meta_array_14_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1915 = s1_way_wen_1_0_REG ? _GEN_1851 : meta_array_15_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1916 = s1_way_wen_1_0_REG ? _GEN_1852 : meta_array_16_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1917 = s1_way_wen_1_0_REG ? _GEN_1853 : meta_array_17_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1918 = s1_way_wen_1_0_REG ? _GEN_1854 : meta_array_18_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1919 = s1_way_wen_1_0_REG ? _GEN_1855 : meta_array_19_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1920 = s1_way_wen_1_0_REG ? _GEN_1856 : meta_array_20_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1921 = s1_way_wen_1_0_REG ? _GEN_1857 : meta_array_21_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1922 = s1_way_wen_1_0_REG ? _GEN_1858 : meta_array_22_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1923 = s1_way_wen_1_0_REG ? _GEN_1859 : meta_array_23_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1924 = s1_way_wen_1_0_REG ? _GEN_1860 : meta_array_24_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1925 = s1_way_wen_1_0_REG ? _GEN_1861 : meta_array_25_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1926 = s1_way_wen_1_0_REG ? _GEN_1862 : meta_array_26_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1927 = s1_way_wen_1_0_REG ? _GEN_1863 : meta_array_27_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1928 = s1_way_wen_1_0_REG ? _GEN_1864 : meta_array_28_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1929 = s1_way_wen_1_0_REG ? _GEN_1865 : meta_array_29_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1930 = s1_way_wen_1_0_REG ? _GEN_1866 : meta_array_30_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1931 = s1_way_wen_1_0_REG ? _GEN_1867 : meta_array_31_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1932 = s1_way_wen_1_0_REG ? _GEN_1868 : meta_array_32_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1933 = s1_way_wen_1_0_REG ? _GEN_1869 : meta_array_33_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1934 = s1_way_wen_1_0_REG ? _GEN_1870 : meta_array_34_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1935 = s1_way_wen_1_0_REG ? _GEN_1871 : meta_array_35_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1936 = s1_way_wen_1_0_REG ? _GEN_1872 : meta_array_36_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1937 = s1_way_wen_1_0_REG ? _GEN_1873 : meta_array_37_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1938 = s1_way_wen_1_0_REG ? _GEN_1874 : meta_array_38_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1939 = s1_way_wen_1_0_REG ? _GEN_1875 : meta_array_39_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1940 = s1_way_wen_1_0_REG ? _GEN_1876 : meta_array_40_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1941 = s1_way_wen_1_0_REG ? _GEN_1877 : meta_array_41_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1942 = s1_way_wen_1_0_REG ? _GEN_1878 : meta_array_42_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1943 = s1_way_wen_1_0_REG ? _GEN_1879 : meta_array_43_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1944 = s1_way_wen_1_0_REG ? _GEN_1880 : meta_array_44_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1945 = s1_way_wen_1_0_REG ? _GEN_1881 : meta_array_45_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1946 = s1_way_wen_1_0_REG ? _GEN_1882 : meta_array_46_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1947 = s1_way_wen_1_0_REG ? _GEN_1883 : meta_array_47_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1948 = s1_way_wen_1_0_REG ? _GEN_1884 : meta_array_48_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1949 = s1_way_wen_1_0_REG ? _GEN_1885 : meta_array_49_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1950 = s1_way_wen_1_0_REG ? _GEN_1886 : meta_array_50_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1951 = s1_way_wen_1_0_REG ? _GEN_1887 : meta_array_51_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1952 = s1_way_wen_1_0_REG ? _GEN_1888 : meta_array_52_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1953 = s1_way_wen_1_0_REG ? _GEN_1889 : meta_array_53_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1954 = s1_way_wen_1_0_REG ? _GEN_1890 : meta_array_54_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1955 = s1_way_wen_1_0_REG ? _GEN_1891 : meta_array_55_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1956 = s1_way_wen_1_0_REG ? _GEN_1892 : meta_array_56_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1957 = s1_way_wen_1_0_REG ? _GEN_1893 : meta_array_57_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1958 = s1_way_wen_1_0_REG ? _GEN_1894 : meta_array_58_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1959 = s1_way_wen_1_0_REG ? _GEN_1895 : meta_array_59_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1960 = s1_way_wen_1_0_REG ? _GEN_1896 : meta_array_60_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1961 = s1_way_wen_1_0_REG ? _GEN_1897 : meta_array_61_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1962 = s1_way_wen_1_0_REG ? _GEN_1898 : meta_array_62_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_1963 = s1_way_wen_1_0_REG ? _GEN_1899 : meta_array_63_1_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_2_0 = io_write_0_valid & io_write_0_bits_way_en[2]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_1966 = 6'h0 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_0_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1967 = 6'h1 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_1_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1968 = 6'h2 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_2_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1969 = 6'h3 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_3_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1970 = 6'h4 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_4_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1971 = 6'h5 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_5_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1972 = 6'h6 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_6_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1973 = 6'h7 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_7_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1974 = 6'h8 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_8_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1975 = 6'h9 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_9_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1976 = 6'ha == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_10_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1977 = 6'hb == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_11_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1978 = 6'hc == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_12_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1979 = 6'hd == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_13_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1980 = 6'he == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_14_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1981 = 6'hf == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_15_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1982 = 6'h10 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_16_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1983 = 6'h11 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_17_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1984 = 6'h12 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_18_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1985 = 6'h13 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_19_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1986 = 6'h14 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_20_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1987 = 6'h15 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_21_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1988 = 6'h16 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_22_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1989 = 6'h17 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_23_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1990 = 6'h18 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_24_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1991 = 6'h19 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_25_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1992 = 6'h1a == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_26_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1993 = 6'h1b == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_27_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1994 = 6'h1c == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_28_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1995 = 6'h1d == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_29_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1996 = 6'h1e == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_30_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1997 = 6'h1f == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_31_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1998 = 6'h20 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_32_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_1999 = 6'h21 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_33_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2000 = 6'h22 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_34_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2001 = 6'h23 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_35_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2002 = 6'h24 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_36_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2003 = 6'h25 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_37_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2004 = 6'h26 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_38_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2005 = 6'h27 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_39_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2006 = 6'h28 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_40_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2007 = 6'h29 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_41_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2008 = 6'h2a == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_42_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2009 = 6'h2b == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_43_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2010 = 6'h2c == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_44_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2011 = 6'h2d == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_45_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2012 = 6'h2e == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_46_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2013 = 6'h2f == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_47_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2014 = 6'h30 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_48_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2015 = 6'h31 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_49_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2016 = 6'h32 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_50_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2017 = 6'h33 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_51_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2018 = 6'h34 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_52_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2019 = 6'h35 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_53_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2020 = 6'h36 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_54_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2021 = 6'h37 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_55_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2022 = 6'h38 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_56_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2023 = 6'h39 == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_57_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2024 = 6'h3a == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_58_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2025 = 6'h3b == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_59_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2026 = 6'h3c == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_60_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2027 = 6'h3d == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_61_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2028 = 6'h3e == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_62_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2029 = 6'h3f == s1_way_waddr_2_0_r ? s1_way_wdata_2_0_rcoh_state : meta_array_63_2_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2030 = s1_way_wen_2_0_REG ? _GEN_1966 : meta_array_0_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2031 = s1_way_wen_2_0_REG ? _GEN_1967 : meta_array_1_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2032 = s1_way_wen_2_0_REG ? _GEN_1968 : meta_array_2_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2033 = s1_way_wen_2_0_REG ? _GEN_1969 : meta_array_3_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2034 = s1_way_wen_2_0_REG ? _GEN_1970 : meta_array_4_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2035 = s1_way_wen_2_0_REG ? _GEN_1971 : meta_array_5_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2036 = s1_way_wen_2_0_REG ? _GEN_1972 : meta_array_6_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2037 = s1_way_wen_2_0_REG ? _GEN_1973 : meta_array_7_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2038 = s1_way_wen_2_0_REG ? _GEN_1974 : meta_array_8_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2039 = s1_way_wen_2_0_REG ? _GEN_1975 : meta_array_9_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2040 = s1_way_wen_2_0_REG ? _GEN_1976 : meta_array_10_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2041 = s1_way_wen_2_0_REG ? _GEN_1977 : meta_array_11_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2042 = s1_way_wen_2_0_REG ? _GEN_1978 : meta_array_12_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2043 = s1_way_wen_2_0_REG ? _GEN_1979 : meta_array_13_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2044 = s1_way_wen_2_0_REG ? _GEN_1980 : meta_array_14_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2045 = s1_way_wen_2_0_REG ? _GEN_1981 : meta_array_15_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2046 = s1_way_wen_2_0_REG ? _GEN_1982 : meta_array_16_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2047 = s1_way_wen_2_0_REG ? _GEN_1983 : meta_array_17_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2048 = s1_way_wen_2_0_REG ? _GEN_1984 : meta_array_18_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2049 = s1_way_wen_2_0_REG ? _GEN_1985 : meta_array_19_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2050 = s1_way_wen_2_0_REG ? _GEN_1986 : meta_array_20_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2051 = s1_way_wen_2_0_REG ? _GEN_1987 : meta_array_21_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2052 = s1_way_wen_2_0_REG ? _GEN_1988 : meta_array_22_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2053 = s1_way_wen_2_0_REG ? _GEN_1989 : meta_array_23_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2054 = s1_way_wen_2_0_REG ? _GEN_1990 : meta_array_24_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2055 = s1_way_wen_2_0_REG ? _GEN_1991 : meta_array_25_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2056 = s1_way_wen_2_0_REG ? _GEN_1992 : meta_array_26_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2057 = s1_way_wen_2_0_REG ? _GEN_1993 : meta_array_27_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2058 = s1_way_wen_2_0_REG ? _GEN_1994 : meta_array_28_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2059 = s1_way_wen_2_0_REG ? _GEN_1995 : meta_array_29_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2060 = s1_way_wen_2_0_REG ? _GEN_1996 : meta_array_30_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2061 = s1_way_wen_2_0_REG ? _GEN_1997 : meta_array_31_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2062 = s1_way_wen_2_0_REG ? _GEN_1998 : meta_array_32_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2063 = s1_way_wen_2_0_REG ? _GEN_1999 : meta_array_33_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2064 = s1_way_wen_2_0_REG ? _GEN_2000 : meta_array_34_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2065 = s1_way_wen_2_0_REG ? _GEN_2001 : meta_array_35_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2066 = s1_way_wen_2_0_REG ? _GEN_2002 : meta_array_36_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2067 = s1_way_wen_2_0_REG ? _GEN_2003 : meta_array_37_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2068 = s1_way_wen_2_0_REG ? _GEN_2004 : meta_array_38_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2069 = s1_way_wen_2_0_REG ? _GEN_2005 : meta_array_39_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2070 = s1_way_wen_2_0_REG ? _GEN_2006 : meta_array_40_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2071 = s1_way_wen_2_0_REG ? _GEN_2007 : meta_array_41_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2072 = s1_way_wen_2_0_REG ? _GEN_2008 : meta_array_42_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2073 = s1_way_wen_2_0_REG ? _GEN_2009 : meta_array_43_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2074 = s1_way_wen_2_0_REG ? _GEN_2010 : meta_array_44_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2075 = s1_way_wen_2_0_REG ? _GEN_2011 : meta_array_45_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2076 = s1_way_wen_2_0_REG ? _GEN_2012 : meta_array_46_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2077 = s1_way_wen_2_0_REG ? _GEN_2013 : meta_array_47_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2078 = s1_way_wen_2_0_REG ? _GEN_2014 : meta_array_48_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2079 = s1_way_wen_2_0_REG ? _GEN_2015 : meta_array_49_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2080 = s1_way_wen_2_0_REG ? _GEN_2016 : meta_array_50_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2081 = s1_way_wen_2_0_REG ? _GEN_2017 : meta_array_51_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2082 = s1_way_wen_2_0_REG ? _GEN_2018 : meta_array_52_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2083 = s1_way_wen_2_0_REG ? _GEN_2019 : meta_array_53_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2084 = s1_way_wen_2_0_REG ? _GEN_2020 : meta_array_54_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2085 = s1_way_wen_2_0_REG ? _GEN_2021 : meta_array_55_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2086 = s1_way_wen_2_0_REG ? _GEN_2022 : meta_array_56_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2087 = s1_way_wen_2_0_REG ? _GEN_2023 : meta_array_57_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2088 = s1_way_wen_2_0_REG ? _GEN_2024 : meta_array_58_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2089 = s1_way_wen_2_0_REG ? _GEN_2025 : meta_array_59_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2090 = s1_way_wen_2_0_REG ? _GEN_2026 : meta_array_60_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2091 = s1_way_wen_2_0_REG ? _GEN_2027 : meta_array_61_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2092 = s1_way_wen_2_0_REG ? _GEN_2028 : meta_array_62_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2093 = s1_way_wen_2_0_REG ? _GEN_2029 : meta_array_63_2_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_3_0 = io_write_0_valid & io_write_0_bits_way_en[3]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_2096 = 6'h0 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_0_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2097 = 6'h1 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_1_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2098 = 6'h2 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_2_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2099 = 6'h3 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_3_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2100 = 6'h4 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_4_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2101 = 6'h5 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_5_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2102 = 6'h6 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_6_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2103 = 6'h7 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_7_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2104 = 6'h8 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_8_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2105 = 6'h9 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_9_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2106 = 6'ha == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_10_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2107 = 6'hb == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_11_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2108 = 6'hc == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_12_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2109 = 6'hd == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_13_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2110 = 6'he == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_14_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2111 = 6'hf == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_15_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2112 = 6'h10 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_16_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2113 = 6'h11 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_17_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2114 = 6'h12 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_18_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2115 = 6'h13 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_19_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2116 = 6'h14 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_20_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2117 = 6'h15 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_21_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2118 = 6'h16 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_22_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2119 = 6'h17 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_23_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2120 = 6'h18 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_24_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2121 = 6'h19 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_25_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2122 = 6'h1a == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_26_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2123 = 6'h1b == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_27_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2124 = 6'h1c == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_28_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2125 = 6'h1d == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_29_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2126 = 6'h1e == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_30_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2127 = 6'h1f == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_31_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2128 = 6'h20 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_32_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2129 = 6'h21 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_33_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2130 = 6'h22 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_34_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2131 = 6'h23 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_35_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2132 = 6'h24 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_36_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2133 = 6'h25 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_37_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2134 = 6'h26 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_38_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2135 = 6'h27 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_39_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2136 = 6'h28 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_40_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2137 = 6'h29 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_41_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2138 = 6'h2a == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_42_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2139 = 6'h2b == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_43_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2140 = 6'h2c == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_44_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2141 = 6'h2d == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_45_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2142 = 6'h2e == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_46_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2143 = 6'h2f == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_47_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2144 = 6'h30 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_48_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2145 = 6'h31 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_49_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2146 = 6'h32 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_50_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2147 = 6'h33 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_51_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2148 = 6'h34 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_52_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2149 = 6'h35 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_53_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2150 = 6'h36 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_54_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2151 = 6'h37 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_55_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2152 = 6'h38 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_56_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2153 = 6'h39 == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_57_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2154 = 6'h3a == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_58_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2155 = 6'h3b == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_59_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2156 = 6'h3c == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_60_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2157 = 6'h3d == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_61_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2158 = 6'h3e == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_62_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2159 = 6'h3f == s1_way_waddr_3_0_r ? s1_way_wdata_3_0_rcoh_state : meta_array_63_3_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2160 = s1_way_wen_3_0_REG ? _GEN_2096 : meta_array_0_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2161 = s1_way_wen_3_0_REG ? _GEN_2097 : meta_array_1_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2162 = s1_way_wen_3_0_REG ? _GEN_2098 : meta_array_2_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2163 = s1_way_wen_3_0_REG ? _GEN_2099 : meta_array_3_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2164 = s1_way_wen_3_0_REG ? _GEN_2100 : meta_array_4_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2165 = s1_way_wen_3_0_REG ? _GEN_2101 : meta_array_5_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2166 = s1_way_wen_3_0_REG ? _GEN_2102 : meta_array_6_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2167 = s1_way_wen_3_0_REG ? _GEN_2103 : meta_array_7_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2168 = s1_way_wen_3_0_REG ? _GEN_2104 : meta_array_8_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2169 = s1_way_wen_3_0_REG ? _GEN_2105 : meta_array_9_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2170 = s1_way_wen_3_0_REG ? _GEN_2106 : meta_array_10_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2171 = s1_way_wen_3_0_REG ? _GEN_2107 : meta_array_11_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2172 = s1_way_wen_3_0_REG ? _GEN_2108 : meta_array_12_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2173 = s1_way_wen_3_0_REG ? _GEN_2109 : meta_array_13_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2174 = s1_way_wen_3_0_REG ? _GEN_2110 : meta_array_14_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2175 = s1_way_wen_3_0_REG ? _GEN_2111 : meta_array_15_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2176 = s1_way_wen_3_0_REG ? _GEN_2112 : meta_array_16_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2177 = s1_way_wen_3_0_REG ? _GEN_2113 : meta_array_17_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2178 = s1_way_wen_3_0_REG ? _GEN_2114 : meta_array_18_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2179 = s1_way_wen_3_0_REG ? _GEN_2115 : meta_array_19_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2180 = s1_way_wen_3_0_REG ? _GEN_2116 : meta_array_20_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2181 = s1_way_wen_3_0_REG ? _GEN_2117 : meta_array_21_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2182 = s1_way_wen_3_0_REG ? _GEN_2118 : meta_array_22_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2183 = s1_way_wen_3_0_REG ? _GEN_2119 : meta_array_23_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2184 = s1_way_wen_3_0_REG ? _GEN_2120 : meta_array_24_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2185 = s1_way_wen_3_0_REG ? _GEN_2121 : meta_array_25_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2186 = s1_way_wen_3_0_REG ? _GEN_2122 : meta_array_26_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2187 = s1_way_wen_3_0_REG ? _GEN_2123 : meta_array_27_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2188 = s1_way_wen_3_0_REG ? _GEN_2124 : meta_array_28_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2189 = s1_way_wen_3_0_REG ? _GEN_2125 : meta_array_29_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2190 = s1_way_wen_3_0_REG ? _GEN_2126 : meta_array_30_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2191 = s1_way_wen_3_0_REG ? _GEN_2127 : meta_array_31_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2192 = s1_way_wen_3_0_REG ? _GEN_2128 : meta_array_32_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2193 = s1_way_wen_3_0_REG ? _GEN_2129 : meta_array_33_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2194 = s1_way_wen_3_0_REG ? _GEN_2130 : meta_array_34_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2195 = s1_way_wen_3_0_REG ? _GEN_2131 : meta_array_35_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2196 = s1_way_wen_3_0_REG ? _GEN_2132 : meta_array_36_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2197 = s1_way_wen_3_0_REG ? _GEN_2133 : meta_array_37_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2198 = s1_way_wen_3_0_REG ? _GEN_2134 : meta_array_38_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2199 = s1_way_wen_3_0_REG ? _GEN_2135 : meta_array_39_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2200 = s1_way_wen_3_0_REG ? _GEN_2136 : meta_array_40_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2201 = s1_way_wen_3_0_REG ? _GEN_2137 : meta_array_41_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2202 = s1_way_wen_3_0_REG ? _GEN_2138 : meta_array_42_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2203 = s1_way_wen_3_0_REG ? _GEN_2139 : meta_array_43_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2204 = s1_way_wen_3_0_REG ? _GEN_2140 : meta_array_44_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2205 = s1_way_wen_3_0_REG ? _GEN_2141 : meta_array_45_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2206 = s1_way_wen_3_0_REG ? _GEN_2142 : meta_array_46_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2207 = s1_way_wen_3_0_REG ? _GEN_2143 : meta_array_47_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2208 = s1_way_wen_3_0_REG ? _GEN_2144 : meta_array_48_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2209 = s1_way_wen_3_0_REG ? _GEN_2145 : meta_array_49_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2210 = s1_way_wen_3_0_REG ? _GEN_2146 : meta_array_50_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2211 = s1_way_wen_3_0_REG ? _GEN_2147 : meta_array_51_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2212 = s1_way_wen_3_0_REG ? _GEN_2148 : meta_array_52_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2213 = s1_way_wen_3_0_REG ? _GEN_2149 : meta_array_53_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2214 = s1_way_wen_3_0_REG ? _GEN_2150 : meta_array_54_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2215 = s1_way_wen_3_0_REG ? _GEN_2151 : meta_array_55_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2216 = s1_way_wen_3_0_REG ? _GEN_2152 : meta_array_56_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2217 = s1_way_wen_3_0_REG ? _GEN_2153 : meta_array_57_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2218 = s1_way_wen_3_0_REG ? _GEN_2154 : meta_array_58_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2219 = s1_way_wen_3_0_REG ? _GEN_2155 : meta_array_59_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2220 = s1_way_wen_3_0_REG ? _GEN_2156 : meta_array_60_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2221 = s1_way_wen_3_0_REG ? _GEN_2157 : meta_array_61_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2222 = s1_way_wen_3_0_REG ? _GEN_2158 : meta_array_62_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2223 = s1_way_wen_3_0_REG ? _GEN_2159 : meta_array_63_3_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_4_0 = io_write_0_valid & io_write_0_bits_way_en[4]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_2226 = 6'h0 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_0_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2227 = 6'h1 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_1_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2228 = 6'h2 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_2_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2229 = 6'h3 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_3_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2230 = 6'h4 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_4_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2231 = 6'h5 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_5_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2232 = 6'h6 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_6_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2233 = 6'h7 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_7_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2234 = 6'h8 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_8_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2235 = 6'h9 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_9_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2236 = 6'ha == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_10_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2237 = 6'hb == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_11_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2238 = 6'hc == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_12_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2239 = 6'hd == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_13_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2240 = 6'he == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_14_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2241 = 6'hf == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_15_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2242 = 6'h10 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_16_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2243 = 6'h11 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_17_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2244 = 6'h12 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_18_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2245 = 6'h13 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_19_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2246 = 6'h14 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_20_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2247 = 6'h15 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_21_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2248 = 6'h16 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_22_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2249 = 6'h17 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_23_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2250 = 6'h18 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_24_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2251 = 6'h19 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_25_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2252 = 6'h1a == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_26_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2253 = 6'h1b == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_27_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2254 = 6'h1c == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_28_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2255 = 6'h1d == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_29_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2256 = 6'h1e == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_30_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2257 = 6'h1f == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_31_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2258 = 6'h20 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_32_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2259 = 6'h21 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_33_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2260 = 6'h22 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_34_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2261 = 6'h23 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_35_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2262 = 6'h24 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_36_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2263 = 6'h25 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_37_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2264 = 6'h26 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_38_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2265 = 6'h27 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_39_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2266 = 6'h28 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_40_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2267 = 6'h29 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_41_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2268 = 6'h2a == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_42_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2269 = 6'h2b == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_43_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2270 = 6'h2c == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_44_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2271 = 6'h2d == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_45_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2272 = 6'h2e == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_46_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2273 = 6'h2f == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_47_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2274 = 6'h30 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_48_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2275 = 6'h31 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_49_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2276 = 6'h32 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_50_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2277 = 6'h33 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_51_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2278 = 6'h34 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_52_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2279 = 6'h35 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_53_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2280 = 6'h36 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_54_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2281 = 6'h37 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_55_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2282 = 6'h38 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_56_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2283 = 6'h39 == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_57_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2284 = 6'h3a == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_58_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2285 = 6'h3b == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_59_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2286 = 6'h3c == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_60_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2287 = 6'h3d == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_61_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2288 = 6'h3e == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_62_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2289 = 6'h3f == s1_way_waddr_4_0_r ? s1_way_wdata_4_0_rcoh_state : meta_array_63_4_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2290 = s1_way_wen_4_0_REG ? _GEN_2226 : meta_array_0_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2291 = s1_way_wen_4_0_REG ? _GEN_2227 : meta_array_1_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2292 = s1_way_wen_4_0_REG ? _GEN_2228 : meta_array_2_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2293 = s1_way_wen_4_0_REG ? _GEN_2229 : meta_array_3_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2294 = s1_way_wen_4_0_REG ? _GEN_2230 : meta_array_4_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2295 = s1_way_wen_4_0_REG ? _GEN_2231 : meta_array_5_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2296 = s1_way_wen_4_0_REG ? _GEN_2232 : meta_array_6_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2297 = s1_way_wen_4_0_REG ? _GEN_2233 : meta_array_7_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2298 = s1_way_wen_4_0_REG ? _GEN_2234 : meta_array_8_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2299 = s1_way_wen_4_0_REG ? _GEN_2235 : meta_array_9_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2300 = s1_way_wen_4_0_REG ? _GEN_2236 : meta_array_10_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2301 = s1_way_wen_4_0_REG ? _GEN_2237 : meta_array_11_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2302 = s1_way_wen_4_0_REG ? _GEN_2238 : meta_array_12_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2303 = s1_way_wen_4_0_REG ? _GEN_2239 : meta_array_13_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2304 = s1_way_wen_4_0_REG ? _GEN_2240 : meta_array_14_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2305 = s1_way_wen_4_0_REG ? _GEN_2241 : meta_array_15_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2306 = s1_way_wen_4_0_REG ? _GEN_2242 : meta_array_16_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2307 = s1_way_wen_4_0_REG ? _GEN_2243 : meta_array_17_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2308 = s1_way_wen_4_0_REG ? _GEN_2244 : meta_array_18_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2309 = s1_way_wen_4_0_REG ? _GEN_2245 : meta_array_19_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2310 = s1_way_wen_4_0_REG ? _GEN_2246 : meta_array_20_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2311 = s1_way_wen_4_0_REG ? _GEN_2247 : meta_array_21_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2312 = s1_way_wen_4_0_REG ? _GEN_2248 : meta_array_22_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2313 = s1_way_wen_4_0_REG ? _GEN_2249 : meta_array_23_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2314 = s1_way_wen_4_0_REG ? _GEN_2250 : meta_array_24_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2315 = s1_way_wen_4_0_REG ? _GEN_2251 : meta_array_25_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2316 = s1_way_wen_4_0_REG ? _GEN_2252 : meta_array_26_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2317 = s1_way_wen_4_0_REG ? _GEN_2253 : meta_array_27_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2318 = s1_way_wen_4_0_REG ? _GEN_2254 : meta_array_28_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2319 = s1_way_wen_4_0_REG ? _GEN_2255 : meta_array_29_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2320 = s1_way_wen_4_0_REG ? _GEN_2256 : meta_array_30_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2321 = s1_way_wen_4_0_REG ? _GEN_2257 : meta_array_31_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2322 = s1_way_wen_4_0_REG ? _GEN_2258 : meta_array_32_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2323 = s1_way_wen_4_0_REG ? _GEN_2259 : meta_array_33_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2324 = s1_way_wen_4_0_REG ? _GEN_2260 : meta_array_34_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2325 = s1_way_wen_4_0_REG ? _GEN_2261 : meta_array_35_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2326 = s1_way_wen_4_0_REG ? _GEN_2262 : meta_array_36_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2327 = s1_way_wen_4_0_REG ? _GEN_2263 : meta_array_37_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2328 = s1_way_wen_4_0_REG ? _GEN_2264 : meta_array_38_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2329 = s1_way_wen_4_0_REG ? _GEN_2265 : meta_array_39_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2330 = s1_way_wen_4_0_REG ? _GEN_2266 : meta_array_40_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2331 = s1_way_wen_4_0_REG ? _GEN_2267 : meta_array_41_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2332 = s1_way_wen_4_0_REG ? _GEN_2268 : meta_array_42_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2333 = s1_way_wen_4_0_REG ? _GEN_2269 : meta_array_43_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2334 = s1_way_wen_4_0_REG ? _GEN_2270 : meta_array_44_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2335 = s1_way_wen_4_0_REG ? _GEN_2271 : meta_array_45_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2336 = s1_way_wen_4_0_REG ? _GEN_2272 : meta_array_46_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2337 = s1_way_wen_4_0_REG ? _GEN_2273 : meta_array_47_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2338 = s1_way_wen_4_0_REG ? _GEN_2274 : meta_array_48_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2339 = s1_way_wen_4_0_REG ? _GEN_2275 : meta_array_49_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2340 = s1_way_wen_4_0_REG ? _GEN_2276 : meta_array_50_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2341 = s1_way_wen_4_0_REG ? _GEN_2277 : meta_array_51_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2342 = s1_way_wen_4_0_REG ? _GEN_2278 : meta_array_52_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2343 = s1_way_wen_4_0_REG ? _GEN_2279 : meta_array_53_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2344 = s1_way_wen_4_0_REG ? _GEN_2280 : meta_array_54_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2345 = s1_way_wen_4_0_REG ? _GEN_2281 : meta_array_55_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2346 = s1_way_wen_4_0_REG ? _GEN_2282 : meta_array_56_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2347 = s1_way_wen_4_0_REG ? _GEN_2283 : meta_array_57_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2348 = s1_way_wen_4_0_REG ? _GEN_2284 : meta_array_58_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2349 = s1_way_wen_4_0_REG ? _GEN_2285 : meta_array_59_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2350 = s1_way_wen_4_0_REG ? _GEN_2286 : meta_array_60_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2351 = s1_way_wen_4_0_REG ? _GEN_2287 : meta_array_61_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2352 = s1_way_wen_4_0_REG ? _GEN_2288 : meta_array_62_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2353 = s1_way_wen_4_0_REG ? _GEN_2289 : meta_array_63_4_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_5_0 = io_write_0_valid & io_write_0_bits_way_en[5]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_2356 = 6'h0 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_0_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2357 = 6'h1 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_1_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2358 = 6'h2 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_2_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2359 = 6'h3 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_3_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2360 = 6'h4 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_4_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2361 = 6'h5 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_5_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2362 = 6'h6 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_6_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2363 = 6'h7 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_7_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2364 = 6'h8 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_8_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2365 = 6'h9 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_9_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2366 = 6'ha == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_10_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2367 = 6'hb == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_11_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2368 = 6'hc == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_12_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2369 = 6'hd == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_13_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2370 = 6'he == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_14_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2371 = 6'hf == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_15_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2372 = 6'h10 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_16_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2373 = 6'h11 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_17_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2374 = 6'h12 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_18_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2375 = 6'h13 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_19_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2376 = 6'h14 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_20_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2377 = 6'h15 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_21_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2378 = 6'h16 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_22_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2379 = 6'h17 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_23_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2380 = 6'h18 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_24_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2381 = 6'h19 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_25_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2382 = 6'h1a == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_26_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2383 = 6'h1b == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_27_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2384 = 6'h1c == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_28_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2385 = 6'h1d == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_29_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2386 = 6'h1e == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_30_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2387 = 6'h1f == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_31_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2388 = 6'h20 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_32_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2389 = 6'h21 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_33_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2390 = 6'h22 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_34_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2391 = 6'h23 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_35_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2392 = 6'h24 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_36_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2393 = 6'h25 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_37_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2394 = 6'h26 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_38_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2395 = 6'h27 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_39_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2396 = 6'h28 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_40_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2397 = 6'h29 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_41_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2398 = 6'h2a == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_42_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2399 = 6'h2b == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_43_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2400 = 6'h2c == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_44_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2401 = 6'h2d == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_45_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2402 = 6'h2e == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_46_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2403 = 6'h2f == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_47_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2404 = 6'h30 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_48_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2405 = 6'h31 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_49_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2406 = 6'h32 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_50_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2407 = 6'h33 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_51_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2408 = 6'h34 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_52_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2409 = 6'h35 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_53_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2410 = 6'h36 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_54_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2411 = 6'h37 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_55_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2412 = 6'h38 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_56_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2413 = 6'h39 == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_57_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2414 = 6'h3a == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_58_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2415 = 6'h3b == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_59_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2416 = 6'h3c == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_60_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2417 = 6'h3d == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_61_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2418 = 6'h3e == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_62_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2419 = 6'h3f == s1_way_waddr_5_0_r ? s1_way_wdata_5_0_rcoh_state : meta_array_63_5_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2420 = s1_way_wen_5_0_REG ? _GEN_2356 : meta_array_0_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2421 = s1_way_wen_5_0_REG ? _GEN_2357 : meta_array_1_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2422 = s1_way_wen_5_0_REG ? _GEN_2358 : meta_array_2_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2423 = s1_way_wen_5_0_REG ? _GEN_2359 : meta_array_3_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2424 = s1_way_wen_5_0_REG ? _GEN_2360 : meta_array_4_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2425 = s1_way_wen_5_0_REG ? _GEN_2361 : meta_array_5_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2426 = s1_way_wen_5_0_REG ? _GEN_2362 : meta_array_6_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2427 = s1_way_wen_5_0_REG ? _GEN_2363 : meta_array_7_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2428 = s1_way_wen_5_0_REG ? _GEN_2364 : meta_array_8_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2429 = s1_way_wen_5_0_REG ? _GEN_2365 : meta_array_9_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2430 = s1_way_wen_5_0_REG ? _GEN_2366 : meta_array_10_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2431 = s1_way_wen_5_0_REG ? _GEN_2367 : meta_array_11_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2432 = s1_way_wen_5_0_REG ? _GEN_2368 : meta_array_12_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2433 = s1_way_wen_5_0_REG ? _GEN_2369 : meta_array_13_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2434 = s1_way_wen_5_0_REG ? _GEN_2370 : meta_array_14_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2435 = s1_way_wen_5_0_REG ? _GEN_2371 : meta_array_15_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2436 = s1_way_wen_5_0_REG ? _GEN_2372 : meta_array_16_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2437 = s1_way_wen_5_0_REG ? _GEN_2373 : meta_array_17_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2438 = s1_way_wen_5_0_REG ? _GEN_2374 : meta_array_18_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2439 = s1_way_wen_5_0_REG ? _GEN_2375 : meta_array_19_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2440 = s1_way_wen_5_0_REG ? _GEN_2376 : meta_array_20_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2441 = s1_way_wen_5_0_REG ? _GEN_2377 : meta_array_21_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2442 = s1_way_wen_5_0_REG ? _GEN_2378 : meta_array_22_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2443 = s1_way_wen_5_0_REG ? _GEN_2379 : meta_array_23_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2444 = s1_way_wen_5_0_REG ? _GEN_2380 : meta_array_24_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2445 = s1_way_wen_5_0_REG ? _GEN_2381 : meta_array_25_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2446 = s1_way_wen_5_0_REG ? _GEN_2382 : meta_array_26_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2447 = s1_way_wen_5_0_REG ? _GEN_2383 : meta_array_27_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2448 = s1_way_wen_5_0_REG ? _GEN_2384 : meta_array_28_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2449 = s1_way_wen_5_0_REG ? _GEN_2385 : meta_array_29_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2450 = s1_way_wen_5_0_REG ? _GEN_2386 : meta_array_30_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2451 = s1_way_wen_5_0_REG ? _GEN_2387 : meta_array_31_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2452 = s1_way_wen_5_0_REG ? _GEN_2388 : meta_array_32_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2453 = s1_way_wen_5_0_REG ? _GEN_2389 : meta_array_33_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2454 = s1_way_wen_5_0_REG ? _GEN_2390 : meta_array_34_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2455 = s1_way_wen_5_0_REG ? _GEN_2391 : meta_array_35_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2456 = s1_way_wen_5_0_REG ? _GEN_2392 : meta_array_36_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2457 = s1_way_wen_5_0_REG ? _GEN_2393 : meta_array_37_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2458 = s1_way_wen_5_0_REG ? _GEN_2394 : meta_array_38_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2459 = s1_way_wen_5_0_REG ? _GEN_2395 : meta_array_39_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2460 = s1_way_wen_5_0_REG ? _GEN_2396 : meta_array_40_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2461 = s1_way_wen_5_0_REG ? _GEN_2397 : meta_array_41_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2462 = s1_way_wen_5_0_REG ? _GEN_2398 : meta_array_42_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2463 = s1_way_wen_5_0_REG ? _GEN_2399 : meta_array_43_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2464 = s1_way_wen_5_0_REG ? _GEN_2400 : meta_array_44_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2465 = s1_way_wen_5_0_REG ? _GEN_2401 : meta_array_45_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2466 = s1_way_wen_5_0_REG ? _GEN_2402 : meta_array_46_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2467 = s1_way_wen_5_0_REG ? _GEN_2403 : meta_array_47_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2468 = s1_way_wen_5_0_REG ? _GEN_2404 : meta_array_48_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2469 = s1_way_wen_5_0_REG ? _GEN_2405 : meta_array_49_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2470 = s1_way_wen_5_0_REG ? _GEN_2406 : meta_array_50_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2471 = s1_way_wen_5_0_REG ? _GEN_2407 : meta_array_51_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2472 = s1_way_wen_5_0_REG ? _GEN_2408 : meta_array_52_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2473 = s1_way_wen_5_0_REG ? _GEN_2409 : meta_array_53_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2474 = s1_way_wen_5_0_REG ? _GEN_2410 : meta_array_54_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2475 = s1_way_wen_5_0_REG ? _GEN_2411 : meta_array_55_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2476 = s1_way_wen_5_0_REG ? _GEN_2412 : meta_array_56_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2477 = s1_way_wen_5_0_REG ? _GEN_2413 : meta_array_57_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2478 = s1_way_wen_5_0_REG ? _GEN_2414 : meta_array_58_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2479 = s1_way_wen_5_0_REG ? _GEN_2415 : meta_array_59_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2480 = s1_way_wen_5_0_REG ? _GEN_2416 : meta_array_60_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2481 = s1_way_wen_5_0_REG ? _GEN_2417 : meta_array_61_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2482 = s1_way_wen_5_0_REG ? _GEN_2418 : meta_array_62_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2483 = s1_way_wen_5_0_REG ? _GEN_2419 : meta_array_63_5_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_6_0 = io_write_0_valid & io_write_0_bits_way_en[6]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_2486 = 6'h0 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_0_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2487 = 6'h1 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_1_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2488 = 6'h2 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_2_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2489 = 6'h3 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_3_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2490 = 6'h4 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_4_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2491 = 6'h5 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_5_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2492 = 6'h6 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_6_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2493 = 6'h7 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_7_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2494 = 6'h8 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_8_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2495 = 6'h9 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_9_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2496 = 6'ha == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_10_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2497 = 6'hb == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_11_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2498 = 6'hc == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_12_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2499 = 6'hd == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_13_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2500 = 6'he == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_14_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2501 = 6'hf == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_15_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2502 = 6'h10 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_16_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2503 = 6'h11 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_17_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2504 = 6'h12 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_18_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2505 = 6'h13 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_19_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2506 = 6'h14 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_20_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2507 = 6'h15 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_21_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2508 = 6'h16 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_22_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2509 = 6'h17 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_23_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2510 = 6'h18 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_24_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2511 = 6'h19 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_25_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2512 = 6'h1a == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_26_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2513 = 6'h1b == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_27_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2514 = 6'h1c == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_28_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2515 = 6'h1d == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_29_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2516 = 6'h1e == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_30_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2517 = 6'h1f == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_31_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2518 = 6'h20 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_32_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2519 = 6'h21 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_33_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2520 = 6'h22 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_34_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2521 = 6'h23 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_35_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2522 = 6'h24 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_36_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2523 = 6'h25 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_37_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2524 = 6'h26 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_38_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2525 = 6'h27 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_39_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2526 = 6'h28 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_40_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2527 = 6'h29 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_41_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2528 = 6'h2a == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_42_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2529 = 6'h2b == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_43_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2530 = 6'h2c == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_44_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2531 = 6'h2d == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_45_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2532 = 6'h2e == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_46_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2533 = 6'h2f == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_47_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2534 = 6'h30 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_48_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2535 = 6'h31 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_49_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2536 = 6'h32 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_50_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2537 = 6'h33 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_51_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2538 = 6'h34 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_52_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2539 = 6'h35 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_53_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2540 = 6'h36 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_54_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2541 = 6'h37 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_55_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2542 = 6'h38 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_56_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2543 = 6'h39 == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_57_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2544 = 6'h3a == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_58_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2545 = 6'h3b == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_59_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2546 = 6'h3c == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_60_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2547 = 6'h3d == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_61_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2548 = 6'h3e == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_62_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2549 = 6'h3f == s1_way_waddr_6_0_r ? s1_way_wdata_6_0_rcoh_state : meta_array_63_6_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2550 = s1_way_wen_6_0_REG ? _GEN_2486 : meta_array_0_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2551 = s1_way_wen_6_0_REG ? _GEN_2487 : meta_array_1_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2552 = s1_way_wen_6_0_REG ? _GEN_2488 : meta_array_2_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2553 = s1_way_wen_6_0_REG ? _GEN_2489 : meta_array_3_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2554 = s1_way_wen_6_0_REG ? _GEN_2490 : meta_array_4_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2555 = s1_way_wen_6_0_REG ? _GEN_2491 : meta_array_5_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2556 = s1_way_wen_6_0_REG ? _GEN_2492 : meta_array_6_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2557 = s1_way_wen_6_0_REG ? _GEN_2493 : meta_array_7_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2558 = s1_way_wen_6_0_REG ? _GEN_2494 : meta_array_8_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2559 = s1_way_wen_6_0_REG ? _GEN_2495 : meta_array_9_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2560 = s1_way_wen_6_0_REG ? _GEN_2496 : meta_array_10_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2561 = s1_way_wen_6_0_REG ? _GEN_2497 : meta_array_11_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2562 = s1_way_wen_6_0_REG ? _GEN_2498 : meta_array_12_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2563 = s1_way_wen_6_0_REG ? _GEN_2499 : meta_array_13_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2564 = s1_way_wen_6_0_REG ? _GEN_2500 : meta_array_14_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2565 = s1_way_wen_6_0_REG ? _GEN_2501 : meta_array_15_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2566 = s1_way_wen_6_0_REG ? _GEN_2502 : meta_array_16_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2567 = s1_way_wen_6_0_REG ? _GEN_2503 : meta_array_17_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2568 = s1_way_wen_6_0_REG ? _GEN_2504 : meta_array_18_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2569 = s1_way_wen_6_0_REG ? _GEN_2505 : meta_array_19_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2570 = s1_way_wen_6_0_REG ? _GEN_2506 : meta_array_20_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2571 = s1_way_wen_6_0_REG ? _GEN_2507 : meta_array_21_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2572 = s1_way_wen_6_0_REG ? _GEN_2508 : meta_array_22_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2573 = s1_way_wen_6_0_REG ? _GEN_2509 : meta_array_23_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2574 = s1_way_wen_6_0_REG ? _GEN_2510 : meta_array_24_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2575 = s1_way_wen_6_0_REG ? _GEN_2511 : meta_array_25_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2576 = s1_way_wen_6_0_REG ? _GEN_2512 : meta_array_26_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2577 = s1_way_wen_6_0_REG ? _GEN_2513 : meta_array_27_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2578 = s1_way_wen_6_0_REG ? _GEN_2514 : meta_array_28_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2579 = s1_way_wen_6_0_REG ? _GEN_2515 : meta_array_29_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2580 = s1_way_wen_6_0_REG ? _GEN_2516 : meta_array_30_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2581 = s1_way_wen_6_0_REG ? _GEN_2517 : meta_array_31_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2582 = s1_way_wen_6_0_REG ? _GEN_2518 : meta_array_32_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2583 = s1_way_wen_6_0_REG ? _GEN_2519 : meta_array_33_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2584 = s1_way_wen_6_0_REG ? _GEN_2520 : meta_array_34_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2585 = s1_way_wen_6_0_REG ? _GEN_2521 : meta_array_35_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2586 = s1_way_wen_6_0_REG ? _GEN_2522 : meta_array_36_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2587 = s1_way_wen_6_0_REG ? _GEN_2523 : meta_array_37_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2588 = s1_way_wen_6_0_REG ? _GEN_2524 : meta_array_38_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2589 = s1_way_wen_6_0_REG ? _GEN_2525 : meta_array_39_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2590 = s1_way_wen_6_0_REG ? _GEN_2526 : meta_array_40_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2591 = s1_way_wen_6_0_REG ? _GEN_2527 : meta_array_41_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2592 = s1_way_wen_6_0_REG ? _GEN_2528 : meta_array_42_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2593 = s1_way_wen_6_0_REG ? _GEN_2529 : meta_array_43_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2594 = s1_way_wen_6_0_REG ? _GEN_2530 : meta_array_44_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2595 = s1_way_wen_6_0_REG ? _GEN_2531 : meta_array_45_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2596 = s1_way_wen_6_0_REG ? _GEN_2532 : meta_array_46_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2597 = s1_way_wen_6_0_REG ? _GEN_2533 : meta_array_47_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2598 = s1_way_wen_6_0_REG ? _GEN_2534 : meta_array_48_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2599 = s1_way_wen_6_0_REG ? _GEN_2535 : meta_array_49_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2600 = s1_way_wen_6_0_REG ? _GEN_2536 : meta_array_50_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2601 = s1_way_wen_6_0_REG ? _GEN_2537 : meta_array_51_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2602 = s1_way_wen_6_0_REG ? _GEN_2538 : meta_array_52_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2603 = s1_way_wen_6_0_REG ? _GEN_2539 : meta_array_53_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2604 = s1_way_wen_6_0_REG ? _GEN_2540 : meta_array_54_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2605 = s1_way_wen_6_0_REG ? _GEN_2541 : meta_array_55_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2606 = s1_way_wen_6_0_REG ? _GEN_2542 : meta_array_56_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2607 = s1_way_wen_6_0_REG ? _GEN_2543 : meta_array_57_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2608 = s1_way_wen_6_0_REG ? _GEN_2544 : meta_array_58_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2609 = s1_way_wen_6_0_REG ? _GEN_2545 : meta_array_59_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2610 = s1_way_wen_6_0_REG ? _GEN_2546 : meta_array_60_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2611 = s1_way_wen_6_0_REG ? _GEN_2547 : meta_array_61_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2612 = s1_way_wen_6_0_REG ? _GEN_2548 : meta_array_62_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2613 = s1_way_wen_6_0_REG ? _GEN_2549 : meta_array_63_6_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_7_0 = io_write_0_valid & io_write_0_bits_way_en[7]; // @[AsynchronousMetaArray.scala 95:49]
  wire [1:0] _GEN_2616 = 6'h0 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_0_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2617 = 6'h1 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_1_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2618 = 6'h2 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_2_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2619 = 6'h3 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_3_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2620 = 6'h4 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_4_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2621 = 6'h5 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_5_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2622 = 6'h6 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_6_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2623 = 6'h7 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_7_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2624 = 6'h8 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_8_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2625 = 6'h9 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_9_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2626 = 6'ha == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_10_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2627 = 6'hb == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_11_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2628 = 6'hc == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_12_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2629 = 6'hd == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_13_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2630 = 6'he == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_14_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2631 = 6'hf == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_15_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2632 = 6'h10 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_16_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2633 = 6'h11 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_17_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2634 = 6'h12 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_18_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2635 = 6'h13 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_19_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2636 = 6'h14 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_20_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2637 = 6'h15 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_21_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2638 = 6'h16 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_22_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2639 = 6'h17 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_23_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2640 = 6'h18 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_24_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2641 = 6'h19 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_25_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2642 = 6'h1a == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_26_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2643 = 6'h1b == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_27_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2644 = 6'h1c == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_28_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2645 = 6'h1d == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_29_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2646 = 6'h1e == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_30_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2647 = 6'h1f == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_31_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2648 = 6'h20 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_32_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2649 = 6'h21 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_33_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2650 = 6'h22 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_34_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2651 = 6'h23 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_35_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2652 = 6'h24 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_36_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2653 = 6'h25 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_37_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2654 = 6'h26 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_38_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2655 = 6'h27 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_39_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2656 = 6'h28 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_40_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2657 = 6'h29 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_41_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2658 = 6'h2a == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_42_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2659 = 6'h2b == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_43_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2660 = 6'h2c == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_44_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2661 = 6'h2d == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_45_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2662 = 6'h2e == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_46_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2663 = 6'h2f == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_47_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2664 = 6'h30 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_48_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2665 = 6'h31 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_49_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2666 = 6'h32 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_50_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2667 = 6'h33 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_51_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2668 = 6'h34 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_52_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2669 = 6'h35 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_53_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2670 = 6'h36 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_54_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2671 = 6'h37 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_55_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2672 = 6'h38 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_56_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2673 = 6'h39 == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_57_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2674 = 6'h3a == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_58_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2675 = 6'h3b == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_59_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2676 = 6'h3c == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_60_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2677 = 6'h3d == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_61_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2678 = 6'h3e == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_62_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2679 = 6'h3f == s1_way_waddr_7_0_r ? s1_way_wdata_7_0_rcoh_state : meta_array_63_7_coh_state; // @[AsynchronousMetaArray.scala 100:{55,55} 58:27]
  wire [1:0] _GEN_2680 = s1_way_wen_7_0_REG ? _GEN_2616 : meta_array_0_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2681 = s1_way_wen_7_0_REG ? _GEN_2617 : meta_array_1_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2682 = s1_way_wen_7_0_REG ? _GEN_2618 : meta_array_2_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2683 = s1_way_wen_7_0_REG ? _GEN_2619 : meta_array_3_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2684 = s1_way_wen_7_0_REG ? _GEN_2620 : meta_array_4_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2685 = s1_way_wen_7_0_REG ? _GEN_2621 : meta_array_5_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2686 = s1_way_wen_7_0_REG ? _GEN_2622 : meta_array_6_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2687 = s1_way_wen_7_0_REG ? _GEN_2623 : meta_array_7_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2688 = s1_way_wen_7_0_REG ? _GEN_2624 : meta_array_8_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2689 = s1_way_wen_7_0_REG ? _GEN_2625 : meta_array_9_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2690 = s1_way_wen_7_0_REG ? _GEN_2626 : meta_array_10_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2691 = s1_way_wen_7_0_REG ? _GEN_2627 : meta_array_11_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2692 = s1_way_wen_7_0_REG ? _GEN_2628 : meta_array_12_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2693 = s1_way_wen_7_0_REG ? _GEN_2629 : meta_array_13_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2694 = s1_way_wen_7_0_REG ? _GEN_2630 : meta_array_14_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2695 = s1_way_wen_7_0_REG ? _GEN_2631 : meta_array_15_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2696 = s1_way_wen_7_0_REG ? _GEN_2632 : meta_array_16_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2697 = s1_way_wen_7_0_REG ? _GEN_2633 : meta_array_17_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2698 = s1_way_wen_7_0_REG ? _GEN_2634 : meta_array_18_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2699 = s1_way_wen_7_0_REG ? _GEN_2635 : meta_array_19_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2700 = s1_way_wen_7_0_REG ? _GEN_2636 : meta_array_20_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2701 = s1_way_wen_7_0_REG ? _GEN_2637 : meta_array_21_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2702 = s1_way_wen_7_0_REG ? _GEN_2638 : meta_array_22_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2703 = s1_way_wen_7_0_REG ? _GEN_2639 : meta_array_23_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2704 = s1_way_wen_7_0_REG ? _GEN_2640 : meta_array_24_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2705 = s1_way_wen_7_0_REG ? _GEN_2641 : meta_array_25_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2706 = s1_way_wen_7_0_REG ? _GEN_2642 : meta_array_26_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2707 = s1_way_wen_7_0_REG ? _GEN_2643 : meta_array_27_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2708 = s1_way_wen_7_0_REG ? _GEN_2644 : meta_array_28_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2709 = s1_way_wen_7_0_REG ? _GEN_2645 : meta_array_29_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2710 = s1_way_wen_7_0_REG ? _GEN_2646 : meta_array_30_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2711 = s1_way_wen_7_0_REG ? _GEN_2647 : meta_array_31_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2712 = s1_way_wen_7_0_REG ? _GEN_2648 : meta_array_32_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2713 = s1_way_wen_7_0_REG ? _GEN_2649 : meta_array_33_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2714 = s1_way_wen_7_0_REG ? _GEN_2650 : meta_array_34_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2715 = s1_way_wen_7_0_REG ? _GEN_2651 : meta_array_35_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2716 = s1_way_wen_7_0_REG ? _GEN_2652 : meta_array_36_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2717 = s1_way_wen_7_0_REG ? _GEN_2653 : meta_array_37_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2718 = s1_way_wen_7_0_REG ? _GEN_2654 : meta_array_38_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2719 = s1_way_wen_7_0_REG ? _GEN_2655 : meta_array_39_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2720 = s1_way_wen_7_0_REG ? _GEN_2656 : meta_array_40_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2721 = s1_way_wen_7_0_REG ? _GEN_2657 : meta_array_41_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2722 = s1_way_wen_7_0_REG ? _GEN_2658 : meta_array_42_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2723 = s1_way_wen_7_0_REG ? _GEN_2659 : meta_array_43_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2724 = s1_way_wen_7_0_REG ? _GEN_2660 : meta_array_44_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2725 = s1_way_wen_7_0_REG ? _GEN_2661 : meta_array_45_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2726 = s1_way_wen_7_0_REG ? _GEN_2662 : meta_array_46_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2727 = s1_way_wen_7_0_REG ? _GEN_2663 : meta_array_47_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2728 = s1_way_wen_7_0_REG ? _GEN_2664 : meta_array_48_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2729 = s1_way_wen_7_0_REG ? _GEN_2665 : meta_array_49_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2730 = s1_way_wen_7_0_REG ? _GEN_2666 : meta_array_50_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2731 = s1_way_wen_7_0_REG ? _GEN_2667 : meta_array_51_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2732 = s1_way_wen_7_0_REG ? _GEN_2668 : meta_array_52_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2733 = s1_way_wen_7_0_REG ? _GEN_2669 : meta_array_53_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2734 = s1_way_wen_7_0_REG ? _GEN_2670 : meta_array_54_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2735 = s1_way_wen_7_0_REG ? _GEN_2671 : meta_array_55_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2736 = s1_way_wen_7_0_REG ? _GEN_2672 : meta_array_56_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2737 = s1_way_wen_7_0_REG ? _GEN_2673 : meta_array_57_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2738 = s1_way_wen_7_0_REG ? _GEN_2674 : meta_array_58_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2739 = s1_way_wen_7_0_REG ? _GEN_2675 : meta_array_59_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2740 = s1_way_wen_7_0_REG ? _GEN_2676 : meta_array_60_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2741 = s1_way_wen_7_0_REG ? _GEN_2677 : meta_array_61_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2742 = s1_way_wen_7_0_REG ? _GEN_2678 : meta_array_62_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire [1:0] _GEN_2743 = s1_way_wen_7_0_REG ? _GEN_2679 : meta_array_63_7_coh_state; // @[AsynchronousMetaArray.scala 58:27 99:41]
  wire  s0_way_wen_0_1 = io_write_1_valid & io_write_1_bits_way_en[0]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_1_1 = io_write_1_valid & io_write_1_bits_way_en[1]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_2_1 = io_write_1_valid & io_write_1_bits_way_en[2]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_3_1 = io_write_1_valid & io_write_1_bits_way_en[3]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_4_1 = io_write_1_valid & io_write_1_bits_way_en[4]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_5_1 = io_write_1_valid & io_write_1_bits_way_en[5]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_6_1 = io_write_1_valid & io_write_1_bits_way_en[6]; // @[AsynchronousMetaArray.scala 95:49]
  wire  s0_way_wen_7_1 = io_write_1_valid & io_write_1_bits_way_en[7]; // @[AsynchronousMetaArray.scala 95:49]
  assign io_resp_0_0_coh_state = io_resp_0_0_r ? io_resp_0_0_r1_coh_state : io_resp_0_0_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_1_coh_state = io_resp_0_1_r ? io_resp_0_1_r1_coh_state : io_resp_0_1_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_2_coh_state = io_resp_0_2_r ? io_resp_0_2_r1_coh_state : io_resp_0_2_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_3_coh_state = io_resp_0_3_r ? io_resp_0_3_r1_coh_state : io_resp_0_3_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_4_coh_state = io_resp_0_4_r ? io_resp_0_4_r1_coh_state : io_resp_0_4_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_5_coh_state = io_resp_0_5_r ? io_resp_0_5_r1_coh_state : io_resp_0_5_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_6_coh_state = io_resp_0_6_r ? io_resp_0_6_r1_coh_state : io_resp_0_6_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_0_7_coh_state = io_resp_0_7_r ? io_resp_0_7_r1_coh_state : io_resp_0_7_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_0_coh_state = io_resp_1_0_r ? io_resp_1_0_r1_coh_state : io_resp_1_0_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_1_coh_state = io_resp_1_1_r ? io_resp_1_1_r1_coh_state : io_resp_1_1_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_2_coh_state = io_resp_1_2_r ? io_resp_1_2_r1_coh_state : io_resp_1_2_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_3_coh_state = io_resp_1_3_r ? io_resp_1_3_r1_coh_state : io_resp_1_3_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_4_coh_state = io_resp_1_4_r ? io_resp_1_4_r1_coh_state : io_resp_1_4_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_5_coh_state = io_resp_1_5_r ? io_resp_1_5_r1_coh_state : io_resp_1_5_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_6_coh_state = io_resp_1_6_r ? io_resp_1_6_r1_coh_state : io_resp_1_6_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_1_7_coh_state = io_resp_1_7_r ? io_resp_1_7_r1_coh_state : io_resp_1_7_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_0_coh_state = io_resp_2_0_r ? io_resp_2_0_r1_coh_state : io_resp_2_0_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_1_coh_state = io_resp_2_1_r ? io_resp_2_1_r1_coh_state : io_resp_2_1_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_2_coh_state = io_resp_2_2_r ? io_resp_2_2_r1_coh_state : io_resp_2_2_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_3_coh_state = io_resp_2_3_r ? io_resp_2_3_r1_coh_state : io_resp_2_3_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_4_coh_state = io_resp_2_4_r ? io_resp_2_4_r1_coh_state : io_resp_2_4_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_5_coh_state = io_resp_2_5_r ? io_resp_2_5_r1_coh_state : io_resp_2_5_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_6_coh_state = io_resp_2_6_r ? io_resp_2_6_r1_coh_state : io_resp_2_6_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  assign io_resp_2_7_coh_state = io_resp_2_7_r ? io_resp_2_7_r1_coh_state : io_resp_2_7_r2_coh_state; // @[AsynchronousMetaArray.scala 82:25]
  always @(posedge clock) begin
    if (s0_way_wen_0_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_0_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_0_0_REG <= io_write_0_valid & io_write_0_bits_way_en[0]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_0_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_0_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_0_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_0_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_0_1_REG <= io_write_1_valid & io_write_1_bits_way_en[0]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_0_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_0_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_0_r <= read_way_bypass; // @[Reg.scala 17:22]
    end
    if (read_way_bypass) begin // @[Reg.scala 17:18]
      if (s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_0_r1_coh_state <= s1_way_wdata_0_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_0_r1_coh_state <= s1_way_wdata_0_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_0_r2_coh_state <= meta_array_63_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_0_r2_coh_state <= meta_array_62_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_0_r2_coh_state <= meta_array_61_0_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_0_r2_coh_state <= _GEN_66;
      end
    end
    if (s0_way_wen_1_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_1_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_1_0_REG <= io_write_0_valid & io_write_0_bits_way_en[1]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_1_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_1_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_1_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_1_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_1_1_REG <= io_write_1_valid & io_write_1_bits_way_en[1]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_1_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_1_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_1_r <= read_way_bypass_1; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_1) begin // @[Reg.scala 17:18]
      if (s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_1_r1_coh_state <= s1_way_wdata_1_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_1_r1_coh_state <= s1_way_wdata_1_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_1_r2_coh_state <= meta_array_63_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_1_r2_coh_state <= meta_array_62_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_1_r2_coh_state <= meta_array_61_1_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_1_r2_coh_state <= _GEN_137;
      end
    end
    if (s0_way_wen_2_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_2_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_2_0_REG <= io_write_0_valid & io_write_0_bits_way_en[2]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_2_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_2_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_2_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_2_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_2_1_REG <= io_write_1_valid & io_write_1_bits_way_en[2]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_2_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_2_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_2_r <= read_way_bypass_2; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_2) begin // @[Reg.scala 17:18]
      if (s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_2_r1_coh_state <= s1_way_wdata_2_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_2_r1_coh_state <= s1_way_wdata_2_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_2_r2_coh_state <= meta_array_63_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_2_r2_coh_state <= meta_array_62_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_2_r2_coh_state <= meta_array_61_2_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_2_r2_coh_state <= _GEN_208;
      end
    end
    if (s0_way_wen_3_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_3_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_3_0_REG <= io_write_0_valid & io_write_0_bits_way_en[3]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_3_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_3_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_3_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_3_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_3_1_REG <= io_write_1_valid & io_write_1_bits_way_en[3]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_3_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_3_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_3_r <= read_way_bypass_3; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_3) begin // @[Reg.scala 17:18]
      if (s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_3_r1_coh_state <= s1_way_wdata_3_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_3_r1_coh_state <= s1_way_wdata_3_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_3_r2_coh_state <= meta_array_63_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_3_r2_coh_state <= meta_array_62_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_3_r2_coh_state <= meta_array_61_3_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_3_r2_coh_state <= _GEN_279;
      end
    end
    if (s0_way_wen_4_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_4_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_4_0_REG <= io_write_0_valid & io_write_0_bits_way_en[4]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_4_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_4_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_4_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_4_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_4_1_REG <= io_write_1_valid & io_write_1_bits_way_en[4]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_4_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_4_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_4_r <= read_way_bypass_4; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_4) begin // @[Reg.scala 17:18]
      if (s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_4_r1_coh_state <= s1_way_wdata_4_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_4_r1_coh_state <= s1_way_wdata_4_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_4_r2_coh_state <= meta_array_63_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_4_r2_coh_state <= meta_array_62_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_4_r2_coh_state <= meta_array_61_4_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_4_r2_coh_state <= _GEN_350;
      end
    end
    if (s0_way_wen_5_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_5_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_5_0_REG <= io_write_0_valid & io_write_0_bits_way_en[5]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_5_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_5_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_5_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_5_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_5_1_REG <= io_write_1_valid & io_write_1_bits_way_en[5]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_5_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_5_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_5_r <= read_way_bypass_5; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_5) begin // @[Reg.scala 17:18]
      if (s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_5_r1_coh_state <= s1_way_wdata_5_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_5_r1_coh_state <= s1_way_wdata_5_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_5_r2_coh_state <= meta_array_63_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_5_r2_coh_state <= meta_array_62_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_5_r2_coh_state <= meta_array_61_5_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_5_r2_coh_state <= _GEN_421;
      end
    end
    if (s0_way_wen_6_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_6_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_6_0_REG <= io_write_0_valid & io_write_0_bits_way_en[6]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_6_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_6_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_6_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_6_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_6_1_REG <= io_write_1_valid & io_write_1_bits_way_en[6]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_6_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_6_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_6_r <= read_way_bypass_6; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_6) begin // @[Reg.scala 17:18]
      if (s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_6_r1_coh_state <= s1_way_wdata_6_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_6_r1_coh_state <= s1_way_wdata_6_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_6_r2_coh_state <= meta_array_63_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_6_r2_coh_state <= meta_array_62_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_6_r2_coh_state <= meta_array_61_6_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_6_r2_coh_state <= _GEN_492;
      end
    end
    if (s0_way_wen_7_0) begin // @[Reg.scala 17:18]
      s1_way_waddr_7_0_r <= io_write_0_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_7_0_REG <= io_write_0_valid & io_write_0_bits_way_en[7]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_7_0) begin // @[Reg.scala 17:18]
      s1_way_wdata_7_0_rcoh_state <= io_write_0_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (s0_way_wen_7_1) begin // @[Reg.scala 17:18]
      s1_way_waddr_7_1_r <= io_write_1_bits_idx; // @[Reg.scala 17:22]
    end
    s1_way_wen_7_1_REG <= io_write_1_valid & io_write_1_bits_way_en[7]; // @[AsynchronousMetaArray.scala 95:49]
    if (s0_way_wen_7_1) begin // @[Reg.scala 17:18]
      s1_way_wdata_7_1_rcoh_state <= io_write_1_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      io_resp_0_7_r <= read_way_bypass_7; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_7) begin // @[Reg.scala 17:18]
      if (s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_0_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_0_7_r1_coh_state <= s1_way_wdata_7_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_0_7_r1_coh_state <= s1_way_wdata_7_0_rcoh_state;
      end
    end
    if (io_read_0_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_7_r2_coh_state <= meta_array_63_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_7_r2_coh_state <= meta_array_62_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_0_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_0_7_r2_coh_state <= meta_array_61_7_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_0_7_r2_coh_state <= _GEN_563;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_0_r <= read_way_bypass_8; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_8) begin // @[Reg.scala 17:18]
      if (s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_0_r1_coh_state <= s1_way_wdata_0_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_0_r1_coh_state <= s1_way_wdata_0_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_0_r2_coh_state <= meta_array_63_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_0_r2_coh_state <= meta_array_62_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_0_r2_coh_state <= meta_array_61_0_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_0_r2_coh_state <= _GEN_634;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_1_r <= read_way_bypass_9; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_9) begin // @[Reg.scala 17:18]
      if (s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_1_r1_coh_state <= s1_way_wdata_1_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_1_r1_coh_state <= s1_way_wdata_1_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_1_r2_coh_state <= meta_array_63_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_1_r2_coh_state <= meta_array_62_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_1_r2_coh_state <= meta_array_61_1_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_1_r2_coh_state <= _GEN_705;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_2_r <= read_way_bypass_10; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_10) begin // @[Reg.scala 17:18]
      if (s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_2_r1_coh_state <= s1_way_wdata_2_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_2_r1_coh_state <= s1_way_wdata_2_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_2_r2_coh_state <= meta_array_63_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_2_r2_coh_state <= meta_array_62_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_2_r2_coh_state <= meta_array_61_2_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_2_r2_coh_state <= _GEN_776;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_3_r <= read_way_bypass_11; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_11) begin // @[Reg.scala 17:18]
      if (s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_3_r1_coh_state <= s1_way_wdata_3_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_3_r1_coh_state <= s1_way_wdata_3_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_3_r2_coh_state <= meta_array_63_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_3_r2_coh_state <= meta_array_62_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_3_r2_coh_state <= meta_array_61_3_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_3_r2_coh_state <= _GEN_847;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_4_r <= read_way_bypass_12; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_12) begin // @[Reg.scala 17:18]
      if (s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_4_r1_coh_state <= s1_way_wdata_4_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_4_r1_coh_state <= s1_way_wdata_4_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_4_r2_coh_state <= meta_array_63_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_4_r2_coh_state <= meta_array_62_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_4_r2_coh_state <= meta_array_61_4_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_4_r2_coh_state <= _GEN_918;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_5_r <= read_way_bypass_13; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_13) begin // @[Reg.scala 17:18]
      if (s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_5_r1_coh_state <= s1_way_wdata_5_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_5_r1_coh_state <= s1_way_wdata_5_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_5_r2_coh_state <= meta_array_63_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_5_r2_coh_state <= meta_array_62_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_5_r2_coh_state <= meta_array_61_5_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_5_r2_coh_state <= _GEN_989;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_6_r <= read_way_bypass_14; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_14) begin // @[Reg.scala 17:18]
      if (s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_6_r1_coh_state <= s1_way_wdata_6_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_6_r1_coh_state <= s1_way_wdata_6_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_6_r2_coh_state <= meta_array_63_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_6_r2_coh_state <= meta_array_62_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_6_r2_coh_state <= meta_array_61_6_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_6_r2_coh_state <= _GEN_1060;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      io_resp_1_7_r <= read_way_bypass_15; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_15) begin // @[Reg.scala 17:18]
      if (s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_1_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_1_7_r1_coh_state <= s1_way_wdata_7_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_1_7_r1_coh_state <= s1_way_wdata_7_0_rcoh_state;
      end
    end
    if (io_read_1_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_7_r2_coh_state <= meta_array_63_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_7_r2_coh_state <= meta_array_62_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_1_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_1_7_r2_coh_state <= meta_array_61_7_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_1_7_r2_coh_state <= _GEN_1131;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_0_r <= read_way_bypass_16; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_16) begin // @[Reg.scala 17:18]
      if (s1_way_wen_0_1_REG & s1_way_waddr_0_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_0_r1_coh_state <= s1_way_wdata_0_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_0_r1_coh_state <= s1_way_wdata_0_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_0_r2_coh_state <= meta_array_63_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_0_r2_coh_state <= meta_array_62_0_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_0_r2_coh_state <= meta_array_61_0_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_0_r2_coh_state <= _GEN_1202;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_1_r <= read_way_bypass_17; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_17) begin // @[Reg.scala 17:18]
      if (s1_way_wen_1_1_REG & s1_way_waddr_1_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_1_r1_coh_state <= s1_way_wdata_1_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_1_r1_coh_state <= s1_way_wdata_1_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_1_r2_coh_state <= meta_array_63_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_1_r2_coh_state <= meta_array_62_1_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_1_r2_coh_state <= meta_array_61_1_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_1_r2_coh_state <= _GEN_1273;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_2_r <= read_way_bypass_18; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_18) begin // @[Reg.scala 17:18]
      if (s1_way_wen_2_1_REG & s1_way_waddr_2_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_2_r1_coh_state <= s1_way_wdata_2_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_2_r1_coh_state <= s1_way_wdata_2_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_2_r2_coh_state <= meta_array_63_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_2_r2_coh_state <= meta_array_62_2_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_2_r2_coh_state <= meta_array_61_2_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_2_r2_coh_state <= _GEN_1344;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_3_r <= read_way_bypass_19; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_19) begin // @[Reg.scala 17:18]
      if (s1_way_wen_3_1_REG & s1_way_waddr_3_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_3_r1_coh_state <= s1_way_wdata_3_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_3_r1_coh_state <= s1_way_wdata_3_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_3_r2_coh_state <= meta_array_63_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_3_r2_coh_state <= meta_array_62_3_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_3_r2_coh_state <= meta_array_61_3_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_3_r2_coh_state <= _GEN_1415;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_4_r <= read_way_bypass_20; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_20) begin // @[Reg.scala 17:18]
      if (s1_way_wen_4_1_REG & s1_way_waddr_4_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_4_r1_coh_state <= s1_way_wdata_4_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_4_r1_coh_state <= s1_way_wdata_4_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_4_r2_coh_state <= meta_array_63_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_4_r2_coh_state <= meta_array_62_4_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_4_r2_coh_state <= meta_array_61_4_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_4_r2_coh_state <= _GEN_1486;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_5_r <= read_way_bypass_21; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_21) begin // @[Reg.scala 17:18]
      if (s1_way_wen_5_1_REG & s1_way_waddr_5_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_5_r1_coh_state <= s1_way_wdata_5_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_5_r1_coh_state <= s1_way_wdata_5_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_5_r2_coh_state <= meta_array_63_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_5_r2_coh_state <= meta_array_62_5_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_5_r2_coh_state <= meta_array_61_5_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_5_r2_coh_state <= _GEN_1557;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_6_r <= read_way_bypass_22; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_22) begin // @[Reg.scala 17:18]
      if (s1_way_wen_6_1_REG & s1_way_waddr_6_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_6_r1_coh_state <= s1_way_wdata_6_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_6_r1_coh_state <= s1_way_wdata_6_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_6_r2_coh_state <= meta_array_63_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_6_r2_coh_state <= meta_array_62_6_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_6_r2_coh_state <= meta_array_61_6_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_6_r2_coh_state <= _GEN_1628;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      io_resp_2_7_r <= read_way_bypass_23; // @[Reg.scala 17:22]
    end
    if (read_way_bypass_23) begin // @[Reg.scala 17:18]
      if (s1_way_wen_7_1_REG & s1_way_waddr_7_1_r == io_read_2_bits_idx) begin // @[AsynchronousMetaArray.scala 77:85]
        io_resp_2_7_r1_coh_state <= s1_way_wdata_7_1_rcoh_state; // @[AsynchronousMetaArray.scala 79:25]
      end else begin
        io_resp_2_7_r1_coh_state <= s1_way_wdata_7_0_rcoh_state;
      end
    end
    if (io_read_2_valid) begin // @[Reg.scala 17:18]
      if (6'h3f == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_7_r2_coh_state <= meta_array_63_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3e == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_7_r2_coh_state <= meta_array_62_7_coh_state; // @[Reg.scala 17:22]
      end else if (6'h3d == io_read_2_bits_idx) begin // @[Reg.scala 17:22]
        io_resp_2_7_r2_coh_state <= meta_array_61_7_coh_state; // @[Reg.scala 17:22]
      end else begin
        io_resp_2_7_r2_coh_state <= _GEN_1699;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h0 == s1_way_waddr_0_1_r) begin
        meta_array_0_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_0_0_coh_state <= _GEN_1770;
      end
    end else begin
      meta_array_0_0_coh_state <= _GEN_1770;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h0 == s1_way_waddr_1_1_r) begin
        meta_array_0_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_0_1_coh_state <= _GEN_1900;
      end
    end else begin
      meta_array_0_1_coh_state <= _GEN_1900;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h0 == s1_way_waddr_2_1_r) begin
        meta_array_0_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_0_2_coh_state <= _GEN_2030;
      end
    end else begin
      meta_array_0_2_coh_state <= _GEN_2030;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h0 == s1_way_waddr_3_1_r) begin
        meta_array_0_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_0_3_coh_state <= _GEN_2160;
      end
    end else begin
      meta_array_0_3_coh_state <= _GEN_2160;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h0 == s1_way_waddr_4_1_r) begin
        meta_array_0_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_0_4_coh_state <= _GEN_2290;
      end
    end else begin
      meta_array_0_4_coh_state <= _GEN_2290;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h0 == s1_way_waddr_5_1_r) begin
        meta_array_0_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_0_5_coh_state <= _GEN_2420;
      end
    end else begin
      meta_array_0_5_coh_state <= _GEN_2420;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h0 == s1_way_waddr_6_1_r) begin
        meta_array_0_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_0_6_coh_state <= _GEN_2550;
      end
    end else begin
      meta_array_0_6_coh_state <= _GEN_2550;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_0_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h0 == s1_way_waddr_7_1_r) begin
        meta_array_0_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_0_7_coh_state <= _GEN_2680;
      end
    end else begin
      meta_array_0_7_coh_state <= _GEN_2680;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1 == s1_way_waddr_0_1_r) begin
        meta_array_1_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_1_0_coh_state <= _GEN_1771;
      end
    end else begin
      meta_array_1_0_coh_state <= _GEN_1771;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1 == s1_way_waddr_1_1_r) begin
        meta_array_1_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_1_1_coh_state <= _GEN_1901;
      end
    end else begin
      meta_array_1_1_coh_state <= _GEN_1901;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1 == s1_way_waddr_2_1_r) begin
        meta_array_1_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_1_2_coh_state <= _GEN_2031;
      end
    end else begin
      meta_array_1_2_coh_state <= _GEN_2031;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1 == s1_way_waddr_3_1_r) begin
        meta_array_1_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_1_3_coh_state <= _GEN_2161;
      end
    end else begin
      meta_array_1_3_coh_state <= _GEN_2161;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1 == s1_way_waddr_4_1_r) begin
        meta_array_1_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_1_4_coh_state <= _GEN_2291;
      end
    end else begin
      meta_array_1_4_coh_state <= _GEN_2291;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1 == s1_way_waddr_5_1_r) begin
        meta_array_1_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_1_5_coh_state <= _GEN_2421;
      end
    end else begin
      meta_array_1_5_coh_state <= _GEN_2421;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1 == s1_way_waddr_6_1_r) begin
        meta_array_1_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_1_6_coh_state <= _GEN_2551;
      end
    end else begin
      meta_array_1_6_coh_state <= _GEN_2551;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_1_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1 == s1_way_waddr_7_1_r) begin
        meta_array_1_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_1_7_coh_state <= _GEN_2681;
      end
    end else begin
      meta_array_1_7_coh_state <= _GEN_2681;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2 == s1_way_waddr_0_1_r) begin
        meta_array_2_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_2_0_coh_state <= _GEN_1772;
      end
    end else begin
      meta_array_2_0_coh_state <= _GEN_1772;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2 == s1_way_waddr_1_1_r) begin
        meta_array_2_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_2_1_coh_state <= _GEN_1902;
      end
    end else begin
      meta_array_2_1_coh_state <= _GEN_1902;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2 == s1_way_waddr_2_1_r) begin
        meta_array_2_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_2_2_coh_state <= _GEN_2032;
      end
    end else begin
      meta_array_2_2_coh_state <= _GEN_2032;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2 == s1_way_waddr_3_1_r) begin
        meta_array_2_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_2_3_coh_state <= _GEN_2162;
      end
    end else begin
      meta_array_2_3_coh_state <= _GEN_2162;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2 == s1_way_waddr_4_1_r) begin
        meta_array_2_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_2_4_coh_state <= _GEN_2292;
      end
    end else begin
      meta_array_2_4_coh_state <= _GEN_2292;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2 == s1_way_waddr_5_1_r) begin
        meta_array_2_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_2_5_coh_state <= _GEN_2422;
      end
    end else begin
      meta_array_2_5_coh_state <= _GEN_2422;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2 == s1_way_waddr_6_1_r) begin
        meta_array_2_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_2_6_coh_state <= _GEN_2552;
      end
    end else begin
      meta_array_2_6_coh_state <= _GEN_2552;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_2_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2 == s1_way_waddr_7_1_r) begin
        meta_array_2_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_2_7_coh_state <= _GEN_2682;
      end
    end else begin
      meta_array_2_7_coh_state <= _GEN_2682;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3 == s1_way_waddr_0_1_r) begin
        meta_array_3_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_3_0_coh_state <= _GEN_1773;
      end
    end else begin
      meta_array_3_0_coh_state <= _GEN_1773;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3 == s1_way_waddr_1_1_r) begin
        meta_array_3_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_3_1_coh_state <= _GEN_1903;
      end
    end else begin
      meta_array_3_1_coh_state <= _GEN_1903;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3 == s1_way_waddr_2_1_r) begin
        meta_array_3_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_3_2_coh_state <= _GEN_2033;
      end
    end else begin
      meta_array_3_2_coh_state <= _GEN_2033;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3 == s1_way_waddr_3_1_r) begin
        meta_array_3_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_3_3_coh_state <= _GEN_2163;
      end
    end else begin
      meta_array_3_3_coh_state <= _GEN_2163;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3 == s1_way_waddr_4_1_r) begin
        meta_array_3_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_3_4_coh_state <= _GEN_2293;
      end
    end else begin
      meta_array_3_4_coh_state <= _GEN_2293;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3 == s1_way_waddr_5_1_r) begin
        meta_array_3_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_3_5_coh_state <= _GEN_2423;
      end
    end else begin
      meta_array_3_5_coh_state <= _GEN_2423;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3 == s1_way_waddr_6_1_r) begin
        meta_array_3_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_3_6_coh_state <= _GEN_2553;
      end
    end else begin
      meta_array_3_6_coh_state <= _GEN_2553;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_3_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3 == s1_way_waddr_7_1_r) begin
        meta_array_3_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_3_7_coh_state <= _GEN_2683;
      end
    end else begin
      meta_array_3_7_coh_state <= _GEN_2683;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h4 == s1_way_waddr_0_1_r) begin
        meta_array_4_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_4_0_coh_state <= _GEN_1774;
      end
    end else begin
      meta_array_4_0_coh_state <= _GEN_1774;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h4 == s1_way_waddr_1_1_r) begin
        meta_array_4_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_4_1_coh_state <= _GEN_1904;
      end
    end else begin
      meta_array_4_1_coh_state <= _GEN_1904;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h4 == s1_way_waddr_2_1_r) begin
        meta_array_4_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_4_2_coh_state <= _GEN_2034;
      end
    end else begin
      meta_array_4_2_coh_state <= _GEN_2034;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h4 == s1_way_waddr_3_1_r) begin
        meta_array_4_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_4_3_coh_state <= _GEN_2164;
      end
    end else begin
      meta_array_4_3_coh_state <= _GEN_2164;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h4 == s1_way_waddr_4_1_r) begin
        meta_array_4_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_4_4_coh_state <= _GEN_2294;
      end
    end else begin
      meta_array_4_4_coh_state <= _GEN_2294;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h4 == s1_way_waddr_5_1_r) begin
        meta_array_4_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_4_5_coh_state <= _GEN_2424;
      end
    end else begin
      meta_array_4_5_coh_state <= _GEN_2424;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h4 == s1_way_waddr_6_1_r) begin
        meta_array_4_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_4_6_coh_state <= _GEN_2554;
      end
    end else begin
      meta_array_4_6_coh_state <= _GEN_2554;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_4_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h4 == s1_way_waddr_7_1_r) begin
        meta_array_4_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_4_7_coh_state <= _GEN_2684;
      end
    end else begin
      meta_array_4_7_coh_state <= _GEN_2684;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h5 == s1_way_waddr_0_1_r) begin
        meta_array_5_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_5_0_coh_state <= _GEN_1775;
      end
    end else begin
      meta_array_5_0_coh_state <= _GEN_1775;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h5 == s1_way_waddr_1_1_r) begin
        meta_array_5_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_5_1_coh_state <= _GEN_1905;
      end
    end else begin
      meta_array_5_1_coh_state <= _GEN_1905;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h5 == s1_way_waddr_2_1_r) begin
        meta_array_5_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_5_2_coh_state <= _GEN_2035;
      end
    end else begin
      meta_array_5_2_coh_state <= _GEN_2035;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h5 == s1_way_waddr_3_1_r) begin
        meta_array_5_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_5_3_coh_state <= _GEN_2165;
      end
    end else begin
      meta_array_5_3_coh_state <= _GEN_2165;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h5 == s1_way_waddr_4_1_r) begin
        meta_array_5_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_5_4_coh_state <= _GEN_2295;
      end
    end else begin
      meta_array_5_4_coh_state <= _GEN_2295;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h5 == s1_way_waddr_5_1_r) begin
        meta_array_5_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_5_5_coh_state <= _GEN_2425;
      end
    end else begin
      meta_array_5_5_coh_state <= _GEN_2425;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h5 == s1_way_waddr_6_1_r) begin
        meta_array_5_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_5_6_coh_state <= _GEN_2555;
      end
    end else begin
      meta_array_5_6_coh_state <= _GEN_2555;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_5_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h5 == s1_way_waddr_7_1_r) begin
        meta_array_5_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_5_7_coh_state <= _GEN_2685;
      end
    end else begin
      meta_array_5_7_coh_state <= _GEN_2685;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h6 == s1_way_waddr_0_1_r) begin
        meta_array_6_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_6_0_coh_state <= _GEN_1776;
      end
    end else begin
      meta_array_6_0_coh_state <= _GEN_1776;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h6 == s1_way_waddr_1_1_r) begin
        meta_array_6_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_6_1_coh_state <= _GEN_1906;
      end
    end else begin
      meta_array_6_1_coh_state <= _GEN_1906;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h6 == s1_way_waddr_2_1_r) begin
        meta_array_6_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_6_2_coh_state <= _GEN_2036;
      end
    end else begin
      meta_array_6_2_coh_state <= _GEN_2036;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h6 == s1_way_waddr_3_1_r) begin
        meta_array_6_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_6_3_coh_state <= _GEN_2166;
      end
    end else begin
      meta_array_6_3_coh_state <= _GEN_2166;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h6 == s1_way_waddr_4_1_r) begin
        meta_array_6_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_6_4_coh_state <= _GEN_2296;
      end
    end else begin
      meta_array_6_4_coh_state <= _GEN_2296;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h6 == s1_way_waddr_5_1_r) begin
        meta_array_6_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_6_5_coh_state <= _GEN_2426;
      end
    end else begin
      meta_array_6_5_coh_state <= _GEN_2426;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h6 == s1_way_waddr_6_1_r) begin
        meta_array_6_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_6_6_coh_state <= _GEN_2556;
      end
    end else begin
      meta_array_6_6_coh_state <= _GEN_2556;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_6_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h6 == s1_way_waddr_7_1_r) begin
        meta_array_6_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_6_7_coh_state <= _GEN_2686;
      end
    end else begin
      meta_array_6_7_coh_state <= _GEN_2686;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h7 == s1_way_waddr_0_1_r) begin
        meta_array_7_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_7_0_coh_state <= _GEN_1777;
      end
    end else begin
      meta_array_7_0_coh_state <= _GEN_1777;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h7 == s1_way_waddr_1_1_r) begin
        meta_array_7_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_7_1_coh_state <= _GEN_1907;
      end
    end else begin
      meta_array_7_1_coh_state <= _GEN_1907;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h7 == s1_way_waddr_2_1_r) begin
        meta_array_7_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_7_2_coh_state <= _GEN_2037;
      end
    end else begin
      meta_array_7_2_coh_state <= _GEN_2037;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h7 == s1_way_waddr_3_1_r) begin
        meta_array_7_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_7_3_coh_state <= _GEN_2167;
      end
    end else begin
      meta_array_7_3_coh_state <= _GEN_2167;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h7 == s1_way_waddr_4_1_r) begin
        meta_array_7_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_7_4_coh_state <= _GEN_2297;
      end
    end else begin
      meta_array_7_4_coh_state <= _GEN_2297;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h7 == s1_way_waddr_5_1_r) begin
        meta_array_7_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_7_5_coh_state <= _GEN_2427;
      end
    end else begin
      meta_array_7_5_coh_state <= _GEN_2427;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h7 == s1_way_waddr_6_1_r) begin
        meta_array_7_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_7_6_coh_state <= _GEN_2557;
      end
    end else begin
      meta_array_7_6_coh_state <= _GEN_2557;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_7_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h7 == s1_way_waddr_7_1_r) begin
        meta_array_7_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_7_7_coh_state <= _GEN_2687;
      end
    end else begin
      meta_array_7_7_coh_state <= _GEN_2687;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h8 == s1_way_waddr_0_1_r) begin
        meta_array_8_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_8_0_coh_state <= _GEN_1778;
      end
    end else begin
      meta_array_8_0_coh_state <= _GEN_1778;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h8 == s1_way_waddr_1_1_r) begin
        meta_array_8_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_8_1_coh_state <= _GEN_1908;
      end
    end else begin
      meta_array_8_1_coh_state <= _GEN_1908;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h8 == s1_way_waddr_2_1_r) begin
        meta_array_8_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_8_2_coh_state <= _GEN_2038;
      end
    end else begin
      meta_array_8_2_coh_state <= _GEN_2038;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h8 == s1_way_waddr_3_1_r) begin
        meta_array_8_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_8_3_coh_state <= _GEN_2168;
      end
    end else begin
      meta_array_8_3_coh_state <= _GEN_2168;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h8 == s1_way_waddr_4_1_r) begin
        meta_array_8_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_8_4_coh_state <= _GEN_2298;
      end
    end else begin
      meta_array_8_4_coh_state <= _GEN_2298;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h8 == s1_way_waddr_5_1_r) begin
        meta_array_8_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_8_5_coh_state <= _GEN_2428;
      end
    end else begin
      meta_array_8_5_coh_state <= _GEN_2428;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h8 == s1_way_waddr_6_1_r) begin
        meta_array_8_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_8_6_coh_state <= _GEN_2558;
      end
    end else begin
      meta_array_8_6_coh_state <= _GEN_2558;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_8_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h8 == s1_way_waddr_7_1_r) begin
        meta_array_8_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_8_7_coh_state <= _GEN_2688;
      end
    end else begin
      meta_array_8_7_coh_state <= _GEN_2688;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h9 == s1_way_waddr_0_1_r) begin
        meta_array_9_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_9_0_coh_state <= _GEN_1779;
      end
    end else begin
      meta_array_9_0_coh_state <= _GEN_1779;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h9 == s1_way_waddr_1_1_r) begin
        meta_array_9_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_9_1_coh_state <= _GEN_1909;
      end
    end else begin
      meta_array_9_1_coh_state <= _GEN_1909;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h9 == s1_way_waddr_2_1_r) begin
        meta_array_9_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_9_2_coh_state <= _GEN_2039;
      end
    end else begin
      meta_array_9_2_coh_state <= _GEN_2039;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h9 == s1_way_waddr_3_1_r) begin
        meta_array_9_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_9_3_coh_state <= _GEN_2169;
      end
    end else begin
      meta_array_9_3_coh_state <= _GEN_2169;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h9 == s1_way_waddr_4_1_r) begin
        meta_array_9_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_9_4_coh_state <= _GEN_2299;
      end
    end else begin
      meta_array_9_4_coh_state <= _GEN_2299;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h9 == s1_way_waddr_5_1_r) begin
        meta_array_9_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_9_5_coh_state <= _GEN_2429;
      end
    end else begin
      meta_array_9_5_coh_state <= _GEN_2429;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h9 == s1_way_waddr_6_1_r) begin
        meta_array_9_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_9_6_coh_state <= _GEN_2559;
      end
    end else begin
      meta_array_9_6_coh_state <= _GEN_2559;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_9_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h9 == s1_way_waddr_7_1_r) begin
        meta_array_9_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_9_7_coh_state <= _GEN_2689;
      end
    end else begin
      meta_array_9_7_coh_state <= _GEN_2689;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'ha == s1_way_waddr_0_1_r) begin
        meta_array_10_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_10_0_coh_state <= _GEN_1780;
      end
    end else begin
      meta_array_10_0_coh_state <= _GEN_1780;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'ha == s1_way_waddr_1_1_r) begin
        meta_array_10_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_10_1_coh_state <= _GEN_1910;
      end
    end else begin
      meta_array_10_1_coh_state <= _GEN_1910;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'ha == s1_way_waddr_2_1_r) begin
        meta_array_10_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_10_2_coh_state <= _GEN_2040;
      end
    end else begin
      meta_array_10_2_coh_state <= _GEN_2040;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'ha == s1_way_waddr_3_1_r) begin
        meta_array_10_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_10_3_coh_state <= _GEN_2170;
      end
    end else begin
      meta_array_10_3_coh_state <= _GEN_2170;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'ha == s1_way_waddr_4_1_r) begin
        meta_array_10_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_10_4_coh_state <= _GEN_2300;
      end
    end else begin
      meta_array_10_4_coh_state <= _GEN_2300;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'ha == s1_way_waddr_5_1_r) begin
        meta_array_10_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_10_5_coh_state <= _GEN_2430;
      end
    end else begin
      meta_array_10_5_coh_state <= _GEN_2430;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'ha == s1_way_waddr_6_1_r) begin
        meta_array_10_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_10_6_coh_state <= _GEN_2560;
      end
    end else begin
      meta_array_10_6_coh_state <= _GEN_2560;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_10_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'ha == s1_way_waddr_7_1_r) begin
        meta_array_10_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_10_7_coh_state <= _GEN_2690;
      end
    end else begin
      meta_array_10_7_coh_state <= _GEN_2690;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'hb == s1_way_waddr_0_1_r) begin
        meta_array_11_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_11_0_coh_state <= _GEN_1781;
      end
    end else begin
      meta_array_11_0_coh_state <= _GEN_1781;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'hb == s1_way_waddr_1_1_r) begin
        meta_array_11_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_11_1_coh_state <= _GEN_1911;
      end
    end else begin
      meta_array_11_1_coh_state <= _GEN_1911;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'hb == s1_way_waddr_2_1_r) begin
        meta_array_11_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_11_2_coh_state <= _GEN_2041;
      end
    end else begin
      meta_array_11_2_coh_state <= _GEN_2041;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'hb == s1_way_waddr_3_1_r) begin
        meta_array_11_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_11_3_coh_state <= _GEN_2171;
      end
    end else begin
      meta_array_11_3_coh_state <= _GEN_2171;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'hb == s1_way_waddr_4_1_r) begin
        meta_array_11_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_11_4_coh_state <= _GEN_2301;
      end
    end else begin
      meta_array_11_4_coh_state <= _GEN_2301;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'hb == s1_way_waddr_5_1_r) begin
        meta_array_11_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_11_5_coh_state <= _GEN_2431;
      end
    end else begin
      meta_array_11_5_coh_state <= _GEN_2431;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'hb == s1_way_waddr_6_1_r) begin
        meta_array_11_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_11_6_coh_state <= _GEN_2561;
      end
    end else begin
      meta_array_11_6_coh_state <= _GEN_2561;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_11_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'hb == s1_way_waddr_7_1_r) begin
        meta_array_11_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_11_7_coh_state <= _GEN_2691;
      end
    end else begin
      meta_array_11_7_coh_state <= _GEN_2691;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'hc == s1_way_waddr_0_1_r) begin
        meta_array_12_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_12_0_coh_state <= _GEN_1782;
      end
    end else begin
      meta_array_12_0_coh_state <= _GEN_1782;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'hc == s1_way_waddr_1_1_r) begin
        meta_array_12_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_12_1_coh_state <= _GEN_1912;
      end
    end else begin
      meta_array_12_1_coh_state <= _GEN_1912;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'hc == s1_way_waddr_2_1_r) begin
        meta_array_12_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_12_2_coh_state <= _GEN_2042;
      end
    end else begin
      meta_array_12_2_coh_state <= _GEN_2042;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'hc == s1_way_waddr_3_1_r) begin
        meta_array_12_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_12_3_coh_state <= _GEN_2172;
      end
    end else begin
      meta_array_12_3_coh_state <= _GEN_2172;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'hc == s1_way_waddr_4_1_r) begin
        meta_array_12_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_12_4_coh_state <= _GEN_2302;
      end
    end else begin
      meta_array_12_4_coh_state <= _GEN_2302;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'hc == s1_way_waddr_5_1_r) begin
        meta_array_12_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_12_5_coh_state <= _GEN_2432;
      end
    end else begin
      meta_array_12_5_coh_state <= _GEN_2432;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'hc == s1_way_waddr_6_1_r) begin
        meta_array_12_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_12_6_coh_state <= _GEN_2562;
      end
    end else begin
      meta_array_12_6_coh_state <= _GEN_2562;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_12_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'hc == s1_way_waddr_7_1_r) begin
        meta_array_12_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_12_7_coh_state <= _GEN_2692;
      end
    end else begin
      meta_array_12_7_coh_state <= _GEN_2692;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'hd == s1_way_waddr_0_1_r) begin
        meta_array_13_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_13_0_coh_state <= _GEN_1783;
      end
    end else begin
      meta_array_13_0_coh_state <= _GEN_1783;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'hd == s1_way_waddr_1_1_r) begin
        meta_array_13_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_13_1_coh_state <= _GEN_1913;
      end
    end else begin
      meta_array_13_1_coh_state <= _GEN_1913;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'hd == s1_way_waddr_2_1_r) begin
        meta_array_13_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_13_2_coh_state <= _GEN_2043;
      end
    end else begin
      meta_array_13_2_coh_state <= _GEN_2043;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'hd == s1_way_waddr_3_1_r) begin
        meta_array_13_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_13_3_coh_state <= _GEN_2173;
      end
    end else begin
      meta_array_13_3_coh_state <= _GEN_2173;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'hd == s1_way_waddr_4_1_r) begin
        meta_array_13_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_13_4_coh_state <= _GEN_2303;
      end
    end else begin
      meta_array_13_4_coh_state <= _GEN_2303;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'hd == s1_way_waddr_5_1_r) begin
        meta_array_13_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_13_5_coh_state <= _GEN_2433;
      end
    end else begin
      meta_array_13_5_coh_state <= _GEN_2433;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'hd == s1_way_waddr_6_1_r) begin
        meta_array_13_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_13_6_coh_state <= _GEN_2563;
      end
    end else begin
      meta_array_13_6_coh_state <= _GEN_2563;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_13_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'hd == s1_way_waddr_7_1_r) begin
        meta_array_13_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_13_7_coh_state <= _GEN_2693;
      end
    end else begin
      meta_array_13_7_coh_state <= _GEN_2693;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'he == s1_way_waddr_0_1_r) begin
        meta_array_14_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_14_0_coh_state <= _GEN_1784;
      end
    end else begin
      meta_array_14_0_coh_state <= _GEN_1784;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'he == s1_way_waddr_1_1_r) begin
        meta_array_14_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_14_1_coh_state <= _GEN_1914;
      end
    end else begin
      meta_array_14_1_coh_state <= _GEN_1914;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'he == s1_way_waddr_2_1_r) begin
        meta_array_14_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_14_2_coh_state <= _GEN_2044;
      end
    end else begin
      meta_array_14_2_coh_state <= _GEN_2044;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'he == s1_way_waddr_3_1_r) begin
        meta_array_14_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_14_3_coh_state <= _GEN_2174;
      end
    end else begin
      meta_array_14_3_coh_state <= _GEN_2174;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'he == s1_way_waddr_4_1_r) begin
        meta_array_14_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_14_4_coh_state <= _GEN_2304;
      end
    end else begin
      meta_array_14_4_coh_state <= _GEN_2304;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'he == s1_way_waddr_5_1_r) begin
        meta_array_14_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_14_5_coh_state <= _GEN_2434;
      end
    end else begin
      meta_array_14_5_coh_state <= _GEN_2434;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'he == s1_way_waddr_6_1_r) begin
        meta_array_14_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_14_6_coh_state <= _GEN_2564;
      end
    end else begin
      meta_array_14_6_coh_state <= _GEN_2564;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_14_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'he == s1_way_waddr_7_1_r) begin
        meta_array_14_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_14_7_coh_state <= _GEN_2694;
      end
    end else begin
      meta_array_14_7_coh_state <= _GEN_2694;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'hf == s1_way_waddr_0_1_r) begin
        meta_array_15_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_15_0_coh_state <= _GEN_1785;
      end
    end else begin
      meta_array_15_0_coh_state <= _GEN_1785;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'hf == s1_way_waddr_1_1_r) begin
        meta_array_15_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_15_1_coh_state <= _GEN_1915;
      end
    end else begin
      meta_array_15_1_coh_state <= _GEN_1915;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'hf == s1_way_waddr_2_1_r) begin
        meta_array_15_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_15_2_coh_state <= _GEN_2045;
      end
    end else begin
      meta_array_15_2_coh_state <= _GEN_2045;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'hf == s1_way_waddr_3_1_r) begin
        meta_array_15_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_15_3_coh_state <= _GEN_2175;
      end
    end else begin
      meta_array_15_3_coh_state <= _GEN_2175;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'hf == s1_way_waddr_4_1_r) begin
        meta_array_15_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_15_4_coh_state <= _GEN_2305;
      end
    end else begin
      meta_array_15_4_coh_state <= _GEN_2305;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'hf == s1_way_waddr_5_1_r) begin
        meta_array_15_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_15_5_coh_state <= _GEN_2435;
      end
    end else begin
      meta_array_15_5_coh_state <= _GEN_2435;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'hf == s1_way_waddr_6_1_r) begin
        meta_array_15_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_15_6_coh_state <= _GEN_2565;
      end
    end else begin
      meta_array_15_6_coh_state <= _GEN_2565;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_15_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'hf == s1_way_waddr_7_1_r) begin
        meta_array_15_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_15_7_coh_state <= _GEN_2695;
      end
    end else begin
      meta_array_15_7_coh_state <= _GEN_2695;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h10 == s1_way_waddr_0_1_r) begin
        meta_array_16_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_16_0_coh_state <= _GEN_1786;
      end
    end else begin
      meta_array_16_0_coh_state <= _GEN_1786;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h10 == s1_way_waddr_1_1_r) begin
        meta_array_16_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_16_1_coh_state <= _GEN_1916;
      end
    end else begin
      meta_array_16_1_coh_state <= _GEN_1916;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h10 == s1_way_waddr_2_1_r) begin
        meta_array_16_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_16_2_coh_state <= _GEN_2046;
      end
    end else begin
      meta_array_16_2_coh_state <= _GEN_2046;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h10 == s1_way_waddr_3_1_r) begin
        meta_array_16_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_16_3_coh_state <= _GEN_2176;
      end
    end else begin
      meta_array_16_3_coh_state <= _GEN_2176;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h10 == s1_way_waddr_4_1_r) begin
        meta_array_16_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_16_4_coh_state <= _GEN_2306;
      end
    end else begin
      meta_array_16_4_coh_state <= _GEN_2306;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h10 == s1_way_waddr_5_1_r) begin
        meta_array_16_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_16_5_coh_state <= _GEN_2436;
      end
    end else begin
      meta_array_16_5_coh_state <= _GEN_2436;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h10 == s1_way_waddr_6_1_r) begin
        meta_array_16_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_16_6_coh_state <= _GEN_2566;
      end
    end else begin
      meta_array_16_6_coh_state <= _GEN_2566;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_16_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h10 == s1_way_waddr_7_1_r) begin
        meta_array_16_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_16_7_coh_state <= _GEN_2696;
      end
    end else begin
      meta_array_16_7_coh_state <= _GEN_2696;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h11 == s1_way_waddr_0_1_r) begin
        meta_array_17_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_17_0_coh_state <= _GEN_1787;
      end
    end else begin
      meta_array_17_0_coh_state <= _GEN_1787;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h11 == s1_way_waddr_1_1_r) begin
        meta_array_17_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_17_1_coh_state <= _GEN_1917;
      end
    end else begin
      meta_array_17_1_coh_state <= _GEN_1917;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h11 == s1_way_waddr_2_1_r) begin
        meta_array_17_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_17_2_coh_state <= _GEN_2047;
      end
    end else begin
      meta_array_17_2_coh_state <= _GEN_2047;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h11 == s1_way_waddr_3_1_r) begin
        meta_array_17_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_17_3_coh_state <= _GEN_2177;
      end
    end else begin
      meta_array_17_3_coh_state <= _GEN_2177;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h11 == s1_way_waddr_4_1_r) begin
        meta_array_17_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_17_4_coh_state <= _GEN_2307;
      end
    end else begin
      meta_array_17_4_coh_state <= _GEN_2307;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h11 == s1_way_waddr_5_1_r) begin
        meta_array_17_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_17_5_coh_state <= _GEN_2437;
      end
    end else begin
      meta_array_17_5_coh_state <= _GEN_2437;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h11 == s1_way_waddr_6_1_r) begin
        meta_array_17_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_17_6_coh_state <= _GEN_2567;
      end
    end else begin
      meta_array_17_6_coh_state <= _GEN_2567;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_17_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h11 == s1_way_waddr_7_1_r) begin
        meta_array_17_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_17_7_coh_state <= _GEN_2697;
      end
    end else begin
      meta_array_17_7_coh_state <= _GEN_2697;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h12 == s1_way_waddr_0_1_r) begin
        meta_array_18_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_18_0_coh_state <= _GEN_1788;
      end
    end else begin
      meta_array_18_0_coh_state <= _GEN_1788;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h12 == s1_way_waddr_1_1_r) begin
        meta_array_18_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_18_1_coh_state <= _GEN_1918;
      end
    end else begin
      meta_array_18_1_coh_state <= _GEN_1918;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h12 == s1_way_waddr_2_1_r) begin
        meta_array_18_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_18_2_coh_state <= _GEN_2048;
      end
    end else begin
      meta_array_18_2_coh_state <= _GEN_2048;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h12 == s1_way_waddr_3_1_r) begin
        meta_array_18_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_18_3_coh_state <= _GEN_2178;
      end
    end else begin
      meta_array_18_3_coh_state <= _GEN_2178;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h12 == s1_way_waddr_4_1_r) begin
        meta_array_18_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_18_4_coh_state <= _GEN_2308;
      end
    end else begin
      meta_array_18_4_coh_state <= _GEN_2308;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h12 == s1_way_waddr_5_1_r) begin
        meta_array_18_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_18_5_coh_state <= _GEN_2438;
      end
    end else begin
      meta_array_18_5_coh_state <= _GEN_2438;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h12 == s1_way_waddr_6_1_r) begin
        meta_array_18_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_18_6_coh_state <= _GEN_2568;
      end
    end else begin
      meta_array_18_6_coh_state <= _GEN_2568;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_18_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h12 == s1_way_waddr_7_1_r) begin
        meta_array_18_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_18_7_coh_state <= _GEN_2698;
      end
    end else begin
      meta_array_18_7_coh_state <= _GEN_2698;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h13 == s1_way_waddr_0_1_r) begin
        meta_array_19_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_19_0_coh_state <= _GEN_1789;
      end
    end else begin
      meta_array_19_0_coh_state <= _GEN_1789;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h13 == s1_way_waddr_1_1_r) begin
        meta_array_19_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_19_1_coh_state <= _GEN_1919;
      end
    end else begin
      meta_array_19_1_coh_state <= _GEN_1919;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h13 == s1_way_waddr_2_1_r) begin
        meta_array_19_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_19_2_coh_state <= _GEN_2049;
      end
    end else begin
      meta_array_19_2_coh_state <= _GEN_2049;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h13 == s1_way_waddr_3_1_r) begin
        meta_array_19_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_19_3_coh_state <= _GEN_2179;
      end
    end else begin
      meta_array_19_3_coh_state <= _GEN_2179;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h13 == s1_way_waddr_4_1_r) begin
        meta_array_19_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_19_4_coh_state <= _GEN_2309;
      end
    end else begin
      meta_array_19_4_coh_state <= _GEN_2309;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h13 == s1_way_waddr_5_1_r) begin
        meta_array_19_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_19_5_coh_state <= _GEN_2439;
      end
    end else begin
      meta_array_19_5_coh_state <= _GEN_2439;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h13 == s1_way_waddr_6_1_r) begin
        meta_array_19_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_19_6_coh_state <= _GEN_2569;
      end
    end else begin
      meta_array_19_6_coh_state <= _GEN_2569;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_19_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h13 == s1_way_waddr_7_1_r) begin
        meta_array_19_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_19_7_coh_state <= _GEN_2699;
      end
    end else begin
      meta_array_19_7_coh_state <= _GEN_2699;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h14 == s1_way_waddr_0_1_r) begin
        meta_array_20_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_20_0_coh_state <= _GEN_1790;
      end
    end else begin
      meta_array_20_0_coh_state <= _GEN_1790;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h14 == s1_way_waddr_1_1_r) begin
        meta_array_20_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_20_1_coh_state <= _GEN_1920;
      end
    end else begin
      meta_array_20_1_coh_state <= _GEN_1920;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h14 == s1_way_waddr_2_1_r) begin
        meta_array_20_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_20_2_coh_state <= _GEN_2050;
      end
    end else begin
      meta_array_20_2_coh_state <= _GEN_2050;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h14 == s1_way_waddr_3_1_r) begin
        meta_array_20_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_20_3_coh_state <= _GEN_2180;
      end
    end else begin
      meta_array_20_3_coh_state <= _GEN_2180;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h14 == s1_way_waddr_4_1_r) begin
        meta_array_20_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_20_4_coh_state <= _GEN_2310;
      end
    end else begin
      meta_array_20_4_coh_state <= _GEN_2310;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h14 == s1_way_waddr_5_1_r) begin
        meta_array_20_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_20_5_coh_state <= _GEN_2440;
      end
    end else begin
      meta_array_20_5_coh_state <= _GEN_2440;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h14 == s1_way_waddr_6_1_r) begin
        meta_array_20_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_20_6_coh_state <= _GEN_2570;
      end
    end else begin
      meta_array_20_6_coh_state <= _GEN_2570;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_20_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h14 == s1_way_waddr_7_1_r) begin
        meta_array_20_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_20_7_coh_state <= _GEN_2700;
      end
    end else begin
      meta_array_20_7_coh_state <= _GEN_2700;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h15 == s1_way_waddr_0_1_r) begin
        meta_array_21_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_21_0_coh_state <= _GEN_1791;
      end
    end else begin
      meta_array_21_0_coh_state <= _GEN_1791;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h15 == s1_way_waddr_1_1_r) begin
        meta_array_21_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_21_1_coh_state <= _GEN_1921;
      end
    end else begin
      meta_array_21_1_coh_state <= _GEN_1921;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h15 == s1_way_waddr_2_1_r) begin
        meta_array_21_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_21_2_coh_state <= _GEN_2051;
      end
    end else begin
      meta_array_21_2_coh_state <= _GEN_2051;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h15 == s1_way_waddr_3_1_r) begin
        meta_array_21_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_21_3_coh_state <= _GEN_2181;
      end
    end else begin
      meta_array_21_3_coh_state <= _GEN_2181;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h15 == s1_way_waddr_4_1_r) begin
        meta_array_21_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_21_4_coh_state <= _GEN_2311;
      end
    end else begin
      meta_array_21_4_coh_state <= _GEN_2311;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h15 == s1_way_waddr_5_1_r) begin
        meta_array_21_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_21_5_coh_state <= _GEN_2441;
      end
    end else begin
      meta_array_21_5_coh_state <= _GEN_2441;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h15 == s1_way_waddr_6_1_r) begin
        meta_array_21_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_21_6_coh_state <= _GEN_2571;
      end
    end else begin
      meta_array_21_6_coh_state <= _GEN_2571;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_21_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h15 == s1_way_waddr_7_1_r) begin
        meta_array_21_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_21_7_coh_state <= _GEN_2701;
      end
    end else begin
      meta_array_21_7_coh_state <= _GEN_2701;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h16 == s1_way_waddr_0_1_r) begin
        meta_array_22_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_22_0_coh_state <= _GEN_1792;
      end
    end else begin
      meta_array_22_0_coh_state <= _GEN_1792;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h16 == s1_way_waddr_1_1_r) begin
        meta_array_22_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_22_1_coh_state <= _GEN_1922;
      end
    end else begin
      meta_array_22_1_coh_state <= _GEN_1922;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h16 == s1_way_waddr_2_1_r) begin
        meta_array_22_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_22_2_coh_state <= _GEN_2052;
      end
    end else begin
      meta_array_22_2_coh_state <= _GEN_2052;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h16 == s1_way_waddr_3_1_r) begin
        meta_array_22_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_22_3_coh_state <= _GEN_2182;
      end
    end else begin
      meta_array_22_3_coh_state <= _GEN_2182;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h16 == s1_way_waddr_4_1_r) begin
        meta_array_22_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_22_4_coh_state <= _GEN_2312;
      end
    end else begin
      meta_array_22_4_coh_state <= _GEN_2312;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h16 == s1_way_waddr_5_1_r) begin
        meta_array_22_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_22_5_coh_state <= _GEN_2442;
      end
    end else begin
      meta_array_22_5_coh_state <= _GEN_2442;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h16 == s1_way_waddr_6_1_r) begin
        meta_array_22_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_22_6_coh_state <= _GEN_2572;
      end
    end else begin
      meta_array_22_6_coh_state <= _GEN_2572;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_22_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h16 == s1_way_waddr_7_1_r) begin
        meta_array_22_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_22_7_coh_state <= _GEN_2702;
      end
    end else begin
      meta_array_22_7_coh_state <= _GEN_2702;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h17 == s1_way_waddr_0_1_r) begin
        meta_array_23_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_23_0_coh_state <= _GEN_1793;
      end
    end else begin
      meta_array_23_0_coh_state <= _GEN_1793;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h17 == s1_way_waddr_1_1_r) begin
        meta_array_23_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_23_1_coh_state <= _GEN_1923;
      end
    end else begin
      meta_array_23_1_coh_state <= _GEN_1923;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h17 == s1_way_waddr_2_1_r) begin
        meta_array_23_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_23_2_coh_state <= _GEN_2053;
      end
    end else begin
      meta_array_23_2_coh_state <= _GEN_2053;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h17 == s1_way_waddr_3_1_r) begin
        meta_array_23_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_23_3_coh_state <= _GEN_2183;
      end
    end else begin
      meta_array_23_3_coh_state <= _GEN_2183;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h17 == s1_way_waddr_4_1_r) begin
        meta_array_23_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_23_4_coh_state <= _GEN_2313;
      end
    end else begin
      meta_array_23_4_coh_state <= _GEN_2313;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h17 == s1_way_waddr_5_1_r) begin
        meta_array_23_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_23_5_coh_state <= _GEN_2443;
      end
    end else begin
      meta_array_23_5_coh_state <= _GEN_2443;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h17 == s1_way_waddr_6_1_r) begin
        meta_array_23_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_23_6_coh_state <= _GEN_2573;
      end
    end else begin
      meta_array_23_6_coh_state <= _GEN_2573;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_23_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h17 == s1_way_waddr_7_1_r) begin
        meta_array_23_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_23_7_coh_state <= _GEN_2703;
      end
    end else begin
      meta_array_23_7_coh_state <= _GEN_2703;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h18 == s1_way_waddr_0_1_r) begin
        meta_array_24_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_24_0_coh_state <= _GEN_1794;
      end
    end else begin
      meta_array_24_0_coh_state <= _GEN_1794;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h18 == s1_way_waddr_1_1_r) begin
        meta_array_24_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_24_1_coh_state <= _GEN_1924;
      end
    end else begin
      meta_array_24_1_coh_state <= _GEN_1924;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h18 == s1_way_waddr_2_1_r) begin
        meta_array_24_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_24_2_coh_state <= _GEN_2054;
      end
    end else begin
      meta_array_24_2_coh_state <= _GEN_2054;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h18 == s1_way_waddr_3_1_r) begin
        meta_array_24_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_24_3_coh_state <= _GEN_2184;
      end
    end else begin
      meta_array_24_3_coh_state <= _GEN_2184;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h18 == s1_way_waddr_4_1_r) begin
        meta_array_24_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_24_4_coh_state <= _GEN_2314;
      end
    end else begin
      meta_array_24_4_coh_state <= _GEN_2314;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h18 == s1_way_waddr_5_1_r) begin
        meta_array_24_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_24_5_coh_state <= _GEN_2444;
      end
    end else begin
      meta_array_24_5_coh_state <= _GEN_2444;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h18 == s1_way_waddr_6_1_r) begin
        meta_array_24_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_24_6_coh_state <= _GEN_2574;
      end
    end else begin
      meta_array_24_6_coh_state <= _GEN_2574;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_24_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h18 == s1_way_waddr_7_1_r) begin
        meta_array_24_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_24_7_coh_state <= _GEN_2704;
      end
    end else begin
      meta_array_24_7_coh_state <= _GEN_2704;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h19 == s1_way_waddr_0_1_r) begin
        meta_array_25_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_25_0_coh_state <= _GEN_1795;
      end
    end else begin
      meta_array_25_0_coh_state <= _GEN_1795;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h19 == s1_way_waddr_1_1_r) begin
        meta_array_25_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_25_1_coh_state <= _GEN_1925;
      end
    end else begin
      meta_array_25_1_coh_state <= _GEN_1925;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h19 == s1_way_waddr_2_1_r) begin
        meta_array_25_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_25_2_coh_state <= _GEN_2055;
      end
    end else begin
      meta_array_25_2_coh_state <= _GEN_2055;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h19 == s1_way_waddr_3_1_r) begin
        meta_array_25_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_25_3_coh_state <= _GEN_2185;
      end
    end else begin
      meta_array_25_3_coh_state <= _GEN_2185;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h19 == s1_way_waddr_4_1_r) begin
        meta_array_25_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_25_4_coh_state <= _GEN_2315;
      end
    end else begin
      meta_array_25_4_coh_state <= _GEN_2315;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h19 == s1_way_waddr_5_1_r) begin
        meta_array_25_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_25_5_coh_state <= _GEN_2445;
      end
    end else begin
      meta_array_25_5_coh_state <= _GEN_2445;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h19 == s1_way_waddr_6_1_r) begin
        meta_array_25_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_25_6_coh_state <= _GEN_2575;
      end
    end else begin
      meta_array_25_6_coh_state <= _GEN_2575;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_25_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h19 == s1_way_waddr_7_1_r) begin
        meta_array_25_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_25_7_coh_state <= _GEN_2705;
      end
    end else begin
      meta_array_25_7_coh_state <= _GEN_2705;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1a == s1_way_waddr_0_1_r) begin
        meta_array_26_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_26_0_coh_state <= _GEN_1796;
      end
    end else begin
      meta_array_26_0_coh_state <= _GEN_1796;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1a == s1_way_waddr_1_1_r) begin
        meta_array_26_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_26_1_coh_state <= _GEN_1926;
      end
    end else begin
      meta_array_26_1_coh_state <= _GEN_1926;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1a == s1_way_waddr_2_1_r) begin
        meta_array_26_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_26_2_coh_state <= _GEN_2056;
      end
    end else begin
      meta_array_26_2_coh_state <= _GEN_2056;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1a == s1_way_waddr_3_1_r) begin
        meta_array_26_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_26_3_coh_state <= _GEN_2186;
      end
    end else begin
      meta_array_26_3_coh_state <= _GEN_2186;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1a == s1_way_waddr_4_1_r) begin
        meta_array_26_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_26_4_coh_state <= _GEN_2316;
      end
    end else begin
      meta_array_26_4_coh_state <= _GEN_2316;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1a == s1_way_waddr_5_1_r) begin
        meta_array_26_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_26_5_coh_state <= _GEN_2446;
      end
    end else begin
      meta_array_26_5_coh_state <= _GEN_2446;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1a == s1_way_waddr_6_1_r) begin
        meta_array_26_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_26_6_coh_state <= _GEN_2576;
      end
    end else begin
      meta_array_26_6_coh_state <= _GEN_2576;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_26_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1a == s1_way_waddr_7_1_r) begin
        meta_array_26_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_26_7_coh_state <= _GEN_2706;
      end
    end else begin
      meta_array_26_7_coh_state <= _GEN_2706;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1b == s1_way_waddr_0_1_r) begin
        meta_array_27_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_27_0_coh_state <= _GEN_1797;
      end
    end else begin
      meta_array_27_0_coh_state <= _GEN_1797;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1b == s1_way_waddr_1_1_r) begin
        meta_array_27_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_27_1_coh_state <= _GEN_1927;
      end
    end else begin
      meta_array_27_1_coh_state <= _GEN_1927;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1b == s1_way_waddr_2_1_r) begin
        meta_array_27_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_27_2_coh_state <= _GEN_2057;
      end
    end else begin
      meta_array_27_2_coh_state <= _GEN_2057;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1b == s1_way_waddr_3_1_r) begin
        meta_array_27_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_27_3_coh_state <= _GEN_2187;
      end
    end else begin
      meta_array_27_3_coh_state <= _GEN_2187;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1b == s1_way_waddr_4_1_r) begin
        meta_array_27_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_27_4_coh_state <= _GEN_2317;
      end
    end else begin
      meta_array_27_4_coh_state <= _GEN_2317;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1b == s1_way_waddr_5_1_r) begin
        meta_array_27_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_27_5_coh_state <= _GEN_2447;
      end
    end else begin
      meta_array_27_5_coh_state <= _GEN_2447;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1b == s1_way_waddr_6_1_r) begin
        meta_array_27_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_27_6_coh_state <= _GEN_2577;
      end
    end else begin
      meta_array_27_6_coh_state <= _GEN_2577;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_27_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1b == s1_way_waddr_7_1_r) begin
        meta_array_27_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_27_7_coh_state <= _GEN_2707;
      end
    end else begin
      meta_array_27_7_coh_state <= _GEN_2707;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1c == s1_way_waddr_0_1_r) begin
        meta_array_28_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_28_0_coh_state <= _GEN_1798;
      end
    end else begin
      meta_array_28_0_coh_state <= _GEN_1798;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1c == s1_way_waddr_1_1_r) begin
        meta_array_28_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_28_1_coh_state <= _GEN_1928;
      end
    end else begin
      meta_array_28_1_coh_state <= _GEN_1928;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1c == s1_way_waddr_2_1_r) begin
        meta_array_28_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_28_2_coh_state <= _GEN_2058;
      end
    end else begin
      meta_array_28_2_coh_state <= _GEN_2058;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1c == s1_way_waddr_3_1_r) begin
        meta_array_28_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_28_3_coh_state <= _GEN_2188;
      end
    end else begin
      meta_array_28_3_coh_state <= _GEN_2188;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1c == s1_way_waddr_4_1_r) begin
        meta_array_28_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_28_4_coh_state <= _GEN_2318;
      end
    end else begin
      meta_array_28_4_coh_state <= _GEN_2318;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1c == s1_way_waddr_5_1_r) begin
        meta_array_28_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_28_5_coh_state <= _GEN_2448;
      end
    end else begin
      meta_array_28_5_coh_state <= _GEN_2448;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1c == s1_way_waddr_6_1_r) begin
        meta_array_28_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_28_6_coh_state <= _GEN_2578;
      end
    end else begin
      meta_array_28_6_coh_state <= _GEN_2578;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_28_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1c == s1_way_waddr_7_1_r) begin
        meta_array_28_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_28_7_coh_state <= _GEN_2708;
      end
    end else begin
      meta_array_28_7_coh_state <= _GEN_2708;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1d == s1_way_waddr_0_1_r) begin
        meta_array_29_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_29_0_coh_state <= _GEN_1799;
      end
    end else begin
      meta_array_29_0_coh_state <= _GEN_1799;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1d == s1_way_waddr_1_1_r) begin
        meta_array_29_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_29_1_coh_state <= _GEN_1929;
      end
    end else begin
      meta_array_29_1_coh_state <= _GEN_1929;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1d == s1_way_waddr_2_1_r) begin
        meta_array_29_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_29_2_coh_state <= _GEN_2059;
      end
    end else begin
      meta_array_29_2_coh_state <= _GEN_2059;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1d == s1_way_waddr_3_1_r) begin
        meta_array_29_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_29_3_coh_state <= _GEN_2189;
      end
    end else begin
      meta_array_29_3_coh_state <= _GEN_2189;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1d == s1_way_waddr_4_1_r) begin
        meta_array_29_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_29_4_coh_state <= _GEN_2319;
      end
    end else begin
      meta_array_29_4_coh_state <= _GEN_2319;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1d == s1_way_waddr_5_1_r) begin
        meta_array_29_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_29_5_coh_state <= _GEN_2449;
      end
    end else begin
      meta_array_29_5_coh_state <= _GEN_2449;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1d == s1_way_waddr_6_1_r) begin
        meta_array_29_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_29_6_coh_state <= _GEN_2579;
      end
    end else begin
      meta_array_29_6_coh_state <= _GEN_2579;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_29_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1d == s1_way_waddr_7_1_r) begin
        meta_array_29_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_29_7_coh_state <= _GEN_2709;
      end
    end else begin
      meta_array_29_7_coh_state <= _GEN_2709;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1e == s1_way_waddr_0_1_r) begin
        meta_array_30_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_30_0_coh_state <= _GEN_1800;
      end
    end else begin
      meta_array_30_0_coh_state <= _GEN_1800;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1e == s1_way_waddr_1_1_r) begin
        meta_array_30_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_30_1_coh_state <= _GEN_1930;
      end
    end else begin
      meta_array_30_1_coh_state <= _GEN_1930;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1e == s1_way_waddr_2_1_r) begin
        meta_array_30_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_30_2_coh_state <= _GEN_2060;
      end
    end else begin
      meta_array_30_2_coh_state <= _GEN_2060;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1e == s1_way_waddr_3_1_r) begin
        meta_array_30_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_30_3_coh_state <= _GEN_2190;
      end
    end else begin
      meta_array_30_3_coh_state <= _GEN_2190;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1e == s1_way_waddr_4_1_r) begin
        meta_array_30_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_30_4_coh_state <= _GEN_2320;
      end
    end else begin
      meta_array_30_4_coh_state <= _GEN_2320;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1e == s1_way_waddr_5_1_r) begin
        meta_array_30_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_30_5_coh_state <= _GEN_2450;
      end
    end else begin
      meta_array_30_5_coh_state <= _GEN_2450;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1e == s1_way_waddr_6_1_r) begin
        meta_array_30_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_30_6_coh_state <= _GEN_2580;
      end
    end else begin
      meta_array_30_6_coh_state <= _GEN_2580;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_30_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1e == s1_way_waddr_7_1_r) begin
        meta_array_30_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_30_7_coh_state <= _GEN_2710;
      end
    end else begin
      meta_array_30_7_coh_state <= _GEN_2710;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h1f == s1_way_waddr_0_1_r) begin
        meta_array_31_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_31_0_coh_state <= _GEN_1801;
      end
    end else begin
      meta_array_31_0_coh_state <= _GEN_1801;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h1f == s1_way_waddr_1_1_r) begin
        meta_array_31_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_31_1_coh_state <= _GEN_1931;
      end
    end else begin
      meta_array_31_1_coh_state <= _GEN_1931;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h1f == s1_way_waddr_2_1_r) begin
        meta_array_31_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_31_2_coh_state <= _GEN_2061;
      end
    end else begin
      meta_array_31_2_coh_state <= _GEN_2061;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h1f == s1_way_waddr_3_1_r) begin
        meta_array_31_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_31_3_coh_state <= _GEN_2191;
      end
    end else begin
      meta_array_31_3_coh_state <= _GEN_2191;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h1f == s1_way_waddr_4_1_r) begin
        meta_array_31_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_31_4_coh_state <= _GEN_2321;
      end
    end else begin
      meta_array_31_4_coh_state <= _GEN_2321;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h1f == s1_way_waddr_5_1_r) begin
        meta_array_31_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_31_5_coh_state <= _GEN_2451;
      end
    end else begin
      meta_array_31_5_coh_state <= _GEN_2451;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h1f == s1_way_waddr_6_1_r) begin
        meta_array_31_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_31_6_coh_state <= _GEN_2581;
      end
    end else begin
      meta_array_31_6_coh_state <= _GEN_2581;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_31_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h1f == s1_way_waddr_7_1_r) begin
        meta_array_31_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_31_7_coh_state <= _GEN_2711;
      end
    end else begin
      meta_array_31_7_coh_state <= _GEN_2711;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h20 == s1_way_waddr_0_1_r) begin
        meta_array_32_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_32_0_coh_state <= _GEN_1802;
      end
    end else begin
      meta_array_32_0_coh_state <= _GEN_1802;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h20 == s1_way_waddr_1_1_r) begin
        meta_array_32_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_32_1_coh_state <= _GEN_1932;
      end
    end else begin
      meta_array_32_1_coh_state <= _GEN_1932;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h20 == s1_way_waddr_2_1_r) begin
        meta_array_32_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_32_2_coh_state <= _GEN_2062;
      end
    end else begin
      meta_array_32_2_coh_state <= _GEN_2062;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h20 == s1_way_waddr_3_1_r) begin
        meta_array_32_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_32_3_coh_state <= _GEN_2192;
      end
    end else begin
      meta_array_32_3_coh_state <= _GEN_2192;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h20 == s1_way_waddr_4_1_r) begin
        meta_array_32_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_32_4_coh_state <= _GEN_2322;
      end
    end else begin
      meta_array_32_4_coh_state <= _GEN_2322;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h20 == s1_way_waddr_5_1_r) begin
        meta_array_32_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_32_5_coh_state <= _GEN_2452;
      end
    end else begin
      meta_array_32_5_coh_state <= _GEN_2452;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h20 == s1_way_waddr_6_1_r) begin
        meta_array_32_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_32_6_coh_state <= _GEN_2582;
      end
    end else begin
      meta_array_32_6_coh_state <= _GEN_2582;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_32_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h20 == s1_way_waddr_7_1_r) begin
        meta_array_32_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_32_7_coh_state <= _GEN_2712;
      end
    end else begin
      meta_array_32_7_coh_state <= _GEN_2712;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h21 == s1_way_waddr_0_1_r) begin
        meta_array_33_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_33_0_coh_state <= _GEN_1803;
      end
    end else begin
      meta_array_33_0_coh_state <= _GEN_1803;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h21 == s1_way_waddr_1_1_r) begin
        meta_array_33_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_33_1_coh_state <= _GEN_1933;
      end
    end else begin
      meta_array_33_1_coh_state <= _GEN_1933;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h21 == s1_way_waddr_2_1_r) begin
        meta_array_33_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_33_2_coh_state <= _GEN_2063;
      end
    end else begin
      meta_array_33_2_coh_state <= _GEN_2063;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h21 == s1_way_waddr_3_1_r) begin
        meta_array_33_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_33_3_coh_state <= _GEN_2193;
      end
    end else begin
      meta_array_33_3_coh_state <= _GEN_2193;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h21 == s1_way_waddr_4_1_r) begin
        meta_array_33_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_33_4_coh_state <= _GEN_2323;
      end
    end else begin
      meta_array_33_4_coh_state <= _GEN_2323;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h21 == s1_way_waddr_5_1_r) begin
        meta_array_33_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_33_5_coh_state <= _GEN_2453;
      end
    end else begin
      meta_array_33_5_coh_state <= _GEN_2453;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h21 == s1_way_waddr_6_1_r) begin
        meta_array_33_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_33_6_coh_state <= _GEN_2583;
      end
    end else begin
      meta_array_33_6_coh_state <= _GEN_2583;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_33_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h21 == s1_way_waddr_7_1_r) begin
        meta_array_33_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_33_7_coh_state <= _GEN_2713;
      end
    end else begin
      meta_array_33_7_coh_state <= _GEN_2713;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h22 == s1_way_waddr_0_1_r) begin
        meta_array_34_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_34_0_coh_state <= _GEN_1804;
      end
    end else begin
      meta_array_34_0_coh_state <= _GEN_1804;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h22 == s1_way_waddr_1_1_r) begin
        meta_array_34_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_34_1_coh_state <= _GEN_1934;
      end
    end else begin
      meta_array_34_1_coh_state <= _GEN_1934;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h22 == s1_way_waddr_2_1_r) begin
        meta_array_34_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_34_2_coh_state <= _GEN_2064;
      end
    end else begin
      meta_array_34_2_coh_state <= _GEN_2064;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h22 == s1_way_waddr_3_1_r) begin
        meta_array_34_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_34_3_coh_state <= _GEN_2194;
      end
    end else begin
      meta_array_34_3_coh_state <= _GEN_2194;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h22 == s1_way_waddr_4_1_r) begin
        meta_array_34_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_34_4_coh_state <= _GEN_2324;
      end
    end else begin
      meta_array_34_4_coh_state <= _GEN_2324;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h22 == s1_way_waddr_5_1_r) begin
        meta_array_34_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_34_5_coh_state <= _GEN_2454;
      end
    end else begin
      meta_array_34_5_coh_state <= _GEN_2454;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h22 == s1_way_waddr_6_1_r) begin
        meta_array_34_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_34_6_coh_state <= _GEN_2584;
      end
    end else begin
      meta_array_34_6_coh_state <= _GEN_2584;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_34_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h22 == s1_way_waddr_7_1_r) begin
        meta_array_34_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_34_7_coh_state <= _GEN_2714;
      end
    end else begin
      meta_array_34_7_coh_state <= _GEN_2714;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h23 == s1_way_waddr_0_1_r) begin
        meta_array_35_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_35_0_coh_state <= _GEN_1805;
      end
    end else begin
      meta_array_35_0_coh_state <= _GEN_1805;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h23 == s1_way_waddr_1_1_r) begin
        meta_array_35_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_35_1_coh_state <= _GEN_1935;
      end
    end else begin
      meta_array_35_1_coh_state <= _GEN_1935;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h23 == s1_way_waddr_2_1_r) begin
        meta_array_35_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_35_2_coh_state <= _GEN_2065;
      end
    end else begin
      meta_array_35_2_coh_state <= _GEN_2065;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h23 == s1_way_waddr_3_1_r) begin
        meta_array_35_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_35_3_coh_state <= _GEN_2195;
      end
    end else begin
      meta_array_35_3_coh_state <= _GEN_2195;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h23 == s1_way_waddr_4_1_r) begin
        meta_array_35_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_35_4_coh_state <= _GEN_2325;
      end
    end else begin
      meta_array_35_4_coh_state <= _GEN_2325;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h23 == s1_way_waddr_5_1_r) begin
        meta_array_35_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_35_5_coh_state <= _GEN_2455;
      end
    end else begin
      meta_array_35_5_coh_state <= _GEN_2455;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h23 == s1_way_waddr_6_1_r) begin
        meta_array_35_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_35_6_coh_state <= _GEN_2585;
      end
    end else begin
      meta_array_35_6_coh_state <= _GEN_2585;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_35_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h23 == s1_way_waddr_7_1_r) begin
        meta_array_35_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_35_7_coh_state <= _GEN_2715;
      end
    end else begin
      meta_array_35_7_coh_state <= _GEN_2715;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h24 == s1_way_waddr_0_1_r) begin
        meta_array_36_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_36_0_coh_state <= _GEN_1806;
      end
    end else begin
      meta_array_36_0_coh_state <= _GEN_1806;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h24 == s1_way_waddr_1_1_r) begin
        meta_array_36_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_36_1_coh_state <= _GEN_1936;
      end
    end else begin
      meta_array_36_1_coh_state <= _GEN_1936;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h24 == s1_way_waddr_2_1_r) begin
        meta_array_36_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_36_2_coh_state <= _GEN_2066;
      end
    end else begin
      meta_array_36_2_coh_state <= _GEN_2066;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h24 == s1_way_waddr_3_1_r) begin
        meta_array_36_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_36_3_coh_state <= _GEN_2196;
      end
    end else begin
      meta_array_36_3_coh_state <= _GEN_2196;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h24 == s1_way_waddr_4_1_r) begin
        meta_array_36_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_36_4_coh_state <= _GEN_2326;
      end
    end else begin
      meta_array_36_4_coh_state <= _GEN_2326;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h24 == s1_way_waddr_5_1_r) begin
        meta_array_36_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_36_5_coh_state <= _GEN_2456;
      end
    end else begin
      meta_array_36_5_coh_state <= _GEN_2456;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h24 == s1_way_waddr_6_1_r) begin
        meta_array_36_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_36_6_coh_state <= _GEN_2586;
      end
    end else begin
      meta_array_36_6_coh_state <= _GEN_2586;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_36_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h24 == s1_way_waddr_7_1_r) begin
        meta_array_36_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_36_7_coh_state <= _GEN_2716;
      end
    end else begin
      meta_array_36_7_coh_state <= _GEN_2716;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h25 == s1_way_waddr_0_1_r) begin
        meta_array_37_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_37_0_coh_state <= _GEN_1807;
      end
    end else begin
      meta_array_37_0_coh_state <= _GEN_1807;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h25 == s1_way_waddr_1_1_r) begin
        meta_array_37_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_37_1_coh_state <= _GEN_1937;
      end
    end else begin
      meta_array_37_1_coh_state <= _GEN_1937;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h25 == s1_way_waddr_2_1_r) begin
        meta_array_37_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_37_2_coh_state <= _GEN_2067;
      end
    end else begin
      meta_array_37_2_coh_state <= _GEN_2067;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h25 == s1_way_waddr_3_1_r) begin
        meta_array_37_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_37_3_coh_state <= _GEN_2197;
      end
    end else begin
      meta_array_37_3_coh_state <= _GEN_2197;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h25 == s1_way_waddr_4_1_r) begin
        meta_array_37_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_37_4_coh_state <= _GEN_2327;
      end
    end else begin
      meta_array_37_4_coh_state <= _GEN_2327;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h25 == s1_way_waddr_5_1_r) begin
        meta_array_37_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_37_5_coh_state <= _GEN_2457;
      end
    end else begin
      meta_array_37_5_coh_state <= _GEN_2457;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h25 == s1_way_waddr_6_1_r) begin
        meta_array_37_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_37_6_coh_state <= _GEN_2587;
      end
    end else begin
      meta_array_37_6_coh_state <= _GEN_2587;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_37_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h25 == s1_way_waddr_7_1_r) begin
        meta_array_37_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_37_7_coh_state <= _GEN_2717;
      end
    end else begin
      meta_array_37_7_coh_state <= _GEN_2717;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h26 == s1_way_waddr_0_1_r) begin
        meta_array_38_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_38_0_coh_state <= _GEN_1808;
      end
    end else begin
      meta_array_38_0_coh_state <= _GEN_1808;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h26 == s1_way_waddr_1_1_r) begin
        meta_array_38_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_38_1_coh_state <= _GEN_1938;
      end
    end else begin
      meta_array_38_1_coh_state <= _GEN_1938;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h26 == s1_way_waddr_2_1_r) begin
        meta_array_38_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_38_2_coh_state <= _GEN_2068;
      end
    end else begin
      meta_array_38_2_coh_state <= _GEN_2068;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h26 == s1_way_waddr_3_1_r) begin
        meta_array_38_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_38_3_coh_state <= _GEN_2198;
      end
    end else begin
      meta_array_38_3_coh_state <= _GEN_2198;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h26 == s1_way_waddr_4_1_r) begin
        meta_array_38_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_38_4_coh_state <= _GEN_2328;
      end
    end else begin
      meta_array_38_4_coh_state <= _GEN_2328;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h26 == s1_way_waddr_5_1_r) begin
        meta_array_38_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_38_5_coh_state <= _GEN_2458;
      end
    end else begin
      meta_array_38_5_coh_state <= _GEN_2458;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h26 == s1_way_waddr_6_1_r) begin
        meta_array_38_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_38_6_coh_state <= _GEN_2588;
      end
    end else begin
      meta_array_38_6_coh_state <= _GEN_2588;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_38_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h26 == s1_way_waddr_7_1_r) begin
        meta_array_38_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_38_7_coh_state <= _GEN_2718;
      end
    end else begin
      meta_array_38_7_coh_state <= _GEN_2718;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h27 == s1_way_waddr_0_1_r) begin
        meta_array_39_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_39_0_coh_state <= _GEN_1809;
      end
    end else begin
      meta_array_39_0_coh_state <= _GEN_1809;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h27 == s1_way_waddr_1_1_r) begin
        meta_array_39_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_39_1_coh_state <= _GEN_1939;
      end
    end else begin
      meta_array_39_1_coh_state <= _GEN_1939;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h27 == s1_way_waddr_2_1_r) begin
        meta_array_39_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_39_2_coh_state <= _GEN_2069;
      end
    end else begin
      meta_array_39_2_coh_state <= _GEN_2069;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h27 == s1_way_waddr_3_1_r) begin
        meta_array_39_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_39_3_coh_state <= _GEN_2199;
      end
    end else begin
      meta_array_39_3_coh_state <= _GEN_2199;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h27 == s1_way_waddr_4_1_r) begin
        meta_array_39_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_39_4_coh_state <= _GEN_2329;
      end
    end else begin
      meta_array_39_4_coh_state <= _GEN_2329;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h27 == s1_way_waddr_5_1_r) begin
        meta_array_39_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_39_5_coh_state <= _GEN_2459;
      end
    end else begin
      meta_array_39_5_coh_state <= _GEN_2459;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h27 == s1_way_waddr_6_1_r) begin
        meta_array_39_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_39_6_coh_state <= _GEN_2589;
      end
    end else begin
      meta_array_39_6_coh_state <= _GEN_2589;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_39_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h27 == s1_way_waddr_7_1_r) begin
        meta_array_39_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_39_7_coh_state <= _GEN_2719;
      end
    end else begin
      meta_array_39_7_coh_state <= _GEN_2719;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h28 == s1_way_waddr_0_1_r) begin
        meta_array_40_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_40_0_coh_state <= _GEN_1810;
      end
    end else begin
      meta_array_40_0_coh_state <= _GEN_1810;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h28 == s1_way_waddr_1_1_r) begin
        meta_array_40_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_40_1_coh_state <= _GEN_1940;
      end
    end else begin
      meta_array_40_1_coh_state <= _GEN_1940;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h28 == s1_way_waddr_2_1_r) begin
        meta_array_40_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_40_2_coh_state <= _GEN_2070;
      end
    end else begin
      meta_array_40_2_coh_state <= _GEN_2070;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h28 == s1_way_waddr_3_1_r) begin
        meta_array_40_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_40_3_coh_state <= _GEN_2200;
      end
    end else begin
      meta_array_40_3_coh_state <= _GEN_2200;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h28 == s1_way_waddr_4_1_r) begin
        meta_array_40_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_40_4_coh_state <= _GEN_2330;
      end
    end else begin
      meta_array_40_4_coh_state <= _GEN_2330;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h28 == s1_way_waddr_5_1_r) begin
        meta_array_40_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_40_5_coh_state <= _GEN_2460;
      end
    end else begin
      meta_array_40_5_coh_state <= _GEN_2460;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h28 == s1_way_waddr_6_1_r) begin
        meta_array_40_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_40_6_coh_state <= _GEN_2590;
      end
    end else begin
      meta_array_40_6_coh_state <= _GEN_2590;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_40_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h28 == s1_way_waddr_7_1_r) begin
        meta_array_40_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_40_7_coh_state <= _GEN_2720;
      end
    end else begin
      meta_array_40_7_coh_state <= _GEN_2720;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h29 == s1_way_waddr_0_1_r) begin
        meta_array_41_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_41_0_coh_state <= _GEN_1811;
      end
    end else begin
      meta_array_41_0_coh_state <= _GEN_1811;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h29 == s1_way_waddr_1_1_r) begin
        meta_array_41_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_41_1_coh_state <= _GEN_1941;
      end
    end else begin
      meta_array_41_1_coh_state <= _GEN_1941;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h29 == s1_way_waddr_2_1_r) begin
        meta_array_41_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_41_2_coh_state <= _GEN_2071;
      end
    end else begin
      meta_array_41_2_coh_state <= _GEN_2071;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h29 == s1_way_waddr_3_1_r) begin
        meta_array_41_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_41_3_coh_state <= _GEN_2201;
      end
    end else begin
      meta_array_41_3_coh_state <= _GEN_2201;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h29 == s1_way_waddr_4_1_r) begin
        meta_array_41_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_41_4_coh_state <= _GEN_2331;
      end
    end else begin
      meta_array_41_4_coh_state <= _GEN_2331;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h29 == s1_way_waddr_5_1_r) begin
        meta_array_41_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_41_5_coh_state <= _GEN_2461;
      end
    end else begin
      meta_array_41_5_coh_state <= _GEN_2461;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h29 == s1_way_waddr_6_1_r) begin
        meta_array_41_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_41_6_coh_state <= _GEN_2591;
      end
    end else begin
      meta_array_41_6_coh_state <= _GEN_2591;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_41_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h29 == s1_way_waddr_7_1_r) begin
        meta_array_41_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_41_7_coh_state <= _GEN_2721;
      end
    end else begin
      meta_array_41_7_coh_state <= _GEN_2721;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2a == s1_way_waddr_0_1_r) begin
        meta_array_42_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_42_0_coh_state <= _GEN_1812;
      end
    end else begin
      meta_array_42_0_coh_state <= _GEN_1812;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2a == s1_way_waddr_1_1_r) begin
        meta_array_42_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_42_1_coh_state <= _GEN_1942;
      end
    end else begin
      meta_array_42_1_coh_state <= _GEN_1942;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2a == s1_way_waddr_2_1_r) begin
        meta_array_42_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_42_2_coh_state <= _GEN_2072;
      end
    end else begin
      meta_array_42_2_coh_state <= _GEN_2072;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2a == s1_way_waddr_3_1_r) begin
        meta_array_42_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_42_3_coh_state <= _GEN_2202;
      end
    end else begin
      meta_array_42_3_coh_state <= _GEN_2202;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2a == s1_way_waddr_4_1_r) begin
        meta_array_42_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_42_4_coh_state <= _GEN_2332;
      end
    end else begin
      meta_array_42_4_coh_state <= _GEN_2332;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2a == s1_way_waddr_5_1_r) begin
        meta_array_42_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_42_5_coh_state <= _GEN_2462;
      end
    end else begin
      meta_array_42_5_coh_state <= _GEN_2462;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2a == s1_way_waddr_6_1_r) begin
        meta_array_42_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_42_6_coh_state <= _GEN_2592;
      end
    end else begin
      meta_array_42_6_coh_state <= _GEN_2592;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_42_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2a == s1_way_waddr_7_1_r) begin
        meta_array_42_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_42_7_coh_state <= _GEN_2722;
      end
    end else begin
      meta_array_42_7_coh_state <= _GEN_2722;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2b == s1_way_waddr_0_1_r) begin
        meta_array_43_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_43_0_coh_state <= _GEN_1813;
      end
    end else begin
      meta_array_43_0_coh_state <= _GEN_1813;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2b == s1_way_waddr_1_1_r) begin
        meta_array_43_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_43_1_coh_state <= _GEN_1943;
      end
    end else begin
      meta_array_43_1_coh_state <= _GEN_1943;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2b == s1_way_waddr_2_1_r) begin
        meta_array_43_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_43_2_coh_state <= _GEN_2073;
      end
    end else begin
      meta_array_43_2_coh_state <= _GEN_2073;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2b == s1_way_waddr_3_1_r) begin
        meta_array_43_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_43_3_coh_state <= _GEN_2203;
      end
    end else begin
      meta_array_43_3_coh_state <= _GEN_2203;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2b == s1_way_waddr_4_1_r) begin
        meta_array_43_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_43_4_coh_state <= _GEN_2333;
      end
    end else begin
      meta_array_43_4_coh_state <= _GEN_2333;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2b == s1_way_waddr_5_1_r) begin
        meta_array_43_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_43_5_coh_state <= _GEN_2463;
      end
    end else begin
      meta_array_43_5_coh_state <= _GEN_2463;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2b == s1_way_waddr_6_1_r) begin
        meta_array_43_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_43_6_coh_state <= _GEN_2593;
      end
    end else begin
      meta_array_43_6_coh_state <= _GEN_2593;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_43_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2b == s1_way_waddr_7_1_r) begin
        meta_array_43_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_43_7_coh_state <= _GEN_2723;
      end
    end else begin
      meta_array_43_7_coh_state <= _GEN_2723;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2c == s1_way_waddr_0_1_r) begin
        meta_array_44_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_44_0_coh_state <= _GEN_1814;
      end
    end else begin
      meta_array_44_0_coh_state <= _GEN_1814;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2c == s1_way_waddr_1_1_r) begin
        meta_array_44_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_44_1_coh_state <= _GEN_1944;
      end
    end else begin
      meta_array_44_1_coh_state <= _GEN_1944;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2c == s1_way_waddr_2_1_r) begin
        meta_array_44_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_44_2_coh_state <= _GEN_2074;
      end
    end else begin
      meta_array_44_2_coh_state <= _GEN_2074;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2c == s1_way_waddr_3_1_r) begin
        meta_array_44_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_44_3_coh_state <= _GEN_2204;
      end
    end else begin
      meta_array_44_3_coh_state <= _GEN_2204;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2c == s1_way_waddr_4_1_r) begin
        meta_array_44_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_44_4_coh_state <= _GEN_2334;
      end
    end else begin
      meta_array_44_4_coh_state <= _GEN_2334;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2c == s1_way_waddr_5_1_r) begin
        meta_array_44_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_44_5_coh_state <= _GEN_2464;
      end
    end else begin
      meta_array_44_5_coh_state <= _GEN_2464;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2c == s1_way_waddr_6_1_r) begin
        meta_array_44_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_44_6_coh_state <= _GEN_2594;
      end
    end else begin
      meta_array_44_6_coh_state <= _GEN_2594;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_44_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2c == s1_way_waddr_7_1_r) begin
        meta_array_44_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_44_7_coh_state <= _GEN_2724;
      end
    end else begin
      meta_array_44_7_coh_state <= _GEN_2724;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2d == s1_way_waddr_0_1_r) begin
        meta_array_45_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_45_0_coh_state <= _GEN_1815;
      end
    end else begin
      meta_array_45_0_coh_state <= _GEN_1815;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2d == s1_way_waddr_1_1_r) begin
        meta_array_45_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_45_1_coh_state <= _GEN_1945;
      end
    end else begin
      meta_array_45_1_coh_state <= _GEN_1945;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2d == s1_way_waddr_2_1_r) begin
        meta_array_45_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_45_2_coh_state <= _GEN_2075;
      end
    end else begin
      meta_array_45_2_coh_state <= _GEN_2075;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2d == s1_way_waddr_3_1_r) begin
        meta_array_45_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_45_3_coh_state <= _GEN_2205;
      end
    end else begin
      meta_array_45_3_coh_state <= _GEN_2205;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2d == s1_way_waddr_4_1_r) begin
        meta_array_45_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_45_4_coh_state <= _GEN_2335;
      end
    end else begin
      meta_array_45_4_coh_state <= _GEN_2335;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2d == s1_way_waddr_5_1_r) begin
        meta_array_45_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_45_5_coh_state <= _GEN_2465;
      end
    end else begin
      meta_array_45_5_coh_state <= _GEN_2465;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2d == s1_way_waddr_6_1_r) begin
        meta_array_45_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_45_6_coh_state <= _GEN_2595;
      end
    end else begin
      meta_array_45_6_coh_state <= _GEN_2595;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_45_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2d == s1_way_waddr_7_1_r) begin
        meta_array_45_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_45_7_coh_state <= _GEN_2725;
      end
    end else begin
      meta_array_45_7_coh_state <= _GEN_2725;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2e == s1_way_waddr_0_1_r) begin
        meta_array_46_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_46_0_coh_state <= _GEN_1816;
      end
    end else begin
      meta_array_46_0_coh_state <= _GEN_1816;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2e == s1_way_waddr_1_1_r) begin
        meta_array_46_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_46_1_coh_state <= _GEN_1946;
      end
    end else begin
      meta_array_46_1_coh_state <= _GEN_1946;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2e == s1_way_waddr_2_1_r) begin
        meta_array_46_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_46_2_coh_state <= _GEN_2076;
      end
    end else begin
      meta_array_46_2_coh_state <= _GEN_2076;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2e == s1_way_waddr_3_1_r) begin
        meta_array_46_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_46_3_coh_state <= _GEN_2206;
      end
    end else begin
      meta_array_46_3_coh_state <= _GEN_2206;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2e == s1_way_waddr_4_1_r) begin
        meta_array_46_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_46_4_coh_state <= _GEN_2336;
      end
    end else begin
      meta_array_46_4_coh_state <= _GEN_2336;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2e == s1_way_waddr_5_1_r) begin
        meta_array_46_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_46_5_coh_state <= _GEN_2466;
      end
    end else begin
      meta_array_46_5_coh_state <= _GEN_2466;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2e == s1_way_waddr_6_1_r) begin
        meta_array_46_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_46_6_coh_state <= _GEN_2596;
      end
    end else begin
      meta_array_46_6_coh_state <= _GEN_2596;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_46_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2e == s1_way_waddr_7_1_r) begin
        meta_array_46_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_46_7_coh_state <= _GEN_2726;
      end
    end else begin
      meta_array_46_7_coh_state <= _GEN_2726;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h2f == s1_way_waddr_0_1_r) begin
        meta_array_47_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_47_0_coh_state <= _GEN_1817;
      end
    end else begin
      meta_array_47_0_coh_state <= _GEN_1817;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h2f == s1_way_waddr_1_1_r) begin
        meta_array_47_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_47_1_coh_state <= _GEN_1947;
      end
    end else begin
      meta_array_47_1_coh_state <= _GEN_1947;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h2f == s1_way_waddr_2_1_r) begin
        meta_array_47_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_47_2_coh_state <= _GEN_2077;
      end
    end else begin
      meta_array_47_2_coh_state <= _GEN_2077;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h2f == s1_way_waddr_3_1_r) begin
        meta_array_47_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_47_3_coh_state <= _GEN_2207;
      end
    end else begin
      meta_array_47_3_coh_state <= _GEN_2207;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h2f == s1_way_waddr_4_1_r) begin
        meta_array_47_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_47_4_coh_state <= _GEN_2337;
      end
    end else begin
      meta_array_47_4_coh_state <= _GEN_2337;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h2f == s1_way_waddr_5_1_r) begin
        meta_array_47_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_47_5_coh_state <= _GEN_2467;
      end
    end else begin
      meta_array_47_5_coh_state <= _GEN_2467;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h2f == s1_way_waddr_6_1_r) begin
        meta_array_47_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_47_6_coh_state <= _GEN_2597;
      end
    end else begin
      meta_array_47_6_coh_state <= _GEN_2597;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_47_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h2f == s1_way_waddr_7_1_r) begin
        meta_array_47_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_47_7_coh_state <= _GEN_2727;
      end
    end else begin
      meta_array_47_7_coh_state <= _GEN_2727;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h30 == s1_way_waddr_0_1_r) begin
        meta_array_48_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_48_0_coh_state <= _GEN_1818;
      end
    end else begin
      meta_array_48_0_coh_state <= _GEN_1818;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h30 == s1_way_waddr_1_1_r) begin
        meta_array_48_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_48_1_coh_state <= _GEN_1948;
      end
    end else begin
      meta_array_48_1_coh_state <= _GEN_1948;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h30 == s1_way_waddr_2_1_r) begin
        meta_array_48_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_48_2_coh_state <= _GEN_2078;
      end
    end else begin
      meta_array_48_2_coh_state <= _GEN_2078;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h30 == s1_way_waddr_3_1_r) begin
        meta_array_48_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_48_3_coh_state <= _GEN_2208;
      end
    end else begin
      meta_array_48_3_coh_state <= _GEN_2208;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h30 == s1_way_waddr_4_1_r) begin
        meta_array_48_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_48_4_coh_state <= _GEN_2338;
      end
    end else begin
      meta_array_48_4_coh_state <= _GEN_2338;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h30 == s1_way_waddr_5_1_r) begin
        meta_array_48_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_48_5_coh_state <= _GEN_2468;
      end
    end else begin
      meta_array_48_5_coh_state <= _GEN_2468;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h30 == s1_way_waddr_6_1_r) begin
        meta_array_48_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_48_6_coh_state <= _GEN_2598;
      end
    end else begin
      meta_array_48_6_coh_state <= _GEN_2598;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_48_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h30 == s1_way_waddr_7_1_r) begin
        meta_array_48_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_48_7_coh_state <= _GEN_2728;
      end
    end else begin
      meta_array_48_7_coh_state <= _GEN_2728;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h31 == s1_way_waddr_0_1_r) begin
        meta_array_49_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_49_0_coh_state <= _GEN_1819;
      end
    end else begin
      meta_array_49_0_coh_state <= _GEN_1819;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h31 == s1_way_waddr_1_1_r) begin
        meta_array_49_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_49_1_coh_state <= _GEN_1949;
      end
    end else begin
      meta_array_49_1_coh_state <= _GEN_1949;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h31 == s1_way_waddr_2_1_r) begin
        meta_array_49_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_49_2_coh_state <= _GEN_2079;
      end
    end else begin
      meta_array_49_2_coh_state <= _GEN_2079;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h31 == s1_way_waddr_3_1_r) begin
        meta_array_49_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_49_3_coh_state <= _GEN_2209;
      end
    end else begin
      meta_array_49_3_coh_state <= _GEN_2209;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h31 == s1_way_waddr_4_1_r) begin
        meta_array_49_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_49_4_coh_state <= _GEN_2339;
      end
    end else begin
      meta_array_49_4_coh_state <= _GEN_2339;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h31 == s1_way_waddr_5_1_r) begin
        meta_array_49_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_49_5_coh_state <= _GEN_2469;
      end
    end else begin
      meta_array_49_5_coh_state <= _GEN_2469;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h31 == s1_way_waddr_6_1_r) begin
        meta_array_49_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_49_6_coh_state <= _GEN_2599;
      end
    end else begin
      meta_array_49_6_coh_state <= _GEN_2599;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_49_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h31 == s1_way_waddr_7_1_r) begin
        meta_array_49_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_49_7_coh_state <= _GEN_2729;
      end
    end else begin
      meta_array_49_7_coh_state <= _GEN_2729;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h32 == s1_way_waddr_0_1_r) begin
        meta_array_50_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_50_0_coh_state <= _GEN_1820;
      end
    end else begin
      meta_array_50_0_coh_state <= _GEN_1820;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h32 == s1_way_waddr_1_1_r) begin
        meta_array_50_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_50_1_coh_state <= _GEN_1950;
      end
    end else begin
      meta_array_50_1_coh_state <= _GEN_1950;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h32 == s1_way_waddr_2_1_r) begin
        meta_array_50_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_50_2_coh_state <= _GEN_2080;
      end
    end else begin
      meta_array_50_2_coh_state <= _GEN_2080;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h32 == s1_way_waddr_3_1_r) begin
        meta_array_50_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_50_3_coh_state <= _GEN_2210;
      end
    end else begin
      meta_array_50_3_coh_state <= _GEN_2210;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h32 == s1_way_waddr_4_1_r) begin
        meta_array_50_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_50_4_coh_state <= _GEN_2340;
      end
    end else begin
      meta_array_50_4_coh_state <= _GEN_2340;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h32 == s1_way_waddr_5_1_r) begin
        meta_array_50_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_50_5_coh_state <= _GEN_2470;
      end
    end else begin
      meta_array_50_5_coh_state <= _GEN_2470;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h32 == s1_way_waddr_6_1_r) begin
        meta_array_50_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_50_6_coh_state <= _GEN_2600;
      end
    end else begin
      meta_array_50_6_coh_state <= _GEN_2600;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_50_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h32 == s1_way_waddr_7_1_r) begin
        meta_array_50_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_50_7_coh_state <= _GEN_2730;
      end
    end else begin
      meta_array_50_7_coh_state <= _GEN_2730;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h33 == s1_way_waddr_0_1_r) begin
        meta_array_51_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_51_0_coh_state <= _GEN_1821;
      end
    end else begin
      meta_array_51_0_coh_state <= _GEN_1821;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h33 == s1_way_waddr_1_1_r) begin
        meta_array_51_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_51_1_coh_state <= _GEN_1951;
      end
    end else begin
      meta_array_51_1_coh_state <= _GEN_1951;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h33 == s1_way_waddr_2_1_r) begin
        meta_array_51_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_51_2_coh_state <= _GEN_2081;
      end
    end else begin
      meta_array_51_2_coh_state <= _GEN_2081;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h33 == s1_way_waddr_3_1_r) begin
        meta_array_51_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_51_3_coh_state <= _GEN_2211;
      end
    end else begin
      meta_array_51_3_coh_state <= _GEN_2211;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h33 == s1_way_waddr_4_1_r) begin
        meta_array_51_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_51_4_coh_state <= _GEN_2341;
      end
    end else begin
      meta_array_51_4_coh_state <= _GEN_2341;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h33 == s1_way_waddr_5_1_r) begin
        meta_array_51_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_51_5_coh_state <= _GEN_2471;
      end
    end else begin
      meta_array_51_5_coh_state <= _GEN_2471;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h33 == s1_way_waddr_6_1_r) begin
        meta_array_51_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_51_6_coh_state <= _GEN_2601;
      end
    end else begin
      meta_array_51_6_coh_state <= _GEN_2601;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_51_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h33 == s1_way_waddr_7_1_r) begin
        meta_array_51_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_51_7_coh_state <= _GEN_2731;
      end
    end else begin
      meta_array_51_7_coh_state <= _GEN_2731;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h34 == s1_way_waddr_0_1_r) begin
        meta_array_52_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_52_0_coh_state <= _GEN_1822;
      end
    end else begin
      meta_array_52_0_coh_state <= _GEN_1822;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h34 == s1_way_waddr_1_1_r) begin
        meta_array_52_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_52_1_coh_state <= _GEN_1952;
      end
    end else begin
      meta_array_52_1_coh_state <= _GEN_1952;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h34 == s1_way_waddr_2_1_r) begin
        meta_array_52_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_52_2_coh_state <= _GEN_2082;
      end
    end else begin
      meta_array_52_2_coh_state <= _GEN_2082;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h34 == s1_way_waddr_3_1_r) begin
        meta_array_52_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_52_3_coh_state <= _GEN_2212;
      end
    end else begin
      meta_array_52_3_coh_state <= _GEN_2212;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h34 == s1_way_waddr_4_1_r) begin
        meta_array_52_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_52_4_coh_state <= _GEN_2342;
      end
    end else begin
      meta_array_52_4_coh_state <= _GEN_2342;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h34 == s1_way_waddr_5_1_r) begin
        meta_array_52_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_52_5_coh_state <= _GEN_2472;
      end
    end else begin
      meta_array_52_5_coh_state <= _GEN_2472;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h34 == s1_way_waddr_6_1_r) begin
        meta_array_52_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_52_6_coh_state <= _GEN_2602;
      end
    end else begin
      meta_array_52_6_coh_state <= _GEN_2602;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_52_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h34 == s1_way_waddr_7_1_r) begin
        meta_array_52_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_52_7_coh_state <= _GEN_2732;
      end
    end else begin
      meta_array_52_7_coh_state <= _GEN_2732;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h35 == s1_way_waddr_0_1_r) begin
        meta_array_53_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_53_0_coh_state <= _GEN_1823;
      end
    end else begin
      meta_array_53_0_coh_state <= _GEN_1823;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h35 == s1_way_waddr_1_1_r) begin
        meta_array_53_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_53_1_coh_state <= _GEN_1953;
      end
    end else begin
      meta_array_53_1_coh_state <= _GEN_1953;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h35 == s1_way_waddr_2_1_r) begin
        meta_array_53_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_53_2_coh_state <= _GEN_2083;
      end
    end else begin
      meta_array_53_2_coh_state <= _GEN_2083;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h35 == s1_way_waddr_3_1_r) begin
        meta_array_53_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_53_3_coh_state <= _GEN_2213;
      end
    end else begin
      meta_array_53_3_coh_state <= _GEN_2213;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h35 == s1_way_waddr_4_1_r) begin
        meta_array_53_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_53_4_coh_state <= _GEN_2343;
      end
    end else begin
      meta_array_53_4_coh_state <= _GEN_2343;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h35 == s1_way_waddr_5_1_r) begin
        meta_array_53_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_53_5_coh_state <= _GEN_2473;
      end
    end else begin
      meta_array_53_5_coh_state <= _GEN_2473;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h35 == s1_way_waddr_6_1_r) begin
        meta_array_53_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_53_6_coh_state <= _GEN_2603;
      end
    end else begin
      meta_array_53_6_coh_state <= _GEN_2603;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_53_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h35 == s1_way_waddr_7_1_r) begin
        meta_array_53_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_53_7_coh_state <= _GEN_2733;
      end
    end else begin
      meta_array_53_7_coh_state <= _GEN_2733;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h36 == s1_way_waddr_0_1_r) begin
        meta_array_54_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_54_0_coh_state <= _GEN_1824;
      end
    end else begin
      meta_array_54_0_coh_state <= _GEN_1824;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h36 == s1_way_waddr_1_1_r) begin
        meta_array_54_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_54_1_coh_state <= _GEN_1954;
      end
    end else begin
      meta_array_54_1_coh_state <= _GEN_1954;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h36 == s1_way_waddr_2_1_r) begin
        meta_array_54_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_54_2_coh_state <= _GEN_2084;
      end
    end else begin
      meta_array_54_2_coh_state <= _GEN_2084;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h36 == s1_way_waddr_3_1_r) begin
        meta_array_54_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_54_3_coh_state <= _GEN_2214;
      end
    end else begin
      meta_array_54_3_coh_state <= _GEN_2214;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h36 == s1_way_waddr_4_1_r) begin
        meta_array_54_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_54_4_coh_state <= _GEN_2344;
      end
    end else begin
      meta_array_54_4_coh_state <= _GEN_2344;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h36 == s1_way_waddr_5_1_r) begin
        meta_array_54_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_54_5_coh_state <= _GEN_2474;
      end
    end else begin
      meta_array_54_5_coh_state <= _GEN_2474;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h36 == s1_way_waddr_6_1_r) begin
        meta_array_54_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_54_6_coh_state <= _GEN_2604;
      end
    end else begin
      meta_array_54_6_coh_state <= _GEN_2604;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_54_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h36 == s1_way_waddr_7_1_r) begin
        meta_array_54_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_54_7_coh_state <= _GEN_2734;
      end
    end else begin
      meta_array_54_7_coh_state <= _GEN_2734;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h37 == s1_way_waddr_0_1_r) begin
        meta_array_55_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_55_0_coh_state <= _GEN_1825;
      end
    end else begin
      meta_array_55_0_coh_state <= _GEN_1825;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h37 == s1_way_waddr_1_1_r) begin
        meta_array_55_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_55_1_coh_state <= _GEN_1955;
      end
    end else begin
      meta_array_55_1_coh_state <= _GEN_1955;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h37 == s1_way_waddr_2_1_r) begin
        meta_array_55_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_55_2_coh_state <= _GEN_2085;
      end
    end else begin
      meta_array_55_2_coh_state <= _GEN_2085;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h37 == s1_way_waddr_3_1_r) begin
        meta_array_55_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_55_3_coh_state <= _GEN_2215;
      end
    end else begin
      meta_array_55_3_coh_state <= _GEN_2215;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h37 == s1_way_waddr_4_1_r) begin
        meta_array_55_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_55_4_coh_state <= _GEN_2345;
      end
    end else begin
      meta_array_55_4_coh_state <= _GEN_2345;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h37 == s1_way_waddr_5_1_r) begin
        meta_array_55_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_55_5_coh_state <= _GEN_2475;
      end
    end else begin
      meta_array_55_5_coh_state <= _GEN_2475;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h37 == s1_way_waddr_6_1_r) begin
        meta_array_55_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_55_6_coh_state <= _GEN_2605;
      end
    end else begin
      meta_array_55_6_coh_state <= _GEN_2605;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_55_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h37 == s1_way_waddr_7_1_r) begin
        meta_array_55_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_55_7_coh_state <= _GEN_2735;
      end
    end else begin
      meta_array_55_7_coh_state <= _GEN_2735;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h38 == s1_way_waddr_0_1_r) begin
        meta_array_56_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_56_0_coh_state <= _GEN_1826;
      end
    end else begin
      meta_array_56_0_coh_state <= _GEN_1826;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h38 == s1_way_waddr_1_1_r) begin
        meta_array_56_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_56_1_coh_state <= _GEN_1956;
      end
    end else begin
      meta_array_56_1_coh_state <= _GEN_1956;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h38 == s1_way_waddr_2_1_r) begin
        meta_array_56_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_56_2_coh_state <= _GEN_2086;
      end
    end else begin
      meta_array_56_2_coh_state <= _GEN_2086;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h38 == s1_way_waddr_3_1_r) begin
        meta_array_56_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_56_3_coh_state <= _GEN_2216;
      end
    end else begin
      meta_array_56_3_coh_state <= _GEN_2216;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h38 == s1_way_waddr_4_1_r) begin
        meta_array_56_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_56_4_coh_state <= _GEN_2346;
      end
    end else begin
      meta_array_56_4_coh_state <= _GEN_2346;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h38 == s1_way_waddr_5_1_r) begin
        meta_array_56_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_56_5_coh_state <= _GEN_2476;
      end
    end else begin
      meta_array_56_5_coh_state <= _GEN_2476;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h38 == s1_way_waddr_6_1_r) begin
        meta_array_56_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_56_6_coh_state <= _GEN_2606;
      end
    end else begin
      meta_array_56_6_coh_state <= _GEN_2606;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_56_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h38 == s1_way_waddr_7_1_r) begin
        meta_array_56_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_56_7_coh_state <= _GEN_2736;
      end
    end else begin
      meta_array_56_7_coh_state <= _GEN_2736;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h39 == s1_way_waddr_0_1_r) begin
        meta_array_57_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_57_0_coh_state <= _GEN_1827;
      end
    end else begin
      meta_array_57_0_coh_state <= _GEN_1827;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h39 == s1_way_waddr_1_1_r) begin
        meta_array_57_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_57_1_coh_state <= _GEN_1957;
      end
    end else begin
      meta_array_57_1_coh_state <= _GEN_1957;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h39 == s1_way_waddr_2_1_r) begin
        meta_array_57_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_57_2_coh_state <= _GEN_2087;
      end
    end else begin
      meta_array_57_2_coh_state <= _GEN_2087;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h39 == s1_way_waddr_3_1_r) begin
        meta_array_57_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_57_3_coh_state <= _GEN_2217;
      end
    end else begin
      meta_array_57_3_coh_state <= _GEN_2217;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h39 == s1_way_waddr_4_1_r) begin
        meta_array_57_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_57_4_coh_state <= _GEN_2347;
      end
    end else begin
      meta_array_57_4_coh_state <= _GEN_2347;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h39 == s1_way_waddr_5_1_r) begin
        meta_array_57_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_57_5_coh_state <= _GEN_2477;
      end
    end else begin
      meta_array_57_5_coh_state <= _GEN_2477;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h39 == s1_way_waddr_6_1_r) begin
        meta_array_57_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_57_6_coh_state <= _GEN_2607;
      end
    end else begin
      meta_array_57_6_coh_state <= _GEN_2607;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_57_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h39 == s1_way_waddr_7_1_r) begin
        meta_array_57_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_57_7_coh_state <= _GEN_2737;
      end
    end else begin
      meta_array_57_7_coh_state <= _GEN_2737;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3a == s1_way_waddr_0_1_r) begin
        meta_array_58_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_58_0_coh_state <= _GEN_1828;
      end
    end else begin
      meta_array_58_0_coh_state <= _GEN_1828;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3a == s1_way_waddr_1_1_r) begin
        meta_array_58_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_58_1_coh_state <= _GEN_1958;
      end
    end else begin
      meta_array_58_1_coh_state <= _GEN_1958;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3a == s1_way_waddr_2_1_r) begin
        meta_array_58_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_58_2_coh_state <= _GEN_2088;
      end
    end else begin
      meta_array_58_2_coh_state <= _GEN_2088;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3a == s1_way_waddr_3_1_r) begin
        meta_array_58_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_58_3_coh_state <= _GEN_2218;
      end
    end else begin
      meta_array_58_3_coh_state <= _GEN_2218;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3a == s1_way_waddr_4_1_r) begin
        meta_array_58_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_58_4_coh_state <= _GEN_2348;
      end
    end else begin
      meta_array_58_4_coh_state <= _GEN_2348;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3a == s1_way_waddr_5_1_r) begin
        meta_array_58_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_58_5_coh_state <= _GEN_2478;
      end
    end else begin
      meta_array_58_5_coh_state <= _GEN_2478;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3a == s1_way_waddr_6_1_r) begin
        meta_array_58_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_58_6_coh_state <= _GEN_2608;
      end
    end else begin
      meta_array_58_6_coh_state <= _GEN_2608;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_58_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3a == s1_way_waddr_7_1_r) begin
        meta_array_58_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_58_7_coh_state <= _GEN_2738;
      end
    end else begin
      meta_array_58_7_coh_state <= _GEN_2738;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3b == s1_way_waddr_0_1_r) begin
        meta_array_59_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_59_0_coh_state <= _GEN_1829;
      end
    end else begin
      meta_array_59_0_coh_state <= _GEN_1829;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3b == s1_way_waddr_1_1_r) begin
        meta_array_59_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_59_1_coh_state <= _GEN_1959;
      end
    end else begin
      meta_array_59_1_coh_state <= _GEN_1959;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3b == s1_way_waddr_2_1_r) begin
        meta_array_59_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_59_2_coh_state <= _GEN_2089;
      end
    end else begin
      meta_array_59_2_coh_state <= _GEN_2089;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3b == s1_way_waddr_3_1_r) begin
        meta_array_59_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_59_3_coh_state <= _GEN_2219;
      end
    end else begin
      meta_array_59_3_coh_state <= _GEN_2219;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3b == s1_way_waddr_4_1_r) begin
        meta_array_59_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_59_4_coh_state <= _GEN_2349;
      end
    end else begin
      meta_array_59_4_coh_state <= _GEN_2349;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3b == s1_way_waddr_5_1_r) begin
        meta_array_59_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_59_5_coh_state <= _GEN_2479;
      end
    end else begin
      meta_array_59_5_coh_state <= _GEN_2479;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3b == s1_way_waddr_6_1_r) begin
        meta_array_59_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_59_6_coh_state <= _GEN_2609;
      end
    end else begin
      meta_array_59_6_coh_state <= _GEN_2609;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_59_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3b == s1_way_waddr_7_1_r) begin
        meta_array_59_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_59_7_coh_state <= _GEN_2739;
      end
    end else begin
      meta_array_59_7_coh_state <= _GEN_2739;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3c == s1_way_waddr_0_1_r) begin
        meta_array_60_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_60_0_coh_state <= _GEN_1830;
      end
    end else begin
      meta_array_60_0_coh_state <= _GEN_1830;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3c == s1_way_waddr_1_1_r) begin
        meta_array_60_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_60_1_coh_state <= _GEN_1960;
      end
    end else begin
      meta_array_60_1_coh_state <= _GEN_1960;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3c == s1_way_waddr_2_1_r) begin
        meta_array_60_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_60_2_coh_state <= _GEN_2090;
      end
    end else begin
      meta_array_60_2_coh_state <= _GEN_2090;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3c == s1_way_waddr_3_1_r) begin
        meta_array_60_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_60_3_coh_state <= _GEN_2220;
      end
    end else begin
      meta_array_60_3_coh_state <= _GEN_2220;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3c == s1_way_waddr_4_1_r) begin
        meta_array_60_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_60_4_coh_state <= _GEN_2350;
      end
    end else begin
      meta_array_60_4_coh_state <= _GEN_2350;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3c == s1_way_waddr_5_1_r) begin
        meta_array_60_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_60_5_coh_state <= _GEN_2480;
      end
    end else begin
      meta_array_60_5_coh_state <= _GEN_2480;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3c == s1_way_waddr_6_1_r) begin
        meta_array_60_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_60_6_coh_state <= _GEN_2610;
      end
    end else begin
      meta_array_60_6_coh_state <= _GEN_2610;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_60_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3c == s1_way_waddr_7_1_r) begin
        meta_array_60_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_60_7_coh_state <= _GEN_2740;
      end
    end else begin
      meta_array_60_7_coh_state <= _GEN_2740;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3d == s1_way_waddr_0_1_r) begin
        meta_array_61_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_61_0_coh_state <= _GEN_1831;
      end
    end else begin
      meta_array_61_0_coh_state <= _GEN_1831;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3d == s1_way_waddr_1_1_r) begin
        meta_array_61_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_61_1_coh_state <= _GEN_1961;
      end
    end else begin
      meta_array_61_1_coh_state <= _GEN_1961;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3d == s1_way_waddr_2_1_r) begin
        meta_array_61_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_61_2_coh_state <= _GEN_2091;
      end
    end else begin
      meta_array_61_2_coh_state <= _GEN_2091;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3d == s1_way_waddr_3_1_r) begin
        meta_array_61_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_61_3_coh_state <= _GEN_2221;
      end
    end else begin
      meta_array_61_3_coh_state <= _GEN_2221;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3d == s1_way_waddr_4_1_r) begin
        meta_array_61_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_61_4_coh_state <= _GEN_2351;
      end
    end else begin
      meta_array_61_4_coh_state <= _GEN_2351;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3d == s1_way_waddr_5_1_r) begin
        meta_array_61_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_61_5_coh_state <= _GEN_2481;
      end
    end else begin
      meta_array_61_5_coh_state <= _GEN_2481;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3d == s1_way_waddr_6_1_r) begin
        meta_array_61_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_61_6_coh_state <= _GEN_2611;
      end
    end else begin
      meta_array_61_6_coh_state <= _GEN_2611;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_61_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3d == s1_way_waddr_7_1_r) begin
        meta_array_61_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_61_7_coh_state <= _GEN_2741;
      end
    end else begin
      meta_array_61_7_coh_state <= _GEN_2741;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3e == s1_way_waddr_0_1_r) begin
        meta_array_62_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_62_0_coh_state <= _GEN_1832;
      end
    end else begin
      meta_array_62_0_coh_state <= _GEN_1832;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3e == s1_way_waddr_1_1_r) begin
        meta_array_62_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_62_1_coh_state <= _GEN_1962;
      end
    end else begin
      meta_array_62_1_coh_state <= _GEN_1962;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3e == s1_way_waddr_2_1_r) begin
        meta_array_62_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_62_2_coh_state <= _GEN_2092;
      end
    end else begin
      meta_array_62_2_coh_state <= _GEN_2092;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3e == s1_way_waddr_3_1_r) begin
        meta_array_62_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_62_3_coh_state <= _GEN_2222;
      end
    end else begin
      meta_array_62_3_coh_state <= _GEN_2222;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3e == s1_way_waddr_4_1_r) begin
        meta_array_62_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_62_4_coh_state <= _GEN_2352;
      end
    end else begin
      meta_array_62_4_coh_state <= _GEN_2352;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3e == s1_way_waddr_5_1_r) begin
        meta_array_62_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_62_5_coh_state <= _GEN_2482;
      end
    end else begin
      meta_array_62_5_coh_state <= _GEN_2482;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3e == s1_way_waddr_6_1_r) begin
        meta_array_62_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_62_6_coh_state <= _GEN_2612;
      end
    end else begin
      meta_array_62_6_coh_state <= _GEN_2612;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_62_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3e == s1_way_waddr_7_1_r) begin
        meta_array_62_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_62_7_coh_state <= _GEN_2742;
      end
    end else begin
      meta_array_62_7_coh_state <= _GEN_2742;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_0_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_0_1_REG) begin
      if (6'h3f == s1_way_waddr_0_1_r) begin
        meta_array_63_0_coh_state <= s1_way_wdata_0_1_rcoh_state;
      end else begin
        meta_array_63_0_coh_state <= _GEN_1833;
      end
    end else begin
      meta_array_63_0_coh_state <= _GEN_1833;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_1_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_1_1_REG) begin
      if (6'h3f == s1_way_waddr_1_1_r) begin
        meta_array_63_1_coh_state <= s1_way_wdata_1_1_rcoh_state;
      end else begin
        meta_array_63_1_coh_state <= _GEN_1963;
      end
    end else begin
      meta_array_63_1_coh_state <= _GEN_1963;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_2_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_2_1_REG) begin
      if (6'h3f == s1_way_waddr_2_1_r) begin
        meta_array_63_2_coh_state <= s1_way_wdata_2_1_rcoh_state;
      end else begin
        meta_array_63_2_coh_state <= _GEN_2093;
      end
    end else begin
      meta_array_63_2_coh_state <= _GEN_2093;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_3_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_3_1_REG) begin
      if (6'h3f == s1_way_waddr_3_1_r) begin
        meta_array_63_3_coh_state <= s1_way_wdata_3_1_rcoh_state;
      end else begin
        meta_array_63_3_coh_state <= _GEN_2223;
      end
    end else begin
      meta_array_63_3_coh_state <= _GEN_2223;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_4_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_4_1_REG) begin
      if (6'h3f == s1_way_waddr_4_1_r) begin
        meta_array_63_4_coh_state <= s1_way_wdata_4_1_rcoh_state;
      end else begin
        meta_array_63_4_coh_state <= _GEN_2353;
      end
    end else begin
      meta_array_63_4_coh_state <= _GEN_2353;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_5_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_5_1_REG) begin
      if (6'h3f == s1_way_waddr_5_1_r) begin
        meta_array_63_5_coh_state <= s1_way_wdata_5_1_rcoh_state;
      end else begin
        meta_array_63_5_coh_state <= _GEN_2483;
      end
    end else begin
      meta_array_63_5_coh_state <= _GEN_2483;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_6_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_6_1_REG) begin
      if (6'h3f == s1_way_waddr_6_1_r) begin
        meta_array_63_6_coh_state <= s1_way_wdata_6_1_rcoh_state;
      end else begin
        meta_array_63_6_coh_state <= _GEN_2613;
      end
    end else begin
      meta_array_63_6_coh_state <= _GEN_2613;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsynchronousMetaArray.scala 99:41]
      meta_array_63_7_coh_state <= 2'h0; // @[AsynchronousMetaArray.scala 100:{55,55}]
    end else if (s1_way_wen_7_1_REG) begin
      if (6'h3f == s1_way_waddr_7_1_r) begin
        meta_array_63_7_coh_state <= s1_way_wdata_7_1_rcoh_state;
      end else begin
        meta_array_63_7_coh_state <= _GEN_2743;
      end
    end else begin
      meta_array_63_7_coh_state <= _GEN_2743;
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
  meta_array_0_0_coh_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  meta_array_0_1_coh_state = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  meta_array_0_2_coh_state = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  meta_array_0_3_coh_state = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  meta_array_0_4_coh_state = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  meta_array_0_5_coh_state = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  meta_array_0_6_coh_state = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  meta_array_0_7_coh_state = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  meta_array_1_0_coh_state = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  meta_array_1_1_coh_state = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  meta_array_1_2_coh_state = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  meta_array_1_3_coh_state = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  meta_array_1_4_coh_state = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  meta_array_1_5_coh_state = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  meta_array_1_6_coh_state = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  meta_array_1_7_coh_state = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  meta_array_2_0_coh_state = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  meta_array_2_1_coh_state = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  meta_array_2_2_coh_state = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  meta_array_2_3_coh_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  meta_array_2_4_coh_state = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  meta_array_2_5_coh_state = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  meta_array_2_6_coh_state = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  meta_array_2_7_coh_state = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  meta_array_3_0_coh_state = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  meta_array_3_1_coh_state = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  meta_array_3_2_coh_state = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  meta_array_3_3_coh_state = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  meta_array_3_4_coh_state = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  meta_array_3_5_coh_state = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  meta_array_3_6_coh_state = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  meta_array_3_7_coh_state = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  meta_array_4_0_coh_state = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  meta_array_4_1_coh_state = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  meta_array_4_2_coh_state = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  meta_array_4_3_coh_state = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  meta_array_4_4_coh_state = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  meta_array_4_5_coh_state = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  meta_array_4_6_coh_state = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  meta_array_4_7_coh_state = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  meta_array_5_0_coh_state = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  meta_array_5_1_coh_state = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  meta_array_5_2_coh_state = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  meta_array_5_3_coh_state = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  meta_array_5_4_coh_state = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  meta_array_5_5_coh_state = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  meta_array_5_6_coh_state = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  meta_array_5_7_coh_state = _RAND_47[1:0];
  _RAND_48 = {1{`RANDOM}};
  meta_array_6_0_coh_state = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  meta_array_6_1_coh_state = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  meta_array_6_2_coh_state = _RAND_50[1:0];
  _RAND_51 = {1{`RANDOM}};
  meta_array_6_3_coh_state = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  meta_array_6_4_coh_state = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  meta_array_6_5_coh_state = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  meta_array_6_6_coh_state = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  meta_array_6_7_coh_state = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  meta_array_7_0_coh_state = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  meta_array_7_1_coh_state = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  meta_array_7_2_coh_state = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  meta_array_7_3_coh_state = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  meta_array_7_4_coh_state = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  meta_array_7_5_coh_state = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  meta_array_7_6_coh_state = _RAND_62[1:0];
  _RAND_63 = {1{`RANDOM}};
  meta_array_7_7_coh_state = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  meta_array_8_0_coh_state = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  meta_array_8_1_coh_state = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  meta_array_8_2_coh_state = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  meta_array_8_3_coh_state = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  meta_array_8_4_coh_state = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  meta_array_8_5_coh_state = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  meta_array_8_6_coh_state = _RAND_70[1:0];
  _RAND_71 = {1{`RANDOM}};
  meta_array_8_7_coh_state = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  meta_array_9_0_coh_state = _RAND_72[1:0];
  _RAND_73 = {1{`RANDOM}};
  meta_array_9_1_coh_state = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  meta_array_9_2_coh_state = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  meta_array_9_3_coh_state = _RAND_75[1:0];
  _RAND_76 = {1{`RANDOM}};
  meta_array_9_4_coh_state = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  meta_array_9_5_coh_state = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  meta_array_9_6_coh_state = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  meta_array_9_7_coh_state = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  meta_array_10_0_coh_state = _RAND_80[1:0];
  _RAND_81 = {1{`RANDOM}};
  meta_array_10_1_coh_state = _RAND_81[1:0];
  _RAND_82 = {1{`RANDOM}};
  meta_array_10_2_coh_state = _RAND_82[1:0];
  _RAND_83 = {1{`RANDOM}};
  meta_array_10_3_coh_state = _RAND_83[1:0];
  _RAND_84 = {1{`RANDOM}};
  meta_array_10_4_coh_state = _RAND_84[1:0];
  _RAND_85 = {1{`RANDOM}};
  meta_array_10_5_coh_state = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  meta_array_10_6_coh_state = _RAND_86[1:0];
  _RAND_87 = {1{`RANDOM}};
  meta_array_10_7_coh_state = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  meta_array_11_0_coh_state = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  meta_array_11_1_coh_state = _RAND_89[1:0];
  _RAND_90 = {1{`RANDOM}};
  meta_array_11_2_coh_state = _RAND_90[1:0];
  _RAND_91 = {1{`RANDOM}};
  meta_array_11_3_coh_state = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  meta_array_11_4_coh_state = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  meta_array_11_5_coh_state = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  meta_array_11_6_coh_state = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  meta_array_11_7_coh_state = _RAND_95[1:0];
  _RAND_96 = {1{`RANDOM}};
  meta_array_12_0_coh_state = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  meta_array_12_1_coh_state = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  meta_array_12_2_coh_state = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  meta_array_12_3_coh_state = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  meta_array_12_4_coh_state = _RAND_100[1:0];
  _RAND_101 = {1{`RANDOM}};
  meta_array_12_5_coh_state = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  meta_array_12_6_coh_state = _RAND_102[1:0];
  _RAND_103 = {1{`RANDOM}};
  meta_array_12_7_coh_state = _RAND_103[1:0];
  _RAND_104 = {1{`RANDOM}};
  meta_array_13_0_coh_state = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  meta_array_13_1_coh_state = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  meta_array_13_2_coh_state = _RAND_106[1:0];
  _RAND_107 = {1{`RANDOM}};
  meta_array_13_3_coh_state = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  meta_array_13_4_coh_state = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  meta_array_13_5_coh_state = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  meta_array_13_6_coh_state = _RAND_110[1:0];
  _RAND_111 = {1{`RANDOM}};
  meta_array_13_7_coh_state = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  meta_array_14_0_coh_state = _RAND_112[1:0];
  _RAND_113 = {1{`RANDOM}};
  meta_array_14_1_coh_state = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  meta_array_14_2_coh_state = _RAND_114[1:0];
  _RAND_115 = {1{`RANDOM}};
  meta_array_14_3_coh_state = _RAND_115[1:0];
  _RAND_116 = {1{`RANDOM}};
  meta_array_14_4_coh_state = _RAND_116[1:0];
  _RAND_117 = {1{`RANDOM}};
  meta_array_14_5_coh_state = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  meta_array_14_6_coh_state = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  meta_array_14_7_coh_state = _RAND_119[1:0];
  _RAND_120 = {1{`RANDOM}};
  meta_array_15_0_coh_state = _RAND_120[1:0];
  _RAND_121 = {1{`RANDOM}};
  meta_array_15_1_coh_state = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  meta_array_15_2_coh_state = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  meta_array_15_3_coh_state = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  meta_array_15_4_coh_state = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  meta_array_15_5_coh_state = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  meta_array_15_6_coh_state = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  meta_array_15_7_coh_state = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  meta_array_16_0_coh_state = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  meta_array_16_1_coh_state = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  meta_array_16_2_coh_state = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  meta_array_16_3_coh_state = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  meta_array_16_4_coh_state = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  meta_array_16_5_coh_state = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  meta_array_16_6_coh_state = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  meta_array_16_7_coh_state = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  meta_array_17_0_coh_state = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  meta_array_17_1_coh_state = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  meta_array_17_2_coh_state = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  meta_array_17_3_coh_state = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  meta_array_17_4_coh_state = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  meta_array_17_5_coh_state = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  meta_array_17_6_coh_state = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  meta_array_17_7_coh_state = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  meta_array_18_0_coh_state = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  meta_array_18_1_coh_state = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  meta_array_18_2_coh_state = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  meta_array_18_3_coh_state = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  meta_array_18_4_coh_state = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  meta_array_18_5_coh_state = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  meta_array_18_6_coh_state = _RAND_150[1:0];
  _RAND_151 = {1{`RANDOM}};
  meta_array_18_7_coh_state = _RAND_151[1:0];
  _RAND_152 = {1{`RANDOM}};
  meta_array_19_0_coh_state = _RAND_152[1:0];
  _RAND_153 = {1{`RANDOM}};
  meta_array_19_1_coh_state = _RAND_153[1:0];
  _RAND_154 = {1{`RANDOM}};
  meta_array_19_2_coh_state = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  meta_array_19_3_coh_state = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  meta_array_19_4_coh_state = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  meta_array_19_5_coh_state = _RAND_157[1:0];
  _RAND_158 = {1{`RANDOM}};
  meta_array_19_6_coh_state = _RAND_158[1:0];
  _RAND_159 = {1{`RANDOM}};
  meta_array_19_7_coh_state = _RAND_159[1:0];
  _RAND_160 = {1{`RANDOM}};
  meta_array_20_0_coh_state = _RAND_160[1:0];
  _RAND_161 = {1{`RANDOM}};
  meta_array_20_1_coh_state = _RAND_161[1:0];
  _RAND_162 = {1{`RANDOM}};
  meta_array_20_2_coh_state = _RAND_162[1:0];
  _RAND_163 = {1{`RANDOM}};
  meta_array_20_3_coh_state = _RAND_163[1:0];
  _RAND_164 = {1{`RANDOM}};
  meta_array_20_4_coh_state = _RAND_164[1:0];
  _RAND_165 = {1{`RANDOM}};
  meta_array_20_5_coh_state = _RAND_165[1:0];
  _RAND_166 = {1{`RANDOM}};
  meta_array_20_6_coh_state = _RAND_166[1:0];
  _RAND_167 = {1{`RANDOM}};
  meta_array_20_7_coh_state = _RAND_167[1:0];
  _RAND_168 = {1{`RANDOM}};
  meta_array_21_0_coh_state = _RAND_168[1:0];
  _RAND_169 = {1{`RANDOM}};
  meta_array_21_1_coh_state = _RAND_169[1:0];
  _RAND_170 = {1{`RANDOM}};
  meta_array_21_2_coh_state = _RAND_170[1:0];
  _RAND_171 = {1{`RANDOM}};
  meta_array_21_3_coh_state = _RAND_171[1:0];
  _RAND_172 = {1{`RANDOM}};
  meta_array_21_4_coh_state = _RAND_172[1:0];
  _RAND_173 = {1{`RANDOM}};
  meta_array_21_5_coh_state = _RAND_173[1:0];
  _RAND_174 = {1{`RANDOM}};
  meta_array_21_6_coh_state = _RAND_174[1:0];
  _RAND_175 = {1{`RANDOM}};
  meta_array_21_7_coh_state = _RAND_175[1:0];
  _RAND_176 = {1{`RANDOM}};
  meta_array_22_0_coh_state = _RAND_176[1:0];
  _RAND_177 = {1{`RANDOM}};
  meta_array_22_1_coh_state = _RAND_177[1:0];
  _RAND_178 = {1{`RANDOM}};
  meta_array_22_2_coh_state = _RAND_178[1:0];
  _RAND_179 = {1{`RANDOM}};
  meta_array_22_3_coh_state = _RAND_179[1:0];
  _RAND_180 = {1{`RANDOM}};
  meta_array_22_4_coh_state = _RAND_180[1:0];
  _RAND_181 = {1{`RANDOM}};
  meta_array_22_5_coh_state = _RAND_181[1:0];
  _RAND_182 = {1{`RANDOM}};
  meta_array_22_6_coh_state = _RAND_182[1:0];
  _RAND_183 = {1{`RANDOM}};
  meta_array_22_7_coh_state = _RAND_183[1:0];
  _RAND_184 = {1{`RANDOM}};
  meta_array_23_0_coh_state = _RAND_184[1:0];
  _RAND_185 = {1{`RANDOM}};
  meta_array_23_1_coh_state = _RAND_185[1:0];
  _RAND_186 = {1{`RANDOM}};
  meta_array_23_2_coh_state = _RAND_186[1:0];
  _RAND_187 = {1{`RANDOM}};
  meta_array_23_3_coh_state = _RAND_187[1:0];
  _RAND_188 = {1{`RANDOM}};
  meta_array_23_4_coh_state = _RAND_188[1:0];
  _RAND_189 = {1{`RANDOM}};
  meta_array_23_5_coh_state = _RAND_189[1:0];
  _RAND_190 = {1{`RANDOM}};
  meta_array_23_6_coh_state = _RAND_190[1:0];
  _RAND_191 = {1{`RANDOM}};
  meta_array_23_7_coh_state = _RAND_191[1:0];
  _RAND_192 = {1{`RANDOM}};
  meta_array_24_0_coh_state = _RAND_192[1:0];
  _RAND_193 = {1{`RANDOM}};
  meta_array_24_1_coh_state = _RAND_193[1:0];
  _RAND_194 = {1{`RANDOM}};
  meta_array_24_2_coh_state = _RAND_194[1:0];
  _RAND_195 = {1{`RANDOM}};
  meta_array_24_3_coh_state = _RAND_195[1:0];
  _RAND_196 = {1{`RANDOM}};
  meta_array_24_4_coh_state = _RAND_196[1:0];
  _RAND_197 = {1{`RANDOM}};
  meta_array_24_5_coh_state = _RAND_197[1:0];
  _RAND_198 = {1{`RANDOM}};
  meta_array_24_6_coh_state = _RAND_198[1:0];
  _RAND_199 = {1{`RANDOM}};
  meta_array_24_7_coh_state = _RAND_199[1:0];
  _RAND_200 = {1{`RANDOM}};
  meta_array_25_0_coh_state = _RAND_200[1:0];
  _RAND_201 = {1{`RANDOM}};
  meta_array_25_1_coh_state = _RAND_201[1:0];
  _RAND_202 = {1{`RANDOM}};
  meta_array_25_2_coh_state = _RAND_202[1:0];
  _RAND_203 = {1{`RANDOM}};
  meta_array_25_3_coh_state = _RAND_203[1:0];
  _RAND_204 = {1{`RANDOM}};
  meta_array_25_4_coh_state = _RAND_204[1:0];
  _RAND_205 = {1{`RANDOM}};
  meta_array_25_5_coh_state = _RAND_205[1:0];
  _RAND_206 = {1{`RANDOM}};
  meta_array_25_6_coh_state = _RAND_206[1:0];
  _RAND_207 = {1{`RANDOM}};
  meta_array_25_7_coh_state = _RAND_207[1:0];
  _RAND_208 = {1{`RANDOM}};
  meta_array_26_0_coh_state = _RAND_208[1:0];
  _RAND_209 = {1{`RANDOM}};
  meta_array_26_1_coh_state = _RAND_209[1:0];
  _RAND_210 = {1{`RANDOM}};
  meta_array_26_2_coh_state = _RAND_210[1:0];
  _RAND_211 = {1{`RANDOM}};
  meta_array_26_3_coh_state = _RAND_211[1:0];
  _RAND_212 = {1{`RANDOM}};
  meta_array_26_4_coh_state = _RAND_212[1:0];
  _RAND_213 = {1{`RANDOM}};
  meta_array_26_5_coh_state = _RAND_213[1:0];
  _RAND_214 = {1{`RANDOM}};
  meta_array_26_6_coh_state = _RAND_214[1:0];
  _RAND_215 = {1{`RANDOM}};
  meta_array_26_7_coh_state = _RAND_215[1:0];
  _RAND_216 = {1{`RANDOM}};
  meta_array_27_0_coh_state = _RAND_216[1:0];
  _RAND_217 = {1{`RANDOM}};
  meta_array_27_1_coh_state = _RAND_217[1:0];
  _RAND_218 = {1{`RANDOM}};
  meta_array_27_2_coh_state = _RAND_218[1:0];
  _RAND_219 = {1{`RANDOM}};
  meta_array_27_3_coh_state = _RAND_219[1:0];
  _RAND_220 = {1{`RANDOM}};
  meta_array_27_4_coh_state = _RAND_220[1:0];
  _RAND_221 = {1{`RANDOM}};
  meta_array_27_5_coh_state = _RAND_221[1:0];
  _RAND_222 = {1{`RANDOM}};
  meta_array_27_6_coh_state = _RAND_222[1:0];
  _RAND_223 = {1{`RANDOM}};
  meta_array_27_7_coh_state = _RAND_223[1:0];
  _RAND_224 = {1{`RANDOM}};
  meta_array_28_0_coh_state = _RAND_224[1:0];
  _RAND_225 = {1{`RANDOM}};
  meta_array_28_1_coh_state = _RAND_225[1:0];
  _RAND_226 = {1{`RANDOM}};
  meta_array_28_2_coh_state = _RAND_226[1:0];
  _RAND_227 = {1{`RANDOM}};
  meta_array_28_3_coh_state = _RAND_227[1:0];
  _RAND_228 = {1{`RANDOM}};
  meta_array_28_4_coh_state = _RAND_228[1:0];
  _RAND_229 = {1{`RANDOM}};
  meta_array_28_5_coh_state = _RAND_229[1:0];
  _RAND_230 = {1{`RANDOM}};
  meta_array_28_6_coh_state = _RAND_230[1:0];
  _RAND_231 = {1{`RANDOM}};
  meta_array_28_7_coh_state = _RAND_231[1:0];
  _RAND_232 = {1{`RANDOM}};
  meta_array_29_0_coh_state = _RAND_232[1:0];
  _RAND_233 = {1{`RANDOM}};
  meta_array_29_1_coh_state = _RAND_233[1:0];
  _RAND_234 = {1{`RANDOM}};
  meta_array_29_2_coh_state = _RAND_234[1:0];
  _RAND_235 = {1{`RANDOM}};
  meta_array_29_3_coh_state = _RAND_235[1:0];
  _RAND_236 = {1{`RANDOM}};
  meta_array_29_4_coh_state = _RAND_236[1:0];
  _RAND_237 = {1{`RANDOM}};
  meta_array_29_5_coh_state = _RAND_237[1:0];
  _RAND_238 = {1{`RANDOM}};
  meta_array_29_6_coh_state = _RAND_238[1:0];
  _RAND_239 = {1{`RANDOM}};
  meta_array_29_7_coh_state = _RAND_239[1:0];
  _RAND_240 = {1{`RANDOM}};
  meta_array_30_0_coh_state = _RAND_240[1:0];
  _RAND_241 = {1{`RANDOM}};
  meta_array_30_1_coh_state = _RAND_241[1:0];
  _RAND_242 = {1{`RANDOM}};
  meta_array_30_2_coh_state = _RAND_242[1:0];
  _RAND_243 = {1{`RANDOM}};
  meta_array_30_3_coh_state = _RAND_243[1:0];
  _RAND_244 = {1{`RANDOM}};
  meta_array_30_4_coh_state = _RAND_244[1:0];
  _RAND_245 = {1{`RANDOM}};
  meta_array_30_5_coh_state = _RAND_245[1:0];
  _RAND_246 = {1{`RANDOM}};
  meta_array_30_6_coh_state = _RAND_246[1:0];
  _RAND_247 = {1{`RANDOM}};
  meta_array_30_7_coh_state = _RAND_247[1:0];
  _RAND_248 = {1{`RANDOM}};
  meta_array_31_0_coh_state = _RAND_248[1:0];
  _RAND_249 = {1{`RANDOM}};
  meta_array_31_1_coh_state = _RAND_249[1:0];
  _RAND_250 = {1{`RANDOM}};
  meta_array_31_2_coh_state = _RAND_250[1:0];
  _RAND_251 = {1{`RANDOM}};
  meta_array_31_3_coh_state = _RAND_251[1:0];
  _RAND_252 = {1{`RANDOM}};
  meta_array_31_4_coh_state = _RAND_252[1:0];
  _RAND_253 = {1{`RANDOM}};
  meta_array_31_5_coh_state = _RAND_253[1:0];
  _RAND_254 = {1{`RANDOM}};
  meta_array_31_6_coh_state = _RAND_254[1:0];
  _RAND_255 = {1{`RANDOM}};
  meta_array_31_7_coh_state = _RAND_255[1:0];
  _RAND_256 = {1{`RANDOM}};
  meta_array_32_0_coh_state = _RAND_256[1:0];
  _RAND_257 = {1{`RANDOM}};
  meta_array_32_1_coh_state = _RAND_257[1:0];
  _RAND_258 = {1{`RANDOM}};
  meta_array_32_2_coh_state = _RAND_258[1:0];
  _RAND_259 = {1{`RANDOM}};
  meta_array_32_3_coh_state = _RAND_259[1:0];
  _RAND_260 = {1{`RANDOM}};
  meta_array_32_4_coh_state = _RAND_260[1:0];
  _RAND_261 = {1{`RANDOM}};
  meta_array_32_5_coh_state = _RAND_261[1:0];
  _RAND_262 = {1{`RANDOM}};
  meta_array_32_6_coh_state = _RAND_262[1:0];
  _RAND_263 = {1{`RANDOM}};
  meta_array_32_7_coh_state = _RAND_263[1:0];
  _RAND_264 = {1{`RANDOM}};
  meta_array_33_0_coh_state = _RAND_264[1:0];
  _RAND_265 = {1{`RANDOM}};
  meta_array_33_1_coh_state = _RAND_265[1:0];
  _RAND_266 = {1{`RANDOM}};
  meta_array_33_2_coh_state = _RAND_266[1:0];
  _RAND_267 = {1{`RANDOM}};
  meta_array_33_3_coh_state = _RAND_267[1:0];
  _RAND_268 = {1{`RANDOM}};
  meta_array_33_4_coh_state = _RAND_268[1:0];
  _RAND_269 = {1{`RANDOM}};
  meta_array_33_5_coh_state = _RAND_269[1:0];
  _RAND_270 = {1{`RANDOM}};
  meta_array_33_6_coh_state = _RAND_270[1:0];
  _RAND_271 = {1{`RANDOM}};
  meta_array_33_7_coh_state = _RAND_271[1:0];
  _RAND_272 = {1{`RANDOM}};
  meta_array_34_0_coh_state = _RAND_272[1:0];
  _RAND_273 = {1{`RANDOM}};
  meta_array_34_1_coh_state = _RAND_273[1:0];
  _RAND_274 = {1{`RANDOM}};
  meta_array_34_2_coh_state = _RAND_274[1:0];
  _RAND_275 = {1{`RANDOM}};
  meta_array_34_3_coh_state = _RAND_275[1:0];
  _RAND_276 = {1{`RANDOM}};
  meta_array_34_4_coh_state = _RAND_276[1:0];
  _RAND_277 = {1{`RANDOM}};
  meta_array_34_5_coh_state = _RAND_277[1:0];
  _RAND_278 = {1{`RANDOM}};
  meta_array_34_6_coh_state = _RAND_278[1:0];
  _RAND_279 = {1{`RANDOM}};
  meta_array_34_7_coh_state = _RAND_279[1:0];
  _RAND_280 = {1{`RANDOM}};
  meta_array_35_0_coh_state = _RAND_280[1:0];
  _RAND_281 = {1{`RANDOM}};
  meta_array_35_1_coh_state = _RAND_281[1:0];
  _RAND_282 = {1{`RANDOM}};
  meta_array_35_2_coh_state = _RAND_282[1:0];
  _RAND_283 = {1{`RANDOM}};
  meta_array_35_3_coh_state = _RAND_283[1:0];
  _RAND_284 = {1{`RANDOM}};
  meta_array_35_4_coh_state = _RAND_284[1:0];
  _RAND_285 = {1{`RANDOM}};
  meta_array_35_5_coh_state = _RAND_285[1:0];
  _RAND_286 = {1{`RANDOM}};
  meta_array_35_6_coh_state = _RAND_286[1:0];
  _RAND_287 = {1{`RANDOM}};
  meta_array_35_7_coh_state = _RAND_287[1:0];
  _RAND_288 = {1{`RANDOM}};
  meta_array_36_0_coh_state = _RAND_288[1:0];
  _RAND_289 = {1{`RANDOM}};
  meta_array_36_1_coh_state = _RAND_289[1:0];
  _RAND_290 = {1{`RANDOM}};
  meta_array_36_2_coh_state = _RAND_290[1:0];
  _RAND_291 = {1{`RANDOM}};
  meta_array_36_3_coh_state = _RAND_291[1:0];
  _RAND_292 = {1{`RANDOM}};
  meta_array_36_4_coh_state = _RAND_292[1:0];
  _RAND_293 = {1{`RANDOM}};
  meta_array_36_5_coh_state = _RAND_293[1:0];
  _RAND_294 = {1{`RANDOM}};
  meta_array_36_6_coh_state = _RAND_294[1:0];
  _RAND_295 = {1{`RANDOM}};
  meta_array_36_7_coh_state = _RAND_295[1:0];
  _RAND_296 = {1{`RANDOM}};
  meta_array_37_0_coh_state = _RAND_296[1:0];
  _RAND_297 = {1{`RANDOM}};
  meta_array_37_1_coh_state = _RAND_297[1:0];
  _RAND_298 = {1{`RANDOM}};
  meta_array_37_2_coh_state = _RAND_298[1:0];
  _RAND_299 = {1{`RANDOM}};
  meta_array_37_3_coh_state = _RAND_299[1:0];
  _RAND_300 = {1{`RANDOM}};
  meta_array_37_4_coh_state = _RAND_300[1:0];
  _RAND_301 = {1{`RANDOM}};
  meta_array_37_5_coh_state = _RAND_301[1:0];
  _RAND_302 = {1{`RANDOM}};
  meta_array_37_6_coh_state = _RAND_302[1:0];
  _RAND_303 = {1{`RANDOM}};
  meta_array_37_7_coh_state = _RAND_303[1:0];
  _RAND_304 = {1{`RANDOM}};
  meta_array_38_0_coh_state = _RAND_304[1:0];
  _RAND_305 = {1{`RANDOM}};
  meta_array_38_1_coh_state = _RAND_305[1:0];
  _RAND_306 = {1{`RANDOM}};
  meta_array_38_2_coh_state = _RAND_306[1:0];
  _RAND_307 = {1{`RANDOM}};
  meta_array_38_3_coh_state = _RAND_307[1:0];
  _RAND_308 = {1{`RANDOM}};
  meta_array_38_4_coh_state = _RAND_308[1:0];
  _RAND_309 = {1{`RANDOM}};
  meta_array_38_5_coh_state = _RAND_309[1:0];
  _RAND_310 = {1{`RANDOM}};
  meta_array_38_6_coh_state = _RAND_310[1:0];
  _RAND_311 = {1{`RANDOM}};
  meta_array_38_7_coh_state = _RAND_311[1:0];
  _RAND_312 = {1{`RANDOM}};
  meta_array_39_0_coh_state = _RAND_312[1:0];
  _RAND_313 = {1{`RANDOM}};
  meta_array_39_1_coh_state = _RAND_313[1:0];
  _RAND_314 = {1{`RANDOM}};
  meta_array_39_2_coh_state = _RAND_314[1:0];
  _RAND_315 = {1{`RANDOM}};
  meta_array_39_3_coh_state = _RAND_315[1:0];
  _RAND_316 = {1{`RANDOM}};
  meta_array_39_4_coh_state = _RAND_316[1:0];
  _RAND_317 = {1{`RANDOM}};
  meta_array_39_5_coh_state = _RAND_317[1:0];
  _RAND_318 = {1{`RANDOM}};
  meta_array_39_6_coh_state = _RAND_318[1:0];
  _RAND_319 = {1{`RANDOM}};
  meta_array_39_7_coh_state = _RAND_319[1:0];
  _RAND_320 = {1{`RANDOM}};
  meta_array_40_0_coh_state = _RAND_320[1:0];
  _RAND_321 = {1{`RANDOM}};
  meta_array_40_1_coh_state = _RAND_321[1:0];
  _RAND_322 = {1{`RANDOM}};
  meta_array_40_2_coh_state = _RAND_322[1:0];
  _RAND_323 = {1{`RANDOM}};
  meta_array_40_3_coh_state = _RAND_323[1:0];
  _RAND_324 = {1{`RANDOM}};
  meta_array_40_4_coh_state = _RAND_324[1:0];
  _RAND_325 = {1{`RANDOM}};
  meta_array_40_5_coh_state = _RAND_325[1:0];
  _RAND_326 = {1{`RANDOM}};
  meta_array_40_6_coh_state = _RAND_326[1:0];
  _RAND_327 = {1{`RANDOM}};
  meta_array_40_7_coh_state = _RAND_327[1:0];
  _RAND_328 = {1{`RANDOM}};
  meta_array_41_0_coh_state = _RAND_328[1:0];
  _RAND_329 = {1{`RANDOM}};
  meta_array_41_1_coh_state = _RAND_329[1:0];
  _RAND_330 = {1{`RANDOM}};
  meta_array_41_2_coh_state = _RAND_330[1:0];
  _RAND_331 = {1{`RANDOM}};
  meta_array_41_3_coh_state = _RAND_331[1:0];
  _RAND_332 = {1{`RANDOM}};
  meta_array_41_4_coh_state = _RAND_332[1:0];
  _RAND_333 = {1{`RANDOM}};
  meta_array_41_5_coh_state = _RAND_333[1:0];
  _RAND_334 = {1{`RANDOM}};
  meta_array_41_6_coh_state = _RAND_334[1:0];
  _RAND_335 = {1{`RANDOM}};
  meta_array_41_7_coh_state = _RAND_335[1:0];
  _RAND_336 = {1{`RANDOM}};
  meta_array_42_0_coh_state = _RAND_336[1:0];
  _RAND_337 = {1{`RANDOM}};
  meta_array_42_1_coh_state = _RAND_337[1:0];
  _RAND_338 = {1{`RANDOM}};
  meta_array_42_2_coh_state = _RAND_338[1:0];
  _RAND_339 = {1{`RANDOM}};
  meta_array_42_3_coh_state = _RAND_339[1:0];
  _RAND_340 = {1{`RANDOM}};
  meta_array_42_4_coh_state = _RAND_340[1:0];
  _RAND_341 = {1{`RANDOM}};
  meta_array_42_5_coh_state = _RAND_341[1:0];
  _RAND_342 = {1{`RANDOM}};
  meta_array_42_6_coh_state = _RAND_342[1:0];
  _RAND_343 = {1{`RANDOM}};
  meta_array_42_7_coh_state = _RAND_343[1:0];
  _RAND_344 = {1{`RANDOM}};
  meta_array_43_0_coh_state = _RAND_344[1:0];
  _RAND_345 = {1{`RANDOM}};
  meta_array_43_1_coh_state = _RAND_345[1:0];
  _RAND_346 = {1{`RANDOM}};
  meta_array_43_2_coh_state = _RAND_346[1:0];
  _RAND_347 = {1{`RANDOM}};
  meta_array_43_3_coh_state = _RAND_347[1:0];
  _RAND_348 = {1{`RANDOM}};
  meta_array_43_4_coh_state = _RAND_348[1:0];
  _RAND_349 = {1{`RANDOM}};
  meta_array_43_5_coh_state = _RAND_349[1:0];
  _RAND_350 = {1{`RANDOM}};
  meta_array_43_6_coh_state = _RAND_350[1:0];
  _RAND_351 = {1{`RANDOM}};
  meta_array_43_7_coh_state = _RAND_351[1:0];
  _RAND_352 = {1{`RANDOM}};
  meta_array_44_0_coh_state = _RAND_352[1:0];
  _RAND_353 = {1{`RANDOM}};
  meta_array_44_1_coh_state = _RAND_353[1:0];
  _RAND_354 = {1{`RANDOM}};
  meta_array_44_2_coh_state = _RAND_354[1:0];
  _RAND_355 = {1{`RANDOM}};
  meta_array_44_3_coh_state = _RAND_355[1:0];
  _RAND_356 = {1{`RANDOM}};
  meta_array_44_4_coh_state = _RAND_356[1:0];
  _RAND_357 = {1{`RANDOM}};
  meta_array_44_5_coh_state = _RAND_357[1:0];
  _RAND_358 = {1{`RANDOM}};
  meta_array_44_6_coh_state = _RAND_358[1:0];
  _RAND_359 = {1{`RANDOM}};
  meta_array_44_7_coh_state = _RAND_359[1:0];
  _RAND_360 = {1{`RANDOM}};
  meta_array_45_0_coh_state = _RAND_360[1:0];
  _RAND_361 = {1{`RANDOM}};
  meta_array_45_1_coh_state = _RAND_361[1:0];
  _RAND_362 = {1{`RANDOM}};
  meta_array_45_2_coh_state = _RAND_362[1:0];
  _RAND_363 = {1{`RANDOM}};
  meta_array_45_3_coh_state = _RAND_363[1:0];
  _RAND_364 = {1{`RANDOM}};
  meta_array_45_4_coh_state = _RAND_364[1:0];
  _RAND_365 = {1{`RANDOM}};
  meta_array_45_5_coh_state = _RAND_365[1:0];
  _RAND_366 = {1{`RANDOM}};
  meta_array_45_6_coh_state = _RAND_366[1:0];
  _RAND_367 = {1{`RANDOM}};
  meta_array_45_7_coh_state = _RAND_367[1:0];
  _RAND_368 = {1{`RANDOM}};
  meta_array_46_0_coh_state = _RAND_368[1:0];
  _RAND_369 = {1{`RANDOM}};
  meta_array_46_1_coh_state = _RAND_369[1:0];
  _RAND_370 = {1{`RANDOM}};
  meta_array_46_2_coh_state = _RAND_370[1:0];
  _RAND_371 = {1{`RANDOM}};
  meta_array_46_3_coh_state = _RAND_371[1:0];
  _RAND_372 = {1{`RANDOM}};
  meta_array_46_4_coh_state = _RAND_372[1:0];
  _RAND_373 = {1{`RANDOM}};
  meta_array_46_5_coh_state = _RAND_373[1:0];
  _RAND_374 = {1{`RANDOM}};
  meta_array_46_6_coh_state = _RAND_374[1:0];
  _RAND_375 = {1{`RANDOM}};
  meta_array_46_7_coh_state = _RAND_375[1:0];
  _RAND_376 = {1{`RANDOM}};
  meta_array_47_0_coh_state = _RAND_376[1:0];
  _RAND_377 = {1{`RANDOM}};
  meta_array_47_1_coh_state = _RAND_377[1:0];
  _RAND_378 = {1{`RANDOM}};
  meta_array_47_2_coh_state = _RAND_378[1:0];
  _RAND_379 = {1{`RANDOM}};
  meta_array_47_3_coh_state = _RAND_379[1:0];
  _RAND_380 = {1{`RANDOM}};
  meta_array_47_4_coh_state = _RAND_380[1:0];
  _RAND_381 = {1{`RANDOM}};
  meta_array_47_5_coh_state = _RAND_381[1:0];
  _RAND_382 = {1{`RANDOM}};
  meta_array_47_6_coh_state = _RAND_382[1:0];
  _RAND_383 = {1{`RANDOM}};
  meta_array_47_7_coh_state = _RAND_383[1:0];
  _RAND_384 = {1{`RANDOM}};
  meta_array_48_0_coh_state = _RAND_384[1:0];
  _RAND_385 = {1{`RANDOM}};
  meta_array_48_1_coh_state = _RAND_385[1:0];
  _RAND_386 = {1{`RANDOM}};
  meta_array_48_2_coh_state = _RAND_386[1:0];
  _RAND_387 = {1{`RANDOM}};
  meta_array_48_3_coh_state = _RAND_387[1:0];
  _RAND_388 = {1{`RANDOM}};
  meta_array_48_4_coh_state = _RAND_388[1:0];
  _RAND_389 = {1{`RANDOM}};
  meta_array_48_5_coh_state = _RAND_389[1:0];
  _RAND_390 = {1{`RANDOM}};
  meta_array_48_6_coh_state = _RAND_390[1:0];
  _RAND_391 = {1{`RANDOM}};
  meta_array_48_7_coh_state = _RAND_391[1:0];
  _RAND_392 = {1{`RANDOM}};
  meta_array_49_0_coh_state = _RAND_392[1:0];
  _RAND_393 = {1{`RANDOM}};
  meta_array_49_1_coh_state = _RAND_393[1:0];
  _RAND_394 = {1{`RANDOM}};
  meta_array_49_2_coh_state = _RAND_394[1:0];
  _RAND_395 = {1{`RANDOM}};
  meta_array_49_3_coh_state = _RAND_395[1:0];
  _RAND_396 = {1{`RANDOM}};
  meta_array_49_4_coh_state = _RAND_396[1:0];
  _RAND_397 = {1{`RANDOM}};
  meta_array_49_5_coh_state = _RAND_397[1:0];
  _RAND_398 = {1{`RANDOM}};
  meta_array_49_6_coh_state = _RAND_398[1:0];
  _RAND_399 = {1{`RANDOM}};
  meta_array_49_7_coh_state = _RAND_399[1:0];
  _RAND_400 = {1{`RANDOM}};
  meta_array_50_0_coh_state = _RAND_400[1:0];
  _RAND_401 = {1{`RANDOM}};
  meta_array_50_1_coh_state = _RAND_401[1:0];
  _RAND_402 = {1{`RANDOM}};
  meta_array_50_2_coh_state = _RAND_402[1:0];
  _RAND_403 = {1{`RANDOM}};
  meta_array_50_3_coh_state = _RAND_403[1:0];
  _RAND_404 = {1{`RANDOM}};
  meta_array_50_4_coh_state = _RAND_404[1:0];
  _RAND_405 = {1{`RANDOM}};
  meta_array_50_5_coh_state = _RAND_405[1:0];
  _RAND_406 = {1{`RANDOM}};
  meta_array_50_6_coh_state = _RAND_406[1:0];
  _RAND_407 = {1{`RANDOM}};
  meta_array_50_7_coh_state = _RAND_407[1:0];
  _RAND_408 = {1{`RANDOM}};
  meta_array_51_0_coh_state = _RAND_408[1:0];
  _RAND_409 = {1{`RANDOM}};
  meta_array_51_1_coh_state = _RAND_409[1:0];
  _RAND_410 = {1{`RANDOM}};
  meta_array_51_2_coh_state = _RAND_410[1:0];
  _RAND_411 = {1{`RANDOM}};
  meta_array_51_3_coh_state = _RAND_411[1:0];
  _RAND_412 = {1{`RANDOM}};
  meta_array_51_4_coh_state = _RAND_412[1:0];
  _RAND_413 = {1{`RANDOM}};
  meta_array_51_5_coh_state = _RAND_413[1:0];
  _RAND_414 = {1{`RANDOM}};
  meta_array_51_6_coh_state = _RAND_414[1:0];
  _RAND_415 = {1{`RANDOM}};
  meta_array_51_7_coh_state = _RAND_415[1:0];
  _RAND_416 = {1{`RANDOM}};
  meta_array_52_0_coh_state = _RAND_416[1:0];
  _RAND_417 = {1{`RANDOM}};
  meta_array_52_1_coh_state = _RAND_417[1:0];
  _RAND_418 = {1{`RANDOM}};
  meta_array_52_2_coh_state = _RAND_418[1:0];
  _RAND_419 = {1{`RANDOM}};
  meta_array_52_3_coh_state = _RAND_419[1:0];
  _RAND_420 = {1{`RANDOM}};
  meta_array_52_4_coh_state = _RAND_420[1:0];
  _RAND_421 = {1{`RANDOM}};
  meta_array_52_5_coh_state = _RAND_421[1:0];
  _RAND_422 = {1{`RANDOM}};
  meta_array_52_6_coh_state = _RAND_422[1:0];
  _RAND_423 = {1{`RANDOM}};
  meta_array_52_7_coh_state = _RAND_423[1:0];
  _RAND_424 = {1{`RANDOM}};
  meta_array_53_0_coh_state = _RAND_424[1:0];
  _RAND_425 = {1{`RANDOM}};
  meta_array_53_1_coh_state = _RAND_425[1:0];
  _RAND_426 = {1{`RANDOM}};
  meta_array_53_2_coh_state = _RAND_426[1:0];
  _RAND_427 = {1{`RANDOM}};
  meta_array_53_3_coh_state = _RAND_427[1:0];
  _RAND_428 = {1{`RANDOM}};
  meta_array_53_4_coh_state = _RAND_428[1:0];
  _RAND_429 = {1{`RANDOM}};
  meta_array_53_5_coh_state = _RAND_429[1:0];
  _RAND_430 = {1{`RANDOM}};
  meta_array_53_6_coh_state = _RAND_430[1:0];
  _RAND_431 = {1{`RANDOM}};
  meta_array_53_7_coh_state = _RAND_431[1:0];
  _RAND_432 = {1{`RANDOM}};
  meta_array_54_0_coh_state = _RAND_432[1:0];
  _RAND_433 = {1{`RANDOM}};
  meta_array_54_1_coh_state = _RAND_433[1:0];
  _RAND_434 = {1{`RANDOM}};
  meta_array_54_2_coh_state = _RAND_434[1:0];
  _RAND_435 = {1{`RANDOM}};
  meta_array_54_3_coh_state = _RAND_435[1:0];
  _RAND_436 = {1{`RANDOM}};
  meta_array_54_4_coh_state = _RAND_436[1:0];
  _RAND_437 = {1{`RANDOM}};
  meta_array_54_5_coh_state = _RAND_437[1:0];
  _RAND_438 = {1{`RANDOM}};
  meta_array_54_6_coh_state = _RAND_438[1:0];
  _RAND_439 = {1{`RANDOM}};
  meta_array_54_7_coh_state = _RAND_439[1:0];
  _RAND_440 = {1{`RANDOM}};
  meta_array_55_0_coh_state = _RAND_440[1:0];
  _RAND_441 = {1{`RANDOM}};
  meta_array_55_1_coh_state = _RAND_441[1:0];
  _RAND_442 = {1{`RANDOM}};
  meta_array_55_2_coh_state = _RAND_442[1:0];
  _RAND_443 = {1{`RANDOM}};
  meta_array_55_3_coh_state = _RAND_443[1:0];
  _RAND_444 = {1{`RANDOM}};
  meta_array_55_4_coh_state = _RAND_444[1:0];
  _RAND_445 = {1{`RANDOM}};
  meta_array_55_5_coh_state = _RAND_445[1:0];
  _RAND_446 = {1{`RANDOM}};
  meta_array_55_6_coh_state = _RAND_446[1:0];
  _RAND_447 = {1{`RANDOM}};
  meta_array_55_7_coh_state = _RAND_447[1:0];
  _RAND_448 = {1{`RANDOM}};
  meta_array_56_0_coh_state = _RAND_448[1:0];
  _RAND_449 = {1{`RANDOM}};
  meta_array_56_1_coh_state = _RAND_449[1:0];
  _RAND_450 = {1{`RANDOM}};
  meta_array_56_2_coh_state = _RAND_450[1:0];
  _RAND_451 = {1{`RANDOM}};
  meta_array_56_3_coh_state = _RAND_451[1:0];
  _RAND_452 = {1{`RANDOM}};
  meta_array_56_4_coh_state = _RAND_452[1:0];
  _RAND_453 = {1{`RANDOM}};
  meta_array_56_5_coh_state = _RAND_453[1:0];
  _RAND_454 = {1{`RANDOM}};
  meta_array_56_6_coh_state = _RAND_454[1:0];
  _RAND_455 = {1{`RANDOM}};
  meta_array_56_7_coh_state = _RAND_455[1:0];
  _RAND_456 = {1{`RANDOM}};
  meta_array_57_0_coh_state = _RAND_456[1:0];
  _RAND_457 = {1{`RANDOM}};
  meta_array_57_1_coh_state = _RAND_457[1:0];
  _RAND_458 = {1{`RANDOM}};
  meta_array_57_2_coh_state = _RAND_458[1:0];
  _RAND_459 = {1{`RANDOM}};
  meta_array_57_3_coh_state = _RAND_459[1:0];
  _RAND_460 = {1{`RANDOM}};
  meta_array_57_4_coh_state = _RAND_460[1:0];
  _RAND_461 = {1{`RANDOM}};
  meta_array_57_5_coh_state = _RAND_461[1:0];
  _RAND_462 = {1{`RANDOM}};
  meta_array_57_6_coh_state = _RAND_462[1:0];
  _RAND_463 = {1{`RANDOM}};
  meta_array_57_7_coh_state = _RAND_463[1:0];
  _RAND_464 = {1{`RANDOM}};
  meta_array_58_0_coh_state = _RAND_464[1:0];
  _RAND_465 = {1{`RANDOM}};
  meta_array_58_1_coh_state = _RAND_465[1:0];
  _RAND_466 = {1{`RANDOM}};
  meta_array_58_2_coh_state = _RAND_466[1:0];
  _RAND_467 = {1{`RANDOM}};
  meta_array_58_3_coh_state = _RAND_467[1:0];
  _RAND_468 = {1{`RANDOM}};
  meta_array_58_4_coh_state = _RAND_468[1:0];
  _RAND_469 = {1{`RANDOM}};
  meta_array_58_5_coh_state = _RAND_469[1:0];
  _RAND_470 = {1{`RANDOM}};
  meta_array_58_6_coh_state = _RAND_470[1:0];
  _RAND_471 = {1{`RANDOM}};
  meta_array_58_7_coh_state = _RAND_471[1:0];
  _RAND_472 = {1{`RANDOM}};
  meta_array_59_0_coh_state = _RAND_472[1:0];
  _RAND_473 = {1{`RANDOM}};
  meta_array_59_1_coh_state = _RAND_473[1:0];
  _RAND_474 = {1{`RANDOM}};
  meta_array_59_2_coh_state = _RAND_474[1:0];
  _RAND_475 = {1{`RANDOM}};
  meta_array_59_3_coh_state = _RAND_475[1:0];
  _RAND_476 = {1{`RANDOM}};
  meta_array_59_4_coh_state = _RAND_476[1:0];
  _RAND_477 = {1{`RANDOM}};
  meta_array_59_5_coh_state = _RAND_477[1:0];
  _RAND_478 = {1{`RANDOM}};
  meta_array_59_6_coh_state = _RAND_478[1:0];
  _RAND_479 = {1{`RANDOM}};
  meta_array_59_7_coh_state = _RAND_479[1:0];
  _RAND_480 = {1{`RANDOM}};
  meta_array_60_0_coh_state = _RAND_480[1:0];
  _RAND_481 = {1{`RANDOM}};
  meta_array_60_1_coh_state = _RAND_481[1:0];
  _RAND_482 = {1{`RANDOM}};
  meta_array_60_2_coh_state = _RAND_482[1:0];
  _RAND_483 = {1{`RANDOM}};
  meta_array_60_3_coh_state = _RAND_483[1:0];
  _RAND_484 = {1{`RANDOM}};
  meta_array_60_4_coh_state = _RAND_484[1:0];
  _RAND_485 = {1{`RANDOM}};
  meta_array_60_5_coh_state = _RAND_485[1:0];
  _RAND_486 = {1{`RANDOM}};
  meta_array_60_6_coh_state = _RAND_486[1:0];
  _RAND_487 = {1{`RANDOM}};
  meta_array_60_7_coh_state = _RAND_487[1:0];
  _RAND_488 = {1{`RANDOM}};
  meta_array_61_0_coh_state = _RAND_488[1:0];
  _RAND_489 = {1{`RANDOM}};
  meta_array_61_1_coh_state = _RAND_489[1:0];
  _RAND_490 = {1{`RANDOM}};
  meta_array_61_2_coh_state = _RAND_490[1:0];
  _RAND_491 = {1{`RANDOM}};
  meta_array_61_3_coh_state = _RAND_491[1:0];
  _RAND_492 = {1{`RANDOM}};
  meta_array_61_4_coh_state = _RAND_492[1:0];
  _RAND_493 = {1{`RANDOM}};
  meta_array_61_5_coh_state = _RAND_493[1:0];
  _RAND_494 = {1{`RANDOM}};
  meta_array_61_6_coh_state = _RAND_494[1:0];
  _RAND_495 = {1{`RANDOM}};
  meta_array_61_7_coh_state = _RAND_495[1:0];
  _RAND_496 = {1{`RANDOM}};
  meta_array_62_0_coh_state = _RAND_496[1:0];
  _RAND_497 = {1{`RANDOM}};
  meta_array_62_1_coh_state = _RAND_497[1:0];
  _RAND_498 = {1{`RANDOM}};
  meta_array_62_2_coh_state = _RAND_498[1:0];
  _RAND_499 = {1{`RANDOM}};
  meta_array_62_3_coh_state = _RAND_499[1:0];
  _RAND_500 = {1{`RANDOM}};
  meta_array_62_4_coh_state = _RAND_500[1:0];
  _RAND_501 = {1{`RANDOM}};
  meta_array_62_5_coh_state = _RAND_501[1:0];
  _RAND_502 = {1{`RANDOM}};
  meta_array_62_6_coh_state = _RAND_502[1:0];
  _RAND_503 = {1{`RANDOM}};
  meta_array_62_7_coh_state = _RAND_503[1:0];
  _RAND_504 = {1{`RANDOM}};
  meta_array_63_0_coh_state = _RAND_504[1:0];
  _RAND_505 = {1{`RANDOM}};
  meta_array_63_1_coh_state = _RAND_505[1:0];
  _RAND_506 = {1{`RANDOM}};
  meta_array_63_2_coh_state = _RAND_506[1:0];
  _RAND_507 = {1{`RANDOM}};
  meta_array_63_3_coh_state = _RAND_507[1:0];
  _RAND_508 = {1{`RANDOM}};
  meta_array_63_4_coh_state = _RAND_508[1:0];
  _RAND_509 = {1{`RANDOM}};
  meta_array_63_5_coh_state = _RAND_509[1:0];
  _RAND_510 = {1{`RANDOM}};
  meta_array_63_6_coh_state = _RAND_510[1:0];
  _RAND_511 = {1{`RANDOM}};
  meta_array_63_7_coh_state = _RAND_511[1:0];
  _RAND_512 = {1{`RANDOM}};
  s1_way_waddr_0_0_r = _RAND_512[5:0];
  _RAND_513 = {1{`RANDOM}};
  s1_way_wen_0_0_REG = _RAND_513[0:0];
  _RAND_514 = {1{`RANDOM}};
  s1_way_wdata_0_0_rcoh_state = _RAND_514[1:0];
  _RAND_515 = {1{`RANDOM}};
  s1_way_waddr_0_1_r = _RAND_515[5:0];
  _RAND_516 = {1{`RANDOM}};
  s1_way_wen_0_1_REG = _RAND_516[0:0];
  _RAND_517 = {1{`RANDOM}};
  s1_way_wdata_0_1_rcoh_state = _RAND_517[1:0];
  _RAND_518 = {1{`RANDOM}};
  io_resp_0_0_r = _RAND_518[0:0];
  _RAND_519 = {1{`RANDOM}};
  io_resp_0_0_r1_coh_state = _RAND_519[1:0];
  _RAND_520 = {1{`RANDOM}};
  io_resp_0_0_r2_coh_state = _RAND_520[1:0];
  _RAND_521 = {1{`RANDOM}};
  s1_way_waddr_1_0_r = _RAND_521[5:0];
  _RAND_522 = {1{`RANDOM}};
  s1_way_wen_1_0_REG = _RAND_522[0:0];
  _RAND_523 = {1{`RANDOM}};
  s1_way_wdata_1_0_rcoh_state = _RAND_523[1:0];
  _RAND_524 = {1{`RANDOM}};
  s1_way_waddr_1_1_r = _RAND_524[5:0];
  _RAND_525 = {1{`RANDOM}};
  s1_way_wen_1_1_REG = _RAND_525[0:0];
  _RAND_526 = {1{`RANDOM}};
  s1_way_wdata_1_1_rcoh_state = _RAND_526[1:0];
  _RAND_527 = {1{`RANDOM}};
  io_resp_0_1_r = _RAND_527[0:0];
  _RAND_528 = {1{`RANDOM}};
  io_resp_0_1_r1_coh_state = _RAND_528[1:0];
  _RAND_529 = {1{`RANDOM}};
  io_resp_0_1_r2_coh_state = _RAND_529[1:0];
  _RAND_530 = {1{`RANDOM}};
  s1_way_waddr_2_0_r = _RAND_530[5:0];
  _RAND_531 = {1{`RANDOM}};
  s1_way_wen_2_0_REG = _RAND_531[0:0];
  _RAND_532 = {1{`RANDOM}};
  s1_way_wdata_2_0_rcoh_state = _RAND_532[1:0];
  _RAND_533 = {1{`RANDOM}};
  s1_way_waddr_2_1_r = _RAND_533[5:0];
  _RAND_534 = {1{`RANDOM}};
  s1_way_wen_2_1_REG = _RAND_534[0:0];
  _RAND_535 = {1{`RANDOM}};
  s1_way_wdata_2_1_rcoh_state = _RAND_535[1:0];
  _RAND_536 = {1{`RANDOM}};
  io_resp_0_2_r = _RAND_536[0:0];
  _RAND_537 = {1{`RANDOM}};
  io_resp_0_2_r1_coh_state = _RAND_537[1:0];
  _RAND_538 = {1{`RANDOM}};
  io_resp_0_2_r2_coh_state = _RAND_538[1:0];
  _RAND_539 = {1{`RANDOM}};
  s1_way_waddr_3_0_r = _RAND_539[5:0];
  _RAND_540 = {1{`RANDOM}};
  s1_way_wen_3_0_REG = _RAND_540[0:0];
  _RAND_541 = {1{`RANDOM}};
  s1_way_wdata_3_0_rcoh_state = _RAND_541[1:0];
  _RAND_542 = {1{`RANDOM}};
  s1_way_waddr_3_1_r = _RAND_542[5:0];
  _RAND_543 = {1{`RANDOM}};
  s1_way_wen_3_1_REG = _RAND_543[0:0];
  _RAND_544 = {1{`RANDOM}};
  s1_way_wdata_3_1_rcoh_state = _RAND_544[1:0];
  _RAND_545 = {1{`RANDOM}};
  io_resp_0_3_r = _RAND_545[0:0];
  _RAND_546 = {1{`RANDOM}};
  io_resp_0_3_r1_coh_state = _RAND_546[1:0];
  _RAND_547 = {1{`RANDOM}};
  io_resp_0_3_r2_coh_state = _RAND_547[1:0];
  _RAND_548 = {1{`RANDOM}};
  s1_way_waddr_4_0_r = _RAND_548[5:0];
  _RAND_549 = {1{`RANDOM}};
  s1_way_wen_4_0_REG = _RAND_549[0:0];
  _RAND_550 = {1{`RANDOM}};
  s1_way_wdata_4_0_rcoh_state = _RAND_550[1:0];
  _RAND_551 = {1{`RANDOM}};
  s1_way_waddr_4_1_r = _RAND_551[5:0];
  _RAND_552 = {1{`RANDOM}};
  s1_way_wen_4_1_REG = _RAND_552[0:0];
  _RAND_553 = {1{`RANDOM}};
  s1_way_wdata_4_1_rcoh_state = _RAND_553[1:0];
  _RAND_554 = {1{`RANDOM}};
  io_resp_0_4_r = _RAND_554[0:0];
  _RAND_555 = {1{`RANDOM}};
  io_resp_0_4_r1_coh_state = _RAND_555[1:0];
  _RAND_556 = {1{`RANDOM}};
  io_resp_0_4_r2_coh_state = _RAND_556[1:0];
  _RAND_557 = {1{`RANDOM}};
  s1_way_waddr_5_0_r = _RAND_557[5:0];
  _RAND_558 = {1{`RANDOM}};
  s1_way_wen_5_0_REG = _RAND_558[0:0];
  _RAND_559 = {1{`RANDOM}};
  s1_way_wdata_5_0_rcoh_state = _RAND_559[1:0];
  _RAND_560 = {1{`RANDOM}};
  s1_way_waddr_5_1_r = _RAND_560[5:0];
  _RAND_561 = {1{`RANDOM}};
  s1_way_wen_5_1_REG = _RAND_561[0:0];
  _RAND_562 = {1{`RANDOM}};
  s1_way_wdata_5_1_rcoh_state = _RAND_562[1:0];
  _RAND_563 = {1{`RANDOM}};
  io_resp_0_5_r = _RAND_563[0:0];
  _RAND_564 = {1{`RANDOM}};
  io_resp_0_5_r1_coh_state = _RAND_564[1:0];
  _RAND_565 = {1{`RANDOM}};
  io_resp_0_5_r2_coh_state = _RAND_565[1:0];
  _RAND_566 = {1{`RANDOM}};
  s1_way_waddr_6_0_r = _RAND_566[5:0];
  _RAND_567 = {1{`RANDOM}};
  s1_way_wen_6_0_REG = _RAND_567[0:0];
  _RAND_568 = {1{`RANDOM}};
  s1_way_wdata_6_0_rcoh_state = _RAND_568[1:0];
  _RAND_569 = {1{`RANDOM}};
  s1_way_waddr_6_1_r = _RAND_569[5:0];
  _RAND_570 = {1{`RANDOM}};
  s1_way_wen_6_1_REG = _RAND_570[0:0];
  _RAND_571 = {1{`RANDOM}};
  s1_way_wdata_6_1_rcoh_state = _RAND_571[1:0];
  _RAND_572 = {1{`RANDOM}};
  io_resp_0_6_r = _RAND_572[0:0];
  _RAND_573 = {1{`RANDOM}};
  io_resp_0_6_r1_coh_state = _RAND_573[1:0];
  _RAND_574 = {1{`RANDOM}};
  io_resp_0_6_r2_coh_state = _RAND_574[1:0];
  _RAND_575 = {1{`RANDOM}};
  s1_way_waddr_7_0_r = _RAND_575[5:0];
  _RAND_576 = {1{`RANDOM}};
  s1_way_wen_7_0_REG = _RAND_576[0:0];
  _RAND_577 = {1{`RANDOM}};
  s1_way_wdata_7_0_rcoh_state = _RAND_577[1:0];
  _RAND_578 = {1{`RANDOM}};
  s1_way_waddr_7_1_r = _RAND_578[5:0];
  _RAND_579 = {1{`RANDOM}};
  s1_way_wen_7_1_REG = _RAND_579[0:0];
  _RAND_580 = {1{`RANDOM}};
  s1_way_wdata_7_1_rcoh_state = _RAND_580[1:0];
  _RAND_581 = {1{`RANDOM}};
  io_resp_0_7_r = _RAND_581[0:0];
  _RAND_582 = {1{`RANDOM}};
  io_resp_0_7_r1_coh_state = _RAND_582[1:0];
  _RAND_583 = {1{`RANDOM}};
  io_resp_0_7_r2_coh_state = _RAND_583[1:0];
  _RAND_584 = {1{`RANDOM}};
  io_resp_1_0_r = _RAND_584[0:0];
  _RAND_585 = {1{`RANDOM}};
  io_resp_1_0_r1_coh_state = _RAND_585[1:0];
  _RAND_586 = {1{`RANDOM}};
  io_resp_1_0_r2_coh_state = _RAND_586[1:0];
  _RAND_587 = {1{`RANDOM}};
  io_resp_1_1_r = _RAND_587[0:0];
  _RAND_588 = {1{`RANDOM}};
  io_resp_1_1_r1_coh_state = _RAND_588[1:0];
  _RAND_589 = {1{`RANDOM}};
  io_resp_1_1_r2_coh_state = _RAND_589[1:0];
  _RAND_590 = {1{`RANDOM}};
  io_resp_1_2_r = _RAND_590[0:0];
  _RAND_591 = {1{`RANDOM}};
  io_resp_1_2_r1_coh_state = _RAND_591[1:0];
  _RAND_592 = {1{`RANDOM}};
  io_resp_1_2_r2_coh_state = _RAND_592[1:0];
  _RAND_593 = {1{`RANDOM}};
  io_resp_1_3_r = _RAND_593[0:0];
  _RAND_594 = {1{`RANDOM}};
  io_resp_1_3_r1_coh_state = _RAND_594[1:0];
  _RAND_595 = {1{`RANDOM}};
  io_resp_1_3_r2_coh_state = _RAND_595[1:0];
  _RAND_596 = {1{`RANDOM}};
  io_resp_1_4_r = _RAND_596[0:0];
  _RAND_597 = {1{`RANDOM}};
  io_resp_1_4_r1_coh_state = _RAND_597[1:0];
  _RAND_598 = {1{`RANDOM}};
  io_resp_1_4_r2_coh_state = _RAND_598[1:0];
  _RAND_599 = {1{`RANDOM}};
  io_resp_1_5_r = _RAND_599[0:0];
  _RAND_600 = {1{`RANDOM}};
  io_resp_1_5_r1_coh_state = _RAND_600[1:0];
  _RAND_601 = {1{`RANDOM}};
  io_resp_1_5_r2_coh_state = _RAND_601[1:0];
  _RAND_602 = {1{`RANDOM}};
  io_resp_1_6_r = _RAND_602[0:0];
  _RAND_603 = {1{`RANDOM}};
  io_resp_1_6_r1_coh_state = _RAND_603[1:0];
  _RAND_604 = {1{`RANDOM}};
  io_resp_1_6_r2_coh_state = _RAND_604[1:0];
  _RAND_605 = {1{`RANDOM}};
  io_resp_1_7_r = _RAND_605[0:0];
  _RAND_606 = {1{`RANDOM}};
  io_resp_1_7_r1_coh_state = _RAND_606[1:0];
  _RAND_607 = {1{`RANDOM}};
  io_resp_1_7_r2_coh_state = _RAND_607[1:0];
  _RAND_608 = {1{`RANDOM}};
  io_resp_2_0_r = _RAND_608[0:0];
  _RAND_609 = {1{`RANDOM}};
  io_resp_2_0_r1_coh_state = _RAND_609[1:0];
  _RAND_610 = {1{`RANDOM}};
  io_resp_2_0_r2_coh_state = _RAND_610[1:0];
  _RAND_611 = {1{`RANDOM}};
  io_resp_2_1_r = _RAND_611[0:0];
  _RAND_612 = {1{`RANDOM}};
  io_resp_2_1_r1_coh_state = _RAND_612[1:0];
  _RAND_613 = {1{`RANDOM}};
  io_resp_2_1_r2_coh_state = _RAND_613[1:0];
  _RAND_614 = {1{`RANDOM}};
  io_resp_2_2_r = _RAND_614[0:0];
  _RAND_615 = {1{`RANDOM}};
  io_resp_2_2_r1_coh_state = _RAND_615[1:0];
  _RAND_616 = {1{`RANDOM}};
  io_resp_2_2_r2_coh_state = _RAND_616[1:0];
  _RAND_617 = {1{`RANDOM}};
  io_resp_2_3_r = _RAND_617[0:0];
  _RAND_618 = {1{`RANDOM}};
  io_resp_2_3_r1_coh_state = _RAND_618[1:0];
  _RAND_619 = {1{`RANDOM}};
  io_resp_2_3_r2_coh_state = _RAND_619[1:0];
  _RAND_620 = {1{`RANDOM}};
  io_resp_2_4_r = _RAND_620[0:0];
  _RAND_621 = {1{`RANDOM}};
  io_resp_2_4_r1_coh_state = _RAND_621[1:0];
  _RAND_622 = {1{`RANDOM}};
  io_resp_2_4_r2_coh_state = _RAND_622[1:0];
  _RAND_623 = {1{`RANDOM}};
  io_resp_2_5_r = _RAND_623[0:0];
  _RAND_624 = {1{`RANDOM}};
  io_resp_2_5_r1_coh_state = _RAND_624[1:0];
  _RAND_625 = {1{`RANDOM}};
  io_resp_2_5_r2_coh_state = _RAND_625[1:0];
  _RAND_626 = {1{`RANDOM}};
  io_resp_2_6_r = _RAND_626[0:0];
  _RAND_627 = {1{`RANDOM}};
  io_resp_2_6_r1_coh_state = _RAND_627[1:0];
  _RAND_628 = {1{`RANDOM}};
  io_resp_2_6_r2_coh_state = _RAND_628[1:0];
  _RAND_629 = {1{`RANDOM}};
  io_resp_2_7_r = _RAND_629[0:0];
  _RAND_630 = {1{`RANDOM}};
  io_resp_2_7_r1_coh_state = _RAND_630[1:0];
  _RAND_631 = {1{`RANDOM}};
  io_resp_2_7_r2_coh_state = _RAND_631[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    meta_array_0_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_0_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_1_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_2_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_3_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_4_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_5_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_6_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_7_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_8_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_9_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_10_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_11_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_12_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_13_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_14_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_15_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_16_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_17_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_18_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_19_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_20_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_21_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_22_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_23_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_24_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_25_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_26_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_27_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_28_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_29_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_30_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_31_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_32_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_33_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_34_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_35_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_36_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_37_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_38_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_39_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_40_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_41_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_42_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_43_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_44_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_45_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_46_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_47_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_48_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_49_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_50_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_51_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_52_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_53_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_54_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_55_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_56_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_57_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_58_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_59_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_60_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_61_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_62_7_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_0_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_1_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_2_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_3_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_4_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_5_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_6_coh_state = 2'h0;
  end
  if (reset) begin
    meta_array_63_7_coh_state = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

