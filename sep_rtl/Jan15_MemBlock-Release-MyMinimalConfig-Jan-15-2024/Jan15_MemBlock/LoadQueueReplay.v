module LoadQueueReplay(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_enq_0_ready,
  input         io_enq_0_valid,
  input         io_enq_0_bits_uop_cf_exceptionVec_4,
  input         io_enq_0_bits_uop_cf_exceptionVec_5,
  input         io_enq_0_bits_uop_cf_exceptionVec_13,
  input         io_enq_0_bits_uop_cf_trigger_backendEn_1,
  input         io_enq_0_bits_uop_cf_trigger_backendHit_0,
  input         io_enq_0_bits_uop_cf_trigger_backendHit_1,
  input         io_enq_0_bits_uop_cf_trigger_backendHit_4,
  input         io_enq_0_bits_uop_cf_storeSetHit,
  input         io_enq_0_bits_uop_cf_loadWaitStrict,
  input  [4:0]  io_enq_0_bits_uop_cf_ssid,
  input         io_enq_0_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_enq_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_enq_0_bits_uop_cf_ftqOffset,
  input  [6:0]  io_enq_0_bits_uop_ctrl_fuOpType,
  input         io_enq_0_bits_uop_ctrl_rfWen,
  input         io_enq_0_bits_uop_ctrl_fpWen,
  input  [5:0]  io_enq_0_bits_uop_pdest,
  input         io_enq_0_bits_uop_robIdx_flag,
  input  [4:0]  io_enq_0_bits_uop_robIdx_value,
  input         io_enq_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_enq_0_bits_uop_lqIdx_value,
  input         io_enq_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_enq_0_bits_uop_sqIdx_value,
  input  [38:0] io_enq_0_bits_vaddr,
  input         io_enq_0_bits_tlbMiss,
  input         io_enq_0_bits_isLoadReplay,
  input         io_enq_0_bits_handledByMSHR,
  input  [2:0]  io_enq_0_bits_schedIndex,
  input  [1:0]  io_enq_0_bits_rep_info_mshr_id,
  input         io_enq_0_bits_rep_info_full_fwd,
  input         io_enq_0_bits_rep_info_data_inv_sq_idx_flag,
  input  [3:0]  io_enq_0_bits_rep_info_data_inv_sq_idx_value,
  input         io_enq_0_bits_rep_info_addr_inv_sq_idx_flag,
  input  [3:0]  io_enq_0_bits_rep_info_addr_inv_sq_idx_value,
  input         io_enq_0_bits_rep_info_last_beat,
  input         io_enq_0_bits_rep_info_cause_0,
  input         io_enq_0_bits_rep_info_cause_1,
  input         io_enq_0_bits_rep_info_cause_2,
  input         io_enq_0_bits_rep_info_cause_3,
  input         io_enq_0_bits_rep_info_cause_4,
  input         io_enq_0_bits_rep_info_cause_5,
  input         io_enq_0_bits_rep_info_cause_6,
  input         io_enq_0_bits_rep_info_cause_7,
  input         io_enq_0_bits_rep_info_cause_8,
  input         io_enq_0_bits_rep_info_cause_9,
  output        io_enq_1_ready,
  input         io_enq_1_valid,
  input         io_enq_1_bits_uop_cf_exceptionVec_4,
  input         io_enq_1_bits_uop_cf_exceptionVec_5,
  input         io_enq_1_bits_uop_cf_exceptionVec_13,
  input         io_enq_1_bits_uop_cf_trigger_backendEn_1,
  input         io_enq_1_bits_uop_cf_trigger_backendHit_0,
  input         io_enq_1_bits_uop_cf_trigger_backendHit_1,
  input         io_enq_1_bits_uop_cf_trigger_backendHit_4,
  input         io_enq_1_bits_uop_cf_storeSetHit,
  input         io_enq_1_bits_uop_cf_loadWaitStrict,
  input  [4:0]  io_enq_1_bits_uop_cf_ssid,
  input         io_enq_1_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_enq_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_enq_1_bits_uop_cf_ftqOffset,
  input  [6:0]  io_enq_1_bits_uop_ctrl_fuOpType,
  input         io_enq_1_bits_uop_ctrl_rfWen,
  input         io_enq_1_bits_uop_ctrl_fpWen,
  input  [5:0]  io_enq_1_bits_uop_pdest,
  input         io_enq_1_bits_uop_robIdx_flag,
  input  [4:0]  io_enq_1_bits_uop_robIdx_value,
  input         io_enq_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_enq_1_bits_uop_lqIdx_value,
  input         io_enq_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_enq_1_bits_uop_sqIdx_value,
  input  [38:0] io_enq_1_bits_vaddr,
  input         io_enq_1_bits_tlbMiss,
  input         io_enq_1_bits_isLoadReplay,
  input         io_enq_1_bits_handledByMSHR,
  input  [2:0]  io_enq_1_bits_schedIndex,
  input  [1:0]  io_enq_1_bits_rep_info_mshr_id,
  input         io_enq_1_bits_rep_info_full_fwd,
  input         io_enq_1_bits_rep_info_data_inv_sq_idx_flag,
  input  [3:0]  io_enq_1_bits_rep_info_data_inv_sq_idx_value,
  input         io_enq_1_bits_rep_info_addr_inv_sq_idx_flag,
  input  [3:0]  io_enq_1_bits_rep_info_addr_inv_sq_idx_value,
  input         io_enq_1_bits_rep_info_last_beat,
  input         io_enq_1_bits_rep_info_cause_0,
  input         io_enq_1_bits_rep_info_cause_1,
  input         io_enq_1_bits_rep_info_cause_2,
  input         io_enq_1_bits_rep_info_cause_3,
  input         io_enq_1_bits_rep_info_cause_4,
  input         io_enq_1_bits_rep_info_cause_5,
  input         io_enq_1_bits_rep_info_cause_6,
  input         io_enq_1_bits_rep_info_cause_7,
  input         io_enq_1_bits_rep_info_cause_8,
  input         io_enq_1_bits_rep_info_cause_9,
  input         io_storeAddrIn_0_valid,
  input         io_storeAddrIn_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_storeAddrIn_0_bits_uop_sqIdx_value,
  input         io_storeAddrIn_0_bits_miss,
  input         io_storeAddrIn_1_valid,
  input         io_storeAddrIn_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_storeAddrIn_1_bits_uop_sqIdx_value,
  input         io_storeAddrIn_1_bits_miss,
  input         io_storeDataIn_0_valid,
  input         io_storeDataIn_0_bits_uop_sqIdx_flag,
  input  [3:0]  io_storeDataIn_0_bits_uop_sqIdx_value,
  input         io_storeDataIn_1_valid,
  input         io_storeDataIn_1_bits_uop_sqIdx_flag,
  input  [3:0]  io_storeDataIn_1_bits_uop_sqIdx_value,
  input         io_replay_0_ready,
  output        io_replay_0_valid,
  output        io_replay_0_bits_uop_cf_exceptionVec_13,
  output        io_replay_0_bits_uop_cf_trigger_backendEn_1,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_0,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_1,
  output        io_replay_0_bits_uop_cf_trigger_backendHit_4,
  output        io_replay_0_bits_uop_cf_storeSetHit,
  output        io_replay_0_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_replay_0_bits_uop_cf_ssid,
  output        io_replay_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_replay_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_replay_0_bits_uop_cf_ftqOffset,
  output [6:0]  io_replay_0_bits_uop_ctrl_fuOpType,
  output        io_replay_0_bits_uop_ctrl_rfWen,
  output        io_replay_0_bits_uop_ctrl_fpWen,
  output [5:0]  io_replay_0_bits_uop_pdest,
  output        io_replay_0_bits_uop_robIdx_flag,
  output [4:0]  io_replay_0_bits_uop_robIdx_value,
  output        io_replay_0_bits_uop_lqIdx_flag,
  output [3:0]  io_replay_0_bits_uop_lqIdx_value,
  output        io_replay_0_bits_uop_sqIdx_flag,
  output [3:0]  io_replay_0_bits_uop_sqIdx_value,
  output [38:0] io_replay_0_bits_vaddr,
  output [1:0]  io_replay_0_bits_mshrid,
  output        io_replay_0_bits_forward_tlDchannel,
  output [2:0]  io_replay_0_bits_schedIndex,
  input         io_replay_1_ready,
  output        io_replay_1_valid,
  output        io_replay_1_bits_uop_cf_exceptionVec_13,
  output        io_replay_1_bits_uop_cf_trigger_backendEn_1,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_0,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_1,
  output        io_replay_1_bits_uop_cf_trigger_backendHit_4,
  output        io_replay_1_bits_uop_cf_storeSetHit,
  output        io_replay_1_bits_uop_cf_loadWaitStrict,
  output [4:0]  io_replay_1_bits_uop_cf_ssid,
  output        io_replay_1_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_replay_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_replay_1_bits_uop_cf_ftqOffset,
  output [6:0]  io_replay_1_bits_uop_ctrl_fuOpType,
  output        io_replay_1_bits_uop_ctrl_rfWen,
  output        io_replay_1_bits_uop_ctrl_fpWen,
  output [5:0]  io_replay_1_bits_uop_pdest,
  output        io_replay_1_bits_uop_robIdx_flag,
  output [4:0]  io_replay_1_bits_uop_robIdx_value,
  output        io_replay_1_bits_uop_lqIdx_flag,
  output [3:0]  io_replay_1_bits_uop_lqIdx_value,
  output        io_replay_1_bits_uop_sqIdx_flag,
  output [3:0]  io_replay_1_bits_uop_sqIdx_value,
  output [38:0] io_replay_1_bits_vaddr,
  output [1:0]  io_replay_1_bits_mshrid,
  output        io_replay_1_bits_forward_tlDchannel,
  output [2:0]  io_replay_1_bits_schedIndex,
  input         io_tl_d_channel_valid,
  input  [1:0]  io_tl_d_channel_mshrid,
  input         io_stAddrReadySqPtr_flag,
  input  [3:0]  io_stAddrReadySqPtr_value,
  input         io_stAddrReadyVec_0,
  input         io_stAddrReadyVec_1,
  input         io_stAddrReadyVec_2,
  input         io_stAddrReadyVec_3,
  input         io_stAddrReadyVec_4,
  input         io_stAddrReadyVec_5,
  input         io_stAddrReadyVec_6,
  input         io_stAddrReadyVec_7,
  input         io_stAddrReadyVec_8,
  input         io_stAddrReadyVec_9,
  input         io_stAddrReadyVec_10,
  input         io_stAddrReadyVec_11,
  input         io_stDataReadySqPtr_flag,
  input  [3:0]  io_stDataReadySqPtr_value,
  input         io_stDataReadyVec_0,
  input         io_stDataReadyVec_1,
  input         io_stDataReadyVec_2,
  input         io_stDataReadyVec_3,
  input         io_stDataReadyVec_4,
  input         io_stDataReadyVec_5,
  input         io_stDataReadyVec_6,
  input         io_stDataReadyVec_7,
  input         io_stDataReadyVec_8,
  input         io_stDataReadyVec_9,
  input         io_stDataReadyVec_10,
  input         io_stDataReadyVec_11,
  input         io_sqEmpty,
  output        io_lqFull,
  input         io_ldWbPtr_flag,
  input  [3:0]  io_ldWbPtr_value,
  input         io_rarFull,
  input         io_rawFull,
  input         io_l2_hint_valid,
  input  [1:0]  io_l2_hint_bits_sourceId,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_0,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_1,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_2,
  input  [6:0]  io_tlbReplayDelayCycleCtrl_3,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value,
  output [5:0]  io_perf_8_value,
  output [5:0]  io_perf_9_value,
  output [5:0]  io_perf_10_value,
  output [5:0]  io_perf_11_value,
  output [5:0]  io_perf_12_value,
  input         miss_in_dtlb_0,
  input         rob_head_vaddr_0_valid,
  input  [38:0] rob_head_vaddr_0_bits
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
  reg [63:0] _RAND_184;
  reg [63:0] _RAND_185;
  reg [63:0] _RAND_186;
  reg [63:0] _RAND_187;
  reg [63:0] _RAND_188;
  reg [63:0] _RAND_189;
  reg [63:0] _RAND_190;
  reg [63:0] _RAND_191;
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
`endif // RANDOMIZE_REG_INIT
  wire  vaddrModule_clock; // @[LoadQueueReplay.scala 201:27]
  wire  vaddrModule_io_ren_0; // @[LoadQueueReplay.scala 201:27]
  wire  vaddrModule_io_ren_1; // @[LoadQueueReplay.scala 201:27]
  wire [2:0] vaddrModule_io_raddr_0; // @[LoadQueueReplay.scala 201:27]
  wire [2:0] vaddrModule_io_raddr_1; // @[LoadQueueReplay.scala 201:27]
  wire [38:0] vaddrModule_io_rdata_0; // @[LoadQueueReplay.scala 201:27]
  wire [38:0] vaddrModule_io_rdata_1; // @[LoadQueueReplay.scala 201:27]
  wire  vaddrModule_io_wen_0; // @[LoadQueueReplay.scala 201:27]
  wire  vaddrModule_io_wen_1; // @[LoadQueueReplay.scala 201:27]
  wire [2:0] vaddrModule_io_waddr_0; // @[LoadQueueReplay.scala 201:27]
  wire [2:0] vaddrModule_io_waddr_1; // @[LoadQueueReplay.scala 201:27]
  wire [38:0] vaddrModule_io_wdata_0; // @[LoadQueueReplay.scala 201:27]
  wire [38:0] vaddrModule_io_wdata_1; // @[LoadQueueReplay.scala 201:27]
  wire  freeList_clock; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_reset; // @[LoadQueueReplay.scala 218:24]
  wire [2:0] freeList_io_allocateSlot_0; // @[LoadQueueReplay.scala 218:24]
  wire [2:0] freeList_io_allocateSlot_1; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_io_canAllocate_0; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_io_canAllocate_1; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_io_doAllocate_0; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_io_doAllocate_1; // @[LoadQueueReplay.scala 218:24]
  wire [7:0] freeList_io_free; // @[LoadQueueReplay.scala 218:24]
  wire  freeList_io_empty; // @[LoadQueueReplay.scala 218:24]
  wire  ageOldest_age_clock; // @[LoadQueueReplay.scala 136:21]
  wire  ageOldest_age_reset; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_io_enq_0; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_io_enq_1; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_io_deq; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_io_ready; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_io_out; // @[LoadQueueReplay.scala 136:21]
  wire  ageOldest_age_1_clock; // @[LoadQueueReplay.scala 136:21]
  wire  ageOldest_age_1_reset; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_1_io_enq_0; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_1_io_enq_1; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_1_io_deq; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_1_io_ready; // @[LoadQueueReplay.scala 136:21]
  wire [3:0] ageOldest_age_1_io_out; // @[LoadQueueReplay.scala 136:21]
  reg  allocated_0; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_1; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_2; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_3; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_4; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_5; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_6; // @[LoadQueueReplay.scala 198:26]
  reg  allocated_7; // @[LoadQueueReplay.scala 198:26]
  reg  scheduled_0; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_1; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_2; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_3; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_4; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_5; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_6; // @[LoadQueueReplay.scala 199:26]
  reg  scheduled_7; // @[LoadQueueReplay.scala 199:26]
  reg  uop_0_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_0_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_0_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_0_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_0_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_0_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_0_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_0_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_0_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_0_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_1_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_1_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_1_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_1_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_1_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_1_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_1_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_1_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_1_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_2_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_2_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_2_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_2_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_2_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_2_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_2_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_2_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_2_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_3_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_3_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_3_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_3_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_3_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_3_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_3_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_3_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_3_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_4_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_4_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_4_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_4_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_4_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_4_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_4_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_4_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_4_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_5_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_5_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_5_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_5_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_5_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_5_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_5_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_5_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_5_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_6_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_6_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_6_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_6_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_6_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_6_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_6_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_6_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_6_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_7_cf_ssid; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_7_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16]
  reg [2:0] uop_7_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16]
  reg [6:0] uop_7_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16]
  reg [5:0] uop_7_pdest; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_robIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [4:0] uop_7_robIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_lqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_7_lqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg  uop_7_sqIdx_flag; // @[LoadQueueReplay.scala 200:16]
  reg [3:0] uop_7_sqIdx_value; // @[LoadQueueReplay.scala 200:16]
  reg [38:0] debug_vaddr_0; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_1; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_2; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_3; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_4; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_5; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_6; // @[LoadQueueReplay.scala 210:28]
  reg [38:0] debug_vaddr_7; // @[LoadQueueReplay.scala 210:28]
  reg [9:0] cause_0; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_1; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_2; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_3; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_4; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_5; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_6; // @[LoadQueueReplay.scala 211:22]
  reg [9:0] cause_7; // @[LoadQueueReplay.scala 211:22]
  reg  blocking_0; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_1; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_2; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_3; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_4; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_5; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_6; // @[LoadQueueReplay.scala 212:25]
  reg  blocking_7; // @[LoadQueueReplay.scala 212:25]
  reg  selBlocked_0; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_1; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_2; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_3; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_4; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_5; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_6; // @[LoadQueueReplay.scala 230:27]
  reg  selBlocked_7; // @[LoadQueueReplay.scala 230:27]
  reg [1:0] blockPtrTlb_0; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_1; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_2; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_3; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_4; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_5; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_6; // @[LoadQueueReplay.scala 232:28]
  reg [1:0] blockPtrTlb_7; // @[LoadQueueReplay.scala 232:28]
  reg [6:0] blockCyclesTlb_0; // @[LoadQueueReplay.scala 234:27]
  reg [6:0] blockCyclesTlb_1; // @[LoadQueueReplay.scala 234:27]
  reg [6:0] blockCyclesTlb_2; // @[LoadQueueReplay.scala 234:27]
  reg [6:0] blockCyclesTlb_3; // @[LoadQueueReplay.scala 234:27]
  reg  blockSqIdx_0_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_0_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_1_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_1_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_2_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_2_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_3_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_3_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_4_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_4_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_5_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_5_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_6_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_6_value; // @[LoadQueueReplay.scala 236:23]
  reg  blockSqIdx_7_flag; // @[LoadQueueReplay.scala 236:23]
  reg [3:0] blockSqIdx_7_value; // @[LoadQueueReplay.scala 236:23]
  reg [1:0] missMSHRId_0; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_1; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_2; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_3; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_4; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_5; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_6; // @[LoadQueueReplay.scala 238:27]
  reg [1:0] missMSHRId_7; // @[LoadQueueReplay.scala 238:27]
  wire  trueCacheMissReplay_0 = cause_0[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_1 = cause_1[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_2 = cause_2[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_3 = cause_3[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_4 = cause_4[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_5 = cause_5[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_6 = cause_6[4]; // @[LoadQueueReplay.scala 242:57]
  wire  trueCacheMissReplay_7 = cause_7[4]; // @[LoadQueueReplay.scala 242:57]
  wire [5:0] _cancelEnq_flushItself_T_5 = {io_enq_1_bits_uop_robIdx_flag,io_enq_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _cancelEnq_flushItself_T_6 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _cancelEnq_flushItself_T_7 = _cancelEnq_flushItself_T_5 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  cancelEnq_flushItself_1 = io_redirect_bits_level & _cancelEnq_flushItself_T_7; // @[Rob.scala 142:51]
  wire  cancelEnq_differentFlag_1 = io_enq_1_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  cancelEnq_compare_1 = io_enq_1_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _cancelEnq_T_2 = cancelEnq_differentFlag_1 ^ cancelEnq_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  cancelEnq_1 = io_redirect_valid & (cancelEnq_flushItself_1 | _cancelEnq_T_2); // @[Rob.scala 143:20]
  wire [9:0] _needReplay_T_1 = {io_enq_1_bits_rep_info_cause_9,io_enq_1_bits_rep_info_cause_8,
    io_enq_1_bits_rep_info_cause_7,io_enq_1_bits_rep_info_cause_6,io_enq_1_bits_rep_info_cause_5,
    io_enq_1_bits_rep_info_cause_4,io_enq_1_bits_rep_info_cause_3,io_enq_1_bits_rep_info_cause_2,
    io_enq_1_bits_rep_info_cause_1,io_enq_1_bits_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  needReplay_1 = |_needReplay_T_1; // @[LoadUnit.scala 62:36]
  wire [15:0] _hasExceptions_T_3 = {2'h0,io_enq_1_bits_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    io_enq_1_bits_uop_cf_exceptionVec_5,io_enq_1_bits_uop_cf_exceptionVec_4,4'h0}; // @[LoadQueueReplay.scala 257:102]
  wire  hasExceptions_1 = |_hasExceptions_T_3 & ~io_enq_1_bits_tlbMiss; // @[LoadQueueReplay.scala 257:113]
  wire  needEnqueue_1 = io_enq_1_valid & ~cancelEnq_1 & needReplay_1 & ~hasExceptions_1; // @[LoadQueueReplay.scala 260:53]
  wire [5:0] _cancelEnq_flushItself_T_1 = {io_enq_0_bits_uop_robIdx_flag,io_enq_0_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _cancelEnq_flushItself_T_3 = _cancelEnq_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  cancelEnq_flushItself = io_redirect_bits_level & _cancelEnq_flushItself_T_3; // @[Rob.scala 142:51]
  wire  cancelEnq_differentFlag = io_enq_0_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  cancelEnq_compare = io_enq_0_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _cancelEnq_T = cancelEnq_differentFlag ^ cancelEnq_compare; // @[CircularQueuePtr.scala 68:19]
  wire  cancelEnq_0 = io_redirect_valid & (cancelEnq_flushItself | _cancelEnq_T); // @[Rob.scala 143:20]
  wire [9:0] _needReplay_T = {io_enq_0_bits_rep_info_cause_9,io_enq_0_bits_rep_info_cause_8,
    io_enq_0_bits_rep_info_cause_7,io_enq_0_bits_rep_info_cause_6,io_enq_0_bits_rep_info_cause_5,
    io_enq_0_bits_rep_info_cause_4,io_enq_0_bits_rep_info_cause_3,io_enq_0_bits_rep_info_cause_2,
    io_enq_0_bits_rep_info_cause_1,io_enq_0_bits_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  needReplay_0 = |_needReplay_T; // @[LoadUnit.scala 62:36]
  wire [15:0] _hasExceptions_T = {2'h0,io_enq_0_bits_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    io_enq_0_bits_uop_cf_exceptionVec_5,io_enq_0_bits_uop_cf_exceptionVec_4,4'h0}; // @[LoadQueueReplay.scala 257:102]
  wire  hasExceptions_0 = |_hasExceptions_T & ~io_enq_0_bits_tlbMiss; // @[LoadQueueReplay.scala 257:113]
  wire  needEnqueue_0 = io_enq_0_valid & ~cancelEnq_0 & needReplay_0 & ~hasExceptions_0; // @[LoadQueueReplay.scala 260:53]
  wire  _newEnqueue_T = ~io_enq_0_bits_isLoadReplay; // @[LoadQueueReplay.scala 590:23]
  wire  newEnqueue_0 = needEnqueue_0 & ~io_enq_0_bits_isLoadReplay; // @[LoadQueueReplay.scala 590:20]
  wire [2:0] _GEN_4630 = freeList_io_allocateSlot_0; // @[LoadQueueReplay.scala 602:{23,23}]
  wire [2:0] _GEN_4631 = newEnqueue_0 ? freeList_io_allocateSlot_1 : _GEN_4630; // @[LoadQueueReplay.scala 602:{23,23}]
  wire [2:0] enqIndex_1 = io_enq_1_bits_isLoadReplay ? io_enq_1_bits_schedIndex : _GEN_4631; // @[LoadQueueReplay.scala 602:23]
  wire [1:0] _GEN_5579 = 3'h1 == enqIndex_1 ? blockPtrTlb_1 : blockPtrTlb_0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5580 = 3'h2 == enqIndex_1 ? blockPtrTlb_2 : _GEN_5579; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5581 = 3'h3 == enqIndex_1 ? blockPtrTlb_3 : _GEN_5580; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5582 = 3'h4 == enqIndex_1 ? blockPtrTlb_4 : _GEN_5581; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5583 = 3'h5 == enqIndex_1 ? blockPtrTlb_5 : _GEN_5582; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5584 = 3'h6 == enqIndex_1 ? blockPtrTlb_6 : _GEN_5583; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_5585 = 3'h7 == enqIndex_1 ? blockPtrTlb_7 : _GEN_5584; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5587 = 2'h1 == _GEN_5585 ? blockCyclesTlb_1 : blockCyclesTlb_0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5588 = 2'h2 == _GEN_5585 ? blockCyclesTlb_2 : _GEN_5587; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5589 = 2'h3 == _GEN_5585 ? blockCyclesTlb_3 : _GEN_5588; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [2:0] enqIndex = io_enq_0_bits_isLoadReplay ? io_enq_0_bits_schedIndex : freeList_io_allocateSlot_0; // @[LoadQueueReplay.scala 602:23]
  wire [1:0] _GEN_3375 = 3'h1 == enqIndex ? blockPtrTlb_1 : blockPtrTlb_0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3376 = 3'h2 == enqIndex ? blockPtrTlb_2 : _GEN_3375; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3377 = 3'h3 == enqIndex ? blockPtrTlb_3 : _GEN_3376; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3378 = 3'h4 == enqIndex ? blockPtrTlb_4 : _GEN_3377; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3379 = 3'h5 == enqIndex ? blockPtrTlb_5 : _GEN_3378; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3380 = 3'h6 == enqIndex ? blockPtrTlb_6 : _GEN_3379; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [1:0] _GEN_3381 = 3'h7 == enqIndex ? blockPtrTlb_7 : _GEN_3380; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3383 = 2'h1 == _GEN_3381 ? blockCyclesTlb_1 : blockCyclesTlb_0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3384 = 2'h2 == _GEN_3381 ? blockCyclesTlb_2 : _GEN_3383; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3385 = 2'h3 == _GEN_3381 ? blockCyclesTlb_3 : _GEN_3384; // @[LoadQueueReplay.scala 650:{32,32}]
  wire  _s0_loadHintWakeMask_T_71 = allocated_7 & ~scheduled_7; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_7_flushItself_T_1 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_7_flushItself_T_3 = _needCancel_7_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_7_flushItself = io_redirect_bits_level & _needCancel_7_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_7_differentFlag = uop_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_7_compare = uop_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_7_T = needCancel_7_differentFlag ^ needCancel_7_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_7_T_2 = io_redirect_valid & (needCancel_7_flushItself | _needCancel_7_T); // @[Rob.scala 143:20]
  wire  needCancel_7 = _needCancel_7_T_2 & allocated_7; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_78 = ~needCancel_7; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_79 = allocated_7 & ~scheduled_7 & trueCacheMissReplay_7 & blocking_7 & missMSHRId_7 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_7; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_61 = allocated_6 & ~scheduled_6; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_6_flushItself_T_1 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_6_flushItself_T_3 = _needCancel_6_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_6_flushItself = io_redirect_bits_level & _needCancel_6_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_6_differentFlag = uop_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_6_compare = uop_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_6_T = needCancel_6_differentFlag ^ needCancel_6_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_6_T_2 = io_redirect_valid & (needCancel_6_flushItself | _needCancel_6_T); // @[Rob.scala 143:20]
  wire  needCancel_6 = _needCancel_6_T_2 & allocated_6; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_68 = ~needCancel_6; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_69 = allocated_6 & ~scheduled_6 & trueCacheMissReplay_6 & blocking_6 & missMSHRId_6 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_6; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_51 = allocated_5 & ~scheduled_5; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_5_flushItself_T_1 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_5_flushItself_T_3 = _needCancel_5_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_5_flushItself = io_redirect_bits_level & _needCancel_5_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_5_differentFlag = uop_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_5_compare = uop_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_5_T = needCancel_5_differentFlag ^ needCancel_5_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_5_T_2 = io_redirect_valid & (needCancel_5_flushItself | _needCancel_5_T); // @[Rob.scala 143:20]
  wire  needCancel_5 = _needCancel_5_T_2 & allocated_5; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_58 = ~needCancel_5; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_59 = allocated_5 & ~scheduled_5 & trueCacheMissReplay_5 & blocking_5 & missMSHRId_5 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_5; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_41 = allocated_4 & ~scheduled_4; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_4_flushItself_T_1 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_4_flushItself_T_3 = _needCancel_4_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_4_flushItself = io_redirect_bits_level & _needCancel_4_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_4_differentFlag = uop_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_4_compare = uop_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_4_T = needCancel_4_differentFlag ^ needCancel_4_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_4_T_2 = io_redirect_valid & (needCancel_4_flushItself | _needCancel_4_T); // @[Rob.scala 143:20]
  wire  needCancel_4 = _needCancel_4_T_2 & allocated_4; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_48 = ~needCancel_4; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_49 = allocated_4 & ~scheduled_4 & trueCacheMissReplay_4 & blocking_4 & missMSHRId_4 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_4; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_31 = allocated_3 & ~scheduled_3; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_3_flushItself_T_1 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_3_flushItself_T_3 = _needCancel_3_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_3_flushItself = io_redirect_bits_level & _needCancel_3_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_3_differentFlag = uop_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_3_compare = uop_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_3_T = needCancel_3_differentFlag ^ needCancel_3_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_3_T_2 = io_redirect_valid & (needCancel_3_flushItself | _needCancel_3_T); // @[Rob.scala 143:20]
  wire  needCancel_3 = _needCancel_3_T_2 & allocated_3; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_38 = ~needCancel_3; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_39 = allocated_3 & ~scheduled_3 & trueCacheMissReplay_3 & blocking_3 & missMSHRId_3 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_3; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_21 = allocated_2 & ~scheduled_2; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_2_flushItself_T_1 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_2_flushItself_T_3 = _needCancel_2_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_2_flushItself = io_redirect_bits_level & _needCancel_2_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_2_differentFlag = uop_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_2_compare = uop_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_2_T = needCancel_2_differentFlag ^ needCancel_2_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_2_T_2 = io_redirect_valid & (needCancel_2_flushItself | _needCancel_2_T); // @[Rob.scala 143:20]
  wire  needCancel_2 = _needCancel_2_T_2 & allocated_2; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_28 = ~needCancel_2; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_29 = allocated_2 & ~scheduled_2 & trueCacheMissReplay_2 & blocking_2 & missMSHRId_2 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_2; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_11 = allocated_1 & ~scheduled_1; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_1_flushItself_T_1 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_1_flushItself_T_3 = _needCancel_1_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_1_flushItself = io_redirect_bits_level & _needCancel_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_1_differentFlag = uop_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_1_compare = uop_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_1_T = needCancel_1_differentFlag ^ needCancel_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_1_T_2 = io_redirect_valid & (needCancel_1_flushItself | _needCancel_1_T); // @[Rob.scala 143:20]
  wire  needCancel_1 = _needCancel_1_T_2 & allocated_1; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_18 = ~needCancel_1; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_19 = allocated_1 & ~scheduled_1 & trueCacheMissReplay_1 & blocking_1 & missMSHRId_1 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_1; // @[LoadQueueReplay.scala 376:151]
  wire  _s0_loadHintWakeMask_T_1 = allocated_0 & ~scheduled_0; // @[LoadQueueReplay.scala 376:18]
  wire [5:0] _needCancel_0_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_0_flushItself_T_3 = _needCancel_0_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_0_flushItself = io_redirect_bits_level & _needCancel_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_0_differentFlag = uop_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_0_compare = uop_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_0_T = needCancel_0_differentFlag ^ needCancel_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_0_T_2 = io_redirect_valid & (needCancel_0_flushItself | _needCancel_0_T); // @[Rob.scala 143:20]
  wire  needCancel_0 = _needCancel_0_T_2 & allocated_0; // @[LoadQueueReplay.scala 694:59]
  wire  _s0_loadHintWakeMask_T_8 = ~needCancel_0; // @[LoadQueueReplay.scala 376:154]
  wire  _s0_loadHintWakeMask_T_9 = allocated_0 & ~scheduled_0 & trueCacheMissReplay_0 & blocking_0 & missMSHRId_0 ==
    io_l2_hint_bits_sourceId & io_l2_hint_valid & ~needCancel_0; // @[LoadQueueReplay.scala 376:151]
  wire [7:0] s0_loadHintWakeMask = {_s0_loadHintWakeMask_T_79,_s0_loadHintWakeMask_T_69,_s0_loadHintWakeMask_T_59,
    _s0_loadHintWakeMask_T_49,_s0_loadHintWakeMask_T_39,_s0_loadHintWakeMask_T_29,_s0_loadHintWakeMask_T_19,
    _s0_loadHintWakeMask_T_9}; // @[LoadQueueReplay.scala 377:13]
  wire [6:0] _GEN_3366 = 3'h0 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3418 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3366 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4478 = needEnqueue_0 & io_enq_0_ready ? _GEN_3418 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5546 = 3'h0 == enqIndex_1 ? 7'h0 : _GEN_4478; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5570 = 3'h0 == enqIndex_1 ? _GEN_5589 : _GEN_5546; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5622 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5570 : _GEN_5546; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_0 = needEnqueue_1 & io_enq_1_ready ? _GEN_5622 : _GEN_4478; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3367 = 3'h1 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3419 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3367 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4479 = needEnqueue_0 & io_enq_0_ready ? _GEN_3419 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5547 = 3'h1 == enqIndex_1 ? 7'h0 : _GEN_4479; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5571 = 3'h1 == enqIndex_1 ? _GEN_5589 : _GEN_5547; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5623 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5571 : _GEN_5547; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_1 = needEnqueue_1 & io_enq_1_ready ? _GEN_5623 : _GEN_4479; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3368 = 3'h2 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3420 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3368 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4480 = needEnqueue_0 & io_enq_0_ready ? _GEN_3420 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5548 = 3'h2 == enqIndex_1 ? 7'h0 : _GEN_4480; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5572 = 3'h2 == enqIndex_1 ? _GEN_5589 : _GEN_5548; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5624 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5572 : _GEN_5548; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_2 = needEnqueue_1 & io_enq_1_ready ? _GEN_5624 : _GEN_4480; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3369 = 3'h3 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3421 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3369 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4481 = needEnqueue_0 & io_enq_0_ready ? _GEN_3421 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5549 = 3'h3 == enqIndex_1 ? 7'h0 : _GEN_4481; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5573 = 3'h3 == enqIndex_1 ? _GEN_5589 : _GEN_5549; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5625 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5573 : _GEN_5549; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_3 = needEnqueue_1 & io_enq_1_ready ? _GEN_5625 : _GEN_4481; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3370 = 3'h4 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3422 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3370 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4482 = needEnqueue_0 & io_enq_0_ready ? _GEN_3422 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5550 = 3'h4 == enqIndex_1 ? 7'h0 : _GEN_4482; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5574 = 3'h4 == enqIndex_1 ? _GEN_5589 : _GEN_5550; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5626 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5574 : _GEN_5550; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_4 = needEnqueue_1 & io_enq_1_ready ? _GEN_5626 : _GEN_4482; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3371 = 3'h5 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3423 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3371 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4483 = needEnqueue_0 & io_enq_0_ready ? _GEN_3423 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5551 = 3'h5 == enqIndex_1 ? 7'h0 : _GEN_4483; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5575 = 3'h5 == enqIndex_1 ? _GEN_5589 : _GEN_5551; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5627 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5575 : _GEN_5551; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_5 = needEnqueue_1 & io_enq_1_ready ? _GEN_5627 : _GEN_4483; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3372 = 3'h6 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3424 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3372 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4484 = needEnqueue_0 & io_enq_0_ready ? _GEN_3424 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5552 = 3'h6 == enqIndex_1 ? 7'h0 : _GEN_4484; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5576 = 3'h6 == enqIndex_1 ? _GEN_5589 : _GEN_5552; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5628 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5576 : _GEN_5552; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_6 = needEnqueue_1 & io_enq_1_ready ? _GEN_5628 : _GEN_4484; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_3373 = 3'h7 == enqIndex ? _GEN_3385 : 7'h0; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_3425 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3373 : 7'h0; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] _GEN_4485 = needEnqueue_0 & io_enq_0_ready ? _GEN_3425 : 7'h0; // @[LoadQueueReplay.scala 606:40]
  wire [6:0] _GEN_5553 = 3'h7 == enqIndex_1 ? 7'h0 : _GEN_4485; // @[LoadQueueReplay.scala 637:{30,30}]
  wire [6:0] _GEN_5577 = 3'h7 == enqIndex_1 ? _GEN_5589 : _GEN_5553; // @[LoadQueueReplay.scala 650:{32,32}]
  wire [6:0] _GEN_5629 = io_enq_1_bits_rep_info_cause_1 ? _GEN_5577 : _GEN_5553; // @[LoadQueueReplay.scala 649:54]
  wire [6:0] creditUpdate_7 = needEnqueue_1 & io_enq_1_ready ? _GEN_5629 : _GEN_4485; // @[LoadQueueReplay.scala 606:40]
  reg  dataInLastBeatReg_0; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_1; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_2; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_3; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_4; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_5; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_6; // @[LoadQueueReplay.scala 249:34]
  reg  dataInLastBeatReg_7; // @[LoadQueueReplay.scala 249:34]
  wire  _canFreeVec_T = io_enq_0_valid & io_enq_0_bits_isLoadReplay; // @[LoadQueueReplay.scala 263:19]
  wire  _canFreeVec_T_2 = ~needReplay_0 | hasExceptions_0; // @[LoadQueueReplay.scala 263:55]
  wire  _canFreeVec_T_4 = io_enq_1_valid & io_enq_1_bits_isLoadReplay; // @[LoadQueueReplay.scala 263:19]
  wire  _canFreeVec_T_6 = ~needReplay_1 | hasExceptions_1; // @[LoadQueueReplay.scala 263:55]
  wire  addrNotBlockVec_1_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_1_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_1_compare = io_stAddrReadySqPtr_value < blockSqIdx_1_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_1_T = addrNotBlockVec_1_differentFlag ^ addrNotBlockVec_1_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_37 = 4'h1 == blockSqIdx_1_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_38 = 4'h2 == blockSqIdx_1_value ? io_stAddrReadyVec_2 : _GEN_37; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_39 = 4'h3 == blockSqIdx_1_value ? io_stAddrReadyVec_3 : _GEN_38; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_40 = 4'h4 == blockSqIdx_1_value ? io_stAddrReadyVec_4 : _GEN_39; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_41 = 4'h5 == blockSqIdx_1_value ? io_stAddrReadyVec_5 : _GEN_40; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_42 = 4'h6 == blockSqIdx_1_value ? io_stAddrReadyVec_6 : _GEN_41; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_43 = 4'h7 == blockSqIdx_1_value ? io_stAddrReadyVec_7 : _GEN_42; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_44 = 4'h8 == blockSqIdx_1_value ? io_stAddrReadyVec_8 : _GEN_43; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_45 = 4'h9 == blockSqIdx_1_value ? io_stAddrReadyVec_9 : _GEN_44; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_46 = 4'ha == blockSqIdx_1_value ? io_stAddrReadyVec_10 : _GEN_45; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_47 = 4'hb == blockSqIdx_1_value ? io_stAddrReadyVec_11 : _GEN_46; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_1 = ~_addrNotBlockVec_1_T | _GEN_47 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_0_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_0_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_0_compare = io_stAddrReadySqPtr_value < blockSqIdx_0_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_0_T = addrNotBlockVec_0_differentFlag ^ addrNotBlockVec_0_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_13 = 4'h1 == blockSqIdx_0_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_14 = 4'h2 == blockSqIdx_0_value ? io_stAddrReadyVec_2 : _GEN_13; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_15 = 4'h3 == blockSqIdx_0_value ? io_stAddrReadyVec_3 : _GEN_14; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_16 = 4'h4 == blockSqIdx_0_value ? io_stAddrReadyVec_4 : _GEN_15; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_17 = 4'h5 == blockSqIdx_0_value ? io_stAddrReadyVec_5 : _GEN_16; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_18 = 4'h6 == blockSqIdx_0_value ? io_stAddrReadyVec_6 : _GEN_17; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_19 = 4'h7 == blockSqIdx_0_value ? io_stAddrReadyVec_7 : _GEN_18; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_20 = 4'h8 == blockSqIdx_0_value ? io_stAddrReadyVec_8 : _GEN_19; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_21 = 4'h9 == blockSqIdx_0_value ? io_stAddrReadyVec_9 : _GEN_20; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_22 = 4'ha == blockSqIdx_0_value ? io_stAddrReadyVec_10 : _GEN_21; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_23 = 4'hb == blockSqIdx_0_value ? io_stAddrReadyVec_11 : _GEN_22; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_0 = ~_addrNotBlockVec_0_T | _GEN_23 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_3_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_3_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_3_compare = io_stAddrReadySqPtr_value < blockSqIdx_3_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_3_T = addrNotBlockVec_3_differentFlag ^ addrNotBlockVec_3_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_85 = 4'h1 == blockSqIdx_3_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_86 = 4'h2 == blockSqIdx_3_value ? io_stAddrReadyVec_2 : _GEN_85; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_87 = 4'h3 == blockSqIdx_3_value ? io_stAddrReadyVec_3 : _GEN_86; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_88 = 4'h4 == blockSqIdx_3_value ? io_stAddrReadyVec_4 : _GEN_87; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_89 = 4'h5 == blockSqIdx_3_value ? io_stAddrReadyVec_5 : _GEN_88; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_90 = 4'h6 == blockSqIdx_3_value ? io_stAddrReadyVec_6 : _GEN_89; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_91 = 4'h7 == blockSqIdx_3_value ? io_stAddrReadyVec_7 : _GEN_90; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_92 = 4'h8 == blockSqIdx_3_value ? io_stAddrReadyVec_8 : _GEN_91; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_93 = 4'h9 == blockSqIdx_3_value ? io_stAddrReadyVec_9 : _GEN_92; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_94 = 4'ha == blockSqIdx_3_value ? io_stAddrReadyVec_10 : _GEN_93; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_95 = 4'hb == blockSqIdx_3_value ? io_stAddrReadyVec_11 : _GEN_94; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_3 = ~_addrNotBlockVec_3_T | _GEN_95 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_2_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_2_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_2_compare = io_stAddrReadySqPtr_value < blockSqIdx_2_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_2_T = addrNotBlockVec_2_differentFlag ^ addrNotBlockVec_2_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_61 = 4'h1 == blockSqIdx_2_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_62 = 4'h2 == blockSqIdx_2_value ? io_stAddrReadyVec_2 : _GEN_61; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_63 = 4'h3 == blockSqIdx_2_value ? io_stAddrReadyVec_3 : _GEN_62; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_64 = 4'h4 == blockSqIdx_2_value ? io_stAddrReadyVec_4 : _GEN_63; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_65 = 4'h5 == blockSqIdx_2_value ? io_stAddrReadyVec_5 : _GEN_64; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_66 = 4'h6 == blockSqIdx_2_value ? io_stAddrReadyVec_6 : _GEN_65; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_67 = 4'h7 == blockSqIdx_2_value ? io_stAddrReadyVec_7 : _GEN_66; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_68 = 4'h8 == blockSqIdx_2_value ? io_stAddrReadyVec_8 : _GEN_67; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_69 = 4'h9 == blockSqIdx_2_value ? io_stAddrReadyVec_9 : _GEN_68; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_70 = 4'ha == blockSqIdx_2_value ? io_stAddrReadyVec_10 : _GEN_69; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_71 = 4'hb == blockSqIdx_2_value ? io_stAddrReadyVec_11 : _GEN_70; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_2 = ~_addrNotBlockVec_2_T | _GEN_71 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_5_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_5_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_5_compare = io_stAddrReadySqPtr_value < blockSqIdx_5_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_5_T = addrNotBlockVec_5_differentFlag ^ addrNotBlockVec_5_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_133 = 4'h1 == blockSqIdx_5_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_134 = 4'h2 == blockSqIdx_5_value ? io_stAddrReadyVec_2 : _GEN_133; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_135 = 4'h3 == blockSqIdx_5_value ? io_stAddrReadyVec_3 : _GEN_134; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_136 = 4'h4 == blockSqIdx_5_value ? io_stAddrReadyVec_4 : _GEN_135; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_137 = 4'h5 == blockSqIdx_5_value ? io_stAddrReadyVec_5 : _GEN_136; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_138 = 4'h6 == blockSqIdx_5_value ? io_stAddrReadyVec_6 : _GEN_137; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_139 = 4'h7 == blockSqIdx_5_value ? io_stAddrReadyVec_7 : _GEN_138; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_140 = 4'h8 == blockSqIdx_5_value ? io_stAddrReadyVec_8 : _GEN_139; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_141 = 4'h9 == blockSqIdx_5_value ? io_stAddrReadyVec_9 : _GEN_140; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_142 = 4'ha == blockSqIdx_5_value ? io_stAddrReadyVec_10 : _GEN_141; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_143 = 4'hb == blockSqIdx_5_value ? io_stAddrReadyVec_11 : _GEN_142; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_5 = ~_addrNotBlockVec_5_T | _GEN_143 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_4_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_4_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_4_compare = io_stAddrReadySqPtr_value < blockSqIdx_4_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_4_T = addrNotBlockVec_4_differentFlag ^ addrNotBlockVec_4_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_109 = 4'h1 == blockSqIdx_4_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_110 = 4'h2 == blockSqIdx_4_value ? io_stAddrReadyVec_2 : _GEN_109; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_111 = 4'h3 == blockSqIdx_4_value ? io_stAddrReadyVec_3 : _GEN_110; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_112 = 4'h4 == blockSqIdx_4_value ? io_stAddrReadyVec_4 : _GEN_111; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_113 = 4'h5 == blockSqIdx_4_value ? io_stAddrReadyVec_5 : _GEN_112; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_114 = 4'h6 == blockSqIdx_4_value ? io_stAddrReadyVec_6 : _GEN_113; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_115 = 4'h7 == blockSqIdx_4_value ? io_stAddrReadyVec_7 : _GEN_114; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_116 = 4'h8 == blockSqIdx_4_value ? io_stAddrReadyVec_8 : _GEN_115; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_117 = 4'h9 == blockSqIdx_4_value ? io_stAddrReadyVec_9 : _GEN_116; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_118 = 4'ha == blockSqIdx_4_value ? io_stAddrReadyVec_10 : _GEN_117; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_119 = 4'hb == blockSqIdx_4_value ? io_stAddrReadyVec_11 : _GEN_118; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_4 = ~_addrNotBlockVec_4_T | _GEN_119 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_7_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_7_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_7_compare = io_stAddrReadySqPtr_value < blockSqIdx_7_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_7_T = addrNotBlockVec_7_differentFlag ^ addrNotBlockVec_7_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_181 = 4'h1 == blockSqIdx_7_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_182 = 4'h2 == blockSqIdx_7_value ? io_stAddrReadyVec_2 : _GEN_181; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_183 = 4'h3 == blockSqIdx_7_value ? io_stAddrReadyVec_3 : _GEN_182; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_184 = 4'h4 == blockSqIdx_7_value ? io_stAddrReadyVec_4 : _GEN_183; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_185 = 4'h5 == blockSqIdx_7_value ? io_stAddrReadyVec_5 : _GEN_184; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_186 = 4'h6 == blockSqIdx_7_value ? io_stAddrReadyVec_6 : _GEN_185; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_187 = 4'h7 == blockSqIdx_7_value ? io_stAddrReadyVec_7 : _GEN_186; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_188 = 4'h8 == blockSqIdx_7_value ? io_stAddrReadyVec_8 : _GEN_187; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_189 = 4'h9 == blockSqIdx_7_value ? io_stAddrReadyVec_9 : _GEN_188; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_190 = 4'ha == blockSqIdx_7_value ? io_stAddrReadyVec_10 : _GEN_189; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_191 = 4'hb == blockSqIdx_7_value ? io_stAddrReadyVec_11 : _GEN_190; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_7 = ~_addrNotBlockVec_7_T | _GEN_191 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire  addrNotBlockVec_6_differentFlag = io_stAddrReadySqPtr_flag ^ blockSqIdx_6_flag; // @[CircularQueuePtr.scala 72:35]
  wire  addrNotBlockVec_6_compare = io_stAddrReadySqPtr_value < blockSqIdx_6_value; // @[CircularQueuePtr.scala 73:30]
  wire  _addrNotBlockVec_6_T = addrNotBlockVec_6_differentFlag ^ addrNotBlockVec_6_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_157 = 4'h1 == blockSqIdx_6_value ? io_stAddrReadyVec_1 : io_stAddrReadyVec_0; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_158 = 4'h2 == blockSqIdx_6_value ? io_stAddrReadyVec_2 : _GEN_157; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_159 = 4'h3 == blockSqIdx_6_value ? io_stAddrReadyVec_3 : _GEN_158; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_160 = 4'h4 == blockSqIdx_6_value ? io_stAddrReadyVec_4 : _GEN_159; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_161 = 4'h5 == blockSqIdx_6_value ? io_stAddrReadyVec_5 : _GEN_160; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_162 = 4'h6 == blockSqIdx_6_value ? io_stAddrReadyVec_6 : _GEN_161; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_163 = 4'h7 == blockSqIdx_6_value ? io_stAddrReadyVec_7 : _GEN_162; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_164 = 4'h8 == blockSqIdx_6_value ? io_stAddrReadyVec_8 : _GEN_163; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_165 = 4'h9 == blockSqIdx_6_value ? io_stAddrReadyVec_9 : _GEN_164; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_166 = 4'ha == blockSqIdx_6_value ? io_stAddrReadyVec_10 : _GEN_165; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  _GEN_167 = 4'hb == blockSqIdx_6_value ? io_stAddrReadyVec_11 : _GEN_166; // @[LoadQueueReplay.scala 287:{73,73}]
  wire  addrNotBlockVec_6 = ~_addrNotBlockVec_6_T | _GEN_167 | io_sqEmpty; // @[LoadQueueReplay.scala 287:112]
  wire [7:0] _storeAddrValidVec_T = {addrNotBlockVec_7,addrNotBlockVec_6,addrNotBlockVec_5,addrNotBlockVec_4,
    addrNotBlockVec_3,addrNotBlockVec_2,addrNotBlockVec_1,addrNotBlockVec_0}; // @[LoadQueueReplay.scala 276:43]
  wire  _storeAddrInSameCycleVec_1_T_6 = ~io_storeAddrIn_1_bits_miss; // @[LoadQueueReplay.scala 292:7]
  wire  _storeAddrInSameCycleVec_1_T_7 = io_storeAddrIn_1_valid & _storeAddrInSameCycleVec_1_T_6; // @[LoadQueueReplay.scala 291:31]
  wire [4:0] _storeAddrInSameCycleVec_1_T_8 = {blockSqIdx_1_flag,blockSqIdx_1_value}; // @[CircularQueuePtr.scala 61:40]
  wire [4:0] _storeAddrInSameCycleVec_1_T_9 = {io_storeAddrIn_1_bits_uop_sqIdx_flag,
    io_storeAddrIn_1_bits_uop_sqIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _storeAddrInSameCycleVec_1_T_10 = _storeAddrInSameCycleVec_1_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_1_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_1_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_1_T = ~io_storeAddrIn_0_bits_miss; // @[LoadQueueReplay.scala 292:7]
  wire  _storeAddrInSameCycleVec_1_T_1 = io_storeAddrIn_0_valid & _storeAddrInSameCycleVec_1_T; // @[LoadQueueReplay.scala 291:31]
  wire [4:0] _storeAddrInSameCycleVec_1_T_3 = {io_storeAddrIn_0_bits_uop_sqIdx_flag,
    io_storeAddrIn_0_bits_uop_sqIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _storeAddrInSameCycleVec_1_T_4 = _storeAddrInSameCycleVec_1_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_1_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_1_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_1_T_12 = {_storeAddrInSameCycleVec_1_T_11,_storeAddrInSameCycleVec_1_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_1 = |_storeAddrInSameCycleVec_1_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_0_T_8 = {blockSqIdx_0_flag,blockSqIdx_0_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_0_T_10 = _storeAddrInSameCycleVec_0_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_0_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_0_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_0_T_4 = _storeAddrInSameCycleVec_0_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_0_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_0_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_0_T_12 = {_storeAddrInSameCycleVec_0_T_11,_storeAddrInSameCycleVec_0_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_0 = |_storeAddrInSameCycleVec_0_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_3_T_8 = {blockSqIdx_3_flag,blockSqIdx_3_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_3_T_10 = _storeAddrInSameCycleVec_3_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_3_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_3_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_3_T_4 = _storeAddrInSameCycleVec_3_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_3_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_3_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_3_T_12 = {_storeAddrInSameCycleVec_3_T_11,_storeAddrInSameCycleVec_3_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_3 = |_storeAddrInSameCycleVec_3_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_2_T_8 = {blockSqIdx_2_flag,blockSqIdx_2_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_2_T_10 = _storeAddrInSameCycleVec_2_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_2_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_2_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_2_T_4 = _storeAddrInSameCycleVec_2_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_2_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_2_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_2_T_12 = {_storeAddrInSameCycleVec_2_T_11,_storeAddrInSameCycleVec_2_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_2 = |_storeAddrInSameCycleVec_2_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_5_T_8 = {blockSqIdx_5_flag,blockSqIdx_5_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_5_T_10 = _storeAddrInSameCycleVec_5_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_5_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_5_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_5_T_4 = _storeAddrInSameCycleVec_5_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_5_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_5_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_5_T_12 = {_storeAddrInSameCycleVec_5_T_11,_storeAddrInSameCycleVec_5_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_5 = |_storeAddrInSameCycleVec_5_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_4_T_8 = {blockSqIdx_4_flag,blockSqIdx_4_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_4_T_10 = _storeAddrInSameCycleVec_4_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_4_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_4_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_4_T_4 = _storeAddrInSameCycleVec_4_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_4_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_4_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_4_T_12 = {_storeAddrInSameCycleVec_4_T_11,_storeAddrInSameCycleVec_4_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_4 = |_storeAddrInSameCycleVec_4_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_7_T_8 = {blockSqIdx_7_flag,blockSqIdx_7_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_7_T_10 = _storeAddrInSameCycleVec_7_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_7_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_7_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_7_T_4 = _storeAddrInSameCycleVec_7_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_7_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_7_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_7_T_12 = {_storeAddrInSameCycleVec_7_T_11,_storeAddrInSameCycleVec_7_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_7 = |_storeAddrInSameCycleVec_7_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [4:0] _storeAddrInSameCycleVec_6_T_8 = {blockSqIdx_6_flag,blockSqIdx_6_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _storeAddrInSameCycleVec_6_T_10 = _storeAddrInSameCycleVec_6_T_8 == _storeAddrInSameCycleVec_1_T_9; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_6_T_11 = _storeAddrInSameCycleVec_1_T_7 & _storeAddrInSameCycleVec_6_T_10; // @[LoadQueueReplay.scala 292:36]
  wire  _storeAddrInSameCycleVec_6_T_4 = _storeAddrInSameCycleVec_6_T_8 == _storeAddrInSameCycleVec_1_T_3; // @[CircularQueuePtr.scala 61:47]
  wire  _storeAddrInSameCycleVec_6_T_5 = _storeAddrInSameCycleVec_1_T_1 & _storeAddrInSameCycleVec_6_T_4; // @[LoadQueueReplay.scala 292:36]
  wire [1:0] _storeAddrInSameCycleVec_6_T_12 = {_storeAddrInSameCycleVec_6_T_11,_storeAddrInSameCycleVec_6_T_5}; // @[LoadQueueReplay.scala 294:9]
  wire  storeAddrInSameCycleVec_6 = |_storeAddrInSameCycleVec_6_T_12; // @[LoadQueueReplay.scala 294:16]
  wire [7:0] _storeAddrValidVec_T_1 = {storeAddrInSameCycleVec_7,storeAddrInSameCycleVec_6,storeAddrInSameCycleVec_5,
    storeAddrInSameCycleVec_4,storeAddrInSameCycleVec_3,storeAddrInSameCycleVec_2,storeAddrInSameCycleVec_1,
    storeAddrInSameCycleVec_0}; // @[LoadQueueReplay.scala 276:76]
  wire [7:0] storeAddrValidVec = _storeAddrValidVec_T | _storeAddrValidVec_T_1; // @[LoadQueueReplay.scala 276:50]
  wire  dataNotBlockVec_1_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_1_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_1_compare = io_stDataReadySqPtr_value < blockSqIdx_1_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_1_T = dataNotBlockVec_1_differentFlag ^ dataNotBlockVec_1_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_25 = 4'h1 == blockSqIdx_1_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_26 = 4'h2 == blockSqIdx_1_value ? io_stDataReadyVec_2 : _GEN_25; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_27 = 4'h3 == blockSqIdx_1_value ? io_stDataReadyVec_3 : _GEN_26; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_28 = 4'h4 == blockSqIdx_1_value ? io_stDataReadyVec_4 : _GEN_27; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_29 = 4'h5 == blockSqIdx_1_value ? io_stDataReadyVec_5 : _GEN_28; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_30 = 4'h6 == blockSqIdx_1_value ? io_stDataReadyVec_6 : _GEN_29; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_31 = 4'h7 == blockSqIdx_1_value ? io_stDataReadyVec_7 : _GEN_30; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_32 = 4'h8 == blockSqIdx_1_value ? io_stDataReadyVec_8 : _GEN_31; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_33 = 4'h9 == blockSqIdx_1_value ? io_stDataReadyVec_9 : _GEN_32; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_34 = 4'ha == blockSqIdx_1_value ? io_stDataReadyVec_10 : _GEN_33; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_35 = 4'hb == blockSqIdx_1_value ? io_stDataReadyVec_11 : _GEN_34; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_1 = ~_dataNotBlockVec_1_T | _GEN_35 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_0_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_0_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_0_compare = io_stDataReadySqPtr_value < blockSqIdx_0_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_0_T = dataNotBlockVec_0_differentFlag ^ dataNotBlockVec_0_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_1 = 4'h1 == blockSqIdx_0_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_2 = 4'h2 == blockSqIdx_0_value ? io_stDataReadyVec_2 : _GEN_1; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_3 = 4'h3 == blockSqIdx_0_value ? io_stDataReadyVec_3 : _GEN_2; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_4 = 4'h4 == blockSqIdx_0_value ? io_stDataReadyVec_4 : _GEN_3; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_5 = 4'h5 == blockSqIdx_0_value ? io_stDataReadyVec_5 : _GEN_4; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_6 = 4'h6 == blockSqIdx_0_value ? io_stDataReadyVec_6 : _GEN_5; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_7 = 4'h7 == blockSqIdx_0_value ? io_stDataReadyVec_7 : _GEN_6; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_8 = 4'h8 == blockSqIdx_0_value ? io_stDataReadyVec_8 : _GEN_7; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_9 = 4'h9 == blockSqIdx_0_value ? io_stDataReadyVec_9 : _GEN_8; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_10 = 4'ha == blockSqIdx_0_value ? io_stDataReadyVec_10 : _GEN_9; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_11 = 4'hb == blockSqIdx_0_value ? io_stDataReadyVec_11 : _GEN_10; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_0 = ~_dataNotBlockVec_0_T | _GEN_11 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_3_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_3_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_3_compare = io_stDataReadySqPtr_value < blockSqIdx_3_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_3_T = dataNotBlockVec_3_differentFlag ^ dataNotBlockVec_3_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_73 = 4'h1 == blockSqIdx_3_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_74 = 4'h2 == blockSqIdx_3_value ? io_stDataReadyVec_2 : _GEN_73; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_75 = 4'h3 == blockSqIdx_3_value ? io_stDataReadyVec_3 : _GEN_74; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_76 = 4'h4 == blockSqIdx_3_value ? io_stDataReadyVec_4 : _GEN_75; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_77 = 4'h5 == blockSqIdx_3_value ? io_stDataReadyVec_5 : _GEN_76; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_78 = 4'h6 == blockSqIdx_3_value ? io_stDataReadyVec_6 : _GEN_77; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_79 = 4'h7 == blockSqIdx_3_value ? io_stDataReadyVec_7 : _GEN_78; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_80 = 4'h8 == blockSqIdx_3_value ? io_stDataReadyVec_8 : _GEN_79; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_81 = 4'h9 == blockSqIdx_3_value ? io_stDataReadyVec_9 : _GEN_80; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_82 = 4'ha == blockSqIdx_3_value ? io_stDataReadyVec_10 : _GEN_81; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_83 = 4'hb == blockSqIdx_3_value ? io_stDataReadyVec_11 : _GEN_82; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_3 = ~_dataNotBlockVec_3_T | _GEN_83 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_2_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_2_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_2_compare = io_stDataReadySqPtr_value < blockSqIdx_2_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_2_T = dataNotBlockVec_2_differentFlag ^ dataNotBlockVec_2_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_49 = 4'h1 == blockSqIdx_2_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_50 = 4'h2 == blockSqIdx_2_value ? io_stDataReadyVec_2 : _GEN_49; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_51 = 4'h3 == blockSqIdx_2_value ? io_stDataReadyVec_3 : _GEN_50; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_52 = 4'h4 == blockSqIdx_2_value ? io_stDataReadyVec_4 : _GEN_51; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_53 = 4'h5 == blockSqIdx_2_value ? io_stDataReadyVec_5 : _GEN_52; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_54 = 4'h6 == blockSqIdx_2_value ? io_stDataReadyVec_6 : _GEN_53; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_55 = 4'h7 == blockSqIdx_2_value ? io_stDataReadyVec_7 : _GEN_54; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_56 = 4'h8 == blockSqIdx_2_value ? io_stDataReadyVec_8 : _GEN_55; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_57 = 4'h9 == blockSqIdx_2_value ? io_stDataReadyVec_9 : _GEN_56; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_58 = 4'ha == blockSqIdx_2_value ? io_stDataReadyVec_10 : _GEN_57; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_59 = 4'hb == blockSqIdx_2_value ? io_stDataReadyVec_11 : _GEN_58; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_2 = ~_dataNotBlockVec_2_T | _GEN_59 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_5_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_5_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_5_compare = io_stDataReadySqPtr_value < blockSqIdx_5_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_5_T = dataNotBlockVec_5_differentFlag ^ dataNotBlockVec_5_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_121 = 4'h1 == blockSqIdx_5_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_122 = 4'h2 == blockSqIdx_5_value ? io_stDataReadyVec_2 : _GEN_121; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_123 = 4'h3 == blockSqIdx_5_value ? io_stDataReadyVec_3 : _GEN_122; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_124 = 4'h4 == blockSqIdx_5_value ? io_stDataReadyVec_4 : _GEN_123; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_125 = 4'h5 == blockSqIdx_5_value ? io_stDataReadyVec_5 : _GEN_124; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_126 = 4'h6 == blockSqIdx_5_value ? io_stDataReadyVec_6 : _GEN_125; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_127 = 4'h7 == blockSqIdx_5_value ? io_stDataReadyVec_7 : _GEN_126; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_128 = 4'h8 == blockSqIdx_5_value ? io_stDataReadyVec_8 : _GEN_127; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_129 = 4'h9 == blockSqIdx_5_value ? io_stDataReadyVec_9 : _GEN_128; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_130 = 4'ha == blockSqIdx_5_value ? io_stDataReadyVec_10 : _GEN_129; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_131 = 4'hb == blockSqIdx_5_value ? io_stDataReadyVec_11 : _GEN_130; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_5 = ~_dataNotBlockVec_5_T | _GEN_131 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_4_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_4_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_4_compare = io_stDataReadySqPtr_value < blockSqIdx_4_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_4_T = dataNotBlockVec_4_differentFlag ^ dataNotBlockVec_4_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_97 = 4'h1 == blockSqIdx_4_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_98 = 4'h2 == blockSqIdx_4_value ? io_stDataReadyVec_2 : _GEN_97; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_99 = 4'h3 == blockSqIdx_4_value ? io_stDataReadyVec_3 : _GEN_98; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_100 = 4'h4 == blockSqIdx_4_value ? io_stDataReadyVec_4 : _GEN_99; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_101 = 4'h5 == blockSqIdx_4_value ? io_stDataReadyVec_5 : _GEN_100; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_102 = 4'h6 == blockSqIdx_4_value ? io_stDataReadyVec_6 : _GEN_101; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_103 = 4'h7 == blockSqIdx_4_value ? io_stDataReadyVec_7 : _GEN_102; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_104 = 4'h8 == blockSqIdx_4_value ? io_stDataReadyVec_8 : _GEN_103; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_105 = 4'h9 == blockSqIdx_4_value ? io_stDataReadyVec_9 : _GEN_104; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_106 = 4'ha == blockSqIdx_4_value ? io_stDataReadyVec_10 : _GEN_105; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_107 = 4'hb == blockSqIdx_4_value ? io_stDataReadyVec_11 : _GEN_106; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_4 = ~_dataNotBlockVec_4_T | _GEN_107 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_7_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_7_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_7_compare = io_stDataReadySqPtr_value < blockSqIdx_7_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_7_T = dataNotBlockVec_7_differentFlag ^ dataNotBlockVec_7_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_169 = 4'h1 == blockSqIdx_7_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_170 = 4'h2 == blockSqIdx_7_value ? io_stDataReadyVec_2 : _GEN_169; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_171 = 4'h3 == blockSqIdx_7_value ? io_stDataReadyVec_3 : _GEN_170; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_172 = 4'h4 == blockSqIdx_7_value ? io_stDataReadyVec_4 : _GEN_171; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_173 = 4'h5 == blockSqIdx_7_value ? io_stDataReadyVec_5 : _GEN_172; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_174 = 4'h6 == blockSqIdx_7_value ? io_stDataReadyVec_6 : _GEN_173; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_175 = 4'h7 == blockSqIdx_7_value ? io_stDataReadyVec_7 : _GEN_174; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_176 = 4'h8 == blockSqIdx_7_value ? io_stDataReadyVec_8 : _GEN_175; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_177 = 4'h9 == blockSqIdx_7_value ? io_stDataReadyVec_9 : _GEN_176; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_178 = 4'ha == blockSqIdx_7_value ? io_stDataReadyVec_10 : _GEN_177; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_179 = 4'hb == blockSqIdx_7_value ? io_stDataReadyVec_11 : _GEN_178; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_7 = ~_dataNotBlockVec_7_T | _GEN_179 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire  dataNotBlockVec_6_differentFlag = io_stDataReadySqPtr_flag ^ blockSqIdx_6_flag; // @[CircularQueuePtr.scala 72:35]
  wire  dataNotBlockVec_6_compare = io_stDataReadySqPtr_value < blockSqIdx_6_value; // @[CircularQueuePtr.scala 73:30]
  wire  _dataNotBlockVec_6_T = dataNotBlockVec_6_differentFlag ^ dataNotBlockVec_6_compare; // @[CircularQueuePtr.scala 74:19]
  wire  _GEN_145 = 4'h1 == blockSqIdx_6_value ? io_stDataReadyVec_1 : io_stDataReadyVec_0; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_146 = 4'h2 == blockSqIdx_6_value ? io_stDataReadyVec_2 : _GEN_145; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_147 = 4'h3 == blockSqIdx_6_value ? io_stDataReadyVec_3 : _GEN_146; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_148 = 4'h4 == blockSqIdx_6_value ? io_stDataReadyVec_4 : _GEN_147; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_149 = 4'h5 == blockSqIdx_6_value ? io_stDataReadyVec_5 : _GEN_148; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_150 = 4'h6 == blockSqIdx_6_value ? io_stDataReadyVec_6 : _GEN_149; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_151 = 4'h7 == blockSqIdx_6_value ? io_stDataReadyVec_7 : _GEN_150; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_152 = 4'h8 == blockSqIdx_6_value ? io_stDataReadyVec_8 : _GEN_151; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_153 = 4'h9 == blockSqIdx_6_value ? io_stDataReadyVec_9 : _GEN_152; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_154 = 4'ha == blockSqIdx_6_value ? io_stDataReadyVec_10 : _GEN_153; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  _GEN_155 = 4'hb == blockSqIdx_6_value ? io_stDataReadyVec_11 : _GEN_154; // @[LoadQueueReplay.scala 286:{73,73}]
  wire  dataNotBlockVec_6 = ~_dataNotBlockVec_6_T | _GEN_155 | io_sqEmpty; // @[LoadQueueReplay.scala 286:112]
  wire [7:0] _storeDataValidVec_T = {dataNotBlockVec_7,dataNotBlockVec_6,dataNotBlockVec_5,dataNotBlockVec_4,
    dataNotBlockVec_3,dataNotBlockVec_2,dataNotBlockVec_1,dataNotBlockVec_0}; // @[LoadQueueReplay.scala 277:43]
  wire [4:0] _storeDataInSameCycleVec_1_T_5 = {io_storeDataIn_1_bits_uop_sqIdx_flag,
    io_storeDataIn_1_bits_uop_sqIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _storeDataInSameCycleVec_1_T_6 = _storeAddrInSameCycleVec_1_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_1_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_1_T_6; // @[LoadQueueReplay.scala 298:31]
  wire [4:0] _storeDataInSameCycleVec_1_T_1 = {io_storeDataIn_0_bits_uop_sqIdx_flag,
    io_storeDataIn_0_bits_uop_sqIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _storeDataInSameCycleVec_1_T_2 = _storeAddrInSameCycleVec_1_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_1_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_1_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_1_T_8 = {_storeDataInSameCycleVec_1_T_7,_storeDataInSameCycleVec_1_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_1 = |_storeDataInSameCycleVec_1_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_0_T_6 = _storeAddrInSameCycleVec_0_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_0_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_0_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_0_T_2 = _storeAddrInSameCycleVec_0_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_0_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_0_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_0_T_8 = {_storeDataInSameCycleVec_0_T_7,_storeDataInSameCycleVec_0_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_0 = |_storeDataInSameCycleVec_0_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_3_T_6 = _storeAddrInSameCycleVec_3_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_3_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_3_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_3_T_2 = _storeAddrInSameCycleVec_3_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_3_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_3_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_3_T_8 = {_storeDataInSameCycleVec_3_T_7,_storeDataInSameCycleVec_3_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_3 = |_storeDataInSameCycleVec_3_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_2_T_6 = _storeAddrInSameCycleVec_2_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_2_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_2_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_2_T_2 = _storeAddrInSameCycleVec_2_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_2_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_2_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_2_T_8 = {_storeDataInSameCycleVec_2_T_7,_storeDataInSameCycleVec_2_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_2 = |_storeDataInSameCycleVec_2_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_5_T_6 = _storeAddrInSameCycleVec_5_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_5_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_5_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_5_T_2 = _storeAddrInSameCycleVec_5_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_5_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_5_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_5_T_8 = {_storeDataInSameCycleVec_5_T_7,_storeDataInSameCycleVec_5_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_5 = |_storeDataInSameCycleVec_5_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_4_T_6 = _storeAddrInSameCycleVec_4_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_4_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_4_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_4_T_2 = _storeAddrInSameCycleVec_4_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_4_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_4_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_4_T_8 = {_storeDataInSameCycleVec_4_T_7,_storeDataInSameCycleVec_4_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_4 = |_storeDataInSameCycleVec_4_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_7_T_6 = _storeAddrInSameCycleVec_7_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_7_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_7_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_7_T_2 = _storeAddrInSameCycleVec_7_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_7_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_7_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_7_T_8 = {_storeDataInSameCycleVec_7_T_7,_storeDataInSameCycleVec_7_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_7 = |_storeDataInSameCycleVec_7_T_8; // @[LoadQueueReplay.scala 300:16]
  wire  _storeDataInSameCycleVec_6_T_6 = _storeAddrInSameCycleVec_6_T_8 == _storeDataInSameCycleVec_1_T_5; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_6_T_7 = io_storeDataIn_1_valid & _storeDataInSameCycleVec_6_T_6; // @[LoadQueueReplay.scala 298:31]
  wire  _storeDataInSameCycleVec_6_T_2 = _storeAddrInSameCycleVec_6_T_8 == _storeDataInSameCycleVec_1_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _storeDataInSameCycleVec_6_T_3 = io_storeDataIn_0_valid & _storeDataInSameCycleVec_6_T_2; // @[LoadQueueReplay.scala 298:31]
  wire [1:0] _storeDataInSameCycleVec_6_T_8 = {_storeDataInSameCycleVec_6_T_7,_storeDataInSameCycleVec_6_T_3}; // @[LoadQueueReplay.scala 300:9]
  wire  storeDataInSameCycleVec_6 = |_storeDataInSameCycleVec_6_T_8; // @[LoadQueueReplay.scala 300:16]
  wire [7:0] _storeDataValidVec_T_1 = {storeDataInSameCycleVec_7,storeDataInSameCycleVec_6,storeDataInSameCycleVec_5,
    storeDataInSameCycleVec_4,storeDataInSameCycleVec_3,storeDataInSameCycleVec_2,storeDataInSameCycleVec_1,
    storeDataInSameCycleVec_0}; // @[LoadQueueReplay.scala 277:76]
  wire [7:0] storeDataValidVec = _storeDataValidVec_T | _storeDataValidVec_T_1; // @[LoadQueueReplay.scala 277:50]
  wire  stAddrDeqVec_0 = allocated_0 & storeAddrValidVec[0]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_1 = allocated_1 & storeAddrValidVec[1]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_2 = allocated_2 & storeAddrValidVec[2]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_3 = allocated_3 & storeAddrValidVec[3]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_4 = allocated_4 & storeAddrValidVec[4]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_5 = allocated_5 & storeAddrValidVec[5]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_6 = allocated_6 & storeAddrValidVec[6]; // @[LoadQueueReplay.scala 307:37]
  wire  stAddrDeqVec_7 = allocated_7 & storeAddrValidVec[7]; // @[LoadQueueReplay.scala 307:37]
  wire  stDataDeqVec_0 = allocated_0 & storeDataValidVec[0]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_1 = allocated_1 & storeDataValidVec[1]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_2 = allocated_2 & storeDataValidVec[2]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_3 = allocated_3 & storeDataValidVec[3]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_4 = allocated_4 & storeDataValidVec[4]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_5 = allocated_5 & storeDataValidVec[5]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_6 = allocated_6 & storeDataValidVec[6]; // @[LoadQueueReplay.scala 313:37]
  wire  stDataDeqVec_7 = allocated_7 & storeDataValidVec[7]; // @[LoadQueueReplay.scala 313:37]
  wire  _blocking_0_T = stAddrDeqVec_0 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_192 = cause_0[0] ? _blocking_0_T : blocking_0; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_0_T_2 = creditUpdate_0 == 7'h0 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_193 = cause_0[1] ? _blocking_0_T_2 : _GEN_192; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_0_T_3 = stDataDeqVec_0 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_194 = cause_0[2] ? _blocking_0_T_3 : _GEN_193; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_0_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_0 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_195 = trueCacheMissReplay_0 ? _blocking_0_T_6 : _GEN_194; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_0_differentFlag = uop_0_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_0_compare = uop_0_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_0_T_8 = blocking_0_differentFlag ^ blocking_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_0_T_11 = ~io_rarFull | ~_blocking_0_T_8 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_196 = cause_0[7] ? _blocking_0_T_11 : _GEN_195; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_0_differentFlag_1 = uop_0_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_0_compare_1 = uop_0_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_0_T_13 = blocking_0_differentFlag_1 ^ blocking_0_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_0_T_16 = ~io_rawFull | ~_blocking_0_T_13 ? 1'h0 : blocking_0; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_197 = cause_0[8] ? _blocking_0_T_16 : _GEN_196; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_1_T = stAddrDeqVec_1 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_198 = cause_1[0] ? _blocking_1_T : blocking_1; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_1_T_2 = creditUpdate_1 == 7'h0 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_199 = cause_1[1] ? _blocking_1_T_2 : _GEN_198; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_1_T_3 = stDataDeqVec_1 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_200 = cause_1[2] ? _blocking_1_T_3 : _GEN_199; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_1_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_1 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_201 = trueCacheMissReplay_1 ? _blocking_1_T_6 : _GEN_200; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_1_differentFlag = uop_1_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_1_compare = uop_1_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_1_T_8 = blocking_1_differentFlag ^ blocking_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_1_T_11 = ~io_rarFull | ~_blocking_1_T_8 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_202 = cause_1[7] ? _blocking_1_T_11 : _GEN_201; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_1_differentFlag_1 = uop_1_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_1_compare_1 = uop_1_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_1_T_13 = blocking_1_differentFlag_1 ^ blocking_1_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_1_T_16 = ~io_rawFull | ~_blocking_1_T_13 ? 1'h0 : blocking_1; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_203 = cause_1[8] ? _blocking_1_T_16 : _GEN_202; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_2_T = stAddrDeqVec_2 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_204 = cause_2[0] ? _blocking_2_T : blocking_2; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_2_T_2 = creditUpdate_2 == 7'h0 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_205 = cause_2[1] ? _blocking_2_T_2 : _GEN_204; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_2_T_3 = stDataDeqVec_2 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_206 = cause_2[2] ? _blocking_2_T_3 : _GEN_205; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_2_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_2 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_207 = trueCacheMissReplay_2 ? _blocking_2_T_6 : _GEN_206; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_2_differentFlag = uop_2_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_2_compare = uop_2_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_2_T_8 = blocking_2_differentFlag ^ blocking_2_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_2_T_11 = ~io_rarFull | ~_blocking_2_T_8 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_208 = cause_2[7] ? _blocking_2_T_11 : _GEN_207; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_2_differentFlag_1 = uop_2_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_2_compare_1 = uop_2_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_2_T_13 = blocking_2_differentFlag_1 ^ blocking_2_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_2_T_16 = ~io_rawFull | ~_blocking_2_T_13 ? 1'h0 : blocking_2; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_209 = cause_2[8] ? _blocking_2_T_16 : _GEN_208; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_3_T = stAddrDeqVec_3 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_210 = cause_3[0] ? _blocking_3_T : blocking_3; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_3_T_2 = creditUpdate_3 == 7'h0 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_211 = cause_3[1] ? _blocking_3_T_2 : _GEN_210; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_3_T_3 = stDataDeqVec_3 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_212 = cause_3[2] ? _blocking_3_T_3 : _GEN_211; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_3_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_3 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_213 = trueCacheMissReplay_3 ? _blocking_3_T_6 : _GEN_212; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_3_differentFlag = uop_3_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_3_compare = uop_3_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_3_T_8 = blocking_3_differentFlag ^ blocking_3_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_3_T_11 = ~io_rarFull | ~_blocking_3_T_8 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_214 = cause_3[7] ? _blocking_3_T_11 : _GEN_213; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_3_differentFlag_1 = uop_3_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_3_compare_1 = uop_3_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_3_T_13 = blocking_3_differentFlag_1 ^ blocking_3_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_3_T_16 = ~io_rawFull | ~_blocking_3_T_13 ? 1'h0 : blocking_3; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_215 = cause_3[8] ? _blocking_3_T_16 : _GEN_214; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_4_T = stAddrDeqVec_4 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_216 = cause_4[0] ? _blocking_4_T : blocking_4; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_4_T_2 = creditUpdate_4 == 7'h0 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_217 = cause_4[1] ? _blocking_4_T_2 : _GEN_216; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_4_T_3 = stDataDeqVec_4 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_218 = cause_4[2] ? _blocking_4_T_3 : _GEN_217; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_4_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_4 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_219 = trueCacheMissReplay_4 ? _blocking_4_T_6 : _GEN_218; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_4_differentFlag = uop_4_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_4_compare = uop_4_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_4_T_8 = blocking_4_differentFlag ^ blocking_4_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_4_T_11 = ~io_rarFull | ~_blocking_4_T_8 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_220 = cause_4[7] ? _blocking_4_T_11 : _GEN_219; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_4_differentFlag_1 = uop_4_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_4_compare_1 = uop_4_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_4_T_13 = blocking_4_differentFlag_1 ^ blocking_4_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_4_T_16 = ~io_rawFull | ~_blocking_4_T_13 ? 1'h0 : blocking_4; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_221 = cause_4[8] ? _blocking_4_T_16 : _GEN_220; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_5_T = stAddrDeqVec_5 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_222 = cause_5[0] ? _blocking_5_T : blocking_5; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_5_T_2 = creditUpdate_5 == 7'h0 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_223 = cause_5[1] ? _blocking_5_T_2 : _GEN_222; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_5_T_3 = stDataDeqVec_5 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_224 = cause_5[2] ? _blocking_5_T_3 : _GEN_223; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_5_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_5 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_225 = trueCacheMissReplay_5 ? _blocking_5_T_6 : _GEN_224; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_5_differentFlag = uop_5_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_5_compare = uop_5_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_5_T_8 = blocking_5_differentFlag ^ blocking_5_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_5_T_11 = ~io_rarFull | ~_blocking_5_T_8 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_226 = cause_5[7] ? _blocking_5_T_11 : _GEN_225; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_5_differentFlag_1 = uop_5_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_5_compare_1 = uop_5_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_5_T_13 = blocking_5_differentFlag_1 ^ blocking_5_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_5_T_16 = ~io_rawFull | ~_blocking_5_T_13 ? 1'h0 : blocking_5; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_227 = cause_5[8] ? _blocking_5_T_16 : _GEN_226; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_6_T = stAddrDeqVec_6 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_228 = cause_6[0] ? _blocking_6_T : blocking_6; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_6_T_2 = creditUpdate_6 == 7'h0 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_229 = cause_6[1] ? _blocking_6_T_2 : _GEN_228; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_6_T_3 = stDataDeqVec_6 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_230 = cause_6[2] ? _blocking_6_T_3 : _GEN_229; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_6_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_6 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_231 = trueCacheMissReplay_6 ? _blocking_6_T_6 : _GEN_230; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_6_differentFlag = uop_6_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_6_compare = uop_6_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_6_T_8 = blocking_6_differentFlag ^ blocking_6_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_6_T_11 = ~io_rarFull | ~_blocking_6_T_8 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_232 = cause_6[7] ? _blocking_6_T_11 : _GEN_231; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_6_differentFlag_1 = uop_6_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_6_compare_1 = uop_6_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_6_T_13 = blocking_6_differentFlag_1 ^ blocking_6_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_6_T_16 = ~io_rawFull | ~_blocking_6_T_13 ? 1'h0 : blocking_6; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_233 = cause_6[8] ? _blocking_6_T_16 : _GEN_232; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _blocking_7_T = stAddrDeqVec_7 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 320:25]
  wire  _GEN_234 = cause_7[0] ? _blocking_7_T : blocking_7; // @[LoadQueueReplay.scala 319:44 320:19 212:25]
  wire  _blocking_7_T_2 = creditUpdate_7 == 7'h0 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 324:25]
  wire  _GEN_235 = cause_7[1] ? _blocking_7_T_2 : _GEN_234; // @[LoadQueueReplay.scala 323:44 324:19]
  wire  _blocking_7_T_3 = stDataDeqVec_7 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 328:25]
  wire  _GEN_236 = cause_7[2] ? _blocking_7_T_3 : _GEN_235; // @[LoadQueueReplay.scala 327:44 328:19]
  wire  _blocking_7_T_6 = io_tl_d_channel_valid & io_tl_d_channel_mshrid == missMSHRId_7 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 332:25]
  wire  _GEN_237 = trueCacheMissReplay_7 ? _blocking_7_T_6 : _GEN_236; // @[LoadQueueReplay.scala 331:44 332:19]
  wire  blocking_7_differentFlag = uop_7_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_7_compare = uop_7_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_7_T_8 = blocking_7_differentFlag ^ blocking_7_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_7_T_11 = ~io_rarFull | ~_blocking_7_T_8 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 336:25]
  wire  _GEN_238 = cause_7[7] ? _blocking_7_T_11 : _GEN_237; // @[LoadQueueReplay.scala 335:45 336:19]
  wire  blocking_7_differentFlag_1 = uop_7_sqIdx_flag ^ io_stAddrReadySqPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  blocking_7_compare_1 = uop_7_sqIdx_value > io_stAddrReadySqPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _blocking_7_T_13 = blocking_7_differentFlag_1 ^ blocking_7_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _blocking_7_T_16 = ~io_rawFull | ~_blocking_7_T_13 ? 1'h0 : blocking_7; // @[LoadQueueReplay.scala 340:25]
  wire  _GEN_239 = cause_7[8] ? _blocking_7_T_16 : _GEN_238; // @[LoadQueueReplay.scala 339:45 340:19]
  wire  _s0_loadEnqFireMask_T = io_enq_0_ready & io_enq_0_valid; // @[Decoupled.scala 50:35]
  wire  _s0_loadEnqFireMask_T_2 = _s0_loadEnqFireMask_T & _newEnqueue_T; // @[LoadQueueReplay.scala 365:51]
  wire  _s0_loadEnqFireMask_T_3 = io_enq_1_ready & io_enq_1_valid; // @[Decoupled.scala 50:35]
  wire  _s0_loadEnqFireMask_T_4 = ~io_enq_1_bits_isLoadReplay; // @[LoadQueueReplay.scala 365:54]
  wire  _s0_loadEnqFireMask_T_5 = _s0_loadEnqFireMask_T_3 & ~io_enq_1_bits_isLoadReplay; // @[LoadQueueReplay.scala 365:51]
  wire [7:0] enqIndexOH_0 = 8'h1 << enqIndex; // @[OneHot.scala 57:35]
  wire [7:0] s0_loadEnqFireMask_0 = _s0_loadEnqFireMask_T & _newEnqueue_T ? enqIndexOH_0 : 8'h0; // @[LoadQueueReplay.scala 365:104]
  wire [7:0] enqIndexOH_1 = 8'h1 << enqIndex_1; // @[OneHot.scala 57:35]
  wire [7:0] s0_loadEnqFireMask_1 = _s0_loadEnqFireMask_T_3 & ~io_enq_1_bits_isLoadReplay ? enqIndexOH_1 : 8'h0; // @[LoadQueueReplay.scala 365:104]
  wire [1:0] s0_remLoadEnqFireVec_lo = {s0_loadEnqFireMask_0[2],s0_loadEnqFireMask_0[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_hi = {s0_loadEnqFireMask_0[6],s0_loadEnqFireMask_0[4]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_lo_1 = {s0_loadEnqFireMask_0[3],s0_loadEnqFireMask_0[1]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_hi_1 = {s0_loadEnqFireMask_0[7],s0_loadEnqFireMask_0[5]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_lo_2 = {s0_loadEnqFireMask_1[2],s0_loadEnqFireMask_1[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_hi_2 = {s0_loadEnqFireMask_1[6],s0_loadEnqFireMask_1[4]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_lo_3 = {s0_loadEnqFireMask_1[3],s0_loadEnqFireMask_1[1]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remLoadEnqFireVec_hi_3 = {s0_loadEnqFireMask_1[7],s0_loadEnqFireMask_1[5]}; // @[LoadQueueReplay.scala 347:113]
  wire [7:0] s0_loadFreeSelMask = {needCancel_7,needCancel_6,needCancel_5,needCancel_4,needCancel_3,needCancel_2,
    needCancel_1,needCancel_0}; // @[LoadQueueReplay.scala 370:39]
  wire [1:0] s0_remFreeSelVec_lo = {s0_loadFreeSelMask[2],s0_loadFreeSelMask[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remFreeSelVec_hi = {s0_loadFreeSelMask[6],s0_loadFreeSelMask[4]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remFreeSelVec_lo_1 = {s0_loadFreeSelMask[3],s0_loadFreeSelMask[1]}; // @[LoadQueueReplay.scala 347:113]
  wire [1:0] s0_remFreeSelVec_hi_1 = {s0_loadFreeSelMask[7],s0_loadFreeSelMask[5]}; // @[LoadQueueReplay.scala 347:113]
  wire  _s0_loadHintSelMask_T = ~dataInLastBeatReg_0; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_1 = ~dataInLastBeatReg_1; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_2 = ~dataInLastBeatReg_2; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_3 = ~dataInLastBeatReg_3; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_4 = ~dataInLastBeatReg_4; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_5 = ~dataInLastBeatReg_5; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_6 = ~dataInLastBeatReg_6; // @[LoadQueueReplay.scala 379:80]
  wire  _s0_loadHintSelMask_T_7 = ~dataInLastBeatReg_7; // @[LoadQueueReplay.scala 379:80]
  wire [7:0] _s0_loadHintSelMask_T_8 = {_s0_loadHintSelMask_T_7,_s0_loadHintSelMask_T_6,_s0_loadHintSelMask_T_5,
    _s0_loadHintSelMask_T_4,_s0_loadHintSelMask_T_3,_s0_loadHintSelMask_T_2,_s0_loadHintSelMask_T_1,
    _s0_loadHintSelMask_T}; // @[LoadQueueReplay.scala 379:85]
  wire [7:0] s0_loadHintSelMask = s0_loadHintWakeMask & _s0_loadHintSelMask_T_8; // @[LoadQueueReplay.scala 379:48]
  wire [3:0] s0_remLoadHintSelMask_0 = {s0_loadHintSelMask[6],s0_loadHintSelMask[4],s0_loadHintSelMask[2],
    s0_loadHintSelMask[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [3:0] s0_remLoadHintSelMask_1 = {s0_loadHintSelMask[7],s0_loadHintSelMask[5],s0_loadHintSelMask[3],
    s0_loadHintSelMask[1]}; // @[LoadQueueReplay.scala 347:113]
  wire  s0_remHintSelValidVec_0 = s0_remLoadHintSelMask_0[0] | s0_remLoadHintSelMask_0[1] | (s0_remLoadHintSelMask_0[2]
     | s0_remLoadHintSelMask_0[3]); // @[ParallelMux.scala 36:53]
  wire  s0_remHintSelValidVec_1 = s0_remLoadHintSelMask_1[0] | s0_remLoadHintSelMask_1[1] | (s0_remLoadHintSelMask_1[2]
     | s0_remLoadHintSelMask_1[3]); // @[ParallelMux.scala 36:53]
  wire  _GEN_240 = s0_loadHintWakeMask[0] ? 1'h0 : _GEN_197; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_242 = s0_loadHintWakeMask[1] ? 1'h0 : _GEN_203; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_244 = s0_loadHintWakeMask[2] ? 1'h0 : _GEN_209; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_246 = s0_loadHintWakeMask[3] ? 1'h0 : _GEN_215; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_248 = s0_loadHintWakeMask[4] ? 1'h0 : _GEN_221; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_250 = s0_loadHintWakeMask[5] ? 1'h0 : _GEN_227; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_252 = s0_loadHintWakeMask[6] ? 1'h0 : _GEN_233; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  _GEN_254 = s0_loadHintWakeMask[7] ? 1'h0 : _GEN_239; // @[LoadQueueReplay.scala 386:34 387:19]
  wire  s0_loadHigherPriorityReplaySelMask_blocked = selBlocked_0 | blocking_0; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority = trueCacheMissReplay_0 | cause_0[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_3 = _s0_loadHintWakeMask_T_1 & ~s0_loadHigherPriorityReplaySelMask_blocked
    ; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_6 = _s0_loadHintWakeMask_T_1 & ~s0_loadHigherPriorityReplaySelMask_blocked
     & s0_loadHigherPriorityReplaySelMask_hasHigherPriority & _s0_loadHintWakeMask_T_8; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_1 = selBlocked_1 | blocking_1; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_1 = trueCacheMissReplay_1 | cause_1[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_10 = _s0_loadHintWakeMask_T_11 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_1; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_13 = _s0_loadHintWakeMask_T_11 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_1 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_1 &
    _s0_loadHintWakeMask_T_18; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_2 = selBlocked_2 | blocking_2; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_2 = trueCacheMissReplay_2 | cause_2[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_17 = _s0_loadHintWakeMask_T_21 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_2; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_20 = _s0_loadHintWakeMask_T_21 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_2 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_2 &
    _s0_loadHintWakeMask_T_28; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_3 = selBlocked_3 | blocking_3; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_3 = trueCacheMissReplay_3 | cause_3[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_24 = _s0_loadHintWakeMask_T_31 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_3; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_27 = _s0_loadHintWakeMask_T_31 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_3 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_3 &
    _s0_loadHintWakeMask_T_38; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_4 = selBlocked_4 | blocking_4; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_4 = trueCacheMissReplay_4 | cause_4[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_31 = _s0_loadHintWakeMask_T_41 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_4; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_34 = _s0_loadHintWakeMask_T_41 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_4 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_4 &
    _s0_loadHintWakeMask_T_48; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_5 = selBlocked_5 | blocking_5; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_5 = trueCacheMissReplay_5 | cause_5[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_38 = _s0_loadHintWakeMask_T_51 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_5; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_41 = _s0_loadHintWakeMask_T_51 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_5 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_5 &
    _s0_loadHintWakeMask_T_58; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_6 = selBlocked_6 | blocking_6; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_6 = trueCacheMissReplay_6 | cause_6[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_45 = _s0_loadHintWakeMask_T_61 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_6; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_48 = _s0_loadHintWakeMask_T_61 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_6 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_6 &
    _s0_loadHintWakeMask_T_68; // @[LoadQueueReplay.scala 400:68]
  wire  s0_loadHigherPriorityReplaySelMask_blocked_7 = selBlocked_7 | blocking_7; // @[LoadQueueReplay.scala 398:33]
  wire  s0_loadHigherPriorityReplaySelMask_hasHigherPriority_7 = trueCacheMissReplay_7 | cause_7[2]; // @[LoadQueueReplay.scala 399:61]
  wire  _s0_loadHigherPriorityReplaySelMask_T_52 = _s0_loadHintWakeMask_T_71 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_7; // @[LoadQueueReplay.scala 400:35]
  wire  _s0_loadHigherPriorityReplaySelMask_T_55 = _s0_loadHintWakeMask_T_71 & ~
    s0_loadHigherPriorityReplaySelMask_blocked_7 & s0_loadHigherPriorityReplaySelMask_hasHigherPriority_7 &
    _s0_loadHintWakeMask_T_78; // @[LoadQueueReplay.scala 400:68]
  wire [7:0] s0_loadHigherPriorityReplaySelMask = {_s0_loadHigherPriorityReplaySelMask_T_55,
    _s0_loadHigherPriorityReplaySelMask_T_48,_s0_loadHigherPriorityReplaySelMask_T_41,
    _s0_loadHigherPriorityReplaySelMask_T_34,_s0_loadHigherPriorityReplaySelMask_T_27,
    _s0_loadHigherPriorityReplaySelMask_T_20,_s0_loadHigherPriorityReplaySelMask_T_13,
    _s0_loadHigherPriorityReplaySelMask_T_6}; // @[LoadQueueReplay.scala 401:7]
  wire [3:0] s0_remLoadHigherPriorityReplaySelMask_0 = {s0_loadHigherPriorityReplaySelMask[6],
    s0_loadHigherPriorityReplaySelMask[4],s0_loadHigherPriorityReplaySelMask[2],s0_loadHigherPriorityReplaySelMask[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [3:0] s0_remLoadHigherPriorityReplaySelMask_1 = {s0_loadHigherPriorityReplaySelMask[7],
    s0_loadHigherPriorityReplaySelMask[5],s0_loadHigherPriorityReplaySelMask[3],s0_loadHigherPriorityReplaySelMask[1]}; // @[LoadQueueReplay.scala 347:113]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority = ~trueCacheMissReplay_0 & ~cause_0[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_6 = _s0_loadHigherPriorityReplaySelMask_T_3 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority & _s0_loadHintWakeMask_T_8; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_1 = ~trueCacheMissReplay_1 & ~cause_1[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_13 = _s0_loadHigherPriorityReplaySelMask_T_10 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_1 & _s0_loadHintWakeMask_T_18; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_2 = ~trueCacheMissReplay_2 & ~cause_2[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_20 = _s0_loadHigherPriorityReplaySelMask_T_17 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_2 & _s0_loadHintWakeMask_T_28; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_3 = ~trueCacheMissReplay_3 & ~cause_3[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_27 = _s0_loadHigherPriorityReplaySelMask_T_24 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_3 & _s0_loadHintWakeMask_T_38; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_4 = ~trueCacheMissReplay_4 & ~cause_4[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_34 = _s0_loadHigherPriorityReplaySelMask_T_31 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_4 & _s0_loadHintWakeMask_T_48; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_5 = ~trueCacheMissReplay_5 & ~cause_5[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_41 = _s0_loadHigherPriorityReplaySelMask_T_38 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_5 & _s0_loadHintWakeMask_T_58; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_6 = ~trueCacheMissReplay_6 & ~cause_6[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_48 = _s0_loadHigherPriorityReplaySelMask_T_45 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_6 & _s0_loadHintWakeMask_T_68; // @[LoadQueueReplay.scala 406:67]
  wire  s0_loadLowerPriorityReplaySelMask_hasLowerPriority_7 = ~trueCacheMissReplay_7 & ~cause_7[2]; // @[LoadQueueReplay.scala 405:61]
  wire  _s0_loadLowerPriorityReplaySelMask_T_55 = _s0_loadHigherPriorityReplaySelMask_T_52 &
    s0_loadLowerPriorityReplaySelMask_hasLowerPriority_7 & _s0_loadHintWakeMask_T_78; // @[LoadQueueReplay.scala 406:67]
  wire [7:0] s0_loadLowerPriorityReplaySelMask = {_s0_loadLowerPriorityReplaySelMask_T_55,
    _s0_loadLowerPriorityReplaySelMask_T_48,_s0_loadLowerPriorityReplaySelMask_T_41,
    _s0_loadLowerPriorityReplaySelMask_T_34,_s0_loadLowerPriorityReplaySelMask_T_27,
    _s0_loadLowerPriorityReplaySelMask_T_20,_s0_loadLowerPriorityReplaySelMask_T_13,
    _s0_loadLowerPriorityReplaySelMask_T_6}; // @[LoadQueueReplay.scala 407:7]
  wire [3:0] s0_remLoadLowerPriorityReplaySelMask_0 = {s0_loadLowerPriorityReplaySelMask[6],
    s0_loadLowerPriorityReplaySelMask[4],s0_loadLowerPriorityReplaySelMask[2],s0_loadLowerPriorityReplaySelMask[0]}; // @[LoadQueueReplay.scala 347:113]
  wire [3:0] s0_remLoadLowerPriorityReplaySelMask_1 = {s0_loadLowerPriorityReplaySelMask[7],
    s0_loadLowerPriorityReplaySelMask[5],s0_loadLowerPriorityReplaySelMask[3],s0_loadLowerPriorityReplaySelMask[1]}; // @[LoadQueueReplay.scala 347:113]
  wire [7:0] _s0_loadNormalReplaySelMask_T = s0_loadLowerPriorityReplaySelMask | s0_loadHigherPriorityReplaySelMask; // @[LoadQueueReplay.scala 409:70]
  wire [7:0] s0_loadNormalReplaySelMask = _s0_loadNormalReplaySelMask_T | s0_loadHintSelMask; // @[LoadQueueReplay.scala 409:107]
  wire  _s0_remPriorityReplaySelVec_T_6 = s0_remLoadHigherPriorityReplaySelMask_0[0] |
    s0_remLoadHigherPriorityReplaySelMask_0[1] | (s0_remLoadHigherPriorityReplaySelMask_0[2] |
    s0_remLoadHigherPriorityReplaySelMask_0[3]); // @[ParallelMux.scala 36:53]
  wire [3:0] _s0_remPriorityReplaySelVec_T_7 = _s0_remPriorityReplaySelVec_T_6 ? s0_remLoadHigherPriorityReplaySelMask_0
     : s0_remLoadLowerPriorityReplaySelMask_0; // @[LoadQueueReplay.scala 413:14]
  wire  _s0_remPriorityReplaySelVec_T_15 = s0_remLoadHigherPriorityReplaySelMask_1[0] |
    s0_remLoadHigherPriorityReplaySelMask_1[1] | (s0_remLoadHigherPriorityReplaySelMask_1[2] |
    s0_remLoadHigherPriorityReplaySelMask_1[3]); // @[ParallelMux.scala 36:53]
  wire [3:0] _s0_remPriorityReplaySelVec_T_16 = _s0_remPriorityReplaySelVec_T_15 ?
    s0_remLoadHigherPriorityReplaySelMask_1 : s0_remLoadLowerPriorityReplaySelMask_1; // @[LoadQueueReplay.scala 413:14]
  wire [4:0] _oldestPtrExt_new_ptr_T = {io_ldWbPtr_flag,io_ldWbPtr_value}; // @[Cat.scala 31:58]
  wire [5:0] _oldestPtrExt_new_ptr_T_1 = {{1'd0}, _oldestPtrExt_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] oldestPtrExt_0_value = _oldestPtrExt_new_ptr_T_1[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  oldestPtrExt_0_flag = _oldestPtrExt_new_ptr_T_1[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _oldestPtrExt_new_ptr_T_7 = _oldestPtrExt_new_ptr_T + 5'h1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] oldestPtrExt_1_value = _oldestPtrExt_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  oldestPtrExt_1_flag = _oldestPtrExt_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _oldestPtrExt_new_ptr_T_12 = _oldestPtrExt_new_ptr_T + 5'h2; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] oldestPtrExt_2_value = _oldestPtrExt_new_ptr_T_12[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  oldestPtrExt_2_flag = _oldestPtrExt_new_ptr_T_12[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _oldestPtrExt_new_ptr_T_17 = _oldestPtrExt_new_ptr_T + 5'h3; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] oldestPtrExt_3_value = _oldestPtrExt_new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  oldestPtrExt_3_flag = _oldestPtrExt_new_ptr_T_17[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _s0_oldestMatchMaskVec_T_1 = {uop_0_lqIdx_flag,uop_0_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [4:0] _s0_oldestMatchMaskVec_T_2 = {oldestPtrExt_0_flag,oldestPtrExt_0_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_oldestMatchMaskVec_T_3 = _s0_oldestMatchMaskVec_T_1 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_0_0 = s0_loadNormalReplaySelMask[0] & _s0_oldestMatchMaskVec_T_3; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_6 = {oldestPtrExt_1_flag,oldestPtrExt_1_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_oldestMatchMaskVec_T_7 = _s0_oldestMatchMaskVec_T_1 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_0_1 = s0_loadNormalReplaySelMask[0] & _s0_oldestMatchMaskVec_T_7; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_10 = {oldestPtrExt_2_flag,oldestPtrExt_2_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_oldestMatchMaskVec_T_11 = _s0_oldestMatchMaskVec_T_1 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_0_2 = s0_loadNormalReplaySelMask[0] & _s0_oldestMatchMaskVec_T_11; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_14 = {oldestPtrExt_3_flag,oldestPtrExt_3_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_oldestMatchMaskVec_T_15 = _s0_oldestMatchMaskVec_T_1 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_0_3 = s0_loadNormalReplaySelMask[0] & _s0_oldestMatchMaskVec_T_15; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_17 = {uop_1_lqIdx_flag,uop_1_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_19 = _s0_oldestMatchMaskVec_T_17 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_1_0 = s0_loadNormalReplaySelMask[1] & _s0_oldestMatchMaskVec_T_19; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_23 = _s0_oldestMatchMaskVec_T_17 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_1_1 = s0_loadNormalReplaySelMask[1] & _s0_oldestMatchMaskVec_T_23; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_27 = _s0_oldestMatchMaskVec_T_17 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_1_2 = s0_loadNormalReplaySelMask[1] & _s0_oldestMatchMaskVec_T_27; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_31 = _s0_oldestMatchMaskVec_T_17 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_1_3 = s0_loadNormalReplaySelMask[1] & _s0_oldestMatchMaskVec_T_31; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_33 = {uop_2_lqIdx_flag,uop_2_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_35 = _s0_oldestMatchMaskVec_T_33 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_2_0 = s0_loadNormalReplaySelMask[2] & _s0_oldestMatchMaskVec_T_35; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_39 = _s0_oldestMatchMaskVec_T_33 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_2_1 = s0_loadNormalReplaySelMask[2] & _s0_oldestMatchMaskVec_T_39; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_43 = _s0_oldestMatchMaskVec_T_33 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_2_2 = s0_loadNormalReplaySelMask[2] & _s0_oldestMatchMaskVec_T_43; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_47 = _s0_oldestMatchMaskVec_T_33 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_2_3 = s0_loadNormalReplaySelMask[2] & _s0_oldestMatchMaskVec_T_47; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_49 = {uop_3_lqIdx_flag,uop_3_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_51 = _s0_oldestMatchMaskVec_T_49 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_3_0 = s0_loadNormalReplaySelMask[3] & _s0_oldestMatchMaskVec_T_51; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_55 = _s0_oldestMatchMaskVec_T_49 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_3_1 = s0_loadNormalReplaySelMask[3] & _s0_oldestMatchMaskVec_T_55; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_59 = _s0_oldestMatchMaskVec_T_49 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_3_2 = s0_loadNormalReplaySelMask[3] & _s0_oldestMatchMaskVec_T_59; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_63 = _s0_oldestMatchMaskVec_T_49 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_3_3 = s0_loadNormalReplaySelMask[3] & _s0_oldestMatchMaskVec_T_63; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_65 = {uop_4_lqIdx_flag,uop_4_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_67 = _s0_oldestMatchMaskVec_T_65 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_4_0 = s0_loadNormalReplaySelMask[4] & _s0_oldestMatchMaskVec_T_67; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_71 = _s0_oldestMatchMaskVec_T_65 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_4_1 = s0_loadNormalReplaySelMask[4] & _s0_oldestMatchMaskVec_T_71; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_75 = _s0_oldestMatchMaskVec_T_65 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_4_2 = s0_loadNormalReplaySelMask[4] & _s0_oldestMatchMaskVec_T_75; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_79 = _s0_oldestMatchMaskVec_T_65 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_4_3 = s0_loadNormalReplaySelMask[4] & _s0_oldestMatchMaskVec_T_79; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_81 = {uop_5_lqIdx_flag,uop_5_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_83 = _s0_oldestMatchMaskVec_T_81 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_5_0 = s0_loadNormalReplaySelMask[5] & _s0_oldestMatchMaskVec_T_83; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_87 = _s0_oldestMatchMaskVec_T_81 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_5_1 = s0_loadNormalReplaySelMask[5] & _s0_oldestMatchMaskVec_T_87; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_91 = _s0_oldestMatchMaskVec_T_81 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_5_2 = s0_loadNormalReplaySelMask[5] & _s0_oldestMatchMaskVec_T_91; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_95 = _s0_oldestMatchMaskVec_T_81 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_5_3 = s0_loadNormalReplaySelMask[5] & _s0_oldestMatchMaskVec_T_95; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_97 = {uop_6_lqIdx_flag,uop_6_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_99 = _s0_oldestMatchMaskVec_T_97 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_6_0 = s0_loadNormalReplaySelMask[6] & _s0_oldestMatchMaskVec_T_99; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_103 = _s0_oldestMatchMaskVec_T_97 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_6_1 = s0_loadNormalReplaySelMask[6] & _s0_oldestMatchMaskVec_T_103; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_107 = _s0_oldestMatchMaskVec_T_97 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_6_2 = s0_loadNormalReplaySelMask[6] & _s0_oldestMatchMaskVec_T_107; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_111 = _s0_oldestMatchMaskVec_T_97 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_6_3 = s0_loadNormalReplaySelMask[6] & _s0_oldestMatchMaskVec_T_111; // @[LoadQueueReplay.scala 421:138]
  wire [4:0] _s0_oldestMatchMaskVec_T_113 = {uop_7_lqIdx_flag,uop_7_lqIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_oldestMatchMaskVec_T_115 = _s0_oldestMatchMaskVec_T_113 == _s0_oldestMatchMaskVec_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_7_0 = s0_loadNormalReplaySelMask[7] & _s0_oldestMatchMaskVec_T_115; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_119 = _s0_oldestMatchMaskVec_T_113 == _s0_oldestMatchMaskVec_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_7_1 = s0_loadNormalReplaySelMask[7] & _s0_oldestMatchMaskVec_T_119; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_123 = _s0_oldestMatchMaskVec_T_113 == _s0_oldestMatchMaskVec_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_7_2 = s0_loadNormalReplaySelMask[7] & _s0_oldestMatchMaskVec_T_123; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_oldestMatchMaskVec_T_127 = _s0_oldestMatchMaskVec_T_113 == _s0_oldestMatchMaskVec_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  s0_oldestMatchMaskVec_7_3 = s0_loadNormalReplaySelMask[7] & _s0_oldestMatchMaskVec_T_127; // @[LoadQueueReplay.scala 421:138]
  wire  _s0_remOldestSelVec_T_2 = s0_oldestMatchMaskVec_0_0 | s0_oldestMatchMaskVec_2_0 | (s0_oldestMatchMaskVec_4_0 |
    s0_oldestMatchMaskVec_6_0); // @[ParallelMux.scala 36:53]
  wire  _s0_remOldestSelVec_T_5 = _s0_remOldestSelVec_T_2 ? s0_oldestMatchMaskVec_0_0 : s0_oldestMatchMaskVec_0_1 |
    s0_oldestMatchMaskVec_0_2 | s0_oldestMatchMaskVec_0_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_11 = _s0_remOldestSelVec_T_2 ? s0_oldestMatchMaskVec_2_0 : s0_oldestMatchMaskVec_2_1 |
    s0_oldestMatchMaskVec_2_2 | s0_oldestMatchMaskVec_2_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_17 = _s0_remOldestSelVec_T_2 ? s0_oldestMatchMaskVec_4_0 : s0_oldestMatchMaskVec_4_1 |
    s0_oldestMatchMaskVec_4_2 | s0_oldestMatchMaskVec_4_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_23 = _s0_remOldestSelVec_T_2 ? s0_oldestMatchMaskVec_6_0 : s0_oldestMatchMaskVec_6_1 |
    s0_oldestMatchMaskVec_6_2 | s0_oldestMatchMaskVec_6_3; // @[LoadQueueReplay.scala 426:10]
  wire [3:0] s0_remOldestSelVec_0 = {_s0_remOldestSelVec_T_23,_s0_remOldestSelVec_T_17,_s0_remOldestSelVec_T_11,
    _s0_remOldestSelVec_T_5}; // @[LoadQueueReplay.scala 427:9]
  wire  _s0_remOldestSelVec_T_27 = s0_oldestMatchMaskVec_1_0 | s0_oldestMatchMaskVec_3_0 | (s0_oldestMatchMaskVec_5_0 |
    s0_oldestMatchMaskVec_7_0); // @[ParallelMux.scala 36:53]
  wire  _s0_remOldestSelVec_T_30 = _s0_remOldestSelVec_T_27 ? s0_oldestMatchMaskVec_1_0 : s0_oldestMatchMaskVec_1_1 |
    s0_oldestMatchMaskVec_1_2 | s0_oldestMatchMaskVec_1_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_36 = _s0_remOldestSelVec_T_27 ? s0_oldestMatchMaskVec_3_0 : s0_oldestMatchMaskVec_3_1 |
    s0_oldestMatchMaskVec_3_2 | s0_oldestMatchMaskVec_3_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_42 = _s0_remOldestSelVec_T_27 ? s0_oldestMatchMaskVec_5_0 : s0_oldestMatchMaskVec_5_1 |
    s0_oldestMatchMaskVec_5_2 | s0_oldestMatchMaskVec_5_3; // @[LoadQueueReplay.scala 426:10]
  wire  _s0_remOldestSelVec_T_48 = _s0_remOldestSelVec_T_27 ? s0_oldestMatchMaskVec_7_0 : s0_oldestMatchMaskVec_7_1 |
    s0_oldestMatchMaskVec_7_2 | s0_oldestMatchMaskVec_7_3; // @[LoadQueueReplay.scala 426:10]
  wire [3:0] s0_remOldestSelVec_1 = {_s0_remOldestSelVec_T_48,_s0_remOldestSelVec_T_42,_s0_remOldestSelVec_T_36,
    _s0_remOldestSelVec_T_30}; // @[LoadQueueReplay.scala 427:9]
  wire [3:0] s0_remOldestHintSelVec_0 = s0_remOldestSelVec_0 & s0_remLoadHintSelMask_0; // @[LoadQueueReplay.scala 430:43]
  wire [3:0] s0_remOldestHintSelVec_1 = s0_remOldestSelVec_1 & s0_remLoadHintSelMask_1; // @[LoadQueueReplay.scala 430:43]
  wire  ageOldest_valid = |ageOldest_age_io_out; // @[LoadQueueReplay.scala 141:29]
  wire [3:0] ageOldest_bits = ageOldest_age_io_out; // @[LoadQueueReplay.scala 140:19 142:14]
  wire  _l2HintFirst_T_6 = s0_remOldestHintSelVec_0[0] | s0_remOldestHintSelVec_0[1] | (s0_remOldestHintSelVec_0[2] |
    s0_remOldestHintSelVec_0[3]); // @[ParallelMux.scala 36:53]
  wire  l2HintFirst = io_l2_hint_valid & _l2HintFirst_T_6; // @[LoadQueueReplay.scala 442:40]
  wire  _issOldestValid_T_6 = s0_remOldestSelVec_0[0] | s0_remOldestSelVec_0[1] | (s0_remOldestSelVec_0[2] |
    s0_remOldestSelVec_0[3]); // @[ParallelMux.scala 36:53]
  wire  issOldestValid = l2HintFirst | _issOldestValid_T_6; // @[LoadQueueReplay.scala 443:38]
  wire [3:0] _issOldestIndexOH_T_4 = s0_remOldestHintSelVec_0[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_5 = s0_remOldestHintSelVec_0[2] ? 4'h4 : _issOldestIndexOH_T_4; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_6 = s0_remOldestHintSelVec_0[1] ? 4'h2 : _issOldestIndexOH_T_5; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_7 = s0_remOldestHintSelVec_0[0] ? 4'h1 : _issOldestIndexOH_T_6; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_12 = s0_remOldestSelVec_0[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_13 = s0_remOldestSelVec_0[2] ? 4'h4 : _issOldestIndexOH_T_12; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_14 = s0_remOldestSelVec_0[1] ? 4'h2 : _issOldestIndexOH_T_13; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_15 = s0_remOldestSelVec_0[0] ? 4'h1 : _issOldestIndexOH_T_14; // @[Mux.scala 47:70]
  wire [3:0] issOldestIndexOH = l2HintFirst ? _issOldestIndexOH_T_7 : _issOldestIndexOH_T_15; // @[LoadQueueReplay.scala 444:31]
  wire [3:0] oldestSel = issOldestValid ? issOldestIndexOH : ageOldest_bits; // @[LoadQueueReplay.scala 447:24]
  wire  oldestBitsVec__0 = oldestSel[0]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec__2 = oldestSel[1]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec__4 = oldestSel[2]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec__6 = oldestSel[3]; // @[LoadQueueReplay.scala 453:64]
  wire  oldest_valid = ageOldest_valid | issOldestValid; // @[LoadQueueReplay.scala 456:37]
  wire [7:0] oldest_bits = {1'h0,oldestBitsVec__6,1'h0,oldestBitsVec__4,1'h0,oldestBitsVec__2,1'h0,oldestBitsVec__0}; // @[LoadQueueReplay.scala 457:34]
  wire  ageOldest_1_valid = |ageOldest_age_1_io_out; // @[LoadQueueReplay.scala 141:29]
  wire [3:0] ageOldest_1_bits = ageOldest_age_1_io_out; // @[LoadQueueReplay.scala 140:19 142:14]
  wire  _l2HintFirst_T_13 = s0_remOldestHintSelVec_1[0] | s0_remOldestHintSelVec_1[1] | (s0_remOldestHintSelVec_1[2] |
    s0_remOldestHintSelVec_1[3]); // @[ParallelMux.scala 36:53]
  wire  l2HintFirst_1 = io_l2_hint_valid & _l2HintFirst_T_13; // @[LoadQueueReplay.scala 442:40]
  wire  _issOldestValid_T_13 = s0_remOldestSelVec_1[0] | s0_remOldestSelVec_1[1] | (s0_remOldestSelVec_1[2] |
    s0_remOldestSelVec_1[3]); // @[ParallelMux.scala 36:53]
  wire  issOldestValid_1 = l2HintFirst_1 | _issOldestValid_T_13; // @[LoadQueueReplay.scala 443:38]
  wire [3:0] _issOldestIndexOH_T_20 = s0_remOldestHintSelVec_1[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_21 = s0_remOldestHintSelVec_1[2] ? 4'h4 : _issOldestIndexOH_T_20; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_22 = s0_remOldestHintSelVec_1[1] ? 4'h2 : _issOldestIndexOH_T_21; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_23 = s0_remOldestHintSelVec_1[0] ? 4'h1 : _issOldestIndexOH_T_22; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_28 = s0_remOldestSelVec_1[3] ? 4'h8 : 4'h0; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_29 = s0_remOldestSelVec_1[2] ? 4'h4 : _issOldestIndexOH_T_28; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_30 = s0_remOldestSelVec_1[1] ? 4'h2 : _issOldestIndexOH_T_29; // @[Mux.scala 47:70]
  wire [3:0] _issOldestIndexOH_T_31 = s0_remOldestSelVec_1[0] ? 4'h1 : _issOldestIndexOH_T_30; // @[Mux.scala 47:70]
  wire [3:0] issOldestIndexOH_1 = l2HintFirst_1 ? _issOldestIndexOH_T_23 : _issOldestIndexOH_T_31; // @[LoadQueueReplay.scala 444:31]
  wire [3:0] oldestSel_1 = issOldestValid_1 ? issOldestIndexOH_1 : ageOldest_1_bits; // @[LoadQueueReplay.scala 447:24]
  wire  oldestBitsVec_1_1 = oldestSel_1[0]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec_1_3 = oldestSel_1[1]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec_1_5 = oldestSel_1[2]; // @[LoadQueueReplay.scala 453:64]
  wire  oldestBitsVec_1_7 = oldestSel_1[3]; // @[LoadQueueReplay.scala 453:64]
  wire  oldest_1_valid = ageOldest_1_valid | issOldestValid_1; // @[LoadQueueReplay.scala 456:37]
  wire [7:0] oldest_1_bits = {oldestBitsVec_1_7,1'h0,oldestBitsVec_1_5,1'h0,oldestBitsVec_1_3,1'h0,oldestBitsVec_1_1,1'h0
    }; // @[LoadQueueReplay.scala 457:34]
  reg [3:0] coldCounter_0; // @[LoadQueueReplay.scala 494:28]
  reg [3:0] coldCounter_1; // @[LoadQueueReplay.scala 494:28]
  reg [2:0] s1_oldestSel_0_bits_r; // @[Reg.scala 16:16]
  wire [3:0] s1_oldestSel_0_bits = {{1'd0}, s1_oldestSel_0_bits_r}; // @[LoadQueueReplay.scala 357:26 516:26]
  wire [9:0] _GEN_257 = 3'h1 == s1_oldestSel_0_bits[2:0] ? cause_1 : cause_0; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_258 = 3'h2 == s1_oldestSel_0_bits[2:0] ? cause_2 : _GEN_257; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_259 = 3'h3 == s1_oldestSel_0_bits[2:0] ? cause_3 : _GEN_258; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_260 = 3'h4 == s1_oldestSel_0_bits[2:0] ? cause_4 : _GEN_259; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_261 = 3'h5 == s1_oldestSel_0_bits[2:0] ? cause_5 : _GEN_260; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_262 = 3'h6 == s1_oldestSel_0_bits[2:0] ? cause_6 : _GEN_261; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_263 = 3'h7 == s1_oldestSel_0_bits[2:0] ? cause_7 : _GEN_262; // @[LoadQueueReplay.scala 505:{56,56}]
  wire  s1_balanceOldestSelExt_0_bits_balance = _GEN_263[6]; // @[LoadQueueReplay.scala 505:56]
  reg [2:0] s1_oldestSel_1_bits_r; // @[Reg.scala 16:16]
  wire [3:0] s1_oldestSel_1_bits = {{1'd0}, s1_oldestSel_1_bits_r}; // @[LoadQueueReplay.scala 357:26 516:26]
  wire [9:0] _GEN_265 = 3'h1 == s1_oldestSel_1_bits[2:0] ? cause_1 : cause_0; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_266 = 3'h2 == s1_oldestSel_1_bits[2:0] ? cause_2 : _GEN_265; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_267 = 3'h3 == s1_oldestSel_1_bits[2:0] ? cause_3 : _GEN_266; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_268 = 3'h4 == s1_oldestSel_1_bits[2:0] ? cause_4 : _GEN_267; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_269 = 3'h5 == s1_oldestSel_1_bits[2:0] ? cause_5 : _GEN_268; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_270 = 3'h6 == s1_oldestSel_1_bits[2:0] ? cause_6 : _GEN_269; // @[LoadQueueReplay.scala 505:{56,56}]
  wire [9:0] _GEN_271 = 3'h7 == s1_oldestSel_1_bits[2:0] ? cause_7 : _GEN_270; // @[LoadQueueReplay.scala 505:{56,56}]
  wire  s1_balanceOldestSelExt_1_bits_balance = _GEN_271[6]; // @[LoadQueueReplay.scala 505:56]
  reg  s1_oldestSel_0_valid_r; // @[Reg.scala 16:16]
  wire  _s1_balanceOldestSel_balancePick_T = s1_oldestSel_0_valid_r & s1_balanceOldestSelExt_0_bits_balance; // @[LoadQueueReplay.scala 471:65]
  reg  s1_oldestSel_1_valid_r; // @[Reg.scala 16:16]
  wire  s1_balanceOldestSel_balancePick_valid = _s1_balanceOldestSel_balancePick_T ? s1_oldestSel_0_valid_r :
    s1_oldestSel_1_valid_r; // @[ParallelMux.scala 90:77]
  wire  s1_balanceOldestSel_balancePick_bits_balance = _s1_balanceOldestSel_balancePick_T ?
    s1_balanceOldestSelExt_0_bits_balance : s1_balanceOldestSelExt_1_bits_balance; // @[ParallelMux.scala 90:77]
  wire [2:0] s1_balanceOldestSel_balancePick_bits_index = _s1_balanceOldestSel_balancePick_T ? s1_oldestSel_0_bits[2:0]
     : s1_oldestSel_1_bits[2:0]; // @[ParallelMux.scala 90:77]
  wire  s1_balanceOldestSel_balancePick_bits_port = _s1_balanceOldestSel_balancePick_T ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire  s1_balanceOldestSel_reorderSel_0_valid = s1_balanceOldestSel_balancePick_valid &
    s1_balanceOldestSel_balancePick_bits_balance ? s1_balanceOldestSel_balancePick_valid : s1_oldestSel_0_valid_r; // @[LoadQueueReplay.scala 475:62 476:25 478:25]
  wire [2:0] s1_balanceOldestSel_reorderSel_0_bits_index = s1_balanceOldestSel_balancePick_valid &
    s1_balanceOldestSel_balancePick_bits_balance ? s1_balanceOldestSel_balancePick_bits_index : s1_oldestSel_0_bits[2:0]
    ; // @[LoadQueueReplay.scala 475:62 476:25 478:25]
  wire  s1_balanceOldestSel_reorderSel_0_bits_port = s1_balanceOldestSel_balancePick_valid &
    s1_balanceOldestSel_balancePick_bits_balance & s1_balanceOldestSel_balancePick_bits_port; // @[LoadQueueReplay.scala 475:62 476:25 478:25]
  wire  s1_balanceOldestSel_reorderSel_1_valid = s1_balanceOldestSel_reorderSel_0_bits_port ? s1_oldestSel_0_valid_r :
    s1_oldestSel_1_valid_r; // @[LoadQueueReplay.scala 481:95 482:25 484:25]
  wire [2:0] s1_balanceOldestSel_reorderSel_1_bits_index = s1_balanceOldestSel_reorderSel_0_bits_port ?
    s1_oldestSel_0_bits[2:0] : s1_oldestSel_1_bits[2:0]; // @[LoadQueueReplay.scala 481:95 482:25 484:25]
  wire  s1_balanceOldestSel_reorderSel_1_bits_port = s1_balanceOldestSel_reorderSel_0_bits_port ? 1'h0 : 1'h1; // @[LoadQueueReplay.scala 481:95 482:25 484:25]
  wire  _GEN_281 = 3'h1 == s1_oldestSel_0_bits[2:0] ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_282 = 3'h2 == s1_oldestSel_0_bits[2:0] ? uop_2_robIdx_flag : _GEN_281; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_283 = 3'h3 == s1_oldestSel_0_bits[2:0] ? uop_3_robIdx_flag : _GEN_282; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_284 = 3'h4 == s1_oldestSel_0_bits[2:0] ? uop_4_robIdx_flag : _GEN_283; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_285 = 3'h5 == s1_oldestSel_0_bits[2:0] ? uop_5_robIdx_flag : _GEN_284; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_286 = 3'h6 == s1_oldestSel_0_bits[2:0] ? uop_6_robIdx_flag : _GEN_285; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_287 = 3'h7 == s1_oldestSel_0_bits[2:0] ? uop_7_robIdx_flag : _GEN_286; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_289 = 3'h1 == s1_oldestSel_0_bits[2:0] ? uop_1_robIdx_value : uop_0_robIdx_value; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_290 = 3'h2 == s1_oldestSel_0_bits[2:0] ? uop_2_robIdx_value : _GEN_289; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_291 = 3'h3 == s1_oldestSel_0_bits[2:0] ? uop_3_robIdx_value : _GEN_290; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_292 = 3'h4 == s1_oldestSel_0_bits[2:0] ? uop_4_robIdx_value : _GEN_291; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_293 = 3'h5 == s1_oldestSel_0_bits[2:0] ? uop_5_robIdx_value : _GEN_292; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_294 = 3'h6 == s1_oldestSel_0_bits[2:0] ? uop_6_robIdx_value : _GEN_293; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_295 = 3'h7 == s1_oldestSel_0_bits[2:0] ? uop_7_robIdx_value : _GEN_294; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [5:0] _s0_can_go_flushItself_T_1 = {_GEN_287,_GEN_295}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_can_go_flushItself_T_3 = _s0_can_go_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_can_go_flushItself = io_redirect_bits_level & _s0_can_go_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s0_can_go_differentFlag = _GEN_287 ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_can_go_compare = _GEN_295 > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_can_go_T_1 = s0_can_go_differentFlag ^ s0_can_go_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s0_can_go_T_3 = io_redirect_valid & (s0_can_go_flushItself | _s0_can_go_T_1); // @[Rob.scala 143:20]
  reg  s2_oldestSel_0_valid_r; // @[Reg.scala 16:16]
  reg  s2_replayUop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s2_replayUop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s2_cancelReplay_0_flushItself_T_1 = {s2_replayUop_robIdx_flag,s2_replayUop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s2_cancelReplay_0_flushItself_T_3 = _s2_cancelReplay_0_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_cancelReplay_0_flushItself = io_redirect_bits_level & _s2_cancelReplay_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_cancelReplay_0_differentFlag = s2_replayUop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_cancelReplay_0_compare = s2_replayUop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_cancelReplay_0_T = s2_cancelReplay_0_differentFlag ^ s2_cancelReplay_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s2_cancelReplay_0 = io_redirect_valid & (s2_cancelReplay_0_flushItself | _s2_cancelReplay_0_T); // @[Rob.scala 143:20]
  wire  _s1_can_go_0_T_1 = s2_oldestSel_0_valid_r & ~s2_cancelReplay_0; // @[LoadQueueReplay.scala 528:56]
  wire  _s1_can_go_0_T_3 = coldCounter_0 < 4'hc; // @[LoadQueueReplay.scala 499:71]
  wire  s1_can_go_0 = s2_oldestSel_0_valid_r & ~s2_cancelReplay_0 ? io_replay_0_ready & _s1_can_go_0_T_3 : 1'h1; // @[LoadQueueReplay.scala 528:33]
  reg  s2_oldestSel_1_valid_r; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s2_replayUop_1_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s2_cancelReplay_1_flushItself_T_1 = {s2_replayUop_1_robIdx_flag,s2_replayUop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s2_cancelReplay_1_flushItself_T_3 = _s2_cancelReplay_1_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_cancelReplay_1_flushItself = io_redirect_bits_level & _s2_cancelReplay_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_cancelReplay_1_differentFlag = s2_replayUop_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_cancelReplay_1_compare = s2_replayUop_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_cancelReplay_1_T = s2_cancelReplay_1_differentFlag ^ s2_cancelReplay_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s2_cancelReplay_1 = io_redirect_valid & (s2_cancelReplay_1_flushItself | _s2_cancelReplay_1_T); // @[Rob.scala 143:20]
  wire  _s1_can_go_1_T_1 = s2_oldestSel_1_valid_r & ~s2_cancelReplay_1; // @[LoadQueueReplay.scala 528:56]
  wire  _s1_can_go_1_T_3 = coldCounter_1 < 4'hc; // @[LoadQueueReplay.scala 499:71]
  wire  s1_can_go_1 = s2_oldestSel_1_valid_r & ~s2_cancelReplay_1 ? io_replay_1_ready & _s1_can_go_1_T_3 : 1'h1; // @[LoadQueueReplay.scala 528:33]
  wire  _GEN_297 = s1_balanceOldestSel_reorderSel_0_bits_port ? s1_can_go_1 : s1_can_go_0; // @[LoadQueueReplay.scala 513:{65,65}]
  wire  s0_can_go = _GEN_297 | _s0_can_go_T_3; // @[LoadQueueReplay.scala 513:65]
  wire [3:0] s1_oldestSel_0_bits_hi = oldest_bits[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_oldestSel_0_bits_lo = oldest_bits[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_oldestSel_0_bits_T = |s1_oldestSel_0_bits_hi; // @[OneHot.scala 32:14]
  wire [3:0] _s1_oldestSel_0_bits_T_1 = s1_oldestSel_0_bits_hi | s1_oldestSel_0_bits_lo; // @[OneHot.scala 32:28]
  wire [1:0] s1_oldestSel_0_bits_hi_1 = _s1_oldestSel_0_bits_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_oldestSel_0_bits_lo_1 = _s1_oldestSel_0_bits_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_oldestSel_0_bits_T_2 = |s1_oldestSel_0_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _s1_oldestSel_0_bits_T_3 = s1_oldestSel_0_bits_hi_1 | s1_oldestSel_0_bits_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] _s1_oldestSel_0_bits_T_6 = {_s1_oldestSel_0_bits_T,_s1_oldestSel_0_bits_T_2,_s1_oldestSel_0_bits_T_3[1]}; // @[Cat.scala 31:58]
  wire  _GEN_300 = s0_can_go & oldest_valid & oldest_bits[0] | scheduled_0; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_301 = s0_can_go & oldest_valid & oldest_bits[1] | scheduled_1; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_302 = s0_can_go & oldest_valid & oldest_bits[2] | scheduled_2; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_303 = s0_can_go & oldest_valid & oldest_bits[3] | scheduled_3; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_304 = s0_can_go & oldest_valid & oldest_bits[4] | scheduled_4; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_305 = s0_can_go & oldest_valid & oldest_bits[5] | scheduled_5; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_306 = s0_can_go & oldest_valid & oldest_bits[6] | scheduled_6; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_307 = s0_can_go & oldest_valid & oldest_bits[7] | scheduled_7; // @[LoadQueueReplay.scala 519:75 520:22 199:26]
  wire  _GEN_309 = 3'h1 == s1_oldestSel_1_bits[2:0] ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_310 = 3'h2 == s1_oldestSel_1_bits[2:0] ? uop_2_robIdx_flag : _GEN_309; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_311 = 3'h3 == s1_oldestSel_1_bits[2:0] ? uop_3_robIdx_flag : _GEN_310; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_312 = 3'h4 == s1_oldestSel_1_bits[2:0] ? uop_4_robIdx_flag : _GEN_311; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_313 = 3'h5 == s1_oldestSel_1_bits[2:0] ? uop_5_robIdx_flag : _GEN_312; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_314 = 3'h6 == s1_oldestSel_1_bits[2:0] ? uop_6_robIdx_flag : _GEN_313; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_315 = 3'h7 == s1_oldestSel_1_bits[2:0] ? uop_7_robIdx_flag : _GEN_314; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_317 = 3'h1 == s1_oldestSel_1_bits[2:0] ? uop_1_robIdx_value : uop_0_robIdx_value; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_318 = 3'h2 == s1_oldestSel_1_bits[2:0] ? uop_2_robIdx_value : _GEN_317; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_319 = 3'h3 == s1_oldestSel_1_bits[2:0] ? uop_3_robIdx_value : _GEN_318; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_320 = 3'h4 == s1_oldestSel_1_bits[2:0] ? uop_4_robIdx_value : _GEN_319; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_321 = 3'h5 == s1_oldestSel_1_bits[2:0] ? uop_5_robIdx_value : _GEN_320; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_322 = 3'h6 == s1_oldestSel_1_bits[2:0] ? uop_6_robIdx_value : _GEN_321; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_323 = 3'h7 == s1_oldestSel_1_bits[2:0] ? uop_7_robIdx_value : _GEN_322; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [5:0] _s0_can_go_flushItself_T_5 = {_GEN_315,_GEN_323}; // @[CircularQueuePtr.scala 61:40]
  wire  _s0_can_go_flushItself_T_7 = _s0_can_go_flushItself_T_5 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s0_can_go_flushItself_1 = io_redirect_bits_level & _s0_can_go_flushItself_T_7; // @[Rob.scala 142:51]
  wire  s0_can_go_differentFlag_1 = _GEN_315 ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_can_go_compare_1 = _GEN_323 > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_can_go_T_5 = s0_can_go_differentFlag_1 ^ s0_can_go_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s0_can_go_T_7 = io_redirect_valid & (s0_can_go_flushItself_1 | _s0_can_go_T_5); // @[Rob.scala 143:20]
  wire  _GEN_325 = s1_balanceOldestSel_reorderSel_1_bits_port ? s1_can_go_1 : s1_can_go_0; // @[LoadQueueReplay.scala 513:{65,65}]
  wire  s0_can_go_1 = _GEN_325 | _s0_can_go_T_7; // @[LoadQueueReplay.scala 513:65]
  wire [3:0] s1_oldestSel_1_bits_hi = oldest_1_bits[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_oldestSel_1_bits_lo = oldest_1_bits[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_oldestSel_1_bits_T = |s1_oldestSel_1_bits_hi; // @[OneHot.scala 32:14]
  wire [3:0] _s1_oldestSel_1_bits_T_1 = s1_oldestSel_1_bits_hi | s1_oldestSel_1_bits_lo; // @[OneHot.scala 32:28]
  wire [1:0] s1_oldestSel_1_bits_hi_1 = _s1_oldestSel_1_bits_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_oldestSel_1_bits_lo_1 = _s1_oldestSel_1_bits_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_oldestSel_1_bits_T_2 = |s1_oldestSel_1_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _s1_oldestSel_1_bits_T_3 = s1_oldestSel_1_bits_hi_1 | s1_oldestSel_1_bits_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] _s1_oldestSel_1_bits_T_6 = {_s1_oldestSel_1_bits_T,_s1_oldestSel_1_bits_T_2,_s1_oldestSel_1_bits_T_3[1]}; // @[Cat.scala 31:58]
  wire  _GEN_328 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[0] | _GEN_300; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_329 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[1] | _GEN_301; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_330 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[2] | _GEN_302; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_331 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[3] | _GEN_303; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_332 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[4] | _GEN_304; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_333 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[5] | _GEN_305; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_334 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[6] | _GEN_306; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_335 = s0_can_go_1 & oldest_1_valid & oldest_1_bits[7] | _GEN_307; // @[LoadQueueReplay.scala 519:75 520:22]
  wire  _GEN_337 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_338 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_robIdx_flag : _GEN_337; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_339 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_robIdx_flag : _GEN_338; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_340 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_robIdx_flag : _GEN_339; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_341 = 3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_5_robIdx_flag : _GEN_340; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_342 = 3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_6_robIdx_flag : _GEN_341; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_343 = 3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_7_robIdx_flag : _GEN_342; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_345 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_robIdx_value : uop_0_robIdx_value; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_346 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_robIdx_value : _GEN_345; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_347 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_robIdx_value : _GEN_346; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_348 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_robIdx_value : _GEN_347; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_349 = 3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_5_robIdx_value : _GEN_348; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_350 = 3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_6_robIdx_value : _GEN_349; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_351 = 3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_7_robIdx_value : _GEN_350; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [5:0] _s1_cancel_flushItself_T_1 = {_GEN_343,_GEN_351}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_cancel_flushItself_T_3 = _s1_cancel_flushItself_T_1 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s1_cancel_flushItself = io_redirect_bits_level & _s1_cancel_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_cancel_differentFlag = _GEN_343 ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_cancel_compare = _GEN_351 > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_cancel_T = s1_cancel_differentFlag ^ s1_cancel_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s1_cancel = io_redirect_valid & (s1_cancel_flushItself | _s1_cancel_T); // @[Rob.scala 143:20]
  wire  s1_oldestSelV = s1_balanceOldestSel_reorderSel_0_valid & ~s1_cancel; // @[LoadQueueReplay.scala 527:54]
  reg [2:0] s2_oldestSel_0_bits_r; // @[Reg.scala 16:16]
  wire  _GEN_355 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_356 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_robIdx_flag : _GEN_355; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_357 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_robIdx_flag : _GEN_356; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_358 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_robIdx_flag : _GEN_357; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_359 = 3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_5_robIdx_flag : _GEN_358; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_360 = 3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_6_robIdx_flag : _GEN_359; // @[CircularQueuePtr.scala 61:{40,40}]
  wire  _GEN_361 = 3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_7_robIdx_flag : _GEN_360; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_363 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_robIdx_value : uop_0_robIdx_value; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_364 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_robIdx_value : _GEN_363; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_365 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_robIdx_value : _GEN_364; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_366 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_robIdx_value : _GEN_365; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_367 = 3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_5_robIdx_value : _GEN_366; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_368 = 3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_6_robIdx_value : _GEN_367; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [4:0] _GEN_369 = 3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_7_robIdx_value : _GEN_368; // @[CircularQueuePtr.scala 61:{40,40}]
  wire [5:0] _s1_cancel_flushItself_T_5 = {_GEN_361,_GEN_369}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_cancel_flushItself_T_7 = _s1_cancel_flushItself_T_5 == _cancelEnq_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s1_cancel_flushItself_1 = io_redirect_bits_level & _s1_cancel_flushItself_T_7; // @[Rob.scala 142:51]
  wire  s1_cancel_differentFlag_1 = _GEN_361 ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_cancel_compare_1 = _GEN_369 > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_cancel_T_2 = s1_cancel_differentFlag_1 ^ s1_cancel_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  s1_cancel_1 = io_redirect_valid & (s1_cancel_flushItself_1 | _s1_cancel_T_2); // @[Rob.scala 143:20]
  wire  s1_oldestSelV_1 = s1_balanceOldestSel_reorderSel_1_valid & ~s1_cancel_1; // @[LoadQueueReplay.scala 527:54]
  reg [2:0] s2_oldestSel_1_bits_r; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s2_replayUop_cf_ssid; // @[Reg.scala 16:16]
  reg  s2_replayUop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s2_replayUop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s2_replayUop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] s2_replayUop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s2_replayUop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s2_replayUop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] s2_replayUop_pdest; // @[Reg.scala 16:16]
  reg  s2_replayUop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_replayUop_lqIdx_value; // @[Reg.scala 16:16]
  reg  s2_replayUop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_replayUop_sqIdx_value; // @[Reg.scala 16:16]
  wire  _GEN_501 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_exceptionVec_13 :
    uop_0_cf_exceptionVec_13; // @[Reg.scala 17:{22,22}]
  wire  _GEN_502 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_exceptionVec_13 : _GEN_501; // @[Reg.scala 17:{22,22}]
  wire  _GEN_503 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_exceptionVec_13 : _GEN_502; // @[Reg.scala 17:{22,22}]
  wire  _GEN_504 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_exceptionVec_13 : _GEN_503; // @[Reg.scala 17:{22,22}]
  wire  _GEN_565 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_trigger_backendEn_1 :
    uop_0_cf_trigger_backendEn_1; // @[Reg.scala 17:{22,22}]
  wire  _GEN_566 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_trigger_backendEn_1 : _GEN_565; // @[Reg.scala 17:{22,22}]
  wire  _GEN_567 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_trigger_backendEn_1 : _GEN_566; // @[Reg.scala 17:{22,22}]
  wire  _GEN_568 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_trigger_backendEn_1 : _GEN_567; // @[Reg.scala 17:{22,22}]
  wire  _GEN_573 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_trigger_backendHit_0 :
    uop_0_cf_trigger_backendHit_0; // @[Reg.scala 17:{22,22}]
  wire  _GEN_574 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_trigger_backendHit_0 : _GEN_573; // @[Reg.scala 17:{22,22}]
  wire  _GEN_575 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_trigger_backendHit_0 : _GEN_574; // @[Reg.scala 17:{22,22}]
  wire  _GEN_576 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_trigger_backendHit_0 : _GEN_575; // @[Reg.scala 17:{22,22}]
  wire  _GEN_581 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_trigger_backendHit_1 :
    uop_0_cf_trigger_backendHit_1; // @[Reg.scala 17:{22,22}]
  wire  _GEN_582 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_trigger_backendHit_1 : _GEN_581; // @[Reg.scala 17:{22,22}]
  wire  _GEN_583 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_trigger_backendHit_1 : _GEN_582; // @[Reg.scala 17:{22,22}]
  wire  _GEN_584 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_trigger_backendHit_1 : _GEN_583; // @[Reg.scala 17:{22,22}]
  wire  _GEN_605 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_trigger_backendHit_4 :
    uop_0_cf_trigger_backendHit_4; // @[Reg.scala 17:{22,22}]
  wire  _GEN_606 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_trigger_backendHit_4 : _GEN_605; // @[Reg.scala 17:{22,22}]
  wire  _GEN_607 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_trigger_backendHit_4 : _GEN_606; // @[Reg.scala 17:{22,22}]
  wire  _GEN_608 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_trigger_backendHit_4 : _GEN_607; // @[Reg.scala 17:{22,22}]
  wire  _GEN_677 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_storeSetHit : uop_0_cf_storeSetHit; // @[Reg.scala 17:{22,22}]
  wire  _GEN_678 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_storeSetHit : _GEN_677; // @[Reg.scala 17:{22,22}]
  wire  _GEN_679 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_storeSetHit : _GEN_678; // @[Reg.scala 17:{22,22}]
  wire  _GEN_680 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_storeSetHit : _GEN_679; // @[Reg.scala 17:{22,22}]
  wire  _GEN_709 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_loadWaitStrict :
    uop_0_cf_loadWaitStrict; // @[Reg.scala 17:{22,22}]
  wire  _GEN_710 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_loadWaitStrict : _GEN_709; // @[Reg.scala 17:{22,22}]
  wire  _GEN_711 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_loadWaitStrict : _GEN_710; // @[Reg.scala 17:{22,22}]
  wire  _GEN_712 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_loadWaitStrict : _GEN_711; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_717 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_ssid : uop_0_cf_ssid; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_718 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_ssid : _GEN_717; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_719 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_ssid : _GEN_718; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_720 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_ssid : _GEN_719; // @[Reg.scala 17:{22,22}]
  wire  _GEN_725 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_ftqPtr_flag : uop_0_cf_ftqPtr_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_726 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_ftqPtr_flag : _GEN_725; // @[Reg.scala 17:{22,22}]
  wire  _GEN_727 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_ftqPtr_flag : _GEN_726; // @[Reg.scala 17:{22,22}]
  wire  _GEN_728 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_ftqPtr_flag : _GEN_727; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_733 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_ftqPtr_value :
    uop_0_cf_ftqPtr_value; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_734 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_ftqPtr_value : _GEN_733; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_735 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_ftqPtr_value : _GEN_734; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_736 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_ftqPtr_value : _GEN_735; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_741 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_cf_ftqOffset : uop_0_cf_ftqOffset; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_742 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_cf_ftqOffset : _GEN_741; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_743 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_cf_ftqOffset : _GEN_742; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_744 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_cf_ftqOffset : _GEN_743; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_821 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_ctrl_fuOpType : uop_0_ctrl_fuOpType; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_822 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_ctrl_fuOpType : _GEN_821; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_823 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_ctrl_fuOpType : _GEN_822; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_824 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_ctrl_fuOpType : _GEN_823; // @[Reg.scala 17:{22,22}]
  wire  _GEN_829 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_ctrl_rfWen : uop_0_ctrl_rfWen; // @[Reg.scala 17:{22,22}]
  wire  _GEN_830 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_ctrl_rfWen : _GEN_829; // @[Reg.scala 17:{22,22}]
  wire  _GEN_831 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_ctrl_rfWen : _GEN_830; // @[Reg.scala 17:{22,22}]
  wire  _GEN_832 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_ctrl_rfWen : _GEN_831; // @[Reg.scala 17:{22,22}]
  wire  _GEN_837 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_ctrl_fpWen : uop_0_ctrl_fpWen; // @[Reg.scala 17:{22,22}]
  wire  _GEN_838 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_ctrl_fpWen : _GEN_837; // @[Reg.scala 17:{22,22}]
  wire  _GEN_839 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_ctrl_fpWen : _GEN_838; // @[Reg.scala 17:{22,22}]
  wire  _GEN_840 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_ctrl_fpWen : _GEN_839; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_1085 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_pdest : uop_0_pdest; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_1086 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_pdest : _GEN_1085; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_1087 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_pdest : _GEN_1086; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_1088 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_pdest : _GEN_1087; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1093 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_lqIdx_flag : uop_0_lqIdx_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1094 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_lqIdx_flag : _GEN_1093; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1095 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_lqIdx_flag : _GEN_1094; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1096 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_lqIdx_flag : _GEN_1095; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1101 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_lqIdx_value : uop_0_lqIdx_value; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1102 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_lqIdx_value : _GEN_1101; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1103 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_lqIdx_value : _GEN_1102; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1104 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_lqIdx_value : _GEN_1103; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1109 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_sqIdx_flag : uop_0_sqIdx_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1110 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_sqIdx_flag : _GEN_1109; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1111 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_sqIdx_flag : _GEN_1110; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1112 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_sqIdx_flag : _GEN_1111; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1117 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_1_sqIdx_value : uop_0_sqIdx_value; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1118 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_2_sqIdx_value : _GEN_1117; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1119 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_3_sqIdx_value : _GEN_1118; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_1120 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? uop_4_sqIdx_value : _GEN_1119; // @[Reg.scala 17:{22,22}]
  reg [1:0] s2_replayMSHRId; // @[Reg.scala 16:16]
  wire [1:0] _GEN_1329 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? missMSHRId_1 : missMSHRId_0; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1330 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? missMSHRId_2 : _GEN_1329; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1331 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? missMSHRId_3 : _GEN_1330; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_1332 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? missMSHRId_4 : _GEN_1331; // @[Reg.scala 17:{22,22}]
  reg [9:0] s2_replayCauses; // @[Reg.scala 16:16]
  wire [9:0] _GEN_1356 = 3'h1 == s1_balanceOldestSel_reorderSel_0_bits_index ? cause_1 : cause_0; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_1357 = 3'h2 == s1_balanceOldestSel_reorderSel_0_bits_index ? cause_2 : _GEN_1356; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_1358 = 3'h3 == s1_balanceOldestSel_reorderSel_0_bits_index ? cause_3 : _GEN_1357; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_1359 = 3'h4 == s1_balanceOldestSel_reorderSel_0_bits_index ? cause_4 : _GEN_1358; // @[Reg.scala 17:{22,22}]
  wire  _T_140 = io_replay_0_ready & io_replay_0_valid; // @[Decoupled.scala 50:35]
  wire [3:0] s2_oldestSel_0_bits = {{1'd0}, s2_oldestSel_0_bits_r}; // @[LoadQueueReplay.scala 359:26 530:27]
  reg  s2_replayUop_1_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] s2_replayUop_1_cf_ssid; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] s2_replayUop_1_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s2_replayUop_1_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] s2_replayUop_1_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] s2_replayUop_1_pdest; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_replayUop_1_lqIdx_value; // @[Reg.scala 16:16]
  reg  s2_replayUop_1_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_replayUop_1_sqIdx_value; // @[Reg.scala 16:16]
  wire  _GEN_1528 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_exceptionVec_13 :
    uop_0_cf_exceptionVec_13; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1529 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_exceptionVec_13 : _GEN_1528; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1530 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_exceptionVec_13 : _GEN_1529; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1531 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_exceptionVec_13 : _GEN_1530; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1592 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_trigger_backendEn_1 :
    uop_0_cf_trigger_backendEn_1; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1593 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_trigger_backendEn_1 : _GEN_1592; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1594 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_trigger_backendEn_1 : _GEN_1593; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1595 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_trigger_backendEn_1 : _GEN_1594; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1600 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_trigger_backendHit_0 :
    uop_0_cf_trigger_backendHit_0; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1601 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_trigger_backendHit_0 : _GEN_1600; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1602 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_trigger_backendHit_0 : _GEN_1601; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1603 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_trigger_backendHit_0 : _GEN_1602; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1608 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_trigger_backendHit_1 :
    uop_0_cf_trigger_backendHit_1; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1609 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_trigger_backendHit_1 : _GEN_1608; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1610 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_trigger_backendHit_1 : _GEN_1609; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1611 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_trigger_backendHit_1 : _GEN_1610; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1632 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_trigger_backendHit_4 :
    uop_0_cf_trigger_backendHit_4; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1633 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_trigger_backendHit_4 : _GEN_1632; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1634 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_trigger_backendHit_4 : _GEN_1633; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1635 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_trigger_backendHit_4 : _GEN_1634; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1704 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_storeSetHit : uop_0_cf_storeSetHit; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1705 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_storeSetHit : _GEN_1704; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1706 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_storeSetHit : _GEN_1705; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1707 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_storeSetHit : _GEN_1706; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1736 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_loadWaitStrict :
    uop_0_cf_loadWaitStrict; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1737 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_loadWaitStrict : _GEN_1736; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1738 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_loadWaitStrict : _GEN_1737; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1739 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_loadWaitStrict : _GEN_1738; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_1744 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_ssid : uop_0_cf_ssid; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_1745 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_ssid : _GEN_1744; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_1746 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_ssid : _GEN_1745; // @[Reg.scala 17:{22,22}]
  wire [4:0] _GEN_1747 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_ssid : _GEN_1746; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1752 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_ftqPtr_flag : uop_0_cf_ftqPtr_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1753 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_ftqPtr_flag : _GEN_1752; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1754 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_ftqPtr_flag : _GEN_1753; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1755 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_ftqPtr_flag : _GEN_1754; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1760 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_ftqPtr_value :
    uop_0_cf_ftqPtr_value; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1761 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_ftqPtr_value : _GEN_1760; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1762 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_ftqPtr_value : _GEN_1761; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1763 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_ftqPtr_value : _GEN_1762; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1768 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_cf_ftqOffset : uop_0_cf_ftqOffset; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1769 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_cf_ftqOffset : _GEN_1768; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1770 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_cf_ftqOffset : _GEN_1769; // @[Reg.scala 17:{22,22}]
  wire [2:0] _GEN_1771 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_cf_ftqOffset : _GEN_1770; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_1848 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_ctrl_fuOpType : uop_0_ctrl_fuOpType
    ; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_1849 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_ctrl_fuOpType : _GEN_1848; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_1850 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_ctrl_fuOpType : _GEN_1849; // @[Reg.scala 17:{22,22}]
  wire [6:0] _GEN_1851 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_ctrl_fuOpType : _GEN_1850; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1856 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_ctrl_rfWen : uop_0_ctrl_rfWen; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1857 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_ctrl_rfWen : _GEN_1856; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1858 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_ctrl_rfWen : _GEN_1857; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1859 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_ctrl_rfWen : _GEN_1858; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1864 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_ctrl_fpWen : uop_0_ctrl_fpWen; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1865 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_ctrl_fpWen : _GEN_1864; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1866 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_ctrl_fpWen : _GEN_1865; // @[Reg.scala 17:{22,22}]
  wire  _GEN_1867 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_ctrl_fpWen : _GEN_1866; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_2112 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_pdest : uop_0_pdest; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_2113 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_pdest : _GEN_2112; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_2114 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_pdest : _GEN_2113; // @[Reg.scala 17:{22,22}]
  wire [5:0] _GEN_2115 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_pdest : _GEN_2114; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2120 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_lqIdx_flag : uop_0_lqIdx_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2121 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_lqIdx_flag : _GEN_2120; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2122 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_lqIdx_flag : _GEN_2121; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2123 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_lqIdx_flag : _GEN_2122; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2128 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_lqIdx_value : uop_0_lqIdx_value; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2129 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_lqIdx_value : _GEN_2128; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2130 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_lqIdx_value : _GEN_2129; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2131 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_lqIdx_value : _GEN_2130; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2136 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_sqIdx_flag : uop_0_sqIdx_flag; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2137 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_sqIdx_flag : _GEN_2136; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2138 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_sqIdx_flag : _GEN_2137; // @[Reg.scala 17:{22,22}]
  wire  _GEN_2139 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_sqIdx_flag : _GEN_2138; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2144 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_1_sqIdx_value : uop_0_sqIdx_value; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2145 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_2_sqIdx_value : _GEN_2144; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2146 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_3_sqIdx_value : _GEN_2145; // @[Reg.scala 17:{22,22}]
  wire [3:0] _GEN_2147 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? uop_4_sqIdx_value : _GEN_2146; // @[Reg.scala 17:{22,22}]
  reg [1:0] s2_replayMSHRId_1; // @[Reg.scala 16:16]
  wire [1:0] _GEN_2356 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? missMSHRId_1 : missMSHRId_0; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_2357 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? missMSHRId_2 : _GEN_2356; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_2358 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? missMSHRId_3 : _GEN_2357; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_2359 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? missMSHRId_4 : _GEN_2358; // @[Reg.scala 17:{22,22}]
  reg [9:0] s2_replayCauses_1; // @[Reg.scala 16:16]
  wire [9:0] _GEN_2383 = 3'h1 == s1_balanceOldestSel_reorderSel_1_bits_index ? cause_1 : cause_0; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_2384 = 3'h2 == s1_balanceOldestSel_reorderSel_1_bits_index ? cause_2 : _GEN_2383; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_2385 = 3'h3 == s1_balanceOldestSel_reorderSel_1_bits_index ? cause_3 : _GEN_2384; // @[Reg.scala 17:{22,22}]
  wire [9:0] _GEN_2386 = 3'h4 == s1_balanceOldestSel_reorderSel_1_bits_index ? cause_4 : _GEN_2385; // @[Reg.scala 17:{22,22}]
  wire  _T_143 = io_replay_1_ready & io_replay_1_valid; // @[Decoupled.scala 50:35]
  wire [3:0] s2_oldestSel_1_bits = {{1'd0}, s2_oldestSel_1_bits_r}; // @[LoadQueueReplay.scala 359:26 530:27]
  reg  lastReplay_0; // @[LoadQueueReplay.scala 567:27]
  reg  lastReplay_1; // @[LoadQueueReplay.scala 567:27]
  wire [3:0] _coldCounter_0_T_1 = coldCounter_0 + 4'h1; // @[LoadQueueReplay.scala 570:40]
  wire  _T_148 = coldCounter_0 >= 4'hc; // @[LoadQueueReplay.scala 500:44]
  wire [3:0] _coldCounter_1_T_1 = coldCounter_1 + 4'h1; // @[LoadQueueReplay.scala 570:40]
  wire  _T_151 = coldCounter_1 >= 4'hc; // @[LoadQueueReplay.scala 500:44]
  wire  _GEN_6922 = 3'h0 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2438 = 3'h0 == enqIndex | allocated_0; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6923 = 3'h1 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2439 = 3'h1 == enqIndex | allocated_1; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6924 = 3'h2 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2440 = 3'h2 == enqIndex | allocated_2; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6925 = 3'h3 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2441 = 3'h3 == enqIndex | allocated_3; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6926 = 3'h4 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2442 = 3'h4 == enqIndex | allocated_4; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6927 = 3'h5 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2443 = 3'h5 == enqIndex | allocated_5; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6928 = 3'h6 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2444 = 3'h6 == enqIndex | allocated_6; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_6929 = 3'h7 == enqIndex; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2445 = 3'h7 == enqIndex | allocated_7; // @[LoadQueueReplay.scala 198:26 615:{27,27}]
  wire  _GEN_2446 = 3'h0 == enqIndex ? 1'h0 : _GEN_328; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2447 = 3'h1 == enqIndex ? 1'h0 : _GEN_329; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2448 = 3'h2 == enqIndex ? 1'h0 : _GEN_330; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2449 = 3'h3 == enqIndex ? 1'h0 : _GEN_331; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2450 = 3'h4 == enqIndex ? 1'h0 : _GEN_332; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2451 = 3'h5 == enqIndex ? 1'h0 : _GEN_333; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2452 = 3'h6 == enqIndex ? 1'h0 : _GEN_334; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2453 = 3'h7 == enqIndex ? 1'h0 : _GEN_335; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_2582 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_0_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2583 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_1_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2584 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_2_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2585 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_3_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2586 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_4_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2587 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_5_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2588 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_6_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2589 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_exceptionVec_13 : uop_7_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2646 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_0_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2647 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_1_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2648 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_2_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2649 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_3_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2650 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_4_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2651 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_5_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2652 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_6_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2653 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendEn_1 : uop_7_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2654 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_0_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2655 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_1_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2656 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_2_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2657 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_3_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2658 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_4_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2659 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_5_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2660 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_6_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2661 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_0 : uop_7_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2662 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_0_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2663 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_1_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2664 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_2_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2665 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_3_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2666 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_4_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2667 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_5_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2668 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_6_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2669 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_1 : uop_7_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2686 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_0_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2687 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_1_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2688 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_2_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2689 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_3_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2690 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_4_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2691 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_5_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2692 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_6_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2693 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_trigger_backendHit_4 : uop_7_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2758 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_0_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2759 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_1_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2760 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_2_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2761 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_3_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2762 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_4_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2763 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_5_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2764 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_6_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2765 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_storeSetHit : uop_7_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2790 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_0_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2791 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_1_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2792 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_2_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2793 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_3_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2794 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_4_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2795 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_5_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2796 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_6_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2797 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_loadWaitStrict : uop_7_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2798 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_0_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2799 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_1_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2800 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_2_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2801 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_3_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2802 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_4_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2803 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_5_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2804 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_6_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_2805 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_ssid : uop_7_cf_ssid; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2806 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_0_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2807 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_1_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2808 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_2_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2809 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_3_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2810 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_4_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2811 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_5_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2812 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_6_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2813 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_flag : uop_7_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2814 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_0_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2815 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_1_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2816 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_2_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2817 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_3_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2818 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_4_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2819 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_5_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2820 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_6_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2821 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_ftqPtr_value : uop_7_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2822 = 3'h0 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_0_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2823 = 3'h1 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_1_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2824 = 3'h2 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_2_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2825 = 3'h3 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_3_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2826 = 3'h4 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_4_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2827 = 3'h5 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_5_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2828 = 3'h6 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_6_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [2:0] _GEN_2829 = 3'h7 == enqIndex ? io_enq_0_bits_uop_cf_ftqOffset : uop_7_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2902 = 3'h0 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_0_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2903 = 3'h1 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_1_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2904 = 3'h2 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_2_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2905 = 3'h3 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_3_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2906 = 3'h4 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_4_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2907 = 3'h5 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_5_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2908 = 3'h6 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_6_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [6:0] _GEN_2909 = 3'h7 == enqIndex ? io_enq_0_bits_uop_ctrl_fuOpType : uop_7_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2910 = 3'h0 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_0_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2911 = 3'h1 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_1_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2912 = 3'h2 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_2_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2913 = 3'h3 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_3_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2914 = 3'h4 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_4_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2915 = 3'h5 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_5_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2916 = 3'h6 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_6_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2917 = 3'h7 == enqIndex ? io_enq_0_bits_uop_ctrl_rfWen : uop_7_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2918 = 3'h0 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_0_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2919 = 3'h1 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_1_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2920 = 3'h2 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_2_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2921 = 3'h3 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_3_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2922 = 3'h4 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_4_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2923 = 3'h5 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_5_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2924 = 3'h6 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_6_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_2925 = 3'h7 == enqIndex ? io_enq_0_bits_uop_ctrl_fpWen : uop_7_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3166 = 3'h0 == enqIndex ? io_enq_0_bits_uop_pdest : uop_0_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3167 = 3'h1 == enqIndex ? io_enq_0_bits_uop_pdest : uop_1_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3168 = 3'h2 == enqIndex ? io_enq_0_bits_uop_pdest : uop_2_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3169 = 3'h3 == enqIndex ? io_enq_0_bits_uop_pdest : uop_3_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3170 = 3'h4 == enqIndex ? io_enq_0_bits_uop_pdest : uop_4_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3171 = 3'h5 == enqIndex ? io_enq_0_bits_uop_pdest : uop_5_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3172 = 3'h6 == enqIndex ? io_enq_0_bits_uop_pdest : uop_6_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [5:0] _GEN_3173 = 3'h7 == enqIndex ? io_enq_0_bits_uop_pdest : uop_7_pdest; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3174 = 3'h0 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3175 = 3'h1 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_1_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3176 = 3'h2 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3177 = 3'h3 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_3_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3178 = 3'h4 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3179 = 3'h5 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_5_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3180 = 3'h6 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3181 = 3'h7 == enqIndex ? io_enq_0_bits_uop_robIdx_flag : uop_7_robIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3182 = 3'h0 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_0_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3183 = 3'h1 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_1_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3184 = 3'h2 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_2_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3185 = 3'h3 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_3_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3186 = 3'h4 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_4_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3187 = 3'h5 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_5_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3188 = 3'h6 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_6_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [4:0] _GEN_3189 = 3'h7 == enqIndex ? io_enq_0_bits_uop_robIdx_value : uop_7_robIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3190 = 3'h0 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_0_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3191 = 3'h1 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_1_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3192 = 3'h2 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_2_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3193 = 3'h3 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_3_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3194 = 3'h4 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_4_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3195 = 3'h5 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_5_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3196 = 3'h6 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_6_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3197 = 3'h7 == enqIndex ? io_enq_0_bits_uop_lqIdx_flag : uop_7_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3198 = 3'h0 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_0_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3199 = 3'h1 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_1_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3200 = 3'h2 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_2_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3201 = 3'h3 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_3_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3202 = 3'h4 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_4_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3203 = 3'h5 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_5_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3204 = 3'h6 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_6_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3205 = 3'h7 == enqIndex ? io_enq_0_bits_uop_lqIdx_value : uop_7_lqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3206 = 3'h0 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_0_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3207 = 3'h1 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_1_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3208 = 3'h2 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_2_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3209 = 3'h3 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_3_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3210 = 3'h4 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_4_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3211 = 3'h5 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_5_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3212 = 3'h6 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_6_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire  _GEN_3213 = 3'h7 == enqIndex ? io_enq_0_bits_uop_sqIdx_flag : uop_7_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3214 = 3'h0 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_0_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3215 = 3'h1 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_1_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3216 = 3'h2 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_2_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3217 = 3'h3 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_3_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3218 = 3'h4 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_4_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3219 = 3'h5 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_5_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3220 = 3'h6 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_6_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [3:0] _GEN_3221 = 3'h7 == enqIndex ? io_enq_0_bits_uop_sqIdx_value : uop_7_sqIdx_value; // @[LoadQueueReplay.scala 200:16 617:{27,27}]
  wire [38:0] _GEN_3318 = 3'h0 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_0; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3319 = 3'h1 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_1; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3320 = 3'h2 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_2; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3321 = 3'h3 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_3; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3322 = 3'h4 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_4; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3323 = 3'h5 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_5; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3324 = 3'h6 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_6; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [38:0] _GEN_3325 = 3'h7 == enqIndex ? io_enq_0_bits_vaddr : debug_vaddr_7; // @[LoadQueueReplay.scala 210:28 622:{31,31}]
  wire [9:0] _GEN_3326 = 3'h0 == enqIndex ? _needReplay_T : cause_0; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3327 = 3'h1 == enqIndex ? _needReplay_T : cause_1; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3328 = 3'h2 == enqIndex ? _needReplay_T : cause_2; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3329 = 3'h3 == enqIndex ? _needReplay_T : cause_3; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3330 = 3'h4 == enqIndex ? _needReplay_T : cause_4; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3331 = 3'h5 == enqIndex ? _needReplay_T : cause_5; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3332 = 3'h6 == enqIndex ? _needReplay_T : cause_6; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire [9:0] _GEN_3333 = 3'h7 == enqIndex ? _needReplay_T : cause_7; // @[LoadQueueReplay.scala 211:22 630:{23,23}]
  wire  _GEN_3334 = _GEN_6922 | _GEN_240; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3335 = _GEN_6923 | _GEN_242; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3336 = _GEN_6924 | _GEN_244; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3337 = _GEN_6925 | _GEN_246; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3338 = _GEN_6926 | _GEN_248; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3339 = _GEN_6927 | _GEN_250; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3340 = _GEN_6928 | _GEN_252; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_3341 = _GEN_6929 | _GEN_254; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _T_171 = io_enq_0_bits_rep_info_cause_6 | io_enq_0_bits_rep_info_cause_9; // @[LoadQueueReplay.scala 640:53]
  wire  _T_172 = _T_171 | io_enq_0_bits_rep_info_cause_3; // @[LoadQueueReplay.scala 641:53]
  wire  _GEN_3350 = 3'h0 == enqIndex ? 1'h0 : _GEN_3334; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3351 = 3'h1 == enqIndex ? 1'h0 : _GEN_3335; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3352 = 3'h2 == enqIndex ? 1'h0 : _GEN_3336; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3353 = 3'h3 == enqIndex ? 1'h0 : _GEN_3337; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3354 = 3'h4 == enqIndex ? 1'h0 : _GEN_3338; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3355 = 3'h5 == enqIndex ? 1'h0 : _GEN_3339; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3356 = 3'h6 == enqIndex ? 1'h0 : _GEN_3340; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3357 = 3'h7 == enqIndex ? 1'h0 : _GEN_3341; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_3358 = _T_172 ? _GEN_3350 : _GEN_3334; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3359 = _T_172 ? _GEN_3351 : _GEN_3335; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3360 = _T_172 ? _GEN_3352 : _GEN_3336; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3361 = _T_172 ? _GEN_3353 : _GEN_3337; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3362 = _T_172 ? _GEN_3354 : _GEN_3338; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3363 = _T_172 ? _GEN_3355 : _GEN_3339; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3364 = _T_172 ? _GEN_3356 : _GEN_3340; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_3365 = _T_172 ? _GEN_3357 : _GEN_3341; // @[LoadQueueReplay.scala 642:54]
  wire [1:0] _blockPtrTlb_T_8 = _GEN_3381 + 2'h1; // @[LoadQueueReplay.scala 651:119]
  wire [1:0] _blockPtrTlb_T_9 = _GEN_3381 == 2'h3 ? _GEN_3381 : _blockPtrTlb_T_8; // @[LoadQueueReplay.scala 651:37]
  wire [1:0] _GEN_3410 = 3'h0 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_0; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3411 = 3'h1 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_1; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3412 = 3'h2 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_2; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3413 = 3'h3 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_3; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3414 = 3'h4 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_4; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3415 = 3'h5 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_5; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3416 = 3'h6 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_6; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3417 = 3'h7 == enqIndex ? _blockPtrTlb_T_9 : blockPtrTlb_7; // @[LoadQueueReplay.scala 232:28 651:{31,31}]
  wire [1:0] _GEN_3426 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3410 : blockPtrTlb_0; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3427 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3411 : blockPtrTlb_1; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3428 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3412 : blockPtrTlb_2; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3429 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3413 : blockPtrTlb_3; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3430 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3414 : blockPtrTlb_4; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3431 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3415 : blockPtrTlb_5; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3432 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3416 : blockPtrTlb_6; // @[LoadQueueReplay.scala 232:28 649:54]
  wire [1:0] _GEN_3433 = io_enq_0_bits_rep_info_cause_1 ? _GEN_3417 : blockPtrTlb_7; // @[LoadQueueReplay.scala 232:28 649:54]
  wire  _blocking_T_3 = ~(io_tl_d_channel_valid & io_tl_d_channel_mshrid == io_enq_0_bits_rep_info_mshr_id); // @[LoadQueueReplay.scala 657:31]
  wire  _GEN_3434 = 3'h0 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3358; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3435 = 3'h1 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3359; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3436 = 3'h2 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3360; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3437 = 3'h3 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3361; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3438 = 3'h4 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3362; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3439 = 3'h5 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3363; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3440 = 3'h6 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3364; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3441 = 3'h7 == enqIndex ? ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3 : _GEN_3365; // @[LoadQueueReplay.scala 656:{28,28}]
  wire  _GEN_3442 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3434 : _GEN_3358; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3443 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3435 : _GEN_3359; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3444 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3436 : _GEN_3360; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3445 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3437 : _GEN_3361; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3446 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3438 : _GEN_3362; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3447 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3439 : _GEN_3363; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3448 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3440 : _GEN_3364; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3449 = io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR ? _GEN_3441 : _GEN_3365; // @[LoadQueueReplay.scala 655:80]
  wire  _GEN_3450 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_0_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3451 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_1_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3452 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_2_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3453 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_3_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3454 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_4_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3455 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_5_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3456 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_6_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3457 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_flag : blockSqIdx_7_flag; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3458 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_0_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3459 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_1_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3460 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_2_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3461 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_3_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3462 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_4_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3463 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_5_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3464 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_6_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire [3:0] _GEN_3465 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_addr_inv_sq_idx_value : blockSqIdx_7_value; // @[LoadQueueReplay.scala 236:23 662:{30,30}]
  wire  _GEN_3466 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3450 : blockSqIdx_0_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3467 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3451 : blockSqIdx_1_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3468 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3452 : blockSqIdx_2_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3469 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3453 : blockSqIdx_3_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3470 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3454 : blockSqIdx_4_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3471 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3455 : blockSqIdx_5_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3472 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3456 : blockSqIdx_6_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3473 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3457 : blockSqIdx_7_flag; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3474 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3458 : blockSqIdx_0_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3475 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3459 : blockSqIdx_1_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3476 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3460 : blockSqIdx_2_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3477 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3461 : blockSqIdx_3_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3478 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3462 : blockSqIdx_4_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3479 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3463 : blockSqIdx_5_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3480 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3464 : blockSqIdx_6_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire [3:0] _GEN_3481 = io_enq_0_bits_rep_info_cause_0 ? _GEN_3465 : blockSqIdx_7_value; // @[LoadQueueReplay.scala 236:23 661:54]
  wire  _GEN_3482 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3466; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3483 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3467; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3484 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3468; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3485 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3469; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3486 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3470; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3487 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3471; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3488 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3472; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3489 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_flag : _GEN_3473; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3490 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3474; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3491 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3475; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3492 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3476; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3493 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3477; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3494 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3478; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3495 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3479; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3496 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3480; // @[LoadQueueReplay.scala 667:{30,30}]
  wire [3:0] _GEN_3497 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_data_inv_sq_idx_value : _GEN_3481; // @[LoadQueueReplay.scala 667:{30,30}]
  wire  _GEN_3498 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3482 : _GEN_3466; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3499 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3483 : _GEN_3467; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3500 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3484 : _GEN_3468; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3501 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3485 : _GEN_3469; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3502 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3486 : _GEN_3470; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3503 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3487 : _GEN_3471; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3504 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3488 : _GEN_3472; // @[LoadQueueReplay.scala 666:54]
  wire  _GEN_3505 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3489 : _GEN_3473; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3506 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3490 : _GEN_3474; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3507 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3491 : _GEN_3475; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3508 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3492 : _GEN_3476; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3509 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3493 : _GEN_3477; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3510 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3494 : _GEN_3478; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3511 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3495 : _GEN_3479; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3512 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3496 : _GEN_3480; // @[LoadQueueReplay.scala 666:54]
  wire [3:0] _GEN_3513 = io_enq_0_bits_rep_info_cause_2 ? _GEN_3497 : _GEN_3481; // @[LoadQueueReplay.scala 666:54]
  wire [1:0] _GEN_3546 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_0; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3547 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_1; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3548 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_2; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3549 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_3; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3550 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_4; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3551 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_5; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3552 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_6; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3553 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_mshr_id : missMSHRId_7; // @[LoadQueueReplay.scala 238:27 675:{30,30}]
  wire [1:0] _GEN_3554 = io_enq_0_bits_handledByMSHR ? _GEN_3546 : missMSHRId_0; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3555 = io_enq_0_bits_handledByMSHR ? _GEN_3547 : missMSHRId_1; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3556 = io_enq_0_bits_handledByMSHR ? _GEN_3548 : missMSHRId_2; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3557 = io_enq_0_bits_handledByMSHR ? _GEN_3549 : missMSHRId_3; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3558 = io_enq_0_bits_handledByMSHR ? _GEN_3550 : missMSHRId_4; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3559 = io_enq_0_bits_handledByMSHR ? _GEN_3551 : missMSHRId_5; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3560 = io_enq_0_bits_handledByMSHR ? _GEN_3552 : missMSHRId_6; // @[LoadQueueReplay.scala 238:27 674:36]
  wire [1:0] _GEN_3561 = io_enq_0_bits_handledByMSHR ? _GEN_3553 : missMSHRId_7; // @[LoadQueueReplay.scala 238:27 674:36]
  wire  _GEN_3562 = 3'h0 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_0; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3563 = 3'h1 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_1; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3564 = 3'h2 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_2; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3565 = 3'h3 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_3; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3566 = 3'h4 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_4; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3567 = 3'h5 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_5; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3568 = 3'h6 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_6; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3569 = 3'h7 == enqIndex ? io_enq_0_bits_rep_info_last_beat : dataInLastBeatReg_7; // @[LoadQueueReplay.scala 249:34 677:{35,35}]
  wire  _GEN_3571 = needEnqueue_0 & io_enq_0_ready ? _GEN_2438 : allocated_0; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3572 = needEnqueue_0 & io_enq_0_ready ? _GEN_2439 : allocated_1; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3573 = needEnqueue_0 & io_enq_0_ready ? _GEN_2440 : allocated_2; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3574 = needEnqueue_0 & io_enq_0_ready ? _GEN_2441 : allocated_3; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3575 = needEnqueue_0 & io_enq_0_ready ? _GEN_2442 : allocated_4; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3576 = needEnqueue_0 & io_enq_0_ready ? _GEN_2443 : allocated_5; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3577 = needEnqueue_0 & io_enq_0_ready ? _GEN_2444 : allocated_6; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3578 = needEnqueue_0 & io_enq_0_ready ? _GEN_2445 : allocated_7; // @[LoadQueueReplay.scala 198:26 606:40]
  wire  _GEN_3579 = needEnqueue_0 & io_enq_0_ready ? _GEN_2446 : _GEN_328; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3580 = needEnqueue_0 & io_enq_0_ready ? _GEN_2447 : _GEN_329; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3581 = needEnqueue_0 & io_enq_0_ready ? _GEN_2448 : _GEN_330; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3582 = needEnqueue_0 & io_enq_0_ready ? _GEN_2449 : _GEN_331; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3583 = needEnqueue_0 & io_enq_0_ready ? _GEN_2450 : _GEN_332; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3584 = needEnqueue_0 & io_enq_0_ready ? _GEN_2451 : _GEN_333; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3585 = needEnqueue_0 & io_enq_0_ready ? _GEN_2452 : _GEN_334; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3586 = needEnqueue_0 & io_enq_0_ready ? _GEN_2453 : _GEN_335; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_3715 = needEnqueue_0 & io_enq_0_ready ? _GEN_2582 : uop_0_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3716 = needEnqueue_0 & io_enq_0_ready ? _GEN_2583 : uop_1_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3717 = needEnqueue_0 & io_enq_0_ready ? _GEN_2584 : uop_2_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3718 = needEnqueue_0 & io_enq_0_ready ? _GEN_2585 : uop_3_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3719 = needEnqueue_0 & io_enq_0_ready ? _GEN_2586 : uop_4_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3720 = needEnqueue_0 & io_enq_0_ready ? _GEN_2587 : uop_5_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3721 = needEnqueue_0 & io_enq_0_ready ? _GEN_2588 : uop_6_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3722 = needEnqueue_0 & io_enq_0_ready ? _GEN_2589 : uop_7_cf_exceptionVec_13; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3779 = needEnqueue_0 & io_enq_0_ready ? _GEN_2646 : uop_0_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3780 = needEnqueue_0 & io_enq_0_ready ? _GEN_2647 : uop_1_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3781 = needEnqueue_0 & io_enq_0_ready ? _GEN_2648 : uop_2_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3782 = needEnqueue_0 & io_enq_0_ready ? _GEN_2649 : uop_3_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3783 = needEnqueue_0 & io_enq_0_ready ? _GEN_2650 : uop_4_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3784 = needEnqueue_0 & io_enq_0_ready ? _GEN_2651 : uop_5_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3785 = needEnqueue_0 & io_enq_0_ready ? _GEN_2652 : uop_6_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3786 = needEnqueue_0 & io_enq_0_ready ? _GEN_2653 : uop_7_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3787 = needEnqueue_0 & io_enq_0_ready ? _GEN_2654 : uop_0_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3788 = needEnqueue_0 & io_enq_0_ready ? _GEN_2655 : uop_1_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3789 = needEnqueue_0 & io_enq_0_ready ? _GEN_2656 : uop_2_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3790 = needEnqueue_0 & io_enq_0_ready ? _GEN_2657 : uop_3_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3791 = needEnqueue_0 & io_enq_0_ready ? _GEN_2658 : uop_4_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3792 = needEnqueue_0 & io_enq_0_ready ? _GEN_2659 : uop_5_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3793 = needEnqueue_0 & io_enq_0_ready ? _GEN_2660 : uop_6_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3794 = needEnqueue_0 & io_enq_0_ready ? _GEN_2661 : uop_7_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3795 = needEnqueue_0 & io_enq_0_ready ? _GEN_2662 : uop_0_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3796 = needEnqueue_0 & io_enq_0_ready ? _GEN_2663 : uop_1_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3797 = needEnqueue_0 & io_enq_0_ready ? _GEN_2664 : uop_2_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3798 = needEnqueue_0 & io_enq_0_ready ? _GEN_2665 : uop_3_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3799 = needEnqueue_0 & io_enq_0_ready ? _GEN_2666 : uop_4_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3800 = needEnqueue_0 & io_enq_0_ready ? _GEN_2667 : uop_5_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3801 = needEnqueue_0 & io_enq_0_ready ? _GEN_2668 : uop_6_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3802 = needEnqueue_0 & io_enq_0_ready ? _GEN_2669 : uop_7_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3819 = needEnqueue_0 & io_enq_0_ready ? _GEN_2686 : uop_0_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3820 = needEnqueue_0 & io_enq_0_ready ? _GEN_2687 : uop_1_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3821 = needEnqueue_0 & io_enq_0_ready ? _GEN_2688 : uop_2_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3822 = needEnqueue_0 & io_enq_0_ready ? _GEN_2689 : uop_3_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3823 = needEnqueue_0 & io_enq_0_ready ? _GEN_2690 : uop_4_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3824 = needEnqueue_0 & io_enq_0_ready ? _GEN_2691 : uop_5_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3825 = needEnqueue_0 & io_enq_0_ready ? _GEN_2692 : uop_6_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3826 = needEnqueue_0 & io_enq_0_ready ? _GEN_2693 : uop_7_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3891 = needEnqueue_0 & io_enq_0_ready ? _GEN_2758 : uop_0_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3892 = needEnqueue_0 & io_enq_0_ready ? _GEN_2759 : uop_1_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3893 = needEnqueue_0 & io_enq_0_ready ? _GEN_2760 : uop_2_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3894 = needEnqueue_0 & io_enq_0_ready ? _GEN_2761 : uop_3_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3895 = needEnqueue_0 & io_enq_0_ready ? _GEN_2762 : uop_4_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3896 = needEnqueue_0 & io_enq_0_ready ? _GEN_2763 : uop_5_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3897 = needEnqueue_0 & io_enq_0_ready ? _GEN_2764 : uop_6_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3898 = needEnqueue_0 & io_enq_0_ready ? _GEN_2765 : uop_7_cf_storeSetHit; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3923 = needEnqueue_0 & io_enq_0_ready ? _GEN_2790 : uop_0_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3924 = needEnqueue_0 & io_enq_0_ready ? _GEN_2791 : uop_1_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3925 = needEnqueue_0 & io_enq_0_ready ? _GEN_2792 : uop_2_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3926 = needEnqueue_0 & io_enq_0_ready ? _GEN_2793 : uop_3_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3927 = needEnqueue_0 & io_enq_0_ready ? _GEN_2794 : uop_4_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3928 = needEnqueue_0 & io_enq_0_ready ? _GEN_2795 : uop_5_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3929 = needEnqueue_0 & io_enq_0_ready ? _GEN_2796 : uop_6_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3930 = needEnqueue_0 & io_enq_0_ready ? _GEN_2797 : uop_7_cf_loadWaitStrict; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3931 = needEnqueue_0 & io_enq_0_ready ? _GEN_2798 : uop_0_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3932 = needEnqueue_0 & io_enq_0_ready ? _GEN_2799 : uop_1_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3933 = needEnqueue_0 & io_enq_0_ready ? _GEN_2800 : uop_2_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3934 = needEnqueue_0 & io_enq_0_ready ? _GEN_2801 : uop_3_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3935 = needEnqueue_0 & io_enq_0_ready ? _GEN_2802 : uop_4_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3936 = needEnqueue_0 & io_enq_0_ready ? _GEN_2803 : uop_5_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3937 = needEnqueue_0 & io_enq_0_ready ? _GEN_2804 : uop_6_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_3938 = needEnqueue_0 & io_enq_0_ready ? _GEN_2805 : uop_7_cf_ssid; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3939 = needEnqueue_0 & io_enq_0_ready ? _GEN_2806 : uop_0_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3940 = needEnqueue_0 & io_enq_0_ready ? _GEN_2807 : uop_1_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3941 = needEnqueue_0 & io_enq_0_ready ? _GEN_2808 : uop_2_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3942 = needEnqueue_0 & io_enq_0_ready ? _GEN_2809 : uop_3_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3943 = needEnqueue_0 & io_enq_0_ready ? _GEN_2810 : uop_4_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3944 = needEnqueue_0 & io_enq_0_ready ? _GEN_2811 : uop_5_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3945 = needEnqueue_0 & io_enq_0_ready ? _GEN_2812 : uop_6_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_3946 = needEnqueue_0 & io_enq_0_ready ? _GEN_2813 : uop_7_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3947 = needEnqueue_0 & io_enq_0_ready ? _GEN_2814 : uop_0_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3948 = needEnqueue_0 & io_enq_0_ready ? _GEN_2815 : uop_1_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3949 = needEnqueue_0 & io_enq_0_ready ? _GEN_2816 : uop_2_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3950 = needEnqueue_0 & io_enq_0_ready ? _GEN_2817 : uop_3_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3951 = needEnqueue_0 & io_enq_0_ready ? _GEN_2818 : uop_4_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3952 = needEnqueue_0 & io_enq_0_ready ? _GEN_2819 : uop_5_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3953 = needEnqueue_0 & io_enq_0_ready ? _GEN_2820 : uop_6_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3954 = needEnqueue_0 & io_enq_0_ready ? _GEN_2821 : uop_7_cf_ftqPtr_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3955 = needEnqueue_0 & io_enq_0_ready ? _GEN_2822 : uop_0_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3956 = needEnqueue_0 & io_enq_0_ready ? _GEN_2823 : uop_1_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3957 = needEnqueue_0 & io_enq_0_ready ? _GEN_2824 : uop_2_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3958 = needEnqueue_0 & io_enq_0_ready ? _GEN_2825 : uop_3_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3959 = needEnqueue_0 & io_enq_0_ready ? _GEN_2826 : uop_4_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3960 = needEnqueue_0 & io_enq_0_ready ? _GEN_2827 : uop_5_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3961 = needEnqueue_0 & io_enq_0_ready ? _GEN_2828 : uop_6_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [2:0] _GEN_3962 = needEnqueue_0 & io_enq_0_ready ? _GEN_2829 : uop_7_cf_ftqOffset; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4035 = needEnqueue_0 & io_enq_0_ready ? _GEN_2902 : uop_0_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4036 = needEnqueue_0 & io_enq_0_ready ? _GEN_2903 : uop_1_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4037 = needEnqueue_0 & io_enq_0_ready ? _GEN_2904 : uop_2_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4038 = needEnqueue_0 & io_enq_0_ready ? _GEN_2905 : uop_3_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4039 = needEnqueue_0 & io_enq_0_ready ? _GEN_2906 : uop_4_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4040 = needEnqueue_0 & io_enq_0_ready ? _GEN_2907 : uop_5_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4041 = needEnqueue_0 & io_enq_0_ready ? _GEN_2908 : uop_6_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [6:0] _GEN_4042 = needEnqueue_0 & io_enq_0_ready ? _GEN_2909 : uop_7_ctrl_fuOpType; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4043 = needEnqueue_0 & io_enq_0_ready ? _GEN_2910 : uop_0_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4044 = needEnqueue_0 & io_enq_0_ready ? _GEN_2911 : uop_1_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4045 = needEnqueue_0 & io_enq_0_ready ? _GEN_2912 : uop_2_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4046 = needEnqueue_0 & io_enq_0_ready ? _GEN_2913 : uop_3_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4047 = needEnqueue_0 & io_enq_0_ready ? _GEN_2914 : uop_4_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4048 = needEnqueue_0 & io_enq_0_ready ? _GEN_2915 : uop_5_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4049 = needEnqueue_0 & io_enq_0_ready ? _GEN_2916 : uop_6_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4050 = needEnqueue_0 & io_enq_0_ready ? _GEN_2917 : uop_7_ctrl_rfWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4051 = needEnqueue_0 & io_enq_0_ready ? _GEN_2918 : uop_0_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4052 = needEnqueue_0 & io_enq_0_ready ? _GEN_2919 : uop_1_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4053 = needEnqueue_0 & io_enq_0_ready ? _GEN_2920 : uop_2_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4054 = needEnqueue_0 & io_enq_0_ready ? _GEN_2921 : uop_3_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4055 = needEnqueue_0 & io_enq_0_ready ? _GEN_2922 : uop_4_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4056 = needEnqueue_0 & io_enq_0_ready ? _GEN_2923 : uop_5_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4057 = needEnqueue_0 & io_enq_0_ready ? _GEN_2924 : uop_6_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4058 = needEnqueue_0 & io_enq_0_ready ? _GEN_2925 : uop_7_ctrl_fpWen; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4299 = needEnqueue_0 & io_enq_0_ready ? _GEN_3166 : uop_0_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4300 = needEnqueue_0 & io_enq_0_ready ? _GEN_3167 : uop_1_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4301 = needEnqueue_0 & io_enq_0_ready ? _GEN_3168 : uop_2_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4302 = needEnqueue_0 & io_enq_0_ready ? _GEN_3169 : uop_3_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4303 = needEnqueue_0 & io_enq_0_ready ? _GEN_3170 : uop_4_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4304 = needEnqueue_0 & io_enq_0_ready ? _GEN_3171 : uop_5_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4305 = needEnqueue_0 & io_enq_0_ready ? _GEN_3172 : uop_6_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [5:0] _GEN_4306 = needEnqueue_0 & io_enq_0_ready ? _GEN_3173 : uop_7_pdest; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4307 = needEnqueue_0 & io_enq_0_ready ? _GEN_3174 : uop_0_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4308 = needEnqueue_0 & io_enq_0_ready ? _GEN_3175 : uop_1_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4309 = needEnqueue_0 & io_enq_0_ready ? _GEN_3176 : uop_2_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4310 = needEnqueue_0 & io_enq_0_ready ? _GEN_3177 : uop_3_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4311 = needEnqueue_0 & io_enq_0_ready ? _GEN_3178 : uop_4_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4312 = needEnqueue_0 & io_enq_0_ready ? _GEN_3179 : uop_5_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4313 = needEnqueue_0 & io_enq_0_ready ? _GEN_3180 : uop_6_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4314 = needEnqueue_0 & io_enq_0_ready ? _GEN_3181 : uop_7_robIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4315 = needEnqueue_0 & io_enq_0_ready ? _GEN_3182 : uop_0_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4316 = needEnqueue_0 & io_enq_0_ready ? _GEN_3183 : uop_1_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4317 = needEnqueue_0 & io_enq_0_ready ? _GEN_3184 : uop_2_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4318 = needEnqueue_0 & io_enq_0_ready ? _GEN_3185 : uop_3_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4319 = needEnqueue_0 & io_enq_0_ready ? _GEN_3186 : uop_4_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4320 = needEnqueue_0 & io_enq_0_ready ? _GEN_3187 : uop_5_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4321 = needEnqueue_0 & io_enq_0_ready ? _GEN_3188 : uop_6_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [4:0] _GEN_4322 = needEnqueue_0 & io_enq_0_ready ? _GEN_3189 : uop_7_robIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4323 = needEnqueue_0 & io_enq_0_ready ? _GEN_3190 : uop_0_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4324 = needEnqueue_0 & io_enq_0_ready ? _GEN_3191 : uop_1_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4325 = needEnqueue_0 & io_enq_0_ready ? _GEN_3192 : uop_2_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4326 = needEnqueue_0 & io_enq_0_ready ? _GEN_3193 : uop_3_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4327 = needEnqueue_0 & io_enq_0_ready ? _GEN_3194 : uop_4_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4328 = needEnqueue_0 & io_enq_0_ready ? _GEN_3195 : uop_5_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4329 = needEnqueue_0 & io_enq_0_ready ? _GEN_3196 : uop_6_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4330 = needEnqueue_0 & io_enq_0_ready ? _GEN_3197 : uop_7_lqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4331 = needEnqueue_0 & io_enq_0_ready ? _GEN_3198 : uop_0_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4332 = needEnqueue_0 & io_enq_0_ready ? _GEN_3199 : uop_1_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4333 = needEnqueue_0 & io_enq_0_ready ? _GEN_3200 : uop_2_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4334 = needEnqueue_0 & io_enq_0_ready ? _GEN_3201 : uop_3_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4335 = needEnqueue_0 & io_enq_0_ready ? _GEN_3202 : uop_4_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4336 = needEnqueue_0 & io_enq_0_ready ? _GEN_3203 : uop_5_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4337 = needEnqueue_0 & io_enq_0_ready ? _GEN_3204 : uop_6_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4338 = needEnqueue_0 & io_enq_0_ready ? _GEN_3205 : uop_7_lqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4339 = needEnqueue_0 & io_enq_0_ready ? _GEN_3206 : uop_0_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4340 = needEnqueue_0 & io_enq_0_ready ? _GEN_3207 : uop_1_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4341 = needEnqueue_0 & io_enq_0_ready ? _GEN_3208 : uop_2_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4342 = needEnqueue_0 & io_enq_0_ready ? _GEN_3209 : uop_3_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4343 = needEnqueue_0 & io_enq_0_ready ? _GEN_3210 : uop_4_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4344 = needEnqueue_0 & io_enq_0_ready ? _GEN_3211 : uop_5_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4345 = needEnqueue_0 & io_enq_0_ready ? _GEN_3212 : uop_6_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire  _GEN_4346 = needEnqueue_0 & io_enq_0_ready ? _GEN_3213 : uop_7_sqIdx_flag; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4347 = needEnqueue_0 & io_enq_0_ready ? _GEN_3214 : uop_0_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4348 = needEnqueue_0 & io_enq_0_ready ? _GEN_3215 : uop_1_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4349 = needEnqueue_0 & io_enq_0_ready ? _GEN_3216 : uop_2_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4350 = needEnqueue_0 & io_enq_0_ready ? _GEN_3217 : uop_3_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4351 = needEnqueue_0 & io_enq_0_ready ? _GEN_3218 : uop_4_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4352 = needEnqueue_0 & io_enq_0_ready ? _GEN_3219 : uop_5_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4353 = needEnqueue_0 & io_enq_0_ready ? _GEN_3220 : uop_6_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [3:0] _GEN_4354 = needEnqueue_0 & io_enq_0_ready ? _GEN_3221 : uop_7_sqIdx_value; // @[LoadQueueReplay.scala 200:16 606:40]
  wire [38:0] _GEN_4454 = needEnqueue_0 & io_enq_0_ready ? _GEN_3318 : debug_vaddr_0; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4455 = needEnqueue_0 & io_enq_0_ready ? _GEN_3319 : debug_vaddr_1; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4456 = needEnqueue_0 & io_enq_0_ready ? _GEN_3320 : debug_vaddr_2; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4457 = needEnqueue_0 & io_enq_0_ready ? _GEN_3321 : debug_vaddr_3; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4458 = needEnqueue_0 & io_enq_0_ready ? _GEN_3322 : debug_vaddr_4; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4459 = needEnqueue_0 & io_enq_0_ready ? _GEN_3323 : debug_vaddr_5; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4460 = needEnqueue_0 & io_enq_0_ready ? _GEN_3324 : debug_vaddr_6; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [38:0] _GEN_4461 = needEnqueue_0 & io_enq_0_ready ? _GEN_3325 : debug_vaddr_7; // @[LoadQueueReplay.scala 210:28 606:40]
  wire [9:0] _GEN_4462 = needEnqueue_0 & io_enq_0_ready ? _GEN_3326 : cause_0; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4463 = needEnqueue_0 & io_enq_0_ready ? _GEN_3327 : cause_1; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4464 = needEnqueue_0 & io_enq_0_ready ? _GEN_3328 : cause_2; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4465 = needEnqueue_0 & io_enq_0_ready ? _GEN_3329 : cause_3; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4466 = needEnqueue_0 & io_enq_0_ready ? _GEN_3330 : cause_4; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4467 = needEnqueue_0 & io_enq_0_ready ? _GEN_3331 : cause_5; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4468 = needEnqueue_0 & io_enq_0_ready ? _GEN_3332 : cause_6; // @[LoadQueueReplay.scala 211:22 606:40]
  wire [9:0] _GEN_4469 = needEnqueue_0 & io_enq_0_ready ? _GEN_3333 : cause_7; // @[LoadQueueReplay.scala 211:22 606:40]
  wire  _GEN_4470 = needEnqueue_0 & io_enq_0_ready ? _GEN_3442 : _GEN_240; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4471 = needEnqueue_0 & io_enq_0_ready ? _GEN_3443 : _GEN_242; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4472 = needEnqueue_0 & io_enq_0_ready ? _GEN_3444 : _GEN_244; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4473 = needEnqueue_0 & io_enq_0_ready ? _GEN_3445 : _GEN_246; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4474 = needEnqueue_0 & io_enq_0_ready ? _GEN_3446 : _GEN_248; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4475 = needEnqueue_0 & io_enq_0_ready ? _GEN_3447 : _GEN_250; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4476 = needEnqueue_0 & io_enq_0_ready ? _GEN_3448 : _GEN_252; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_4477 = needEnqueue_0 & io_enq_0_ready ? _GEN_3449 : _GEN_254; // @[LoadQueueReplay.scala 606:40]
  wire [1:0] _GEN_4486 = needEnqueue_0 & io_enq_0_ready ? _GEN_3426 : blockPtrTlb_0; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4487 = needEnqueue_0 & io_enq_0_ready ? _GEN_3427 : blockPtrTlb_1; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4488 = needEnqueue_0 & io_enq_0_ready ? _GEN_3428 : blockPtrTlb_2; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4489 = needEnqueue_0 & io_enq_0_ready ? _GEN_3429 : blockPtrTlb_3; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4490 = needEnqueue_0 & io_enq_0_ready ? _GEN_3430 : blockPtrTlb_4; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4491 = needEnqueue_0 & io_enq_0_ready ? _GEN_3431 : blockPtrTlb_5; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4492 = needEnqueue_0 & io_enq_0_ready ? _GEN_3432 : blockPtrTlb_6; // @[LoadQueueReplay.scala 232:28 606:40]
  wire [1:0] _GEN_4493 = needEnqueue_0 & io_enq_0_ready ? _GEN_3433 : blockPtrTlb_7; // @[LoadQueueReplay.scala 232:28 606:40]
  wire  _GEN_4494 = needEnqueue_0 & io_enq_0_ready ? _GEN_3498 : blockSqIdx_0_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4495 = needEnqueue_0 & io_enq_0_ready ? _GEN_3499 : blockSqIdx_1_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4496 = needEnqueue_0 & io_enq_0_ready ? _GEN_3500 : blockSqIdx_2_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4497 = needEnqueue_0 & io_enq_0_ready ? _GEN_3501 : blockSqIdx_3_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4498 = needEnqueue_0 & io_enq_0_ready ? _GEN_3502 : blockSqIdx_4_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4499 = needEnqueue_0 & io_enq_0_ready ? _GEN_3503 : blockSqIdx_5_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4500 = needEnqueue_0 & io_enq_0_ready ? _GEN_3504 : blockSqIdx_6_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire  _GEN_4501 = needEnqueue_0 & io_enq_0_ready ? _GEN_3505 : blockSqIdx_7_flag; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4502 = needEnqueue_0 & io_enq_0_ready ? _GEN_3506 : blockSqIdx_0_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4503 = needEnqueue_0 & io_enq_0_ready ? _GEN_3507 : blockSqIdx_1_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4504 = needEnqueue_0 & io_enq_0_ready ? _GEN_3508 : blockSqIdx_2_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4505 = needEnqueue_0 & io_enq_0_ready ? _GEN_3509 : blockSqIdx_3_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4506 = needEnqueue_0 & io_enq_0_ready ? _GEN_3510 : blockSqIdx_4_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4507 = needEnqueue_0 & io_enq_0_ready ? _GEN_3511 : blockSqIdx_5_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4508 = needEnqueue_0 & io_enq_0_ready ? _GEN_3512 : blockSqIdx_6_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [3:0] _GEN_4509 = needEnqueue_0 & io_enq_0_ready ? _GEN_3513 : blockSqIdx_7_value; // @[LoadQueueReplay.scala 236:23 606:40]
  wire [1:0] _GEN_4542 = needEnqueue_0 & io_enq_0_ready ? _GEN_3554 : missMSHRId_0; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4543 = needEnqueue_0 & io_enq_0_ready ? _GEN_3555 : missMSHRId_1; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4544 = needEnqueue_0 & io_enq_0_ready ? _GEN_3556 : missMSHRId_2; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4545 = needEnqueue_0 & io_enq_0_ready ? _GEN_3557 : missMSHRId_3; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4546 = needEnqueue_0 & io_enq_0_ready ? _GEN_3558 : missMSHRId_4; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4547 = needEnqueue_0 & io_enq_0_ready ? _GEN_3559 : missMSHRId_5; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4548 = needEnqueue_0 & io_enq_0_ready ? _GEN_3560 : missMSHRId_6; // @[LoadQueueReplay.scala 238:27 606:40]
  wire [1:0] _GEN_4549 = needEnqueue_0 & io_enq_0_ready ? _GEN_3561 : missMSHRId_7; // @[LoadQueueReplay.scala 238:27 606:40]
  wire  _GEN_4550 = needEnqueue_0 & io_enq_0_ready ? _GEN_3562 : dataInLastBeatReg_0; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4551 = needEnqueue_0 & io_enq_0_ready ? _GEN_3563 : dataInLastBeatReg_1; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4552 = needEnqueue_0 & io_enq_0_ready ? _GEN_3564 : dataInLastBeatReg_2; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4553 = needEnqueue_0 & io_enq_0_ready ? _GEN_3565 : dataInLastBeatReg_3; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4554 = needEnqueue_0 & io_enq_0_ready ? _GEN_3566 : dataInLastBeatReg_4; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4555 = needEnqueue_0 & io_enq_0_ready ? _GEN_3567 : dataInLastBeatReg_5; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4556 = needEnqueue_0 & io_enq_0_ready ? _GEN_3568 : dataInLastBeatReg_6; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4557 = needEnqueue_0 & io_enq_0_ready ? _GEN_3569 : dataInLastBeatReg_7; // @[LoadQueueReplay.scala 249:34 606:40]
  wire  _GEN_4558 = 3'h0 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3571; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4559 = 3'h1 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3572; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4560 = 3'h2 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3573; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4561 = 3'h3 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3574; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4562 = 3'h4 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3575; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4563 = 3'h5 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3576; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4564 = 3'h6 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3577; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4565 = 3'h7 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3578; // @[LoadQueueReplay.scala 684:{31,31}]
  wire  _GEN_4566 = 3'h0 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4567 = 3'h1 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4568 = 3'h2 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4569 = 3'h3 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4570 = 3'h4 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4571 = 3'h5 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4572 = 3'h6 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4573 = 3'h7 == io_enq_0_bits_schedIndex; // @[LoadQueueReplay.scala 586:26 685:{33,33}]
  wire  _GEN_4574 = 3'h0 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3579; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4575 = 3'h1 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3580; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4576 = 3'h2 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3581; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4577 = 3'h3 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3582; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4578 = 3'h4 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3583; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4579 = 3'h5 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3584; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4580 = 3'h6 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3585; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4581 = 3'h7 == io_enq_0_bits_schedIndex ? 1'h0 : _GEN_3586; // @[LoadQueueReplay.scala 687:{31,31}]
  wire  _GEN_4582 = _canFreeVec_T_2 ? _GEN_4558 : _GEN_3571; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4583 = _canFreeVec_T_2 ? _GEN_4559 : _GEN_3572; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4584 = _canFreeVec_T_2 ? _GEN_4560 : _GEN_3573; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4585 = _canFreeVec_T_2 ? _GEN_4561 : _GEN_3574; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4586 = _canFreeVec_T_2 ? _GEN_4562 : _GEN_3575; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4587 = _canFreeVec_T_2 ? _GEN_4563 : _GEN_3576; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4588 = _canFreeVec_T_2 ? _GEN_4564 : _GEN_3577; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4589 = _canFreeVec_T_2 ? _GEN_4565 : _GEN_3578; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4590 = _canFreeVec_T_2 & _GEN_4566; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4591 = _canFreeVec_T_2 & _GEN_4567; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4592 = _canFreeVec_T_2 & _GEN_4568; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4593 = _canFreeVec_T_2 & _GEN_4569; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4594 = _canFreeVec_T_2 & _GEN_4570; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4595 = _canFreeVec_T_2 & _GEN_4571; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4596 = _canFreeVec_T_2 & _GEN_4572; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4597 = _canFreeVec_T_2 & _GEN_4573; // @[LoadQueueReplay.scala 586:26 683:49]
  wire  _GEN_4598 = _canFreeVec_T_2 ? _GEN_3579 : _GEN_4574; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4599 = _canFreeVec_T_2 ? _GEN_3580 : _GEN_4575; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4600 = _canFreeVec_T_2 ? _GEN_3581 : _GEN_4576; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4601 = _canFreeVec_T_2 ? _GEN_3582 : _GEN_4577; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4602 = _canFreeVec_T_2 ? _GEN_3583 : _GEN_4578; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4603 = _canFreeVec_T_2 ? _GEN_3584 : _GEN_4579; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4604 = _canFreeVec_T_2 ? _GEN_3585 : _GEN_4580; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4605 = _canFreeVec_T_2 ? _GEN_3586 : _GEN_4581; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_4606 = _canFreeVec_T ? _GEN_4582 : _GEN_3571; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4607 = _canFreeVec_T ? _GEN_4583 : _GEN_3572; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4608 = _canFreeVec_T ? _GEN_4584 : _GEN_3573; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4609 = _canFreeVec_T ? _GEN_4585 : _GEN_3574; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4610 = _canFreeVec_T ? _GEN_4586 : _GEN_3575; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4611 = _canFreeVec_T ? _GEN_4587 : _GEN_3576; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4612 = _canFreeVec_T ? _GEN_4588 : _GEN_3577; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4613 = _canFreeVec_T ? _GEN_4589 : _GEN_3578; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4614 = _canFreeVec_T & _GEN_4590; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4615 = _canFreeVec_T & _GEN_4591; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4616 = _canFreeVec_T & _GEN_4592; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4617 = _canFreeVec_T & _GEN_4593; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4618 = _canFreeVec_T & _GEN_4594; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4619 = _canFreeVec_T & _GEN_4595; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4620 = _canFreeVec_T & _GEN_4596; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4621 = _canFreeVec_T & _GEN_4597; // @[LoadQueueReplay.scala 586:26 682:47]
  wire  _GEN_4622 = _canFreeVec_T ? _GEN_4598 : _GEN_3579; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4623 = _canFreeVec_T ? _GEN_4599 : _GEN_3580; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4624 = _canFreeVec_T ? _GEN_4600 : _GEN_3581; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4625 = _canFreeVec_T ? _GEN_4601 : _GEN_3582; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4626 = _canFreeVec_T ? _GEN_4602 : _GEN_3583; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4627 = _canFreeVec_T ? _GEN_4603 : _GEN_3584; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4628 = _canFreeVec_T ? _GEN_4604 : _GEN_3585; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4629 = _canFreeVec_T ? _GEN_4605 : _GEN_3586; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_4633 = newEnqueue_0 ? freeList_io_canAllocate_1 : freeList_io_canAllocate_0; // @[LoadQueueReplay.scala 604:{21,21}]
  wire  _GEN_6938 = 3'h0 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4642 = 3'h0 == enqIndex_1 | _GEN_4606; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6939 = 3'h1 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4643 = 3'h1 == enqIndex_1 | _GEN_4607; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6940 = 3'h2 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4644 = 3'h2 == enqIndex_1 | _GEN_4608; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6941 = 3'h3 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4645 = 3'h3 == enqIndex_1 | _GEN_4609; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6942 = 3'h4 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4646 = 3'h4 == enqIndex_1 | _GEN_4610; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6943 = 3'h5 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4647 = 3'h5 == enqIndex_1 | _GEN_4611; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6944 = 3'h6 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4648 = 3'h6 == enqIndex_1 | _GEN_4612; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_6945 = 3'h7 == enqIndex_1; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4649 = 3'h7 == enqIndex_1 | _GEN_4613; // @[LoadQueueReplay.scala 615:{27,27}]
  wire  _GEN_4650 = 3'h0 == enqIndex_1 ? 1'h0 : _GEN_4622; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4651 = 3'h1 == enqIndex_1 ? 1'h0 : _GEN_4623; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4652 = 3'h2 == enqIndex_1 ? 1'h0 : _GEN_4624; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4653 = 3'h3 == enqIndex_1 ? 1'h0 : _GEN_4625; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4654 = 3'h4 == enqIndex_1 ? 1'h0 : _GEN_4626; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4655 = 3'h5 == enqIndex_1 ? 1'h0 : _GEN_4627; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4656 = 3'h6 == enqIndex_1 ? 1'h0 : _GEN_4628; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_4657 = 3'h7 == enqIndex_1 ? 1'h0 : _GEN_4629; // @[LoadQueueReplay.scala 616:{27,27}]
  wire  _GEN_5538 = _GEN_6938 | _GEN_4470; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5539 = _GEN_6939 | _GEN_4471; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5540 = _GEN_6940 | _GEN_4472; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5541 = _GEN_6941 | _GEN_4473; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5542 = _GEN_6942 | _GEN_4474; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5543 = _GEN_6943 | _GEN_4475; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5544 = _GEN_6944 | _GEN_4476; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _GEN_5545 = _GEN_6945 | _GEN_4477; // @[LoadQueueReplay.scala 636:{30,30}]
  wire  _T_218 = io_enq_1_bits_rep_info_cause_6 | io_enq_1_bits_rep_info_cause_9; // @[LoadQueueReplay.scala 640:53]
  wire  _T_219 = _T_218 | io_enq_1_bits_rep_info_cause_3; // @[LoadQueueReplay.scala 641:53]
  wire  _GEN_5554 = 3'h0 == enqIndex_1 ? 1'h0 : _GEN_5538; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5555 = 3'h1 == enqIndex_1 ? 1'h0 : _GEN_5539; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5556 = 3'h2 == enqIndex_1 ? 1'h0 : _GEN_5540; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5557 = 3'h3 == enqIndex_1 ? 1'h0 : _GEN_5541; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5558 = 3'h4 == enqIndex_1 ? 1'h0 : _GEN_5542; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5559 = 3'h5 == enqIndex_1 ? 1'h0 : _GEN_5543; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5560 = 3'h6 == enqIndex_1 ? 1'h0 : _GEN_5544; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5561 = 3'h7 == enqIndex_1 ? 1'h0 : _GEN_5545; // @[LoadQueueReplay.scala 645:{28,28}]
  wire  _GEN_5562 = _T_219 ? _GEN_5554 : _GEN_5538; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5563 = _T_219 ? _GEN_5555 : _GEN_5539; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5564 = _T_219 ? _GEN_5556 : _GEN_5540; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5565 = _T_219 ? _GEN_5557 : _GEN_5541; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5566 = _T_219 ? _GEN_5558 : _GEN_5542; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5567 = _T_219 ? _GEN_5559 : _GEN_5543; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5568 = _T_219 ? _GEN_5560 : _GEN_5544; // @[LoadQueueReplay.scala 642:54]
  wire  _GEN_5569 = _T_219 ? _GEN_5561 : _GEN_5545; // @[LoadQueueReplay.scala 642:54]
  wire [1:0] _blockPtrTlb_T_18 = _GEN_5585 + 2'h1; // @[LoadQueueReplay.scala 651:119]
  wire  _blocking_T_8 = ~(io_tl_d_channel_valid & io_tl_d_channel_mshrid == io_enq_1_bits_rep_info_mshr_id); // @[LoadQueueReplay.scala 657:31]
  wire  _GEN_5654 = 3'h0 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4494; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5655 = 3'h1 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4495; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5656 = 3'h2 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4496; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5657 = 3'h3 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4497; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5658 = 3'h4 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4498; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5659 = 3'h5 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4499; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5660 = 3'h6 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4500; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5661 = 3'h7 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_flag : _GEN_4501; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5662 = 3'h0 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4502; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5663 = 3'h1 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4503; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5664 = 3'h2 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4504; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5665 = 3'h3 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4505; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5666 = 3'h4 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4506; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5667 = 3'h5 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4507; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5668 = 3'h6 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4508; // @[LoadQueueReplay.scala 662:{30,30}]
  wire [3:0] _GEN_5669 = 3'h7 == enqIndex_1 ? io_enq_1_bits_rep_info_addr_inv_sq_idx_value : _GEN_4509; // @[LoadQueueReplay.scala 662:{30,30}]
  wire  _GEN_5670 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5654 : _GEN_4494; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5671 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5655 : _GEN_4495; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5672 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5656 : _GEN_4496; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5673 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5657 : _GEN_4497; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5674 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5658 : _GEN_4498; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5675 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5659 : _GEN_4499; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5676 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5660 : _GEN_4500; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5677 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5661 : _GEN_4501; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5678 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5662 : _GEN_4502; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5679 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5663 : _GEN_4503; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5680 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5664 : _GEN_4504; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5681 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5665 : _GEN_4505; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5682 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5666 : _GEN_4506; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5683 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5667 : _GEN_4507; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5684 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5668 : _GEN_4508; // @[LoadQueueReplay.scala 661:54]
  wire [3:0] _GEN_5685 = io_enq_1_bits_rep_info_cause_0 ? _GEN_5669 : _GEN_4509; // @[LoadQueueReplay.scala 661:54]
  wire  _GEN_5775 = needEnqueue_1 & io_enq_1_ready ? _GEN_4642 : _GEN_4606; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5776 = needEnqueue_1 & io_enq_1_ready ? _GEN_4643 : _GEN_4607; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5777 = needEnqueue_1 & io_enq_1_ready ? _GEN_4644 : _GEN_4608; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5778 = needEnqueue_1 & io_enq_1_ready ? _GEN_4645 : _GEN_4609; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5779 = needEnqueue_1 & io_enq_1_ready ? _GEN_4646 : _GEN_4610; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5780 = needEnqueue_1 & io_enq_1_ready ? _GEN_4647 : _GEN_4611; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5781 = needEnqueue_1 & io_enq_1_ready ? _GEN_4648 : _GEN_4612; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5782 = needEnqueue_1 & io_enq_1_ready ? _GEN_4649 : _GEN_4613; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5783 = needEnqueue_1 & io_enq_1_ready ? _GEN_4650 : _GEN_4622; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5784 = needEnqueue_1 & io_enq_1_ready ? _GEN_4651 : _GEN_4623; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5785 = needEnqueue_1 & io_enq_1_ready ? _GEN_4652 : _GEN_4624; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5786 = needEnqueue_1 & io_enq_1_ready ? _GEN_4653 : _GEN_4625; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5787 = needEnqueue_1 & io_enq_1_ready ? _GEN_4654 : _GEN_4626; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5788 = needEnqueue_1 & io_enq_1_ready ? _GEN_4655 : _GEN_4627; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5789 = needEnqueue_1 & io_enq_1_ready ? _GEN_4656 : _GEN_4628; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_5790 = needEnqueue_1 & io_enq_1_ready ? _GEN_4657 : _GEN_4629; // @[LoadQueueReplay.scala 606:40]
  wire  _GEN_6770 = 3'h0 == io_enq_1_bits_schedIndex | _GEN_4614; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6771 = 3'h1 == io_enq_1_bits_schedIndex | _GEN_4615; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6772 = 3'h2 == io_enq_1_bits_schedIndex | _GEN_4616; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6773 = 3'h3 == io_enq_1_bits_schedIndex | _GEN_4617; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6774 = 3'h4 == io_enq_1_bits_schedIndex | _GEN_4618; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6775 = 3'h5 == io_enq_1_bits_schedIndex | _GEN_4619; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6776 = 3'h6 == io_enq_1_bits_schedIndex | _GEN_4620; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6777 = 3'h7 == io_enq_1_bits_schedIndex | _GEN_4621; // @[LoadQueueReplay.scala 685:{33,33}]
  wire  _GEN_6794 = _canFreeVec_T_6 ? _GEN_6770 : _GEN_4614; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6795 = _canFreeVec_T_6 ? _GEN_6771 : _GEN_4615; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6796 = _canFreeVec_T_6 ? _GEN_6772 : _GEN_4616; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6797 = _canFreeVec_T_6 ? _GEN_6773 : _GEN_4617; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6798 = _canFreeVec_T_6 ? _GEN_6774 : _GEN_4618; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6799 = _canFreeVec_T_6 ? _GEN_6775 : _GEN_4619; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6800 = _canFreeVec_T_6 ? _GEN_6776 : _GEN_4620; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6801 = _canFreeVec_T_6 ? _GEN_6777 : _GEN_4621; // @[LoadQueueReplay.scala 683:49]
  wire  _GEN_6818 = _canFreeVec_T_4 ? _GEN_6794 : _GEN_4614; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6819 = _canFreeVec_T_4 ? _GEN_6795 : _GEN_4615; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6820 = _canFreeVec_T_4 ? _GEN_6796 : _GEN_4616; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6821 = _canFreeVec_T_4 ? _GEN_6797 : _GEN_4617; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6822 = _canFreeVec_T_4 ? _GEN_6798 : _GEN_4618; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6823 = _canFreeVec_T_4 ? _GEN_6799 : _GEN_4619; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6824 = _canFreeVec_T_4 ? _GEN_6800 : _GEN_4620; // @[LoadQueueReplay.scala 682:47]
  wire  _GEN_6825 = _canFreeVec_T_4 ? _GEN_6801 : _GEN_4621; // @[LoadQueueReplay.scala 682:47]
  wire  freeMaskVec_0 = needCancel_0 | _GEN_6818; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_1 = needCancel_1 | _GEN_6819; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_2 = needCancel_2 | _GEN_6820; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_3 = needCancel_3 | _GEN_6821; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_4 = needCancel_4 | _GEN_6822; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_5 = needCancel_5 | _GEN_6823; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_6 = needCancel_6 | _GEN_6824; // @[LoadQueueReplay.scala 695:26 697:22]
  wire  freeMaskVec_7 = needCancel_7 | _GEN_6825; // @[LoadQueueReplay.scala 695:26 697:22]
  wire [3:0] freeList_io_free_lo = {freeMaskVec_3,freeMaskVec_2,freeMaskVec_1,freeMaskVec_0}; // @[LoadQueueReplay.scala 701:35]
  wire [3:0] freeList_io_free_hi = {freeMaskVec_7,freeMaskVec_6,freeMaskVec_5,freeMaskVec_4}; // @[LoadQueueReplay.scala 701:35]
  wire  lq_match_vec_0 = allocated_0 & debug_vaddr_0 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_1 = allocated_1 & debug_vaddr_1 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_2 = allocated_2 & debug_vaddr_2 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_3 = allocated_3 & debug_vaddr_3 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_4 = allocated_4 & debug_vaddr_4 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_5 = allocated_5 & debug_vaddr_5 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_6 = allocated_6 & debug_vaddr_6 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  lq_match_vec_7 = allocated_7 & debug_vaddr_7 == rob_head_vaddr_0_bits; // @[LoadQueueReplay.scala 716:80]
  wire  res_differentFlag = uop_0_robIdx_flag ^ uop_1_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare = uop_0_robIdx_value > uop_1_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_1 = res_differentFlag ^ res_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_2_uop_robIdx_flag = _res_T_1 ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_2_uop_robIdx_value = _res_T_1 ? uop_1_robIdx_value : uop_0_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_2_uop_lqIdx_value = _res_T_1 ? uop_1_lqIdx_value : uop_0_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_3_uop_robIdx_flag = lq_match_vec_1 ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_3_uop_robIdx_value = lq_match_vec_1 ? uop_1_robIdx_value : uop_0_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_3_uop_lqIdx_value = lq_match_vec_1 ? uop_1_lqIdx_value : uop_0_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_4_uop_robIdx_flag = lq_match_vec_0 ? uop_0_robIdx_flag : _res_T_3_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_4_uop_robIdx_value = lq_match_vec_0 ? uop_0_robIdx_value : _res_T_3_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_4_uop_lqIdx_value = lq_match_vec_0 ? uop_0_lqIdx_value : _res_T_3_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_uop_robIdx_flag = lq_match_vec_0 & lq_match_vec_1 ? _res_T_2_uop_robIdx_flag : _res_T_4_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_uop_robIdx_value = lq_match_vec_0 & lq_match_vec_1 ? _res_T_2_uop_robIdx_value :
    _res_T_4_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_uop_lqIdx_value = lq_match_vec_0 & lq_match_vec_1 ? _res_T_2_uop_lqIdx_value : _res_T_4_uop_lqIdx_value
    ; // @[LoadQueueReplay.scala 721:18]
  wire  _T_246 = lq_match_vec_0 | lq_match_vec_1; // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_1 = uop_2_robIdx_flag ^ uop_3_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_1 = uop_2_robIdx_value > uop_3_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_6 = res_differentFlag_1 ^ res_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_7_uop_robIdx_flag = _res_T_6 ? uop_3_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_7_uop_robIdx_value = _res_T_6 ? uop_3_robIdx_value : uop_2_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_7_uop_lqIdx_value = _res_T_6 ? uop_3_lqIdx_value : uop_2_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_8_uop_robIdx_flag = lq_match_vec_3 ? uop_3_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_8_uop_robIdx_value = lq_match_vec_3 ? uop_3_robIdx_value : uop_2_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_8_uop_lqIdx_value = lq_match_vec_3 ? uop_3_lqIdx_value : uop_2_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_9_uop_robIdx_flag = lq_match_vec_2 ? uop_2_robIdx_flag : _res_T_8_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_9_uop_robIdx_value = lq_match_vec_2 ? uop_2_robIdx_value : _res_T_8_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_9_uop_lqIdx_value = lq_match_vec_2 ? uop_2_lqIdx_value : _res_T_8_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_1_uop_robIdx_flag = lq_match_vec_2 & lq_match_vec_3 ? _res_T_7_uop_robIdx_flag : _res_T_9_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_1_uop_robIdx_value = lq_match_vec_2 & lq_match_vec_3 ? _res_T_7_uop_robIdx_value :
    _res_T_9_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_1_uop_lqIdx_value = lq_match_vec_2 & lq_match_vec_3 ? _res_T_7_uop_lqIdx_value :
    _res_T_9_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_247 = lq_match_vec_2 | lq_match_vec_3; // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_2 = res_uop_robIdx_flag ^ res_1_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_2 = res_uop_robIdx_value > res_1_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_11 = res_differentFlag_2 ^ res_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_12_uop_robIdx_flag = _res_T_11 ? res_1_uop_robIdx_flag : res_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_12_uop_robIdx_value = _res_T_11 ? res_1_uop_robIdx_value : res_uop_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_12_uop_lqIdx_value = _res_T_11 ? res_1_uop_lqIdx_value : res_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_13_uop_robIdx_flag = _T_247 ? res_1_uop_robIdx_flag : res_uop_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_13_uop_robIdx_value = _T_247 ? res_1_uop_robIdx_value : res_uop_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_13_uop_lqIdx_value = _T_247 ? res_1_uop_lqIdx_value : res_uop_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_14_uop_robIdx_flag = _T_246 ? res_uop_robIdx_flag : _res_T_13_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_14_uop_robIdx_value = _T_246 ? res_uop_robIdx_value : _res_T_13_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_14_uop_lqIdx_value = _T_246 ? res_uop_lqIdx_value : _res_T_13_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_2_uop_robIdx_flag = _T_246 & _T_247 ? _res_T_12_uop_robIdx_flag : _res_T_14_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_2_uop_robIdx_value = _T_246 & _T_247 ? _res_T_12_uop_robIdx_value : _res_T_14_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_2_uop_lqIdx_value = _T_246 & _T_247 ? _res_T_12_uop_lqIdx_value : _res_T_14_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_248 = lq_match_vec_0 | lq_match_vec_1 | (lq_match_vec_2 | lq_match_vec_3); // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_3 = uop_4_robIdx_flag ^ uop_5_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_3 = uop_4_robIdx_value > uop_5_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_16 = res_differentFlag_3 ^ res_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_17_uop_robIdx_flag = _res_T_16 ? uop_5_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_17_uop_robIdx_value = _res_T_16 ? uop_5_robIdx_value : uop_4_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_17_uop_lqIdx_value = _res_T_16 ? uop_5_lqIdx_value : uop_4_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_18_uop_robIdx_flag = lq_match_vec_5 ? uop_5_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_18_uop_robIdx_value = lq_match_vec_5 ? uop_5_robIdx_value : uop_4_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_18_uop_lqIdx_value = lq_match_vec_5 ? uop_5_lqIdx_value : uop_4_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_19_uop_robIdx_flag = lq_match_vec_4 ? uop_4_robIdx_flag : _res_T_18_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_19_uop_robIdx_value = lq_match_vec_4 ? uop_4_robIdx_value : _res_T_18_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_19_uop_lqIdx_value = lq_match_vec_4 ? uop_4_lqIdx_value : _res_T_18_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_3_uop_robIdx_flag = lq_match_vec_4 & lq_match_vec_5 ? _res_T_17_uop_robIdx_flag : _res_T_19_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_3_uop_robIdx_value = lq_match_vec_4 & lq_match_vec_5 ? _res_T_17_uop_robIdx_value :
    _res_T_19_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_3_uop_lqIdx_value = lq_match_vec_4 & lq_match_vec_5 ? _res_T_17_uop_lqIdx_value :
    _res_T_19_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_249 = lq_match_vec_4 | lq_match_vec_5; // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_4 = uop_6_robIdx_flag ^ uop_7_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_4 = uop_6_robIdx_value > uop_7_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_21 = res_differentFlag_4 ^ res_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_22_uop_robIdx_flag = _res_T_21 ? uop_7_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_22_uop_robIdx_value = _res_T_21 ? uop_7_robIdx_value : uop_6_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_22_uop_lqIdx_value = _res_T_21 ? uop_7_lqIdx_value : uop_6_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_23_uop_robIdx_flag = lq_match_vec_7 ? uop_7_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_23_uop_robIdx_value = lq_match_vec_7 ? uop_7_robIdx_value : uop_6_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_23_uop_lqIdx_value = lq_match_vec_7 ? uop_7_lqIdx_value : uop_6_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_24_uop_robIdx_flag = lq_match_vec_6 ? uop_6_robIdx_flag : _res_T_23_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_24_uop_robIdx_value = lq_match_vec_6 ? uop_6_robIdx_value : _res_T_23_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_24_uop_lqIdx_value = lq_match_vec_6 ? uop_6_lqIdx_value : _res_T_23_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_4_uop_robIdx_flag = lq_match_vec_6 & lq_match_vec_7 ? _res_T_22_uop_robIdx_flag : _res_T_24_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_4_uop_robIdx_value = lq_match_vec_6 & lq_match_vec_7 ? _res_T_22_uop_robIdx_value :
    _res_T_24_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_4_uop_lqIdx_value = lq_match_vec_6 & lq_match_vec_7 ? _res_T_22_uop_lqIdx_value :
    _res_T_24_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_250 = lq_match_vec_6 | lq_match_vec_7; // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_5 = res_3_uop_robIdx_flag ^ res_4_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_5 = res_3_uop_robIdx_value > res_4_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_26 = res_differentFlag_5 ^ res_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  _res_T_27_uop_robIdx_flag = _res_T_26 ? res_4_uop_robIdx_flag : res_3_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:34]
  wire [4:0] _res_T_27_uop_robIdx_value = _res_T_26 ? res_4_uop_robIdx_value : res_3_uop_robIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_27_uop_lqIdx_value = _res_T_26 ? res_4_uop_lqIdx_value : res_3_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire  _res_T_28_uop_robIdx_flag = _T_250 ? res_4_uop_robIdx_flag : res_3_uop_robIdx_flag; // @[LoadQueueReplay.scala 723:26]
  wire [4:0] _res_T_28_uop_robIdx_value = _T_250 ? res_4_uop_robIdx_value : res_3_uop_robIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_28_uop_lqIdx_value = _T_250 ? res_4_uop_lqIdx_value : res_3_uop_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire  _res_T_29_uop_robIdx_flag = _T_249 ? res_3_uop_robIdx_flag : _res_T_28_uop_robIdx_flag; // @[LoadQueueReplay.scala 722:22]
  wire [4:0] _res_T_29_uop_robIdx_value = _T_249 ? res_3_uop_robIdx_value : _res_T_28_uop_robIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] _res_T_29_uop_lqIdx_value = _T_249 ? res_3_uop_lqIdx_value : _res_T_28_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire  res_5_uop_robIdx_flag = _T_249 & _T_250 ? _res_T_27_uop_robIdx_flag : _res_T_29_uop_robIdx_flag; // @[LoadQueueReplay.scala 721:18]
  wire [4:0] res_5_uop_robIdx_value = _T_249 & _T_250 ? _res_T_27_uop_robIdx_value : _res_T_29_uop_robIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire [3:0] res_5_uop_lqIdx_value = _T_249 & _T_250 ? _res_T_27_uop_lqIdx_value : _res_T_29_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_251 = lq_match_vec_4 | lq_match_vec_5 | (lq_match_vec_6 | lq_match_vec_7); // @[LoadQueueReplay.scala 725:10]
  wire  res_differentFlag_6 = res_2_uop_robIdx_flag ^ res_5_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  res_compare_6 = res_2_uop_robIdx_value > res_5_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _res_T_31 = res_differentFlag_6 ^ res_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire [3:0] _res_T_32_uop_lqIdx_value = _res_T_31 ? res_5_uop_lqIdx_value : res_2_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:34]
  wire [3:0] _res_T_33_uop_lqIdx_value = _T_251 ? res_5_uop_lqIdx_value : res_2_uop_lqIdx_value; // @[LoadQueueReplay.scala 723:26]
  wire [3:0] _res_T_34_uop_lqIdx_value = _T_248 ? res_2_uop_lqIdx_value : _res_T_33_uop_lqIdx_value; // @[LoadQueueReplay.scala 722:22]
  wire [3:0] res_6_uop_lqIdx_value = _T_248 & _T_251 ? _res_T_32_uop_lqIdx_value : _res_T_34_uop_lqIdx_value; // @[LoadQueueReplay.scala 721:18]
  wire  _T_252 = lq_match_vec_0 | lq_match_vec_1 | (lq_match_vec_2 | lq_match_vec_3) | (lq_match_vec_4 | lq_match_vec_5
     | (lq_match_vec_6 | lq_match_vec_7)); // @[LoadQueueReplay.scala 725:10]
  wire  lq_match = _T_252 & rob_head_vaddr_0_valid; // @[LoadQueueReplay.scala 729:44]
  wire [9:0] _GEN_6851 = 3'h1 == res_6_uop_lqIdx_value[2:0] ? cause_1 : cause_0; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6852 = 3'h2 == res_6_uop_lqIdx_value[2:0] ? cause_2 : _GEN_6851; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6853 = 3'h3 == res_6_uop_lqIdx_value[2:0] ? cause_3 : _GEN_6852; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6854 = 3'h4 == res_6_uop_lqIdx_value[2:0] ? cause_4 : _GEN_6853; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6855 = 3'h5 == res_6_uop_lqIdx_value[2:0] ? cause_5 : _GEN_6854; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6856 = 3'h6 == res_6_uop_lqIdx_value[2:0] ? cause_6 : _GEN_6855; // @[LoadQueueReplay.scala 732:{65,65}]
  wire [9:0] _GEN_6857 = 3'h7 == res_6_uop_lqIdx_value[2:0] ? cause_7 : _GEN_6856; // @[LoadQueueReplay.scala 732:{65,65}]
  wire  rob_head_tlb_miss = lq_match & _GEN_6857[1]; // @[LoadQueueReplay.scala 732:43]
  wire  rob_head_nuke = lq_match & _GEN_6857[9]; // @[LoadQueueReplay.scala 733:43]
  wire  rob_head_mem_amb = lq_match & _GEN_6857[0]; // @[LoadQueueReplay.scala 734:43]
  wire  rob_head_forward_fail = lq_match & _GEN_6857[2]; // @[LoadQueueReplay.scala 736:43]
  wire  rob_head_mshrfull_replay = lq_match & _GEN_6857[3]; // @[LoadQueueReplay.scala 737:43]
  wire  rob_head_rar_nack = lq_match & _GEN_6857[7]; // @[LoadQueueReplay.scala 739:43]
  wire  rob_head_raw_nack = lq_match & _GEN_6857[8]; // @[LoadQueueReplay.scala 740:43]
  wire  rob_head_other_replay = lq_match & (rob_head_rar_nack | rob_head_raw_nack | rob_head_forward_fail); // @[LoadQueueReplay.scala 741:43]
  wire  rob_head_vio_replay = rob_head_nuke | rob_head_mem_amb; // @[LoadQueueReplay.scala 743:43]
  wire  _T_254 = rob_head_tlb_miss & ~miss_in_dtlb_0; // @[LoadQueueReplay.scala 747:45]
  wire  _T_255 = rob_head_tlb_miss & miss_in_dtlb_0; // @[LoadQueueReplay.scala 748:45]
  wire  _deqBlockCount_T_1 = io_replay_0_valid & ~io_replay_0_ready; // @[LoadQueueReplay.scala 758:69]
  wire  _deqBlockCount_T_3 = io_replay_1_valid & ~io_replay_1_ready; // @[LoadQueueReplay.scala 758:69]
  wire  _replayTlbMissCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_1; // @[LoadQueueReplay.scala 759:95]
  wire  _replayTlbMissCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_1; // @[LoadQueueReplay.scala 759:95]
  wire  _replayMemAmbCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_9; // @[LoadQueueReplay.scala 760:92]
  wire  _replayMemAmbCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_9; // @[LoadQueueReplay.scala 760:92]
  wire  _replayNukeCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_0; // @[LoadQueueReplay.scala 761:95]
  wire  _replayNukeCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_0; // @[LoadQueueReplay.scala 761:95]
  wire  _replayRARRejectCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_7; // @[LoadQueueReplay.scala 762:95]
  wire  _replayRARRejectCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_7; // @[LoadQueueReplay.scala 762:95]
  wire  _replayRAWRejectCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_8; // @[LoadQueueReplay.scala 763:95]
  wire  _replayRAWRejectCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_8; // @[LoadQueueReplay.scala 763:95]
  wire  _replayBankConflictCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_6; // @[LoadQueueReplay.scala 764:95]
  wire  _replayBankConflictCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_6; // @[LoadQueueReplay.scala 764:95]
  wire  _replayDCacheReplayCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_3; // @[LoadQueueReplay.scala 765:95]
  wire  _replayDCacheReplayCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_3; // @[LoadQueueReplay.scala 765:95]
  wire  _replayForwardFailCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_2; // @[LoadQueueReplay.scala 766:95]
  wire  _replayForwardFailCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_2; // @[LoadQueueReplay.scala 766:95]
  wire  _replayDCacheMissCount_T_3 = _s0_loadEnqFireMask_T_2 & io_enq_0_bits_rep_info_cause_4; // @[LoadQueueReplay.scala 767:95]
  wire  _replayDCacheMissCount_T_7 = _s0_loadEnqFireMask_T_5 & io_enq_1_bits_rep_info_cause_4; // @[LoadQueueReplay.scala 767:95]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  LqVAddrModule vaddrModule ( // @[LoadQueueReplay.scala 201:27]
    .clock(vaddrModule_clock),
    .io_ren_0(vaddrModule_io_ren_0),
    .io_ren_1(vaddrModule_io_ren_1),
    .io_raddr_0(vaddrModule_io_raddr_0),
    .io_raddr_1(vaddrModule_io_raddr_1),
    .io_rdata_0(vaddrModule_io_rdata_0),
    .io_rdata_1(vaddrModule_io_rdata_1),
    .io_wen_0(vaddrModule_io_wen_0),
    .io_wen_1(vaddrModule_io_wen_1),
    .io_waddr_0(vaddrModule_io_waddr_0),
    .io_waddr_1(vaddrModule_io_waddr_1),
    .io_wdata_0(vaddrModule_io_wdata_0),
    .io_wdata_1(vaddrModule_io_wdata_1)
  );
  FreeList_2 freeList ( // @[LoadQueueReplay.scala 218:24]
    .clock(freeList_clock),
    .reset(freeList_reset),
    .io_allocateSlot_0(freeList_io_allocateSlot_0),
    .io_allocateSlot_1(freeList_io_allocateSlot_1),
    .io_canAllocate_0(freeList_io_canAllocate_0),
    .io_canAllocate_1(freeList_io_canAllocate_1),
    .io_doAllocate_0(freeList_io_doAllocate_0),
    .io_doAllocate_1(freeList_io_doAllocate_1),
    .io_free(freeList_io_free),
    .io_empty(freeList_io_empty)
  );
  AgeDetector_10 ageOldest_age ( // @[LoadQueueReplay.scala 136:21]
    .clock(ageOldest_age_clock),
    .reset(ageOldest_age_reset),
    .io_enq_0(ageOldest_age_io_enq_0),
    .io_enq_1(ageOldest_age_io_enq_1),
    .io_deq(ageOldest_age_io_deq),
    .io_ready(ageOldest_age_io_ready),
    .io_out(ageOldest_age_io_out)
  );
  AgeDetector_10 ageOldest_age_1 ( // @[LoadQueueReplay.scala 136:21]
    .clock(ageOldest_age_1_clock),
    .reset(ageOldest_age_1_reset),
    .io_enq_0(ageOldest_age_1_io_enq_0),
    .io_enq_1(ageOldest_age_1_io_enq_1),
    .io_deq(ageOldest_age_1_io_deq),
    .io_ready(ageOldest_age_1_io_ready),
    .io_out(ageOldest_age_1_io_out)
  );
  assign io_enq_0_ready = io_enq_0_bits_isLoadReplay | freeList_io_canAllocate_0; // @[LoadQueueReplay.scala 604:21]
  assign io_enq_1_ready = io_enq_1_bits_isLoadReplay | _GEN_4633; // @[LoadQueueReplay.scala 604:21]
  assign io_replay_0_valid = _s1_can_go_0_T_1 & _s1_can_go_0_T_3; // @[LoadQueueReplay.scala 548:84]
  assign io_replay_0_bits_uop_cf_exceptionVec_13 = s2_replayUop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_trigger_backendEn_1 = s2_replayUop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_0 = s2_replayUop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_1 = s2_replayUop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_trigger_backendHit_4 = s2_replayUop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_storeSetHit = s2_replayUop_cf_storeSetHit; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_loadWaitStrict = s2_replayUop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_ssid = s2_replayUop_cf_ssid; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_ftqPtr_flag = s2_replayUop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_ftqPtr_value = s2_replayUop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_cf_ftqOffset = s2_replayUop_cf_ftqOffset; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_ctrl_fuOpType = s2_replayUop_ctrl_fuOpType; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_ctrl_rfWen = s2_replayUop_ctrl_rfWen; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_ctrl_fpWen = s2_replayUop_ctrl_fpWen; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_pdest = s2_replayUop_pdest; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_robIdx_flag = s2_replayUop_robIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_robIdx_value = s2_replayUop_robIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_lqIdx_flag = s2_replayUop_lqIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_lqIdx_value = s2_replayUop_lqIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_sqIdx_flag = s2_replayUop_sqIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_uop_sqIdx_value = s2_replayUop_sqIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_0_bits_vaddr = vaddrModule_io_rdata_0; // @[LoadQueueReplay.scala 551:36]
  assign io_replay_0_bits_mshrid = s2_replayMSHRId; // @[LoadQueueReplay.scala 555:36]
  assign io_replay_0_bits_forward_tlDchannel = s2_replayCauses[4]; // @[LoadQueueReplay.scala 558:60]
  assign io_replay_0_bits_schedIndex = s2_oldestSel_0_bits[2:0]; // @[LoadQueueReplay.scala 559:36]
  assign io_replay_1_valid = _s1_can_go_1_T_1 & _s1_can_go_1_T_3; // @[LoadQueueReplay.scala 548:84]
  assign io_replay_1_bits_uop_cf_exceptionVec_13 = s2_replayUop_1_cf_exceptionVec_13; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_trigger_backendEn_1 = s2_replayUop_1_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_0 = s2_replayUop_1_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_1 = s2_replayUop_1_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_trigger_backendHit_4 = s2_replayUop_1_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_storeSetHit = s2_replayUop_1_cf_storeSetHit; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_loadWaitStrict = s2_replayUop_1_cf_loadWaitStrict; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_ssid = s2_replayUop_1_cf_ssid; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_ftqPtr_flag = s2_replayUop_1_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_ftqPtr_value = s2_replayUop_1_cf_ftqPtr_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_cf_ftqOffset = s2_replayUop_1_cf_ftqOffset; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_ctrl_fuOpType = s2_replayUop_1_ctrl_fuOpType; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_ctrl_rfWen = s2_replayUop_1_ctrl_rfWen; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_ctrl_fpWen = s2_replayUop_1_ctrl_fpWen; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_pdest = s2_replayUop_1_pdest; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_robIdx_flag = s2_replayUop_1_robIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_robIdx_value = s2_replayUop_1_robIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_lqIdx_flag = s2_replayUop_1_lqIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_lqIdx_value = s2_replayUop_1_lqIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_sqIdx_flag = s2_replayUop_1_sqIdx_flag; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_uop_sqIdx_value = s2_replayUop_1_sqIdx_value; // @[LoadQueueReplay.scala 550:36]
  assign io_replay_1_bits_vaddr = vaddrModule_io_rdata_1; // @[LoadQueueReplay.scala 551:36]
  assign io_replay_1_bits_mshrid = s2_replayMSHRId_1; // @[LoadQueueReplay.scala 555:36]
  assign io_replay_1_bits_forward_tlDchannel = s2_replayCauses_1[4]; // @[LoadQueueReplay.scala 558:60]
  assign io_replay_1_bits_schedIndex = s2_oldestSel_1_bits[2:0]; // @[LoadQueueReplay.scala 559:36]
  assign io_lqFull = freeList_io_empty; // @[LoadQueueReplay.scala 703:13]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{4'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{4'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{4'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{4'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{4'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = {{4'd0}, io_perf_8_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = {{4'd0}, io_perf_9_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = {{4'd0}, io_perf_10_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = {{4'd0}, io_perf_11_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_12_value = {{4'd0}, io_perf_12_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign vaddrModule_clock = clock;
  assign vaddrModule_io_ren_0 = s1_balanceOldestSel_reorderSel_0_valid & s1_can_go_0; // @[LoadQueueReplay.scala 532:59]
  assign vaddrModule_io_ren_1 = s1_balanceOldestSel_reorderSel_1_valid & s1_can_go_1; // @[LoadQueueReplay.scala 532:59]
  assign vaddrModule_io_raddr_0 = s1_balanceOldestSel_balancePick_valid & s1_balanceOldestSel_balancePick_bits_balance
     ? s1_balanceOldestSel_balancePick_bits_index : s1_oldestSel_0_bits[2:0]; // @[LoadQueueReplay.scala 475:62 476:25 478:25]
  assign vaddrModule_io_raddr_1 = s1_balanceOldestSel_reorderSel_0_bits_port ? s1_oldestSel_0_bits[2:0] :
    s1_oldestSel_1_bits[2:0]; // @[LoadQueueReplay.scala 481:95 482:25 484:25]
  assign vaddrModule_io_wen_0 = needEnqueue_0 & io_enq_0_ready; // @[LoadQueueReplay.scala 606:26]
  assign vaddrModule_io_wen_1 = needEnqueue_1 & io_enq_1_ready; // @[LoadQueueReplay.scala 606:26]
  assign vaddrModule_io_waddr_0 = io_enq_0_bits_isLoadReplay ? io_enq_0_bits_schedIndex : freeList_io_allocateSlot_0; // @[LoadQueueReplay.scala 602:23]
  assign vaddrModule_io_waddr_1 = io_enq_1_bits_isLoadReplay ? io_enq_1_bits_schedIndex : _GEN_4631; // @[LoadQueueReplay.scala 602:23]
  assign vaddrModule_io_wdata_0 = io_enq_0_bits_vaddr; // @[LoadQueueReplay.scala 606:40 621:31]
  assign vaddrModule_io_wdata_1 = io_enq_1_bits_vaddr; // @[LoadQueueReplay.scala 606:40 621:31]
  assign freeList_clock = clock;
  assign freeList_reset = reset;
  assign freeList_io_doAllocate_0 = needEnqueue_0 & io_enq_0_ready & _newEnqueue_T; // @[LoadQueueReplay.scala 595:31 606:40 612:33]
  assign freeList_io_doAllocate_1 = needEnqueue_1 & io_enq_1_ready & _s0_loadEnqFireMask_T_4; // @[LoadQueueReplay.scala 595:31 606:40 612:33]
  assign freeList_io_free = {freeList_io_free_hi,freeList_io_free_lo}; // @[LoadQueueReplay.scala 701:35]
  assign ageOldest_age_clock = clock;
  assign ageOldest_age_reset = reset;
  assign ageOldest_age_io_enq_0 = {s0_remLoadEnqFireVec_hi,s0_remLoadEnqFireVec_lo}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_io_enq_1 = {s0_remLoadEnqFireVec_hi_2,s0_remLoadEnqFireVec_lo_2}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_io_deq = {s0_remFreeSelVec_hi,s0_remFreeSelVec_lo}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_io_ready = s0_remHintSelValidVec_0 ? s0_remLoadHintSelMask_0 : _s0_remPriorityReplaySelVec_T_7; // @[LoadQueueReplay.scala 412:12]
  assign ageOldest_age_1_clock = clock;
  assign ageOldest_age_1_reset = reset;
  assign ageOldest_age_1_io_enq_0 = {s0_remLoadEnqFireVec_hi_1,s0_remLoadEnqFireVec_lo_1}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_1_io_enq_1 = {s0_remLoadEnqFireVec_hi_3,s0_remLoadEnqFireVec_lo_3}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_1_io_deq = {s0_remFreeSelVec_hi_1,s0_remFreeSelVec_lo_1}; // @[LoadQueueReplay.scala 347:113]
  assign ageOldest_age_1_io_ready = s0_remHintSelValidVec_1 ? s0_remLoadHintSelMask_1 : _s0_remPriorityReplaySelVec_T_16
    ; // @[LoadQueueReplay.scala 412:12]
  always @(posedge clock) begin
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_exceptionVec_13 <= _GEN_3715;
      end
    end else begin
      uop_0_cf_exceptionVec_13 <= _GEN_3715;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_trigger_backendEn_1 <= _GEN_3779;
      end
    end else begin
      uop_0_cf_trigger_backendEn_1 <= _GEN_3779;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_trigger_backendHit_0 <= _GEN_3787;
      end
    end else begin
      uop_0_cf_trigger_backendHit_0 <= _GEN_3787;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_trigger_backendHit_1 <= _GEN_3795;
      end
    end else begin
      uop_0_cf_trigger_backendHit_1 <= _GEN_3795;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_trigger_backendHit_4 <= _GEN_3819;
      end
    end else begin
      uop_0_cf_trigger_backendHit_4 <= _GEN_3819;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_storeSetHit <= _GEN_3891;
      end
    end else begin
      uop_0_cf_storeSetHit <= _GEN_3891;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_loadWaitStrict <= _GEN_3923;
      end
    end else begin
      uop_0_cf_loadWaitStrict <= _GEN_3923;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_ssid <= _GEN_3931;
      end
    end else begin
      uop_0_cf_ssid <= _GEN_3931;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_ftqPtr_flag <= _GEN_3939;
      end
    end else begin
      uop_0_cf_ftqPtr_flag <= _GEN_3939;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_ftqPtr_value <= _GEN_3947;
      end
    end else begin
      uop_0_cf_ftqPtr_value <= _GEN_3947;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_cf_ftqOffset <= _GEN_3955;
      end
    end else begin
      uop_0_cf_ftqOffset <= _GEN_3955;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_ctrl_fuOpType <= _GEN_4035;
      end
    end else begin
      uop_0_ctrl_fuOpType <= _GEN_4035;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_ctrl_rfWen <= _GEN_4043;
      end
    end else begin
      uop_0_ctrl_rfWen <= _GEN_4043;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_ctrl_fpWen <= _GEN_4051;
      end
    end else begin
      uop_0_ctrl_fpWen <= _GEN_4051;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_pdest <= _GEN_4299;
      end
    end else begin
      uop_0_pdest <= _GEN_4299;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_robIdx_flag <= _GEN_4307;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_4307;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_robIdx_value <= _GEN_4315;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_4315;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_lqIdx_flag <= _GEN_4323;
      end
    end else begin
      uop_0_lqIdx_flag <= _GEN_4323;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_lqIdx_value <= _GEN_4331;
      end
    end else begin
      uop_0_lqIdx_value <= _GEN_4331;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_sqIdx_flag <= _GEN_4339;
      end
    end else begin
      uop_0_sqIdx_flag <= _GEN_4339;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_0_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_0_sqIdx_value <= _GEN_4347;
      end
    end else begin
      uop_0_sqIdx_value <= _GEN_4347;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_exceptionVec_13 <= _GEN_3716;
      end
    end else begin
      uop_1_cf_exceptionVec_13 <= _GEN_3716;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_trigger_backendEn_1 <= _GEN_3780;
      end
    end else begin
      uop_1_cf_trigger_backendEn_1 <= _GEN_3780;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_trigger_backendHit_0 <= _GEN_3788;
      end
    end else begin
      uop_1_cf_trigger_backendHit_0 <= _GEN_3788;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_trigger_backendHit_1 <= _GEN_3796;
      end
    end else begin
      uop_1_cf_trigger_backendHit_1 <= _GEN_3796;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_trigger_backendHit_4 <= _GEN_3820;
      end
    end else begin
      uop_1_cf_trigger_backendHit_4 <= _GEN_3820;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_storeSetHit <= _GEN_3892;
      end
    end else begin
      uop_1_cf_storeSetHit <= _GEN_3892;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_loadWaitStrict <= _GEN_3924;
      end
    end else begin
      uop_1_cf_loadWaitStrict <= _GEN_3924;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_ssid <= _GEN_3932;
      end
    end else begin
      uop_1_cf_ssid <= _GEN_3932;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_ftqPtr_flag <= _GEN_3940;
      end
    end else begin
      uop_1_cf_ftqPtr_flag <= _GEN_3940;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_ftqPtr_value <= _GEN_3948;
      end
    end else begin
      uop_1_cf_ftqPtr_value <= _GEN_3948;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_cf_ftqOffset <= _GEN_3956;
      end
    end else begin
      uop_1_cf_ftqOffset <= _GEN_3956;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_ctrl_fuOpType <= _GEN_4036;
      end
    end else begin
      uop_1_ctrl_fuOpType <= _GEN_4036;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_ctrl_rfWen <= _GEN_4044;
      end
    end else begin
      uop_1_ctrl_rfWen <= _GEN_4044;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_ctrl_fpWen <= _GEN_4052;
      end
    end else begin
      uop_1_ctrl_fpWen <= _GEN_4052;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_pdest <= _GEN_4300;
      end
    end else begin
      uop_1_pdest <= _GEN_4300;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_robIdx_flag <= _GEN_4308;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_4308;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_robIdx_value <= _GEN_4316;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_4316;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_lqIdx_flag <= _GEN_4324;
      end
    end else begin
      uop_1_lqIdx_flag <= _GEN_4324;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_lqIdx_value <= _GEN_4332;
      end
    end else begin
      uop_1_lqIdx_value <= _GEN_4332;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_sqIdx_flag <= _GEN_4340;
      end
    end else begin
      uop_1_sqIdx_flag <= _GEN_4340;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_1_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_1_sqIdx_value <= _GEN_4348;
      end
    end else begin
      uop_1_sqIdx_value <= _GEN_4348;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_exceptionVec_13 <= _GEN_3717;
      end
    end else begin
      uop_2_cf_exceptionVec_13 <= _GEN_3717;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_trigger_backendEn_1 <= _GEN_3781;
      end
    end else begin
      uop_2_cf_trigger_backendEn_1 <= _GEN_3781;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_trigger_backendHit_0 <= _GEN_3789;
      end
    end else begin
      uop_2_cf_trigger_backendHit_0 <= _GEN_3789;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_trigger_backendHit_1 <= _GEN_3797;
      end
    end else begin
      uop_2_cf_trigger_backendHit_1 <= _GEN_3797;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_trigger_backendHit_4 <= _GEN_3821;
      end
    end else begin
      uop_2_cf_trigger_backendHit_4 <= _GEN_3821;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_storeSetHit <= _GEN_3893;
      end
    end else begin
      uop_2_cf_storeSetHit <= _GEN_3893;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_loadWaitStrict <= _GEN_3925;
      end
    end else begin
      uop_2_cf_loadWaitStrict <= _GEN_3925;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_ssid <= _GEN_3933;
      end
    end else begin
      uop_2_cf_ssid <= _GEN_3933;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_ftqPtr_flag <= _GEN_3941;
      end
    end else begin
      uop_2_cf_ftqPtr_flag <= _GEN_3941;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_ftqPtr_value <= _GEN_3949;
      end
    end else begin
      uop_2_cf_ftqPtr_value <= _GEN_3949;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_cf_ftqOffset <= _GEN_3957;
      end
    end else begin
      uop_2_cf_ftqOffset <= _GEN_3957;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_ctrl_fuOpType <= _GEN_4037;
      end
    end else begin
      uop_2_ctrl_fuOpType <= _GEN_4037;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_ctrl_rfWen <= _GEN_4045;
      end
    end else begin
      uop_2_ctrl_rfWen <= _GEN_4045;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_ctrl_fpWen <= _GEN_4053;
      end
    end else begin
      uop_2_ctrl_fpWen <= _GEN_4053;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_pdest <= _GEN_4301;
      end
    end else begin
      uop_2_pdest <= _GEN_4301;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_robIdx_flag <= _GEN_4309;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_4309;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_robIdx_value <= _GEN_4317;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_4317;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_lqIdx_flag <= _GEN_4325;
      end
    end else begin
      uop_2_lqIdx_flag <= _GEN_4325;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_lqIdx_value <= _GEN_4333;
      end
    end else begin
      uop_2_lqIdx_value <= _GEN_4333;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_sqIdx_flag <= _GEN_4341;
      end
    end else begin
      uop_2_sqIdx_flag <= _GEN_4341;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_2_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_2_sqIdx_value <= _GEN_4349;
      end
    end else begin
      uop_2_sqIdx_value <= _GEN_4349;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_exceptionVec_13 <= _GEN_3718;
      end
    end else begin
      uop_3_cf_exceptionVec_13 <= _GEN_3718;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_trigger_backendEn_1 <= _GEN_3782;
      end
    end else begin
      uop_3_cf_trigger_backendEn_1 <= _GEN_3782;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_trigger_backendHit_0 <= _GEN_3790;
      end
    end else begin
      uop_3_cf_trigger_backendHit_0 <= _GEN_3790;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_trigger_backendHit_1 <= _GEN_3798;
      end
    end else begin
      uop_3_cf_trigger_backendHit_1 <= _GEN_3798;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_trigger_backendHit_4 <= _GEN_3822;
      end
    end else begin
      uop_3_cf_trigger_backendHit_4 <= _GEN_3822;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_storeSetHit <= _GEN_3894;
      end
    end else begin
      uop_3_cf_storeSetHit <= _GEN_3894;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_loadWaitStrict <= _GEN_3926;
      end
    end else begin
      uop_3_cf_loadWaitStrict <= _GEN_3926;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_ssid <= _GEN_3934;
      end
    end else begin
      uop_3_cf_ssid <= _GEN_3934;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_ftqPtr_flag <= _GEN_3942;
      end
    end else begin
      uop_3_cf_ftqPtr_flag <= _GEN_3942;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_ftqPtr_value <= _GEN_3950;
      end
    end else begin
      uop_3_cf_ftqPtr_value <= _GEN_3950;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_cf_ftqOffset <= _GEN_3958;
      end
    end else begin
      uop_3_cf_ftqOffset <= _GEN_3958;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_ctrl_fuOpType <= _GEN_4038;
      end
    end else begin
      uop_3_ctrl_fuOpType <= _GEN_4038;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_ctrl_rfWen <= _GEN_4046;
      end
    end else begin
      uop_3_ctrl_rfWen <= _GEN_4046;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_ctrl_fpWen <= _GEN_4054;
      end
    end else begin
      uop_3_ctrl_fpWen <= _GEN_4054;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_pdest <= _GEN_4302;
      end
    end else begin
      uop_3_pdest <= _GEN_4302;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_robIdx_flag <= _GEN_4310;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_4310;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_robIdx_value <= _GEN_4318;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_4318;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_lqIdx_flag <= _GEN_4326;
      end
    end else begin
      uop_3_lqIdx_flag <= _GEN_4326;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_lqIdx_value <= _GEN_4334;
      end
    end else begin
      uop_3_lqIdx_value <= _GEN_4334;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_sqIdx_flag <= _GEN_4342;
      end
    end else begin
      uop_3_sqIdx_flag <= _GEN_4342;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_3_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_3_sqIdx_value <= _GEN_4350;
      end
    end else begin
      uop_3_sqIdx_value <= _GEN_4350;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_exceptionVec_13 <= _GEN_3719;
      end
    end else begin
      uop_4_cf_exceptionVec_13 <= _GEN_3719;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_trigger_backendEn_1 <= _GEN_3783;
      end
    end else begin
      uop_4_cf_trigger_backendEn_1 <= _GEN_3783;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_trigger_backendHit_0 <= _GEN_3791;
      end
    end else begin
      uop_4_cf_trigger_backendHit_0 <= _GEN_3791;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_trigger_backendHit_1 <= _GEN_3799;
      end
    end else begin
      uop_4_cf_trigger_backendHit_1 <= _GEN_3799;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_trigger_backendHit_4 <= _GEN_3823;
      end
    end else begin
      uop_4_cf_trigger_backendHit_4 <= _GEN_3823;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_storeSetHit <= _GEN_3895;
      end
    end else begin
      uop_4_cf_storeSetHit <= _GEN_3895;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_loadWaitStrict <= _GEN_3927;
      end
    end else begin
      uop_4_cf_loadWaitStrict <= _GEN_3927;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_ssid <= _GEN_3935;
      end
    end else begin
      uop_4_cf_ssid <= _GEN_3935;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_ftqPtr_flag <= _GEN_3943;
      end
    end else begin
      uop_4_cf_ftqPtr_flag <= _GEN_3943;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_ftqPtr_value <= _GEN_3951;
      end
    end else begin
      uop_4_cf_ftqPtr_value <= _GEN_3951;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_cf_ftqOffset <= _GEN_3959;
      end
    end else begin
      uop_4_cf_ftqOffset <= _GEN_3959;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_ctrl_fuOpType <= _GEN_4039;
      end
    end else begin
      uop_4_ctrl_fuOpType <= _GEN_4039;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_ctrl_rfWen <= _GEN_4047;
      end
    end else begin
      uop_4_ctrl_rfWen <= _GEN_4047;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_ctrl_fpWen <= _GEN_4055;
      end
    end else begin
      uop_4_ctrl_fpWen <= _GEN_4055;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_pdest <= _GEN_4303;
      end
    end else begin
      uop_4_pdest <= _GEN_4303;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_robIdx_flag <= _GEN_4311;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_4311;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_robIdx_value <= _GEN_4319;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_4319;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_lqIdx_flag <= _GEN_4327;
      end
    end else begin
      uop_4_lqIdx_flag <= _GEN_4327;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_lqIdx_value <= _GEN_4335;
      end
    end else begin
      uop_4_lqIdx_value <= _GEN_4335;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_sqIdx_flag <= _GEN_4343;
      end
    end else begin
      uop_4_sqIdx_flag <= _GEN_4343;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_4_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_4_sqIdx_value <= _GEN_4351;
      end
    end else begin
      uop_4_sqIdx_value <= _GEN_4351;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_exceptionVec_13 <= _GEN_3720;
      end
    end else begin
      uop_5_cf_exceptionVec_13 <= _GEN_3720;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_trigger_backendEn_1 <= _GEN_3784;
      end
    end else begin
      uop_5_cf_trigger_backendEn_1 <= _GEN_3784;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_trigger_backendHit_0 <= _GEN_3792;
      end
    end else begin
      uop_5_cf_trigger_backendHit_0 <= _GEN_3792;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_trigger_backendHit_1 <= _GEN_3800;
      end
    end else begin
      uop_5_cf_trigger_backendHit_1 <= _GEN_3800;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_trigger_backendHit_4 <= _GEN_3824;
      end
    end else begin
      uop_5_cf_trigger_backendHit_4 <= _GEN_3824;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_storeSetHit <= _GEN_3896;
      end
    end else begin
      uop_5_cf_storeSetHit <= _GEN_3896;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_loadWaitStrict <= _GEN_3928;
      end
    end else begin
      uop_5_cf_loadWaitStrict <= _GEN_3928;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_ssid <= _GEN_3936;
      end
    end else begin
      uop_5_cf_ssid <= _GEN_3936;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_ftqPtr_flag <= _GEN_3944;
      end
    end else begin
      uop_5_cf_ftqPtr_flag <= _GEN_3944;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_ftqPtr_value <= _GEN_3952;
      end
    end else begin
      uop_5_cf_ftqPtr_value <= _GEN_3952;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_cf_ftqOffset <= _GEN_3960;
      end
    end else begin
      uop_5_cf_ftqOffset <= _GEN_3960;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_ctrl_fuOpType <= _GEN_4040;
      end
    end else begin
      uop_5_ctrl_fuOpType <= _GEN_4040;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_ctrl_rfWen <= _GEN_4048;
      end
    end else begin
      uop_5_ctrl_rfWen <= _GEN_4048;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_ctrl_fpWen <= _GEN_4056;
      end
    end else begin
      uop_5_ctrl_fpWen <= _GEN_4056;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_pdest <= _GEN_4304;
      end
    end else begin
      uop_5_pdest <= _GEN_4304;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_robIdx_flag <= _GEN_4312;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_4312;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_robIdx_value <= _GEN_4320;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_4320;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_lqIdx_flag <= _GEN_4328;
      end
    end else begin
      uop_5_lqIdx_flag <= _GEN_4328;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_lqIdx_value <= _GEN_4336;
      end
    end else begin
      uop_5_lqIdx_value <= _GEN_4336;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_sqIdx_flag <= _GEN_4344;
      end
    end else begin
      uop_5_sqIdx_flag <= _GEN_4344;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_5_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_5_sqIdx_value <= _GEN_4352;
      end
    end else begin
      uop_5_sqIdx_value <= _GEN_4352;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_exceptionVec_13 <= _GEN_3721;
      end
    end else begin
      uop_6_cf_exceptionVec_13 <= _GEN_3721;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_trigger_backendEn_1 <= _GEN_3785;
      end
    end else begin
      uop_6_cf_trigger_backendEn_1 <= _GEN_3785;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_trigger_backendHit_0 <= _GEN_3793;
      end
    end else begin
      uop_6_cf_trigger_backendHit_0 <= _GEN_3793;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_trigger_backendHit_1 <= _GEN_3801;
      end
    end else begin
      uop_6_cf_trigger_backendHit_1 <= _GEN_3801;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_trigger_backendHit_4 <= _GEN_3825;
      end
    end else begin
      uop_6_cf_trigger_backendHit_4 <= _GEN_3825;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_storeSetHit <= _GEN_3897;
      end
    end else begin
      uop_6_cf_storeSetHit <= _GEN_3897;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_loadWaitStrict <= _GEN_3929;
      end
    end else begin
      uop_6_cf_loadWaitStrict <= _GEN_3929;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_ssid <= _GEN_3937;
      end
    end else begin
      uop_6_cf_ssid <= _GEN_3937;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_ftqPtr_flag <= _GEN_3945;
      end
    end else begin
      uop_6_cf_ftqPtr_flag <= _GEN_3945;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_ftqPtr_value <= _GEN_3953;
      end
    end else begin
      uop_6_cf_ftqPtr_value <= _GEN_3953;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_cf_ftqOffset <= _GEN_3961;
      end
    end else begin
      uop_6_cf_ftqOffset <= _GEN_3961;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_ctrl_fuOpType <= _GEN_4041;
      end
    end else begin
      uop_6_ctrl_fuOpType <= _GEN_4041;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_ctrl_rfWen <= _GEN_4049;
      end
    end else begin
      uop_6_ctrl_rfWen <= _GEN_4049;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_ctrl_fpWen <= _GEN_4057;
      end
    end else begin
      uop_6_ctrl_fpWen <= _GEN_4057;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_pdest <= _GEN_4305;
      end
    end else begin
      uop_6_pdest <= _GEN_4305;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_robIdx_flag <= _GEN_4313;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_4313;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_robIdx_value <= _GEN_4321;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_4321;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_lqIdx_flag <= _GEN_4329;
      end
    end else begin
      uop_6_lqIdx_flag <= _GEN_4329;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_lqIdx_value <= _GEN_4337;
      end
    end else begin
      uop_6_lqIdx_value <= _GEN_4337;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_sqIdx_flag <= _GEN_4345;
      end
    end else begin
      uop_6_sqIdx_flag <= _GEN_4345;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_6_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_6_sqIdx_value <= _GEN_4353;
      end
    end else begin
      uop_6_sqIdx_value <= _GEN_4353;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_exceptionVec_13 <= io_enq_1_bits_uop_cf_exceptionVec_13; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_exceptionVec_13 <= _GEN_3722;
      end
    end else begin
      uop_7_cf_exceptionVec_13 <= _GEN_3722;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_trigger_backendEn_1 <= io_enq_1_bits_uop_cf_trigger_backendEn_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_trigger_backendEn_1 <= _GEN_3786;
      end
    end else begin
      uop_7_cf_trigger_backendEn_1 <= _GEN_3786;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_trigger_backendHit_0 <= io_enq_1_bits_uop_cf_trigger_backendHit_0; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_trigger_backendHit_0 <= _GEN_3794;
      end
    end else begin
      uop_7_cf_trigger_backendHit_0 <= _GEN_3794;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_trigger_backendHit_1 <= io_enq_1_bits_uop_cf_trigger_backendHit_1; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_trigger_backendHit_1 <= _GEN_3802;
      end
    end else begin
      uop_7_cf_trigger_backendHit_1 <= _GEN_3802;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_trigger_backendHit_4 <= io_enq_1_bits_uop_cf_trigger_backendHit_4; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_trigger_backendHit_4 <= _GEN_3826;
      end
    end else begin
      uop_7_cf_trigger_backendHit_4 <= _GEN_3826;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_storeSetHit <= io_enq_1_bits_uop_cf_storeSetHit; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_storeSetHit <= _GEN_3898;
      end
    end else begin
      uop_7_cf_storeSetHit <= _GEN_3898;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_loadWaitStrict <= io_enq_1_bits_uop_cf_loadWaitStrict; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_loadWaitStrict <= _GEN_3930;
      end
    end else begin
      uop_7_cf_loadWaitStrict <= _GEN_3930;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_ssid <= io_enq_1_bits_uop_cf_ssid; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_ssid <= _GEN_3938;
      end
    end else begin
      uop_7_cf_ssid <= _GEN_3938;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_ftqPtr_flag <= io_enq_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_ftqPtr_flag <= _GEN_3946;
      end
    end else begin
      uop_7_cf_ftqPtr_flag <= _GEN_3946;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_ftqPtr_value <= io_enq_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_ftqPtr_value <= _GEN_3954;
      end
    end else begin
      uop_7_cf_ftqPtr_value <= _GEN_3954;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_cf_ftqOffset <= io_enq_1_bits_uop_cf_ftqOffset; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_cf_ftqOffset <= _GEN_3962;
      end
    end else begin
      uop_7_cf_ftqOffset <= _GEN_3962;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_ctrl_fuOpType <= io_enq_1_bits_uop_ctrl_fuOpType; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_ctrl_fuOpType <= _GEN_4042;
      end
    end else begin
      uop_7_ctrl_fuOpType <= _GEN_4042;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_ctrl_rfWen <= io_enq_1_bits_uop_ctrl_rfWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_ctrl_rfWen <= _GEN_4050;
      end
    end else begin
      uop_7_ctrl_rfWen <= _GEN_4050;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_ctrl_fpWen <= io_enq_1_bits_uop_ctrl_fpWen; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_ctrl_fpWen <= _GEN_4058;
      end
    end else begin
      uop_7_ctrl_fpWen <= _GEN_4058;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_pdest <= io_enq_1_bits_uop_pdest; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_pdest <= _GEN_4306;
      end
    end else begin
      uop_7_pdest <= _GEN_4306;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_robIdx_flag <= io_enq_1_bits_uop_robIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_robIdx_flag <= _GEN_4314;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_4314;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_robIdx_value <= io_enq_1_bits_uop_robIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_robIdx_value <= _GEN_4322;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_4322;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_lqIdx_flag <= io_enq_1_bits_uop_lqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_lqIdx_flag <= _GEN_4330;
      end
    end else begin
      uop_7_lqIdx_flag <= _GEN_4330;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_lqIdx_value <= io_enq_1_bits_uop_lqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_lqIdx_value <= _GEN_4338;
      end
    end else begin
      uop_7_lqIdx_value <= _GEN_4338;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_sqIdx_flag <= io_enq_1_bits_uop_sqIdx_flag; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_sqIdx_flag <= _GEN_4346;
      end
    end else begin
      uop_7_sqIdx_flag <= _GEN_4346;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 617:27]
        uop_7_sqIdx_value <= io_enq_1_bits_uop_sqIdx_value; // @[LoadQueueReplay.scala 617:27]
      end else begin
        uop_7_sqIdx_value <= _GEN_4354;
      end
    end else begin
      uop_7_sqIdx_value <= _GEN_4354;
    end
    blockCyclesTlb_0 <= io_tlbReplayDelayCycleCtrl_0; // @[LoadQueueReplay.scala 235:18]
    blockCyclesTlb_1 <= io_tlbReplayDelayCycleCtrl_1; // @[LoadQueueReplay.scala 235:18]
    blockCyclesTlb_2 <= io_tlbReplayDelayCycleCtrl_2; // @[LoadQueueReplay.scala 235:18]
    blockCyclesTlb_3 <= io_tlbReplayDelayCycleCtrl_3; // @[LoadQueueReplay.scala 235:18]
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_0_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_0_flag <= _GEN_5670;
        end
      end else begin
        blockSqIdx_0_flag <= _GEN_5670;
      end
    end else begin
      blockSqIdx_0_flag <= _GEN_4494;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_0_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_0_value <= _GEN_5678;
        end
      end else begin
        blockSqIdx_0_value <= _GEN_5678;
      end
    end else begin
      blockSqIdx_0_value <= _GEN_4502;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_1_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_1_flag <= _GEN_5671;
        end
      end else begin
        blockSqIdx_1_flag <= _GEN_5671;
      end
    end else begin
      blockSqIdx_1_flag <= _GEN_4495;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_1_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_1_value <= _GEN_5679;
        end
      end else begin
        blockSqIdx_1_value <= _GEN_5679;
      end
    end else begin
      blockSqIdx_1_value <= _GEN_4503;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_2_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_2_flag <= _GEN_5672;
        end
      end else begin
        blockSqIdx_2_flag <= _GEN_5672;
      end
    end else begin
      blockSqIdx_2_flag <= _GEN_4496;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_2_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_2_value <= _GEN_5680;
        end
      end else begin
        blockSqIdx_2_value <= _GEN_5680;
      end
    end else begin
      blockSqIdx_2_value <= _GEN_4504;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_3_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_3_flag <= _GEN_5673;
        end
      end else begin
        blockSqIdx_3_flag <= _GEN_5673;
      end
    end else begin
      blockSqIdx_3_flag <= _GEN_4497;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_3_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_3_value <= _GEN_5681;
        end
      end else begin
        blockSqIdx_3_value <= _GEN_5681;
      end
    end else begin
      blockSqIdx_3_value <= _GEN_4505;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_4_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_4_flag <= _GEN_5674;
        end
      end else begin
        blockSqIdx_4_flag <= _GEN_5674;
      end
    end else begin
      blockSqIdx_4_flag <= _GEN_4498;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_4_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_4_value <= _GEN_5682;
        end
      end else begin
        blockSqIdx_4_value <= _GEN_5682;
      end
    end else begin
      blockSqIdx_4_value <= _GEN_4506;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_5_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_5_flag <= _GEN_5675;
        end
      end else begin
        blockSqIdx_5_flag <= _GEN_5675;
      end
    end else begin
      blockSqIdx_5_flag <= _GEN_4499;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_5_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_5_value <= _GEN_5683;
        end
      end else begin
        blockSqIdx_5_value <= _GEN_5683;
      end
    end else begin
      blockSqIdx_5_value <= _GEN_4507;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_6_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_6_flag <= _GEN_5676;
        end
      end else begin
        blockSqIdx_6_flag <= _GEN_5676;
      end
    end else begin
      blockSqIdx_6_flag <= _GEN_4500;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_6_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_6_value <= _GEN_5684;
        end
      end else begin
        blockSqIdx_6_value <= _GEN_5684;
      end
    end else begin
      blockSqIdx_6_value <= _GEN_4508;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_7_flag <= io_enq_1_bits_rep_info_data_inv_sq_idx_flag; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_7_flag <= _GEN_5677;
        end
      end else begin
        blockSqIdx_7_flag <= _GEN_5677;
      end
    end else begin
      blockSqIdx_7_flag <= _GEN_4501;
    end
    if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_2) begin // @[LoadQueueReplay.scala 666:54]
        if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 667:30]
          blockSqIdx_7_value <= io_enq_1_bits_rep_info_data_inv_sq_idx_value; // @[LoadQueueReplay.scala 667:30]
        end else begin
          blockSqIdx_7_value <= _GEN_5685;
        end
      end else begin
        blockSqIdx_7_value <= _GEN_5685;
      end
    end else begin
      blockSqIdx_7_value <= _GEN_4509;
    end
    if (s0_can_go) begin // @[Reg.scala 17:18]
      s1_oldestSel_0_bits_r <= _s1_oldestSel_0_bits_T_6; // @[Reg.scala 17:22]
    end
    if (s0_can_go_1) begin // @[Reg.scala 17:18]
      s1_oldestSel_1_bits_r <= _s1_oldestSel_1_bits_T_6; // @[Reg.scala 17:22]
    end
    if (s0_can_go) begin // @[Reg.scala 17:18]
      s1_oldestSel_0_valid_r <= oldest_valid; // @[Reg.scala 17:22]
    end
    if (s0_can_go_1) begin // @[Reg.scala 17:18]
      s1_oldestSel_1_valid_r <= oldest_1_valid; // @[Reg.scala 17:22]
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      s2_oldestSel_0_valid_r <= s1_oldestSelV; // @[Reg.scala 17:22]
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_flag <= uop_7_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_flag <= uop_6_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_flag <= uop_5_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else begin
        s2_replayUop_robIdx_flag <= _GEN_340;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_value <= uop_7_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_value <= uop_6_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_robIdx_value <= uop_5_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else begin
        s2_replayUop_robIdx_value <= _GEN_348;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      s2_oldestSel_1_valid_r <= s1_oldestSelV_1; // @[Reg.scala 17:22]
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_flag <= uop_7_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_flag <= uop_6_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_flag <= uop_5_robIdx_flag; // @[CircularQueuePtr.scala 61:40]
      end else begin
        s2_replayUop_1_robIdx_flag <= _GEN_358;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_value <= uop_7_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_value <= uop_6_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[CircularQueuePtr.scala 61:40]
        s2_replayUop_1_robIdx_value <= uop_5_robIdx_value; // @[CircularQueuePtr.scala 61:40]
      end else begin
        s2_replayUop_1_robIdx_value <= _GEN_366;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (s1_balanceOldestSel_balancePick_valid & s1_balanceOldestSel_balancePick_bits_balance) begin // @[LoadQueueReplay.scala 475:62]
        if (_s1_balanceOldestSel_balancePick_T) begin // @[ParallelMux.scala 90:77]
          s2_oldestSel_0_bits_r <= s1_oldestSel_0_bits[2:0];
        end else begin
          s2_oldestSel_0_bits_r <= s1_oldestSel_1_bits[2:0];
        end
      end else begin
        s2_oldestSel_0_bits_r <= s1_oldestSel_0_bits[2:0]; // @[LoadQueueReplay.scala 478:25]
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (s1_balanceOldestSel_reorderSel_0_bits_port) begin // @[LoadQueueReplay.scala 481:95]
        s2_oldestSel_1_bits_r <= s1_oldestSel_0_bits[2:0]; // @[LoadQueueReplay.scala 482:25]
      end else begin
        s2_oldestSel_1_bits_r <= s1_oldestSel_1_bits[2:0]; // @[LoadQueueReplay.scala 484:25]
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_exceptionVec_13 <= uop_7_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_exceptionVec_13 <= uop_6_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_exceptionVec_13 <= uop_5_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_exceptionVec_13 <= _GEN_504;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendEn_1 <= uop_7_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendEn_1 <= uop_6_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendEn_1 <= uop_5_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_trigger_backendEn_1 <= _GEN_568;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_0 <= uop_7_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_0 <= uop_6_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_0 <= uop_5_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_trigger_backendHit_0 <= _GEN_576;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_1 <= uop_7_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_1 <= uop_6_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_1 <= uop_5_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_trigger_backendHit_1 <= _GEN_584;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_4 <= uop_7_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_4 <= uop_6_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_trigger_backendHit_4 <= uop_5_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_trigger_backendHit_4 <= _GEN_608;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_storeSetHit <= uop_7_cf_storeSetHit; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_storeSetHit <= uop_6_cf_storeSetHit; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_storeSetHit <= uop_5_cf_storeSetHit; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_storeSetHit <= _GEN_680;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_loadWaitStrict <= uop_7_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_loadWaitStrict <= uop_6_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_loadWaitStrict <= uop_5_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_loadWaitStrict <= _GEN_712;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ssid <= uop_7_cf_ssid; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ssid <= uop_6_cf_ssid; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ssid <= uop_5_cf_ssid; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_ssid <= _GEN_720;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_flag <= uop_7_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_flag <= uop_6_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_flag <= uop_5_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_ftqPtr_flag <= _GEN_728;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_value <= uop_7_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_value <= uop_6_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqPtr_value <= uop_5_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_ftqPtr_value <= _GEN_736;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqOffset <= uop_7_cf_ftqOffset; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqOffset <= uop_6_cf_ftqOffset; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_cf_ftqOffset <= uop_5_cf_ftqOffset; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_cf_ftqOffset <= _GEN_744;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fuOpType <= uop_7_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fuOpType <= uop_6_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fuOpType <= uop_5_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_ctrl_fuOpType <= _GEN_824;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_rfWen <= uop_7_ctrl_rfWen; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_rfWen <= uop_6_ctrl_rfWen; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_rfWen <= uop_5_ctrl_rfWen; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_ctrl_rfWen <= _GEN_832;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fpWen <= uop_7_ctrl_fpWen; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fpWen <= uop_6_ctrl_fpWen; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_ctrl_fpWen <= uop_5_ctrl_fpWen; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_ctrl_fpWen <= _GEN_840;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_pdest <= uop_7_pdest; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_pdest <= uop_6_pdest; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_pdest <= uop_5_pdest; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_pdest <= _GEN_1088;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_flag <= uop_7_lqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_flag <= uop_6_lqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_flag <= uop_5_lqIdx_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_lqIdx_flag <= _GEN_1096;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_value <= uop_7_lqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_value <= uop_6_lqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_lqIdx_value <= uop_5_lqIdx_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_lqIdx_value <= _GEN_1104;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_flag <= uop_7_sqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_flag <= uop_6_sqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_flag <= uop_5_sqIdx_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_sqIdx_flag <= _GEN_1112;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_value <= uop_7_sqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_value <= uop_6_sqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_sqIdx_value <= uop_5_sqIdx_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_sqIdx_value <= _GEN_1120;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId <= missMSHRId_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId <= missMSHRId_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId <= missMSHRId_5; // @[Reg.scala 17:22]
      end else begin
        s2_replayMSHRId <= _GEN_1332;
      end
    end
    if (s1_can_go_0) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses <= cause_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses <= cause_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_0_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses <= cause_5; // @[Reg.scala 17:22]
      end else begin
        s2_replayCauses <= _GEN_1359;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_exceptionVec_13 <= uop_7_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_exceptionVec_13 <= uop_6_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_exceptionVec_13 <= uop_5_cf_exceptionVec_13; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_exceptionVec_13 <= _GEN_1531;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendEn_1 <= uop_7_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendEn_1 <= uop_6_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendEn_1 <= uop_5_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_trigger_backendEn_1 <= _GEN_1595;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_0 <= uop_7_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_0 <= uop_6_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_0 <= uop_5_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_trigger_backendHit_0 <= _GEN_1603;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_1 <= uop_7_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_1 <= uop_6_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_1 <= uop_5_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_trigger_backendHit_1 <= _GEN_1611;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_4 <= uop_7_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_4 <= uop_6_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_trigger_backendHit_4 <= uop_5_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_trigger_backendHit_4 <= _GEN_1635;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_storeSetHit <= uop_7_cf_storeSetHit; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_storeSetHit <= uop_6_cf_storeSetHit; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_storeSetHit <= uop_5_cf_storeSetHit; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_storeSetHit <= _GEN_1707;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_loadWaitStrict <= uop_7_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_loadWaitStrict <= uop_6_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_loadWaitStrict <= uop_5_cf_loadWaitStrict; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_loadWaitStrict <= _GEN_1739;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ssid <= uop_7_cf_ssid; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ssid <= uop_6_cf_ssid; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ssid <= uop_5_cf_ssid; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_ssid <= _GEN_1747;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_flag <= uop_7_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_flag <= uop_6_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_flag <= uop_5_cf_ftqPtr_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_ftqPtr_flag <= _GEN_1755;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_value <= uop_7_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_value <= uop_6_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqPtr_value <= uop_5_cf_ftqPtr_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_ftqPtr_value <= _GEN_1763;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqOffset <= uop_7_cf_ftqOffset; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqOffset <= uop_6_cf_ftqOffset; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_cf_ftqOffset <= uop_5_cf_ftqOffset; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_cf_ftqOffset <= _GEN_1771;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fuOpType <= uop_7_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fuOpType <= uop_6_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fuOpType <= uop_5_ctrl_fuOpType; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_ctrl_fuOpType <= _GEN_1851;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_rfWen <= uop_7_ctrl_rfWen; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_rfWen <= uop_6_ctrl_rfWen; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_rfWen <= uop_5_ctrl_rfWen; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_ctrl_rfWen <= _GEN_1859;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fpWen <= uop_7_ctrl_fpWen; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fpWen <= uop_6_ctrl_fpWen; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_ctrl_fpWen <= uop_5_ctrl_fpWen; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_ctrl_fpWen <= _GEN_1867;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_pdest <= uop_7_pdest; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_pdest <= uop_6_pdest; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_pdest <= uop_5_pdest; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_pdest <= _GEN_2115;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_flag <= uop_7_lqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_flag <= uop_6_lqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_flag <= uop_5_lqIdx_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_lqIdx_flag <= _GEN_2123;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_value <= uop_7_lqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_value <= uop_6_lqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_lqIdx_value <= uop_5_lqIdx_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_lqIdx_value <= _GEN_2131;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_flag <= uop_7_sqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_flag <= uop_6_sqIdx_flag; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_flag <= uop_5_sqIdx_flag; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_sqIdx_flag <= _GEN_2139;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_value <= uop_7_sqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_value <= uop_6_sqIdx_value; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayUop_1_sqIdx_value <= uop_5_sqIdx_value; // @[Reg.scala 17:22]
      end else begin
        s2_replayUop_1_sqIdx_value <= _GEN_2147;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId_1 <= missMSHRId_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId_1 <= missMSHRId_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayMSHRId_1 <= missMSHRId_5; // @[Reg.scala 17:22]
      end else begin
        s2_replayMSHRId_1 <= _GEN_2359;
      end
    end
    if (s1_can_go_1) begin // @[Reg.scala 17:18]
      if (3'h7 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses_1 <= cause_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses_1 <= cause_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s1_balanceOldestSel_reorderSel_1_bits_index) begin // @[Reg.scala 17:22]
        s2_replayCauses_1 <= cause_5; // @[Reg.scala 17:22]
      end else begin
        s2_replayCauses_1 <= _GEN_2386;
      end
    end
    lastReplay_0 <= io_replay_0_ready & io_replay_0_valid; // @[Decoupled.scala 50:35]
    lastReplay_1 <= io_replay_1_ready & io_replay_1_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG <= _s0_loadEnqFireMask_T_2 + _s0_loadEnqFireMask_T_5; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _T_140 + _T_143; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= _deqBlockCount_T_1 + _deqBlockCount_T_3; // @[Bitwise.scala 48:55]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= io_lqFull; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= _replayRARRejectCount_T_3 + _replayRARRejectCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= _replayRAWRejectCount_T_3 + _replayRAWRejectCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= _replayNukeCount_T_3 + _replayNukeCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= _replayMemAmbCount_T_3 + _replayMemAmbCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= _replayTlbMissCount_T_3 + _replayTlbMissCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= _replayBankConflictCount_T_3 + _replayBankConflictCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= _replayDCacheReplayCount_T_3 + _replayDCacheReplayCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= _replayForwardFailCount_T_3 + _replayForwardFailCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= _replayDCacheMissCount_T_3 + _replayDCacheMissCount_T_7; // @[Bitwise.scala 48:55]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_0 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_0) begin // @[LoadQueueReplay.scala 682:47]
      allocated_0 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h0 == io_enq_1_bits_schedIndex) begin
          allocated_0 <= 1'h0;
        end else begin
          allocated_0 <= _GEN_5775;
        end
      end else begin
        allocated_0 <= _GEN_5775;
      end
    end else begin
      allocated_0 <= _GEN_5775;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_1 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_1) begin // @[LoadQueueReplay.scala 682:47]
      allocated_1 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h1 == io_enq_1_bits_schedIndex) begin
          allocated_1 <= 1'h0;
        end else begin
          allocated_1 <= _GEN_5776;
        end
      end else begin
        allocated_1 <= _GEN_5776;
      end
    end else begin
      allocated_1 <= _GEN_5776;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_2 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_2) begin // @[LoadQueueReplay.scala 682:47]
      allocated_2 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h2 == io_enq_1_bits_schedIndex) begin
          allocated_2 <= 1'h0;
        end else begin
          allocated_2 <= _GEN_5777;
        end
      end else begin
        allocated_2 <= _GEN_5777;
      end
    end else begin
      allocated_2 <= _GEN_5777;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_3 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_3) begin // @[LoadQueueReplay.scala 682:47]
      allocated_3 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h3 == io_enq_1_bits_schedIndex) begin
          allocated_3 <= 1'h0;
        end else begin
          allocated_3 <= _GEN_5778;
        end
      end else begin
        allocated_3 <= _GEN_5778;
      end
    end else begin
      allocated_3 <= _GEN_5778;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_4 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_4) begin // @[LoadQueueReplay.scala 682:47]
      allocated_4 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h4 == io_enq_1_bits_schedIndex) begin
          allocated_4 <= 1'h0;
        end else begin
          allocated_4 <= _GEN_5779;
        end
      end else begin
        allocated_4 <= _GEN_5779;
      end
    end else begin
      allocated_4 <= _GEN_5779;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_5 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_5) begin // @[LoadQueueReplay.scala 682:47]
      allocated_5 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h5 == io_enq_1_bits_schedIndex) begin
          allocated_5 <= 1'h0;
        end else begin
          allocated_5 <= _GEN_5780;
        end
      end else begin
        allocated_5 <= _GEN_5780;
      end
    end else begin
      allocated_5 <= _GEN_5780;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_6 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_6) begin // @[LoadQueueReplay.scala 682:47]
      allocated_6 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h6 == io_enq_1_bits_schedIndex) begin
          allocated_6 <= 1'h0;
        end else begin
          allocated_6 <= _GEN_5781;
        end
      end else begin
        allocated_6 <= _GEN_5781;
      end
    end else begin
      allocated_6 <= _GEN_5781;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 695:26]
      allocated_7 <= 1'h0; // @[LoadQueueReplay.scala 696:20]
    end else if (needCancel_7) begin // @[LoadQueueReplay.scala 682:47]
      allocated_7 <= 1'h0; // @[LoadQueueReplay.scala 683:49 684:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        if (3'h7 == io_enq_1_bits_schedIndex) begin
          allocated_7 <= 1'h0;
        end else begin
          allocated_7 <= _GEN_5782;
        end
      end else begin
        allocated_7 <= _GEN_5782;
      end
    end else begin
      allocated_7 <= _GEN_5782;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_0 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_0 <= _GEN_5783;
      end else if (3'h0 == io_enq_1_bits_schedIndex) begin
        scheduled_0 <= 1'h0;
      end else begin
        scheduled_0 <= _GEN_5783;
      end
    end else begin
      scheduled_0 <= _GEN_5783;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_1 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_1 <= _GEN_5784;
      end else if (3'h1 == io_enq_1_bits_schedIndex) begin
        scheduled_1 <= 1'h0;
      end else begin
        scheduled_1 <= _GEN_5784;
      end
    end else begin
      scheduled_1 <= _GEN_5784;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_2 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_2 <= _GEN_5785;
      end else if (3'h2 == io_enq_1_bits_schedIndex) begin
        scheduled_2 <= 1'h0;
      end else begin
        scheduled_2 <= _GEN_5785;
      end
    end else begin
      scheduled_2 <= _GEN_5785;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_3 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_3 <= _GEN_5786;
      end else if (3'h3 == io_enq_1_bits_schedIndex) begin
        scheduled_3 <= 1'h0;
      end else begin
        scheduled_3 <= _GEN_5786;
      end
    end else begin
      scheduled_3 <= _GEN_5786;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_4 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_4 <= _GEN_5787;
      end else if (3'h4 == io_enq_1_bits_schedIndex) begin
        scheduled_4 <= 1'h0;
      end else begin
        scheduled_4 <= _GEN_5787;
      end
    end else begin
      scheduled_4 <= _GEN_5787;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_5 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_5 <= _GEN_5788;
      end else if (3'h5 == io_enq_1_bits_schedIndex) begin
        scheduled_5 <= 1'h0;
      end else begin
        scheduled_5 <= _GEN_5788;
      end
    end else begin
      scheduled_5 <= _GEN_5788;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_6 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_6 <= _GEN_5789;
      end else if (3'h6 == io_enq_1_bits_schedIndex) begin
        scheduled_6 <= 1'h0;
      end else begin
        scheduled_6 <= _GEN_5789;
      end
    end else begin
      scheduled_6 <= _GEN_5789;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 682:47]
      scheduled_7 <= 1'h0; // @[LoadQueueReplay.scala 683:49 687:{31,31}]
    end else if (_canFreeVec_T_4) begin
      if (_canFreeVec_T_6) begin
        scheduled_7 <= _GEN_5790;
      end else if (3'h7 == io_enq_1_bits_schedIndex) begin
        scheduled_7 <= 1'h0;
      end else begin
        scheduled_7 <= _GEN_5790;
      end
    end else begin
      scheduled_7 <= _GEN_5790;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_0 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h0 == enqIndex_1) begin
        debug_vaddr_0 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_0 <= _GEN_4454;
      end
    end else begin
      debug_vaddr_0 <= _GEN_4454;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_1 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h1 == enqIndex_1) begin
        debug_vaddr_1 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_1 <= _GEN_4455;
      end
    end else begin
      debug_vaddr_1 <= _GEN_4455;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_2 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h2 == enqIndex_1) begin
        debug_vaddr_2 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_2 <= _GEN_4456;
      end
    end else begin
      debug_vaddr_2 <= _GEN_4456;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_3 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h3 == enqIndex_1) begin
        debug_vaddr_3 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_3 <= _GEN_4457;
      end
    end else begin
      debug_vaddr_3 <= _GEN_4457;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_4 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h4 == enqIndex_1) begin
        debug_vaddr_4 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_4 <= _GEN_4458;
      end
    end else begin
      debug_vaddr_4 <= _GEN_4458;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_5 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h5 == enqIndex_1) begin
        debug_vaddr_5 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_5 <= _GEN_4459;
      end
    end else begin
      debug_vaddr_5 <= _GEN_4459;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_6 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h6 == enqIndex_1) begin
        debug_vaddr_6 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_6 <= _GEN_4460;
      end
    end else begin
      debug_vaddr_6 <= _GEN_4460;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      debug_vaddr_7 <= 39'h0; // @[LoadQueueReplay.scala 622:{31,31}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h7 == enqIndex_1) begin
        debug_vaddr_7 <= io_enq_1_bits_vaddr;
      end else begin
        debug_vaddr_7 <= _GEN_4461;
      end
    end else begin
      debug_vaddr_7 <= _GEN_4461;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_0 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h0 == enqIndex_1) begin
        cause_0 <= _needReplay_T_1;
      end else begin
        cause_0 <= _GEN_4462;
      end
    end else begin
      cause_0 <= _GEN_4462;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_1 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h1 == enqIndex_1) begin
        cause_1 <= _needReplay_T_1;
      end else begin
        cause_1 <= _GEN_4463;
      end
    end else begin
      cause_1 <= _GEN_4463;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_2 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h2 == enqIndex_1) begin
        cause_2 <= _needReplay_T_1;
      end else begin
        cause_2 <= _GEN_4464;
      end
    end else begin
      cause_2 <= _GEN_4464;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_3 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h3 == enqIndex_1) begin
        cause_3 <= _needReplay_T_1;
      end else begin
        cause_3 <= _GEN_4465;
      end
    end else begin
      cause_3 <= _GEN_4465;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_4 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h4 == enqIndex_1) begin
        cause_4 <= _needReplay_T_1;
      end else begin
        cause_4 <= _GEN_4466;
      end
    end else begin
      cause_4 <= _GEN_4466;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_5 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h5 == enqIndex_1) begin
        cause_5 <= _needReplay_T_1;
      end else begin
        cause_5 <= _GEN_4467;
      end
    end else begin
      cause_5 <= _GEN_4467;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_6 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h6 == enqIndex_1) begin
        cause_6 <= _needReplay_T_1;
      end else begin
        cause_6 <= _GEN_4468;
      end
    end else begin
      cause_6 <= _GEN_4468;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      cause_7 <= 10'h0; // @[LoadQueueReplay.scala 630:{23,23}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h7 == enqIndex_1) begin
        cause_7 <= _needReplay_T_1;
      end else begin
        cause_7 <= _GEN_4469;
      end
    end else begin
      cause_7 <= _GEN_4469;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_0 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h0 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_0 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_0 <= _GEN_5562;
        end
      end else begin
        blocking_0 <= _GEN_5562;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h0 == enqIndex) begin
          blocking_0 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_0 <= _GEN_3358;
        end
      end else begin
        blocking_0 <= _GEN_3358;
      end
    end else if (s0_loadHintWakeMask[0]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_0 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_0[8]) begin
      blocking_0 <= _blocking_0_T_16;
    end else begin
      blocking_0 <= _GEN_196;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_1 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h1 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_1 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_1 <= _GEN_5563;
        end
      end else begin
        blocking_1 <= _GEN_5563;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h1 == enqIndex) begin
          blocking_1 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_1 <= _GEN_3359;
        end
      end else begin
        blocking_1 <= _GEN_3359;
      end
    end else if (s0_loadHintWakeMask[1]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_1 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_1[8]) begin
      blocking_1 <= _blocking_1_T_16;
    end else begin
      blocking_1 <= _GEN_202;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_2 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h2 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_2 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_2 <= _GEN_5564;
        end
      end else begin
        blocking_2 <= _GEN_5564;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h2 == enqIndex) begin
          blocking_2 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_2 <= _GEN_3360;
        end
      end else begin
        blocking_2 <= _GEN_3360;
      end
    end else if (s0_loadHintWakeMask[2]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_2 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_2[8]) begin
      blocking_2 <= _blocking_2_T_16;
    end else begin
      blocking_2 <= _GEN_208;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_3 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h3 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_3 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_3 <= _GEN_5565;
        end
      end else begin
        blocking_3 <= _GEN_5565;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h3 == enqIndex) begin
          blocking_3 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_3 <= _GEN_3361;
        end
      end else begin
        blocking_3 <= _GEN_3361;
      end
    end else if (s0_loadHintWakeMask[3]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_3 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_3[8]) begin
      blocking_3 <= _blocking_3_T_16;
    end else begin
      blocking_3 <= _GEN_214;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_4 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h4 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_4 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_4 <= _GEN_5566;
        end
      end else begin
        blocking_4 <= _GEN_5566;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h4 == enqIndex) begin
          blocking_4 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_4 <= _GEN_3362;
        end
      end else begin
        blocking_4 <= _GEN_3362;
      end
    end else if (s0_loadHintWakeMask[4]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_4 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_4[8]) begin
      blocking_4 <= _blocking_4_T_16;
    end else begin
      blocking_4 <= _GEN_220;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_5 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h5 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_5 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_5 <= _GEN_5567;
        end
      end else begin
        blocking_5 <= _GEN_5567;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h5 == enqIndex) begin
          blocking_5 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_5 <= _GEN_3363;
        end
      end else begin
        blocking_5 <= _GEN_3363;
      end
    end else if (s0_loadHintWakeMask[5]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_5 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_5[8]) begin
      blocking_5 <= _blocking_5_T_16;
    end else begin
      blocking_5 <= _GEN_226;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_6 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h6 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_6 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_6 <= _GEN_5568;
        end
      end else begin
        blocking_6 <= _GEN_5568;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h6 == enqIndex) begin
          blocking_6 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_6 <= _GEN_3364;
        end
      end else begin
        blocking_6 <= _GEN_3364;
      end
    end else if (s0_loadHintWakeMask[6]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_6 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_6[8]) begin
      blocking_6 <= _blocking_6_T_16;
    end else begin
      blocking_6 <= _GEN_232;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blocking_7 <= 1'h0; // @[LoadQueueReplay.scala 655:80 656:{28,28}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin // @[LoadQueueReplay.scala 606:40]
      if (io_enq_1_bits_rep_info_cause_4 & io_enq_1_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 655:80]
        if (3'h7 == enqIndex_1) begin // @[LoadQueueReplay.scala 656:28]
          blocking_7 <= ~io_enq_1_bits_rep_info_full_fwd & _blocking_T_8; // @[LoadQueueReplay.scala 656:28]
        end else begin
          blocking_7 <= _GEN_5569;
        end
      end else begin
        blocking_7 <= _GEN_5569;
      end
    end else if (needEnqueue_0 & io_enq_0_ready) begin // @[LoadQueueReplay.scala 386:34]
      if (io_enq_0_bits_rep_info_cause_4 & io_enq_0_bits_handledByMSHR) begin // @[LoadQueueReplay.scala 387:19]
        if (3'h7 == enqIndex) begin
          blocking_7 <= ~io_enq_0_bits_rep_info_full_fwd & _blocking_T_3;
        end else begin
          blocking_7 <= _GEN_3365;
        end
      end else begin
        blocking_7 <= _GEN_3365;
      end
    end else if (s0_loadHintWakeMask[7]) begin // @[LoadQueueReplay.scala 339:45]
      blocking_7 <= 1'h0; // @[LoadQueueReplay.scala 340:19]
    end else if (cause_7[8]) begin
      blocking_7 <= _blocking_7_T_16;
    end else begin
      blocking_7 <= _GEN_238;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_0 <= 1'h0;
    end else begin
      selBlocked_0 <= creditUpdate_0 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_1 <= 1'h0;
    end else begin
      selBlocked_1 <= creditUpdate_1 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_2 <= 1'h0;
    end else begin
      selBlocked_2 <= creditUpdate_2 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_3 <= 1'h0;
    end else begin
      selBlocked_3 <= creditUpdate_3 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_4 <= 1'h0;
    end else begin
      selBlocked_4 <= creditUpdate_4 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_5 <= 1'h0;
    end else begin
      selBlocked_5 <= creditUpdate_5 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_6 <= 1'h0;
    end else begin
      selBlocked_6 <= creditUpdate_6 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 246:38]
      selBlocked_7 <= 1'h0;
    end else begin
      selBlocked_7 <= creditUpdate_7 != 7'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_0 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h0 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_0 <= _GEN_5585;
          end else begin
            blockPtrTlb_0 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_0 <= _GEN_4486;
        end
      end else begin
        blockPtrTlb_0 <= _GEN_4486;
      end
    end else begin
      blockPtrTlb_0 <= _GEN_4486;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_1 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h1 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_1 <= _GEN_5585;
          end else begin
            blockPtrTlb_1 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_1 <= _GEN_4487;
        end
      end else begin
        blockPtrTlb_1 <= _GEN_4487;
      end
    end else begin
      blockPtrTlb_1 <= _GEN_4487;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_2 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h2 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_2 <= _GEN_5585;
          end else begin
            blockPtrTlb_2 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_2 <= _GEN_4488;
        end
      end else begin
        blockPtrTlb_2 <= _GEN_4488;
      end
    end else begin
      blockPtrTlb_2 <= _GEN_4488;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_3 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h3 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_3 <= _GEN_5585;
          end else begin
            blockPtrTlb_3 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_3 <= _GEN_4489;
        end
      end else begin
        blockPtrTlb_3 <= _GEN_4489;
      end
    end else begin
      blockPtrTlb_3 <= _GEN_4489;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_4 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h4 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_4 <= _GEN_5585;
          end else begin
            blockPtrTlb_4 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_4 <= _GEN_4490;
        end
      end else begin
        blockPtrTlb_4 <= _GEN_4490;
      end
    end else begin
      blockPtrTlb_4 <= _GEN_4490;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_5 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h5 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_5 <= _GEN_5585;
          end else begin
            blockPtrTlb_5 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_5 <= _GEN_4491;
        end
      end else begin
        blockPtrTlb_5 <= _GEN_4491;
      end
    end else begin
      blockPtrTlb_5 <= _GEN_4491;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_6 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h6 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_6 <= _GEN_5585;
          end else begin
            blockPtrTlb_6 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_6 <= _GEN_4492;
        end
      end else begin
        blockPtrTlb_6 <= _GEN_4492;
      end
    end else begin
      blockPtrTlb_6 <= _GEN_4492;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      blockPtrTlb_7 <= 2'h0; // @[LoadQueueReplay.scala 649:54 651:{31,37}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_rep_info_cause_1) begin
        if (3'h7 == enqIndex_1) begin
          if (_GEN_5585 == 2'h3) begin
            blockPtrTlb_7 <= _GEN_5585;
          end else begin
            blockPtrTlb_7 <= _blockPtrTlb_T_18;
          end
        end else begin
          blockPtrTlb_7 <= _GEN_4493;
        end
      end else begin
        blockPtrTlb_7 <= _GEN_4493;
      end
    end else begin
      blockPtrTlb_7 <= _GEN_4493;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_0 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h0 == enqIndex_1) begin
          missMSHRId_0 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_0 <= _GEN_4542;
        end
      end else begin
        missMSHRId_0 <= _GEN_4542;
      end
    end else begin
      missMSHRId_0 <= _GEN_4542;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_1 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h1 == enqIndex_1) begin
          missMSHRId_1 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_1 <= _GEN_4543;
        end
      end else begin
        missMSHRId_1 <= _GEN_4543;
      end
    end else begin
      missMSHRId_1 <= _GEN_4543;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_2 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h2 == enqIndex_1) begin
          missMSHRId_2 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_2 <= _GEN_4544;
        end
      end else begin
        missMSHRId_2 <= _GEN_4544;
      end
    end else begin
      missMSHRId_2 <= _GEN_4544;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_3 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h3 == enqIndex_1) begin
          missMSHRId_3 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_3 <= _GEN_4545;
        end
      end else begin
        missMSHRId_3 <= _GEN_4545;
      end
    end else begin
      missMSHRId_3 <= _GEN_4545;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_4 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h4 == enqIndex_1) begin
          missMSHRId_4 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_4 <= _GEN_4546;
        end
      end else begin
        missMSHRId_4 <= _GEN_4546;
      end
    end else begin
      missMSHRId_4 <= _GEN_4546;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_5 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h5 == enqIndex_1) begin
          missMSHRId_5 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_5 <= _GEN_4547;
        end
      end else begin
        missMSHRId_5 <= _GEN_4547;
      end
    end else begin
      missMSHRId_5 <= _GEN_4547;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_6 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h6 == enqIndex_1) begin
          missMSHRId_6 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_6 <= _GEN_4548;
        end
      end else begin
        missMSHRId_6 <= _GEN_4548;
      end
    end else begin
      missMSHRId_6 <= _GEN_4548;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      missMSHRId_7 <= 2'h0; // @[LoadQueueReplay.scala 674:36 675:{30,30}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (io_enq_1_bits_handledByMSHR) begin
        if (3'h7 == enqIndex_1) begin
          missMSHRId_7 <= io_enq_1_bits_rep_info_mshr_id;
        end else begin
          missMSHRId_7 <= _GEN_4549;
        end
      end else begin
        missMSHRId_7 <= _GEN_4549;
      end
    end else begin
      missMSHRId_7 <= _GEN_4549;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_0 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h0 == enqIndex_1) begin
        dataInLastBeatReg_0 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_0 <= _GEN_4550;
      end
    end else begin
      dataInLastBeatReg_0 <= _GEN_4550;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_1 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h1 == enqIndex_1) begin
        dataInLastBeatReg_1 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_1 <= _GEN_4551;
      end
    end else begin
      dataInLastBeatReg_1 <= _GEN_4551;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_2 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h2 == enqIndex_1) begin
        dataInLastBeatReg_2 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_2 <= _GEN_4552;
      end
    end else begin
      dataInLastBeatReg_2 <= _GEN_4552;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_3 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h3 == enqIndex_1) begin
        dataInLastBeatReg_3 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_3 <= _GEN_4553;
      end
    end else begin
      dataInLastBeatReg_3 <= _GEN_4553;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_4 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h4 == enqIndex_1) begin
        dataInLastBeatReg_4 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_4 <= _GEN_4554;
      end
    end else begin
      dataInLastBeatReg_4 <= _GEN_4554;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_5 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h5 == enqIndex_1) begin
        dataInLastBeatReg_5 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_5 <= _GEN_4555;
      end
    end else begin
      dataInLastBeatReg_5 <= _GEN_4555;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_6 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h6 == enqIndex_1) begin
        dataInLastBeatReg_6 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_6 <= _GEN_4556;
      end
    end else begin
      dataInLastBeatReg_6 <= _GEN_4556;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 606:40]
      dataInLastBeatReg_7 <= 1'h0; // @[LoadQueueReplay.scala 677:{35,35}]
    end else if (needEnqueue_1 & io_enq_1_ready) begin
      if (3'h7 == enqIndex_1) begin
        dataInLastBeatReg_7 <= io_enq_1_bits_rep_info_last_beat;
      end else begin
        dataInLastBeatReg_7 <= _GEN_4557;
      end
    end else begin
      dataInLastBeatReg_7 <= _GEN_4557;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 569:47]
      coldCounter_0 <= 4'h0; // @[LoadQueueReplay.scala 570:22]
    end else if (lastReplay_0 & _T_140) begin // @[LoadQueueReplay.scala 571:34]
      coldCounter_0 <= _coldCounter_0_T_1; // @[LoadQueueReplay.scala 572:22]
    end else if (_T_148) begin // @[LoadQueueReplay.scala 574:22]
      coldCounter_0 <= _coldCounter_0_T_1;
    end else begin
      coldCounter_0 <= 4'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 569:47]
      coldCounter_1 <= 4'h0; // @[LoadQueueReplay.scala 570:22]
    end else if (lastReplay_1 & _T_143) begin // @[LoadQueueReplay.scala 571:34]
      coldCounter_1 <= _coldCounter_1_T_1; // @[LoadQueueReplay.scala 572:22]
    end else if (_T_151) begin // @[LoadQueueReplay.scala 574:22]
      coldCounter_1 <= _coldCounter_1_T_1;
    end else begin
      coldCounter_1 <= 4'h0;
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
  allocated_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  allocated_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  allocated_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  allocated_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  allocated_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  allocated_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  allocated_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  allocated_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  scheduled_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  scheduled_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  scheduled_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  scheduled_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  scheduled_4 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  scheduled_5 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  scheduled_6 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  scheduled_7 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  uop_0_cf_exceptionVec_13 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  uop_0_cf_trigger_backendEn_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  uop_0_cf_trigger_backendHit_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  uop_0_cf_trigger_backendHit_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  uop_0_cf_trigger_backendHit_4 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  uop_0_cf_storeSetHit = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  uop_0_cf_loadWaitStrict = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_0_cf_ssid = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  uop_0_cf_ftqPtr_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  uop_0_cf_ftqPtr_value = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  uop_0_cf_ftqOffset = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  uop_0_ctrl_fuOpType = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  uop_0_ctrl_rfWen = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  uop_0_ctrl_fpWen = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  uop_0_pdest = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  uop_0_robIdx_flag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  uop_0_robIdx_value = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  uop_0_lqIdx_flag = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  uop_0_lqIdx_value = _RAND_34[3:0];
  _RAND_35 = {1{`RANDOM}};
  uop_0_sqIdx_flag = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  uop_0_sqIdx_value = _RAND_36[3:0];
  _RAND_37 = {1{`RANDOM}};
  uop_1_cf_exceptionVec_13 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  uop_1_cf_trigger_backendEn_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  uop_1_cf_trigger_backendHit_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  uop_1_cf_trigger_backendHit_1 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_1_cf_trigger_backendHit_4 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  uop_1_cf_storeSetHit = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  uop_1_cf_loadWaitStrict = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  uop_1_cf_ssid = _RAND_44[4:0];
  _RAND_45 = {1{`RANDOM}};
  uop_1_cf_ftqPtr_flag = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  uop_1_cf_ftqPtr_value = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  uop_1_cf_ftqOffset = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  uop_1_ctrl_fuOpType = _RAND_48[6:0];
  _RAND_49 = {1{`RANDOM}};
  uop_1_ctrl_rfWen = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  uop_1_ctrl_fpWen = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  uop_1_pdest = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  uop_1_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_53[4:0];
  _RAND_54 = {1{`RANDOM}};
  uop_1_lqIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  uop_1_lqIdx_value = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  uop_1_sqIdx_flag = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  uop_1_sqIdx_value = _RAND_57[3:0];
  _RAND_58 = {1{`RANDOM}};
  uop_2_cf_exceptionVec_13 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  uop_2_cf_trigger_backendEn_1 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  uop_2_cf_trigger_backendHit_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  uop_2_cf_trigger_backendHit_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  uop_2_cf_trigger_backendHit_4 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  uop_2_cf_storeSetHit = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  uop_2_cf_loadWaitStrict = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  uop_2_cf_ssid = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  uop_2_cf_ftqPtr_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  uop_2_cf_ftqPtr_value = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  uop_2_cf_ftqOffset = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  uop_2_ctrl_fuOpType = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  uop_2_ctrl_rfWen = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  uop_2_ctrl_fpWen = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  uop_2_pdest = _RAND_72[5:0];
  _RAND_73 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  uop_2_lqIdx_flag = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  uop_2_lqIdx_value = _RAND_76[3:0];
  _RAND_77 = {1{`RANDOM}};
  uop_2_sqIdx_flag = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  uop_2_sqIdx_value = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  uop_3_cf_exceptionVec_13 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  uop_3_cf_trigger_backendEn_1 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  uop_3_cf_trigger_backendHit_0 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  uop_3_cf_trigger_backendHit_1 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  uop_3_cf_trigger_backendHit_4 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  uop_3_cf_storeSetHit = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  uop_3_cf_loadWaitStrict = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  uop_3_cf_ssid = _RAND_86[4:0];
  _RAND_87 = {1{`RANDOM}};
  uop_3_cf_ftqPtr_flag = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  uop_3_cf_ftqPtr_value = _RAND_88[2:0];
  _RAND_89 = {1{`RANDOM}};
  uop_3_cf_ftqOffset = _RAND_89[2:0];
  _RAND_90 = {1{`RANDOM}};
  uop_3_ctrl_fuOpType = _RAND_90[6:0];
  _RAND_91 = {1{`RANDOM}};
  uop_3_ctrl_rfWen = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  uop_3_ctrl_fpWen = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  uop_3_pdest = _RAND_93[5:0];
  _RAND_94 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_95[4:0];
  _RAND_96 = {1{`RANDOM}};
  uop_3_lqIdx_flag = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  uop_3_lqIdx_value = _RAND_97[3:0];
  _RAND_98 = {1{`RANDOM}};
  uop_3_sqIdx_flag = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  uop_3_sqIdx_value = _RAND_99[3:0];
  _RAND_100 = {1{`RANDOM}};
  uop_4_cf_exceptionVec_13 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  uop_4_cf_trigger_backendEn_1 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  uop_4_cf_trigger_backendHit_0 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  uop_4_cf_trigger_backendHit_1 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  uop_4_cf_trigger_backendHit_4 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  uop_4_cf_storeSetHit = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  uop_4_cf_loadWaitStrict = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  uop_4_cf_ssid = _RAND_107[4:0];
  _RAND_108 = {1{`RANDOM}};
  uop_4_cf_ftqPtr_flag = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  uop_4_cf_ftqPtr_value = _RAND_109[2:0];
  _RAND_110 = {1{`RANDOM}};
  uop_4_cf_ftqOffset = _RAND_110[2:0];
  _RAND_111 = {1{`RANDOM}};
  uop_4_ctrl_fuOpType = _RAND_111[6:0];
  _RAND_112 = {1{`RANDOM}};
  uop_4_ctrl_rfWen = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  uop_4_ctrl_fpWen = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  uop_4_pdest = _RAND_114[5:0];
  _RAND_115 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_116[4:0];
  _RAND_117 = {1{`RANDOM}};
  uop_4_lqIdx_flag = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  uop_4_lqIdx_value = _RAND_118[3:0];
  _RAND_119 = {1{`RANDOM}};
  uop_4_sqIdx_flag = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  uop_4_sqIdx_value = _RAND_120[3:0];
  _RAND_121 = {1{`RANDOM}};
  uop_5_cf_exceptionVec_13 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  uop_5_cf_trigger_backendEn_1 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  uop_5_cf_trigger_backendHit_0 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  uop_5_cf_trigger_backendHit_1 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  uop_5_cf_trigger_backendHit_4 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  uop_5_cf_storeSetHit = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  uop_5_cf_loadWaitStrict = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  uop_5_cf_ssid = _RAND_128[4:0];
  _RAND_129 = {1{`RANDOM}};
  uop_5_cf_ftqPtr_flag = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  uop_5_cf_ftqPtr_value = _RAND_130[2:0];
  _RAND_131 = {1{`RANDOM}};
  uop_5_cf_ftqOffset = _RAND_131[2:0];
  _RAND_132 = {1{`RANDOM}};
  uop_5_ctrl_fuOpType = _RAND_132[6:0];
  _RAND_133 = {1{`RANDOM}};
  uop_5_ctrl_rfWen = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  uop_5_ctrl_fpWen = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  uop_5_pdest = _RAND_135[5:0];
  _RAND_136 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_137[4:0];
  _RAND_138 = {1{`RANDOM}};
  uop_5_lqIdx_flag = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  uop_5_lqIdx_value = _RAND_139[3:0];
  _RAND_140 = {1{`RANDOM}};
  uop_5_sqIdx_flag = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  uop_5_sqIdx_value = _RAND_141[3:0];
  _RAND_142 = {1{`RANDOM}};
  uop_6_cf_exceptionVec_13 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  uop_6_cf_trigger_backendEn_1 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  uop_6_cf_trigger_backendHit_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  uop_6_cf_trigger_backendHit_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  uop_6_cf_trigger_backendHit_4 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  uop_6_cf_storeSetHit = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  uop_6_cf_loadWaitStrict = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  uop_6_cf_ssid = _RAND_149[4:0];
  _RAND_150 = {1{`RANDOM}};
  uop_6_cf_ftqPtr_flag = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  uop_6_cf_ftqPtr_value = _RAND_151[2:0];
  _RAND_152 = {1{`RANDOM}};
  uop_6_cf_ftqOffset = _RAND_152[2:0];
  _RAND_153 = {1{`RANDOM}};
  uop_6_ctrl_fuOpType = _RAND_153[6:0];
  _RAND_154 = {1{`RANDOM}};
  uop_6_ctrl_rfWen = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  uop_6_ctrl_fpWen = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  uop_6_pdest = _RAND_156[5:0];
  _RAND_157 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_158[4:0];
  _RAND_159 = {1{`RANDOM}};
  uop_6_lqIdx_flag = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  uop_6_lqIdx_value = _RAND_160[3:0];
  _RAND_161 = {1{`RANDOM}};
  uop_6_sqIdx_flag = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  uop_6_sqIdx_value = _RAND_162[3:0];
  _RAND_163 = {1{`RANDOM}};
  uop_7_cf_exceptionVec_13 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  uop_7_cf_trigger_backendEn_1 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  uop_7_cf_trigger_backendHit_0 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  uop_7_cf_trigger_backendHit_1 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  uop_7_cf_trigger_backendHit_4 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  uop_7_cf_storeSetHit = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  uop_7_cf_loadWaitStrict = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  uop_7_cf_ssid = _RAND_170[4:0];
  _RAND_171 = {1{`RANDOM}};
  uop_7_cf_ftqPtr_flag = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  uop_7_cf_ftqPtr_value = _RAND_172[2:0];
  _RAND_173 = {1{`RANDOM}};
  uop_7_cf_ftqOffset = _RAND_173[2:0];
  _RAND_174 = {1{`RANDOM}};
  uop_7_ctrl_fuOpType = _RAND_174[6:0];
  _RAND_175 = {1{`RANDOM}};
  uop_7_ctrl_rfWen = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  uop_7_ctrl_fpWen = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  uop_7_pdest = _RAND_177[5:0];
  _RAND_178 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_179[4:0];
  _RAND_180 = {1{`RANDOM}};
  uop_7_lqIdx_flag = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  uop_7_lqIdx_value = _RAND_181[3:0];
  _RAND_182 = {1{`RANDOM}};
  uop_7_sqIdx_flag = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  uop_7_sqIdx_value = _RAND_183[3:0];
  _RAND_184 = {2{`RANDOM}};
  debug_vaddr_0 = _RAND_184[38:0];
  _RAND_185 = {2{`RANDOM}};
  debug_vaddr_1 = _RAND_185[38:0];
  _RAND_186 = {2{`RANDOM}};
  debug_vaddr_2 = _RAND_186[38:0];
  _RAND_187 = {2{`RANDOM}};
  debug_vaddr_3 = _RAND_187[38:0];
  _RAND_188 = {2{`RANDOM}};
  debug_vaddr_4 = _RAND_188[38:0];
  _RAND_189 = {2{`RANDOM}};
  debug_vaddr_5 = _RAND_189[38:0];
  _RAND_190 = {2{`RANDOM}};
  debug_vaddr_6 = _RAND_190[38:0];
  _RAND_191 = {2{`RANDOM}};
  debug_vaddr_7 = _RAND_191[38:0];
  _RAND_192 = {1{`RANDOM}};
  cause_0 = _RAND_192[9:0];
  _RAND_193 = {1{`RANDOM}};
  cause_1 = _RAND_193[9:0];
  _RAND_194 = {1{`RANDOM}};
  cause_2 = _RAND_194[9:0];
  _RAND_195 = {1{`RANDOM}};
  cause_3 = _RAND_195[9:0];
  _RAND_196 = {1{`RANDOM}};
  cause_4 = _RAND_196[9:0];
  _RAND_197 = {1{`RANDOM}};
  cause_5 = _RAND_197[9:0];
  _RAND_198 = {1{`RANDOM}};
  cause_6 = _RAND_198[9:0];
  _RAND_199 = {1{`RANDOM}};
  cause_7 = _RAND_199[9:0];
  _RAND_200 = {1{`RANDOM}};
  blocking_0 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  blocking_1 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  blocking_2 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  blocking_3 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  blocking_4 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  blocking_5 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  blocking_6 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  blocking_7 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  selBlocked_0 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  selBlocked_1 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  selBlocked_2 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  selBlocked_3 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  selBlocked_4 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  selBlocked_5 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  selBlocked_6 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  selBlocked_7 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  blockPtrTlb_0 = _RAND_216[1:0];
  _RAND_217 = {1{`RANDOM}};
  blockPtrTlb_1 = _RAND_217[1:0];
  _RAND_218 = {1{`RANDOM}};
  blockPtrTlb_2 = _RAND_218[1:0];
  _RAND_219 = {1{`RANDOM}};
  blockPtrTlb_3 = _RAND_219[1:0];
  _RAND_220 = {1{`RANDOM}};
  blockPtrTlb_4 = _RAND_220[1:0];
  _RAND_221 = {1{`RANDOM}};
  blockPtrTlb_5 = _RAND_221[1:0];
  _RAND_222 = {1{`RANDOM}};
  blockPtrTlb_6 = _RAND_222[1:0];
  _RAND_223 = {1{`RANDOM}};
  blockPtrTlb_7 = _RAND_223[1:0];
  _RAND_224 = {1{`RANDOM}};
  blockCyclesTlb_0 = _RAND_224[6:0];
  _RAND_225 = {1{`RANDOM}};
  blockCyclesTlb_1 = _RAND_225[6:0];
  _RAND_226 = {1{`RANDOM}};
  blockCyclesTlb_2 = _RAND_226[6:0];
  _RAND_227 = {1{`RANDOM}};
  blockCyclesTlb_3 = _RAND_227[6:0];
  _RAND_228 = {1{`RANDOM}};
  blockSqIdx_0_flag = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  blockSqIdx_0_value = _RAND_229[3:0];
  _RAND_230 = {1{`RANDOM}};
  blockSqIdx_1_flag = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  blockSqIdx_1_value = _RAND_231[3:0];
  _RAND_232 = {1{`RANDOM}};
  blockSqIdx_2_flag = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  blockSqIdx_2_value = _RAND_233[3:0];
  _RAND_234 = {1{`RANDOM}};
  blockSqIdx_3_flag = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  blockSqIdx_3_value = _RAND_235[3:0];
  _RAND_236 = {1{`RANDOM}};
  blockSqIdx_4_flag = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  blockSqIdx_4_value = _RAND_237[3:0];
  _RAND_238 = {1{`RANDOM}};
  blockSqIdx_5_flag = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  blockSqIdx_5_value = _RAND_239[3:0];
  _RAND_240 = {1{`RANDOM}};
  blockSqIdx_6_flag = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  blockSqIdx_6_value = _RAND_241[3:0];
  _RAND_242 = {1{`RANDOM}};
  blockSqIdx_7_flag = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  blockSqIdx_7_value = _RAND_243[3:0];
  _RAND_244 = {1{`RANDOM}};
  missMSHRId_0 = _RAND_244[1:0];
  _RAND_245 = {1{`RANDOM}};
  missMSHRId_1 = _RAND_245[1:0];
  _RAND_246 = {1{`RANDOM}};
  missMSHRId_2 = _RAND_246[1:0];
  _RAND_247 = {1{`RANDOM}};
  missMSHRId_3 = _RAND_247[1:0];
  _RAND_248 = {1{`RANDOM}};
  missMSHRId_4 = _RAND_248[1:0];
  _RAND_249 = {1{`RANDOM}};
  missMSHRId_5 = _RAND_249[1:0];
  _RAND_250 = {1{`RANDOM}};
  missMSHRId_6 = _RAND_250[1:0];
  _RAND_251 = {1{`RANDOM}};
  missMSHRId_7 = _RAND_251[1:0];
  _RAND_252 = {1{`RANDOM}};
  dataInLastBeatReg_0 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  dataInLastBeatReg_1 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  dataInLastBeatReg_2 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  dataInLastBeatReg_3 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  dataInLastBeatReg_4 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  dataInLastBeatReg_5 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  dataInLastBeatReg_6 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  dataInLastBeatReg_7 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  coldCounter_0 = _RAND_260[3:0];
  _RAND_261 = {1{`RANDOM}};
  coldCounter_1 = _RAND_261[3:0];
  _RAND_262 = {1{`RANDOM}};
  s1_oldestSel_0_bits_r = _RAND_262[2:0];
  _RAND_263 = {1{`RANDOM}};
  s1_oldestSel_1_bits_r = _RAND_263[2:0];
  _RAND_264 = {1{`RANDOM}};
  s1_oldestSel_0_valid_r = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  s1_oldestSel_1_valid_r = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  s2_oldestSel_0_valid_r = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  s2_replayUop_robIdx_flag = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  s2_replayUop_robIdx_value = _RAND_268[4:0];
  _RAND_269 = {1{`RANDOM}};
  s2_oldestSel_1_valid_r = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  s2_replayUop_1_robIdx_flag = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  s2_replayUop_1_robIdx_value = _RAND_271[4:0];
  _RAND_272 = {1{`RANDOM}};
  s2_oldestSel_0_bits_r = _RAND_272[2:0];
  _RAND_273 = {1{`RANDOM}};
  s2_oldestSel_1_bits_r = _RAND_273[2:0];
  _RAND_274 = {1{`RANDOM}};
  s2_replayUop_cf_exceptionVec_13 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  s2_replayUop_cf_trigger_backendEn_1 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  s2_replayUop_cf_trigger_backendHit_0 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  s2_replayUop_cf_trigger_backendHit_1 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  s2_replayUop_cf_trigger_backendHit_4 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  s2_replayUop_cf_storeSetHit = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  s2_replayUop_cf_loadWaitStrict = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  s2_replayUop_cf_ssid = _RAND_281[4:0];
  _RAND_282 = {1{`RANDOM}};
  s2_replayUop_cf_ftqPtr_flag = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  s2_replayUop_cf_ftqPtr_value = _RAND_283[2:0];
  _RAND_284 = {1{`RANDOM}};
  s2_replayUop_cf_ftqOffset = _RAND_284[2:0];
  _RAND_285 = {1{`RANDOM}};
  s2_replayUop_ctrl_fuOpType = _RAND_285[6:0];
  _RAND_286 = {1{`RANDOM}};
  s2_replayUop_ctrl_rfWen = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  s2_replayUop_ctrl_fpWen = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  s2_replayUop_pdest = _RAND_288[5:0];
  _RAND_289 = {1{`RANDOM}};
  s2_replayUop_lqIdx_flag = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  s2_replayUop_lqIdx_value = _RAND_290[3:0];
  _RAND_291 = {1{`RANDOM}};
  s2_replayUop_sqIdx_flag = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  s2_replayUop_sqIdx_value = _RAND_292[3:0];
  _RAND_293 = {1{`RANDOM}};
  s2_replayMSHRId = _RAND_293[1:0];
  _RAND_294 = {1{`RANDOM}};
  s2_replayCauses = _RAND_294[9:0];
  _RAND_295 = {1{`RANDOM}};
  s2_replayUop_1_cf_exceptionVec_13 = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  s2_replayUop_1_cf_trigger_backendEn_1 = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  s2_replayUop_1_cf_trigger_backendHit_0 = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  s2_replayUop_1_cf_trigger_backendHit_1 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  s2_replayUop_1_cf_trigger_backendHit_4 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  s2_replayUop_1_cf_storeSetHit = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  s2_replayUop_1_cf_loadWaitStrict = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  s2_replayUop_1_cf_ssid = _RAND_302[4:0];
  _RAND_303 = {1{`RANDOM}};
  s2_replayUop_1_cf_ftqPtr_flag = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  s2_replayUop_1_cf_ftqPtr_value = _RAND_304[2:0];
  _RAND_305 = {1{`RANDOM}};
  s2_replayUop_1_cf_ftqOffset = _RAND_305[2:0];
  _RAND_306 = {1{`RANDOM}};
  s2_replayUop_1_ctrl_fuOpType = _RAND_306[6:0];
  _RAND_307 = {1{`RANDOM}};
  s2_replayUop_1_ctrl_rfWen = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  s2_replayUop_1_ctrl_fpWen = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  s2_replayUop_1_pdest = _RAND_309[5:0];
  _RAND_310 = {1{`RANDOM}};
  s2_replayUop_1_lqIdx_flag = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  s2_replayUop_1_lqIdx_value = _RAND_311[3:0];
  _RAND_312 = {1{`RANDOM}};
  s2_replayUop_1_sqIdx_flag = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  s2_replayUop_1_sqIdx_value = _RAND_313[3:0];
  _RAND_314 = {1{`RANDOM}};
  s2_replayMSHRId_1 = _RAND_314[1:0];
  _RAND_315 = {1{`RANDOM}};
  s2_replayCauses_1 = _RAND_315[9:0];
  _RAND_316 = {1{`RANDOM}};
  lastReplay_0 = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  lastReplay_1 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_318[1:0];
  _RAND_319 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_319[1:0];
  _RAND_320 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_320[1:0];
  _RAND_321 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_321[1:0];
  _RAND_322 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_322[1:0];
  _RAND_323 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_323[1:0];
  _RAND_324 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_324[0:0];
  _RAND_325 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_326[1:0];
  _RAND_327 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_327[1:0];
  _RAND_328 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_328[1:0];
  _RAND_329 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_329[1:0];
  _RAND_330 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_330[1:0];
  _RAND_331 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_331[1:0];
  _RAND_332 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_332[1:0];
  _RAND_333 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_333[1:0];
  _RAND_334 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_334[1:0];
  _RAND_335 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_335[1:0];
  _RAND_336 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_336[1:0];
  _RAND_337 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_337[1:0];
  _RAND_338 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_338[1:0];
  _RAND_339 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_339[1:0];
  _RAND_340 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_340[1:0];
  _RAND_341 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_341[1:0];
  _RAND_342 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_342[1:0];
  _RAND_343 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_343[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    allocated_0 = 1'h0;
  end
  if (reset) begin
    allocated_1 = 1'h0;
  end
  if (reset) begin
    allocated_2 = 1'h0;
  end
  if (reset) begin
    allocated_3 = 1'h0;
  end
  if (reset) begin
    allocated_4 = 1'h0;
  end
  if (reset) begin
    allocated_5 = 1'h0;
  end
  if (reset) begin
    allocated_6 = 1'h0;
  end
  if (reset) begin
    allocated_7 = 1'h0;
  end
  if (reset) begin
    scheduled_0 = 1'h0;
  end
  if (reset) begin
    scheduled_1 = 1'h0;
  end
  if (reset) begin
    scheduled_2 = 1'h0;
  end
  if (reset) begin
    scheduled_3 = 1'h0;
  end
  if (reset) begin
    scheduled_4 = 1'h0;
  end
  if (reset) begin
    scheduled_5 = 1'h0;
  end
  if (reset) begin
    scheduled_6 = 1'h0;
  end
  if (reset) begin
    scheduled_7 = 1'h0;
  end
  if (reset) begin
    debug_vaddr_0 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_1 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_2 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_3 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_4 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_5 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_6 = 39'h0;
  end
  if (reset) begin
    debug_vaddr_7 = 39'h0;
  end
  if (reset) begin
    cause_0 = 10'h0;
  end
  if (reset) begin
    cause_1 = 10'h0;
  end
  if (reset) begin
    cause_2 = 10'h0;
  end
  if (reset) begin
    cause_3 = 10'h0;
  end
  if (reset) begin
    cause_4 = 10'h0;
  end
  if (reset) begin
    cause_5 = 10'h0;
  end
  if (reset) begin
    cause_6 = 10'h0;
  end
  if (reset) begin
    cause_7 = 10'h0;
  end
  if (reset) begin
    blocking_0 = 1'h0;
  end
  if (reset) begin
    blocking_1 = 1'h0;
  end
  if (reset) begin
    blocking_2 = 1'h0;
  end
  if (reset) begin
    blocking_3 = 1'h0;
  end
  if (reset) begin
    blocking_4 = 1'h0;
  end
  if (reset) begin
    blocking_5 = 1'h0;
  end
  if (reset) begin
    blocking_6 = 1'h0;
  end
  if (reset) begin
    blocking_7 = 1'h0;
  end
  if (reset) begin
    selBlocked_0 = 1'h0;
  end
  if (reset) begin
    selBlocked_1 = 1'h0;
  end
  if (reset) begin
    selBlocked_2 = 1'h0;
  end
  if (reset) begin
    selBlocked_3 = 1'h0;
  end
  if (reset) begin
    selBlocked_4 = 1'h0;
  end
  if (reset) begin
    selBlocked_5 = 1'h0;
  end
  if (reset) begin
    selBlocked_6 = 1'h0;
  end
  if (reset) begin
    selBlocked_7 = 1'h0;
  end
  if (reset) begin
    blockPtrTlb_0 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_1 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_2 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_3 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_4 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_5 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_6 = 2'h0;
  end
  if (reset) begin
    blockPtrTlb_7 = 2'h0;
  end
  if (reset) begin
    missMSHRId_0 = 2'h0;
  end
  if (reset) begin
    missMSHRId_1 = 2'h0;
  end
  if (reset) begin
    missMSHRId_2 = 2'h0;
  end
  if (reset) begin
    missMSHRId_3 = 2'h0;
  end
  if (reset) begin
    missMSHRId_4 = 2'h0;
  end
  if (reset) begin
    missMSHRId_5 = 2'h0;
  end
  if (reset) begin
    missMSHRId_6 = 2'h0;
  end
  if (reset) begin
    missMSHRId_7 = 2'h0;
  end
  if (reset) begin
    dataInLastBeatReg_0 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_1 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_2 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_3 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_4 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_5 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_6 = 1'h0;
  end
  if (reset) begin
    dataInLastBeatReg_7 = 1'h0;
  end
  if (reset) begin
    coldCounter_0 = 4'h0;
  end
  if (reset) begin
    coldCounter_1 = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

