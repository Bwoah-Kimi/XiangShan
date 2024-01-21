module CSR(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  input         io_redirectIn_valid,
  input  [7:0]  csrio_hartId,
  input  [5:0]  csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  csrio_perf_perfEventsLsu_7_value,
  input  [2:0]  csrio_perf_retiredInstr,
  output        csrio_isPerfCnt,
  input         csrio_fpu_fflags_valid,
  input  [4:0]  csrio_fpu_fflags_bits,
  input         csrio_fpu_dirty_fs,
  output [2:0]  csrio_fpu_frm,
  input         csrio_exception_valid,
  input  [38:0] csrio_exception_bits_uop_cf_pc,
  input         csrio_exception_bits_uop_cf_exceptionVec_0,
  input         csrio_exception_bits_uop_cf_exceptionVec_1,
  input         csrio_exception_bits_uop_cf_exceptionVec_2,
  input         csrio_exception_bits_uop_cf_exceptionVec_3,
  input         csrio_exception_bits_uop_cf_exceptionVec_4,
  input         csrio_exception_bits_uop_cf_exceptionVec_5,
  input         csrio_exception_bits_uop_cf_exceptionVec_6,
  input         csrio_exception_bits_uop_cf_exceptionVec_7,
  input         csrio_exception_bits_uop_cf_exceptionVec_8,
  input         csrio_exception_bits_uop_cf_exceptionVec_9,
  input         csrio_exception_bits_uop_cf_exceptionVec_11,
  input         csrio_exception_bits_uop_cf_exceptionVec_12,
  input         csrio_exception_bits_uop_cf_exceptionVec_13,
  input         csrio_exception_bits_uop_cf_exceptionVec_15,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         csrio_exception_bits_uop_ctrl_singleStep,
  input         csrio_exception_bits_isInterrupt,
  output        csrio_isXRet,
  output [38:0] csrio_trapTarget,
  output        csrio_interrupt,
  output        csrio_wfi_event,
  input  [38:0] csrio_memExceptionVAddr,
  input         csrio_externalInterrupt_mtip,
  input         csrio_externalInterrupt_msip,
  input         csrio_externalInterrupt_meip,
  input         csrio_externalInterrupt_seip,
  input         csrio_externalInterrupt_debug,
  output [3:0]  csrio_tlb_satp_mode,
  output [15:0] csrio_tlb_satp_asid,
  output [43:0] csrio_tlb_satp_ppn,
  output        csrio_tlb_satp_changed,
  output        csrio_tlb_priv_mxr,
  output        csrio_tlb_priv_sum,
  output [1:0]  csrio_tlb_priv_imode,
  output [1:0]  csrio_tlb_priv_dmode,
  output        csrio_disableSfence,
  output        csrio_customCtrl_l2_pf_store_only,
  output [4:0]  csrio_customCtrl_lvpred_timeout,
  output        csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        csrio_customCtrl_bp_ctrl_btb_enable,
  output        csrio_customCtrl_bp_ctrl_tage_enable,
  output        csrio_customCtrl_bp_ctrl_sc_enable,
  output        csrio_customCtrl_bp_ctrl_ras_enable,
  output        csrio_customCtrl_ldld_vio_check_enable,
  output        csrio_customCtrl_cache_error_enable,
  output        csrio_customCtrl_uncache_write_outstanding_enable,
  output        csrio_customCtrl_fusion_enable,
  output        csrio_customCtrl_wfi_enable,
  output        csrio_customCtrl_svinval_enable,
  output        csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] csrio_customCtrl_distribute_csr_waddr,
  output [63:0] csrio_customCtrl_distribute_csr_wdata,
  output        csrio_customCtrl_singlestep,
  output        csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        csrio_customCtrl_trigger_enable_0,
  output        csrio_customCtrl_trigger_enable_1,
  output        csrio_customCtrl_trigger_enable_2,
  output        csrio_customCtrl_trigger_enable_3,
  output        csrio_customCtrl_trigger_enable_4,
  output        csrio_customCtrl_trigger_enable_5,
  output        csrio_customCtrl_trigger_enable_6,
  output        csrio_customCtrl_trigger_enable_7,
  output        csrio_customCtrl_trigger_enable_8,
  output        csrio_customCtrl_trigger_enable_9,
  input         csrio_distributedUpdate_0_wvalid,
  input  [11:0] csrio_distributedUpdate_0_waddr,
  input  [63:0] csrio_distributedUpdate_0_wdata,
  input         csrio_distributedUpdate_1_wvalid,
  input  [11:0] csrio_distributedUpdate_1_waddr,
  input  [63:0] csrio_distributedUpdate_1_wdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [63:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [63:0] _RAND_93;
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
  reg [63:0] _RAND_124;
  reg [63:0] _RAND_125;
  reg [63:0] _RAND_126;
  reg [63:0] _RAND_127;
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
  reg [63:0] _RAND_130;
  reg [63:0] _RAND_131;
  reg [63:0] _RAND_132;
  reg [63:0] _RAND_133;
  reg [63:0] _RAND_134;
  reg [63:0] _RAND_135;
  reg [63:0] _RAND_136;
  reg [63:0] _RAND_137;
  reg [63:0] _RAND_138;
  reg [63:0] _RAND_139;
  reg [63:0] _RAND_140;
  reg [63:0] _RAND_141;
  reg [63:0] _RAND_142;
  reg [63:0] _RAND_143;
  reg [63:0] _RAND_144;
  reg [63:0] _RAND_145;
  reg [63:0] _RAND_146;
  reg [63:0] _RAND_147;
  reg [63:0] _RAND_148;
  reg [63:0] _RAND_149;
  reg [63:0] _RAND_150;
  reg [63:0] _RAND_151;
  reg [63:0] _RAND_152;
  reg [63:0] _RAND_153;
  reg [63:0] _RAND_154;
  reg [63:0] _RAND_155;
  reg [63:0] _RAND_156;
  reg [63:0] _RAND_157;
  reg [63:0] _RAND_158;
  reg [63:0] _RAND_159;
  reg [63:0] _RAND_160;
  reg [63:0] _RAND_161;
  reg [63:0] _RAND_162;
  reg [63:0] _RAND_163;
  reg [63:0] _RAND_164;
  reg [63:0] _RAND_165;
  reg [63:0] _RAND_166;
  reg [63:0] _RAND_167;
  reg [63:0] _RAND_168;
  reg [63:0] _RAND_169;
  reg [63:0] _RAND_170;
  reg [63:0] _RAND_171;
  reg [63:0] _RAND_172;
  reg [63:0] _RAND_173;
  reg [63:0] _RAND_174;
  reg [63:0] _RAND_175;
  reg [63:0] _RAND_176;
  reg [63:0] _RAND_177;
  reg [63:0] _RAND_178;
  reg [63:0] _RAND_179;
  reg [63:0] _RAND_180;
  reg [63:0] _RAND_181;
  reg [63:0] _RAND_182;
  reg [63:0] _RAND_183;
  reg [63:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [63:0] _RAND_186;
  reg [63:0] _RAND_187;
  reg [63:0] _RAND_188;
  reg [63:0] _RAND_189;
  reg [63:0] _RAND_190;
  reg [63:0] _RAND_191;
  reg [63:0] _RAND_192;
  reg [63:0] _RAND_193;
  reg [63:0] _RAND_194;
  reg [63:0] _RAND_195;
  reg [63:0] _RAND_196;
  reg [63:0] _RAND_197;
  reg [63:0] _RAND_198;
  reg [63:0] _RAND_199;
  reg [63:0] _RAND_200;
  reg [63:0] _RAND_201;
  reg [63:0] _RAND_202;
  reg [63:0] _RAND_203;
  reg [63:0] _RAND_204;
  reg [63:0] _RAND_205;
  reg [63:0] _RAND_206;
  reg [63:0] _RAND_207;
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
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [63:0] _RAND_374;
  reg [63:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [63:0] _RAND_378;
  reg [63:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [63:0] _RAND_382;
  reg [63:0] _RAND_383;
  reg [63:0] _RAND_384;
  reg [63:0] _RAND_385;
  reg [63:0] _RAND_386;
  reg [63:0] _RAND_387;
  reg [63:0] _RAND_388;
  reg [63:0] _RAND_389;
  reg [63:0] _RAND_390;
`endif // RANDOMIZE_REG_INIT
  wire  delay_clock; // @[Hold.scala 97:23]
  wire  delay_io_in; // @[Hold.scala 97:23]
  wire  delay_io_out; // @[Hold.scala 97:23]
  wire  delayedUpdate0_delay_clock; // @[Hold.scala 97:23]
  wire  delayedUpdate0_delay_io_in_wvalid; // @[Hold.scala 97:23]
  wire [11:0] delayedUpdate0_delay_io_in_waddr; // @[Hold.scala 97:23]
  wire [63:0] delayedUpdate0_delay_io_in_wdata; // @[Hold.scala 97:23]
  wire  delayedUpdate0_delay_io_out_wvalid; // @[Hold.scala 97:23]
  wire [11:0] delayedUpdate0_delay_io_out_waddr; // @[Hold.scala 97:23]
  wire [63:0] delayedUpdate0_delay_io_out_wdata; // @[Hold.scala 97:23]
  wire  delayedUpdate1_delay_clock; // @[Hold.scala 97:23]
  wire  delayedUpdate1_delay_io_in_wvalid; // @[Hold.scala 97:23]
  wire [11:0] delayedUpdate1_delay_io_in_waddr; // @[Hold.scala 97:23]
  wire [63:0] delayedUpdate1_delay_io_in_wdata; // @[Hold.scala 97:23]
  wire  delayedUpdate1_delay_io_out_wvalid; // @[Hold.scala 97:23]
  wire [11:0] delayedUpdate1_delay_io_out_waddr; // @[Hold.scala 97:23]
  wire [63:0] delayedUpdate1_delay_io_out_wdata; // @[Hold.scala 97:23]
  wire  difftest_io_clock; // @[CSR.scala 1215:26]
  wire [7:0] difftest_io_coreid; // @[CSR.scala 1215:26]
  wire [31:0] difftest_io_intrNO; // @[CSR.scala 1215:26]
  wire [31:0] difftest_io_cause; // @[CSR.scala 1215:26]
  wire [63:0] difftest_io_exceptionPC; // @[CSR.scala 1215:26]
  wire [31:0] difftest_io_exceptionInst; // @[CSR.scala 1215:26]
  wire  difftest_1_io_clock; // @[CSR.scala 1228:26]
  wire [7:0] difftest_1_io_coreid; // @[CSR.scala 1228:26]
  wire [1:0] difftest_1_io_priviledgeMode; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mstatus; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_sstatus; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mepc; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_sepc; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mtval; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_stval; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mtvec; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_stvec; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mcause; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_scause; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_satp; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mip; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mie; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mscratch; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_sscratch; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_mideleg; // @[CSR.scala 1228:26]
  wire [63:0] difftest_1_io_medeleg; // @[CSR.scala 1228:26]
  wire  difftest_2_io_clock; // @[CSR.scala 1252:26]
  wire [7:0] difftest_2_io_coreid; // @[CSR.scala 1252:26]
  wire  difftest_2_io_debugMode; // @[CSR.scala 1252:26]
  wire [63:0] difftest_2_io_dcsr; // @[CSR.scala 1252:26]
  wire [63:0] difftest_2_io_dpc; // @[CSR.scala 1252:26]
  wire [63:0] difftest_2_io_dscratch0; // @[CSR.scala 1252:26]
  wire [63:0] difftest_2_io_dscratch1; // @[CSR.scala 1252:26]
  reg [31:0] dcsr; // @[CSR.scala 221:21]
  reg [63:0] dpc; // @[CSR.scala 222:16]
  reg [63:0] dscratch; // @[CSR.scala 223:21]
  reg [63:0] dscratch1; // @[CSR.scala 224:22]
  reg  debugMode; // @[CSR.scala 225:26]
  reg  debugIntrEnable; // @[CSR.scala 226:32]
  wire [1:0] dcsrData_prv = dcsr[1:0]; // @[CSR.scala 252:28]
  wire  dcsrData_step = dcsr[2]; // @[CSR.scala 252:28]
  wire  dcsrData_nmip = dcsr[3]; // @[CSR.scala 252:28]
  wire  dcsrData_mprven = dcsr[4]; // @[CSR.scala 252:28]
  wire  dcsrData_v = dcsr[5]; // @[CSR.scala 252:28]
  wire [2:0] dcsrData_cause = dcsr[8:6]; // @[CSR.scala 252:28]
  wire  dcsrData_stoptime = dcsr[9]; // @[CSR.scala 252:28]
  wire  dcsrData_stopcycle = dcsr[10]; // @[CSR.scala 252:28]
  wire  dcsrData_stepie = dcsr[11]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreaku = dcsr[12]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreaks = dcsr[13]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreakh = dcsr[14]; // @[CSR.scala 252:28]
  wire  dcsrData_ebreakm = dcsr[15]; // @[CSR.scala 252:28]
  wire [11:0] dcsrData_zero3 = dcsr[27:16]; // @[CSR.scala 252:28]
  wire [1:0] dcsrData_zero4 = dcsr[29:28]; // @[CSR.scala 252:28]
  wire [1:0] dcsrData_xdebugver = dcsr[31:30]; // @[CSR.scala 252:28]
  wire  _csrio_customCtrl_singlestep_T = ~debugMode; // @[CSR.scala 260:51]
  reg [63:0] tdata1Phy_0; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_1; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_2; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_3; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_4; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_5; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_6; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_7; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_8; // @[CSR.scala 273:26]
  reg [63:0] tdata1Phy_9; // @[CSR.scala 273:26]
  reg [63:0] tdata2Phy_0; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_1; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_2; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_3; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_4; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_5; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_6; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_7; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_8; // @[CSR.scala 274:22]
  reg [63:0] tdata2Phy_9; // @[CSR.scala 274:22]
  reg [3:0] tselectPhy; // @[CSR.scala 275:27]
  reg [63:0] tControlPhy; // @[CSR.scala 277:28]
  reg  triggerAction; // @[CSR.scala 278:30]
  wire [1:0] _csrio_customCtrl_frontend_trigger_t_bits_addr_T_5 = 4'h6 == tselectPhy ? 2'h2 : {{1'd0}, 4'h1 ==
    tselectPhy}; // @[Mux.scala 81:58]
  wire [1:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_5 = 4'h4 == tselectPhy ? 2'h2 : {{1'd0}, 4'h3 == tselectPhy}; // @[Mux.scala 81:58]
  wire [1:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_7 = 4'h5 == tselectPhy ? 2'h3 :
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_5; // @[Mux.scala 81:58]
  wire [2:0] _csrio_customCtrl_mem_trigger_t_bits_addr_T_9 = 4'h7 == tselectPhy ? 3'h4 : {{1'd0},
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_7}; // @[Mux.scala 81:58]
  wire [63:0] _GEN_1 = 4'h1 == tselectPhy ? tdata1Phy_1 : tdata1Phy_0; // @[]
  wire [63:0] _GEN_2 = 4'h2 == tselectPhy ? tdata1Phy_2 : _GEN_1; // @[]
  wire [63:0] _GEN_3 = 4'h3 == tselectPhy ? tdata1Phy_3 : _GEN_2; // @[]
  wire [63:0] _GEN_4 = 4'h4 == tselectPhy ? tdata1Phy_4 : _GEN_3; // @[]
  wire [63:0] _GEN_5 = 4'h5 == tselectPhy ? tdata1Phy_5 : _GEN_4; // @[]
  wire [63:0] _GEN_6 = 4'h6 == tselectPhy ? tdata1Phy_6 : _GEN_5; // @[]
  wire [63:0] _GEN_7 = 4'h7 == tselectPhy ? tdata1Phy_7 : _GEN_6; // @[]
  wire [63:0] _GEN_8 = 4'h8 == tselectPhy ? tdata1Phy_8 : _GEN_7; // @[]
  wire [63:0] _GEN_9 = 4'h9 == tselectPhy ? tdata1Phy_9 : _GEN_8; // @[]
  wire [63:0] _GEN_11 = 4'h1 == tselectPhy ? tdata2Phy_1 : tdata2Phy_0; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_12 = 4'h2 == tselectPhy ? tdata2Phy_2 : _GEN_11; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_13 = 4'h3 == tselectPhy ? tdata2Phy_3 : _GEN_12; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_14 = 4'h4 == tselectPhy ? tdata2Phy_4 : _GEN_13; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_15 = 4'h5 == tselectPhy ? tdata2Phy_5 : _GEN_14; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_16 = 4'h6 == tselectPhy ? tdata2Phy_6 : _GEN_15; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_17 = 4'h7 == tselectPhy ? tdata2Phy_7 : _GEN_16; // @[CSR.scala 326:{16,16}]
  wire [63:0] _GEN_18 = 4'h8 == tselectPhy ? tdata2Phy_8 : _GEN_17; // @[CSR.scala 326:{16,16}]
  wire [63:0] csrio_customCtrl_frontend_trigger_t_bits_tdata_res_tdata2 = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 326:{16,16}]
  reg [63:0] mtvec; // @[CSR.scala 350:22]
  reg [63:0] mcounteren; // @[CSR.scala 351:27]
  reg [63:0] mcause; // @[CSR.scala 352:23]
  reg [63:0] mtval; // @[CSR.scala 353:22]
  reg [63:0] mepc; // @[CSR.scala 354:17]
  reg [63:0] mie; // @[CSR.scala 358:20]
  reg [63:0] mipReg; // @[CSR.scala 360:24]
  wire [11:0] _mip_T = {csrio_externalInterrupt_meip,1'h0,csrio_externalInterrupt_seip,1'h0,csrio_externalInterrupt_mtip
    ,1'h0,2'h0,csrio_externalInterrupt_msip,3'h0}; // @[CSR.scala 362:22]
  wire [63:0] _GEN_560 = {{52'd0}, _mip_T}; // @[CSR.scala 362:29]
  wire [63:0] _mip_T_1 = _GEN_560 | mipReg; // @[CSR.scala 362:29]
  wire  mip_s_u = _mip_T_1[0]; // @[CSR.scala 362:47]
  wire  mip_s_s = _mip_T_1[1]; // @[CSR.scala 362:47]
  wire  mip_s_h = _mip_T_1[2]; // @[CSR.scala 362:47]
  wire  mip_s_m = _mip_T_1[3]; // @[CSR.scala 362:47]
  wire  mip_t_u = _mip_T_1[4]; // @[CSR.scala 362:47]
  wire  mip_t_s = _mip_T_1[5]; // @[CSR.scala 362:47]
  wire  mip_t_h = _mip_T_1[6]; // @[CSR.scala 362:47]
  wire  mip_t_m = _mip_T_1[7]; // @[CSR.scala 362:47]
  wire  mip_e_u = _mip_T_1[8]; // @[CSR.scala 362:47]
  wire  mip_e_s = _mip_T_1[9]; // @[CSR.scala 362:47]
  wire  mip_e_h = _mip_T_1[10]; // @[CSR.scala 362:47]
  wire  mip_e_m = _mip_T_1[11]; // @[CSR.scala 362:47]
  reg [63:0] mhartid; // @[CSR.scala 379:20]
  reg  REG; // @[CSR.scala 380:24]
  wire  _T_5 = ~reset; // @[CSR.scala 380:42]
  reg  REG_1; // @[CSR.scala 380:16]
  reg [63:0] mstatus; // @[CSR.scala 384:24]
  wire  mstatusStruct_ie_u = mstatus[0]; // @[CSR.scala 406:39]
  wire  mstatusStruct_ie_s = mstatus[1]; // @[CSR.scala 406:39]
  wire  mstatusStruct_ie_h = mstatus[2]; // @[CSR.scala 406:39]
  wire  mstatusStruct_ie_m = mstatus[3]; // @[CSR.scala 406:39]
  wire  mstatusStruct_pie_u = mstatus[4]; // @[CSR.scala 406:39]
  wire  mstatusStruct_pie_s = mstatus[5]; // @[CSR.scala 406:39]
  wire  mstatusStruct_pie_h = mstatus[6]; // @[CSR.scala 406:39]
  wire  mstatusStruct_pie_m = mstatus[7]; // @[CSR.scala 406:39]
  wire  mstatusStruct_spp = mstatus[8]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_hpp = mstatus[10:9]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_mpp = mstatus[12:11]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_fs = mstatus[14:13]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_xs = mstatus[16:15]; // @[CSR.scala 406:39]
  wire  mstatusStruct_mprv = mstatus[17]; // @[CSR.scala 406:39]
  wire  mstatusStruct_sum = mstatus[18]; // @[CSR.scala 406:39]
  wire  mstatusStruct_mxr = mstatus[19]; // @[CSR.scala 406:39]
  wire  mstatusStruct_tvm = mstatus[20]; // @[CSR.scala 406:39]
  wire  mstatusStruct_tw = mstatus[21]; // @[CSR.scala 406:39]
  wire  mstatusStruct_tsr = mstatus[22]; // @[CSR.scala 406:39]
  wire [8:0] mstatusStruct_pad0 = mstatus[31:23]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_uxl = mstatus[33:32]; // @[CSR.scala 406:39]
  wire [1:0] mstatusStruct_sxl = mstatus[35:34]; // @[CSR.scala 406:39]
  wire  mstatusStruct_sbe = mstatus[36]; // @[CSR.scala 406:39]
  wire  mstatusStruct_mbe = mstatus[37]; // @[CSR.scala 406:39]
  wire [24:0] mstatusStruct_pad1 = mstatus[62:38]; // @[CSR.scala 406:39]
  wire  mstatusStruct_sd = mstatus[63]; // @[CSR.scala 406:39]
  reg [63:0] medeleg; // @[CSR.scala 430:24]
  reg [63:0] mideleg; // @[CSR.scala 431:24]
  reg [63:0] mscratch; // @[CSR.scala 432:25]
  reg [63:0] cfgMerged__0; // @[PMP.scala 310:28]
  reg [63:0] cfgMerged__1; // @[PMP.scala 310:28]
  wire [127:0] _cfgs_T = {cfgMerged__1,cfgMerged__0}; // @[PMP.scala 311:44]
  wire [1:0] cfgs__0_a = _cfgs_T[4:3]; // @[PMP.scala 311:44]
  wire  cfgs__0_l = _cfgs_T[7]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__1_a = _cfgs_T[12:11]; // @[PMP.scala 311:44]
  wire  cfgs__1_l = _cfgs_T[15]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__2_a = _cfgs_T[20:19]; // @[PMP.scala 311:44]
  wire  cfgs__2_l = _cfgs_T[23]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__3_a = _cfgs_T[28:27]; // @[PMP.scala 311:44]
  wire  cfgs__3_l = _cfgs_T[31]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__4_a = _cfgs_T[36:35]; // @[PMP.scala 311:44]
  wire  cfgs__4_l = _cfgs_T[39]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__5_a = _cfgs_T[44:43]; // @[PMP.scala 311:44]
  wire  cfgs__5_l = _cfgs_T[47]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__6_a = _cfgs_T[52:51]; // @[PMP.scala 311:44]
  wire  cfgs__6_l = _cfgs_T[55]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__7_a = _cfgs_T[60:59]; // @[PMP.scala 311:44]
  wire  cfgs__7_l = _cfgs_T[63]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__8_a = _cfgs_T[68:67]; // @[PMP.scala 311:44]
  wire  cfgs__8_l = _cfgs_T[71]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__9_a = _cfgs_T[76:75]; // @[PMP.scala 311:44]
  wire  cfgs__9_l = _cfgs_T[79]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__10_a = _cfgs_T[84:83]; // @[PMP.scala 311:44]
  wire  cfgs__10_l = _cfgs_T[87]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__11_a = _cfgs_T[92:91]; // @[PMP.scala 311:44]
  wire  cfgs__11_l = _cfgs_T[95]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__12_a = _cfgs_T[100:99]; // @[PMP.scala 311:44]
  wire  cfgs__12_l = _cfgs_T[103]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__13_a = _cfgs_T[108:107]; // @[PMP.scala 311:44]
  wire  cfgs__13_l = _cfgs_T[111]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__14_a = _cfgs_T[116:115]; // @[PMP.scala 311:44]
  wire  cfgs__14_l = _cfgs_T[119]; // @[PMP.scala 311:44]
  wire [1:0] cfgs__15_a = _cfgs_T[124:123]; // @[PMP.scala 311:44]
  wire  cfgs__15_l = _cfgs_T[127]; // @[PMP.scala 311:44]
  reg [33:0] addr_1_0; // @[PMP.scala 312:23]
  reg [33:0] addr_1_1; // @[PMP.scala 312:23]
  reg [33:0] addr_1_2; // @[PMP.scala 312:23]
  reg [33:0] addr_1_3; // @[PMP.scala 312:23]
  reg [33:0] addr_1_4; // @[PMP.scala 312:23]
  reg [33:0] addr_1_5; // @[PMP.scala 312:23]
  reg [33:0] addr_1_6; // @[PMP.scala 312:23]
  reg [33:0] addr_1_7; // @[PMP.scala 312:23]
  reg [33:0] addr_1_8; // @[PMP.scala 312:23]
  reg [33:0] addr_1_9; // @[PMP.scala 312:23]
  reg [33:0] addr_1_10; // @[PMP.scala 312:23]
  reg [33:0] addr_1_11; // @[PMP.scala 312:23]
  reg [33:0] addr_1_12; // @[PMP.scala 312:23]
  reg [33:0] addr_1_13; // @[PMP.scala 312:23]
  reg [33:0] addr_1_14; // @[PMP.scala 312:23]
  reg [33:0] addr_1_15; // @[PMP.scala 312:23]
  reg [63:0] cfgMerged_1_0; // @[PMP.scala 310:28]
  reg [63:0] cfgMerged_1_1; // @[PMP.scala 310:28]
  wire [127:0] _cfgs_T_113 = {cfgMerged_1_1,cfgMerged_1_0}; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_0_a = _cfgs_T_113[4:3]; // @[PMP.scala 311:44]
  wire  cfgs_1_0_l = _cfgs_T_113[7]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_1_a = _cfgs_T_113[12:11]; // @[PMP.scala 311:44]
  wire  cfgs_1_1_l = _cfgs_T_113[15]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_2_a = _cfgs_T_113[20:19]; // @[PMP.scala 311:44]
  wire  cfgs_1_2_l = _cfgs_T_113[23]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_3_a = _cfgs_T_113[28:27]; // @[PMP.scala 311:44]
  wire  cfgs_1_3_l = _cfgs_T_113[31]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_4_a = _cfgs_T_113[36:35]; // @[PMP.scala 311:44]
  wire  cfgs_1_4_l = _cfgs_T_113[39]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_5_a = _cfgs_T_113[44:43]; // @[PMP.scala 311:44]
  wire  cfgs_1_5_l = _cfgs_T_113[47]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_6_a = _cfgs_T_113[52:51]; // @[PMP.scala 311:44]
  wire  cfgs_1_6_l = _cfgs_T_113[55]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_7_a = _cfgs_T_113[60:59]; // @[PMP.scala 311:44]
  wire  cfgs_1_7_l = _cfgs_T_113[63]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_8_a = _cfgs_T_113[68:67]; // @[PMP.scala 311:44]
  wire  cfgs_1_8_l = _cfgs_T_113[71]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_9_a = _cfgs_T_113[76:75]; // @[PMP.scala 311:44]
  wire  cfgs_1_9_l = _cfgs_T_113[79]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_10_a = _cfgs_T_113[84:83]; // @[PMP.scala 311:44]
  wire  cfgs_1_10_l = _cfgs_T_113[87]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_11_a = _cfgs_T_113[92:91]; // @[PMP.scala 311:44]
  wire  cfgs_1_11_l = _cfgs_T_113[95]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_12_a = _cfgs_T_113[100:99]; // @[PMP.scala 311:44]
  wire  cfgs_1_12_l = _cfgs_T_113[103]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_13_a = _cfgs_T_113[108:107]; // @[PMP.scala 311:44]
  wire  cfgs_1_13_l = _cfgs_T_113[111]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_14_a = _cfgs_T_113[116:115]; // @[PMP.scala 311:44]
  wire  cfgs_1_14_l = _cfgs_T_113[119]; // @[PMP.scala 311:44]
  wire [1:0] cfgs_1_15_a = _cfgs_T_113[124:123]; // @[PMP.scala 311:44]
  wire  cfgs_1_15_l = _cfgs_T_113[127]; // @[PMP.scala 311:44]
  reg [33:0] addr_2_0; // @[PMP.scala 312:23]
  reg [33:0] addr_2_1; // @[PMP.scala 312:23]
  reg [33:0] addr_2_2; // @[PMP.scala 312:23]
  reg [33:0] addr_2_3; // @[PMP.scala 312:23]
  reg [33:0] addr_2_4; // @[PMP.scala 312:23]
  reg [33:0] addr_2_5; // @[PMP.scala 312:23]
  reg [33:0] addr_2_6; // @[PMP.scala 312:23]
  reg [33:0] addr_2_7; // @[PMP.scala 312:23]
  reg [33:0] addr_2_8; // @[PMP.scala 312:23]
  reg [33:0] addr_2_9; // @[PMP.scala 312:23]
  reg [33:0] addr_2_10; // @[PMP.scala 312:23]
  reg [33:0] addr_2_11; // @[PMP.scala 312:23]
  reg [33:0] addr_2_12; // @[PMP.scala 312:23]
  reg [33:0] addr_2_13; // @[PMP.scala 312:23]
  reg [33:0] addr_2_14; // @[PMP.scala 312:23]
  reg [33:0] addr_2_15; // @[PMP.scala 312:23]
  reg [63:0] stvec; // @[CSR.scala 454:22]
  wire [63:0] sieMask = 64'h222 & mideleg; // @[CSR.scala 456:26]
  reg [63:0] satp; // @[CSR.scala 459:90]
  reg [63:0] sepc; // @[CSR.scala 465:21]
  reg [63:0] scause; // @[CSR.scala 468:23]
  reg [63:0] stval; // @[CSR.scala 469:18]
  reg [63:0] sscratch; // @[CSR.scala 470:25]
  reg [63:0] scounteren; // @[CSR.scala 471:27]
  reg [63:0] sbpctl; // @[CSR.scala 475:23]
  reg [63:0] spfctl; // @[CSR.scala 493:23]
  reg [63:0] sdsid; // @[CSR.scala 521:22]
  reg [63:0] slvpredctl; // @[CSR.scala 528:27]
  reg [63:0] smblockctl; // @[CSR.scala 555:27]
  reg [63:0] srnctl; // @[CSR.scala 570:23]
  wire [43:0] sa_ppn = satp[43:0]; // @[Bundle.scala 446:33]
  wire [15:0] sa_asid = satp[59:44]; // @[Bundle.scala 446:33]
  wire [3:0] sa_mode = satp[63:60]; // @[Bundle.scala 446:33]
  wire [36:0] _tlbBundle_satp_ppn_T_1 = {1'h0,sa_ppn[35:0]}; // @[Cat.scala 31:58]
  reg [15:0] tlbBundle_satp_changed_REG; // @[Hold.scala 76:21]
  reg [63:0] fcsr; // @[CSR.scala 590:21]
  reg [1:0] priviledgeMode; // @[CSR.scala 628:31]
  wire [3:0] priviledgeModeOH = 4'h1 << priviledgeMode; // @[OneHot.scala 57:35]
  reg  perfEventscounten_0; // @[CSR.scala 634:34]
  reg  perfEventscounten_1; // @[CSR.scala 634:34]
  reg  perfEventscounten_2; // @[CSR.scala 634:34]
  reg  perfEventscounten_3; // @[CSR.scala 634:34]
  reg  perfEventscounten_4; // @[CSR.scala 634:34]
  reg  perfEventscounten_5; // @[CSR.scala 634:34]
  reg  perfEventscounten_6; // @[CSR.scala 634:34]
  reg  perfEventscounten_7; // @[CSR.scala 634:34]
  reg  perfEventscounten_8; // @[CSR.scala 634:34]
  reg  perfEventscounten_9; // @[CSR.scala 634:34]
  reg  perfEventscounten_10; // @[CSR.scala 634:34]
  reg  perfEventscounten_11; // @[CSR.scala 634:34]
  reg  perfEventscounten_12; // @[CSR.scala 634:34]
  reg  perfEventscounten_13; // @[CSR.scala 634:34]
  reg  perfEventscounten_14; // @[CSR.scala 634:34]
  reg  perfEventscounten_15; // @[CSR.scala 634:34]
  reg  perfEventscounten_16; // @[CSR.scala 634:34]
  reg  perfEventscounten_17; // @[CSR.scala 634:34]
  reg  perfEventscounten_18; // @[CSR.scala 634:34]
  reg  perfEventscounten_19; // @[CSR.scala 634:34]
  reg  perfEventscounten_20; // @[CSR.scala 634:34]
  reg  perfEventscounten_21; // @[CSR.scala 634:34]
  reg  perfEventscounten_22; // @[CSR.scala 634:34]
  reg  perfEventscounten_23; // @[CSR.scala 634:34]
  reg  perfEventscounten_24; // @[CSR.scala 634:34]
  reg  perfEventscounten_25; // @[CSR.scala 634:34]
  reg  perfEventscounten_26; // @[CSR.scala 634:34]
  reg  perfEventscounten_27; // @[CSR.scala 634:34]
  reg  perfEventscounten_28; // @[CSR.scala 634:34]
  reg [63:0] perfCnts_0; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_1; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_2; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_3; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_4; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_5; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_6; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_7; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_8; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_9; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_10; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_11; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_12; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_13; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_14; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_15; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_16; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_17; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_18; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_19; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_20; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_21; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_22; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_23; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_24; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_25; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_26; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_27; // @[CSR.scala 635:49]
  reg [63:0] perfCnts_28; // @[CSR.scala 635:49]
  reg [63:0] perfEvents_0; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_1; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_2; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_3; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_4; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_5; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_6; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_7; // @[CSR.scala 636:40]
  reg [63:0] perfEvents_8; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_9; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_10; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_11; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_12; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_13; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_14; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_15; // @[CSR.scala 637:40]
  reg [63:0] perfEvents_16; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_17; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_18; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_19; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_20; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_21; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_22; // @[CSR.scala 638:40]
  reg [63:0] perfEvents_23; // @[CSR.scala 638:40]
  reg [63:0] csrevents_0; // @[CSR.scala 639:40]
  reg [63:0] csrevents_1; // @[CSR.scala 639:40]
  reg [63:0] csrevents_2; // @[CSR.scala 639:40]
  reg [63:0] csrevents_3; // @[CSR.scala 639:40]
  reg [63:0] csrevents_4; // @[CSR.scala 639:40]
  wire [3:0] _perfEventscounten_0_T_3 = {perfEvents_0[62],perfEvents_0[61],perfEvents_0[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_0_T_4 = _perfEventscounten_0_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_1_T_3 = {perfEvents_1[62],perfEvents_1[61],perfEvents_1[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_1_T_4 = _perfEventscounten_1_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_2_T_3 = {perfEvents_2[62],perfEvents_2[61],perfEvents_2[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_2_T_4 = _perfEventscounten_2_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_3_T_3 = {perfEvents_3[62],perfEvents_3[61],perfEvents_3[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_3_T_4 = _perfEventscounten_3_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_4_T_3 = {perfEvents_4[62],perfEvents_4[61],perfEvents_4[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_4_T_4 = _perfEventscounten_4_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_5_T_3 = {perfEvents_5[62],perfEvents_5[61],perfEvents_5[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_5_T_4 = _perfEventscounten_5_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_6_T_3 = {perfEvents_6[62],perfEvents_6[61],perfEvents_6[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_6_T_4 = _perfEventscounten_6_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_7_T_3 = {perfEvents_7[62],perfEvents_7[61],perfEvents_7[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_7_T_4 = _perfEventscounten_7_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_8_T_3 = {perfEvents_8[62],perfEvents_8[61],perfEvents_8[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_8_T_4 = _perfEventscounten_8_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_9_T_3 = {perfEvents_9[62],perfEvents_9[61],perfEvents_9[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_9_T_4 = _perfEventscounten_9_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_10_T_3 = {perfEvents_10[62],perfEvents_10[61],perfEvents_10[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_10_T_4 = _perfEventscounten_10_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_11_T_3 = {perfEvents_11[62],perfEvents_11[61],perfEvents_11[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_11_T_4 = _perfEventscounten_11_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_12_T_3 = {perfEvents_12[62],perfEvents_12[61],perfEvents_12[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_12_T_4 = _perfEventscounten_12_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_13_T_3 = {perfEvents_13[62],perfEvents_13[61],perfEvents_13[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_13_T_4 = _perfEventscounten_13_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_14_T_3 = {perfEvents_14[62],perfEvents_14[61],perfEvents_14[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_14_T_4 = _perfEventscounten_14_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_15_T_3 = {perfEvents_15[62],perfEvents_15[61],perfEvents_15[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_15_T_4 = _perfEventscounten_15_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_16_T_3 = {perfEvents_16[62],perfEvents_16[61],perfEvents_16[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_16_T_4 = _perfEventscounten_16_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_17_T_3 = {perfEvents_17[62],perfEvents_17[61],perfEvents_17[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_17_T_4 = _perfEventscounten_17_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_18_T_3 = {perfEvents_18[62],perfEvents_18[61],perfEvents_18[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_18_T_4 = _perfEventscounten_18_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_19_T_3 = {perfEvents_19[62],perfEvents_19[61],perfEvents_19[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_19_T_4 = _perfEventscounten_19_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_20_T_3 = {perfEvents_20[62],perfEvents_20[61],perfEvents_20[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_20_T_4 = _perfEventscounten_20_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_21_T_3 = {perfEvents_21[62],perfEvents_21[61],perfEvents_21[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_21_T_4 = _perfEventscounten_21_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_22_T_3 = {perfEvents_22[62],perfEvents_22[61],perfEvents_22[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_22_T_4 = _perfEventscounten_22_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_23_T_3 = {perfEvents_23[62],perfEvents_23[61],perfEvents_23[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_23_T_4 = _perfEventscounten_23_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_24_T_3 = {csrevents_0[62],csrevents_0[61],csrevents_0[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_24_T_4 = _perfEventscounten_24_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_25_T_3 = {csrevents_1[62],csrevents_1[61],csrevents_1[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_25_T_4 = _perfEventscounten_25_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_26_T_3 = {csrevents_2[62],csrevents_2[61],csrevents_2[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_26_T_4 = _perfEventscounten_26_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_27_T_3 = {csrevents_3[62],csrevents_3[61],csrevents_3[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_27_T_4 = _perfEventscounten_27_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  wire [3:0] _perfEventscounten_28_T_3 = {csrevents_4[62],csrevents_4[61],csrevents_4[61:60]}; // @[Cat.scala 31:58]
  wire [3:0] _perfEventscounten_28_T_4 = _perfEventscounten_28_T_3 & priviledgeModeOH; // @[CSR.scala 641:94]
  reg [63:0] mcountinhibit; // @[CSR.scala 651:30]
  reg [63:0] mcycle; // @[CSR.scala 652:23]
  wire [63:0] _mcycle_T_1 = mcycle + 64'h1; // @[CSR.scala 653:20]
  reg [63:0] minstret; // @[CSR.scala 654:25]
  reg [2:0] minstret_REG; // @[CSR.scala 659:33]
  wire [63:0] _GEN_561 = {{61'd0}, minstret_REG}; // @[CSR.scala 659:24]
  wire [63:0] _minstret_T_1 = minstret + _GEN_561; // @[CSR.scala 659:24]
  wire [63:0] _GEN_562 = {{58'd0}, csrio_perf_perfEventsFrontend_0_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_0_T_4 = perfCnts_0 + _GEN_562; // @[CSR.scala 661:93]
  wire [63:0] _GEN_563 = {{58'd0}, csrio_perf_perfEventsFrontend_1_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_1_T_4 = perfCnts_1 + _GEN_563; // @[CSR.scala 661:93]
  wire [63:0] _GEN_564 = {{58'd0}, csrio_perf_perfEventsFrontend_2_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_2_T_4 = perfCnts_2 + _GEN_564; // @[CSR.scala 661:93]
  wire [63:0] _GEN_565 = {{58'd0}, csrio_perf_perfEventsFrontend_3_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_3_T_4 = perfCnts_3 + _GEN_565; // @[CSR.scala 661:93]
  wire [63:0] _GEN_566 = {{58'd0}, csrio_perf_perfEventsFrontend_4_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_4_T_4 = perfCnts_4 + _GEN_566; // @[CSR.scala 661:93]
  wire [63:0] _GEN_567 = {{58'd0}, csrio_perf_perfEventsFrontend_5_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_5_T_4 = perfCnts_5 + _GEN_567; // @[CSR.scala 661:93]
  wire [63:0] _GEN_568 = {{58'd0}, csrio_perf_perfEventsFrontend_6_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_6_T_4 = perfCnts_6 + _GEN_568; // @[CSR.scala 661:93]
  wire [63:0] _GEN_569 = {{58'd0}, csrio_perf_perfEventsFrontend_7_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_7_T_4 = perfCnts_7 + _GEN_569; // @[CSR.scala 661:93]
  wire [63:0] _GEN_570 = {{58'd0}, csrio_perf_perfEventsCtrl_0_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_8_T_4 = perfCnts_8 + _GEN_570; // @[CSR.scala 661:93]
  wire [63:0] _GEN_571 = {{58'd0}, csrio_perf_perfEventsCtrl_1_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_9_T_4 = perfCnts_9 + _GEN_571; // @[CSR.scala 661:93]
  wire [63:0] _GEN_572 = {{58'd0}, csrio_perf_perfEventsCtrl_2_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_10_T_4 = perfCnts_10 + _GEN_572; // @[CSR.scala 661:93]
  wire [63:0] _GEN_573 = {{58'd0}, csrio_perf_perfEventsCtrl_3_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_11_T_4 = perfCnts_11 + _GEN_573; // @[CSR.scala 661:93]
  wire [63:0] _GEN_574 = {{58'd0}, csrio_perf_perfEventsCtrl_4_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_12_T_4 = perfCnts_12 + _GEN_574; // @[CSR.scala 661:93]
  wire [63:0] _GEN_575 = {{58'd0}, csrio_perf_perfEventsCtrl_5_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_13_T_4 = perfCnts_13 + _GEN_575; // @[CSR.scala 661:93]
  wire [63:0] _GEN_576 = {{58'd0}, csrio_perf_perfEventsCtrl_6_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_14_T_4 = perfCnts_14 + _GEN_576; // @[CSR.scala 661:93]
  wire [63:0] _GEN_577 = {{58'd0}, csrio_perf_perfEventsCtrl_7_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_15_T_4 = perfCnts_15 + _GEN_577; // @[CSR.scala 661:93]
  wire [63:0] _GEN_578 = {{58'd0}, csrio_perf_perfEventsLsu_0_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_16_T_4 = perfCnts_16 + _GEN_578; // @[CSR.scala 661:93]
  wire [63:0] _GEN_579 = {{58'd0}, csrio_perf_perfEventsLsu_1_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_17_T_4 = perfCnts_17 + _GEN_579; // @[CSR.scala 661:93]
  wire [63:0] _GEN_580 = {{58'd0}, csrio_perf_perfEventsLsu_2_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_18_T_4 = perfCnts_18 + _GEN_580; // @[CSR.scala 661:93]
  wire [63:0] _GEN_581 = {{58'd0}, csrio_perf_perfEventsLsu_3_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_19_T_4 = perfCnts_19 + _GEN_581; // @[CSR.scala 661:93]
  wire [63:0] _GEN_582 = {{58'd0}, csrio_perf_perfEventsLsu_4_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_20_T_4 = perfCnts_20 + _GEN_582; // @[CSR.scala 661:93]
  wire [63:0] _GEN_583 = {{58'd0}, csrio_perf_perfEventsLsu_5_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_21_T_4 = perfCnts_21 + _GEN_583; // @[CSR.scala 661:93]
  wire [63:0] _GEN_584 = {{58'd0}, csrio_perf_perfEventsLsu_6_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_22_T_4 = perfCnts_22 + _GEN_584; // @[CSR.scala 661:93]
  wire [63:0] _GEN_585 = {{58'd0}, csrio_perf_perfEventsLsu_7_value}; // @[CSR.scala 661:93]
  wire [63:0] _perfCnts_23_T_4 = perfCnts_23 + _GEN_585; // @[CSR.scala 661:93]
  wire [64:0] _perfCnts_24_T_3 = {{1'd0}, perfCnts_24}; // @[CSR.scala 661:93]
  wire [64:0] _perfCnts_25_T_3 = {{1'd0}, perfCnts_25}; // @[CSR.scala 661:93]
  wire [64:0] _perfCnts_26_T_3 = {{1'd0}, perfCnts_26}; // @[CSR.scala 661:93]
  wire [64:0] _perfCnts_27_T_3 = {{1'd0}, perfCnts_27}; // @[CSR.scala 661:93]
  wire [64:0] _perfCnts_28_T_3 = {{1'd0}, perfCnts_28}; // @[CSR.scala 661:93]
  wire [5:0] lo = {mip_t_s,mip_t_u,mip_s_m,mip_s_h,mip_s_s,mip_s_u}; // @[CSR.scala 697:27]
  wire [11:0] _T_87 = {mip_e_m,mip_e_h,mip_e_s,mip_e_u,mip_t_m,mip_t_h,lo}; // @[CSR.scala 697:27]
  reg [63:0] REG_2; // @[CSR.scala 767:20]
  reg [63:0] REG_3; // @[CSR.scala 767:20]
  reg [63:0] REG_4; // @[CSR.scala 767:20]
  reg [63:0] REG_5; // @[CSR.scala 767:20]
  reg [63:0] REG_6; // @[CSR.scala 767:20]
  reg [63:0] REG_7; // @[CSR.scala 767:20]
  reg [63:0] REG_8; // @[CSR.scala 767:20]
  reg [63:0] REG_9; // @[CSR.scala 767:20]
  reg [63:0] REG_10; // @[CSR.scala 767:20]
  reg [63:0] REG_11; // @[CSR.scala 767:20]
  reg [63:0] REG_12; // @[CSR.scala 767:20]
  reg [63:0] REG_13; // @[CSR.scala 767:20]
  reg [63:0] REG_14; // @[CSR.scala 767:20]
  reg [63:0] REG_15; // @[CSR.scala 767:20]
  reg [63:0] REG_16; // @[CSR.scala 767:20]
  reg [63:0] REG_17; // @[CSR.scala 767:20]
  reg [63:0] REG_18; // @[CSR.scala 767:20]
  reg [63:0] REG_19; // @[CSR.scala 767:20]
  reg [63:0] REG_20; // @[CSR.scala 767:20]
  reg [63:0] REG_21; // @[CSR.scala 767:20]
  reg [63:0] REG_22; // @[CSR.scala 767:20]
  wire [11:0] addr_3 = io_in_bits_uop_ctrl_imm[11:0]; // @[CSR.scala 783:18]
  wire [63:0] csri = {59'h0,io_in_bits_uop_ctrl_imm[16:12]}; // @[Cat.scala 31:58]
  wire  _rdata_T_327 = 12'hb06 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_490 = _rdata_T_327 ? perfCnts_3 : 64'h0; // @[Mux.scala 27:73]
  wire  _rdata_T_328 = 12'h329 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_491 = _rdata_T_328 ? perfEvents_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_653 = _rdata_T_490 | _rdata_T_491; // @[Mux.scala 27:73]
  wire  _rdata_T_329 = 12'h7cb == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_2 = {{30'd0}, addr_2_3}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_4 = _rdata_T_2 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_6 = {_rdata_T_2[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_7 = cfgs_1_3_a[1] ? _rdata_T_4 : _rdata_T_6; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_492 = _rdata_T_329 ? _rdata_T_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_654 = _rdata_T_653 | _rdata_T_492; // @[Mux.scala 27:73]
  wire  _rdata_T_330 = 12'h7a4 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_493 = _rdata_T_330 ? 64'h2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_655 = _rdata_T_654 | _rdata_T_493; // @[Mux.scala 27:73]
  wire  _rdata_T_331 = 12'hf12 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_494 = _rdata_T_331 ? 64'h19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_656 = _rdata_T_655 | _rdata_T_494; // @[Mux.scala 27:73]
  wire  _rdata_T_332 = 12'hb15 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_495 = _rdata_T_332 ? perfCnts_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_657 = _rdata_T_656 | _rdata_T_495; // @[Mux.scala 27:73]
  wire  _rdata_T_333 = 12'h7b3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_496 = _rdata_T_333 ? dscratch1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_658 = _rdata_T_657 | _rdata_T_496; // @[Mux.scala 27:73]
  wire  _rdata_T_334 = 12'h5ce == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_497 = _rdata_T_334 ? REG_21 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_659 = _rdata_T_658 | _rdata_T_497; // @[Mux.scala 27:73]
  wire  _rdata_T_335 = 12'h5d9 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_498 = _rdata_T_335 ? REG_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_660 = _rdata_T_659 | _rdata_T_498; // @[Mux.scala 27:73]
  wire  _rdata_T_336 = 12'h180 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_14 = satp & 64'h8ffff00000ffffff; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_499 = _rdata_T_336 ? _rdata_T_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_661 = _rdata_T_660 | _rdata_T_499; // @[Mux.scala 27:73]
  wire  _rdata_T_337 = 12'h7cf == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_15 = {{30'd0}, addr_2_7}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_17 = _rdata_T_15 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_19 = {_rdata_T_15[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_20 = cfgs_1_7_a[1] ? _rdata_T_17 : _rdata_T_19; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_500 = _rdata_T_337 ? _rdata_T_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_662 = _rdata_T_661 | _rdata_T_500; // @[Mux.scala 27:73]
  wire  _rdata_T_338 = 12'h32e == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_501 = _rdata_T_338 ? perfEvents_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_663 = _rdata_T_662 | _rdata_T_501; // @[Mux.scala 27:73]
  wire  _rdata_T_339 = 12'h3b1 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_22 = {{30'd0}, addr_1_1}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_24 = _rdata_T_22 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_26 = {_rdata_T_22[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_27 = cfgs__1_a[1] ? _rdata_T_24 : _rdata_T_26; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_502 = _rdata_T_339 ? _rdata_T_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_664 = _rdata_T_663 | _rdata_T_502; // @[Mux.scala 27:73]
  wire  _rdata_T_340 = 12'h7a2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_503 = _rdata_T_340 ? csrio_customCtrl_frontend_trigger_t_bits_tdata_res_tdata2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_665 = _rdata_T_664 | _rdata_T_503; // @[Mux.scala 27:73]
  wire  _rdata_T_341 = 12'hb1c == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_504 = _rdata_T_341 ? perfCnts_25 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_666 = _rdata_T_665 | _rdata_T_504; // @[Mux.scala 27:73]
  wire  _rdata_T_342 = 12'h3a2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_505 = _rdata_T_342 ? cfgMerged__1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_667 = _rdata_T_666 | _rdata_T_505; // @[Mux.scala 27:73]
  wire  _rdata_T_343 = 12'h33d == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_506 = _rdata_T_343 ? csrevents_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_668 = _rdata_T_667 | _rdata_T_506; // @[Mux.scala 27:73]
  wire  _rdata_T_344 = 12'h5c3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_507 = _rdata_T_344 ? smblockctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_669 = _rdata_T_668 | _rdata_T_507; // @[Mux.scala 27:73]
  wire  _rdata_T_345 = 12'h140 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_508 = _rdata_T_345 ? sscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_670 = _rdata_T_669 | _rdata_T_508; // @[Mux.scala 27:73]
  wire  _rdata_T_346 = 12'hb09 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_509 = _rdata_T_346 ? perfCnts_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_671 = _rdata_T_670 | _rdata_T_509; // @[Mux.scala 27:73]
  wire  _rdata_T_347 = 12'hb03 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_510 = _rdata_T_347 ? perfCnts_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_672 = _rdata_T_671 | _rdata_T_510; // @[Mux.scala 27:73]
  wire  _rdata_T_348 = 12'h5ca == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_511 = _rdata_T_348 ? REG_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_673 = _rdata_T_672 | _rdata_T_511; // @[Mux.scala 27:73]
  wire  _rdata_T_349 = 12'h7c8 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_37 = {{30'd0}, addr_2_0}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_39 = _rdata_T_37 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_41 = {_rdata_T_37[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_42 = cfgs_1_0_a[1] ? _rdata_T_39 : _rdata_T_41; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_512 = _rdata_T_349 ? _rdata_T_42 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_674 = _rdata_T_673 | _rdata_T_512; // @[Mux.scala 27:73]
  wire  _rdata_T_350 = 12'h3b5 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_43 = {{30'd0}, addr_1_5}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_45 = _rdata_T_43 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_47 = {_rdata_T_43[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_48 = cfgs__5_a[1] ? _rdata_T_45 : _rdata_T_47; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_513 = _rdata_T_350 ? _rdata_T_48 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_675 = _rdata_T_674 | _rdata_T_513; // @[Mux.scala 27:73]
  wire  _rdata_T_351 = 12'h331 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_514 = _rdata_T_351 ? perfEvents_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_676 = _rdata_T_675 | _rdata_T_514; // @[Mux.scala 27:73]
  wire  _rdata_T_352 = 12'h5c7 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_515 = _rdata_T_352 ? REG_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_677 = _rdata_T_676 | _rdata_T_515; // @[Mux.scala 27:73]
  wire  _rdata_T_353 = 12'h302 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_516 = _rdata_T_353 ? medeleg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_678 = _rdata_T_677 | _rdata_T_516; // @[Mux.scala 27:73]
  wire  _rdata_T_354 = 12'h5d6 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_517 = _rdata_T_354 ? REG_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_679 = _rdata_T_678 | _rdata_T_517; // @[Mux.scala 27:73]
  wire  _rdata_T_355 = 12'h105 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_53 = stvec & 64'hfffffffffffffffd; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_518 = _rdata_T_355 ? _rdata_T_53 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_680 = _rdata_T_679 | _rdata_T_518; // @[Mux.scala 27:73]
  wire  _rdata_T_356 = 12'hb0d == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_519 = _rdata_T_356 ? perfCnts_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_681 = _rdata_T_680 | _rdata_T_519; // @[Mux.scala 27:73]
  wire  _rdata_T_357 = 12'h7d7 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_55 = {{30'd0}, addr_2_15}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_57 = _rdata_T_55 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_59 = {_rdata_T_55[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_60 = cfgs_1_15_a[1] ? _rdata_T_57 : _rdata_T_59; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_520 = _rdata_T_357 ? _rdata_T_60 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_682 = _rdata_T_681 | _rdata_T_520; // @[Mux.scala 27:73]
  wire  _rdata_T_358 = 12'h5d1 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_521 = _rdata_T_358 ? REG_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_683 = _rdata_T_682 | _rdata_T_521; // @[Mux.scala 27:73]
  wire  _rdata_T_359 = 12'h141 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_62 = sepc & 64'hfffffffffffffffe; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_522 = _rdata_T_359 ? _rdata_T_62 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_684 = _rdata_T_683 | _rdata_T_522; // @[Mux.scala 27:73]
  wire  _rdata_T_360 = 12'h342 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_523 = _rdata_T_360 ? mcause : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_685 = _rdata_T_684 | _rdata_T_523; // @[Mux.scala 27:73]
  wire  _rdata_T_361 = 12'h326 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_524 = _rdata_T_361 ? perfEvents_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_686 = _rdata_T_685 | _rdata_T_524; // @[Mux.scala 27:73]
  wire  _rdata_T_362 = 12'h335 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_525 = _rdata_T_362 ? perfEvents_18 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_687 = _rdata_T_686 | _rdata_T_525; // @[Mux.scala 27:73]
  wire  _rdata_T_363 = 12'hb11 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_526 = _rdata_T_363 ? perfCnts_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_688 = _rdata_T_687 | _rdata_T_526; // @[Mux.scala 27:73]
  wire  _rdata_T_364 = 12'h3bc == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_67 = {{30'd0}, addr_1_12}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_69 = _rdata_T_67 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_71 = {_rdata_T_67[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_72 = cfgs__12_a[1] ? _rdata_T_69 : _rdata_T_71; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_527 = _rdata_T_364 ? _rdata_T_72 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_689 = _rdata_T_688 | _rdata_T_527; // @[Mux.scala 27:73]
  wire  _rdata_T_365 = 12'h306 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_528 = _rdata_T_365 ? mcounteren : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_690 = _rdata_T_689 | _rdata_T_528; // @[Mux.scala 27:73]
  wire  _rdata_T_366 = 12'h7d2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_74 = {{30'd0}, addr_2_10}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_76 = _rdata_T_74 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_78 = {_rdata_T_74[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_79 = cfgs_1_10_a[1] ? _rdata_T_76 : _rdata_T_78; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_529 = _rdata_T_366 ? _rdata_T_79 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_691 = _rdata_T_690 | _rdata_T_529; // @[Mux.scala 27:73]
  wire  _rdata_T_367 = 12'h1 == addr_3; // @[LookupTree.scala 24:34]
  wire [4:0] _rdata_T_530 = _rdata_T_367 ? fcsr[4:0] : 5'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_586 = {{59'd0}, _rdata_T_530}; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_692 = _rdata_T_691 | _GEN_586; // @[Mux.scala 27:73]
  wire  _rdata_T_368 = 12'hf11 == addr_3; // @[LookupTree.scala 24:34]
  wire  _rdata_T_369 = 12'h32a == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_532 = _rdata_T_369 ? perfEvents_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_694 = _rdata_T_692 | _rdata_T_532; // @[Mux.scala 27:73]
  wire  _rdata_T_370 = 12'h9c0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_533 = _rdata_T_370 ? sdsid : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_695 = _rdata_T_694 | _rdata_T_533; // @[Mux.scala 27:73]
  wire  _rdata_T_371 = 12'h7d0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_85 = {{30'd0}, addr_2_8}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_87 = _rdata_T_85 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_89 = {_rdata_T_85[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_90 = cfgs_1_8_a[1] ? _rdata_T_87 : _rdata_T_89; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_534 = _rdata_T_371 ? _rdata_T_90 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_696 = _rdata_T_695 | _rdata_T_534; // @[Mux.scala 27:73]
  wire  _rdata_T_372 = 12'h3bd == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_91 = {{30'd0}, addr_1_13}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_93 = _rdata_T_91 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_95 = {_rdata_T_91[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_96 = cfgs__13_a[1] ? _rdata_T_93 : _rdata_T_95; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_535 = _rdata_T_372 ? _rdata_T_96 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_697 = _rdata_T_696 | _rdata_T_535; // @[Mux.scala 27:73]
  wire  _rdata_T_373 = 12'h339 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_536 = _rdata_T_373 ? perfEvents_22 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_698 = _rdata_T_697 | _rdata_T_536; // @[Mux.scala 27:73]
  wire  _rdata_T_374 = 12'h3b8 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_98 = {{30'd0}, addr_1_8}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_100 = _rdata_T_98 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_102 = {_rdata_T_98[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_103 = cfgs__8_a[1] ? _rdata_T_100 : _rdata_T_102; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_537 = _rdata_T_374 ? _rdata_T_103 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_699 = _rdata_T_698 | _rdata_T_537; // @[Mux.scala 27:73]
  wire  _rdata_T_375 = 12'h104 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_104 = mie & sieMask; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_538 = _rdata_T_375 ? _rdata_T_104 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_700 = _rdata_T_699 | _rdata_T_538; // @[Mux.scala 27:73]
  wire  _rdata_T_376 = 12'h334 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_539 = _rdata_T_376 ? perfEvents_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_701 = _rdata_T_700 | _rdata_T_539; // @[Mux.scala 27:73]
  wire  _rdata_T_377 = 12'h5cf == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_540 = _rdata_T_377 ? REG_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_702 = _rdata_T_701 | _rdata_T_540; // @[Mux.scala 27:73]
  wire  _rdata_T_378 = 12'h32f == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_541 = _rdata_T_378 ? perfEvents_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_703 = _rdata_T_702 | _rdata_T_541; // @[Mux.scala 27:73]
  wire  _rdata_T_379 = 12'h7b0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_108 = {{32'd0}, dcsr}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_542 = _rdata_T_379 ? _rdata_T_108 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_704 = _rdata_T_703 | _rdata_T_542; // @[Mux.scala 27:73]
  wire  _rdata_T_380 = 12'hb0a == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_543 = _rdata_T_380 ? perfCnts_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_705 = _rdata_T_704 | _rdata_T_543; // @[Mux.scala 27:73]
  wire  _rdata_T_381 = 12'hb04 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_544 = _rdata_T_381 ? perfCnts_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_706 = _rdata_T_705 | _rdata_T_544; // @[Mux.scala 27:73]
  wire  _rdata_T_382 = 12'h33e == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_545 = _rdata_T_382 ? csrevents_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_707 = _rdata_T_706 | _rdata_T_545; // @[Mux.scala 27:73]
  wire  _rdata_T_383 = 12'h144 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _GEN_587 = {{52'd0}, _T_87}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_112 = _GEN_587 & sieMask; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_546 = _rdata_T_383 ? _rdata_T_112 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_708 = _rdata_T_707 | _rdata_T_546; // @[Mux.scala 27:73]
  wire  _rdata_T_384 = 12'hb18 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_547 = _rdata_T_384 ? perfCnts_21 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_709 = _rdata_T_708 | _rdata_T_547; // @[Mux.scala 27:73]
  wire  _rdata_T_385 = 12'h3b4 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_114 = {{30'd0}, addr_1_4}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_116 = _rdata_T_114 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_118 = {_rdata_T_114[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_119 = cfgs__4_a[1] ? _rdata_T_116 : _rdata_T_118; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_548 = _rdata_T_385 ? _rdata_T_119 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_710 = _rdata_T_709 | _rdata_T_548; // @[Mux.scala 27:73]
  wire  _rdata_T_386 = 12'h7a1 == addr_3; // @[LookupTree.scala 24:34]
  wire [12:0] _rdata_T_121 = {triggerAction,12'h0}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_588 = {{51'd0}, _rdata_T_121}; // @[CSR.scala 280:39]
  wire [63:0] _rdata_T_122 = _GEN_9 | _GEN_588; // @[CSR.scala 280:39]
  wire [63:0] _rdata_T_549 = _rdata_T_386 ? _rdata_T_122 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_711 = _rdata_T_710 | _rdata_T_549; // @[Mux.scala 27:73]
  wire  _rdata_T_387 = 12'hb19 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_550 = _rdata_T_387 ? perfCnts_22 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_712 = _rdata_T_711 | _rdata_T_550; // @[Mux.scala 27:73]
  wire  _rdata_T_388 = 12'h7b2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_551 = _rdata_T_388 ? dscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_713 = _rdata_T_712 | _rdata_T_551; // @[Mux.scala 27:73]
  wire  _rdata_T_389 = 12'h100 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_125 = mstatus & 64'h80000003000de122; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_552 = _rdata_T_389 ? _rdata_T_125 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_714 = _rdata_T_713 | _rdata_T_552; // @[Mux.scala 27:73]
  wire  _rdata_T_390 = 12'h5d5 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_553 = _rdata_T_390 ? REG_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_715 = _rdata_T_714 | _rdata_T_553; // @[Mux.scala 27:73]
  wire  _rdata_T_391 = 12'hb0e == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_554 = _rdata_T_391 ? perfCnts_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_716 = _rdata_T_715 | _rdata_T_554; // @[Mux.scala 27:73]
  wire  _rdata_T_392 = 12'h5c6 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_555 = _rdata_T_392 ? REG_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_717 = _rdata_T_716 | _rdata_T_555; // @[Mux.scala 27:73]
  wire  _rdata_T_393 = 12'hb14 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_556 = _rdata_T_393 ? perfCnts_17 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_718 = _rdata_T_717 | _rdata_T_556; // @[Mux.scala 27:73]
  wire  _rdata_T_394 = 12'hb1d == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_557 = _rdata_T_394 ? perfCnts_26 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_719 = _rdata_T_718 | _rdata_T_557; // @[Mux.scala 27:73]
  wire  _rdata_T_395 = 12'h7d6 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_131 = {{30'd0}, addr_2_14}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_133 = _rdata_T_131 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_135 = {_rdata_T_131[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_136 = cfgs_1_14_a[1] ? _rdata_T_133 : _rdata_T_135; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_558 = _rdata_T_395 ? _rdata_T_136 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_720 = _rdata_T_719 | _rdata_T_558; // @[Mux.scala 27:73]
  wire  _rdata_T_396 = 12'h7c0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_559 = _rdata_T_396 ? cfgMerged_1_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_721 = _rdata_T_720 | _rdata_T_559; // @[Mux.scala 27:73]
  wire  _rdata_T_397 = 12'h2 == addr_3; // @[LookupTree.scala 24:34]
  wire [2:0] _rdata_T_560 = _rdata_T_397 ? fcsr[7:5] : 3'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_589 = {{61'd0}, _rdata_T_560}; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_722 = _rdata_T_721 | _GEN_589; // @[Mux.scala 27:73]
  wire  _rdata_T_398 = 12'h325 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_561 = _rdata_T_398 ? perfEvents_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_723 = _rdata_T_722 | _rdata_T_561; // @[Mux.scala 27:73]
  wire  _rdata_T_399 = 12'h3b9 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_141 = {{30'd0}, addr_1_9}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_143 = _rdata_T_141 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_145 = {_rdata_T_141[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_146 = cfgs__9_a[1] ? _rdata_T_143 : _rdata_T_145; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_562 = _rdata_T_399 ? _rdata_T_146 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_724 = _rdata_T_723 | _rdata_T_562; // @[Mux.scala 27:73]
  wire  _rdata_T_400 = 12'h305 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_147 = mtvec & 64'hfffffffffffffffd; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_563 = _rdata_T_400 ? _rdata_T_147 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_725 = _rdata_T_724 | _rdata_T_563; // @[Mux.scala 27:73]
  wire  _rdata_T_401 = 12'h7cc == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_148 = {{30'd0}, addr_2_4}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_150 = _rdata_T_148 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_152 = {_rdata_T_148[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_153 = cfgs_1_4_a[1] ? _rdata_T_150 : _rdata_T_152; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_564 = _rdata_T_401 ? _rdata_T_153 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_726 = _rdata_T_725 | _rdata_T_564; // @[Mux.scala 27:73]
  wire  _rdata_T_402 = 12'h7d1 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_154 = {{30'd0}, addr_2_9}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_156 = _rdata_T_154 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_158 = {_rdata_T_154[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_159 = cfgs_1_9_a[1] ? _rdata_T_156 : _rdata_T_158; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_565 = _rdata_T_402 ? _rdata_T_159 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_727 = _rdata_T_726 | _rdata_T_565; // @[Mux.scala 27:73]
  wire  _rdata_T_403 = 12'h338 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_566 = _rdata_T_403 ? perfEvents_21 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_728 = _rdata_T_727 | _rdata_T_566; // @[Mux.scala 27:73]
  wire  _rdata_T_404 = 12'h5cb == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_567 = _rdata_T_404 ? REG_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_729 = _rdata_T_728 | _rdata_T_567; // @[Mux.scala 27:73]
  wire  _rdata_T_405 = 12'h333 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_568 = _rdata_T_405 ? perfEvents_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_730 = _rdata_T_729 | _rdata_T_568; // @[Mux.scala 27:73]
  wire  _rdata_T_406 = 12'h304 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_569 = _rdata_T_406 ? mie : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_731 = _rdata_T_730 | _rdata_T_569; // @[Mux.scala 27:73]
  wire  _rdata_T_407 = 12'h33a == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_570 = _rdata_T_407 ? perfEvents_23 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_732 = _rdata_T_731 | _rdata_T_570; // @[Mux.scala 27:73]
  wire  _rdata_T_408 = 12'h3be == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_165 = {{30'd0}, addr_1_14}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_167 = _rdata_T_165 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_169 = {_rdata_T_165[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_170 = cfgs__14_a[1] ? _rdata_T_167 : _rdata_T_169; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_571 = _rdata_T_408 ? _rdata_T_170 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_733 = _rdata_T_732 | _rdata_T_571; // @[Mux.scala 27:73]
  wire  _rdata_T_409 = 12'h5d0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_572 = _rdata_T_409 ? REG_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_734 = _rdata_T_733 | _rdata_T_572; // @[Mux.scala 27:73]
  wire  _rdata_T_410 = 12'hb0b == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_573 = _rdata_T_410 ? perfCnts_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_735 = _rdata_T_734 | _rdata_T_573; // @[Mux.scala 27:73]
  wire  _rdata_T_411 = 12'h7cd == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_173 = {{30'd0}, addr_2_5}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_175 = _rdata_T_173 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_177 = {_rdata_T_173[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_178 = cfgs_1_5_a[1] ? _rdata_T_175 : _rdata_T_177; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_574 = _rdata_T_411 ? _rdata_T_178 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_736 = _rdata_T_735 | _rdata_T_574; // @[Mux.scala 27:73]
  wire  _rdata_T_412 = 12'h324 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_575 = _rdata_T_412 ? perfEvents_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_737 = _rdata_T_736 | _rdata_T_575; // @[Mux.scala 27:73]
  wire  _rdata_T_413 = 12'h3b3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_180 = {{30'd0}, addr_1_3}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_182 = _rdata_T_180 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_184 = {_rdata_T_180[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_185 = cfgs__3_a[1] ? _rdata_T_182 : _rdata_T_184; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_576 = _rdata_T_413 ? _rdata_T_185 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_738 = _rdata_T_737 | _rdata_T_576; // @[Mux.scala 27:73]
  wire  _rdata_T_414 = 12'h33f == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_577 = _rdata_T_414 ? csrevents_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_739 = _rdata_T_738 | _rdata_T_577; // @[Mux.scala 27:73]
  wire  _rdata_T_415 = 12'h5d4 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_578 = _rdata_T_415 ? REG_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_740 = _rdata_T_739 | _rdata_T_578; // @[Mux.scala 27:73]
  wire  _rdata_T_416 = 12'hb17 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_579 = _rdata_T_416 ? perfCnts_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_741 = _rdata_T_740 | _rdata_T_579; // @[Mux.scala 27:73]
  wire  _rdata_T_417 = 12'h7b1 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_580 = _rdata_T_417 ? dpc : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_742 = _rdata_T_741 | _rdata_T_580; // @[Mux.scala 27:73]
  wire  _rdata_T_418 = 12'hb08 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_581 = _rdata_T_418 ? perfCnts_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_743 = _rdata_T_742 | _rdata_T_581; // @[Mux.scala 27:73]
  wire  _rdata_T_419 = 12'h32b == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_582 = _rdata_T_419 ? perfEvents_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_744 = _rdata_T_743 | _rdata_T_582; // @[Mux.scala 27:73]
  wire  _rdata_T_420 = 12'h330 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_583 = _rdata_T_420 ? perfEvents_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_745 = _rdata_T_744 | _rdata_T_583; // @[Mux.scala 27:73]
  wire  _rdata_T_421 = 12'h143 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_584 = _rdata_T_421 ? stval : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_746 = _rdata_T_745 | _rdata_T_584; // @[Mux.scala 27:73]
  wire  _rdata_T_422 = 12'h7c9 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_194 = {{30'd0}, addr_2_1}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_196 = _rdata_T_194 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_198 = {_rdata_T_194[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_199 = cfgs_1_1_a[1] ? _rdata_T_196 : _rdata_T_198; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_585 = _rdata_T_422 ? _rdata_T_199 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_747 = _rdata_T_746 | _rdata_T_585; // @[Mux.scala 27:73]
  wire  _rdata_T_423 = 12'h301 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_586 = _rdata_T_423 ? 64'h800000000014112d : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_748 = _rdata_T_747 | _rdata_T_586; // @[Mux.scala 27:73]
  wire  _rdata_T_424 = 12'hf15 == addr_3; // @[LookupTree.scala 24:34]
  wire  _rdata_T_425 = 12'hb1a == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_588 = _rdata_T_425 ? perfCnts_23 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_750 = _rdata_T_748 | _rdata_T_588; // @[Mux.scala 27:73]
  wire  _rdata_T_426 = 12'h7a0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_203 = {{60'd0}, tselectPhy}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_589 = _rdata_T_426 ? _rdata_T_203 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_751 = _rdata_T_750 | _rdata_T_589; // @[Mux.scala 27:73]
  wire  _rdata_T_427 = 12'h5c2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_590 = _rdata_T_427 ? slvpredctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_752 = _rdata_T_751 | _rdata_T_590; // @[Mux.scala 27:73]
  wire  _rdata_T_428 = 12'h3bf == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_205 = {{30'd0}, addr_1_15}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_207 = _rdata_T_205 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_209 = {_rdata_T_205[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_210 = cfgs__15_a[1] ? _rdata_T_207 : _rdata_T_209; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_591 = _rdata_T_428 ? _rdata_T_210 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_753 = _rdata_T_752 | _rdata_T_591; // @[Mux.scala 27:73]
  wire  _rdata_T_429 = 12'h300 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_211 = mstatus & 64'h8000000f007ff9bb; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_592 = _rdata_T_429 ? _rdata_T_211 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_754 = _rdata_T_753 | _rdata_T_592; // @[Mux.scala 27:73]
  wire  _rdata_T_430 = 12'h33b == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_593 = _rdata_T_430 ? csrevents_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_755 = _rdata_T_754 | _rdata_T_593; // @[Mux.scala 27:73]
  wire  _rdata_T_431 = 12'hb13 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_594 = _rdata_T_431 ? perfCnts_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_756 = _rdata_T_755 | _rdata_T_594; // @[Mux.scala 27:73]
  wire  _rdata_T_432 = 12'h5c5 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_595 = _rdata_T_432 ? REG_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_757 = _rdata_T_756 | _rdata_T_595; // @[Mux.scala 27:73]
  wire  _rdata_T_433 = 12'h3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_596 = _rdata_T_433 ? fcsr : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_758 = _rdata_T_757 | _rdata_T_596; // @[Mux.scala 27:73]
  wire  _rdata_T_434 = 12'h5d8 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_597 = _rdata_T_434 ? REG_22 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_759 = _rdata_T_758 | _rdata_T_597; // @[Mux.scala 27:73]
  wire  _rdata_T_435 = 12'h7d5 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_217 = {{30'd0}, addr_2_13}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_219 = _rdata_T_217 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_221 = {_rdata_T_217[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_222 = cfgs_1_13_a[1] ? _rdata_T_219 : _rdata_T_221; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_598 = _rdata_T_435 ? _rdata_T_222 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_760 = _rdata_T_759 | _rdata_T_598; // @[Mux.scala 27:73]
  wire  _rdata_T_436 = 12'hb00 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_599 = _rdata_T_436 ? mcycle : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_761 = _rdata_T_760 | _rdata_T_599; // @[Mux.scala 27:73]
  wire  _rdata_T_437 = 12'h3b0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_224 = {{30'd0}, addr_1_0}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_226 = _rdata_T_224 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_228 = {_rdata_T_224[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_229 = cfgs__0_a[1] ? _rdata_T_226 : _rdata_T_228; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_600 = _rdata_T_437 ? _rdata_T_229 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_762 = _rdata_T_761 | _rdata_T_600; // @[Mux.scala 27:73]
  wire  _rdata_T_438 = 12'h32c == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_601 = _rdata_T_438 ? perfEvents_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_763 = _rdata_T_762 | _rdata_T_601; // @[Mux.scala 27:73]
  wire  _rdata_T_439 = 12'h5c0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_602 = _rdata_T_439 ? sbpctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_764 = _rdata_T_763 | _rdata_T_602; // @[Mux.scala 27:73]
  wire  _rdata_T_440 = 12'hb1e == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_603 = _rdata_T_440 ? perfCnts_27 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_765 = _rdata_T_764 | _rdata_T_603; // @[Mux.scala 27:73]
  wire  _rdata_T_441 = 12'h337 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_604 = _rdata_T_441 ? perfEvents_20 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_766 = _rdata_T_765 | _rdata_T_604; // @[Mux.scala 27:73]
  wire  _rdata_T_442 = 12'h344 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_605 = _rdata_T_442 ? _GEN_587 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_767 = _rdata_T_766 | _rdata_T_605; // @[Mux.scala 27:73]
  wire  _rdata_T_443 = 12'h3ba == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_235 = {{30'd0}, addr_1_10}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_237 = _rdata_T_235 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_239 = {_rdata_T_235[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_240 = cfgs__10_a[1] ? _rdata_T_237 : _rdata_T_239; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_606 = _rdata_T_443 ? _rdata_T_240 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_768 = _rdata_T_767 | _rdata_T_606; // @[Mux.scala 27:73]
  wire  _rdata_T_444 = 12'hb05 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_607 = _rdata_T_444 ? perfCnts_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_769 = _rdata_T_768 | _rdata_T_607; // @[Mux.scala 27:73]
  wire  _rdata_T_445 = 12'h5cc == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_608 = _rdata_T_445 ? REG_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_770 = _rdata_T_769 | _rdata_T_608; // @[Mux.scala 27:73]
  wire  _rdata_T_446 = 12'hb0f == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_609 = _rdata_T_446 ? perfCnts_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_771 = _rdata_T_770 | _rdata_T_609; // @[Mux.scala 27:73]
  wire  _rdata_T_447 = 12'h3b7 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_244 = {{30'd0}, addr_1_7}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_246 = _rdata_T_244 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_248 = {_rdata_T_244[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_249 = cfgs__7_a[1] ? _rdata_T_246 : _rdata_T_248; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_610 = _rdata_T_447 ? _rdata_T_249 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_772 = _rdata_T_771 | _rdata_T_610; // @[Mux.scala 27:73]
  wire  _rdata_T_448 = 12'h328 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_611 = _rdata_T_448 ? perfEvents_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_773 = _rdata_T_772 | _rdata_T_611; // @[Mux.scala 27:73]
  wire  _rdata_T_449 = 12'hb16 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_612 = _rdata_T_449 ? perfCnts_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_774 = _rdata_T_773 | _rdata_T_612; // @[Mux.scala 27:73]
  wire  _rdata_T_450 = 12'hb1b == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_613 = _rdata_T_450 ? perfCnts_24 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_775 = _rdata_T_774 | _rdata_T_613; // @[Mux.scala 27:73]
  wire  _rdata_T_451 = 12'h5cd == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_614 = _rdata_T_451 ? REG_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_776 = _rdata_T_775 | _rdata_T_614; // @[Mux.scala 27:73]
  wire  _rdata_T_452 = 12'hb02 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_615 = _rdata_T_452 ? minstret : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_777 = _rdata_T_776 | _rdata_T_615; // @[Mux.scala 27:73]
  wire  _rdata_T_453 = 12'hb0c == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_616 = _rdata_T_453 ? perfCnts_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_778 = _rdata_T_777 | _rdata_T_616; // @[Mux.scala 27:73]
  wire  _rdata_T_454 = 12'h303 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_617 = _rdata_T_454 ? mideleg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_779 = _rdata_T_778 | _rdata_T_617; // @[Mux.scala 27:73]
  wire  _rdata_T_455 = 12'h7ce == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_257 = {{30'd0}, addr_2_6}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_259 = _rdata_T_257 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_261 = {_rdata_T_257[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_262 = cfgs_1_6_a[1] ? _rdata_T_259 : _rdata_T_261; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_618 = _rdata_T_455 ? _rdata_T_262 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_780 = _rdata_T_779 | _rdata_T_618; // @[Mux.scala 27:73]
  wire  _rdata_T_456 = 12'h32d == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_619 = _rdata_T_456 ? perfEvents_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_781 = _rdata_T_780 | _rdata_T_619; // @[Mux.scala 27:73]
  wire  _rdata_T_457 = 12'h5c4 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_620 = _rdata_T_457 ? srnctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_782 = _rdata_T_781 | _rdata_T_620; // @[Mux.scala 27:73]
  wire  _rdata_T_458 = 12'h5c9 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_621 = _rdata_T_458 ? REG_16 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_783 = _rdata_T_782 | _rdata_T_621; // @[Mux.scala 27:73]
  wire  _rdata_T_459 = 12'h3b2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_266 = {{30'd0}, addr_1_2}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_268 = _rdata_T_266 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_270 = {_rdata_T_266[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_271 = cfgs__2_a[1] ? _rdata_T_268 : _rdata_T_270; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_622 = _rdata_T_459 ? _rdata_T_271 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_784 = _rdata_T_783 | _rdata_T_622; // @[Mux.scala 27:73]
  wire  _rdata_T_460 = 12'hb07 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_623 = _rdata_T_460 ? perfCnts_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_785 = _rdata_T_784 | _rdata_T_623; // @[Mux.scala 27:73]
  wire  _rdata_T_461 = 12'h7d4 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_273 = {{30'd0}, addr_2_12}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_275 = _rdata_T_273 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_277 = {_rdata_T_273[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_278 = cfgs_1_12_a[1] ? _rdata_T_275 : _rdata_T_277; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_624 = _rdata_T_461 ? _rdata_T_278 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_786 = _rdata_T_785 | _rdata_T_624; // @[Mux.scala 27:73]
  wire  _rdata_T_462 = 12'hf13 == addr_3; // @[LookupTree.scala 24:34]
  wire  _rdata_T_463 = 12'h5d3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_626 = _rdata_T_463 ? REG_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_788 = _rdata_T_786 | _rdata_T_626; // @[Mux.scala 27:73]
  wire  _rdata_T_464 = 12'h340 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_627 = _rdata_T_464 ? mscratch : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_789 = _rdata_T_788 | _rdata_T_627; // @[Mux.scala 27:73]
  wire  _rdata_T_465 = 12'h7ca == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_282 = {{30'd0}, addr_2_2}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_284 = _rdata_T_282 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_286 = {_rdata_T_282[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_287 = cfgs_1_2_a[1] ? _rdata_T_284 : _rdata_T_286; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_628 = _rdata_T_465 ? _rdata_T_287 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_790 = _rdata_T_789 | _rdata_T_628; // @[Mux.scala 27:73]
  wire  _rdata_T_466 = 12'h320 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_629 = _rdata_T_466 ? mcountinhibit : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_791 = _rdata_T_790 | _rdata_T_629; // @[Mux.scala 27:73]
  wire  _rdata_T_467 = 12'h7d3 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_289 = {{30'd0}, addr_2_11}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_291 = _rdata_T_289 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_293 = {_rdata_T_289[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_294 = cfgs_1_11_a[1] ? _rdata_T_291 : _rdata_T_293; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_630 = _rdata_T_467 ? _rdata_T_294 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_792 = _rdata_T_791 | _rdata_T_630; // @[Mux.scala 27:73]
  wire  _rdata_T_468 = 12'h7a5 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_631 = _rdata_T_468 ? tControlPhy : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_793 = _rdata_T_792 | _rdata_T_631; // @[Mux.scala 27:73]
  wire  _rdata_T_469 = 12'hf14 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_632 = _rdata_T_469 ? mhartid : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_794 = _rdata_T_793 | _rdata_T_632; // @[Mux.scala 27:73]
  wire  _rdata_T_470 = 12'h341 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_297 = mepc & 64'hfffffffffffffffe; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_633 = _rdata_T_470 ? _rdata_T_297 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_795 = _rdata_T_794 | _rdata_T_633; // @[Mux.scala 27:73]
  wire  _rdata_T_471 = 12'h3b6 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_298 = {{30'd0}, addr_1_6}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_300 = _rdata_T_298 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_302 = {_rdata_T_298[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_303 = cfgs__6_a[1] ? _rdata_T_300 : _rdata_T_302; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_634 = _rdata_T_471 ? _rdata_T_303 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_796 = _rdata_T_795 | _rdata_T_634; // @[Mux.scala 27:73]
  wire  _rdata_T_472 = 12'h343 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_635 = _rdata_T_472 ? mtval : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_797 = _rdata_T_796 | _rdata_T_635; // @[Mux.scala 27:73]
  wire  _rdata_T_473 = 12'h106 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_636 = _rdata_T_473 ? scounteren : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_798 = _rdata_T_797 | _rdata_T_636; // @[Mux.scala 27:73]
  wire  _rdata_T_474 = 12'h332 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_637 = _rdata_T_474 ? perfEvents_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_799 = _rdata_T_798 | _rdata_T_637; // @[Mux.scala 27:73]
  wire  _rdata_T_475 = 12'h7c2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_638 = _rdata_T_475 ? cfgMerged_1_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_800 = _rdata_T_799 | _rdata_T_638; // @[Mux.scala 27:73]
  wire  _rdata_T_476 = 12'h5c8 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_639 = _rdata_T_476 ? REG_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_801 = _rdata_T_800 | _rdata_T_639; // @[Mux.scala 27:73]
  wire  _rdata_T_477 = 12'h5d7 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_640 = _rdata_T_477 ? REG_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_802 = _rdata_T_801 | _rdata_T_640; // @[Mux.scala 27:73]
  wire  _rdata_T_478 = 12'h327 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_641 = _rdata_T_478 ? perfEvents_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_803 = _rdata_T_802 | _rdata_T_641; // @[Mux.scala 27:73]
  wire  _rdata_T_479 = 12'h33c == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_642 = _rdata_T_479 ? csrevents_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_804 = _rdata_T_803 | _rdata_T_642; // @[Mux.scala 27:73]
  wire  _rdata_T_480 = 12'h5c1 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_643 = _rdata_T_480 ? spfctl : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_805 = _rdata_T_804 | _rdata_T_643; // @[Mux.scala 27:73]
  wire  _rdata_T_481 = 12'h3bb == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_313 = {{30'd0}, addr_1_11}; // @[RegMap.scala 49:92]
  wire [63:0] _rdata_T_315 = _rdata_T_313 | 64'h1ff; // @[PMP.scala 126:10]
  wire [63:0] _rdata_T_317 = {_rdata_T_313[63:10],10'h0}; // @[Cat.scala 31:58]
  wire [63:0] _rdata_T_318 = cfgs__11_a[1] ? _rdata_T_315 : _rdata_T_317; // @[PMP.scala 112:10]
  wire [63:0] _rdata_T_644 = _rdata_T_481 ? _rdata_T_318 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_806 = _rdata_T_805 | _rdata_T_644; // @[Mux.scala 27:73]
  wire  _rdata_T_482 = 12'h3a0 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_645 = _rdata_T_482 ? cfgMerged__0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_807 = _rdata_T_806 | _rdata_T_645; // @[Mux.scala 27:73]
  wire  _rdata_T_483 = 12'hb1f == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_646 = _rdata_T_483 ? perfCnts_28 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_808 = _rdata_T_807 | _rdata_T_646; // @[Mux.scala 27:73]
  wire  _rdata_T_484 = 12'h336 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_647 = _rdata_T_484 ? perfEvents_19 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_809 = _rdata_T_808 | _rdata_T_647; // @[Mux.scala 27:73]
  wire  _rdata_T_485 = 12'h142 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_648 = _rdata_T_485 ? scause : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_810 = _rdata_T_809 | _rdata_T_648; // @[Mux.scala 27:73]
  wire  _rdata_T_486 = 12'h323 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_649 = _rdata_T_486 ? perfEvents_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_811 = _rdata_T_810 | _rdata_T_649; // @[Mux.scala 27:73]
  wire  _rdata_T_487 = 12'hb10 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_650 = _rdata_T_487 ? perfCnts_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_812 = _rdata_T_811 | _rdata_T_650; // @[Mux.scala 27:73]
  wire  _rdata_T_488 = 12'h5d2 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_651 = _rdata_T_488 ? REG_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdata_T_813 = _rdata_T_812 | _rdata_T_651; // @[Mux.scala 27:73]
  wire  _rdata_T_489 = 12'hb12 == addr_3; // @[LookupTree.scala 24:34]
  wire [63:0] _rdata_T_652 = _rdata_T_489 ? perfCnts_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] rdata = _rdata_T_813 | _rdata_T_652; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T = rdata | io_in_bits_src_0; // @[CSR.scala 788:30]
  wire [63:0] _wdata_T_1 = ~io_in_bits_src_0; // @[CSR.scala 789:33]
  wire [63:0] _wdata_T_2 = rdata & _wdata_T_1; // @[CSR.scala 789:30]
  wire [63:0] _wdata_T_3 = rdata | csri; // @[CSR.scala 791:30]
  wire [63:0] _wdata_T_4 = ~csri; // @[CSR.scala 792:33]
  wire [63:0] _wdata_T_5 = rdata & _wdata_T_4; // @[CSR.scala 792:30]
  wire  _wdata_T_6 = 7'h1 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _wdata_T_7 = 7'h2 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _wdata_T_8 = 7'h3 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _wdata_T_9 = 7'h5 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _wdata_T_10 = 7'h6 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _wdata_T_11 = 7'h7 == io_in_bits_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire [63:0] _wdata_T_12 = _wdata_T_6 ? io_in_bits_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_13 = _wdata_T_7 ? _wdata_T : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_14 = _wdata_T_8 ? _wdata_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_15 = _wdata_T_9 ? csri : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_16 = _wdata_T_10 ? _wdata_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_17 = _wdata_T_11 ? _wdata_T_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_18 = _wdata_T_12 | _wdata_T_13; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_19 = _wdata_T_18 | _wdata_T_14; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_20 = _wdata_T_19 | _wdata_T_15; // @[Mux.scala 27:73]
  wire [63:0] _wdata_T_21 = _wdata_T_20 | _wdata_T_16; // @[Mux.scala 27:73]
  wire [63:0] wdata = _wdata_T_21 | _wdata_T_17; // @[Mux.scala 27:73]
  wire  _addrInPerfCnt_T_5 = addr_3 >= 12'h320 & addr_3 <= 12'h33f; // @[CSR.scala 796:31]
  wire  _addrInPerfCnt_T_6 = addr_3 >= 12'hb00 & addr_3 <= 12'hb1f | _addrInPerfCnt_T_5; // @[CSR.scala 795:71]
  wire  _addrInPerfCnt_T_7 = addr_3 == 12'h344; // @[CSR.scala 797:10]
  wire  addrInPerfCnt = _addrInPerfCnt_T_6 | _addrInPerfCnt_T_7; // @[CSR.scala 796:58]
  wire  satpLegalMode = wdata[63:60] == 4'h0 | wdata[63:60] == 4'h8; // @[CSR.scala 801:67]
  wire  _tvmNotPermit_T = priviledgeMode == 2'h1; // @[CSR.scala 804:38]
  wire  tvmNotPermit = priviledgeMode == 2'h1 & mstatusStruct_tvm; // @[CSR.scala 804:48]
  wire  _accessPermitted_T = addr_3 == 12'h180; // @[CSR.scala 805:32]
  wire  accessPermitted = ~(addr_3 == 12'h180 & tvmNotPermit); // @[CSR.scala 805:25]
  wire  _csrio_disableSfence_T = priviledgeMode == 2'h0; // @[CSR.scala 806:57]
  wire  _wen_T_1 = io_in_bits_uop_ctrl_fuOpType[1:0] != 2'h0; // @[package.scala 203:47]
  wire  _wen_T_2 = io_in_valid & _wen_T_1; // @[CSR.scala 809:19]
  wire  wen = io_in_valid & _wen_T_1 & (addr_3 != 12'h180 | satpLegalMode); // @[CSR.scala 809:49]
  wire  dcsrPermitted_isDebugReg = addr_3[11:4] == 8'h7b; // @[CSRConst.scala 248:34]
  wire  dcsrPermitted = dcsrPermitted_isDebugReg ? debugMode : 1'h1; // @[CSRConst.scala 249:8]
  wire [1:0] modePermitted_lowestAccessPrivilegeLevel = addr_3[9:8]; // @[CSRConst.scala 237:42]
  wire  _modePermitted_T = priviledgeMode >= modePermitted_lowestAccessPrivilegeLevel; // @[CSRConst.scala 238:10]
  wire  modePermitted = _modePermitted_T & dcsrPermitted; // @[CSR.scala 812:79]
  wire [11:0] _perfcntPermitted_index_T = addr_3 & 12'h1f; // @[CSRConst.scala 242:31]
  wire [4095:0] perfcntPermitted_index = 4096'h1 << _perfcntPermitted_index_T; // @[OneHot.scala 57:35]
  wire  _perfcntPermitted_T = priviledgeMode == 2'h3; // @[CSRConst.scala 243:14]
  wire [4095:0] _GEN_590 = {{4032'd0}, mcounteren}; // @[CSRConst.scala 243:60]
  wire [4095:0] _perfcntPermitted_T_2 = perfcntPermitted_index & _GEN_590; // @[CSRConst.scala 243:60]
  wire [4095:0] _GEN_592 = {{4032'd0}, scounteren}; // @[CSRConst.scala 243:93]
  wire [4095:0] _perfcntPermitted_T_5 = _perfcntPermitted_T_2 & _GEN_592; // @[CSRConst.scala 243:93]
  wire  _perfcntPermitted_T_7 = _tvmNotPermit_T ? _perfcntPermitted_T_2 != 4096'h0 : _perfcntPermitted_T_5 != 4096'h0; // @[CSRConst.scala 243:36]
  wire  perfcntPermitted = priviledgeMode == 2'h3 | _perfcntPermitted_T_7; // @[CSRConst.scala 243:8]
  wire  _permitted_T = addrInPerfCnt ? perfcntPermitted : modePermitted; // @[CSR.scala 814:22]
  wire  permitted = _permitted_T & accessPermitted; // @[CSR.scala 814:71]
  wire  _T_272 = wen & permitted; // @[CSR.scala 816:51]
  reg [63:0] wdata_reg; // @[Reg.scala 16:16]
  reg  wen_reg; // @[RegMap.scala 55:30]
  reg  wen_reg_1; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_6_T = wdata_reg & 64'hf87fff3fcff3fcff; // @[BitUtils.scala 73:14]
  wire [63:0] _perfEvents_6_T_2 = perfEvents_6 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_6_T_3 = _perfEvents_6_T | _perfEvents_6_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_2; // @[RegMap.scala 55:30]
  wire  _addr_3_mask_3_T = cfgs_1_4_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_3_mask_3_T_2 = cfgs_1_3_l | cfgs_1_4_l & _addr_3_mask_3_T; // @[PMP.scala 61:51]
  wire  _addr_3_mask_3_T_3 = ~_addr_3_mask_3_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_3_T_8 = _addr_3_mask_3_T_3 ? wdata_reg : {{30'd0}, addr_2_3}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_25 = wen_reg_2 ? _addr_3_T_8 : {{30'd0}, addr_2_3}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_3; // @[RegMap.scala 55:30]
  reg  wen_reg_4; // @[RegMap.scala 55:30]
  reg  wen_reg_5; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_28 = wen_reg_5 ? wdata_reg : REG_21; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_6; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_29 = wen_reg_6 ? wdata_reg : REG_6; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_7; // @[RegMap.scala 55:30]
  wire [63:0] _satp_T = wdata_reg & 64'h8ffff00000ffffff; // @[BitUtils.scala 73:14]
  wire [63:0] _satp_T_2 = satp & 64'h70000fffff000000; // @[BitUtils.scala 73:37]
  wire [63:0] _satp_T_3 = _satp_T | _satp_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_8; // @[RegMap.scala 55:30]
  wire  _addr_7_mask_7_T = cfgs_1_8_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_7_mask_7_T_2 = cfgs_1_7_l | cfgs_1_8_l & _addr_7_mask_7_T; // @[PMP.scala 61:51]
  wire  _addr_7_mask_7_T_3 = ~_addr_7_mask_7_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_7_T_8 = _addr_7_mask_7_T_3 ? wdata_reg : {{30'd0}, addr_2_7}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_32 = wen_reg_8 ? _addr_7_T_8 : {{30'd0}, addr_2_7}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_9; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_11_T_2 = perfEvents_11 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_11_T_3 = _perfEvents_6_T | _perfEvents_11_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_10; // @[RegMap.scala 55:30]
  wire  _addr_1_mask_1_T = cfgs__2_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_1_mask_1_T_2 = cfgs__1_l | cfgs__2_l & _addr_1_mask_1_T; // @[PMP.scala 61:51]
  wire  _addr_1_mask_1_T_3 = ~_addr_1_mask_1_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_1_T_8 = _addr_1_mask_1_T_3 ? wdata_reg : {{30'd0}, addr_1_1}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_35 = wen_reg_10 ? _addr_1_T_8 : {{30'd0}, addr_1_1}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  wire  _wen_reg_T_22 = addr_3 == 12'h7a2; // @[RegMap.scala 55:44]
  reg  wen_reg_11; // @[RegMap.scala 55:30]
  reg  wen_reg_12; // @[RegMap.scala 55:30]
  reg  wen_reg_13; // @[RegMap.scala 55:30]
  wire  cfgMerged_1_cfg_wm_tmp_r = wdata_reg[0]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_w = wdata_reg[1]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_x = wdata_reg[2]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_a = wdata_reg[4:3]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_atomic = wdata_reg[5]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_c = wdata_reg[6]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_l = wdata_reg[7]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_0_a_T_1 = |cfgMerged_1_cfg_wm_tmp_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_0_a_T_2 = {cfgMerged_1_cfg_wm_tmp_a[1],_cfgMerged_1_cfgVec_0_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__0_a = ~cfgMerged_1_cfg_wm_tmp_l ? _cfgMerged_1_cfgVec_0_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__0_w = ~cfgMerged_1_cfg_wm_tmp_l ? cfgMerged_1_cfg_wm_tmp_w & cfgMerged_1_cfg_wm_tmp_r :
    cfgMerged_1_cfg_wm_tmp_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_1_r = wdata_reg[8]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_w = wdata_reg[9]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_x = wdata_reg[10]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_1_a = wdata_reg[12:11]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_atomic = wdata_reg[13]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_c = wdata_reg[14]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_1_l = wdata_reg[15]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_1_a_T_1 = |cfgMerged_1_cfg_wm_tmp_1_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_1_a_T_2 = {cfgMerged_1_cfg_wm_tmp_1_a[1],_cfgMerged_1_cfgVec_1_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__1_a = ~cfgMerged_1_cfg_wm_tmp_1_l ? _cfgMerged_1_cfgVec_1_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_1_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__1_w = ~cfgMerged_1_cfg_wm_tmp_1_l ? cfgMerged_1_cfg_wm_tmp_1_w &
    cfgMerged_1_cfg_wm_tmp_1_r : cfgMerged_1_cfg_wm_tmp_1_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_2_r = wdata_reg[16]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_w = wdata_reg[17]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_x = wdata_reg[18]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_2_a = wdata_reg[20:19]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_atomic = wdata_reg[21]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_c = wdata_reg[22]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_2_l = wdata_reg[23]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_2_a_T_1 = |cfgMerged_1_cfg_wm_tmp_2_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_2_a_T_2 = {cfgMerged_1_cfg_wm_tmp_2_a[1],_cfgMerged_1_cfgVec_2_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__2_a = ~cfgMerged_1_cfg_wm_tmp_2_l ? _cfgMerged_1_cfgVec_2_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_2_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__2_w = ~cfgMerged_1_cfg_wm_tmp_2_l ? cfgMerged_1_cfg_wm_tmp_2_w &
    cfgMerged_1_cfg_wm_tmp_2_r : cfgMerged_1_cfg_wm_tmp_2_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_3_r = wdata_reg[24]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_w = wdata_reg[25]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_x = wdata_reg[26]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_3_a = wdata_reg[28:27]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_atomic = wdata_reg[29]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_c = wdata_reg[30]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_3_l = wdata_reg[31]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_3_a_T_1 = |cfgMerged_1_cfg_wm_tmp_3_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_3_a_T_2 = {cfgMerged_1_cfg_wm_tmp_3_a[1],_cfgMerged_1_cfgVec_3_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__3_a = ~cfgMerged_1_cfg_wm_tmp_3_l ? _cfgMerged_1_cfgVec_3_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_3_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__3_w = ~cfgMerged_1_cfg_wm_tmp_3_l ? cfgMerged_1_cfg_wm_tmp_3_w &
    cfgMerged_1_cfg_wm_tmp_3_r : cfgMerged_1_cfg_wm_tmp_3_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_4_r = wdata_reg[32]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_w = wdata_reg[33]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_x = wdata_reg[34]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_4_a = wdata_reg[36:35]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_atomic = wdata_reg[37]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_c = wdata_reg[38]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_4_l = wdata_reg[39]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_4_a_T_1 = |cfgMerged_1_cfg_wm_tmp_4_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_4_a_T_2 = {cfgMerged_1_cfg_wm_tmp_4_a[1],_cfgMerged_1_cfgVec_4_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__4_a = ~cfgMerged_1_cfg_wm_tmp_4_l ? _cfgMerged_1_cfgVec_4_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_4_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__4_w = ~cfgMerged_1_cfg_wm_tmp_4_l ? cfgMerged_1_cfg_wm_tmp_4_w &
    cfgMerged_1_cfg_wm_tmp_4_r : cfgMerged_1_cfg_wm_tmp_4_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_5_r = wdata_reg[40]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_w = wdata_reg[41]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_x = wdata_reg[42]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_5_a = wdata_reg[44:43]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_atomic = wdata_reg[45]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_c = wdata_reg[46]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_5_l = wdata_reg[47]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_5_a_T_1 = |cfgMerged_1_cfg_wm_tmp_5_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_5_a_T_2 = {cfgMerged_1_cfg_wm_tmp_5_a[1],_cfgMerged_1_cfgVec_5_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__5_a = ~cfgMerged_1_cfg_wm_tmp_5_l ? _cfgMerged_1_cfgVec_5_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_5_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__5_w = ~cfgMerged_1_cfg_wm_tmp_5_l ? cfgMerged_1_cfg_wm_tmp_5_w &
    cfgMerged_1_cfg_wm_tmp_5_r : cfgMerged_1_cfg_wm_tmp_5_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_6_r = wdata_reg[48]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_w = wdata_reg[49]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_x = wdata_reg[50]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_6_a = wdata_reg[52:51]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_atomic = wdata_reg[53]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_c = wdata_reg[54]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_6_l = wdata_reg[55]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_6_a_T_1 = |cfgMerged_1_cfg_wm_tmp_6_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_6_a_T_2 = {cfgMerged_1_cfg_wm_tmp_6_a[1],_cfgMerged_1_cfgVec_6_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__6_a = ~cfgMerged_1_cfg_wm_tmp_6_l ? _cfgMerged_1_cfgVec_6_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_6_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__6_w = ~cfgMerged_1_cfg_wm_tmp_6_l ? cfgMerged_1_cfg_wm_tmp_6_w &
    cfgMerged_1_cfg_wm_tmp_6_r : cfgMerged_1_cfg_wm_tmp_6_w; // @[PMP.scala 94:17 95:29 96:21]
  wire  cfgMerged_1_cfg_wm_tmp_7_r = wdata_reg[56]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_w = wdata_reg[57]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_x = wdata_reg[58]; // @[PMP.scala 93:61]
  wire [1:0] cfgMerged_1_cfg_wm_tmp_7_a = wdata_reg[60:59]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_atomic = wdata_reg[61]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_c = wdata_reg[62]; // @[PMP.scala 93:61]
  wire  cfgMerged_1_cfg_wm_tmp_7_l = wdata_reg[63]; // @[PMP.scala 93:61]
  wire  _cfgMerged_1_cfgVec_7_a_T_1 = |cfgMerged_1_cfg_wm_tmp_7_a; // @[PMP.scala 97:80]
  wire [1:0] _cfgMerged_1_cfgVec_7_a_T_2 = {cfgMerged_1_cfg_wm_tmp_7_a[1],_cfgMerged_1_cfgVec_7_a_T_1}; // @[Cat.scala 31:58]
  wire [1:0] cfgMerged_1_cfgVec__7_a = ~cfgMerged_1_cfg_wm_tmp_7_l ? _cfgMerged_1_cfgVec_7_a_T_2 :
    cfgMerged_1_cfg_wm_tmp_7_a; // @[PMP.scala 94:17 95:29 97:41]
  wire  cfgMerged_1_cfgVec__7_w = ~cfgMerged_1_cfg_wm_tmp_7_l ? cfgMerged_1_cfg_wm_tmp_7_w &
    cfgMerged_1_cfg_wm_tmp_7_r : cfgMerged_1_cfg_wm_tmp_7_w; // @[PMP.scala 94:17 95:29 96:21]
  wire [7:0] cfgMerged_1_lo_lo_lo = {cfgMerged_1_cfg_wm_tmp_l,cfgMerged_1_cfg_wm_tmp_c,cfgMerged_1_cfg_wm_tmp_atomic,
    cfgMerged_1_cfgVec__0_a,cfgMerged_1_cfg_wm_tmp_x,cfgMerged_1_cfgVec__0_w,cfgMerged_1_cfg_wm_tmp_r}; // @[PMP.scala 103:12]
  wire [15:0] cfgMerged_1_lo_lo = {cfgMerged_1_cfg_wm_tmp_1_l,cfgMerged_1_cfg_wm_tmp_1_c,
    cfgMerged_1_cfg_wm_tmp_1_atomic,cfgMerged_1_cfgVec__1_a,cfgMerged_1_cfg_wm_tmp_1_x,cfgMerged_1_cfgVec__1_w,
    cfgMerged_1_cfg_wm_tmp_1_r,cfgMerged_1_lo_lo_lo}; // @[PMP.scala 103:12]
  wire [7:0] cfgMerged_1_lo_hi_lo = {cfgMerged_1_cfg_wm_tmp_2_l,cfgMerged_1_cfg_wm_tmp_2_c,
    cfgMerged_1_cfg_wm_tmp_2_atomic,cfgMerged_1_cfgVec__2_a,cfgMerged_1_cfg_wm_tmp_2_x,cfgMerged_1_cfgVec__2_w,
    cfgMerged_1_cfg_wm_tmp_2_r}; // @[PMP.scala 103:12]
  wire [31:0] cfgMerged_1_lo = {cfgMerged_1_cfg_wm_tmp_3_l,cfgMerged_1_cfg_wm_tmp_3_c,cfgMerged_1_cfg_wm_tmp_3_atomic
    ,cfgMerged_1_cfgVec__3_a,cfgMerged_1_cfg_wm_tmp_3_x,cfgMerged_1_cfgVec__3_w,cfgMerged_1_cfg_wm_tmp_3_r,
    cfgMerged_1_lo_hi_lo,cfgMerged_1_lo_lo}; // @[PMP.scala 103:12]
  wire [7:0] cfgMerged_1_hi_lo_lo = {cfgMerged_1_cfg_wm_tmp_4_l,cfgMerged_1_cfg_wm_tmp_4_c,
    cfgMerged_1_cfg_wm_tmp_4_atomic,cfgMerged_1_cfgVec__4_a,cfgMerged_1_cfg_wm_tmp_4_x,cfgMerged_1_cfgVec__4_w,
    cfgMerged_1_cfg_wm_tmp_4_r}; // @[PMP.scala 103:12]
  wire [15:0] cfgMerged_1_hi_lo = {cfgMerged_1_cfg_wm_tmp_5_l,cfgMerged_1_cfg_wm_tmp_5_c,
    cfgMerged_1_cfg_wm_tmp_5_atomic,cfgMerged_1_cfgVec__5_a,cfgMerged_1_cfg_wm_tmp_5_x,cfgMerged_1_cfgVec__5_w,
    cfgMerged_1_cfg_wm_tmp_5_r,cfgMerged_1_hi_lo_lo}; // @[PMP.scala 103:12]
  wire [7:0] cfgMerged_1_hi_hi_lo = {cfgMerged_1_cfg_wm_tmp_6_l,cfgMerged_1_cfg_wm_tmp_6_c,
    cfgMerged_1_cfg_wm_tmp_6_atomic,cfgMerged_1_cfgVec__6_a,cfgMerged_1_cfg_wm_tmp_6_x,cfgMerged_1_cfgVec__6_w,
    cfgMerged_1_cfg_wm_tmp_6_r}; // @[PMP.scala 103:12]
  wire [63:0] _cfgMerged_1_T_20 = {cfgMerged_1_cfg_wm_tmp_7_l,cfgMerged_1_cfg_wm_tmp_7_c,
    cfgMerged_1_cfg_wm_tmp_7_atomic,cfgMerged_1_cfgVec__7_a,cfgMerged_1_cfg_wm_tmp_7_x,cfgMerged_1_cfgVec__7_w,
    cfgMerged_1_cfg_wm_tmp_7_r,cfgMerged_1_hi_hi_lo,cfgMerged_1_hi_lo,cfgMerged_1_lo}; // @[PMP.scala 103:12]
  reg  wen_reg_14; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_26_T_2 = csrevents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_26_T_3 = _perfEvents_6_T | _perfEvents_26_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_15; // @[RegMap.scala 55:30]
  reg  wen_reg_16; // @[RegMap.scala 55:30]
  reg  wen_reg_17; // @[RegMap.scala 55:30]
  reg  wen_reg_18; // @[RegMap.scala 55:30]
  reg  wen_reg_19; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_103 = wen_reg_19 ? wdata_reg : REG_11; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_20; // @[RegMap.scala 55:30]
  wire  _addr_0_mask_0_T = cfgs_1_1_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_0_mask_0_T_2 = cfgs_1_0_l | cfgs_1_1_l & _addr_0_mask_0_T; // @[PMP.scala 61:51]
  wire  _addr_0_mask_0_T_3 = ~_addr_0_mask_0_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_0_T_8 = _addr_0_mask_0_T_3 ? wdata_reg : {{30'd0}, addr_2_0}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_105 = wen_reg_20 ? _addr_0_T_8 : {{30'd0}, addr_2_0}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_21; // @[RegMap.scala 55:30]
  wire  _addr_5_mask_5_T = cfgs__6_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_5_mask_5_T_2 = cfgs__5_l | cfgs__6_l & _addr_5_mask_5_T; // @[PMP.scala 61:51]
  wire  _addr_5_mask_5_T_3 = ~_addr_5_mask_5_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_5_T_8 = _addr_5_mask_5_T_3 ? wdata_reg : {{30'd0}, addr_1_5}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_107 = wen_reg_21 ? _addr_5_T_8 : {{30'd0}, addr_1_5}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_22; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_14_T_2 = perfEvents_14 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_14_T_3 = _perfEvents_6_T | _perfEvents_14_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_23; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_109 = wen_reg_23 ? wdata_reg : REG_18; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  wire  _wen_reg_T_48 = addr_3 == 12'h302; // @[RegMap.scala 55:44]
  reg  wen_reg_24; // @[RegMap.scala 55:30]
  wire [63:0] _medeleg_T = wdata_reg & 64'hb3ff; // @[BitUtils.scala 73:14]
  wire [63:0] _medeleg_T_2 = medeleg & 64'hffffffffffff4c00; // @[BitUtils.scala 73:37]
  wire [63:0] _medeleg_T_3 = _medeleg_T | _medeleg_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_25; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_111 = wen_reg_25 ? wdata_reg : REG_13; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_26; // @[RegMap.scala 55:30]
  wire [63:0] _stvec_T = wdata_reg & 64'hfffffffffffffffd; // @[BitUtils.scala 73:14]
  wire [63:0] _stvec_T_2 = stvec & 64'h2; // @[BitUtils.scala 73:37]
  wire [63:0] _stvec_T_3 = _stvec_T | _stvec_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_27; // @[RegMap.scala 55:30]
  reg  wen_reg_28; // @[RegMap.scala 55:30]
  wire  _addr_15_mask_15_T = ~cfgs_1_15_l; // @[PMP.scala 276:17]
  wire [63:0] _addr_15_T_5 = _addr_15_mask_15_T ? wdata_reg : {{30'd0}, addr_2_15}; // @[PMP.scala 277:8]
  wire [63:0] _GEN_115 = wen_reg_28 ? _addr_15_T_5 : {{30'd0}, addr_2_15}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_29; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_116 = wen_reg_29 ? wdata_reg : REG_20; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_30; // @[RegMap.scala 55:30]
  wire [63:0] _sepc_T = wdata_reg & 64'hfffffffffffffffe; // @[BitUtils.scala 73:14]
  wire [63:0] _sepc_T_2 = sepc & 64'h1; // @[BitUtils.scala 73:37]
  wire [63:0] _sepc_T_3 = _sepc_T | _sepc_T_2; // @[BitUtils.scala 73:26]
  wire [63:0] _GEN_117 = wen_reg_30 ? _sepc_T_3 : sepc; // @[CSR.scala 465:21 RegMap.scala 56:{24,28}]
  reg  wen_reg_31; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_118 = wen_reg_31 ? wdata_reg : mcause; // @[CSR.scala 352:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_32; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_3_T_2 = perfEvents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_3_T_3 = _perfEvents_6_T | _perfEvents_3_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_33; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_18_T_2 = perfEvents_18 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_18_T_3 = _perfEvents_6_T | _perfEvents_18_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_34; // @[RegMap.scala 55:30]
  reg  wen_reg_35; // @[RegMap.scala 55:30]
  wire  _addr_12_mask_12_T = cfgs__13_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_12_mask_12_T_2 = cfgs__12_l | cfgs__13_l & _addr_12_mask_12_T; // @[PMP.scala 61:51]
  wire  _addr_12_mask_12_T_3 = ~_addr_12_mask_12_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_12_T_8 = _addr_12_mask_12_T_3 ? wdata_reg : {{30'd0}, addr_1_12}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_123 = wen_reg_35 ? _addr_12_T_8 : {{30'd0}, addr_1_12}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_36; // @[RegMap.scala 55:30]
  reg  wen_reg_37; // @[RegMap.scala 55:30]
  wire  _addr_10_mask_10_T = cfgs_1_11_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_10_mask_10_T_2 = cfgs_1_10_l | cfgs_1_11_l & _addr_10_mask_10_T; // @[PMP.scala 61:51]
  wire  _addr_10_mask_10_T_3 = ~_addr_10_mask_10_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_10_T_8 = _addr_10_mask_10_T_3 ? wdata_reg : {{30'd0}, addr_2_10}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_126 = wen_reg_37 ? _addr_10_T_8 : {{30'd0}, addr_2_10}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  wire  _wen_reg_T_76 = addr_3 == 12'h1; // @[RegMap.scala 55:44]
  reg  wen_reg_38; // @[RegMap.scala 55:30]
  wire [55:0] fcsr_fcsrOld_reserved = fcsr[63:8]; // @[CSR.scala 603:32]
  wire [4:0] fcsr_fcsrNew_fflags = wdata_reg[4:0]; // @[CSR.scala 609:30]
  wire [63:0] _fcsr_T_4 = {fcsr_fcsrOld_reserved,fcsr[7:5],fcsr_fcsrNew_fflags}; // @[CSR.scala 611:13]
  reg  wen_reg_39; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_7_T_2 = perfEvents_7 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_7_T_3 = _perfEvents_6_T | _perfEvents_7_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_40; // @[RegMap.scala 55:30]
  reg  wen_reg_41; // @[RegMap.scala 55:30]
  wire  _addr_8_mask_8_T = cfgs_1_9_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_8_mask_8_T_2 = cfgs_1_8_l | cfgs_1_9_l & _addr_8_mask_8_T; // @[PMP.scala 61:51]
  wire  _addr_8_mask_8_T_3 = ~_addr_8_mask_8_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_8_T_8 = _addr_8_mask_8_T_3 ? wdata_reg : {{30'd0}, addr_2_8}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_132 = wen_reg_41 ? _addr_8_T_8 : {{30'd0}, addr_2_8}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_42; // @[RegMap.scala 55:30]
  wire  _addr_13_mask_13_T = cfgs__14_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_13_mask_13_T_2 = cfgs__13_l | cfgs__14_l & _addr_13_mask_13_T; // @[PMP.scala 61:51]
  wire  _addr_13_mask_13_T_3 = ~_addr_13_mask_13_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_13_T_8 = _addr_13_mask_13_T_3 ? wdata_reg : {{30'd0}, addr_1_13}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_134 = wen_reg_42 ? _addr_13_T_8 : {{30'd0}, addr_1_13}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_43; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_22_T_2 = perfEvents_22 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_22_T_3 = _perfEvents_6_T | _perfEvents_22_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_44; // @[RegMap.scala 55:30]
  wire  _addr_8_mask_8_T_10 = cfgs__9_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_8_mask_8_T_12 = cfgs__8_l | cfgs__9_l & _addr_8_mask_8_T_10; // @[PMP.scala 61:51]
  wire  _addr_8_mask_8_T_13 = ~_addr_8_mask_8_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_8_T_17 = _addr_8_mask_8_T_13 ? wdata_reg : {{30'd0}, addr_1_8}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_137 = wen_reg_44 ? _addr_8_T_17 : {{30'd0}, addr_1_8}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_45; // @[RegMap.scala 55:30]
  wire [63:0] _mie_T = wdata_reg & sieMask; // @[BitUtils.scala 73:14]
  wire [63:0] _mie_T_1 = ~sieMask; // @[BitUtils.scala 73:40]
  wire [63:0] _mie_T_2 = mie & _mie_T_1; // @[BitUtils.scala 73:37]
  wire [63:0] _mie_T_3 = _mie_T | _mie_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_46; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_17_T_2 = perfEvents_17 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_17_T_3 = _perfEvents_6_T | _perfEvents_17_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_47; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_140 = wen_reg_47 ? wdata_reg : REG_14; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_48; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_12_T_2 = perfEvents_12 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_12_T_3 = _perfEvents_6_T | _perfEvents_12_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_49; // @[RegMap.scala 55:30]
  wire [63:0] _dcsr_T = wdata_reg & 64'hb817; // @[BitUtils.scala 73:14]
  wire [63:0] _dcsr_T_2 = _rdata_T_108 & 64'hffffffffffff47e8; // @[BitUtils.scala 73:37]
  wire [63:0] _dcsr_T_3 = _dcsr_T | _dcsr_T_2; // @[BitUtils.scala 73:26]
  wire [1:0] dcsr_dcsrOld_prv = _dcsr_T_3[1:0]; // @[CSR.scala 255:41]
  wire  _dcsr_dcsrNew_T_2 = dcsr_dcsrOld_prv[0] | dcsr_dcsrOld_prv[1]; // @[CSR.scala 256:42]
  wire [63:0] _GEN_594 = {{63'd0}, _dcsr_dcsrNew_T_2}; // @[CSR.scala 256:24]
  wire [63:0] dcsr_dcsrNew = _dcsr_T_3 | _GEN_594; // @[CSR.scala 256:24]
  wire [63:0] _GEN_142 = wen_reg_49 ? dcsr_dcsrNew : {{32'd0}, dcsr}; // @[CSR.scala 221:21 RegMap.scala 56:{24,28}]
  reg  wen_reg_50; // @[RegMap.scala 55:30]
  reg  wen_reg_51; // @[RegMap.scala 55:30]
  reg  wen_reg_52; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_27_T_2 = csrevents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_27_T_3 = _perfEvents_6_T | _perfEvents_27_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_53; // @[RegMap.scala 55:30]
  reg  wen_reg_54; // @[RegMap.scala 55:30]
  wire  _addr_4_mask_4_T = cfgs__5_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_4_mask_4_T_2 = cfgs__4_l | cfgs__5_l & _addr_4_mask_4_T; // @[PMP.scala 61:51]
  wire  _addr_4_mask_4_T_3 = ~_addr_4_mask_4_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_4_T_8 = _addr_4_mask_4_T_3 ? wdata_reg : {{30'd0}, addr_1_4}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_148 = wen_reg_54 ? _addr_4_T_8 : {{30'd0}, addr_1_4}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  wire  _wen_reg_T_110 = addr_3 == 12'h7a1; // @[RegMap.scala 55:44]
  reg  wen_reg_55; // @[RegMap.scala 55:30]
  wire  tdata1Phy_wdata_wire_u = wdata_reg[3]; // @[CSR.scala 283:45]
  wire  tdata1Phy_wdata_wire_s = wdata_reg[4]; // @[CSR.scala 283:45]
  wire  tdata1Phy_wdata_wire_m = wdata_reg[6]; // @[CSR.scala 283:45]
  wire [3:0] tdata1Phy_wdata_wire_matchType = wdata_reg[10:7]; // @[CSR.scala 283:45]
  wire  tdata1Phy_wdata_wire_chain = wdata_reg[11]; // @[CSR.scala 283:45]
  wire [3:0] tdata1Phy_wdata_wire_action = wdata_reg[15:12]; // @[CSR.scala 283:45]
  wire  tdata1Phy_wdata_wire_select = wdata_reg[19]; // @[CSR.scala 283:45]
  wire  _tdata1Phy_tdata1_new_select_T_7 = 4'h3 == tselectPhy | 4'h2 == tselectPhy; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_9 = 4'h4 == tselectPhy ? 2'h2 : {{1'd0}, _tdata1Phy_tdata1_new_select_T_7}; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_11 = 4'h5 == tselectPhy ? 2'h2 : _tdata1Phy_tdata1_new_select_T_9; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_13 = 4'h6 == tselectPhy ? 2'h0 : _tdata1Phy_tdata1_new_select_T_11; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_15 = 4'h7 == tselectPhy ? 2'h1 : _tdata1Phy_tdata1_new_select_T_13; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_17 = 4'h8 == tselectPhy ? 2'h0 : _tdata1Phy_tdata1_new_select_T_15; // @[Mux.scala 81:58]
  wire [1:0] _tdata1Phy_tdata1_new_select_T_19 = 4'h9 == tselectPhy ? 2'h2 : _tdata1Phy_tdata1_new_select_T_17; // @[Mux.scala 81:58]
  wire  _tdata1Phy_tdata1_new_select_T_20 = _tdata1Phy_tdata1_new_select_T_19 == 2'h0; // @[CSR.scala 291:50]
  wire  tdata1Phy_tdata1_new_select = _tdata1Phy_tdata1_new_select_T_19 == 2'h0 & tdata1Phy_wdata_wire_select; // @[CSR.scala 291:65]
  wire [3:0] tdata1Phy_tdata1_new_action = tdata1Phy_wdata_wire_action <= 4'h1 ? tdata1Phy_wdata_wire_action : _GEN_9[15
    :12]; // @[CSR.scala 292:35 295:25]
  wire  tdata1Phy_tdata1_new_chain = ~tselectPhy[0] & tdata1Phy_wdata_wire_chain; // @[CSR.scala 300:40]
  wire [3:0] tdata1Phy_tdata1_new_matchType = tdata1Phy_wdata_wire_matchType != 4'h0 & tdata1Phy_wdata_wire_matchType
     != 4'h2 & tdata1Phy_wdata_wire_matchType != 4'h3 ? _GEN_9[10:7] : tdata1Phy_wdata_wire_matchType; // @[CSR.scala 301:104 302:28]
  wire  _tdata1Phy_tdata1_new_sizehi_T_21 = tdata1Phy_wdata_wire_select & _tdata1Phy_tdata1_new_select_T_20; // @[CSR.scala 304:48]
  wire  _tdata1Phy_tdata1_new_sizehi_T_22 = tdata1Phy_wdata_wire_select & _tdata1Phy_tdata1_new_select_T_20 ? 1'h0 : 1'h1
    ; // @[CSR.scala 304:29]
  wire [1:0] tdata1Phy_tdata1_new_sizelo = _tdata1Phy_tdata1_new_sizehi_T_21 ? 2'h3 : 2'h1; // @[CSR.scala 305:28]
  wire  tdata1Phy_tdata1_new_store = _tdata1Phy_tdata1_new_select_T_19 == 2'h1; // @[CSR.scala 307:48]
  wire  tdata1Phy_tdata1_new_load = _tdata1Phy_tdata1_new_select_T_19 == 2'h2; // @[CSR.scala 308:47]
  wire [1:0] tdata1Phy_tdata1_new_sizehi = {{1'd0}, _tdata1Phy_tdata1_new_sizehi_T_22};
  wire [51:0] tdata1Phy_hi = {_GEN_9[63:60],1'h0,6'h0,30'h0,tdata1Phy_tdata1_new_sizehi,1'h0,tdata1Phy_tdata1_new_select
    ,1'h0,tdata1Phy_tdata1_new_sizelo,tdata1Phy_tdata1_new_action}; // @[CSR.scala 309:16]
  wire [63:0] _tdata1Phy_T_15 = {tdata1Phy_hi,tdata1Phy_tdata1_new_chain,tdata1Phy_tdata1_new_matchType,
    tdata1Phy_wdata_wire_m,1'h0,tdata1Phy_wdata_wire_s,tdata1Phy_wdata_wire_u,_tdata1Phy_tdata1_new_select_T_20,
    tdata1Phy_tdata1_new_store,tdata1Phy_tdata1_new_load}; // @[CSR.scala 309:16]
  reg  wen_reg_56; // @[RegMap.scala 55:30]
  wire  _wen_reg_T_114 = addr_3 == 12'h7b2; // @[RegMap.scala 55:44]
  reg  wen_reg_57; // @[RegMap.scala 55:30]
  reg  wen_reg_58; // @[RegMap.scala 55:30]
  wire [63:0] _mstatus_T = wdata_reg & 64'hc6122; // @[BitUtils.scala 73:14]
  wire [63:0] _mstatus_T_2 = mstatus & 64'hfffffffffff39edd; // @[BitUtils.scala 73:37]
  wire [63:0] _mstatus_T_3 = _mstatus_T | _mstatus_T_2; // @[BitUtils.scala 73:26]
  wire [1:0] mstatus_mstatusOld_fs = _mstatus_T_3[14:13]; // @[CSR.scala 408:47]
  wire [1:0] mstatus_mstatusOld_xs = _mstatus_T_3[16:15]; // @[CSR.scala 408:47]
  wire  _mstatus_mstatusNew_T_2 = mstatus_mstatusOld_xs == 2'h3 | mstatus_mstatusOld_fs == 2'h3; // @[CSR.scala 409:52]
  wire [63:0] mstatus_mstatusNew = {_mstatus_mstatusNew_T_2,_mstatus_T_3[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_175 = wen_reg_58 ? mstatus_mstatusNew : mstatus; // @[CSR.scala 384:24 RegMap.scala 56:{24,28}]
  reg  wen_reg_59; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_176 = wen_reg_59 ? wdata_reg : REG_17; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_60; // @[RegMap.scala 55:30]
  reg  wen_reg_61; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_178 = wen_reg_61 ? wdata_reg : REG_3; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_62; // @[RegMap.scala 55:30]
  reg  wen_reg_63; // @[RegMap.scala 55:30]
  reg  wen_reg_64; // @[RegMap.scala 55:30]
  wire  _addr_14_mask_14_T = cfgs_1_15_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_14_mask_14_T_2 = cfgs_1_14_l | cfgs_1_15_l & _addr_14_mask_14_T; // @[PMP.scala 61:51]
  wire  _addr_14_mask_14_T_3 = ~_addr_14_mask_14_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_14_T_8 = _addr_14_mask_14_T_3 ? wdata_reg : {{30'd0}, addr_2_14}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_182 = wen_reg_64 ? _addr_14_T_8 : {{30'd0}, addr_2_14}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_65; // @[RegMap.scala 55:30]
  wire  _wen_reg_T_132 = addr_3 == 12'h2; // @[RegMap.scala 55:44]
  reg  wen_reg_66; // @[RegMap.scala 55:30]
  wire [2:0] fcsr_fcsrOld_1_frm = wdata_reg[2:0]; // @[CSR.scala 597:25]
  wire [63:0] _fcsr_T_9 = {fcsr_fcsrOld_reserved,fcsr_fcsrOld_1_frm,fcsr[4:0]}; // @[CSR.scala 598:13]
  wire  _GEN_224 = wen_reg_66 | wen_reg_38; // @[RegMap.scala 56:24 CSR.scala 596:25]
  reg  wen_reg_67; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_2_T_2 = perfEvents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_2_T_3 = _perfEvents_6_T | _perfEvents_2_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_68; // @[RegMap.scala 55:30]
  wire  _addr_9_mask_9_T = cfgs__10_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_9_mask_9_T_2 = cfgs__9_l | cfgs__10_l & _addr_9_mask_9_T; // @[PMP.scala 61:51]
  wire  _addr_9_mask_9_T_3 = ~_addr_9_mask_9_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_9_T_8 = _addr_9_mask_9_T_3 ? wdata_reg : {{30'd0}, addr_1_9}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_228 = wen_reg_68 ? _addr_9_T_8 : {{30'd0}, addr_1_9}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_69; // @[RegMap.scala 55:30]
  wire [63:0] _mtvec_T_2 = mtvec & 64'h2; // @[BitUtils.scala 73:37]
  wire [63:0] _mtvec_T_3 = _stvec_T | _mtvec_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_70; // @[RegMap.scala 55:30]
  wire  _addr_4_mask_4_T_10 = cfgs_1_5_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_4_mask_4_T_12 = cfgs_1_4_l | cfgs_1_5_l & _addr_4_mask_4_T_10; // @[PMP.scala 61:51]
  wire  _addr_4_mask_4_T_13 = ~_addr_4_mask_4_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_4_T_17 = _addr_4_mask_4_T_13 ? wdata_reg : {{30'd0}, addr_2_4}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_231 = wen_reg_70 ? _addr_4_T_17 : {{30'd0}, addr_2_4}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_71; // @[RegMap.scala 55:30]
  wire  _addr_9_mask_9_T_10 = cfgs_1_10_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_9_mask_9_T_12 = cfgs_1_9_l | cfgs_1_10_l & _addr_9_mask_9_T_10; // @[PMP.scala 61:51]
  wire  _addr_9_mask_9_T_13 = ~_addr_9_mask_9_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_9_T_17 = _addr_9_mask_9_T_13 ? wdata_reg : {{30'd0}, addr_2_9}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_233 = wen_reg_71 ? _addr_9_T_17 : {{30'd0}, addr_2_9}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_72; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_21_T_2 = perfEvents_21 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_21_T_3 = _perfEvents_6_T | _perfEvents_21_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_73; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_235 = wen_reg_73 ? wdata_reg : REG_7; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_74; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_16_T_2 = perfEvents_16 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_16_T_3 = _perfEvents_6_T | _perfEvents_16_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_75; // @[RegMap.scala 55:30]
  reg  wen_reg_76; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_23_T_2 = perfEvents_23 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_23_T_3 = _perfEvents_6_T | _perfEvents_23_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_77; // @[RegMap.scala 55:30]
  wire  _addr_14_mask_14_T_10 = cfgs__15_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_14_mask_14_T_12 = cfgs__14_l | cfgs__15_l & _addr_14_mask_14_T_10; // @[PMP.scala 61:51]
  wire  _addr_14_mask_14_T_13 = ~_addr_14_mask_14_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_14_T_17 = _addr_14_mask_14_T_13 ? wdata_reg : {{30'd0}, addr_1_14}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_240 = wen_reg_77 ? _addr_14_T_17 : {{30'd0}, addr_1_14}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_78; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_241 = wen_reg_78 ? wdata_reg : REG_15; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_79; // @[RegMap.scala 55:30]
  reg  wen_reg_80; // @[RegMap.scala 55:30]
  wire  _addr_5_mask_5_T_10 = cfgs_1_6_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_5_mask_5_T_12 = cfgs_1_5_l | cfgs_1_6_l & _addr_5_mask_5_T_10; // @[PMP.scala 61:51]
  wire  _addr_5_mask_5_T_13 = ~_addr_5_mask_5_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_5_T_17 = _addr_5_mask_5_T_13 ? wdata_reg : {{30'd0}, addr_2_5}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_244 = wen_reg_80 ? _addr_5_T_17 : {{30'd0}, addr_2_5}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_81; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_1_T_2 = perfEvents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_1_T_3 = _perfEvents_6_T | _perfEvents_1_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_82; // @[RegMap.scala 55:30]
  wire  _addr_3_mask_3_T_10 = cfgs__4_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_3_mask_3_T_12 = cfgs__3_l | cfgs__4_l & _addr_3_mask_3_T_10; // @[PMP.scala 61:51]
  wire  _addr_3_mask_3_T_13 = ~_addr_3_mask_3_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_3_T_17 = _addr_3_mask_3_T_13 ? wdata_reg : {{30'd0}, addr_1_3}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_247 = wen_reg_82 ? _addr_3_T_17 : {{30'd0}, addr_1_3}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_83; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_28_T_2 = csrevents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_28_T_3 = _perfEvents_6_T | _perfEvents_28_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_84; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_249 = wen_reg_84 ? wdata_reg : REG_19; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_85; // @[RegMap.scala 55:30]
  reg  wen_reg_86; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_251 = wen_reg_86 ? wdata_reg : dpc; // @[CSR.scala 222:16 RegMap.scala 56:{24,28}]
  reg  wen_reg_87; // @[RegMap.scala 55:30]
  reg  wen_reg_88; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_8_T_2 = perfEvents_8 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_8_T_3 = _perfEvents_6_T | _perfEvents_8_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_89; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_13_T_2 = perfEvents_13 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_13_T_3 = _perfEvents_6_T | _perfEvents_13_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_90; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_255 = wen_reg_90 ? wdata_reg : stval; // @[CSR.scala 469:18 RegMap.scala 56:{24,28}]
  reg  wen_reg_91; // @[RegMap.scala 55:30]
  wire  _addr_1_mask_1_T_10 = cfgs_1_2_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_1_mask_1_T_12 = cfgs_1_1_l | cfgs_1_2_l & _addr_1_mask_1_T_10; // @[PMP.scala 61:51]
  wire  _addr_1_mask_1_T_13 = ~_addr_1_mask_1_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_1_T_17 = _addr_1_mask_1_T_13 ? wdata_reg : {{30'd0}, addr_2_1}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_257 = wen_reg_91 ? _addr_1_T_17 : {{30'd0}, addr_2_1}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_92; // @[RegMap.scala 55:30]
  reg  wen_reg_93; // @[RegMap.scala 55:30]
  reg  wen_reg_94; // @[RegMap.scala 55:30]
  reg  wen_reg_95; // @[RegMap.scala 55:30]
  wire  _addr_15_mask_15_T_7 = ~cfgs__15_l; // @[PMP.scala 276:17]
  wire [63:0] _addr_15_T_11 = _addr_15_mask_15_T_7 ? wdata_reg : {{30'd0}, addr_1_15}; // @[PMP.scala 277:8]
  wire [63:0] _GEN_262 = wen_reg_95 ? _addr_15_T_11 : {{30'd0}, addr_1_15}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_96; // @[RegMap.scala 55:30]
  wire [63:0] _mstatus_T_4 = wdata_reg & 64'h80000000007e79bb; // @[BitUtils.scala 73:14]
  wire [63:0] _mstatus_T_6 = mstatus & 64'h7fffffffff818644; // @[BitUtils.scala 73:37]
  wire [63:0] _mstatus_T_7 = _mstatus_T_4 | _mstatus_T_6; // @[BitUtils.scala 73:26]
  wire [1:0] mstatus_mstatusOld_1_fs = _mstatus_T_7[14:13]; // @[CSR.scala 408:47]
  wire [1:0] mstatus_mstatusOld_1_xs = _mstatus_T_7[16:15]; // @[CSR.scala 408:47]
  wire  _mstatus_mstatusNew_T_6 = mstatus_mstatusOld_1_xs == 2'h3 | mstatus_mstatusOld_1_fs == 2'h3; // @[CSR.scala 409:52]
  wire [63:0] mstatus_mstatusNew_1 = {_mstatus_mstatusNew_T_6,_mstatus_T_7[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_263 = wen_reg_96 ? mstatus_mstatusNew_1 : _GEN_175; // @[RegMap.scala 56:{24,28}]
  reg  wen_reg_97; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_24_T_2 = csrevents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_24_T_3 = _perfEvents_6_T | _perfEvents_24_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_98; // @[RegMap.scala 55:30]
  reg  wen_reg_99; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_266 = wen_reg_99 ? wdata_reg : REG_2; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_100; // @[RegMap.scala 55:30]
  wire [63:0] _fcsr_T_20 = {fcsr_fcsrOld_reserved,wdata_reg[7:5],fcsr_fcsrNew_fflags}; // @[Cat.scala 31:58]
  wire  _GEN_267 = wen_reg_100 | _GEN_224; // @[RegMap.scala 56:24 CSR.scala 617:25]
  reg  wen_reg_101; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_269 = wen_reg_101 ? wdata_reg : REG_22; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_102; // @[RegMap.scala 55:30]
  wire  _addr_13_mask_13_T_10 = cfgs_1_14_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_13_mask_13_T_12 = cfgs_1_13_l | cfgs_1_14_l & _addr_13_mask_13_T_10; // @[PMP.scala 61:51]
  wire  _addr_13_mask_13_T_13 = ~_addr_13_mask_13_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_13_T_17 = _addr_13_mask_13_T_13 ? wdata_reg : {{30'd0}, addr_2_13}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_271 = wen_reg_102 ? _addr_13_T_17 : {{30'd0}, addr_2_13}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_103; // @[RegMap.scala 55:30]
  reg  wen_reg_104; // @[RegMap.scala 55:30]
  wire  _addr_0_mask_0_T_10 = cfgs__1_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_0_mask_0_T_12 = cfgs__0_l | cfgs__1_l & _addr_0_mask_0_T_10; // @[PMP.scala 61:51]
  wire  _addr_0_mask_0_T_13 = ~_addr_0_mask_0_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_0_T_17 = _addr_0_mask_0_T_13 ? wdata_reg : {{30'd0}, addr_1_0}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_274 = wen_reg_104 ? _addr_0_T_17 : {{30'd0}, addr_1_0}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_105; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_9_T_2 = perfEvents_9 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_9_T_3 = _perfEvents_6_T | _perfEvents_9_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_106; // @[RegMap.scala 55:30]
  reg  wen_reg_107; // @[RegMap.scala 55:30]
  reg  wen_reg_108; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_20_T_2 = perfEvents_20 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_20_T_3 = _perfEvents_6_T | _perfEvents_20_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_109; // @[RegMap.scala 55:30]
  wire  _addr_10_mask_10_T_10 = cfgs__11_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_10_mask_10_T_12 = cfgs__10_l | cfgs__11_l & _addr_10_mask_10_T_10; // @[PMP.scala 61:51]
  wire  _addr_10_mask_10_T_13 = ~_addr_10_mask_10_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_10_T_17 = _addr_10_mask_10_T_13 ? wdata_reg : {{30'd0}, addr_1_10}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_280 = wen_reg_109 ? _addr_10_T_17 : {{30'd0}, addr_1_10}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_110; // @[RegMap.scala 55:30]
  reg  wen_reg_111; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_282 = wen_reg_111 ? wdata_reg : REG_5; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_112; // @[RegMap.scala 55:30]
  reg  wen_reg_113; // @[RegMap.scala 55:30]
  wire  _addr_7_mask_7_T_10 = cfgs__8_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_7_mask_7_T_12 = cfgs__7_l | cfgs__8_l & _addr_7_mask_7_T_10; // @[PMP.scala 61:51]
  wire  _addr_7_mask_7_T_13 = ~_addr_7_mask_7_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_7_T_17 = _addr_7_mask_7_T_13 ? wdata_reg : {{30'd0}, addr_1_7}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_285 = wen_reg_113 ? _addr_7_T_17 : {{30'd0}, addr_1_7}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_114; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_5_T_2 = perfEvents_5 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_5_T_3 = _perfEvents_6_T | _perfEvents_5_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_115; // @[RegMap.scala 55:30]
  reg  wen_reg_116; // @[RegMap.scala 55:30]
  reg  wen_reg_117; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_289 = wen_reg_117 ? wdata_reg : REG_9; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_118; // @[RegMap.scala 55:30]
  reg  wen_reg_119; // @[RegMap.scala 55:30]
  reg  wen_reg_120; // @[RegMap.scala 55:30]
  wire [63:0] _mideleg_T = wdata_reg & 64'h222; // @[BitUtils.scala 73:14]
  wire [63:0] _mideleg_T_2 = mideleg & 64'hfffffffffffffddd; // @[BitUtils.scala 73:37]
  wire [63:0] _mideleg_T_3 = _mideleg_T | _mideleg_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_121; // @[RegMap.scala 55:30]
  wire  _addr_6_mask_6_T = cfgs_1_7_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_6_mask_6_T_2 = cfgs_1_6_l | cfgs_1_7_l & _addr_6_mask_6_T; // @[PMP.scala 61:51]
  wire  _addr_6_mask_6_T_3 = ~_addr_6_mask_6_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_6_T_8 = _addr_6_mask_6_T_3 ? wdata_reg : {{30'd0}, addr_2_6}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_294 = wen_reg_121 ? _addr_6_T_8 : {{30'd0}, addr_2_6}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_122; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_10_T_2 = perfEvents_10 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_10_T_3 = _perfEvents_6_T | _perfEvents_10_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_123; // @[RegMap.scala 55:30]
  reg  wen_reg_124; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_297 = wen_reg_124 ? wdata_reg : REG_16; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_125; // @[RegMap.scala 55:30]
  wire  _addr_2_mask_2_T = cfgs__3_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_2_mask_2_T_2 = cfgs__2_l | cfgs__3_l & _addr_2_mask_2_T; // @[PMP.scala 61:51]
  wire  _addr_2_mask_2_T_3 = ~_addr_2_mask_2_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_2_T_8 = _addr_2_mask_2_T_3 ? wdata_reg : {{30'd0}, addr_1_2}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_299 = wen_reg_125 ? _addr_2_T_8 : {{30'd0}, addr_1_2}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_126; // @[RegMap.scala 55:30]
  reg  wen_reg_127; // @[RegMap.scala 55:30]
  wire  _addr_12_mask_12_T_10 = cfgs_1_13_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_12_mask_12_T_12 = cfgs_1_12_l | cfgs_1_13_l & _addr_12_mask_12_T_10; // @[PMP.scala 61:51]
  wire  _addr_12_mask_12_T_13 = ~_addr_12_mask_12_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_12_T_17 = _addr_12_mask_12_T_13 ? wdata_reg : {{30'd0}, addr_2_12}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_302 = wen_reg_127 ? _addr_12_T_17 : {{30'd0}, addr_2_12}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_128; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_303 = wen_reg_128 ? wdata_reg : REG_8; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_129; // @[RegMap.scala 55:30]
  reg  wen_reg_130; // @[RegMap.scala 55:30]
  wire  _addr_2_mask_2_T_10 = cfgs_1_3_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_2_mask_2_T_12 = cfgs_1_2_l | cfgs_1_3_l & _addr_2_mask_2_T_10; // @[PMP.scala 61:51]
  wire  _addr_2_mask_2_T_13 = ~_addr_2_mask_2_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_2_T_17 = _addr_2_mask_2_T_13 ? wdata_reg : {{30'd0}, addr_2_2}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_306 = wen_reg_130 ? _addr_2_T_17 : {{30'd0}, addr_2_2}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_131; // @[RegMap.scala 55:30]
  reg  wen_reg_132; // @[RegMap.scala 55:30]
  wire  _addr_11_mask_11_T = cfgs_1_12_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_11_mask_11_T_2 = cfgs_1_11_l | cfgs_1_12_l & _addr_11_mask_11_T; // @[PMP.scala 61:51]
  wire  _addr_11_mask_11_T_3 = ~_addr_11_mask_11_T_2; // @[PMP.scala 271:17]
  wire [63:0] _addr_11_T_8 = _addr_11_mask_11_T_3 ? wdata_reg : {{30'd0}, addr_2_11}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_309 = wen_reg_132 ? _addr_11_T_8 : {{30'd0}, addr_2_11}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_133; // @[RegMap.scala 55:30]
  wire [63:0] _tControlPhy_T = wdata_reg & 64'h88; // @[BitUtils.scala 73:14]
  wire [63:0] _tControlPhy_T_2 = tControlPhy & 64'hffffffffffffff77; // @[BitUtils.scala 73:37]
  wire [63:0] _tControlPhy_T_3 = _tControlPhy_T | _tControlPhy_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_134; // @[RegMap.scala 55:30]
  wire [63:0] _mepc_T_2 = mepc & 64'h1; // @[BitUtils.scala 73:37]
  wire [63:0] _mepc_T_3 = _sepc_T | _mepc_T_2; // @[BitUtils.scala 73:26]
  wire [63:0] _GEN_311 = wen_reg_134 ? _mepc_T_3 : mepc; // @[CSR.scala 354:17 RegMap.scala 56:{24,28}]
  reg  wen_reg_135; // @[RegMap.scala 55:30]
  wire  _addr_6_mask_6_T_10 = cfgs__7_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_6_mask_6_T_12 = cfgs__6_l | cfgs__7_l & _addr_6_mask_6_T_10; // @[PMP.scala 61:51]
  wire  _addr_6_mask_6_T_13 = ~_addr_6_mask_6_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_6_T_17 = _addr_6_mask_6_T_13 ? wdata_reg : {{30'd0}, addr_1_6}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_313 = wen_reg_135 ? _addr_6_T_17 : {{30'd0}, addr_1_6}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_136; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_314 = wen_reg_136 ? wdata_reg : mtval; // @[CSR.scala 353:22 RegMap.scala 56:{24,28}]
  reg  wen_reg_137; // @[RegMap.scala 55:30]
  reg  wen_reg_138; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_15_T_2 = perfEvents_15 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_15_T_3 = _perfEvents_6_T | _perfEvents_15_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_139; // @[RegMap.scala 55:30]
  reg  wen_reg_140; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_358 = wen_reg_140 ? wdata_reg : REG_4; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_141; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_359 = wen_reg_141 ? wdata_reg : REG_10; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_142; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_4_T_2 = perfEvents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_4_T_3 = _perfEvents_6_T | _perfEvents_4_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_143; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_25_T_2 = csrevents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_25_T_3 = _perfEvents_6_T | _perfEvents_25_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_144; // @[RegMap.scala 55:30]
  reg  wen_reg_145; // @[RegMap.scala 55:30]
  wire  _addr_11_mask_11_T_10 = cfgs__12_a == 2'h1; // @[PMP.scala 53:15]
  wire  _addr_11_mask_11_T_12 = cfgs__11_l | cfgs__12_l & _addr_11_mask_11_T_10; // @[PMP.scala 61:51]
  wire  _addr_11_mask_11_T_13 = ~_addr_11_mask_11_T_12; // @[PMP.scala 271:17]
  wire [63:0] _addr_11_T_17 = _addr_11_mask_11_T_13 ? wdata_reg : {{30'd0}, addr_1_11}; // @[PMP.scala 272:8]
  wire [63:0] _GEN_364 = wen_reg_145 ? _addr_11_T_17 : {{30'd0}, addr_1_11}; // @[PMP.scala 312:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_146; // @[RegMap.scala 55:30]
  reg  wen_reg_147; // @[RegMap.scala 55:30]
  reg  wen_reg_148; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_19_T_2 = perfEvents_19 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_19_T_3 = _perfEvents_6_T | _perfEvents_19_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_149; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_408 = wen_reg_149 ? wdata_reg : scause; // @[CSR.scala 468:23 RegMap.scala 56:{24,28}]
  reg  wen_reg_150; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_0_T_2 = perfEvents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_0_T_3 = _perfEvents_6_T | _perfEvents_0_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_151; // @[RegMap.scala 55:30]
  reg  wen_reg_152; // @[RegMap.scala 55:30]
  wire [63:0] _GEN_411 = wen_reg_152 ? wdata_reg : REG_12; // @[RegMap.scala 56:{24,28} CSR.scala 767:20]
  reg  wen_reg_153; // @[RegMap.scala 55:30]
  wire [63:0] _rdataFix_T_4 = _rdata_T_442 ? mipReg : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _rdataFix_T_1 = mipReg & sieMask; // @[RegMap.scala 49:92]
  wire [63:0] _rdataFix_T_5 = _rdata_T_383 ? _rdataFix_T_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] rdataFix = _rdataFix_T_4 | _rdataFix_T_5; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T = rdataFix | io_in_bits_src_0; // @[CSR.scala 835:33]
  wire [63:0] _wdataFix_T_2 = rdataFix & _wdata_T_1; // @[CSR.scala 836:33]
  wire [63:0] _wdataFix_T_3 = rdataFix | csri; // @[CSR.scala 838:33]
  wire [63:0] _wdataFix_T_5 = rdataFix & _wdata_T_4; // @[CSR.scala 839:33]
  wire [63:0] _wdataFix_T_13 = _wdata_T_7 ? _wdataFix_T : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_14 = _wdata_T_8 ? _wdataFix_T_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_16 = _wdata_T_10 ? _wdataFix_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_17 = _wdata_T_11 ? _wdataFix_T_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_18 = _wdata_T_12 | _wdataFix_T_13; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_19 = _wdataFix_T_18 | _wdataFix_T_14; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_20 = _wdataFix_T_19 | _wdata_T_15; // @[Mux.scala 27:73]
  wire [63:0] _wdataFix_T_21 = _wdataFix_T_20 | _wdataFix_T_16; // @[Mux.scala 27:73]
  wire [63:0] wdataFix = _wdataFix_T_21 | _wdataFix_T_17; // @[Mux.scala 27:73]
  reg [63:0] wdata_reg_1; // @[Reg.scala 16:16]
  reg  wen_reg_154; // @[RegMap.scala 55:30]
  wire [63:0] _mipReg_T = wdata_reg_1 & 64'h222; // @[BitUtils.scala 73:14]
  wire [63:0] _mipReg_T_2 = mipReg & 64'hfffffffffffffddd; // @[BitUtils.scala 73:37]
  wire [63:0] _mipReg_T_3 = _mipReg_T | _mipReg_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_155; // @[RegMap.scala 55:30]
  wire [63:0] _mipReg_T_4 = wdata_reg_1 & 64'h2; // @[BitUtils.scala 73:14]
  wire [63:0] _mipReg_T_6 = mipReg & 64'hfffffffffffffffd; // @[BitUtils.scala 73:37]
  wire [63:0] _mipReg_T_7 = _mipReg_T_4 | _mipReg_T_6; // @[BitUtils.scala 73:26]
  reg  REG_23; // @[CSR.scala 843:16]
  reg [4:0] fcsr_REG; // @[CSR.scala 844:46]
  wire [4:0] fcsr_fcsrNew_1_fflags = fcsr_REG | fcsr[4:0]; // @[CSR.scala 607:36]
  wire [63:0] _fcsr_T_21 = {fcsr_fcsrOld_reserved,fcsr[7:5],fcsr_fcsrNew_1_fflags}; // @[CSR.scala 611:13]
  wire  csrw_dirty_fp_state = REG_23 | _GEN_267; // @[CSR.scala 605:25 843:42]
  reg  REG_24; // @[CSR.scala 847:39]
  wire [5:0] mstatus_lo_lo = {mstatusStruct_pie_s,mstatusStruct_pie_u,mstatusStruct_ie_m,mstatusStruct_ie_h,
    mstatusStruct_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 851:27]
  wire [16:0] mstatus_lo = {mstatusStruct_xs,2'h3,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo}; // @[CSR.scala 851:27]
  wire [5:0] mstatus_hi_lo = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum,
    mstatusStruct_mprv}; // @[CSR.scala 851:27]
  wire [63:0] _mstatus_T_8 = {1'h1,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl,
    mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo,mstatus_lo}; // @[CSR.scala 851:27]
  wire [63:0] _GEN_418 = csrw_dirty_fp_state | REG_24 ? _mstatus_T_8 : _GEN_263; // @[CSR.scala 847:61 851:13]
  wire  _T_401 = tdata1Phy_0[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_402 = tdata1Phy_0[6] & _perfcntPermitted_T | _T_401; // @[CSR.scala 859:42]
  wire  _T_466 = tdata1Phy_1[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_467 = tdata1Phy_1[6] & _perfcntPermitted_T | _T_466; // @[CSR.scala 859:42]
  wire  _T_531 = tdata1Phy_2[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_532 = tdata1Phy_2[6] & _perfcntPermitted_T | _T_531; // @[CSR.scala 859:42]
  wire  _T_596 = tdata1Phy_3[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_597 = tdata1Phy_3[6] & _perfcntPermitted_T | _T_596; // @[CSR.scala 859:42]
  wire  _T_661 = tdata1Phy_4[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_662 = tdata1Phy_4[6] & _perfcntPermitted_T | _T_661; // @[CSR.scala 859:42]
  wire  _T_726 = tdata1Phy_5[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_727 = tdata1Phy_5[6] & _perfcntPermitted_T | _T_726; // @[CSR.scala 859:42]
  wire  _T_791 = tdata1Phy_6[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_792 = tdata1Phy_6[6] & _perfcntPermitted_T | _T_791; // @[CSR.scala 859:42]
  wire  _T_856 = tdata1Phy_7[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_857 = tdata1Phy_7[6] & _perfcntPermitted_T | _T_856; // @[CSR.scala 859:42]
  wire  _T_921 = tdata1Phy_8[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_922 = tdata1Phy_8[6] & _perfcntPermitted_T | _T_921; // @[CSR.scala 859:42]
  wire  _T_986 = tdata1Phy_9[4] & _tvmNotPermit_T; // @[CSR.scala 860:14]
  wire  _T_987 = tdata1Phy_9[6] & _perfcntPermitted_T | _T_986; // @[CSR.scala 859:42]
  wire  _csrio_customCtrl_frontend_trigger_t_valid_T_3 = wen & (_wen_reg_T_110 | _wen_reg_T_22); // @[CSR.scala 862:60]
  reg  csrio_customCtrl_frontend_trigger_t_valid_REG; // @[CSR.scala 862:55]
  reg  csrio_customCtrl_mem_trigger_t_valid_REG; // @[CSR.scala 863:50]
  wire  _isEbreak_T_1 = io_in_bits_uop_ctrl_fuOpType == 7'h0; // @[CSR.scala 868:46]
  wire  isEbreak = _wen_reg_T_76 & io_in_bits_uop_ctrl_fuOpType == 7'h0; // @[CSR.scala 868:38]
  wire  isEcall = addr_3 == 12'h0 & _isEbreak_T_1; // @[CSR.scala 869:38]
  wire  isMret = _wen_reg_T_48 & _isEbreak_T_1; // @[CSR.scala 870:38]
  wire  isSret = addr_3 == 12'h102 & _isEbreak_T_1; // @[CSR.scala 871:38]
  wire  isUret = _wen_reg_T_132 & _isEbreak_T_1; // @[CSR.scala 872:38]
  wire  isDret = _wen_reg_T_114 & _isEbreak_T_1; // @[CSR.scala 873:38]
  wire  isWFI = io_in_bits_uop_ctrl_fuOpType == 7'h4; // @[CSR.scala 874:23]
  wire  _illegalMret_T = io_in_valid & isMret; // @[CSR.scala 880:27]
  wire  _illegalMret_T_1 = priviledgeMode < 2'h3; // @[CSR.scala 880:55]
  wire  illegalMret = io_in_valid & isMret & priviledgeMode < 2'h3; // @[CSR.scala 880:37]
  wire  _illegalSret_T = io_in_valid & isSret; // @[CSR.scala 881:27]
  wire  _illegalSret_T_1 = priviledgeMode < 2'h1; // @[CSR.scala 881:55]
  wire  illegalSret = io_in_valid & isSret & priviledgeMode < 2'h1; // @[CSR.scala 881:37]
  wire  illegalSModeSret = _illegalSret_T & _tvmNotPermit_T & mstatusStruct_tsr; // @[CSR.scala 882:70]
  wire  illegalWFI = io_in_valid & isWFI & _illegalMret_T_1 & mstatusStruct_tw; // @[CSR.scala 888:61]
  wire  _isIllegalAddr_illegalAddr_T_1 = _rdata_T_367 ? 1'h0 : 1'h1; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_3 = _rdata_T_397 ? 1'h0 : _isIllegalAddr_illegalAddr_T_1; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_5 = _rdata_T_433 ? 1'h0 : _isIllegalAddr_illegalAddr_T_3; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_7 = _rdata_T_389 ? 1'h0 : _isIllegalAddr_illegalAddr_T_5; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_9 = _rdata_T_375 ? 1'h0 : _isIllegalAddr_illegalAddr_T_7; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_11 = _rdata_T_355 ? 1'h0 : _isIllegalAddr_illegalAddr_T_9; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_13 = _rdata_T_473 ? 1'h0 : _isIllegalAddr_illegalAddr_T_11; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_15 = _rdata_T_345 ? 1'h0 : _isIllegalAddr_illegalAddr_T_13; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_17 = _rdata_T_359 ? 1'h0 : _isIllegalAddr_illegalAddr_T_15; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_19 = _rdata_T_485 ? 1'h0 : _isIllegalAddr_illegalAddr_T_17; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_21 = _rdata_T_421 ? 1'h0 : _isIllegalAddr_illegalAddr_T_19; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_23 = _rdata_T_383 ? 1'h0 : _isIllegalAddr_illegalAddr_T_21; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_25 = _rdata_T_336 ? 1'h0 : _isIllegalAddr_illegalAddr_T_23; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_27 = _rdata_T_429 ? 1'h0 : _isIllegalAddr_illegalAddr_T_25; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_29 = _rdata_T_423 ? 1'h0 : _isIllegalAddr_illegalAddr_T_27; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_31 = _rdata_T_353 ? 1'h0 : _isIllegalAddr_illegalAddr_T_29; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_33 = _rdata_T_454 ? 1'h0 : _isIllegalAddr_illegalAddr_T_31; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_35 = _rdata_T_406 ? 1'h0 : _isIllegalAddr_illegalAddr_T_33; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_37 = _rdata_T_400 ? 1'h0 : _isIllegalAddr_illegalAddr_T_35; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_39 = _rdata_T_365 ? 1'h0 : _isIllegalAddr_illegalAddr_T_37; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_41 = _rdata_T_466 ? 1'h0 : _isIllegalAddr_illegalAddr_T_39; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_43 = _rdata_T_486 ? 1'h0 : _isIllegalAddr_illegalAddr_T_41; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_45 = _rdata_T_412 ? 1'h0 : _isIllegalAddr_illegalAddr_T_43; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_47 = _rdata_T_398 ? 1'h0 : _isIllegalAddr_illegalAddr_T_45; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_49 = _rdata_T_361 ? 1'h0 : _isIllegalAddr_illegalAddr_T_47; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_51 = _rdata_T_478 ? 1'h0 : _isIllegalAddr_illegalAddr_T_49; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_53 = _rdata_T_448 ? 1'h0 : _isIllegalAddr_illegalAddr_T_51; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_55 = _rdata_T_328 ? 1'h0 : _isIllegalAddr_illegalAddr_T_53; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_57 = _rdata_T_369 ? 1'h0 : _isIllegalAddr_illegalAddr_T_55; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_59 = _rdata_T_419 ? 1'h0 : _isIllegalAddr_illegalAddr_T_57; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_61 = _rdata_T_438 ? 1'h0 : _isIllegalAddr_illegalAddr_T_59; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_63 = _rdata_T_456 ? 1'h0 : _isIllegalAddr_illegalAddr_T_61; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_65 = _rdata_T_338 ? 1'h0 : _isIllegalAddr_illegalAddr_T_63; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_67 = _rdata_T_378 ? 1'h0 : _isIllegalAddr_illegalAddr_T_65; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_69 = _rdata_T_420 ? 1'h0 : _isIllegalAddr_illegalAddr_T_67; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_71 = _rdata_T_351 ? 1'h0 : _isIllegalAddr_illegalAddr_T_69; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_73 = _rdata_T_474 ? 1'h0 : _isIllegalAddr_illegalAddr_T_71; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_75 = _rdata_T_405 ? 1'h0 : _isIllegalAddr_illegalAddr_T_73; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_77 = _rdata_T_376 ? 1'h0 : _isIllegalAddr_illegalAddr_T_75; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_79 = _rdata_T_362 ? 1'h0 : _isIllegalAddr_illegalAddr_T_77; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_81 = _rdata_T_484 ? 1'h0 : _isIllegalAddr_illegalAddr_T_79; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_83 = _rdata_T_441 ? 1'h0 : _isIllegalAddr_illegalAddr_T_81; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_85 = _rdata_T_403 ? 1'h0 : _isIllegalAddr_illegalAddr_T_83; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_87 = _rdata_T_373 ? 1'h0 : _isIllegalAddr_illegalAddr_T_85; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_89 = _rdata_T_407 ? 1'h0 : _isIllegalAddr_illegalAddr_T_87; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_91 = _rdata_T_430 ? 1'h0 : _isIllegalAddr_illegalAddr_T_89; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_93 = _rdata_T_479 ? 1'h0 : _isIllegalAddr_illegalAddr_T_91; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_95 = _rdata_T_343 ? 1'h0 : _isIllegalAddr_illegalAddr_T_93; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_97 = _rdata_T_382 ? 1'h0 : _isIllegalAddr_illegalAddr_T_95; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_99 = _rdata_T_414 ? 1'h0 : _isIllegalAddr_illegalAddr_T_97; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_101 = _rdata_T_464 ? 1'h0 : _isIllegalAddr_illegalAddr_T_99; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_103 = _rdata_T_470 ? 1'h0 : _isIllegalAddr_illegalAddr_T_101; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_105 = _rdata_T_360 ? 1'h0 : _isIllegalAddr_illegalAddr_T_103; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_107 = _rdata_T_472 ? 1'h0 : _isIllegalAddr_illegalAddr_T_105; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_109 = _rdata_T_442 ? 1'h0 : _isIllegalAddr_illegalAddr_T_107; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_111 = _rdata_T_482 ? 1'h0 : _isIllegalAddr_illegalAddr_T_109; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_113 = _rdata_T_342 ? 1'h0 : _isIllegalAddr_illegalAddr_T_111; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_115 = _rdata_T_437 ? 1'h0 : _isIllegalAddr_illegalAddr_T_113; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_117 = _rdata_T_339 ? 1'h0 : _isIllegalAddr_illegalAddr_T_115; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_119 = _rdata_T_459 ? 1'h0 : _isIllegalAddr_illegalAddr_T_117; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_121 = _rdata_T_413 ? 1'h0 : _isIllegalAddr_illegalAddr_T_119; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_123 = _rdata_T_385 ? 1'h0 : _isIllegalAddr_illegalAddr_T_121; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_125 = _rdata_T_350 ? 1'h0 : _isIllegalAddr_illegalAddr_T_123; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_127 = _rdata_T_471 ? 1'h0 : _isIllegalAddr_illegalAddr_T_125; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_129 = _rdata_T_447 ? 1'h0 : _isIllegalAddr_illegalAddr_T_127; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_131 = _rdata_T_374 ? 1'h0 : _isIllegalAddr_illegalAddr_T_129; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_133 = _rdata_T_399 ? 1'h0 : _isIllegalAddr_illegalAddr_T_131; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_135 = _rdata_T_443 ? 1'h0 : _isIllegalAddr_illegalAddr_T_133; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_137 = _rdata_T_481 ? 1'h0 : _isIllegalAddr_illegalAddr_T_135; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_139 = _rdata_T_364 ? 1'h0 : _isIllegalAddr_illegalAddr_T_137; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_141 = _rdata_T_372 ? 1'h0 : _isIllegalAddr_illegalAddr_T_139; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_143 = _rdata_T_408 ? 1'h0 : _isIllegalAddr_illegalAddr_T_141; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_145 = _rdata_T_428 ? 1'h0 : _isIllegalAddr_illegalAddr_T_143; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_147 = _rdata_T_439 ? 1'h0 : _isIllegalAddr_illegalAddr_T_145; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_149 = _rdata_T_480 ? 1'h0 : _isIllegalAddr_illegalAddr_T_147; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_151 = _rdata_T_427 ? 1'h0 : _isIllegalAddr_illegalAddr_T_149; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_153 = _rdata_T_344 ? 1'h0 : _isIllegalAddr_illegalAddr_T_151; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_155 = _rdata_T_457 ? 1'h0 : _isIllegalAddr_illegalAddr_T_153; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_157 = _rdata_T_432 ? 1'h0 : _isIllegalAddr_illegalAddr_T_155; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_159 = _rdata_T_392 ? 1'h0 : _isIllegalAddr_illegalAddr_T_157; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_161 = _rdata_T_352 ? 1'h0 : _isIllegalAddr_illegalAddr_T_159; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_163 = _rdata_T_476 ? 1'h0 : _isIllegalAddr_illegalAddr_T_161; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_165 = _rdata_T_458 ? 1'h0 : _isIllegalAddr_illegalAddr_T_163; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_167 = _rdata_T_348 ? 1'h0 : _isIllegalAddr_illegalAddr_T_165; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_169 = _rdata_T_404 ? 1'h0 : _isIllegalAddr_illegalAddr_T_167; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_171 = _rdata_T_445 ? 1'h0 : _isIllegalAddr_illegalAddr_T_169; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_173 = _rdata_T_451 ? 1'h0 : _isIllegalAddr_illegalAddr_T_171; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_175 = _rdata_T_334 ? 1'h0 : _isIllegalAddr_illegalAddr_T_173; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_177 = _rdata_T_377 ? 1'h0 : _isIllegalAddr_illegalAddr_T_175; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_179 = _rdata_T_409 ? 1'h0 : _isIllegalAddr_illegalAddr_T_177; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_181 = _rdata_T_358 ? 1'h0 : _isIllegalAddr_illegalAddr_T_179; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_183 = _rdata_T_488 ? 1'h0 : _isIllegalAddr_illegalAddr_T_181; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_185 = _rdata_T_463 ? 1'h0 : _isIllegalAddr_illegalAddr_T_183; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_187 = _rdata_T_415 ? 1'h0 : _isIllegalAddr_illegalAddr_T_185; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_189 = _rdata_T_390 ? 1'h0 : _isIllegalAddr_illegalAddr_T_187; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_191 = _rdata_T_354 ? 1'h0 : _isIllegalAddr_illegalAddr_T_189; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_193 = _rdata_T_477 ? 1'h0 : _isIllegalAddr_illegalAddr_T_191; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_195 = _rdata_T_434 ? 1'h0 : _isIllegalAddr_illegalAddr_T_193; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_197 = _rdata_T_335 ? 1'h0 : _isIllegalAddr_illegalAddr_T_195; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_199 = _rdata_T_426 ? 1'h0 : _isIllegalAddr_illegalAddr_T_197; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_201 = _rdata_T_386 ? 1'h0 : _isIllegalAddr_illegalAddr_T_199; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_203 = _rdata_T_340 ? 1'h0 : _isIllegalAddr_illegalAddr_T_201; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_205 = _rdata_T_330 ? 1'h0 : _isIllegalAddr_illegalAddr_T_203; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_207 = _rdata_T_468 ? 1'h0 : _isIllegalAddr_illegalAddr_T_205; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_209 = _rdata_T_379 ? 1'h0 : _isIllegalAddr_illegalAddr_T_207; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_211 = _rdata_T_417 ? 1'h0 : _isIllegalAddr_illegalAddr_T_209; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_213 = _rdata_T_388 ? 1'h0 : _isIllegalAddr_illegalAddr_T_211; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_215 = _rdata_T_333 ? 1'h0 : _isIllegalAddr_illegalAddr_T_213; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_217 = _rdata_T_396 ? 1'h0 : _isIllegalAddr_illegalAddr_T_215; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_219 = _rdata_T_475 ? 1'h0 : _isIllegalAddr_illegalAddr_T_217; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_221 = _rdata_T_349 ? 1'h0 : _isIllegalAddr_illegalAddr_T_219; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_223 = _rdata_T_422 ? 1'h0 : _isIllegalAddr_illegalAddr_T_221; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_225 = _rdata_T_465 ? 1'h0 : _isIllegalAddr_illegalAddr_T_223; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_227 = _rdata_T_329 ? 1'h0 : _isIllegalAddr_illegalAddr_T_225; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_229 = _rdata_T_401 ? 1'h0 : _isIllegalAddr_illegalAddr_T_227; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_231 = _rdata_T_411 ? 1'h0 : _isIllegalAddr_illegalAddr_T_229; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_233 = _rdata_T_455 ? 1'h0 : _isIllegalAddr_illegalAddr_T_231; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_235 = _rdata_T_337 ? 1'h0 : _isIllegalAddr_illegalAddr_T_233; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_237 = _rdata_T_371 ? 1'h0 : _isIllegalAddr_illegalAddr_T_235; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_239 = _rdata_T_402 ? 1'h0 : _isIllegalAddr_illegalAddr_T_237; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_241 = _rdata_T_366 ? 1'h0 : _isIllegalAddr_illegalAddr_T_239; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_243 = _rdata_T_467 ? 1'h0 : _isIllegalAddr_illegalAddr_T_241; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_245 = _rdata_T_461 ? 1'h0 : _isIllegalAddr_illegalAddr_T_243; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_247 = _rdata_T_435 ? 1'h0 : _isIllegalAddr_illegalAddr_T_245; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_249 = _rdata_T_395 ? 1'h0 : _isIllegalAddr_illegalAddr_T_247; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_251 = _rdata_T_357 ? 1'h0 : _isIllegalAddr_illegalAddr_T_249; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_253 = _rdata_T_370 ? 1'h0 : _isIllegalAddr_illegalAddr_T_251; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_255 = _rdata_T_436 ? 1'h0 : _isIllegalAddr_illegalAddr_T_253; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_257 = _rdata_T_452 ? 1'h0 : _isIllegalAddr_illegalAddr_T_255; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_259 = _rdata_T_347 ? 1'h0 : _isIllegalAddr_illegalAddr_T_257; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_261 = _rdata_T_381 ? 1'h0 : _isIllegalAddr_illegalAddr_T_259; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_263 = _rdata_T_444 ? 1'h0 : _isIllegalAddr_illegalAddr_T_261; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_265 = _rdata_T_327 ? 1'h0 : _isIllegalAddr_illegalAddr_T_263; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_267 = _rdata_T_460 ? 1'h0 : _isIllegalAddr_illegalAddr_T_265; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_269 = _rdata_T_418 ? 1'h0 : _isIllegalAddr_illegalAddr_T_267; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_271 = _rdata_T_346 ? 1'h0 : _isIllegalAddr_illegalAddr_T_269; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_273 = _rdata_T_380 ? 1'h0 : _isIllegalAddr_illegalAddr_T_271; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_275 = _rdata_T_410 ? 1'h0 : _isIllegalAddr_illegalAddr_T_273; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_277 = _rdata_T_453 ? 1'h0 : _isIllegalAddr_illegalAddr_T_275; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_279 = _rdata_T_356 ? 1'h0 : _isIllegalAddr_illegalAddr_T_277; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_281 = _rdata_T_391 ? 1'h0 : _isIllegalAddr_illegalAddr_T_279; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_283 = _rdata_T_446 ? 1'h0 : _isIllegalAddr_illegalAddr_T_281; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_285 = _rdata_T_487 ? 1'h0 : _isIllegalAddr_illegalAddr_T_283; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_287 = _rdata_T_363 ? 1'h0 : _isIllegalAddr_illegalAddr_T_285; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_289 = _rdata_T_489 ? 1'h0 : _isIllegalAddr_illegalAddr_T_287; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_291 = _rdata_T_431 ? 1'h0 : _isIllegalAddr_illegalAddr_T_289; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_293 = _rdata_T_393 ? 1'h0 : _isIllegalAddr_illegalAddr_T_291; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_295 = _rdata_T_332 ? 1'h0 : _isIllegalAddr_illegalAddr_T_293; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_297 = _rdata_T_449 ? 1'h0 : _isIllegalAddr_illegalAddr_T_295; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_299 = _rdata_T_416 ? 1'h0 : _isIllegalAddr_illegalAddr_T_297; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_301 = _rdata_T_384 ? 1'h0 : _isIllegalAddr_illegalAddr_T_299; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_303 = _rdata_T_387 ? 1'h0 : _isIllegalAddr_illegalAddr_T_301; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_305 = _rdata_T_425 ? 1'h0 : _isIllegalAddr_illegalAddr_T_303; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_307 = _rdata_T_450 ? 1'h0 : _isIllegalAddr_illegalAddr_T_305; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_309 = _rdata_T_341 ? 1'h0 : _isIllegalAddr_illegalAddr_T_307; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_311 = _rdata_T_394 ? 1'h0 : _isIllegalAddr_illegalAddr_T_309; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_313 = _rdata_T_440 ? 1'h0 : _isIllegalAddr_illegalAddr_T_311; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_315 = _rdata_T_483 ? 1'h0 : _isIllegalAddr_illegalAddr_T_313; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_317 = _rdata_T_368 ? 1'h0 : _isIllegalAddr_illegalAddr_T_315; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_319 = _rdata_T_331 ? 1'h0 : _isIllegalAddr_illegalAddr_T_317; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_321 = _rdata_T_462 ? 1'h0 : _isIllegalAddr_illegalAddr_T_319; // @[Mux.scala 81:58]
  wire  _isIllegalAddr_illegalAddr_T_323 = _rdata_T_469 ? 1'h0 : _isIllegalAddr_illegalAddr_T_321; // @[Mux.scala 81:58]
  wire  isIllegalAddr_illegalAddr = _rdata_T_424 ? 1'h0 : _isIllegalAddr_illegalAddr_T_323; // @[Mux.scala 81:58]
  wire  isIllegalAddr = _wen_T_2 & isIllegalAddr_illegalAddr; // @[CSR.scala 891:59]
  wire  isIllegalAccess = wen & ~permitted; // @[CSR.scala 892:29]
  wire  isIllegalPrivOp = illegalMret | illegalSret | illegalSModeSret | illegalWFI; // @[CSR.scala 893:72]
  wire [1:0] _tlbBundle_priv_dmode_T_18 = mstatusStruct_mprv ? mstatusStruct_mpp : priviledgeMode; // @[CSR.scala 899:92]
  wire [1:0] tlbBundle_priv_dmode = debugMode & dcsrData_mprven ? 2'h3 : _tlbBundle_priv_dmode_T_18; // @[CSR.scala 899:30]
  wire  resetSatp = _accessPermitted_T & wen; // @[CSR.scala 903:35]
  wire  _flushPipe_T_4 = ~isEbreak; // @[CSR.scala 904:77]
  wire  _flushPipe_T_5 = io_in_valid & _isEbreak_T_1 & ~isEcall & ~isEbreak; // @[CSR.scala 904:74]
  wire  mstatusNew_1_mprv = dcsrData_prv != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 914:{56,73}]
  wire [16:0] mstatus_lo_1 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo}; // @[CSR.scala 915:27]
  wire [5:0] mstatus_hi_lo_1 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_1_mprv}; // @[CSR.scala 915:27]
  wire [63:0] _mstatus_T_9 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl,
    mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_1,mstatus_lo_1}; // @[CSR.scala 915:27]
  wire [63:0] _GEN_420 = io_in_valid & isDret ? _mstatus_T_9 : _GEN_418; // @[CSR.scala 909:26 915:13]
  wire [1:0] _GEN_421 = io_in_valid & isDret ? dcsrData_prv : priviledgeMode; // @[CSR.scala 909:26 916:20 628:31]
  wire  _GEN_423 = io_in_valid & isDret | debugIntrEnable; // @[CSR.scala 909:26 919:21 226:32]
  wire  mstatusNew_2_mprv = mstatusStruct_mpp != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 931:{37,55}]
  wire [5:0] mstatus_lo_lo_2 = {mstatusStruct_pie_s,mstatusStruct_pie_u,mstatusStruct_pie_m,mstatusStruct_ie_h,
    mstatusStruct_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 932:27]
  wire [16:0] mstatus_lo_2 = {mstatusStruct_xs,mstatusStruct_fs,2'h0,mstatusStruct_hpp,mstatusStruct_spp,1'h1,
    mstatusStruct_pie_h,mstatus_lo_lo_2}; // @[CSR.scala 932:27]
  wire [5:0] mstatus_hi_lo_2 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_2_mprv}; // @[CSR.scala 932:27]
  wire [63:0] _mstatus_T_10 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_2,mstatus_lo_2}; // @[CSR.scala 932:27]
  wire [1:0] _GEN_426 = _illegalMret_T & ~illegalMret ? mstatusStruct_mpp : _GEN_421; // @[CSR.scala 924:42 928:20]
  wire [1:0] _priviledgeMode_T = {1'h0,mstatusStruct_spp}; // @[Cat.scala 31:58]
  wire [5:0] mstatus_lo_lo_3 = {1'h1,mstatusStruct_pie_u,mstatusStruct_ie_m,mstatusStruct_ie_h,mstatusStruct_pie_s,
    mstatusStruct_ie_u}; // @[CSR.scala 944:27]
  wire [16:0] mstatus_lo_3 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,1'h0,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_3}; // @[CSR.scala 944:27]
  wire [1:0] _GEN_595 = {{1'd0}, mstatusStruct_spp}; // @[CSR.scala 945:26]
  wire  mstatusNew_3_mprv = _GEN_595 != 2'h3 ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 945:{37,55}]
  wire [5:0] mstatus_hi_lo_3 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_3_mprv}; // @[CSR.scala 944:27]
  wire [63:0] _mstatus_T_11 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_3,mstatus_lo_3}; // @[CSR.scala 944:27]
  wire [1:0] _GEN_430 = _illegalSret_T & ~illegalSret & ~illegalSModeSret ? _priviledgeMode_T : _GEN_426; // @[CSR.scala 937:63 941:20]
  wire [5:0] mstatus_lo_lo_4 = {mstatusStruct_pie_s,1'h1,mstatusStruct_ie_m,mstatusStruct_ie_h,mstatusStruct_ie_s,
    mstatusStruct_pie_u}; // @[CSR.scala 957:27]
  wire [16:0] mstatus_lo_4 = {mstatusStruct_xs,mstatusStruct_fs,mstatusStruct_mpp,mstatusStruct_hpp,mstatusStruct_spp,
    mstatusStruct_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_4}; // @[CSR.scala 957:27]
  wire [63:0] _mstatus_T_12 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo,mstatus_lo_4}; // @[CSR.scala 957:27]
  wire [1:0] _GEN_433 = io_in_valid & isUret ? 2'h0 : _GEN_430; // @[CSR.scala 950:26 955:20]
  wire  ebreakCauseException = _perfcntPermitted_T & dcsrData_ebreakm | _tvmNotPermit_T & dcsrData_ebreaks |
    _csrio_disableSfence_T & dcsrData_ebreaku; // @[CSR.scala 964:127]
  wire [63:0] ideleg = mideleg & _GEN_587; // @[CSR.scala 982:26]
  wire  debugIntr = csrio_externalInterrupt_debug & debugIntrEnable; // @[CSR.scala 986:49]
  wire  disableInterrupt = debugMode | dcsrData_step & ~dcsrData_stepie; // @[CSR.scala 990:36]
  wire  _intrVecEnable_0_T_7 = _perfcntPermitted_T & mstatusStruct_ie_m | _illegalMret_T_1; // @[CSR.scala 984:56]
  wire  _intrVecEnable_0_T_8 = ideleg[0] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_0 = _intrVecEnable_0_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_1_T_8 = ideleg[1] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_1 = _intrVecEnable_1_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_2_T_8 = ideleg[2] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_2 = _intrVecEnable_2_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_3_T_8 = ideleg[3] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_3 = _intrVecEnable_3_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_4_T_8 = ideleg[4] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_4 = _intrVecEnable_4_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_5_T_8 = ideleg[5] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_5 = _intrVecEnable_5_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_6_T_8 = ideleg[6] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_6 = _intrVecEnable_6_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_7_T_8 = ideleg[7] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_7 = _intrVecEnable_7_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_8_T_8 = ideleg[8] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_8 = _intrVecEnable_8_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_9_T_8 = ideleg[9] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_9 = _intrVecEnable_9_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_10_T_8 = ideleg[10] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_10 = _intrVecEnable_10_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVecEnable_11_T_8 = ideleg[11] ? _tvmNotPermit_T & mstatusStruct_ie_s | _illegalSret_T_1 :
    _intrVecEnable_0_T_7; // @[CSR.scala 983:51]
  wire  intrVecEnable_11 = _intrVecEnable_11_T_8 & ~disableInterrupt; // @[CSR.scala 991:86]
  wire  _intrVec_T_1 = debugIntr & _csrio_customCtrl_singlestep_T; // @[CSR.scala 992:31]
  wire [11:0] _intrVec_T_4 = mie[11:0] & _T_87; // @[CSR.scala 992:57]
  wire [5:0] intrVec_lo_1 = {intrVecEnable_5,intrVecEnable_4,intrVecEnable_3,intrVecEnable_2,intrVecEnable_1,
    intrVecEnable_0}; // @[CSR.scala 992:86]
  wire [11:0] _intrVec_T_5 = {intrVecEnable_11,intrVecEnable_10,intrVecEnable_9,intrVecEnable_8,intrVecEnable_7,
    intrVecEnable_6,intrVec_lo_1}; // @[CSR.scala 992:86]
  wire [11:0] _intrVec_T_6 = _intrVec_T_4 & _intrVec_T_5; // @[CSR.scala 992:70]
  wire [12:0] intrVec = {_intrVec_T_1,_intrVec_T_6}; // @[Cat.scala 31:58]
  wire [2:0] _intrNO_T_1 = intrVec[4] ? 3'h4 : 3'h0; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_3 = intrVec[8] ? 4'h8 : {{1'd0}, _intrNO_T_1}; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_5 = intrVec[0] ? 4'h0 : _intrNO_T_3; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_7 = intrVec[5] ? 4'h5 : _intrNO_T_5; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_9 = intrVec[9] ? 4'h9 : _intrNO_T_7; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_11 = intrVec[1] ? 4'h1 : _intrNO_T_9; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_13 = intrVec[7] ? 4'h7 : _intrNO_T_11; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_15 = intrVec[11] ? 4'hb : _intrNO_T_13; // @[CSR.scala 1006:69]
  wire [3:0] _intrNO_T_17 = intrVec[3] ? 4'h3 : _intrNO_T_15; // @[CSR.scala 1006:69]
  wire [3:0] intrNO = intrVec[12] ? 4'hc : _intrNO_T_17; // @[CSR.scala 1006:69]
  wire  raiseIntr = csrio_exception_valid & csrio_exception_bits_isInterrupt; // @[CSR.scala 1007:41]
  wire  _ivmEnable_T_4 = sa_mode == 4'h8; // @[CSR.scala 1008:86]
  wire  ivmEnable = _illegalMret_T_1 & sa_mode == 4'h8; // @[CSR.scala 1008:48]
  wire  iexceptionPC_signBit = csrio_exception_bits_uop_cf_pc[38]; // @[BitUtils.scala 80:20]
  wire [24:0] _iexceptionPC_T_1 = iexceptionPC_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _iexceptionPC_T_2 = {_iexceptionPC_T_1,csrio_exception_bits_uop_cf_pc}; // @[Cat.scala 31:58]
  wire [63:0] iexceptionPC = ivmEnable ? _iexceptionPC_T_2 : {{25'd0}, csrio_exception_bits_uop_cf_pc}; // @[CSR.scala 1009:25]
  wire  dvmEnable = tlbBundle_priv_dmode < 2'h3 & _ivmEnable_T_4; // @[CSR.scala 1010:48]
  wire [63:0] dexceptionPC = dvmEnable ? _iexceptionPC_T_2 : {{25'd0}, csrio_exception_bits_uop_cf_pc}; // @[CSR.scala 1011:25]
  wire  raiseDebugIntr = intrNO == 4'hc & raiseIntr; // @[CSR.scala 1013:47]
  wire  raiseException = csrio_exception_valid & ~csrio_exception_bits_isInterrupt; // @[CSR.scala 1016:46]
  wire  hasInstrPageFault = csrio_exception_bits_uop_cf_exceptionVec_12 & raiseException; // @[CSR.scala 1017:84]
  wire  hasLoadPageFault = csrio_exception_bits_uop_cf_exceptionVec_13 & raiseException; // @[CSR.scala 1018:82]
  wire  hasStorePageFault = csrio_exception_bits_uop_cf_exceptionVec_15 & raiseException; // @[CSR.scala 1019:84]
  wire  hasStoreAddrMisaligned = csrio_exception_bits_uop_cf_exceptionVec_6 & raiseException; // @[CSR.scala 1020:94]
  wire  hasLoadAddrMisaligned = csrio_exception_bits_uop_cf_exceptionVec_4 & raiseException; // @[CSR.scala 1021:92]
  wire  hasInstrAccessFault = csrio_exception_bits_uop_cf_exceptionVec_1 & raiseException; // @[CSR.scala 1022:88]
  wire  hasLoadAccessFault = csrio_exception_bits_uop_cf_exceptionVec_5 & raiseException; // @[CSR.scala 1023:86]
  wire  hasStoreAccessFault = csrio_exception_bits_uop_cf_exceptionVec_7 & raiseException; // @[CSR.scala 1024:88]
  wire  hasbreakPoint = csrio_exception_bits_uop_cf_exceptionVec_3 & raiseException; // @[CSR.scala 1025:76]
  wire  hasSingleStep = csrio_exception_bits_uop_ctrl_singleStep & raiseException; // @[CSR.scala 1026:64]
  wire  _hasTriggerHit_T_2 = csrio_exception_bits_uop_cf_trigger_frontendHit_0 |
    csrio_exception_bits_uop_cf_trigger_frontendHit_1 | csrio_exception_bits_uop_cf_trigger_frontendHit_2 |
    csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _hasTriggerHit_T_7 = csrio_exception_bits_uop_cf_trigger_backendHit_0 |
    csrio_exception_bits_uop_cf_trigger_backendHit_1 | csrio_exception_bits_uop_cf_trigger_backendHit_2 |
    csrio_exception_bits_uop_cf_trigger_backendHit_3 | csrio_exception_bits_uop_cf_trigger_backendHit_4 |
    csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[Bundle.scala 645:43]
  wire  _hasTriggerHit_T_8 = _hasTriggerHit_T_2 | _hasTriggerHit_T_7; // @[Bundle.scala 646:28]
  wire  hasTriggerHit = _hasTriggerHit_T_8 & raiseException; // @[CSR.scala 1027:65]
  wire [2:0] _regularExceptionNO_T = csrio_exception_bits_uop_cf_exceptionVec_5 ? 3'h5 : 3'h0; // @[CSR.scala 1034:92]
  wire [2:0] _regularExceptionNO_T_1 = csrio_exception_bits_uop_cf_exceptionVec_7 ? 3'h7 : _regularExceptionNO_T; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_2 = csrio_exception_bits_uop_cf_exceptionVec_13 ? 4'hd : {{1'd0},
    _regularExceptionNO_T_1}; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_3 = csrio_exception_bits_uop_cf_exceptionVec_15 ? 4'hf : _regularExceptionNO_T_2; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_4 = csrio_exception_bits_uop_cf_exceptionVec_4 ? 4'h4 : _regularExceptionNO_T_3; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_5 = csrio_exception_bits_uop_cf_exceptionVec_6 ? 4'h6 : _regularExceptionNO_T_4; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_6 = csrio_exception_bits_uop_cf_exceptionVec_8 ? 4'h8 : _regularExceptionNO_T_5; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_7 = csrio_exception_bits_uop_cf_exceptionVec_9 ? 4'h9 : _regularExceptionNO_T_6; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_8 = csrio_exception_bits_uop_cf_exceptionVec_11 ? 4'hb : _regularExceptionNO_T_7; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_9 = csrio_exception_bits_uop_cf_exceptionVec_0 ? 4'h0 : _regularExceptionNO_T_8; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_10 = csrio_exception_bits_uop_cf_exceptionVec_2 ? 4'h2 : _regularExceptionNO_T_9; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_11 = csrio_exception_bits_uop_cf_exceptionVec_1 ? 4'h1 : _regularExceptionNO_T_10; // @[CSR.scala 1034:92]
  wire [3:0] _regularExceptionNO_T_12 = csrio_exception_bits_uop_cf_exceptionVec_12 ? 4'hc : _regularExceptionNO_T_11; // @[CSR.scala 1034:92]
  wire [3:0] regularExceptionNO = csrio_exception_bits_uop_cf_exceptionVec_3 ? 4'h3 : _regularExceptionNO_T_12; // @[CSR.scala 1034:92]
  wire [3:0] exceptionNO = hasSingleStep | hasTriggerHit ? 4'h3 : regularExceptionNO; // @[CSR.scala 1035:24]
  wire [63:0] _causeNO_T = {raiseIntr, 63'h0}; // @[CSR.scala 1036:28]
  wire [3:0] _causeNO_T_1 = raiseIntr ? intrNO : exceptionNO; // @[CSR.scala 1036:53]
  wire [63:0] _GEN_597 = {{60'd0}, _causeNO_T_1}; // @[CSR.scala 1036:48]
  wire [63:0] causeNO = _causeNO_T | _GEN_597; // @[CSR.scala 1036:48]
  wire  raiseDebugExceptionIntr = _csrio_customCtrl_singlestep_T & (hasbreakPoint | raiseDebugIntr | hasSingleStep |
    hasTriggerHit & triggerAction); // @[CSR.scala 1040:44]
  wire  ebreakEnterParkLoop = debugMode & csrio_exception_valid; // @[CSR.scala 1041:39]
  wire  memExceptionAddr_signBit = csrio_memExceptionVAddr[38]; // @[BitUtils.scala 80:20]
  wire [24:0] _memExceptionAddr_T_1 = memExceptionAddr_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] memExceptionAddr = {_memExceptionAddr_T_1,csrio_memExceptionVAddr}; // @[Cat.scala 31:58]
  wire [7:0] _updateTval_T = {hasStoreAddrMisaligned,hasLoadAddrMisaligned,hasStoreAccessFault,hasLoadAccessFault,
    hasInstrAccessFault,hasStorePageFault,hasLoadPageFault,hasInstrPageFault}; // @[CSR.scala 1067:6]
  wire  updateTval = |_updateTval_T; // @[CSR.scala 1067:13]
  reg  REG_25; // @[CSR.scala 1068:24]
  reg  REG_26; // @[CSR.scala 1068:16]
  wire  _tval_T = hasInstrPageFault | hasInstrAccessFault; // @[CSR.scala 1070:43]
  reg  tval_REG; // @[CSR.scala 1070:24]
  reg  tval_REG_1; // @[CSR.scala 1070:16]
  wire [38:0] _tval_T_2 = csrio_exception_bits_uop_cf_pc + 39'h2; // @[CSR.scala 1073:50]
  wire  tval_signBit = _tval_T_2[38]; // @[BitUtils.scala 80:20]
  wire [24:0] _tval_T_4 = tval_signBit ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _tval_T_5 = {_tval_T_4,_tval_T_2}; // @[Cat.scala 31:58]
  reg [63:0] tval_REG_2; // @[CSR.scala 1071:24]
  reg [63:0] tval_REG_3; // @[CSR.scala 1071:16]
  wire [63:0] tval = tval_REG_1 ? tval_REG_3 : memExceptionAddr; // @[CSR.scala 1069:21]
  reg  REG_27; // @[CSR.scala 1078:18]
  wire [63:0] _GEN_436 = REG_27 ? tval : _GEN_314; // @[CSR.scala 1078:46 1079:13]
  wire [63:0] _GEN_437 = REG_27 ? _GEN_255 : tval; // @[CSR.scala 1078:46 1081:13]
  wire [63:0] _GEN_438 = REG_26 ? _GEN_436 : _GEN_314; // @[CSR.scala 1068:39]
  wire [63:0] _GEN_439 = REG_26 ? _GEN_437 : _GEN_255; // @[CSR.scala 1068:39]
  wire [29:0] debugTrapTarget = _flushPipe_T_4 & debugMode ? 30'h38020808 : 30'h38020800; // @[CSR.scala 1085:28]
  wire [63:0] deleg = raiseIntr ? mideleg : medeleg; // @[CSR.scala 1086:18]
  wire [63:0] _delegS_T_1 = deleg >> causeNO[3:0]; // @[CSR.scala 1088:21]
  wire  delegS = _delegS_T_1[0] & _illegalMret_T_1; // @[CSR.scala 1088:36]
  wire  clearTval = ~updateTval | raiseIntr; // @[CSR.scala 1089:31]
  reg  isXRetFlag; // @[CSR.scala 1093:27]
  wire  _GEN_440 = _flushPipe_T_5 | isXRetFlag; // @[CSR.scala 1096:23 1097:16 1093:27]
  reg [38:0] retTargetReg; // @[Reg.scala 16:16]
  wire [63:0] tvec = delegS ? stvec : mtvec; // @[CSR.scala 1102:17]
  wire [36:0] tvecBase = tvec[38:2]; // @[CSR.scala 1103:22]
  wire [3:0] _csrio_trapTarget_T_4 = tvec[0] & raiseIntr ? causeNO[3:0] : 4'h0; // @[CSR.scala 1114:25]
  wire [36:0] _GEN_598 = {{33'd0}, _csrio_trapTarget_T_4}; // @[CSR.scala 1114:20]
  wire [36:0] _csrio_trapTarget_T_6 = tvecBase + _GEN_598; // @[CSR.scala 1114:20]
  wire [38:0] _csrio_trapTarget_T_7 = {_csrio_trapTarget_T_6,2'h0}; // @[Cat.scala 31:58]
  wire  _csrio_trapTarget_T_10 = isXRetFlag | csrio_exception_valid; // @[CSR.scala 1115:18]
  reg [38:0] csrio_trapTarget_r; // @[Reg.scala 16:16]
  wire [2:0] _dcsrNew_cause_T = hasbreakPoint ? 3'h1 : 3'h4; // @[CSR.scala 1136:53]
  wire [2:0] _dcsrNew_cause_T_1 = hasTriggerHit ? 3'h2 : _dcsrNew_cause_T; // @[CSR.scala 1136:29]
  wire  _GEN_444 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T | debugMode; // @[CSR.scala 1132:67 1134:22]
  wire [2:0] _GEN_446 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? _dcsrNew_cause_T_1 :
    dcsrData_cause; // @[CSR.scala 1132:67 1136:23]
  wire [1:0] _GEN_447 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? priviledgeMode : dcsrData_prv
    ; // @[CSR.scala 1132:67 1137:21]
  wire  _GEN_449 = (hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T ? 1'h0 : mstatusStruct_mprv; // @[CSR.scala 1132:67 1139:25]
  wire  _GEN_450 = raiseDebugIntr | _GEN_444; // @[CSR.scala 1124:29 1125:22]
  wire  _GEN_451 = raiseDebugIntr ? 1'h0 : _GEN_449; // @[CSR.scala 1124:29 1126:25]
  wire [2:0] _GEN_453 = raiseDebugIntr ? 3'h3 : _GEN_446; // @[CSR.scala 1124:29 1128:23]
  wire [1:0] _GEN_454 = raiseDebugIntr ? priviledgeMode : _GEN_447; // @[CSR.scala 1124:29 1129:21]
  wire [1:0] dcsrNew_1_prv = raiseDebugExceptionIntr ? _GEN_454 : dcsrData_prv; // @[CSR.scala 1123:36]
  wire [2:0] dcsrNew_1_cause = raiseDebugExceptionIntr ? _GEN_453 : dcsrData_cause; // @[CSR.scala 1123:36]
  wire [10:0] dcsr_lo = {dcsrData_stopcycle,dcsrData_stoptime,dcsrNew_1_cause,dcsrData_v,dcsrData_mprven,dcsrData_nmip,
    dcsrData_step,dcsrNew_1_prv}; // @[CSR.scala 1141:23]
  wire [31:0] _dcsr_T_4 = {dcsrData_xdebugver,dcsrData_zero4,dcsrData_zero3,dcsrData_ebreakm,dcsrData_ebreakh,
    dcsrData_ebreaks,dcsrData_ebreaku,dcsrData_stepie,dcsr_lo}; // @[CSR.scala 1141:23]
  wire [63:0] _sepc_T_5 = _tval_T ? iexceptionPC : dexceptionPC; // @[CSR.scala 1147:18]
  wire [63:0] _GEN_456 = clearTval ? 64'h0 : _GEN_439; // @[CSR.scala 1152:{24,32}]
  wire [63:0] _GEN_457 = clearTval ? 64'h0 : _GEN_438; // @[CSR.scala 1160:{24,32}]
  wire [63:0] _GEN_459 = delegS ? _sepc_T_5 : _GEN_117; // @[CSR.scala 1145:25 1147:12]
  wire [1:0] _GEN_460 = delegS ? priviledgeMode : {{1'd0}, mstatusStruct_spp}; // @[CSR.scala 1145:25 1148:22]
  wire  _GEN_461 = delegS ? mstatusStruct_ie_s : mstatusStruct_pie_s; // @[CSR.scala 1145:25 1149:24]
  wire  _GEN_462 = delegS ? 1'h0 : mstatusStruct_ie_s; // @[CSR.scala 1145:25 1150:23]
  wire [63:0] _GEN_466 = delegS ? _GEN_311 : _sepc_T_5; // @[CSR.scala 1145:25 1155:12]
  wire [1:0] _GEN_467 = delegS ? mstatusStruct_mpp : priviledgeMode; // @[CSR.scala 1145:25 1156:22]
  wire  _GEN_468 = delegS ? mstatusStruct_pie_m : mstatusStruct_ie_m; // @[CSR.scala 1145:25 1157:24]
  wire  _GEN_469 = delegS & mstatusStruct_ie_m; // @[CSR.scala 1145:25 1158:23]
  wire [1:0] _GEN_473 = debugMode ? {{1'd0}, mstatusStruct_spp} : _GEN_460; // @[CSR.scala 1143:28]
  wire  _GEN_474 = debugMode ? mstatusStruct_pie_s : _GEN_461; // @[CSR.scala 1143:28]
  wire  _GEN_475 = debugMode ? mstatusStruct_ie_s : _GEN_462; // @[CSR.scala 1143:28]
  wire [1:0] _GEN_480 = debugMode ? mstatusStruct_mpp : _GEN_467; // @[CSR.scala 1143:28]
  wire  _GEN_481 = debugMode ? mstatusStruct_pie_m : _GEN_468; // @[CSR.scala 1143:28]
  wire  _GEN_482 = debugMode ? mstatusStruct_ie_m : _GEN_469; // @[CSR.scala 1143:28]
  wire  mstatusNew_5_mprv = raiseDebugExceptionIntr ? _GEN_451 : mstatusStruct_mprv; // @[CSR.scala 1123:36]
  wire [63:0] _GEN_490 = raiseDebugExceptionIntr ? {{32'd0}, _dcsr_T_4} : _GEN_142; // @[CSR.scala 1123:36 1141:12]
  wire [1:0] _GEN_494 = raiseDebugExceptionIntr ? {{1'd0}, mstatusStruct_spp} : _GEN_473; // @[CSR.scala 1123:36]
  wire  mstatusNew_5_pie_s = raiseDebugExceptionIntr ? mstatusStruct_pie_s : _GEN_474; // @[CSR.scala 1123:36]
  wire  mstatusNew_5_ie_s = raiseDebugExceptionIntr ? mstatusStruct_ie_s : _GEN_475; // @[CSR.scala 1123:36]
  wire [1:0] mstatusNew_5_mpp = raiseDebugExceptionIntr ? mstatusStruct_mpp : _GEN_480; // @[CSR.scala 1123:36]
  wire  mstatusNew_5_pie_m = raiseDebugExceptionIntr ? mstatusStruct_pie_m : _GEN_481; // @[CSR.scala 1123:36]
  wire  mstatusNew_5_ie_m = raiseDebugExceptionIntr ? mstatusStruct_ie_m : _GEN_482; // @[CSR.scala 1123:36]
  wire [5:0] mstatus_lo_lo_5 = {mstatusNew_5_pie_s,mstatusStruct_pie_u,mstatusNew_5_ie_m,mstatusStruct_ie_h,
    mstatusNew_5_ie_s,mstatusStruct_ie_u}; // @[CSR.scala 1162:27]
  wire  mstatusNew_5_spp = _GEN_494[0];
  wire [16:0] mstatus_lo_5 = {mstatusStruct_xs,mstatusStruct_fs,mstatusNew_5_mpp,mstatusStruct_hpp,mstatusNew_5_spp,
    mstatusNew_5_pie_m,mstatusStruct_pie_h,mstatus_lo_lo_5}; // @[CSR.scala 1162:27]
  wire [5:0] mstatus_hi_lo_5 = {mstatusStruct_tsr,mstatusStruct_tw,mstatusStruct_tvm,mstatusStruct_mxr,mstatusStruct_sum
    ,mstatusNew_5_mprv}; // @[CSR.scala 1162:27]
  wire [63:0] _mstatus_T_13 = {mstatusStruct_sd,mstatusStruct_pad1,mstatusStruct_mbe,mstatusStruct_sbe,mstatusStruct_sxl
    ,mstatusStruct_uxl,mstatusStruct_pad0,mstatus_hi_lo_5,mstatus_lo_5}; // @[CSR.scala 1162:27]
  wire [63:0] _GEN_506 = csrio_exception_valid ? _GEN_490 : _GEN_142; // @[CSR.scala 1117:29]
  wire  distributedUpdateValid = delayedUpdate0_delay_io_out_wvalid | delayedUpdate1_delay_io_out_wvalid; // @[CSR.scala 1175:55]
  wire [11:0] distributedUpdateAddr = delayedUpdate0_delay_io_out_wvalid ? delayedUpdate0_delay_io_out_waddr :
    delayedUpdate1_delay_io_out_waddr; // @[CSR.scala 1176:34]
  reg  REG_28; // @[CSR.scala 1204:24]
  reg  REG_29; // @[CSR.scala 1204:16]
  wire [63:0] _mepc_T_7 = {mepc[63:1],1'h0}; // @[Cat.scala 31:58]
  wire [63:0] _sepc_T_7 = {sepc[63:1],1'h0}; // @[Cat.scala 31:58]
  reg [63:0] difftest_io_intrNO_REG; // @[CSR.scala 1218:50]
  reg [63:0] difftest_io_intrNO_REG_1; // @[CSR.scala 1218:42]
  reg [63:0] difftest_io_intrNO_REG_2; // @[CSR.scala 1218:34]
  reg [63:0] difftest_io_cause_REG; // @[CSR.scala 1219:50]
  reg [63:0] difftest_io_cause_REG_1; // @[CSR.scala 1219:42]
  reg [63:0] difftest_io_cause_REG_2; // @[CSR.scala 1219:34]
  reg [63:0] difftest_io_exceptionPC_REG; // @[CSR.scala 1220:55]
  reg [63:0] difftest_io_exceptionPC_REG_1; // @[CSR.scala 1220:47]
  reg [63:0] difftest_io_exceptionPC_REG_2; // @[CSR.scala 1220:39]
  DelayN_25 delay ( // @[Hold.scala 97:23]
    .clock(delay_clock),
    .io_in(delay_io_in),
    .io_out(delay_io_out)
  );
  DelayN_26 delayedUpdate0_delay ( // @[Hold.scala 97:23]
    .clock(delayedUpdate0_delay_clock),
    .io_in_wvalid(delayedUpdate0_delay_io_in_wvalid),
    .io_in_waddr(delayedUpdate0_delay_io_in_waddr),
    .io_in_wdata(delayedUpdate0_delay_io_in_wdata),
    .io_out_wvalid(delayedUpdate0_delay_io_out_wvalid),
    .io_out_waddr(delayedUpdate0_delay_io_out_waddr),
    .io_out_wdata(delayedUpdate0_delay_io_out_wdata)
  );
  DelayN_26 delayedUpdate1_delay ( // @[Hold.scala 97:23]
    .clock(delayedUpdate1_delay_clock),
    .io_in_wvalid(delayedUpdate1_delay_io_in_wvalid),
    .io_in_waddr(delayedUpdate1_delay_io_in_waddr),
    .io_in_wdata(delayedUpdate1_delay_io_in_wdata),
    .io_out_wvalid(delayedUpdate1_delay_io_out_wvalid),
    .io_out_waddr(delayedUpdate1_delay_io_out_waddr),
    .io_out_wdata(delayedUpdate1_delay_io_out_wdata)
  );
`ifndef SYNTHESIS
  DifftestArchEvent difftest ( // @[CSR.scala 1215:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_intrNO(difftest_io_intrNO),
    .io_cause(difftest_io_cause),
    .io_exceptionPC(difftest_io_exceptionPC),
    .io_exceptionInst(difftest_io_exceptionInst)
  );
`endif
`ifndef SYNTHESIS
  DifftestCSRState difftest_1 ( // @[CSR.scala 1228:26]
    .io_clock(difftest_1_io_clock),
    .io_coreid(difftest_1_io_coreid),
    .io_priviledgeMode(difftest_1_io_priviledgeMode),
    .io_mstatus(difftest_1_io_mstatus),
    .io_sstatus(difftest_1_io_sstatus),
    .io_mepc(difftest_1_io_mepc),
    .io_sepc(difftest_1_io_sepc),
    .io_mtval(difftest_1_io_mtval),
    .io_stval(difftest_1_io_stval),
    .io_mtvec(difftest_1_io_mtvec),
    .io_stvec(difftest_1_io_stvec),
    .io_mcause(difftest_1_io_mcause),
    .io_scause(difftest_1_io_scause),
    .io_satp(difftest_1_io_satp),
    .io_mip(difftest_1_io_mip),
    .io_mie(difftest_1_io_mie),
    .io_mscratch(difftest_1_io_mscratch),
    .io_sscratch(difftest_1_io_sscratch),
    .io_mideleg(difftest_1_io_mideleg),
    .io_medeleg(difftest_1_io_medeleg)
  );
`endif
`ifndef SYNTHESIS
  DifftestDebugMode difftest_2 ( // @[CSR.scala 1252:26]
    .io_clock(difftest_2_io_clock),
    .io_coreid(difftest_2_io_coreid),
    .io_debugMode(difftest_2_io_debugMode),
    .io_dcsr(difftest_2_io_dcsr),
    .io_dpc(difftest_2_io_dpc),
    .io_dscratch0(difftest_2_io_dscratch0),
    .io_dscratch1(difftest_2_io_dscratch1)
  );
`endif
  assign io_out_valid = io_in_valid; // @[CSR.scala 962:16]
  assign io_out_bits_data = _rdata_T_813 | _rdata_T_652; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_exceptionVec_2 = isIllegalAddr | isIllegalAccess | isIllegalPrivOp; // @[CSR.scala 974:69]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_in_valid & isEbreak & (ebreakCauseException | debugMode); // @[CSR.scala 967:58]
  assign io_out_bits_uop_cf_exceptionVec_8 = _csrio_disableSfence_T & io_in_valid & isEcall; // @[CSR.scala 970:70]
  assign io_out_bits_uop_cf_exceptionVec_9 = _tvmNotPermit_T & io_in_valid & isEcall; // @[CSR.scala 969:70]
  assign io_out_bits_uop_cf_exceptionVec_11 = _perfcntPermitted_T & io_in_valid & isEcall; // @[CSR.scala 968:70]
  assign io_out_bits_uop_cf_pd_isRVC = io_in_bits_uop_cf_pd_isRVC; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_brType = io_in_bits_uop_cf_pd_brType; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_isCall = io_in_bits_uop_cf_pd_isCall; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_cf_pd_isRet = io_in_bits_uop_cf_pd_isRet; // @[CSR.scala 141:19 142:9]
  assign io_out_bits_uop_ctrl_rfWen = io_in_bits_uop_ctrl_rfWen; // @[CSR.scala 818:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_bits_uop_ctrl_fpWen; // @[CSR.scala 818:19]
  assign io_out_bits_uop_ctrl_flushPipe = resetSatp | io_in_valid & _isEbreak_T_1 & ~isEcall & ~isEbreak; // @[CSR.scala 904:26]
  assign io_out_bits_uop_ctrl_imm = io_in_bits_uop_ctrl_imm; // @[CSR.scala 818:19]
  assign io_out_bits_uop_pdest = io_in_bits_uop_pdest; // @[CSR.scala 818:19]
  assign io_out_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[CSR.scala 818:19]
  assign io_out_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[CSR.scala 818:19]
  assign io_out_bits_uop_lqIdx_flag = io_in_bits_uop_lqIdx_flag; // @[CSR.scala 818:19]
  assign io_out_bits_uop_lqIdx_value = io_in_bits_uop_lqIdx_value; // @[CSR.scala 818:19]
  assign csrio_isPerfCnt = addrInPerfCnt & io_in_valid & io_in_bits_uop_ctrl_fuOpType != 7'h0; // @[CSR.scala 798:45]
  assign csrio_fpu_frm = fcsr[7:5]; // @[CSR.scala 853:33]
  assign csrio_isXRet = isXRetFlag; // @[CSR.scala 1099:16]
  assign csrio_trapTarget = csrio_trapTarget_r; // @[CSR.scala 1107:20]
  assign csrio_interrupt = |intrVec; // @[CSR.scala 993:28]
  assign csrio_wfi_event = debugIntr | |_intrVec_T_4; // @[CSR.scala 999:32]
  assign csrio_tlb_satp_mode = satp[63:60]; // @[Bundle.scala 446:33]
  assign csrio_tlb_satp_asid = satp[59:44]; // @[Bundle.scala 446:33]
  assign csrio_tlb_satp_ppn = {{7'd0}, _tlbBundle_satp_ppn_T_1}; // @[CSR.scala 575:23 Bundle.scala 449:9]
  assign csrio_tlb_satp_changed = sa_asid != tlbBundle_satp_changed_REG; // @[Hold.scala 76:10]
  assign csrio_tlb_priv_mxr = mstatus[19]; // @[CSR.scala 406:39]
  assign csrio_tlb_priv_sum = mstatus[18]; // @[CSR.scala 406:39]
  assign csrio_tlb_priv_imode = priviledgeMode; // @[CSR.scala 575:23 898:24]
  assign csrio_tlb_priv_dmode = debugMode & dcsrData_mprven ? 2'h3 : _tlbBundle_priv_dmode_T_18; // @[CSR.scala 899:30]
  assign csrio_disableSfence = tvmNotPermit | priviledgeMode == 2'h0; // @[CSR.scala 806:39]
  assign csrio_customCtrl_l2_pf_store_only = spfctl[17]; // @[CSR.scala 514:46]
  assign csrio_customCtrl_lvpred_timeout = slvpredctl[8:4]; // @[CSR.scala 533:48]
  assign csrio_customCtrl_bp_ctrl_ubtb_enable = sbpctl[0]; // @[CSR.scala 476:49]
  assign csrio_customCtrl_bp_ctrl_btb_enable = sbpctl[1]; // @[CSR.scala 477:49]
  assign csrio_customCtrl_bp_ctrl_tage_enable = sbpctl[3]; // @[CSR.scala 479:49]
  assign csrio_customCtrl_bp_ctrl_sc_enable = sbpctl[4]; // @[CSR.scala 480:49]
  assign csrio_customCtrl_bp_ctrl_ras_enable = sbpctl[5]; // @[CSR.scala 481:49]
  assign csrio_customCtrl_ldld_vio_check_enable = smblockctl[4]; // @[CSR.scala 558:55]
  assign csrio_customCtrl_cache_error_enable = smblockctl[6]; // @[CSR.scala 560:52]
  assign csrio_customCtrl_uncache_write_outstanding_enable = smblockctl[7]; // @[CSR.scala 561:66]
  assign csrio_customCtrl_fusion_enable = srnctl[0]; // @[CSR.scala 571:43]
  assign csrio_customCtrl_wfi_enable = srnctl[2]; // @[CSR.scala 573:40]
  assign csrio_customCtrl_svinval_enable = srnctl[1]; // @[CSR.scala 572:44]
  assign csrio_customCtrl_distribute_csr_wvalid = wen & permitted; // @[CSR.scala 823:50]
  assign csrio_customCtrl_distribute_csr_waddr = io_in_bits_uop_ctrl_imm[11:0]; // @[CSR.scala 783:18]
  assign csrio_customCtrl_distribute_csr_wdata = _wdata_T_21 | _wdata_T_17; // @[Mux.scala 27:73]
  assign csrio_customCtrl_singlestep = dcsrData_step & ~debugMode; // @[CSR.scala 260:48]
  assign csrio_customCtrl_frontend_trigger_t_valid = csrio_customCtrl_frontend_trigger_t_valid_REG; // @[CSR.scala 862:45]
  assign csrio_customCtrl_frontend_trigger_t_bits_addr = 4'h8 == tselectPhy ? 2'h3 :
    _csrio_customCtrl_frontend_trigger_t_bits_addr_T_5; // @[Mux.scala 81:58]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType = _GEN_9[8:7]; // @[CSR.scala 320:19 321:19]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_select = _GEN_9[19]; // @[CSR.scala 344:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_timing = _GEN_9[18]; // @[CSR.scala 344:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_chain = _GEN_9[11]; // @[CSR.scala 344:102]
  assign csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 326:{16,16}]
  assign csrio_customCtrl_mem_trigger_t_valid = csrio_customCtrl_mem_trigger_t_valid_REG; // @[CSR.scala 863:40]
  assign csrio_customCtrl_mem_trigger_t_bits_addr = 4'h9 == tselectPhy ? 3'h5 :
    _csrio_customCtrl_mem_trigger_t_bits_addr_T_9; // @[Mux.scala 81:58]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_matchType = _GEN_9[8:7]; // @[CSR.scala 320:19 321:19]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_select = _GEN_9[19]; // @[CSR.scala 345:97]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_chain = _GEN_9[11]; // @[CSR.scala 345:97]
  assign csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 = 4'h9 == tselectPhy ? tdata2Phy_9 : _GEN_18; // @[CSR.scala 326:{16,16}]
  assign csrio_customCtrl_trigger_enable_0 = _T_402 | tdata1Phy_0[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_1 = _T_467 | tdata1Phy_1[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_2 = _T_532 | tdata1Phy_2[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_3 = _T_597 | tdata1Phy_3[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_4 = _T_662 | tdata1Phy_4[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_5 = _T_727 | tdata1Phy_5[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_6 = _T_792 | tdata1Phy_6[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_7 = _T_857 | tdata1Phy_7[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_8 = _T_922 | tdata1Phy_8[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign csrio_customCtrl_trigger_enable_9 = _T_987 | tdata1Phy_9[3] & _csrio_disableSfence_T; // @[CSR.scala 860:42]
  assign delay_clock = clock;
  assign delay_io_in = io_redirectIn_valid; // @[Hold.scala 98:17]
  assign delayedUpdate0_delay_clock = clock;
  assign delayedUpdate0_delay_io_in_wvalid = csrio_distributedUpdate_0_wvalid; // @[Hold.scala 98:17]
  assign delayedUpdate0_delay_io_in_waddr = csrio_distributedUpdate_0_waddr; // @[Hold.scala 98:17]
  assign delayedUpdate0_delay_io_in_wdata = csrio_distributedUpdate_0_wdata; // @[Hold.scala 98:17]
  assign delayedUpdate1_delay_clock = clock;
  assign delayedUpdate1_delay_io_in_wvalid = csrio_distributedUpdate_1_wvalid; // @[Hold.scala 98:17]
  assign delayedUpdate1_delay_io_in_waddr = csrio_distributedUpdate_1_waddr; // @[Hold.scala 98:17]
  assign delayedUpdate1_delay_io_in_wdata = csrio_distributedUpdate_1_wdata; // @[Hold.scala 98:17]
  assign difftest_io_clock = clock; // @[CSR.scala 1216:23]
  assign difftest_io_coreid = csrio_hartId; // @[CSR.scala 1217:24]
  assign difftest_io_intrNO = difftest_io_intrNO_REG_2[31:0]; // @[CSR.scala 1218:24]
  assign difftest_io_cause = difftest_io_cause_REG_2[31:0]; // @[CSR.scala 1219:24]
  assign difftest_io_exceptionPC = difftest_io_exceptionPC_REG_2; // @[CSR.scala 1220:29]
  assign difftest_io_exceptionInst = 32'h0;
  assign difftest_1_io_clock = clock; // @[CSR.scala 1229:23]
  assign difftest_1_io_coreid = csrio_hartId; // @[CSR.scala 1230:24]
  assign difftest_1_io_priviledgeMode = priviledgeMode; // @[CSR.scala 1231:32]
  assign difftest_1_io_mstatus = mstatus; // @[CSR.scala 1232:25]
  assign difftest_1_io_sstatus = mstatus & 64'h80000003000de122; // @[CSR.scala 1233:36]
  assign difftest_1_io_mepc = mepc; // @[CSR.scala 1234:22]
  assign difftest_1_io_sepc = sepc; // @[CSR.scala 1235:22]
  assign difftest_1_io_mtval = mtval; // @[CSR.scala 1236:22]
  assign difftest_1_io_stval = stval; // @[CSR.scala 1237:22]
  assign difftest_1_io_mtvec = mtvec; // @[CSR.scala 1238:23]
  assign difftest_1_io_stvec = stvec; // @[CSR.scala 1239:23]
  assign difftest_1_io_mcause = mcause; // @[CSR.scala 1240:24]
  assign difftest_1_io_scause = scause; // @[CSR.scala 1241:24]
  assign difftest_1_io_satp = satp; // @[CSR.scala 1242:22]
  assign difftest_1_io_mip = mipReg; // @[CSR.scala 1243:21]
  assign difftest_1_io_mie = mie; // @[CSR.scala 1244:21]
  assign difftest_1_io_mscratch = mscratch; // @[CSR.scala 1245:26]
  assign difftest_1_io_sscratch = sscratch; // @[CSR.scala 1246:26]
  assign difftest_1_io_mideleg = mideleg; // @[CSR.scala 1247:25]
  assign difftest_1_io_medeleg = medeleg; // @[CSR.scala 1248:25]
  assign difftest_2_io_clock = clock; // @[CSR.scala 1253:23]
  assign difftest_2_io_coreid = csrio_hartId; // @[CSR.scala 1254:24]
  assign difftest_2_io_debugMode = debugMode; // @[CSR.scala 1255:27]
  assign difftest_2_io_dcsr = {{32'd0}, dcsr}; // @[CSR.scala 1256:22]
  assign difftest_2_io_dpc = dpc; // @[CSR.scala 1257:21]
  assign difftest_2_io_dscratch0 = dscratch; // @[CSR.scala 1258:27]
  assign difftest_2_io_dscratch1 = dscratch1; // @[CSR.scala 1259:27]
  always @(posedge clock) begin
    if (csrio_exception_valid) begin // @[CSR.scala 1117:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1123:36]
        if (raiseDebugIntr) begin // @[CSR.scala 1124:29]
          dpc <= iexceptionPC; // @[CSR.scala 1127:13]
        end else if ((hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T) begin // @[CSR.scala 1132:67]
          dpc <= iexceptionPC; // @[CSR.scala 1135:13]
        end else begin
          dpc <= _GEN_251;
        end
      end else begin
        dpc <= _GEN_251;
      end
    end else begin
      dpc <= _GEN_251;
    end
    if (wen_reg_57) begin // @[RegMap.scala 56:24]
      dscratch <= wdata_reg; // @[RegMap.scala 56:28]
    end
    if (wen_reg_4) begin // @[RegMap.scala 56:24]
      dscratch1 <= wdata_reg; // @[RegMap.scala 56:28]
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h0 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_0 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h1 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_1 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h2 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_2 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h3 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_3 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h4 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_4 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h5 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_5 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h6 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_6 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h7 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_7 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h8 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_8 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (wen_reg_11) begin // @[RegMap.scala 56:24]
      if (4'h9 == tselectPhy) begin // @[RegMap.scala 56:28]
        tdata2Phy_9 <= wdata_reg; // @[RegMap.scala 56:28]
      end
    end
    if (REG_29) begin // @[CSR.scala 1204:58]
      mepc <= _mepc_T_7; // @[CSR.scala 1205:10]
    end else if (csrio_exception_valid) begin // @[CSR.scala 1117:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1123:36]
        mepc <= _GEN_311;
      end else if (debugMode) begin // @[CSR.scala 1143:28]
        mepc <= _GEN_311;
      end else begin
        mepc <= _GEN_466;
      end
    end else begin
      mepc <= _GEN_311;
    end
    if (REG_1) begin // @[CSR.scala 380:58]
      mhartid <= {{56'd0}, csrio_hartId}; // @[CSR.scala 381:13]
    end
    REG <= reset; // @[CSR.scala 380:31]
    REG_1 <= REG & ~reset; // @[CSR.scala 380:39]
    addr_1_0 <= _GEN_274[33:0];
    addr_1_1 <= _GEN_35[33:0];
    addr_1_2 <= _GEN_299[33:0];
    addr_1_3 <= _GEN_247[33:0];
    addr_1_4 <= _GEN_148[33:0];
    addr_1_5 <= _GEN_107[33:0];
    addr_1_6 <= _GEN_313[33:0];
    addr_1_7 <= _GEN_285[33:0];
    addr_1_8 <= _GEN_137[33:0];
    addr_1_9 <= _GEN_228[33:0];
    addr_1_10 <= _GEN_280[33:0];
    addr_1_11 <= _GEN_364[33:0];
    addr_1_12 <= _GEN_123[33:0];
    addr_1_13 <= _GEN_134[33:0];
    addr_1_14 <= _GEN_240[33:0];
    addr_1_15 <= _GEN_262[33:0];
    if (csrio_exception_valid) begin // @[CSR.scala 1117:29]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 1123:36]
        stval <= _GEN_439;
      end else if (debugMode) begin // @[CSR.scala 1143:28]
        stval <= _GEN_439;
      end else if (delegS) begin // @[CSR.scala 1145:25]
        stval <= _GEN_456;
      end else begin
        stval <= _GEN_439;
      end
    end else begin
      stval <= _GEN_439;
    end
    tlbBundle_satp_changed_REG <= satp[59:44]; // @[Bundle.scala 446:33]
    minstret_REG <= csrio_perf_retiredInstr; // @[CSR.scala 659:33]
    if (_T_272) begin // @[Reg.scala 17:18]
      wdata_reg <= wdata; // @[Reg.scala 17:22]
    end
    wen_reg <= _T_272 & addr_3 == 12'hb06; // @[RegMap.scala 55:35]
    wen_reg_1 <= _T_272 & addr_3 == 12'h329; // @[RegMap.scala 55:35]
    wen_reg_2 <= _T_272 & addr_3 == 12'h7cb; // @[RegMap.scala 55:35]
    wen_reg_3 <= _T_272 & addr_3 == 12'hb15; // @[RegMap.scala 55:35]
    wen_reg_4 <= _T_272 & addr_3 == 12'h7b3; // @[RegMap.scala 55:35]
    wen_reg_5 <= _T_272 & addr_3 == 12'h5ce; // @[RegMap.scala 55:35]
    wen_reg_6 <= _T_272 & addr_3 == 12'h5d9; // @[RegMap.scala 55:35]
    wen_reg_7 <= _T_272 & _accessPermitted_T; // @[RegMap.scala 55:35]
    wen_reg_8 <= _T_272 & addr_3 == 12'h7cf; // @[RegMap.scala 55:35]
    wen_reg_9 <= _T_272 & addr_3 == 12'h32e; // @[RegMap.scala 55:35]
    wen_reg_10 <= _T_272 & addr_3 == 12'h3b1; // @[RegMap.scala 55:35]
    wen_reg_11 <= _T_272 & addr_3 == 12'h7a2; // @[RegMap.scala 55:35]
    wen_reg_12 <= _T_272 & addr_3 == 12'hb1c; // @[RegMap.scala 55:35]
    wen_reg_13 <= _T_272 & addr_3 == 12'h3a2; // @[RegMap.scala 55:35]
    wen_reg_14 <= _T_272 & addr_3 == 12'h33d; // @[RegMap.scala 55:35]
    wen_reg_15 <= _T_272 & addr_3 == 12'h5c3; // @[RegMap.scala 55:35]
    wen_reg_16 <= _T_272 & addr_3 == 12'h140; // @[RegMap.scala 55:35]
    wen_reg_17 <= _T_272 & addr_3 == 12'hb09; // @[RegMap.scala 55:35]
    wen_reg_18 <= _T_272 & addr_3 == 12'hb03; // @[RegMap.scala 55:35]
    wen_reg_19 <= _T_272 & addr_3 == 12'h5ca; // @[RegMap.scala 55:35]
    wen_reg_20 <= _T_272 & addr_3 == 12'h7c8; // @[RegMap.scala 55:35]
    wen_reg_21 <= _T_272 & addr_3 == 12'h3b5; // @[RegMap.scala 55:35]
    wen_reg_22 <= _T_272 & addr_3 == 12'h331; // @[RegMap.scala 55:35]
    wen_reg_23 <= _T_272 & addr_3 == 12'h5c7; // @[RegMap.scala 55:35]
    wen_reg_24 <= _T_272 & addr_3 == 12'h302; // @[RegMap.scala 55:35]
    wen_reg_25 <= _T_272 & addr_3 == 12'h5d6; // @[RegMap.scala 55:35]
    wen_reg_26 <= _T_272 & addr_3 == 12'h105; // @[RegMap.scala 55:35]
    wen_reg_27 <= _T_272 & addr_3 == 12'hb0d; // @[RegMap.scala 55:35]
    wen_reg_28 <= _T_272 & addr_3 == 12'h7d7; // @[RegMap.scala 55:35]
    wen_reg_29 <= _T_272 & addr_3 == 12'h5d1; // @[RegMap.scala 55:35]
    wen_reg_30 <= _T_272 & addr_3 == 12'h141; // @[RegMap.scala 55:35]
    wen_reg_31 <= _T_272 & addr_3 == 12'h342; // @[RegMap.scala 55:35]
    wen_reg_32 <= _T_272 & addr_3 == 12'h326; // @[RegMap.scala 55:35]
    wen_reg_33 <= _T_272 & addr_3 == 12'h335; // @[RegMap.scala 55:35]
    wen_reg_34 <= _T_272 & addr_3 == 12'hb11; // @[RegMap.scala 55:35]
    wen_reg_35 <= _T_272 & addr_3 == 12'h3bc; // @[RegMap.scala 55:35]
    wen_reg_36 <= _T_272 & addr_3 == 12'h306; // @[RegMap.scala 55:35]
    wen_reg_37 <= _T_272 & addr_3 == 12'h7d2; // @[RegMap.scala 55:35]
    wen_reg_38 <= _T_272 & addr_3 == 12'h1; // @[RegMap.scala 55:35]
    wen_reg_39 <= _T_272 & addr_3 == 12'h32a; // @[RegMap.scala 55:35]
    wen_reg_40 <= _T_272 & addr_3 == 12'h9c0; // @[RegMap.scala 55:35]
    wen_reg_41 <= _T_272 & addr_3 == 12'h7d0; // @[RegMap.scala 55:35]
    wen_reg_42 <= _T_272 & addr_3 == 12'h3bd; // @[RegMap.scala 55:35]
    wen_reg_43 <= _T_272 & addr_3 == 12'h339; // @[RegMap.scala 55:35]
    wen_reg_44 <= _T_272 & addr_3 == 12'h3b8; // @[RegMap.scala 55:35]
    wen_reg_45 <= _T_272 & addr_3 == 12'h104; // @[RegMap.scala 55:35]
    wen_reg_46 <= _T_272 & addr_3 == 12'h334; // @[RegMap.scala 55:35]
    wen_reg_47 <= _T_272 & addr_3 == 12'h5cf; // @[RegMap.scala 55:35]
    wen_reg_48 <= _T_272 & addr_3 == 12'h32f; // @[RegMap.scala 55:35]
    wen_reg_49 <= _T_272 & addr_3 == 12'h7b0; // @[RegMap.scala 55:35]
    wen_reg_50 <= _T_272 & addr_3 == 12'hb0a; // @[RegMap.scala 55:35]
    wen_reg_51 <= _T_272 & addr_3 == 12'hb04; // @[RegMap.scala 55:35]
    wen_reg_52 <= _T_272 & addr_3 == 12'h33e; // @[RegMap.scala 55:35]
    wen_reg_53 <= _T_272 & addr_3 == 12'hb18; // @[RegMap.scala 55:35]
    wen_reg_54 <= _T_272 & addr_3 == 12'h3b4; // @[RegMap.scala 55:35]
    wen_reg_55 <= _T_272 & addr_3 == 12'h7a1; // @[RegMap.scala 55:35]
    wen_reg_56 <= _T_272 & addr_3 == 12'hb19; // @[RegMap.scala 55:35]
    wen_reg_57 <= _T_272 & addr_3 == 12'h7b2; // @[RegMap.scala 55:35]
    wen_reg_58 <= _T_272 & addr_3 == 12'h100; // @[RegMap.scala 55:35]
    wen_reg_59 <= _T_272 & addr_3 == 12'h5d5; // @[RegMap.scala 55:35]
    wen_reg_60 <= _T_272 & addr_3 == 12'hb0e; // @[RegMap.scala 55:35]
    wen_reg_61 <= _T_272 & addr_3 == 12'h5c6; // @[RegMap.scala 55:35]
    wen_reg_62 <= _T_272 & addr_3 == 12'hb14; // @[RegMap.scala 55:35]
    wen_reg_63 <= _T_272 & addr_3 == 12'hb1d; // @[RegMap.scala 55:35]
    wen_reg_64 <= _T_272 & addr_3 == 12'h7d6; // @[RegMap.scala 55:35]
    wen_reg_65 <= _T_272 & addr_3 == 12'h7c0; // @[RegMap.scala 55:35]
    wen_reg_66 <= _T_272 & addr_3 == 12'h2; // @[RegMap.scala 55:35]
    wen_reg_67 <= _T_272 & addr_3 == 12'h325; // @[RegMap.scala 55:35]
    wen_reg_68 <= _T_272 & addr_3 == 12'h3b9; // @[RegMap.scala 55:35]
    wen_reg_69 <= _T_272 & addr_3 == 12'h305; // @[RegMap.scala 55:35]
    wen_reg_70 <= _T_272 & addr_3 == 12'h7cc; // @[RegMap.scala 55:35]
    wen_reg_71 <= _T_272 & addr_3 == 12'h7d1; // @[RegMap.scala 55:35]
    wen_reg_72 <= _T_272 & addr_3 == 12'h338; // @[RegMap.scala 55:35]
    wen_reg_73 <= _T_272 & addr_3 == 12'h5cb; // @[RegMap.scala 55:35]
    wen_reg_74 <= _T_272 & addr_3 == 12'h333; // @[RegMap.scala 55:35]
    wen_reg_75 <= _T_272 & addr_3 == 12'h304; // @[RegMap.scala 55:35]
    wen_reg_76 <= _T_272 & addr_3 == 12'h33a; // @[RegMap.scala 55:35]
    wen_reg_77 <= _T_272 & addr_3 == 12'h3be; // @[RegMap.scala 55:35]
    wen_reg_78 <= _T_272 & addr_3 == 12'h5d0; // @[RegMap.scala 55:35]
    wen_reg_79 <= _T_272 & addr_3 == 12'hb0b; // @[RegMap.scala 55:35]
    wen_reg_80 <= _T_272 & addr_3 == 12'h7cd; // @[RegMap.scala 55:35]
    wen_reg_81 <= _T_272 & addr_3 == 12'h324; // @[RegMap.scala 55:35]
    wen_reg_82 <= _T_272 & addr_3 == 12'h3b3; // @[RegMap.scala 55:35]
    wen_reg_83 <= _T_272 & addr_3 == 12'h33f; // @[RegMap.scala 55:35]
    wen_reg_84 <= _T_272 & addr_3 == 12'h5d4; // @[RegMap.scala 55:35]
    wen_reg_85 <= _T_272 & addr_3 == 12'hb17; // @[RegMap.scala 55:35]
    wen_reg_86 <= _T_272 & addr_3 == 12'h7b1; // @[RegMap.scala 55:35]
    wen_reg_87 <= _T_272 & addr_3 == 12'hb08; // @[RegMap.scala 55:35]
    wen_reg_88 <= _T_272 & addr_3 == 12'h32b; // @[RegMap.scala 55:35]
    wen_reg_89 <= _T_272 & addr_3 == 12'h330; // @[RegMap.scala 55:35]
    wen_reg_90 <= _T_272 & addr_3 == 12'h143; // @[RegMap.scala 55:35]
    wen_reg_91 <= _T_272 & addr_3 == 12'h7c9; // @[RegMap.scala 55:35]
    wen_reg_92 <= _T_272 & addr_3 == 12'hb1a; // @[RegMap.scala 55:35]
    wen_reg_93 <= _T_272 & addr_3 == 12'h7a0; // @[RegMap.scala 55:35]
    wen_reg_94 <= _T_272 & addr_3 == 12'h5c2; // @[RegMap.scala 55:35]
    wen_reg_95 <= _T_272 & addr_3 == 12'h3bf; // @[RegMap.scala 55:35]
    wen_reg_96 <= _T_272 & addr_3 == 12'h300; // @[RegMap.scala 55:35]
    wen_reg_97 <= _T_272 & addr_3 == 12'h33b; // @[RegMap.scala 55:35]
    wen_reg_98 <= _T_272 & addr_3 == 12'hb13; // @[RegMap.scala 55:35]
    wen_reg_99 <= _T_272 & addr_3 == 12'h5c5; // @[RegMap.scala 55:35]
    wen_reg_100 <= _T_272 & addr_3 == 12'h3; // @[RegMap.scala 55:35]
    wen_reg_101 <= _T_272 & addr_3 == 12'h5d8; // @[RegMap.scala 55:35]
    wen_reg_102 <= _T_272 & addr_3 == 12'h7d5; // @[RegMap.scala 55:35]
    wen_reg_103 <= _T_272 & addr_3 == 12'hb00; // @[RegMap.scala 55:35]
    wen_reg_104 <= _T_272 & addr_3 == 12'h3b0; // @[RegMap.scala 55:35]
    wen_reg_105 <= _T_272 & addr_3 == 12'h32c; // @[RegMap.scala 55:35]
    wen_reg_106 <= _T_272 & addr_3 == 12'h5c0; // @[RegMap.scala 55:35]
    wen_reg_107 <= _T_272 & addr_3 == 12'hb1e; // @[RegMap.scala 55:35]
    wen_reg_108 <= _T_272 & addr_3 == 12'h337; // @[RegMap.scala 55:35]
    wen_reg_109 <= _T_272 & addr_3 == 12'h3ba; // @[RegMap.scala 55:35]
    wen_reg_110 <= _T_272 & addr_3 == 12'hb05; // @[RegMap.scala 55:35]
    wen_reg_111 <= _T_272 & addr_3 == 12'h5cc; // @[RegMap.scala 55:35]
    wen_reg_112 <= _T_272 & addr_3 == 12'hb0f; // @[RegMap.scala 55:35]
    wen_reg_113 <= _T_272 & addr_3 == 12'h3b7; // @[RegMap.scala 55:35]
    wen_reg_114 <= _T_272 & addr_3 == 12'h328; // @[RegMap.scala 55:35]
    wen_reg_115 <= _T_272 & addr_3 == 12'hb16; // @[RegMap.scala 55:35]
    wen_reg_116 <= _T_272 & addr_3 == 12'hb1b; // @[RegMap.scala 55:35]
    wen_reg_117 <= _T_272 & addr_3 == 12'h5cd; // @[RegMap.scala 55:35]
    wen_reg_118 <= _T_272 & addr_3 == 12'hb02; // @[RegMap.scala 55:35]
    wen_reg_119 <= _T_272 & addr_3 == 12'hb0c; // @[RegMap.scala 55:35]
    wen_reg_120 <= _T_272 & addr_3 == 12'h303; // @[RegMap.scala 55:35]
    wen_reg_121 <= _T_272 & addr_3 == 12'h7ce; // @[RegMap.scala 55:35]
    wen_reg_122 <= _T_272 & addr_3 == 12'h32d; // @[RegMap.scala 55:35]
    wen_reg_123 <= _T_272 & addr_3 == 12'h5c4; // @[RegMap.scala 55:35]
    wen_reg_124 <= _T_272 & addr_3 == 12'h5c9; // @[RegMap.scala 55:35]
    wen_reg_125 <= _T_272 & addr_3 == 12'h3b2; // @[RegMap.scala 55:35]
    wen_reg_126 <= _T_272 & addr_3 == 12'hb07; // @[RegMap.scala 55:35]
    wen_reg_127 <= _T_272 & addr_3 == 12'h7d4; // @[RegMap.scala 55:35]
    wen_reg_128 <= _T_272 & addr_3 == 12'h5d3; // @[RegMap.scala 55:35]
    wen_reg_129 <= _T_272 & addr_3 == 12'h340; // @[RegMap.scala 55:35]
    wen_reg_130 <= _T_272 & addr_3 == 12'h7ca; // @[RegMap.scala 55:35]
    wen_reg_131 <= _T_272 & addr_3 == 12'h320; // @[RegMap.scala 55:35]
    wen_reg_132 <= _T_272 & addr_3 == 12'h7d3; // @[RegMap.scala 55:35]
    wen_reg_133 <= _T_272 & addr_3 == 12'h7a5; // @[RegMap.scala 55:35]
    wen_reg_134 <= _T_272 & addr_3 == 12'h341; // @[RegMap.scala 55:35]
    wen_reg_135 <= _T_272 & addr_3 == 12'h3b6; // @[RegMap.scala 55:35]
    wen_reg_136 <= _T_272 & addr_3 == 12'h343; // @[RegMap.scala 55:35]
    wen_reg_137 <= _T_272 & addr_3 == 12'h106; // @[RegMap.scala 55:35]
    wen_reg_138 <= _T_272 & addr_3 == 12'h332; // @[RegMap.scala 55:35]
    wen_reg_139 <= _T_272 & addr_3 == 12'h7c2; // @[RegMap.scala 55:35]
    wen_reg_140 <= _T_272 & addr_3 == 12'h5c8; // @[RegMap.scala 55:35]
    wen_reg_141 <= _T_272 & addr_3 == 12'h5d7; // @[RegMap.scala 55:35]
    wen_reg_142 <= _T_272 & addr_3 == 12'h327; // @[RegMap.scala 55:35]
    wen_reg_143 <= _T_272 & addr_3 == 12'h33c; // @[RegMap.scala 55:35]
    wen_reg_144 <= _T_272 & addr_3 == 12'h5c1; // @[RegMap.scala 55:35]
    wen_reg_145 <= _T_272 & addr_3 == 12'h3bb; // @[RegMap.scala 55:35]
    wen_reg_146 <= _T_272 & addr_3 == 12'h3a0; // @[RegMap.scala 55:35]
    wen_reg_147 <= _T_272 & addr_3 == 12'hb1f; // @[RegMap.scala 55:35]
    wen_reg_148 <= _T_272 & addr_3 == 12'h336; // @[RegMap.scala 55:35]
    wen_reg_149 <= _T_272 & addr_3 == 12'h142; // @[RegMap.scala 55:35]
    wen_reg_150 <= _T_272 & addr_3 == 12'h323; // @[RegMap.scala 55:35]
    wen_reg_151 <= _T_272 & addr_3 == 12'hb10; // @[RegMap.scala 55:35]
    wen_reg_152 <= _T_272 & addr_3 == 12'h5d2; // @[RegMap.scala 55:35]
    wen_reg_153 <= _T_272 & addr_3 == 12'hb12; // @[RegMap.scala 55:35]
    if (_T_272) begin // @[Reg.scala 17:18]
      wdata_reg_1 <= wdataFix; // @[Reg.scala 17:22]
    end
    wen_reg_154 <= _T_272 & _addrInPerfCnt_T_7; // @[RegMap.scala 55:35]
    wen_reg_155 <= _T_272 & addr_3 == 12'h144; // @[RegMap.scala 55:35]
    REG_23 <= csrio_fpu_fflags_valid; // @[CSR.scala 843:16]
    fcsr_REG <= csrio_fpu_fflags_bits; // @[CSR.scala 844:46]
    REG_24 <= csrio_fpu_dirty_fs; // @[CSR.scala 847:39]
    csrio_customCtrl_frontend_trigger_t_valid_REG <= wen & (_wen_reg_T_110 | _wen_reg_T_22) &
      _tdata1Phy_tdata1_new_select_T_20; // @[CSR.scala 862:104]
    csrio_customCtrl_mem_trigger_t_valid_REG <= _csrio_customCtrl_frontend_trigger_t_valid_T_3 &
      _tdata1Phy_tdata1_new_select_T_19 != 2'h0; // @[CSR.scala 863:99]
    REG_25 <= |_updateTval_T; // @[CSR.scala 1067:13]
    REG_26 <= REG_25; // @[CSR.scala 1068:16]
    tval_REG <= hasInstrPageFault | hasInstrAccessFault; // @[CSR.scala 1070:43]
    tval_REG_1 <= tval_REG; // @[CSR.scala 1070:16]
    if (csrio_exception_bits_uop_cf_crossPageIPFFix) begin // @[CSR.scala 1071:28]
      tval_REG_2 <= _tval_T_5;
    end else if (ivmEnable) begin // @[CSR.scala 1009:25]
      tval_REG_2 <= _iexceptionPC_T_2;
    end else begin
      tval_REG_2 <= {{25'd0}, csrio_exception_bits_uop_cf_pc};
    end
    tval_REG_3 <= tval_REG_2; // @[CSR.scala 1071:16]
    REG_27 <= priviledgeMode == 2'h3; // @[CSR.scala 1078:34]
    if (_flushPipe_T_5) begin // @[Reg.scala 17:18]
      if (io_in_valid & isUret) begin // @[CSR.scala 950:26]
        retTargetReg <= 39'h0; // @[CSR.scala 958:15]
      end else if (_illegalSret_T & ~illegalSret & ~illegalSModeSret) begin // @[CSR.scala 937:63]
        retTargetReg <= sepc[38:0]; // @[CSR.scala 947:15]
      end else if (_illegalMret_T & ~illegalMret) begin // @[CSR.scala 924:42]
        retTargetReg <= mepc[38:0]; // @[CSR.scala 934:15]
      end else begin
        retTargetReg <= dpc[38:0];
      end
    end
    if (_csrio_trapTarget_T_10) begin // @[Reg.scala 17:18]
      if (isXRetFlag) begin // @[CSR.scala 1107:36]
        csrio_trapTarget_r <= retTargetReg;
      end else if (raiseDebugExceptionIntr | ebreakEnterParkLoop) begin // @[CSR.scala 1109:8]
        csrio_trapTarget_r <= {{9'd0}, debugTrapTarget};
      end else begin
        csrio_trapTarget_r <= _csrio_trapTarget_T_7;
      end
    end
    REG_28 <= reset; // @[CSR.scala 1204:31]
    REG_29 <= REG_28 & _T_5; // @[CSR.scala 1204:39]
    if (raiseIntr) begin // @[CSR.scala 1211:27]
      difftest_io_intrNO_REG <= causeNO;
    end else begin
      difftest_io_intrNO_REG <= 64'h0;
    end
    difftest_io_intrNO_REG_1 <= difftest_io_intrNO_REG; // @[CSR.scala 1218:42]
    difftest_io_intrNO_REG_2 <= difftest_io_intrNO_REG_1; // @[CSR.scala 1218:34]
    if (csrio_exception_valid) begin // @[CSR.scala 1219:54]
      difftest_io_cause_REG <= causeNO;
    end else begin
      difftest_io_cause_REG <= 64'h0;
    end
    difftest_io_cause_REG_1 <= difftest_io_cause_REG; // @[CSR.scala 1219:42]
    difftest_io_cause_REG_2 <= difftest_io_cause_REG_1; // @[CSR.scala 1219:34]
    if (dvmEnable) begin // @[CSR.scala 1011:25]
      difftest_io_exceptionPC_REG <= _iexceptionPC_T_2;
    end else begin
      difftest_io_exceptionPC_REG <= {{25'd0}, csrio_exception_bits_uop_cf_pc};
    end
    difftest_io_exceptionPC_REG_1 <= difftest_io_exceptionPC_REG; // @[CSR.scala 1220:47]
    difftest_io_exceptionPC_REG_2 <= difftest_io_exceptionPC_REG_1; // @[CSR.scala 1220:39]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 221:21]
      dcsr <= 32'h4000b000; // @[CSR.scala 221:21]
    end else begin
      dcsr <= _GEN_506[31:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      debugMode <= 1'h0; // @[CSR.scala 1123:36]
    end else if (csrio_exception_valid) begin // @[CSR.scala 909:26]
      if (raiseDebugExceptionIntr) begin // @[CSR.scala 920:15]
        debugMode <= _GEN_450;
      end
    end else if (io_in_valid & isDret) begin // @[CSR.scala 225:26]
      debugMode <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      debugIntrEnable <= 1'h1; // @[CSR.scala 1123:36 1142:23]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        debugIntrEnable <= 1'h0;
      end else begin
        debugIntrEnable <= _GEN_423;
      end
    end else begin
      debugIntrEnable <= _GEN_423;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_0 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h0 == tselectPhy) begin
        tdata1Phy_0 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_1 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h1 == tselectPhy) begin
        tdata1Phy_1 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_2 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h2 == tselectPhy) begin
        tdata1Phy_2 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_3 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h3 == tselectPhy) begin
        tdata1Phy_3 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_4 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h4 == tselectPhy) begin
        tdata1Phy_4 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_5 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h5 == tselectPhy) begin
        tdata1Phy_5 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_6 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h6 == tselectPhy) begin
        tdata1Phy_6 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_7 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h7 == tselectPhy) begin
        tdata1Phy_7 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_8 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h8 == tselectPhy) begin
        tdata1Phy_8 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tdata1Phy_9 <= 64'h2000000000000000; // @[CSR.scala 273:26 RegMap.scala 56:{28,28}]
    end else if (wen_reg_55) begin // @[CSR.scala 273:26]
      if (4'h9 == tselectPhy) begin
        tdata1Phy_9 <= _tdata1Phy_T_15;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tselectPhy <= 4'h0; // @[CSR.scala 313:8]
    end else if (wen_reg_93) begin // @[CSR.scala 275:27]
      if (wdata_reg < 64'ha) begin
        tselectPhy <= wdata_reg[3:0];
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      tControlPhy <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_133) begin // @[CSR.scala 277:28]
      tControlPhy <= _tControlPhy_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      triggerAction <= 1'h0; // @[CSR.scala 292:35 293:21 278:30]
    end else if (wen_reg_55) begin // @[CSR.scala 278:30]
      if (tdata1Phy_wdata_wire_action <= 4'h1) begin
        triggerAction <= tdata1Phy_tdata1_new_action[0];
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mtvec <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_69) begin // @[CSR.scala 350:22]
      mtvec <= _mtvec_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mcounteren <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_36) begin // @[CSR.scala 351:27]
      mcounteren <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      mcause <= 64'h0; // @[CSR.scala 1123:36 1143:28 1145:25 1154:14]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        mcause <= _GEN_118;
      end else if (debugMode) begin
        mcause <= _GEN_118;
      end else if (delegS) begin
        mcause <= _GEN_118;
      end else begin
        mcause <= causeNO;
      end
    end else begin
      mcause <= _GEN_118;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      mtval <= 64'h0; // @[CSR.scala 1123:36 1143:28 1145:25]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        mtval <= _GEN_438;
      end else if (debugMode) begin
        mtval <= _GEN_438;
      end else if (delegS) begin
        mtval <= _GEN_438;
      end else begin
        mtval <= _GEN_457;
      end
    end else begin
      mtval <= _GEN_438;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mie <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_75) begin // @[RegMap.scala 56:24]
      mie <= wdata_reg; // @[RegMap.scala 56:28]
    end else if (wen_reg_45) begin // @[CSR.scala 358:20]
      mie <= _mie_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mipReg <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_155) begin // @[RegMap.scala 56:24]
      mipReg <= _mipReg_T_7; // @[RegMap.scala 56:28]
    end else if (wen_reg_154) begin // @[CSR.scala 360:24]
      mipReg <= _mipReg_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      mstatus <= 64'ha00002000; // @[CSR.scala 1162:13]
    end else if (csrio_exception_valid) begin // @[CSR.scala 950:26]
      mstatus <= _mstatus_T_13; // @[CSR.scala 957:13]
    end else if (io_in_valid & isUret) begin // @[CSR.scala 937:63]
      mstatus <= _mstatus_T_12; // @[CSR.scala 944:13]
    end else if (_illegalSret_T & ~illegalSret & ~illegalSModeSret) begin // @[CSR.scala 924:42]
      mstatus <= _mstatus_T_11; // @[CSR.scala 932:13]
    end else if (_illegalMret_T & ~illegalMret) begin
      mstatus <= _mstatus_T_10;
    end else begin
      mstatus <= _GEN_420;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      medeleg <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_24) begin // @[CSR.scala 430:24]
      medeleg <= _medeleg_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mideleg <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_120) begin // @[CSR.scala 431:24]
      mideleg <= _mideleg_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mscratch <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_129) begin // @[CSR.scala 432:25]
      mscratch <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      cfgMerged__0 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_146) begin // @[PMP.scala 310:28]
      cfgMerged__0 <= _cfgMerged_1_T_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      cfgMerged__1 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_13) begin // @[PMP.scala 310:28]
      cfgMerged__1 <= _cfgMerged_1_T_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      cfgMerged_1_0 <= 64'hf0b0b0b0f0b0000; // @[RegMap.scala 56:28]
    end else if (wen_reg_65) begin // @[PMP.scala 310:28]
      cfgMerged_1_0 <= _cfgMerged_1_T_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      cfgMerged_1_1 <= 64'h7f1b080b080b080b; // @[RegMap.scala 56:28]
    end else if (wen_reg_139) begin // @[PMP.scala 310:28]
      cfgMerged_1_1 <= _cfgMerged_1_T_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_0 <= 34'h0; // @[PMP.scala 312:23]
    end else begin
      addr_2_0 <= _GEN_105[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_1 <= 34'h0; // @[PMP.scala 312:23]
    end else begin
      addr_2_1 <= _GEN_257[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_2 <= 34'h4000000; // @[PMP.scala 312:23]
    end else begin
      addr_2_2 <= _GEN_306[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_3 <= 34'h8000000; // @[PMP.scala 312:23]
    end else begin
      addr_2_3 <= _GEN_25[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_4 <= 34'hc004000; // @[PMP.scala 312:23]
    end else begin
      addr_2_4 <= _GEN_231[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_5 <= 34'hc014000; // @[PMP.scala 312:23]
    end else begin
      addr_2_5 <= _GEN_244[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_6 <= 34'he008000; // @[PMP.scala 312:23]
    end else begin
      addr_2_6 <= _GEN_294[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_7 <= 34'he008400; // @[PMP.scala 312:23]
    end else begin
      addr_2_7 <= _GEN_32[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_8 <= 34'he008800; // @[PMP.scala 312:23]
    end else begin
      addr_2_8 <= _GEN_132[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_9 <= 34'he400000; // @[PMP.scala 312:23]
    end else begin
      addr_2_9 <= _GEN_233[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_10 <= 34'he400800; // @[PMP.scala 312:23]
    end else begin
      addr_2_10 <= _GEN_126[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_11 <= 34'he800000; // @[PMP.scala 312:23]
    end else begin
      addr_2_11 <= _GEN_309[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_12 <= 34'he800400; // @[PMP.scala 312:23]
    end else begin
      addr_2_12 <= _GEN_302[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_13 <= 34'hf000000; // @[PMP.scala 312:23]
    end else begin
      addr_2_13 <= _GEN_271[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_14 <= 34'hfffffff; // @[PMP.scala 312:23]
    end else begin
      addr_2_14 <= _GEN_182[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PMP.scala 312:23]
      addr_2_15 <= 34'h1ffffffff; // @[PMP.scala 312:23]
    end else begin
      addr_2_15 <= _GEN_115[33:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      stvec <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_26) begin // @[CSR.scala 454:22]
      stvec <= _stvec_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      satp <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_7) begin // @[CSR.scala 459:90]
      satp <= _satp_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1204:58]
      sepc <= 64'h0; // @[CSR.scala 1206:10]
    end else if (REG_29) begin // @[CSR.scala 1117:29]
      sepc <= _sepc_T_7; // @[CSR.scala 1123:36 1143:28]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        sepc <= _GEN_117;
      end else if (debugMode) begin
        sepc <= _GEN_117;
      end else begin
        sepc <= _GEN_459;
      end
    end else begin
      sepc <= _GEN_117;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      scause <= 64'h0; // @[CSR.scala 1123:36 1143:28 1145:25 1146:14]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        scause <= _GEN_408;
      end else if (debugMode) begin
        scause <= _GEN_408;
      end else if (delegS) begin
        scause <= causeNO;
      end else begin
        scause <= _GEN_408;
      end
    end else begin
      scause <= _GEN_408;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      sscratch <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_16) begin // @[CSR.scala 470:25]
      sscratch <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      scounteren <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_137) begin // @[CSR.scala 471:27]
      scounteren <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      sbpctl <= 64'h7f; // @[RegMap.scala 56:28]
    end else if (wen_reg_106) begin // @[CSR.scala 475:23]
      sbpctl <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      spfctl <= 64'h17b37; // @[RegMap.scala 56:28]
    end else if (wen_reg_144) begin // @[CSR.scala 493:23]
      spfctl <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      sdsid <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_40) begin // @[CSR.scala 521:22]
      sdsid <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      slvpredctl <= 64'h60; // @[RegMap.scala 56:28]
    end else if (wen_reg_94) begin // @[CSR.scala 528:27]
      slvpredctl <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      smblockctl <= 64'h73; // @[RegMap.scala 56:28]
    end else if (wen_reg_15) begin // @[CSR.scala 555:27]
      smblockctl <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      srnctl <= 64'h7; // @[RegMap.scala 56:28]
    end else if (wen_reg_123) begin // @[CSR.scala 570:23]
      srnctl <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 843:42]
      fcsr <= 64'h0; // @[CSR.scala 844:10]
    end else if (REG_23) begin // @[RegMap.scala 56:24]
      fcsr <= _fcsr_T_21; // @[RegMap.scala 56:28]
    end else if (wen_reg_100) begin // @[RegMap.scala 56:24]
      fcsr <= _fcsr_T_20; // @[RegMap.scala 56:28]
    end else if (wen_reg_66) begin // @[RegMap.scala 56:24]
      fcsr <= _fcsr_T_9; // @[RegMap.scala 56:28]
    end else if (wen_reg_38) begin // @[CSR.scala 590:21]
      fcsr <= _fcsr_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1117:29]
      priviledgeMode <= 2'h3; // @[CSR.scala 1123:36 1124:29 1130:24 1132:67 1138:24 1143:28 1145:25 1151:22 1159:22]
    end else if (csrio_exception_valid) begin
      if (raiseDebugExceptionIntr) begin
        if (raiseDebugIntr) begin
          priviledgeMode <= 2'h3;
        end else if ((hasbreakPoint | hasSingleStep) & _csrio_customCtrl_singlestep_T) begin
          priviledgeMode <= 2'h3;
        end else begin
          priviledgeMode <= _GEN_433;
        end
      end else if (debugMode) begin
        priviledgeMode <= _GEN_433;
      end else if (delegS) begin
        priviledgeMode <= 2'h1;
      end else begin
        priviledgeMode <= 2'h3;
      end
    end else begin
      priviledgeMode <= _GEN_433;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_0 <= 1'h0;
    end else begin
      perfEventscounten_0 <= |_perfEventscounten_0_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_1 <= 1'h0;
    end else begin
      perfEventscounten_1 <= |_perfEventscounten_1_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_2 <= 1'h0;
    end else begin
      perfEventscounten_2 <= |_perfEventscounten_2_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_3 <= 1'h0;
    end else begin
      perfEventscounten_3 <= |_perfEventscounten_3_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_4 <= 1'h0;
    end else begin
      perfEventscounten_4 <= |_perfEventscounten_4_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_5 <= 1'h0;
    end else begin
      perfEventscounten_5 <= |_perfEventscounten_5_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_6 <= 1'h0;
    end else begin
      perfEventscounten_6 <= |_perfEventscounten_6_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_7 <= 1'h0;
    end else begin
      perfEventscounten_7 <= |_perfEventscounten_7_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_8 <= 1'h0;
    end else begin
      perfEventscounten_8 <= |_perfEventscounten_8_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_9 <= 1'h0;
    end else begin
      perfEventscounten_9 <= |_perfEventscounten_9_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_10 <= 1'h0;
    end else begin
      perfEventscounten_10 <= |_perfEventscounten_10_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_11 <= 1'h0;
    end else begin
      perfEventscounten_11 <= |_perfEventscounten_11_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_12 <= 1'h0;
    end else begin
      perfEventscounten_12 <= |_perfEventscounten_12_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_13 <= 1'h0;
    end else begin
      perfEventscounten_13 <= |_perfEventscounten_13_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_14 <= 1'h0;
    end else begin
      perfEventscounten_14 <= |_perfEventscounten_14_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_15 <= 1'h0;
    end else begin
      perfEventscounten_15 <= |_perfEventscounten_15_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_16 <= 1'h0;
    end else begin
      perfEventscounten_16 <= |_perfEventscounten_16_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_17 <= 1'h0;
    end else begin
      perfEventscounten_17 <= |_perfEventscounten_17_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_18 <= 1'h0;
    end else begin
      perfEventscounten_18 <= |_perfEventscounten_18_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_19 <= 1'h0;
    end else begin
      perfEventscounten_19 <= |_perfEventscounten_19_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_20 <= 1'h0;
    end else begin
      perfEventscounten_20 <= |_perfEventscounten_20_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_21 <= 1'h0;
    end else begin
      perfEventscounten_21 <= |_perfEventscounten_21_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_22 <= 1'h0;
    end else begin
      perfEventscounten_22 <= |_perfEventscounten_22_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_23 <= 1'h0;
    end else begin
      perfEventscounten_23 <= |_perfEventscounten_23_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_24 <= 1'h0;
    end else begin
      perfEventscounten_24 <= |_perfEventscounten_24_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_25 <= 1'h0;
    end else begin
      perfEventscounten_25 <= |_perfEventscounten_25_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_26 <= 1'h0;
    end else begin
      perfEventscounten_26 <= |_perfEventscounten_26_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_27 <= 1'h0;
    end else begin
      perfEventscounten_27 <= |_perfEventscounten_27_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 641:114]
      perfEventscounten_28 <= 1'h0;
    end else begin
      perfEventscounten_28 <= |_perfEventscounten_28_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_0 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_18) begin // @[CSR.scala 661:23]
      perfCnts_0 <= wdata_reg;
    end else if (!(mcountinhibit[3] | ~perfEventscounten_0)) begin
      perfCnts_0 <= _perfCnts_0_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_1 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_51) begin // @[CSR.scala 661:23]
      perfCnts_1 <= wdata_reg;
    end else if (!(mcountinhibit[4] | ~perfEventscounten_1)) begin
      perfCnts_1 <= _perfCnts_1_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_2 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_110) begin // @[CSR.scala 661:23]
      perfCnts_2 <= wdata_reg;
    end else if (!(mcountinhibit[5] | ~perfEventscounten_2)) begin
      perfCnts_2 <= _perfCnts_2_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_3 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg) begin // @[CSR.scala 661:23]
      perfCnts_3 <= wdata_reg;
    end else if (!(mcountinhibit[6] | ~perfEventscounten_3)) begin
      perfCnts_3 <= _perfCnts_3_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_4 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_126) begin // @[CSR.scala 661:23]
      perfCnts_4 <= wdata_reg;
    end else if (!(mcountinhibit[7] | ~perfEventscounten_4)) begin
      perfCnts_4 <= _perfCnts_4_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_5 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_87) begin // @[CSR.scala 661:23]
      perfCnts_5 <= wdata_reg;
    end else if (!(mcountinhibit[8] | ~perfEventscounten_5)) begin
      perfCnts_5 <= _perfCnts_5_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_6 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_17) begin // @[CSR.scala 661:23]
      perfCnts_6 <= wdata_reg;
    end else if (!(mcountinhibit[9] | ~perfEventscounten_6)) begin
      perfCnts_6 <= _perfCnts_6_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_7 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_50) begin // @[CSR.scala 661:23]
      perfCnts_7 <= wdata_reg;
    end else if (!(mcountinhibit[10] | ~perfEventscounten_7)) begin
      perfCnts_7 <= _perfCnts_7_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_8 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_79) begin // @[CSR.scala 661:23]
      perfCnts_8 <= wdata_reg;
    end else if (!(mcountinhibit[11] | ~perfEventscounten_8)) begin
      perfCnts_8 <= _perfCnts_8_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_9 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_119) begin // @[CSR.scala 661:23]
      perfCnts_9 <= wdata_reg;
    end else if (!(mcountinhibit[12] | ~perfEventscounten_9)) begin
      perfCnts_9 <= _perfCnts_9_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_10 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_27) begin // @[CSR.scala 661:23]
      perfCnts_10 <= wdata_reg;
    end else if (!(mcountinhibit[13] | ~perfEventscounten_10)) begin
      perfCnts_10 <= _perfCnts_10_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_11 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_60) begin // @[CSR.scala 661:23]
      perfCnts_11 <= wdata_reg;
    end else if (!(mcountinhibit[14] | ~perfEventscounten_11)) begin
      perfCnts_11 <= _perfCnts_11_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_12 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_112) begin // @[CSR.scala 661:23]
      perfCnts_12 <= wdata_reg;
    end else if (!(mcountinhibit[15] | ~perfEventscounten_12)) begin
      perfCnts_12 <= _perfCnts_12_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_13 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_151) begin // @[CSR.scala 661:23]
      perfCnts_13 <= wdata_reg;
    end else if (!(mcountinhibit[16] | ~perfEventscounten_13)) begin
      perfCnts_13 <= _perfCnts_13_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_14 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_34) begin // @[CSR.scala 661:23]
      perfCnts_14 <= wdata_reg;
    end else if (!(mcountinhibit[17] | ~perfEventscounten_14)) begin
      perfCnts_14 <= _perfCnts_14_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_15 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_153) begin // @[CSR.scala 661:23]
      perfCnts_15 <= wdata_reg;
    end else if (!(mcountinhibit[18] | ~perfEventscounten_15)) begin
      perfCnts_15 <= _perfCnts_15_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_16 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_98) begin // @[CSR.scala 661:23]
      perfCnts_16 <= wdata_reg;
    end else if (!(mcountinhibit[19] | ~perfEventscounten_16)) begin
      perfCnts_16 <= _perfCnts_16_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_17 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_62) begin // @[CSR.scala 661:23]
      perfCnts_17 <= wdata_reg;
    end else if (!(mcountinhibit[20] | ~perfEventscounten_17)) begin
      perfCnts_17 <= _perfCnts_17_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_18 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_3) begin // @[CSR.scala 661:23]
      perfCnts_18 <= wdata_reg;
    end else if (!(mcountinhibit[21] | ~perfEventscounten_18)) begin
      perfCnts_18 <= _perfCnts_18_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_19 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_115) begin // @[CSR.scala 661:23]
      perfCnts_19 <= wdata_reg;
    end else if (!(mcountinhibit[22] | ~perfEventscounten_19)) begin
      perfCnts_19 <= _perfCnts_19_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_20 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_85) begin // @[CSR.scala 661:23]
      perfCnts_20 <= wdata_reg;
    end else if (!(mcountinhibit[23] | ~perfEventscounten_20)) begin
      perfCnts_20 <= _perfCnts_20_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_21 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_53) begin // @[CSR.scala 661:23]
      perfCnts_21 <= wdata_reg;
    end else if (!(mcountinhibit[24] | ~perfEventscounten_21)) begin
      perfCnts_21 <= _perfCnts_21_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_22 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_56) begin // @[CSR.scala 661:23]
      perfCnts_22 <= wdata_reg;
    end else if (!(mcountinhibit[25] | ~perfEventscounten_22)) begin
      perfCnts_22 <= _perfCnts_22_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_23 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_92) begin // @[CSR.scala 661:23]
      perfCnts_23 <= wdata_reg;
    end else if (!(mcountinhibit[26] | ~perfEventscounten_23)) begin
      perfCnts_23 <= _perfCnts_23_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_24 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_116) begin // @[CSR.scala 661:23]
      perfCnts_24 <= wdata_reg;
    end else if (!(mcountinhibit[27] | ~perfEventscounten_24)) begin
      perfCnts_24 <= _perfCnts_24_T_3[63:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_25 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_12) begin // @[CSR.scala 661:23]
      perfCnts_25 <= wdata_reg;
    end else if (!(mcountinhibit[28] | ~perfEventscounten_25)) begin
      perfCnts_25 <= _perfCnts_25_T_3[63:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_26 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_63) begin // @[CSR.scala 661:23]
      perfCnts_26 <= wdata_reg;
    end else if (!(mcountinhibit[29] | ~perfEventscounten_26)) begin
      perfCnts_26 <= _perfCnts_26_T_3[63:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_27 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_107) begin // @[CSR.scala 661:23]
      perfCnts_27 <= wdata_reg;
    end else if (!(mcountinhibit[30] | ~perfEventscounten_27)) begin
      perfCnts_27 <= _perfCnts_27_T_3[63:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfCnts_28 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_147) begin // @[CSR.scala 661:23]
      perfCnts_28 <= wdata_reg;
    end else if (!(mcountinhibit[31] | ~perfEventscounten_28)) begin
      perfCnts_28 <= _perfCnts_28_T_3[63:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_0 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_150) begin // @[CSR.scala 636:40]
      perfEvents_0 <= _perfEvents_0_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_1 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_81) begin // @[CSR.scala 636:40]
      perfEvents_1 <= _perfEvents_1_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_2 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_67) begin // @[CSR.scala 636:40]
      perfEvents_2 <= _perfEvents_2_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_3 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_32) begin // @[CSR.scala 636:40]
      perfEvents_3 <= _perfEvents_3_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_4 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_142) begin // @[CSR.scala 636:40]
      perfEvents_4 <= _perfEvents_4_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_5 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_114) begin // @[CSR.scala 636:40]
      perfEvents_5 <= _perfEvents_5_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_6 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_1) begin // @[CSR.scala 636:40]
      perfEvents_6 <= _perfEvents_6_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_7 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_39) begin // @[CSR.scala 636:40]
      perfEvents_7 <= _perfEvents_7_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_8 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_88) begin // @[CSR.scala 637:40]
      perfEvents_8 <= _perfEvents_8_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_9 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_105) begin // @[CSR.scala 637:40]
      perfEvents_9 <= _perfEvents_9_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_10 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_122) begin // @[CSR.scala 637:40]
      perfEvents_10 <= _perfEvents_10_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_11 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_9) begin // @[CSR.scala 637:40]
      perfEvents_11 <= _perfEvents_11_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_12 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_48) begin // @[CSR.scala 637:40]
      perfEvents_12 <= _perfEvents_12_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_13 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_89) begin // @[CSR.scala 637:40]
      perfEvents_13 <= _perfEvents_13_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_14 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_22) begin // @[CSR.scala 637:40]
      perfEvents_14 <= _perfEvents_14_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_15 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_138) begin // @[CSR.scala 637:40]
      perfEvents_15 <= _perfEvents_15_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_16 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_74) begin // @[CSR.scala 638:40]
      perfEvents_16 <= _perfEvents_16_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_17 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_46) begin // @[CSR.scala 638:40]
      perfEvents_17 <= _perfEvents_17_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_18 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_33) begin // @[CSR.scala 638:40]
      perfEvents_18 <= _perfEvents_18_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_19 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_148) begin // @[CSR.scala 638:40]
      perfEvents_19 <= _perfEvents_19_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_20 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_108) begin // @[CSR.scala 638:40]
      perfEvents_20 <= _perfEvents_20_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_21 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_72) begin // @[CSR.scala 638:40]
      perfEvents_21 <= _perfEvents_21_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_22 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_43) begin // @[CSR.scala 638:40]
      perfEvents_22 <= _perfEvents_22_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_23 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_76) begin // @[CSR.scala 638:40]
      perfEvents_23 <= _perfEvents_23_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      csrevents_0 <= 64'hc0300c0300; // @[RegMap.scala 56:28]
    end else if (wen_reg_97) begin // @[CSR.scala 639:40]
      csrevents_0 <= _perfEvents_24_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      csrevents_1 <= 64'hc0300c0300; // @[RegMap.scala 56:28]
    end else if (wen_reg_143) begin // @[CSR.scala 639:40]
      csrevents_1 <= _perfEvents_25_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      csrevents_2 <= 64'hc0300c0300; // @[RegMap.scala 56:28]
    end else if (wen_reg_14) begin // @[CSR.scala 639:40]
      csrevents_2 <= _perfEvents_26_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      csrevents_3 <= 64'hc0300c0300; // @[RegMap.scala 56:28]
    end else if (wen_reg_52) begin // @[CSR.scala 639:40]
      csrevents_3 <= _perfEvents_27_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      csrevents_4 <= 64'hc0300c0300; // @[RegMap.scala 56:28]
    end else if (wen_reg_83) begin // @[CSR.scala 639:40]
      csrevents_4 <= _perfEvents_28_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mcountinhibit <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_131) begin // @[CSR.scala 651:30]
      mcountinhibit <= wdata_reg;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      mcycle <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_103) begin // @[CSR.scala 653:10]
      mcycle <= wdata_reg;
    end else begin
      mcycle <= _mcycle_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      minstret <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_118) begin // @[CSR.scala 659:12]
      minstret <= wdata_reg;
    end else begin
      minstret <= _minstret_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_2 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5c5 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_2 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_2 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_2 <= _GEN_266;
      end
    end else begin
      REG_2 <= _GEN_266;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_3 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5c6 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_3 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_3 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_3 <= _GEN_178;
      end
    end else begin
      REG_3 <= _GEN_178;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_4 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5c8 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_4 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_4 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_4 <= _GEN_358;
      end
    end else begin
      REG_4 <= _GEN_358;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_5 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5cc == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_5 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_5 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_5 <= _GEN_282;
      end
    end else begin
      REG_5 <= _GEN_282;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_6 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d9 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_6 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_6 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_6 <= _GEN_29;
      end
    end else begin
      REG_6 <= _GEN_29;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_7 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5cb == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_7 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_7 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_7 <= _GEN_235;
      end
    end else begin
      REG_7 <= _GEN_235;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_8 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d3 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_8 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_8 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_8 <= _GEN_303;
      end
    end else begin
      REG_8 <= _GEN_303;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_9 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5cd == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_9 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_9 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_9 <= _GEN_289;
      end
    end else begin
      REG_9 <= _GEN_289;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_10 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d7 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_10 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_10 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_10 <= _GEN_359;
      end
    end else begin
      REG_10 <= _GEN_359;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_11 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5ca == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_11 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_11 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_11 <= _GEN_103;
      end
    end else begin
      REG_11 <= _GEN_103;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_12 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d2 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_12 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_12 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_12 <= _GEN_411;
      end
    end else begin
      REG_12 <= _GEN_411;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_13 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d6 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_13 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_13 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_13 <= _GEN_111;
      end
    end else begin
      REG_13 <= _GEN_111;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_14 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5cf == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_14 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_14 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_14 <= _GEN_140;
      end
    end else begin
      REG_14 <= _GEN_140;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_15 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d0 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_15 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_15 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_15 <= _GEN_241;
      end
    end else begin
      REG_15 <= _GEN_241;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_16 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5c9 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_16 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_16 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_16 <= _GEN_297;
      end
    end else begin
      REG_16 <= _GEN_297;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_17 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d5 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_17 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_17 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_17 <= _GEN_176;
      end
    end else begin
      REG_17 <= _GEN_176;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_18 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5c7 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_18 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_18 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_18 <= _GEN_109;
      end
    end else begin
      REG_18 <= _GEN_109;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_19 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d4 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_19 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_19 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_19 <= _GEN_249;
      end
    end else begin
      REG_19 <= _GEN_249;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_20 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d1 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_20 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_20 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_20 <= _GEN_116;
      end
    end else begin
      REG_20 <= _GEN_116;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_21 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5ce == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_21 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_21 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_21 <= _GEN_28;
      end
    end else begin
      REG_21 <= _GEN_28;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1187:31]
      REG_22 <= 64'h0; // @[CSR.scala 1180:34 1190:81]
    end else if (distributedUpdateValid) begin
      if (12'h5d8 == distributedUpdateAddr) begin
        if (delayedUpdate0_delay_io_out_wvalid) begin
          REG_22 <= delayedUpdate0_delay_io_out_wdata;
        end else begin
          REG_22 <= delayedUpdate1_delay_io_out_wdata;
        end
      end else begin
        REG_22 <= _GEN_269;
      end
    end else begin
      REG_22 <= _GEN_269;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CSR.scala 1094:41]
      isXRetFlag <= 1'h0; // @[CSR.scala 1095:16]
    end else if (delay_io_out) begin
      isXRetFlag <= 1'h0;
    end else begin
      isXRetFlag <= _GEN_440;
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
  dcsr = _RAND_0[31:0];
  _RAND_1 = {2{`RANDOM}};
  dpc = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  dscratch = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  dscratch1 = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  debugMode = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  debugIntrEnable = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  tdata1Phy_0 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  tdata1Phy_1 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  tdata1Phy_2 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  tdata1Phy_3 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  tdata1Phy_4 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  tdata1Phy_5 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  tdata1Phy_6 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  tdata1Phy_7 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  tdata1Phy_8 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  tdata1Phy_9 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  tdata2Phy_0 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  tdata2Phy_1 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  tdata2Phy_2 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  tdata2Phy_3 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  tdata2Phy_4 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  tdata2Phy_5 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  tdata2Phy_6 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  tdata2Phy_7 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  tdata2Phy_8 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  tdata2Phy_9 = _RAND_25[63:0];
  _RAND_26 = {1{`RANDOM}};
  tselectPhy = _RAND_26[3:0];
  _RAND_27 = {2{`RANDOM}};
  tControlPhy = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  triggerAction = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  mtvec = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  mcounteren = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  mcause = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  mtval = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  mepc = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  mie = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  mipReg = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  mhartid = _RAND_36[63:0];
  _RAND_37 = {1{`RANDOM}};
  REG = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  REG_1 = _RAND_38[0:0];
  _RAND_39 = {2{`RANDOM}};
  mstatus = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  medeleg = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  mideleg = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  mscratch = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  cfgMerged__0 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  cfgMerged__1 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  addr_1_0 = _RAND_45[33:0];
  _RAND_46 = {2{`RANDOM}};
  addr_1_1 = _RAND_46[33:0];
  _RAND_47 = {2{`RANDOM}};
  addr_1_2 = _RAND_47[33:0];
  _RAND_48 = {2{`RANDOM}};
  addr_1_3 = _RAND_48[33:0];
  _RAND_49 = {2{`RANDOM}};
  addr_1_4 = _RAND_49[33:0];
  _RAND_50 = {2{`RANDOM}};
  addr_1_5 = _RAND_50[33:0];
  _RAND_51 = {2{`RANDOM}};
  addr_1_6 = _RAND_51[33:0];
  _RAND_52 = {2{`RANDOM}};
  addr_1_7 = _RAND_52[33:0];
  _RAND_53 = {2{`RANDOM}};
  addr_1_8 = _RAND_53[33:0];
  _RAND_54 = {2{`RANDOM}};
  addr_1_9 = _RAND_54[33:0];
  _RAND_55 = {2{`RANDOM}};
  addr_1_10 = _RAND_55[33:0];
  _RAND_56 = {2{`RANDOM}};
  addr_1_11 = _RAND_56[33:0];
  _RAND_57 = {2{`RANDOM}};
  addr_1_12 = _RAND_57[33:0];
  _RAND_58 = {2{`RANDOM}};
  addr_1_13 = _RAND_58[33:0];
  _RAND_59 = {2{`RANDOM}};
  addr_1_14 = _RAND_59[33:0];
  _RAND_60 = {2{`RANDOM}};
  addr_1_15 = _RAND_60[33:0];
  _RAND_61 = {2{`RANDOM}};
  cfgMerged_1_0 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  cfgMerged_1_1 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  addr_2_0 = _RAND_63[33:0];
  _RAND_64 = {2{`RANDOM}};
  addr_2_1 = _RAND_64[33:0];
  _RAND_65 = {2{`RANDOM}};
  addr_2_2 = _RAND_65[33:0];
  _RAND_66 = {2{`RANDOM}};
  addr_2_3 = _RAND_66[33:0];
  _RAND_67 = {2{`RANDOM}};
  addr_2_4 = _RAND_67[33:0];
  _RAND_68 = {2{`RANDOM}};
  addr_2_5 = _RAND_68[33:0];
  _RAND_69 = {2{`RANDOM}};
  addr_2_6 = _RAND_69[33:0];
  _RAND_70 = {2{`RANDOM}};
  addr_2_7 = _RAND_70[33:0];
  _RAND_71 = {2{`RANDOM}};
  addr_2_8 = _RAND_71[33:0];
  _RAND_72 = {2{`RANDOM}};
  addr_2_9 = _RAND_72[33:0];
  _RAND_73 = {2{`RANDOM}};
  addr_2_10 = _RAND_73[33:0];
  _RAND_74 = {2{`RANDOM}};
  addr_2_11 = _RAND_74[33:0];
  _RAND_75 = {2{`RANDOM}};
  addr_2_12 = _RAND_75[33:0];
  _RAND_76 = {2{`RANDOM}};
  addr_2_13 = _RAND_76[33:0];
  _RAND_77 = {2{`RANDOM}};
  addr_2_14 = _RAND_77[33:0];
  _RAND_78 = {2{`RANDOM}};
  addr_2_15 = _RAND_78[33:0];
  _RAND_79 = {2{`RANDOM}};
  stvec = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  satp = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  sepc = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  scause = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  stval = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  sscratch = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  scounteren = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  sbpctl = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  spfctl = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  sdsid = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  slvpredctl = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  smblockctl = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  srnctl = _RAND_91[63:0];
  _RAND_92 = {1{`RANDOM}};
  tlbBundle_satp_changed_REG = _RAND_92[15:0];
  _RAND_93 = {2{`RANDOM}};
  fcsr = _RAND_93[63:0];
  _RAND_94 = {1{`RANDOM}};
  priviledgeMode = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  perfEventscounten_0 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  perfEventscounten_1 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  perfEventscounten_2 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  perfEventscounten_3 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  perfEventscounten_4 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  perfEventscounten_5 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  perfEventscounten_6 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  perfEventscounten_7 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  perfEventscounten_8 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  perfEventscounten_9 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  perfEventscounten_10 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  perfEventscounten_11 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  perfEventscounten_12 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  perfEventscounten_13 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  perfEventscounten_14 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  perfEventscounten_15 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  perfEventscounten_16 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  perfEventscounten_17 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  perfEventscounten_18 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  perfEventscounten_19 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  perfEventscounten_20 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  perfEventscounten_21 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  perfEventscounten_22 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  perfEventscounten_23 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  perfEventscounten_24 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  perfEventscounten_25 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  perfEventscounten_26 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  perfEventscounten_27 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  perfEventscounten_28 = _RAND_123[0:0];
  _RAND_124 = {2{`RANDOM}};
  perfCnts_0 = _RAND_124[63:0];
  _RAND_125 = {2{`RANDOM}};
  perfCnts_1 = _RAND_125[63:0];
  _RAND_126 = {2{`RANDOM}};
  perfCnts_2 = _RAND_126[63:0];
  _RAND_127 = {2{`RANDOM}};
  perfCnts_3 = _RAND_127[63:0];
  _RAND_128 = {2{`RANDOM}};
  perfCnts_4 = _RAND_128[63:0];
  _RAND_129 = {2{`RANDOM}};
  perfCnts_5 = _RAND_129[63:0];
  _RAND_130 = {2{`RANDOM}};
  perfCnts_6 = _RAND_130[63:0];
  _RAND_131 = {2{`RANDOM}};
  perfCnts_7 = _RAND_131[63:0];
  _RAND_132 = {2{`RANDOM}};
  perfCnts_8 = _RAND_132[63:0];
  _RAND_133 = {2{`RANDOM}};
  perfCnts_9 = _RAND_133[63:0];
  _RAND_134 = {2{`RANDOM}};
  perfCnts_10 = _RAND_134[63:0];
  _RAND_135 = {2{`RANDOM}};
  perfCnts_11 = _RAND_135[63:0];
  _RAND_136 = {2{`RANDOM}};
  perfCnts_12 = _RAND_136[63:0];
  _RAND_137 = {2{`RANDOM}};
  perfCnts_13 = _RAND_137[63:0];
  _RAND_138 = {2{`RANDOM}};
  perfCnts_14 = _RAND_138[63:0];
  _RAND_139 = {2{`RANDOM}};
  perfCnts_15 = _RAND_139[63:0];
  _RAND_140 = {2{`RANDOM}};
  perfCnts_16 = _RAND_140[63:0];
  _RAND_141 = {2{`RANDOM}};
  perfCnts_17 = _RAND_141[63:0];
  _RAND_142 = {2{`RANDOM}};
  perfCnts_18 = _RAND_142[63:0];
  _RAND_143 = {2{`RANDOM}};
  perfCnts_19 = _RAND_143[63:0];
  _RAND_144 = {2{`RANDOM}};
  perfCnts_20 = _RAND_144[63:0];
  _RAND_145 = {2{`RANDOM}};
  perfCnts_21 = _RAND_145[63:0];
  _RAND_146 = {2{`RANDOM}};
  perfCnts_22 = _RAND_146[63:0];
  _RAND_147 = {2{`RANDOM}};
  perfCnts_23 = _RAND_147[63:0];
  _RAND_148 = {2{`RANDOM}};
  perfCnts_24 = _RAND_148[63:0];
  _RAND_149 = {2{`RANDOM}};
  perfCnts_25 = _RAND_149[63:0];
  _RAND_150 = {2{`RANDOM}};
  perfCnts_26 = _RAND_150[63:0];
  _RAND_151 = {2{`RANDOM}};
  perfCnts_27 = _RAND_151[63:0];
  _RAND_152 = {2{`RANDOM}};
  perfCnts_28 = _RAND_152[63:0];
  _RAND_153 = {2{`RANDOM}};
  perfEvents_0 = _RAND_153[63:0];
  _RAND_154 = {2{`RANDOM}};
  perfEvents_1 = _RAND_154[63:0];
  _RAND_155 = {2{`RANDOM}};
  perfEvents_2 = _RAND_155[63:0];
  _RAND_156 = {2{`RANDOM}};
  perfEvents_3 = _RAND_156[63:0];
  _RAND_157 = {2{`RANDOM}};
  perfEvents_4 = _RAND_157[63:0];
  _RAND_158 = {2{`RANDOM}};
  perfEvents_5 = _RAND_158[63:0];
  _RAND_159 = {2{`RANDOM}};
  perfEvents_6 = _RAND_159[63:0];
  _RAND_160 = {2{`RANDOM}};
  perfEvents_7 = _RAND_160[63:0];
  _RAND_161 = {2{`RANDOM}};
  perfEvents_8 = _RAND_161[63:0];
  _RAND_162 = {2{`RANDOM}};
  perfEvents_9 = _RAND_162[63:0];
  _RAND_163 = {2{`RANDOM}};
  perfEvents_10 = _RAND_163[63:0];
  _RAND_164 = {2{`RANDOM}};
  perfEvents_11 = _RAND_164[63:0];
  _RAND_165 = {2{`RANDOM}};
  perfEvents_12 = _RAND_165[63:0];
  _RAND_166 = {2{`RANDOM}};
  perfEvents_13 = _RAND_166[63:0];
  _RAND_167 = {2{`RANDOM}};
  perfEvents_14 = _RAND_167[63:0];
  _RAND_168 = {2{`RANDOM}};
  perfEvents_15 = _RAND_168[63:0];
  _RAND_169 = {2{`RANDOM}};
  perfEvents_16 = _RAND_169[63:0];
  _RAND_170 = {2{`RANDOM}};
  perfEvents_17 = _RAND_170[63:0];
  _RAND_171 = {2{`RANDOM}};
  perfEvents_18 = _RAND_171[63:0];
  _RAND_172 = {2{`RANDOM}};
  perfEvents_19 = _RAND_172[63:0];
  _RAND_173 = {2{`RANDOM}};
  perfEvents_20 = _RAND_173[63:0];
  _RAND_174 = {2{`RANDOM}};
  perfEvents_21 = _RAND_174[63:0];
  _RAND_175 = {2{`RANDOM}};
  perfEvents_22 = _RAND_175[63:0];
  _RAND_176 = {2{`RANDOM}};
  perfEvents_23 = _RAND_176[63:0];
  _RAND_177 = {2{`RANDOM}};
  csrevents_0 = _RAND_177[63:0];
  _RAND_178 = {2{`RANDOM}};
  csrevents_1 = _RAND_178[63:0];
  _RAND_179 = {2{`RANDOM}};
  csrevents_2 = _RAND_179[63:0];
  _RAND_180 = {2{`RANDOM}};
  csrevents_3 = _RAND_180[63:0];
  _RAND_181 = {2{`RANDOM}};
  csrevents_4 = _RAND_181[63:0];
  _RAND_182 = {2{`RANDOM}};
  mcountinhibit = _RAND_182[63:0];
  _RAND_183 = {2{`RANDOM}};
  mcycle = _RAND_183[63:0];
  _RAND_184 = {2{`RANDOM}};
  minstret = _RAND_184[63:0];
  _RAND_185 = {1{`RANDOM}};
  minstret_REG = _RAND_185[2:0];
  _RAND_186 = {2{`RANDOM}};
  REG_2 = _RAND_186[63:0];
  _RAND_187 = {2{`RANDOM}};
  REG_3 = _RAND_187[63:0];
  _RAND_188 = {2{`RANDOM}};
  REG_4 = _RAND_188[63:0];
  _RAND_189 = {2{`RANDOM}};
  REG_5 = _RAND_189[63:0];
  _RAND_190 = {2{`RANDOM}};
  REG_6 = _RAND_190[63:0];
  _RAND_191 = {2{`RANDOM}};
  REG_7 = _RAND_191[63:0];
  _RAND_192 = {2{`RANDOM}};
  REG_8 = _RAND_192[63:0];
  _RAND_193 = {2{`RANDOM}};
  REG_9 = _RAND_193[63:0];
  _RAND_194 = {2{`RANDOM}};
  REG_10 = _RAND_194[63:0];
  _RAND_195 = {2{`RANDOM}};
  REG_11 = _RAND_195[63:0];
  _RAND_196 = {2{`RANDOM}};
  REG_12 = _RAND_196[63:0];
  _RAND_197 = {2{`RANDOM}};
  REG_13 = _RAND_197[63:0];
  _RAND_198 = {2{`RANDOM}};
  REG_14 = _RAND_198[63:0];
  _RAND_199 = {2{`RANDOM}};
  REG_15 = _RAND_199[63:0];
  _RAND_200 = {2{`RANDOM}};
  REG_16 = _RAND_200[63:0];
  _RAND_201 = {2{`RANDOM}};
  REG_17 = _RAND_201[63:0];
  _RAND_202 = {2{`RANDOM}};
  REG_18 = _RAND_202[63:0];
  _RAND_203 = {2{`RANDOM}};
  REG_19 = _RAND_203[63:0];
  _RAND_204 = {2{`RANDOM}};
  REG_20 = _RAND_204[63:0];
  _RAND_205 = {2{`RANDOM}};
  REG_21 = _RAND_205[63:0];
  _RAND_206 = {2{`RANDOM}};
  REG_22 = _RAND_206[63:0];
  _RAND_207 = {2{`RANDOM}};
  wdata_reg = _RAND_207[63:0];
  _RAND_208 = {1{`RANDOM}};
  wen_reg = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  wen_reg_1 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  wen_reg_2 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  wen_reg_3 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  wen_reg_4 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  wen_reg_5 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  wen_reg_6 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  wen_reg_7 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  wen_reg_8 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  wen_reg_9 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  wen_reg_10 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  wen_reg_11 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  wen_reg_12 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  wen_reg_13 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  wen_reg_14 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  wen_reg_15 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  wen_reg_16 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  wen_reg_17 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  wen_reg_18 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  wen_reg_19 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  wen_reg_20 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  wen_reg_21 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  wen_reg_22 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  wen_reg_23 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  wen_reg_24 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  wen_reg_25 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  wen_reg_26 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  wen_reg_27 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  wen_reg_28 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  wen_reg_29 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  wen_reg_30 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  wen_reg_31 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  wen_reg_32 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  wen_reg_33 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  wen_reg_34 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  wen_reg_35 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  wen_reg_36 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  wen_reg_37 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  wen_reg_38 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  wen_reg_39 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  wen_reg_40 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  wen_reg_41 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  wen_reg_42 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  wen_reg_43 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  wen_reg_44 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  wen_reg_45 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  wen_reg_46 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  wen_reg_47 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  wen_reg_48 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  wen_reg_49 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  wen_reg_50 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  wen_reg_51 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  wen_reg_52 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  wen_reg_53 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  wen_reg_54 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  wen_reg_55 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  wen_reg_56 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  wen_reg_57 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  wen_reg_58 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  wen_reg_59 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  wen_reg_60 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  wen_reg_61 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  wen_reg_62 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  wen_reg_63 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  wen_reg_64 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  wen_reg_65 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  wen_reg_66 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  wen_reg_67 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  wen_reg_68 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  wen_reg_69 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  wen_reg_70 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  wen_reg_71 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  wen_reg_72 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  wen_reg_73 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  wen_reg_74 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  wen_reg_75 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  wen_reg_76 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  wen_reg_77 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  wen_reg_78 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  wen_reg_79 = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  wen_reg_80 = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  wen_reg_81 = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  wen_reg_82 = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  wen_reg_83 = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  wen_reg_84 = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  wen_reg_85 = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  wen_reg_86 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  wen_reg_87 = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  wen_reg_88 = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  wen_reg_89 = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  wen_reg_90 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  wen_reg_91 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  wen_reg_92 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  wen_reg_93 = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  wen_reg_94 = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  wen_reg_95 = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  wen_reg_96 = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  wen_reg_97 = _RAND_305[0:0];
  _RAND_306 = {1{`RANDOM}};
  wen_reg_98 = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  wen_reg_99 = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  wen_reg_100 = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  wen_reg_101 = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  wen_reg_102 = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  wen_reg_103 = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  wen_reg_104 = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  wen_reg_105 = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  wen_reg_106 = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  wen_reg_107 = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  wen_reg_108 = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  wen_reg_109 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  wen_reg_110 = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  wen_reg_111 = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  wen_reg_112 = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  wen_reg_113 = _RAND_321[0:0];
  _RAND_322 = {1{`RANDOM}};
  wen_reg_114 = _RAND_322[0:0];
  _RAND_323 = {1{`RANDOM}};
  wen_reg_115 = _RAND_323[0:0];
  _RAND_324 = {1{`RANDOM}};
  wen_reg_116 = _RAND_324[0:0];
  _RAND_325 = {1{`RANDOM}};
  wen_reg_117 = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  wen_reg_118 = _RAND_326[0:0];
  _RAND_327 = {1{`RANDOM}};
  wen_reg_119 = _RAND_327[0:0];
  _RAND_328 = {1{`RANDOM}};
  wen_reg_120 = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  wen_reg_121 = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  wen_reg_122 = _RAND_330[0:0];
  _RAND_331 = {1{`RANDOM}};
  wen_reg_123 = _RAND_331[0:0];
  _RAND_332 = {1{`RANDOM}};
  wen_reg_124 = _RAND_332[0:0];
  _RAND_333 = {1{`RANDOM}};
  wen_reg_125 = _RAND_333[0:0];
  _RAND_334 = {1{`RANDOM}};
  wen_reg_126 = _RAND_334[0:0];
  _RAND_335 = {1{`RANDOM}};
  wen_reg_127 = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  wen_reg_128 = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  wen_reg_129 = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  wen_reg_130 = _RAND_338[0:0];
  _RAND_339 = {1{`RANDOM}};
  wen_reg_131 = _RAND_339[0:0];
  _RAND_340 = {1{`RANDOM}};
  wen_reg_132 = _RAND_340[0:0];
  _RAND_341 = {1{`RANDOM}};
  wen_reg_133 = _RAND_341[0:0];
  _RAND_342 = {1{`RANDOM}};
  wen_reg_134 = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  wen_reg_135 = _RAND_343[0:0];
  _RAND_344 = {1{`RANDOM}};
  wen_reg_136 = _RAND_344[0:0];
  _RAND_345 = {1{`RANDOM}};
  wen_reg_137 = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  wen_reg_138 = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  wen_reg_139 = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  wen_reg_140 = _RAND_348[0:0];
  _RAND_349 = {1{`RANDOM}};
  wen_reg_141 = _RAND_349[0:0];
  _RAND_350 = {1{`RANDOM}};
  wen_reg_142 = _RAND_350[0:0];
  _RAND_351 = {1{`RANDOM}};
  wen_reg_143 = _RAND_351[0:0];
  _RAND_352 = {1{`RANDOM}};
  wen_reg_144 = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  wen_reg_145 = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  wen_reg_146 = _RAND_354[0:0];
  _RAND_355 = {1{`RANDOM}};
  wen_reg_147 = _RAND_355[0:0];
  _RAND_356 = {1{`RANDOM}};
  wen_reg_148 = _RAND_356[0:0];
  _RAND_357 = {1{`RANDOM}};
  wen_reg_149 = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  wen_reg_150 = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  wen_reg_151 = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  wen_reg_152 = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  wen_reg_153 = _RAND_361[0:0];
  _RAND_362 = {2{`RANDOM}};
  wdata_reg_1 = _RAND_362[63:0];
  _RAND_363 = {1{`RANDOM}};
  wen_reg_154 = _RAND_363[0:0];
  _RAND_364 = {1{`RANDOM}};
  wen_reg_155 = _RAND_364[0:0];
  _RAND_365 = {1{`RANDOM}};
  REG_23 = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  fcsr_REG = _RAND_366[4:0];
  _RAND_367 = {1{`RANDOM}};
  REG_24 = _RAND_367[0:0];
  _RAND_368 = {1{`RANDOM}};
  csrio_customCtrl_frontend_trigger_t_valid_REG = _RAND_368[0:0];
  _RAND_369 = {1{`RANDOM}};
  csrio_customCtrl_mem_trigger_t_valid_REG = _RAND_369[0:0];
  _RAND_370 = {1{`RANDOM}};
  REG_25 = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  REG_26 = _RAND_371[0:0];
  _RAND_372 = {1{`RANDOM}};
  tval_REG = _RAND_372[0:0];
  _RAND_373 = {1{`RANDOM}};
  tval_REG_1 = _RAND_373[0:0];
  _RAND_374 = {2{`RANDOM}};
  tval_REG_2 = _RAND_374[63:0];
  _RAND_375 = {2{`RANDOM}};
  tval_REG_3 = _RAND_375[63:0];
  _RAND_376 = {1{`RANDOM}};
  REG_27 = _RAND_376[0:0];
  _RAND_377 = {1{`RANDOM}};
  isXRetFlag = _RAND_377[0:0];
  _RAND_378 = {2{`RANDOM}};
  retTargetReg = _RAND_378[38:0];
  _RAND_379 = {2{`RANDOM}};
  csrio_trapTarget_r = _RAND_379[38:0];
  _RAND_380 = {1{`RANDOM}};
  REG_28 = _RAND_380[0:0];
  _RAND_381 = {1{`RANDOM}};
  REG_29 = _RAND_381[0:0];
  _RAND_382 = {2{`RANDOM}};
  difftest_io_intrNO_REG = _RAND_382[63:0];
  _RAND_383 = {2{`RANDOM}};
  difftest_io_intrNO_REG_1 = _RAND_383[63:0];
  _RAND_384 = {2{`RANDOM}};
  difftest_io_intrNO_REG_2 = _RAND_384[63:0];
  _RAND_385 = {2{`RANDOM}};
  difftest_io_cause_REG = _RAND_385[63:0];
  _RAND_386 = {2{`RANDOM}};
  difftest_io_cause_REG_1 = _RAND_386[63:0];
  _RAND_387 = {2{`RANDOM}};
  difftest_io_cause_REG_2 = _RAND_387[63:0];
  _RAND_388 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG = _RAND_388[63:0];
  _RAND_389 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG_1 = _RAND_389[63:0];
  _RAND_390 = {2{`RANDOM}};
  difftest_io_exceptionPC_REG_2 = _RAND_390[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    dcsr = 32'h4000b000;
  end
  if (reset) begin
    debugMode = 1'h0;
  end
  if (reset) begin
    debugIntrEnable = 1'h1;
  end
  if (reset) begin
    tdata1Phy_0 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_1 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_2 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_3 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_4 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_5 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_6 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_7 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_8 = 64'h2000000000000000;
  end
  if (reset) begin
    tdata1Phy_9 = 64'h2000000000000000;
  end
  if (reset) begin
    tselectPhy = 4'h0;
  end
  if (reset) begin
    tControlPhy = 64'h0;
  end
  if (reset) begin
    triggerAction = 1'h0;
  end
  if (reset) begin
    mtvec = 64'h0;
  end
  if (reset) begin
    mcounteren = 64'h0;
  end
  if (reset) begin
    mcause = 64'h0;
  end
  if (reset) begin
    mtval = 64'h0;
  end
  if (reset) begin
    mie = 64'h0;
  end
  if (reset) begin
    mipReg = 64'h0;
  end
  if (reset) begin
    mstatus = 64'ha00002000;
  end
  if (reset) begin
    medeleg = 64'h0;
  end
  if (reset) begin
    mideleg = 64'h0;
  end
  if (reset) begin
    mscratch = 64'h0;
  end
  if (reset) begin
    cfgMerged__0 = 64'h0;
  end
  if (reset) begin
    cfgMerged__1 = 64'h0;
  end
  if (reset) begin
    cfgMerged_1_0 = 64'hf0b0b0b0f0b0000;
  end
  if (reset) begin
    cfgMerged_1_1 = 64'h7f1b080b080b080b;
  end
  if (reset) begin
    addr_2_0 = 34'h0;
  end
  if (reset) begin
    addr_2_1 = 34'h0;
  end
  if (reset) begin
    addr_2_2 = 34'h4000000;
  end
  if (reset) begin
    addr_2_3 = 34'h8000000;
  end
  if (reset) begin
    addr_2_4 = 34'hc004000;
  end
  if (reset) begin
    addr_2_5 = 34'hc014000;
  end
  if (reset) begin
    addr_2_6 = 34'he008000;
  end
  if (reset) begin
    addr_2_7 = 34'he008400;
  end
  if (reset) begin
    addr_2_8 = 34'he008800;
  end
  if (reset) begin
    addr_2_9 = 34'he400000;
  end
  if (reset) begin
    addr_2_10 = 34'he400800;
  end
  if (reset) begin
    addr_2_11 = 34'he800000;
  end
  if (reset) begin
    addr_2_12 = 34'he800400;
  end
  if (reset) begin
    addr_2_13 = 34'hf000000;
  end
  if (reset) begin
    addr_2_14 = 34'hfffffff;
  end
  if (reset) begin
    addr_2_15 = 34'h1ffffffff;
  end
  if (reset) begin
    stvec = 64'h0;
  end
  if (reset) begin
    satp = 64'h0;
  end
  if (reset) begin
    sepc = 64'h0;
  end
  if (reset) begin
    scause = 64'h0;
  end
  if (reset) begin
    sscratch = 64'h0;
  end
  if (reset) begin
    scounteren = 64'h0;
  end
  if (reset) begin
    sbpctl = 64'h7f;
  end
  if (reset) begin
    spfctl = 64'h17b37;
  end
  if (reset) begin
    sdsid = 64'h0;
  end
  if (reset) begin
    slvpredctl = 64'h60;
  end
  if (reset) begin
    smblockctl = 64'h73;
  end
  if (reset) begin
    srnctl = 64'h7;
  end
  if (reset) begin
    fcsr = 64'h0;
  end
  if (reset) begin
    priviledgeMode = 2'h3;
  end
  if (reset) begin
    perfEventscounten_0 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_1 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_2 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_3 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_4 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_5 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_6 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_7 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_8 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_9 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_10 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_11 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_12 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_13 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_14 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_15 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_16 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_17 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_18 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_19 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_20 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_21 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_22 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_23 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_24 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_25 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_26 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_27 = 1'h0;
  end
  if (reset) begin
    perfEventscounten_28 = 1'h0;
  end
  if (reset) begin
    perfCnts_0 = 64'h0;
  end
  if (reset) begin
    perfCnts_1 = 64'h0;
  end
  if (reset) begin
    perfCnts_2 = 64'h0;
  end
  if (reset) begin
    perfCnts_3 = 64'h0;
  end
  if (reset) begin
    perfCnts_4 = 64'h0;
  end
  if (reset) begin
    perfCnts_5 = 64'h0;
  end
  if (reset) begin
    perfCnts_6 = 64'h0;
  end
  if (reset) begin
    perfCnts_7 = 64'h0;
  end
  if (reset) begin
    perfCnts_8 = 64'h0;
  end
  if (reset) begin
    perfCnts_9 = 64'h0;
  end
  if (reset) begin
    perfCnts_10 = 64'h0;
  end
  if (reset) begin
    perfCnts_11 = 64'h0;
  end
  if (reset) begin
    perfCnts_12 = 64'h0;
  end
  if (reset) begin
    perfCnts_13 = 64'h0;
  end
  if (reset) begin
    perfCnts_14 = 64'h0;
  end
  if (reset) begin
    perfCnts_15 = 64'h0;
  end
  if (reset) begin
    perfCnts_16 = 64'h0;
  end
  if (reset) begin
    perfCnts_17 = 64'h0;
  end
  if (reset) begin
    perfCnts_18 = 64'h0;
  end
  if (reset) begin
    perfCnts_19 = 64'h0;
  end
  if (reset) begin
    perfCnts_20 = 64'h0;
  end
  if (reset) begin
    perfCnts_21 = 64'h0;
  end
  if (reset) begin
    perfCnts_22 = 64'h0;
  end
  if (reset) begin
    perfCnts_23 = 64'h0;
  end
  if (reset) begin
    perfCnts_24 = 64'h0;
  end
  if (reset) begin
    perfCnts_25 = 64'h0;
  end
  if (reset) begin
    perfCnts_26 = 64'h0;
  end
  if (reset) begin
    perfCnts_27 = 64'h0;
  end
  if (reset) begin
    perfCnts_28 = 64'h0;
  end
  if (reset) begin
    perfEvents_0 = 64'h0;
  end
  if (reset) begin
    perfEvents_1 = 64'h0;
  end
  if (reset) begin
    perfEvents_2 = 64'h0;
  end
  if (reset) begin
    perfEvents_3 = 64'h0;
  end
  if (reset) begin
    perfEvents_4 = 64'h0;
  end
  if (reset) begin
    perfEvents_5 = 64'h0;
  end
  if (reset) begin
    perfEvents_6 = 64'h0;
  end
  if (reset) begin
    perfEvents_7 = 64'h0;
  end
  if (reset) begin
    perfEvents_8 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_9 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_10 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_11 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_12 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_13 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_14 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_15 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_16 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_17 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_18 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_19 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_20 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_21 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_22 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_23 = 64'h8020080200;
  end
  if (reset) begin
    csrevents_0 = 64'hc0300c0300;
  end
  if (reset) begin
    csrevents_1 = 64'hc0300c0300;
  end
  if (reset) begin
    csrevents_2 = 64'hc0300c0300;
  end
  if (reset) begin
    csrevents_3 = 64'hc0300c0300;
  end
  if (reset) begin
    csrevents_4 = 64'hc0300c0300;
  end
  if (reset) begin
    mcountinhibit = 64'h0;
  end
  if (reset) begin
    mcycle = 64'h0;
  end
  if (reset) begin
    minstret = 64'h0;
  end
  if (reset) begin
    REG_2 = 64'h0;
  end
  if (reset) begin
    REG_3 = 64'h0;
  end
  if (reset) begin
    REG_4 = 64'h0;
  end
  if (reset) begin
    REG_5 = 64'h0;
  end
  if (reset) begin
    REG_6 = 64'h0;
  end
  if (reset) begin
    REG_7 = 64'h0;
  end
  if (reset) begin
    REG_8 = 64'h0;
  end
  if (reset) begin
    REG_9 = 64'h0;
  end
  if (reset) begin
    REG_10 = 64'h0;
  end
  if (reset) begin
    REG_11 = 64'h0;
  end
  if (reset) begin
    REG_12 = 64'h0;
  end
  if (reset) begin
    REG_13 = 64'h0;
  end
  if (reset) begin
    REG_14 = 64'h0;
  end
  if (reset) begin
    REG_15 = 64'h0;
  end
  if (reset) begin
    REG_16 = 64'h0;
  end
  if (reset) begin
    REG_17 = 64'h0;
  end
  if (reset) begin
    REG_18 = 64'h0;
  end
  if (reset) begin
    REG_19 = 64'h0;
  end
  if (reset) begin
    REG_20 = 64'h0;
  end
  if (reset) begin
    REG_21 = 64'h0;
  end
  if (reset) begin
    REG_22 = 64'h0;
  end
  if (reset) begin
    isXRetFlag = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

