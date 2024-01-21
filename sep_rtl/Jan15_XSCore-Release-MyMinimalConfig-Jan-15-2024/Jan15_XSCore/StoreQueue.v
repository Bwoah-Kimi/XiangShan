module StoreQueue(
  input          clock,
  input          reset,
  output         io_enq_canAccept,
  input          io_enq_lqCanAccept,
  input          io_enq_req_0_valid,
  input          io_enq_req_0_bits_cf_trigger_backendEn_0,
  input          io_enq_req_0_bits_cf_storeSetHit,
  input  [4:0]   io_enq_req_0_bits_cf_ssid,
  input  [6:0]   io_enq_req_0_bits_ctrl_fuOpType,
  input          io_enq_req_0_bits_robIdx_flag,
  input  [4:0]   io_enq_req_0_bits_robIdx_value,
  input          io_enq_req_0_bits_lqIdx_flag,
  input  [3:0]   io_enq_req_0_bits_lqIdx_value,
  input  [3:0]   io_enq_req_0_bits_sqIdx_value,
  input          io_enq_req_1_valid,
  input          io_enq_req_1_bits_cf_trigger_backendEn_0,
  input          io_enq_req_1_bits_cf_storeSetHit,
  input  [4:0]   io_enq_req_1_bits_cf_ssid,
  input  [6:0]   io_enq_req_1_bits_ctrl_fuOpType,
  input          io_enq_req_1_bits_robIdx_flag,
  input  [4:0]   io_enq_req_1_bits_robIdx_value,
  input          io_enq_req_1_bits_lqIdx_flag,
  input  [3:0]   io_enq_req_1_bits_lqIdx_value,
  input  [3:0]   io_enq_req_1_bits_sqIdx_value,
  input          io_enq_req_2_valid,
  input          io_enq_req_2_bits_cf_trigger_backendEn_0,
  input          io_enq_req_2_bits_cf_storeSetHit,
  input  [4:0]   io_enq_req_2_bits_cf_ssid,
  input  [6:0]   io_enq_req_2_bits_ctrl_fuOpType,
  input          io_enq_req_2_bits_robIdx_flag,
  input  [4:0]   io_enq_req_2_bits_robIdx_value,
  input          io_enq_req_2_bits_lqIdx_flag,
  input  [3:0]   io_enq_req_2_bits_lqIdx_value,
  input  [3:0]   io_enq_req_2_bits_sqIdx_value,
  input          io_enq_req_3_valid,
  input          io_enq_req_3_bits_cf_trigger_backendEn_0,
  input          io_enq_req_3_bits_cf_storeSetHit,
  input  [4:0]   io_enq_req_3_bits_cf_ssid,
  input  [6:0]   io_enq_req_3_bits_ctrl_fuOpType,
  input          io_enq_req_3_bits_robIdx_flag,
  input  [4:0]   io_enq_req_3_bits_robIdx_value,
  input          io_enq_req_3_bits_lqIdx_flag,
  input  [3:0]   io_enq_req_3_bits_lqIdx_value,
  input  [3:0]   io_enq_req_3_bits_sqIdx_value,
  input          io_brqRedirect_valid,
  input          io_brqRedirect_bits_robIdx_flag,
  input  [4:0]   io_brqRedirect_bits_robIdx_value,
  input          io_brqRedirect_bits_level,
  input          io_storeAddrIn_0_valid,
  input  [6:0]   io_storeAddrIn_0_bits_uop_ctrl_fuOpType,
  input  [3:0]   io_storeAddrIn_0_bits_uop_sqIdx_value,
  input  [38:0]  io_storeAddrIn_0_bits_vaddr,
  input  [35:0]  io_storeAddrIn_0_bits_paddr,
  input  [15:0]  io_storeAddrIn_0_bits_mask,
  input          io_storeAddrIn_0_bits_wlineflag,
  input          io_storeAddrIn_0_bits_miss,
  input          io_storeAddrIn_1_valid,
  input  [6:0]   io_storeAddrIn_1_bits_uop_ctrl_fuOpType,
  input  [3:0]   io_storeAddrIn_1_bits_uop_sqIdx_value,
  input  [38:0]  io_storeAddrIn_1_bits_vaddr,
  input  [35:0]  io_storeAddrIn_1_bits_paddr,
  input  [15:0]  io_storeAddrIn_1_bits_mask,
  input          io_storeAddrIn_1_bits_wlineflag,
  input          io_storeAddrIn_1_bits_miss,
  input          io_storeAddrInRe_0_mmio,
  input          io_storeAddrInRe_0_atomic,
  input          io_storeAddrInRe_1_mmio,
  input          io_storeAddrInRe_1_atomic,
  input          io_storeDataIn_0_valid,
  input  [6:0]   io_storeDataIn_0_bits_uop_ctrl_fuOpType,
  input  [3:0]   io_storeDataIn_0_bits_uop_sqIdx_value,
  input  [63:0]  io_storeDataIn_0_bits_data,
  input          io_storeDataIn_1_valid,
  input  [6:0]   io_storeDataIn_1_bits_uop_ctrl_fuOpType,
  input  [3:0]   io_storeDataIn_1_bits_uop_sqIdx_value,
  input  [63:0]  io_storeDataIn_1_bits_data,
  input          io_storeMaskIn_0_valid,
  input  [3:0]   io_storeMaskIn_0_bits_sqIdx_value,
  input  [15:0]  io_storeMaskIn_0_bits_mask,
  input          io_storeMaskIn_1_valid,
  input  [3:0]   io_storeMaskIn_1_bits_sqIdx_value,
  input  [15:0]  io_storeMaskIn_1_bits_mask,
  input          io_sbuffer_0_ready,
  output         io_sbuffer_0_valid,
  output [38:0]  io_sbuffer_0_bits_vaddr,
  output [127:0] io_sbuffer_0_bits_data,
  output [15:0]  io_sbuffer_0_bits_mask,
  output [35:0]  io_sbuffer_0_bits_addr,
  output         io_sbuffer_0_bits_wline,
  input          io_sbuffer_1_ready,
  output         io_sbuffer_1_valid,
  output [38:0]  io_sbuffer_1_bits_vaddr,
  output [127:0] io_sbuffer_1_bits_data,
  output [15:0]  io_sbuffer_1_bits_mask,
  output [35:0]  io_sbuffer_1_bits_addr,
  output         io_sbuffer_1_bits_wline,
  input          io_uncacheOutstanding,
  input          io_mmioStout_ready,
  output         io_mmioStout_valid,
  output         io_mmioStout_bits_uop_cf_trigger_backendEn_0,
  output         io_mmioStout_bits_uop_robIdx_flag,
  output [4:0]   io_mmioStout_bits_uop_robIdx_value,
  output         io_mmioStout_bits_uop_lqIdx_flag,
  output [3:0]   io_mmioStout_bits_uop_lqIdx_value,
  input  [38:0]  io_forward_0_vaddr,
  input  [35:0]  io_forward_0_paddr,
  input  [15:0]  io_forward_0_mask,
  input          io_forward_0_uop_cf_loadWaitStrict,
  input  [4:0]   io_forward_0_uop_cf_ssid,
  input          io_forward_0_uop_sqIdx_flag,
  input  [3:0]   io_forward_0_uop_sqIdx_value,
  input          io_forward_0_valid,
  output         io_forward_0_forwardMask_0,
  output         io_forward_0_forwardMask_1,
  output         io_forward_0_forwardMask_2,
  output         io_forward_0_forwardMask_3,
  output         io_forward_0_forwardMask_4,
  output         io_forward_0_forwardMask_5,
  output         io_forward_0_forwardMask_6,
  output         io_forward_0_forwardMask_7,
  output         io_forward_0_forwardMask_8,
  output         io_forward_0_forwardMask_9,
  output         io_forward_0_forwardMask_10,
  output         io_forward_0_forwardMask_11,
  output         io_forward_0_forwardMask_12,
  output         io_forward_0_forwardMask_13,
  output         io_forward_0_forwardMask_14,
  output         io_forward_0_forwardMask_15,
  output [7:0]   io_forward_0_forwardData_0,
  output [7:0]   io_forward_0_forwardData_1,
  output [7:0]   io_forward_0_forwardData_2,
  output [7:0]   io_forward_0_forwardData_3,
  output [7:0]   io_forward_0_forwardData_4,
  output [7:0]   io_forward_0_forwardData_5,
  output [7:0]   io_forward_0_forwardData_6,
  output [7:0]   io_forward_0_forwardData_7,
  output [7:0]   io_forward_0_forwardData_8,
  output [7:0]   io_forward_0_forwardData_9,
  output [7:0]   io_forward_0_forwardData_10,
  output [7:0]   io_forward_0_forwardData_11,
  output [7:0]   io_forward_0_forwardData_12,
  output [7:0]   io_forward_0_forwardData_13,
  output [7:0]   io_forward_0_forwardData_14,
  output [7:0]   io_forward_0_forwardData_15,
  input          io_forward_0_sqIdx_flag,
  output         io_forward_0_dataInvalid,
  output         io_forward_0_matchInvalid,
  output         io_forward_0_addrInvalid,
  input  [11:0]  io_forward_0_sqIdxMask,
  output         io_forward_0_dataInvalidFast,
  output         io_forward_0_dataInvalidSqIdx_flag,
  output [3:0]   io_forward_0_dataInvalidSqIdx_value,
  output         io_forward_0_addrInvalidSqIdx_flag,
  output [3:0]   io_forward_0_addrInvalidSqIdx_value,
  input  [38:0]  io_forward_1_vaddr,
  input  [35:0]  io_forward_1_paddr,
  input  [15:0]  io_forward_1_mask,
  input          io_forward_1_uop_cf_loadWaitStrict,
  input  [4:0]   io_forward_1_uop_cf_ssid,
  input          io_forward_1_uop_sqIdx_flag,
  input  [3:0]   io_forward_1_uop_sqIdx_value,
  input          io_forward_1_valid,
  output         io_forward_1_forwardMask_0,
  output         io_forward_1_forwardMask_1,
  output         io_forward_1_forwardMask_2,
  output         io_forward_1_forwardMask_3,
  output         io_forward_1_forwardMask_4,
  output         io_forward_1_forwardMask_5,
  output         io_forward_1_forwardMask_6,
  output         io_forward_1_forwardMask_7,
  output         io_forward_1_forwardMask_8,
  output         io_forward_1_forwardMask_9,
  output         io_forward_1_forwardMask_10,
  output         io_forward_1_forwardMask_11,
  output         io_forward_1_forwardMask_12,
  output         io_forward_1_forwardMask_13,
  output         io_forward_1_forwardMask_14,
  output         io_forward_1_forwardMask_15,
  output [7:0]   io_forward_1_forwardData_0,
  output [7:0]   io_forward_1_forwardData_1,
  output [7:0]   io_forward_1_forwardData_2,
  output [7:0]   io_forward_1_forwardData_3,
  output [7:0]   io_forward_1_forwardData_4,
  output [7:0]   io_forward_1_forwardData_5,
  output [7:0]   io_forward_1_forwardData_6,
  output [7:0]   io_forward_1_forwardData_7,
  output [7:0]   io_forward_1_forwardData_8,
  output [7:0]   io_forward_1_forwardData_9,
  output [7:0]   io_forward_1_forwardData_10,
  output [7:0]   io_forward_1_forwardData_11,
  output [7:0]   io_forward_1_forwardData_12,
  output [7:0]   io_forward_1_forwardData_13,
  output [7:0]   io_forward_1_forwardData_14,
  output [7:0]   io_forward_1_forwardData_15,
  input          io_forward_1_sqIdx_flag,
  output         io_forward_1_dataInvalid,
  output         io_forward_1_matchInvalid,
  output         io_forward_1_addrInvalid,
  input  [11:0]  io_forward_1_sqIdxMask,
  output         io_forward_1_dataInvalidFast,
  output         io_forward_1_dataInvalidSqIdx_flag,
  output [3:0]   io_forward_1_dataInvalidSqIdx_value,
  output         io_forward_1_addrInvalidSqIdx_flag,
  output [3:0]   io_forward_1_addrInvalidSqIdx_value,
  input  [1:0]   io_rob_scommit,
  input          io_rob_pendingst,
  input          io_uncache_req_ready,
  output         io_uncache_req_valid,
  output [35:0]  io_uncache_req_bits_addr,
  output [63:0]  io_uncache_req_bits_data,
  output [7:0]   io_uncache_req_bits_mask,
  output         io_uncache_req_bits_atomic,
  output         io_uncache_resp_ready,
  input          io_uncache_resp_valid,
  output [38:0]  io_exceptionAddr_vaddr,
  output         io_sqEmpty,
  output         io_stAddrReadySqPtr_flag,
  output [3:0]   io_stAddrReadySqPtr_value,
  output         io_stAddrReadyVec_0,
  output         io_stAddrReadyVec_1,
  output         io_stAddrReadyVec_2,
  output         io_stAddrReadyVec_3,
  output         io_stAddrReadyVec_4,
  output         io_stAddrReadyVec_5,
  output         io_stAddrReadyVec_6,
  output         io_stAddrReadyVec_7,
  output         io_stAddrReadyVec_8,
  output         io_stAddrReadyVec_9,
  output         io_stAddrReadyVec_10,
  output         io_stAddrReadyVec_11,
  output         io_stDataReadySqPtr_flag,
  output [3:0]   io_stDataReadySqPtr_value,
  output         io_stDataReadyVec_0,
  output         io_stDataReadyVec_1,
  output         io_stDataReadyVec_2,
  output         io_stDataReadyVec_3,
  output         io_stDataReadyVec_4,
  output         io_stDataReadyVec_5,
  output         io_stDataReadyVec_6,
  output         io_stDataReadyVec_7,
  output         io_stDataReadyVec_8,
  output         io_stDataReadyVec_9,
  output         io_stDataReadyVec_10,
  output         io_stDataReadyVec_11,
  output         io_stIssuePtr_flag,
  output [3:0]   io_stIssuePtr_value,
  output [3:0]   io_sqCancelCnt,
  output [1:0]   io_sqDeq,
  output         io_force_write,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value
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
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_raddr_0; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_raddr_1; // @[StoreQueue.scala 100:26]
  wire [15:0] dataModule_io_rdata_0_mask; // @[StoreQueue.scala 100:26]
  wire [127:0] dataModule_io_rdata_0_data; // @[StoreQueue.scala 100:26]
  wire [15:0] dataModule_io_rdata_1_mask; // @[StoreQueue.scala 100:26]
  wire [127:0] dataModule_io_rdata_1_data; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_data_wen_0; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_data_wen_1; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_data_waddr_0; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_data_waddr_1; // @[StoreQueue.scala 100:26]
  wire [127:0] dataModule_io_data_wdata_0; // @[StoreQueue.scala 100:26]
  wire [127:0] dataModule_io_data_wdata_1; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_mask_wen_0; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_mask_wen_1; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_mask_waddr_0; // @[StoreQueue.scala 100:26]
  wire [3:0] dataModule_io_mask_waddr_1; // @[StoreQueue.scala 100:26]
  wire [15:0] dataModule_io_mask_wdata_0; // @[StoreQueue.scala 100:26]
  wire [15:0] dataModule_io_mask_wdata_1; // @[StoreQueue.scala 100:26]
  wire [11:0] dataModule_io_needForward_0_0; // @[StoreQueue.scala 100:26]
  wire [11:0] dataModule_io_needForward_0_1; // @[StoreQueue.scala 100:26]
  wire [11:0] dataModule_io_needForward_1_0; // @[StoreQueue.scala 100:26]
  wire [11:0] dataModule_io_needForward_1_1; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_0; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_1; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_2; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_3; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_4; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_5; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_6; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_7; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_8; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_9; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_10; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_11; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_12; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_13; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_14; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_0_15; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_0; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_1; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_2; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_3; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_4; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_5; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_6; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_7; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_8; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_9; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_10; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_11; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_12; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_13; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_14; // @[StoreQueue.scala 100:26]
  wire  dataModule_io_forwardMask_1_15; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_0; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_1; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_2; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_3; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_4; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_5; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_6; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_7; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_8; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_9; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_10; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_11; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_12; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_13; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_14; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_0_15; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_0; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_1; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_2; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_3; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_4; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_5; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_6; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_7; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_8; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_9; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_10; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_11; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_12; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_13; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_14; // @[StoreQueue.scala 100:26]
  wire [7:0] dataModule_io_forwardData_1_15; // @[StoreQueue.scala 100:26]
  wire  paddrModule_clock; // @[StoreQueue.scala 107:27]
  wire [3:0] paddrModule_io_raddr_0; // @[StoreQueue.scala 107:27]
  wire [3:0] paddrModule_io_raddr_1; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_rdata_0; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_rdata_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_rlineflag_0; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_rlineflag_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_wen_0; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_wen_1; // @[StoreQueue.scala 107:27]
  wire [3:0] paddrModule_io_waddr_0; // @[StoreQueue.scala 107:27]
  wire [3:0] paddrModule_io_waddr_1; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_wdata_0; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_wdata_1; // @[StoreQueue.scala 107:27]
  wire [15:0] paddrModule_io_wmask_0; // @[StoreQueue.scala 107:27]
  wire [15:0] paddrModule_io_wmask_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_wlineflag_0; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_wlineflag_1; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_forwardMdata_0; // @[StoreQueue.scala 107:27]
  wire [35:0] paddrModule_io_forwardMdata_1; // @[StoreQueue.scala 107:27]
  wire [15:0] paddrModule_io_forwardDataMask_0; // @[StoreQueue.scala 107:27]
  wire [15:0] paddrModule_io_forwardDataMask_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_0; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_2; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_3; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_4; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_5; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_6; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_7; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_8; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_9; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_10; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_0_11; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_0; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_1; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_2; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_3; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_4; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_5; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_6; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_7; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_8; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_9; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_10; // @[StoreQueue.scala 107:27]
  wire  paddrModule_io_forwardMmask_1_11; // @[StoreQueue.scala 107:27]
  wire  vaddrModule_clock; // @[StoreQueue.scala 115:27]
  wire [3:0] vaddrModule_io_raddr_0; // @[StoreQueue.scala 115:27]
  wire [3:0] vaddrModule_io_raddr_1; // @[StoreQueue.scala 115:27]
  wire [3:0] vaddrModule_io_raddr_2; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_rdata_0; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_rdata_1; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_rdata_2; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_wen_0; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_wen_1; // @[StoreQueue.scala 115:27]
  wire [3:0] vaddrModule_io_waddr_0; // @[StoreQueue.scala 115:27]
  wire [3:0] vaddrModule_io_waddr_1; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_wdata_0; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_wdata_1; // @[StoreQueue.scala 115:27]
  wire [15:0] vaddrModule_io_wmask_0; // @[StoreQueue.scala 115:27]
  wire [15:0] vaddrModule_io_wmask_1; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_wlineflag_0; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_wlineflag_1; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_forwardMdata_0; // @[StoreQueue.scala 115:27]
  wire [38:0] vaddrModule_io_forwardMdata_1; // @[StoreQueue.scala 115:27]
  wire [15:0] vaddrModule_io_forwardDataMask_0; // @[StoreQueue.scala 115:27]
  wire [15:0] vaddrModule_io_forwardDataMask_1; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_0; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_1; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_2; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_3; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_4; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_5; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_6; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_7; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_8; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_9; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_10; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_0_11; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_0; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_1; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_2; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_3; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_4; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_5; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_6; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_7; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_8; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_9; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_10; // @[StoreQueue.scala 115:27]
  wire  vaddrModule_io_forwardMmask_1_11; // @[StoreQueue.scala 115:27]
  wire  dataBuffer_clock; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_reset; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_0_ready; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_0_valid; // @[StoreQueue.scala 123:26]
  wire [35:0] dataBuffer_io_enq_0_bits_addr; // @[StoreQueue.scala 123:26]
  wire [38:0] dataBuffer_io_enq_0_bits_vaddr; // @[StoreQueue.scala 123:26]
  wire [127:0] dataBuffer_io_enq_0_bits_data; // @[StoreQueue.scala 123:26]
  wire [15:0] dataBuffer_io_enq_0_bits_mask; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_0_bits_wline; // @[StoreQueue.scala 123:26]
  wire [3:0] dataBuffer_io_enq_0_bits_sqPtr_value; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_1_ready; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_1_valid; // @[StoreQueue.scala 123:26]
  wire [35:0] dataBuffer_io_enq_1_bits_addr; // @[StoreQueue.scala 123:26]
  wire [38:0] dataBuffer_io_enq_1_bits_vaddr; // @[StoreQueue.scala 123:26]
  wire [127:0] dataBuffer_io_enq_1_bits_data; // @[StoreQueue.scala 123:26]
  wire [15:0] dataBuffer_io_enq_1_bits_mask; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_enq_1_bits_wline; // @[StoreQueue.scala 123:26]
  wire [3:0] dataBuffer_io_enq_1_bits_sqPtr_value; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_0_ready; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_0_valid; // @[StoreQueue.scala 123:26]
  wire [35:0] dataBuffer_io_deq_0_bits_addr; // @[StoreQueue.scala 123:26]
  wire [38:0] dataBuffer_io_deq_0_bits_vaddr; // @[StoreQueue.scala 123:26]
  wire [127:0] dataBuffer_io_deq_0_bits_data; // @[StoreQueue.scala 123:26]
  wire [15:0] dataBuffer_io_deq_0_bits_mask; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_0_bits_wline; // @[StoreQueue.scala 123:26]
  wire [3:0] dataBuffer_io_deq_0_bits_sqPtr_value; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_1_ready; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_1_valid; // @[StoreQueue.scala 123:26]
  wire [35:0] dataBuffer_io_deq_1_bits_addr; // @[StoreQueue.scala 123:26]
  wire [38:0] dataBuffer_io_deq_1_bits_vaddr; // @[StoreQueue.scala 123:26]
  wire [127:0] dataBuffer_io_deq_1_bits_data; // @[StoreQueue.scala 123:26]
  wire [15:0] dataBuffer_io_deq_1_bits_mask; // @[StoreQueue.scala 123:26]
  wire  dataBuffer_io_deq_1_bits_wline; // @[StoreQueue.scala 123:26]
  wire [3:0] dataBuffer_io_deq_1_bits_sqPtr_value; // @[StoreQueue.scala 123:26]
  reg  uop_0_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_0_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_0_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_0_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_0_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_0_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_0_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_0_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_1_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_1_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_1_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_1_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_1_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_1_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_1_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_1_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_2_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_2_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_2_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_2_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_2_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_2_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_2_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_2_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_3_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_3_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_3_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_3_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_3_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_3_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_3_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_3_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_4_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_4_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_4_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_4_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_4_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_4_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_4_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_4_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_5_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_5_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_5_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_5_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_5_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_5_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_5_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_5_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_6_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_6_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_6_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_6_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_6_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_6_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_6_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_6_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_7_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_7_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_7_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_7_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_7_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_7_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_7_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_7_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_8_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_8_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_8_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_8_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_8_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_8_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_8_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_8_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_9_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_9_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_9_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_9_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_9_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_9_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_9_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_9_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_10_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_10_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_10_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_10_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_10_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_10_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_10_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_10_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_11_cf_trigger_backendEn_0; // @[StoreQueue.scala 98:16]
  reg  uop_11_cf_storeSetHit; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_11_cf_ssid; // @[StoreQueue.scala 98:16]
  reg [6:0] uop_11_ctrl_fuOpType; // @[StoreQueue.scala 98:16]
  reg  uop_11_robIdx_flag; // @[StoreQueue.scala 98:16]
  reg [4:0] uop_11_robIdx_value; // @[StoreQueue.scala 98:16]
  reg  uop_11_lqIdx_flag; // @[StoreQueue.scala 98:16]
  reg [3:0] uop_11_lqIdx_value; // @[StoreQueue.scala 98:16]
  reg  allocated_0; // @[StoreQueue.scala 129:26]
  reg  allocated_1; // @[StoreQueue.scala 129:26]
  reg  allocated_2; // @[StoreQueue.scala 129:26]
  reg  allocated_3; // @[StoreQueue.scala 129:26]
  reg  allocated_4; // @[StoreQueue.scala 129:26]
  reg  allocated_5; // @[StoreQueue.scala 129:26]
  reg  allocated_6; // @[StoreQueue.scala 129:26]
  reg  allocated_7; // @[StoreQueue.scala 129:26]
  reg  allocated_8; // @[StoreQueue.scala 129:26]
  reg  allocated_9; // @[StoreQueue.scala 129:26]
  reg  allocated_10; // @[StoreQueue.scala 129:26]
  reg  allocated_11; // @[StoreQueue.scala 129:26]
  reg  addrvalid_0; // @[StoreQueue.scala 130:26]
  reg  addrvalid_1; // @[StoreQueue.scala 130:26]
  reg  addrvalid_2; // @[StoreQueue.scala 130:26]
  reg  addrvalid_3; // @[StoreQueue.scala 130:26]
  reg  addrvalid_4; // @[StoreQueue.scala 130:26]
  reg  addrvalid_5; // @[StoreQueue.scala 130:26]
  reg  addrvalid_6; // @[StoreQueue.scala 130:26]
  reg  addrvalid_7; // @[StoreQueue.scala 130:26]
  reg  addrvalid_8; // @[StoreQueue.scala 130:26]
  reg  addrvalid_9; // @[StoreQueue.scala 130:26]
  reg  addrvalid_10; // @[StoreQueue.scala 130:26]
  reg  addrvalid_11; // @[StoreQueue.scala 130:26]
  reg  datavalid_0; // @[StoreQueue.scala 131:26]
  reg  datavalid_1; // @[StoreQueue.scala 131:26]
  reg  datavalid_2; // @[StoreQueue.scala 131:26]
  reg  datavalid_3; // @[StoreQueue.scala 131:26]
  reg  datavalid_4; // @[StoreQueue.scala 131:26]
  reg  datavalid_5; // @[StoreQueue.scala 131:26]
  reg  datavalid_6; // @[StoreQueue.scala 131:26]
  reg  datavalid_7; // @[StoreQueue.scala 131:26]
  reg  datavalid_8; // @[StoreQueue.scala 131:26]
  reg  datavalid_9; // @[StoreQueue.scala 131:26]
  reg  datavalid_10; // @[StoreQueue.scala 131:26]
  reg  datavalid_11; // @[StoreQueue.scala 131:26]
  wire  allvalid_0 = addrvalid_0 & datavalid_0; // @[StoreQueue.scala 132:74]
  wire  allvalid_1 = addrvalid_1 & datavalid_1; // @[StoreQueue.scala 132:74]
  wire  allvalid_2 = addrvalid_2 & datavalid_2; // @[StoreQueue.scala 132:74]
  wire  allvalid_3 = addrvalid_3 & datavalid_3; // @[StoreQueue.scala 132:74]
  wire  allvalid_4 = addrvalid_4 & datavalid_4; // @[StoreQueue.scala 132:74]
  wire  allvalid_5 = addrvalid_5 & datavalid_5; // @[StoreQueue.scala 132:74]
  wire  allvalid_6 = addrvalid_6 & datavalid_6; // @[StoreQueue.scala 132:74]
  wire  allvalid_7 = addrvalid_7 & datavalid_7; // @[StoreQueue.scala 132:74]
  wire  allvalid_8 = addrvalid_8 & datavalid_8; // @[StoreQueue.scala 132:74]
  wire  allvalid_9 = addrvalid_9 & datavalid_9; // @[StoreQueue.scala 132:74]
  wire  allvalid_10 = addrvalid_10 & datavalid_10; // @[StoreQueue.scala 132:74]
  wire  allvalid_11 = addrvalid_11 & datavalid_11; // @[StoreQueue.scala 132:74]
  reg  committed_0; // @[StoreQueue.scala 133:22]
  reg  committed_1; // @[StoreQueue.scala 133:22]
  reg  committed_2; // @[StoreQueue.scala 133:22]
  reg  committed_3; // @[StoreQueue.scala 133:22]
  reg  committed_4; // @[StoreQueue.scala 133:22]
  reg  committed_5; // @[StoreQueue.scala 133:22]
  reg  committed_6; // @[StoreQueue.scala 133:22]
  reg  committed_7; // @[StoreQueue.scala 133:22]
  reg  committed_8; // @[StoreQueue.scala 133:22]
  reg  committed_9; // @[StoreQueue.scala 133:22]
  reg  committed_10; // @[StoreQueue.scala 133:22]
  reg  committed_11; // @[StoreQueue.scala 133:22]
  reg  pending_0; // @[StoreQueue.scala 134:20]
  reg  pending_1; // @[StoreQueue.scala 134:20]
  reg  pending_2; // @[StoreQueue.scala 134:20]
  reg  pending_3; // @[StoreQueue.scala 134:20]
  reg  pending_4; // @[StoreQueue.scala 134:20]
  reg  pending_5; // @[StoreQueue.scala 134:20]
  reg  pending_6; // @[StoreQueue.scala 134:20]
  reg  pending_7; // @[StoreQueue.scala 134:20]
  reg  pending_8; // @[StoreQueue.scala 134:20]
  reg  pending_9; // @[StoreQueue.scala 134:20]
  reg  pending_10; // @[StoreQueue.scala 134:20]
  reg  pending_11; // @[StoreQueue.scala 134:20]
  reg  mmio_0; // @[StoreQueue.scala 135:17]
  reg  mmio_1; // @[StoreQueue.scala 135:17]
  reg  mmio_2; // @[StoreQueue.scala 135:17]
  reg  mmio_3; // @[StoreQueue.scala 135:17]
  reg  mmio_4; // @[StoreQueue.scala 135:17]
  reg  mmio_5; // @[StoreQueue.scala 135:17]
  reg  mmio_6; // @[StoreQueue.scala 135:17]
  reg  mmio_7; // @[StoreQueue.scala 135:17]
  reg  mmio_8; // @[StoreQueue.scala 135:17]
  reg  mmio_9; // @[StoreQueue.scala 135:17]
  reg  mmio_10; // @[StoreQueue.scala 135:17]
  reg  mmio_11; // @[StoreQueue.scala 135:17]
  reg  atomic_0; // @[StoreQueue.scala 136:19]
  reg  atomic_1; // @[StoreQueue.scala 136:19]
  reg  atomic_2; // @[StoreQueue.scala 136:19]
  reg  atomic_3; // @[StoreQueue.scala 136:19]
  reg  atomic_4; // @[StoreQueue.scala 136:19]
  reg  atomic_5; // @[StoreQueue.scala 136:19]
  reg  atomic_6; // @[StoreQueue.scala 136:19]
  reg  atomic_7; // @[StoreQueue.scala 136:19]
  reg  atomic_8; // @[StoreQueue.scala 136:19]
  reg  atomic_9; // @[StoreQueue.scala 136:19]
  reg  atomic_10; // @[StoreQueue.scala 136:19]
  reg  atomic_11; // @[StoreQueue.scala 136:19]
  reg  enqPtrExt_0_flag; // @[StoreQueue.scala 140:26]
  reg [3:0] enqPtrExt_0_value; // @[StoreQueue.scala 140:26]
  reg [3:0] rdataPtrExt_0_value; // @[StoreQueue.scala 141:28]
  reg [3:0] rdataPtrExt_1_value; // @[StoreQueue.scala 141:28]
  reg  deqPtrExt_0_flag; // @[StoreQueue.scala 142:26]
  reg [3:0] deqPtrExt_0_value; // @[StoreQueue.scala 142:26]
  reg  cmtPtrExt_0_flag; // @[StoreQueue.scala 143:26]
  reg [3:0] cmtPtrExt_0_value; // @[StoreQueue.scala 143:26]
  reg [3:0] cmtPtrExt_1_value; // @[StoreQueue.scala 143:26]
  reg  addrReadyPtrExt_flag; // @[StoreQueue.scala 144:32]
  reg [3:0] addrReadyPtrExt_value; // @[StoreQueue.scala 144:32]
  reg  dataReadyPtrExt_flag; // @[StoreQueue.scala 145:32]
  reg [3:0] dataReadyPtrExt_value; // @[StoreQueue.scala 145:32]
  wire  _validCount_T = enqPtrExt_0_flag == deqPtrExt_0_flag; // @[CircularQueuePtr.scala 104:22]
  wire [3:0] _validCount_T_2 = enqPtrExt_0_value - deqPtrExt_0_value; // @[CircularQueuePtr.scala 105:21]
  wire [3:0] _validCount_T_4 = 4'hc + enqPtrExt_0_value; // @[CircularQueuePtr.scala 106:25]
  wire [3:0] _validCount_T_6 = _validCount_T_4 - deqPtrExt_0_value; // @[CircularQueuePtr.scala 106:41]
  wire [3:0] validCount = enqPtrExt_0_flag == deqPtrExt_0_flag ? _validCount_T_2 : _validCount_T_6; // @[CircularQueuePtr.scala 104:8]
  wire [15:0] _deqMask_T = 16'h1 << deqPtrExt_0_value; // @[OneHot.scala 57:35]
  wire [11:0] deqMask = _deqMask_T[11:0] - 12'h1; // @[BitUtils.scala 180:75]
  reg [1:0] commitCount; // @[StoreQueue.scala 158:28]
  wire  _rdataPtrExtNext_T = dataBuffer_io_enq_1_ready & dataBuffer_io_enq_1_valid; // @[Decoupled.scala 50:35]
  wire [4:0] rdataPtrExtNext_new_value = rdataPtrExt_0_value + 4'h2; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _rdataPtrExtNext_diff_T_1 = {1'h0,rdataPtrExtNext_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] rdataPtrExtNext_diff = $signed(_rdataPtrExtNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  rdataPtrExtNext_reverse_flag = $signed(rdataPtrExtNext_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T = $signed(_rdataPtrExtNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_1 = rdataPtrExtNext_reverse_flag ? _rdataPtrExtNext_new_ptr_value_T : {{1
    'd0}, rdataPtrExtNext_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] rdataPtrExtNext_new_value_1 = rdataPtrExt_1_value + 4'h2; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _rdataPtrExtNext_diff_T_7 = {1'h0,rdataPtrExtNext_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] rdataPtrExtNext_diff_1 = $signed(_rdataPtrExtNext_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  rdataPtrExtNext_reverse_flag_1 = $signed(rdataPtrExtNext_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_2 = $signed(_rdataPtrExtNext_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_3 = rdataPtrExtNext_reverse_flag_1 ? _rdataPtrExtNext_new_ptr_value_T_2 :
    {{1'd0}, rdataPtrExtNext_new_value_1}; // @[CircularQueuePtr.scala 45:27]
  wire  _rdataPtrExtNext_T_1 = dataBuffer_io_enq_0_ready & dataBuffer_io_enq_0_valid; // @[Decoupled.scala 50:35]
  wire  _rdataPtrExtNext_T_2 = io_mmioStout_ready & io_mmioStout_valid; // @[Decoupled.scala 50:35]
  wire [4:0] rdataPtrExtNext_new_value_2 = rdataPtrExt_0_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _rdataPtrExtNext_diff_T_13 = {1'h0,rdataPtrExtNext_new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] rdataPtrExtNext_diff_2 = $signed(_rdataPtrExtNext_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  rdataPtrExtNext_reverse_flag_2 = $signed(rdataPtrExtNext_diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_4 = $signed(_rdataPtrExtNext_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_5 = rdataPtrExtNext_reverse_flag_2 ? _rdataPtrExtNext_new_ptr_value_T_4 :
    {{1'd0}, rdataPtrExtNext_new_value_2}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] rdataPtrExtNext_new_value_3 = rdataPtrExt_1_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _rdataPtrExtNext_diff_T_19 = {1'h0,rdataPtrExtNext_new_value_3}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] rdataPtrExtNext_diff_3 = $signed(_rdataPtrExtNext_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  rdataPtrExtNext_reverse_flag_3 = $signed(rdataPtrExtNext_diff_3) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_6 = $signed(_rdataPtrExtNext_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _rdataPtrExtNext_new_ptr_value_T_7 = rdataPtrExtNext_reverse_flag_3 ? _rdataPtrExtNext_new_ptr_value_T_6 :
    {{1'd0}, rdataPtrExtNext_new_value_3}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] rdataPtrExtNext_new_ptr_2_value = _rdataPtrExtNext_new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _rdataPtrExtNext_T_4_0_value = _rdataPtrExtNext_T_1 | _rdataPtrExtNext_T_2 ?
    rdataPtrExtNext_new_ptr_2_value : rdataPtrExt_0_value; // @[StoreQueue.scala 169:8]
  wire [3:0] rdataPtrExtNext_new_ptr_3_value = _rdataPtrExtNext_new_ptr_value_T_7[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] _rdataPtrExtNext_T_4_1_value = _rdataPtrExtNext_T_1 | _rdataPtrExtNext_T_2 ?
    rdataPtrExtNext_new_ptr_3_value : rdataPtrExt_1_value; // @[StoreQueue.scala 169:8]
  wire [3:0] rdataPtrExtNext_new_ptr_value = _rdataPtrExtNext_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] rdataPtrExtNext_new_ptr_1_value = _rdataPtrExtNext_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _deqPtrExtNext_T = io_sbuffer_1_ready & io_sbuffer_1_valid; // @[Decoupled.scala 50:35]
  reg  deqPtrExtNext_REG; // @[StoreQueue.scala 183:34]
  wire [4:0] deqPtrExtNext_new_value = deqPtrExt_0_value + 4'h2; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _deqPtrExtNext_diff_T_1 = {1'h0,deqPtrExtNext_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] deqPtrExtNext_diff = $signed(_deqPtrExtNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  deqPtrExtNext_reverse_flag = $signed(deqPtrExtNext_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _deqPtrExtNext_new_ptr_value_T = $signed(_deqPtrExtNext_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _deqPtrExtNext_new_ptr_value_T_1 = deqPtrExtNext_reverse_flag ? _deqPtrExtNext_new_ptr_value_T : {{1'd0},
    deqPtrExtNext_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire  _deqPtrExtNext_T_1 = io_sbuffer_0_ready & io_sbuffer_0_valid; // @[Decoupled.scala 50:35]
  reg  deqPtrExtNext_REG_1; // @[StoreQueue.scala 185:16]
  wire [4:0] deqPtrExtNext_new_value_2 = deqPtrExt_0_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _deqPtrExtNext_diff_T_13 = {1'h0,deqPtrExtNext_new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] deqPtrExtNext_diff_2 = $signed(_deqPtrExtNext_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  deqPtrExtNext_reverse_flag_2 = $signed(deqPtrExtNext_diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  deqPtrExtNext_new_ptr_2_flag = deqPtrExtNext_reverse_flag_2 ? ~deqPtrExt_0_flag : deqPtrExt_0_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _deqPtrExtNext_new_ptr_value_T_4 = $signed(_deqPtrExtNext_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _deqPtrExtNext_new_ptr_value_T_5 = deqPtrExtNext_reverse_flag_2 ? _deqPtrExtNext_new_ptr_value_T_4 : {{1
    'd0}, deqPtrExtNext_new_value_2}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] deqPtrExtNext_new_ptr_2_value = _deqPtrExtNext_new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] deqPtrExtNext_new_ptr_value = _deqPtrExtNext_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  reg  io_sqDeq_REG; // @[StoreQueue.scala 190:34]
  reg  io_sqDeq_REG_1; // @[StoreQueue.scala 191:16]
  wire  _io_sqDeq_T_3 = io_sqDeq_REG_1 | _rdataPtrExtNext_T_2; // @[StoreQueue.scala 191:39]
  reg [1:0] io_sqDeq_REG_2; // @[StoreQueue.scala 190:22]
  wire [3:0] _GEN_15785 = {{2'd0}, commitCount}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] vaddrModule_io_raddr_2_new_value = cmtPtrExt_0_value + _GEN_15785; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _vaddrModule_io_raddr_2_diff_T_1 = {1'h0,vaddrModule_io_raddr_2_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] vaddrModule_io_raddr_2_diff = $signed(_vaddrModule_io_raddr_2_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  vaddrModule_io_raddr_2_reverse_flag = $signed(vaddrModule_io_raddr_2_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _vaddrModule_io_raddr_2_new_ptr_value_T = $signed(_vaddrModule_io_raddr_2_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _vaddrModule_io_raddr_2_new_ptr_value_T_1 = vaddrModule_io_raddr_2_reverse_flag ?
    _vaddrModule_io_raddr_2_new_ptr_value_T : {{1'd0}, vaddrModule_io_raddr_2_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [5:0] _enqCancel_flushItself_T_1 = {io_enq_req_0_bits_robIdx_flag,io_enq_req_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _enqCancel_flushItself_T_2 = {io_brqRedirect_bits_robIdx_flag,io_brqRedirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _enqCancel_flushItself_T_3 = _enqCancel_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself = io_brqRedirect_bits_level & _enqCancel_flushItself_T_3; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag = io_enq_req_0_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare = io_enq_req_0_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T = enqCancel_differentFlag ^ enqCancel_compare; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_0 = io_brqRedirect_valid & (enqCancel_flushItself | _enqCancel_T); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_5 = {io_enq_req_1_bits_robIdx_flag,io_enq_req_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_7 = _enqCancel_flushItself_T_5 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_1 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_7; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_1 = io_enq_req_1_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_1 = io_enq_req_1_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_2 = enqCancel_differentFlag_1 ^ enqCancel_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_1 = io_brqRedirect_valid & (enqCancel_flushItself_1 | _enqCancel_T_2); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_9 = {io_enq_req_2_bits_robIdx_flag,io_enq_req_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_11 = _enqCancel_flushItself_T_9 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_2 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_11; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_2 = io_enq_req_2_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_2 = io_enq_req_2_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_4 = enqCancel_differentFlag_2 ^ enqCancel_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_2 = io_brqRedirect_valid & (enqCancel_flushItself_2 | _enqCancel_T_4); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_13 = {io_enq_req_3_bits_robIdx_flag,io_enq_req_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_15 = _enqCancel_flushItself_T_13 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_3 = io_brqRedirect_bits_level & _enqCancel_flushItself_T_15; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_3 = io_enq_req_3_bits_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_3 = io_enq_req_3_bits_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_6 = enqCancel_differentFlag_3 ^ enqCancel_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_3 = io_brqRedirect_valid & (enqCancel_flushItself_3 | _enqCancel_T_6); // @[Rob.scala 143:20]
  wire  _GEN_276 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_0_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_277 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_1_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_278 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_2_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_279 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_3_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_280 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_4_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_281 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_5_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_282 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_6_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_283 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_7_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_284 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_8_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_285 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_9_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_286 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_10_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_287 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_trigger_backendEn_0 :
    uop_11_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_456 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_0_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_457 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_1_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_458 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_2_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_459 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_3_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_460 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_4_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_461 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_5_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_462 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_6_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_463 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_7_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_464 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_8_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_465 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_9_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_466 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_10_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_467 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_storeSetHit : uop_11_cf_storeSetHit; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_516 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_0_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_517 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_1_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_518 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_2_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_519 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_3_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_520 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_4_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_521 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_5_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_522 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_6_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_523 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_7_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_524 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_8_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_525 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_9_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_526 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_10_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_527 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_cf_ssid : uop_11_cf_ssid; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_672 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_0_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_673 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_1_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_674 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_2_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_675 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_3_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_676 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_4_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_677 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_5_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_678 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_6_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_679 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_7_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_680 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_8_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_681 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_9_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_682 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_10_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [6:0] _GEN_683 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_ctrl_fuOpType : uop_11_ctrl_fuOpType; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1080 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_0_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1081 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_1_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1082 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_2_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1083 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_3_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1084 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_4_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1085 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_5_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1086 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_6_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1087 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_7_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1088 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_8_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1089 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_9_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1090 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_10_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1091 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_11_robIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1092 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_0_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1093 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_1_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1094 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_2_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1095 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_3_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1096 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_4_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1097 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_5_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1098 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_6_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1099 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_7_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1100 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_8_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1101 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_9_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1102 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_10_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [4:0] _GEN_1103 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_11_robIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1104 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_0_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1105 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_1_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1106 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_2_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1107 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_3_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1108 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_4_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1109 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_5_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1110 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_6_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1111 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_7_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1112 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_8_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1113 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_9_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1114 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_10_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1115 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_flag : uop_11_lqIdx_flag; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1116 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_0_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1117 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_1_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1118 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_2_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1119 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_3_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1120 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_4_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1121 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_5_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1122 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_6_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1123 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_7_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1124 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_8_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1125 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_9_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1126 = 4'ha == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_10_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire [3:0] _GEN_1127 = 4'hb == io_enq_req_0_bits_sqIdx_value ? io_enq_req_0_bits_lqIdx_value : uop_11_lqIdx_value; // @[StoreQueue.scala 217:{18,18} 98:16]
  wire  _GEN_1320 = 4'h0 == io_enq_req_0_bits_sqIdx_value | allocated_0; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1321 = 4'h1 == io_enq_req_0_bits_sqIdx_value | allocated_1; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1322 = 4'h2 == io_enq_req_0_bits_sqIdx_value | allocated_2; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1323 = 4'h3 == io_enq_req_0_bits_sqIdx_value | allocated_3; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1324 = 4'h4 == io_enq_req_0_bits_sqIdx_value | allocated_4; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1325 = 4'h5 == io_enq_req_0_bits_sqIdx_value | allocated_5; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1326 = 4'h6 == io_enq_req_0_bits_sqIdx_value | allocated_6; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1327 = 4'h7 == io_enq_req_0_bits_sqIdx_value | allocated_7; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1328 = 4'h8 == io_enq_req_0_bits_sqIdx_value | allocated_8; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1329 = 4'h9 == io_enq_req_0_bits_sqIdx_value | allocated_9; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1330 = 4'ha == io_enq_req_0_bits_sqIdx_value | allocated_10; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1331 = 4'hb == io_enq_req_0_bits_sqIdx_value | allocated_11; // @[StoreQueue.scala 220:{24,24} 129:26]
  wire  _GEN_1332 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_0; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1333 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_1; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1334 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_2; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1335 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_3; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1336 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_4; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1337 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_5; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1338 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_6; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1339 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_7; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1340 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_8; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1341 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_9; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1342 = 4'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_10; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1343 = 4'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : datavalid_11; // @[StoreQueue.scala 221:{24,24} 131:26]
  wire  _GEN_1344 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_0; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1345 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_1; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1346 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_2; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1347 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_3; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1348 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_4; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1349 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_5; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1350 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_6; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1351 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_7; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1352 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_8; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1353 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_9; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1354 = 4'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_10; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1355 = 4'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : addrvalid_11; // @[StoreQueue.scala 222:{24,24} 130:26]
  wire  _GEN_1356 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_0; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1357 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_1; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1358 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_2; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1359 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_3; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1360 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_4; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1361 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_5; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1362 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_6; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1363 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_7; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1364 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_8; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1365 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_9; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1366 = 4'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_10; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1367 = 4'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : committed_11; // @[StoreQueue.scala 133:22 223:{24,24}]
  wire  _GEN_1368 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_0; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1369 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_1; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1370 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_2; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1371 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_3; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1372 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_4; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1373 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_5; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1374 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_6; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1375 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_7; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1376 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_8; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1377 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_9; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1378 = 4'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_10; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1379 = 4'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : pending_11; // @[StoreQueue.scala 134:20 224:{22,22}]
  wire  _GEN_1392 = 4'h0 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_0; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1393 = 4'h1 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_1; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1394 = 4'h2 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_2; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1395 = 4'h3 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_3; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1396 = 4'h4 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_4; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1397 = 4'h5 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_5; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1398 = 4'h6 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_6; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1399 = 4'h7 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_7; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1400 = 4'h8 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_8; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1401 = 4'h9 == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_9; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1402 = 4'ha == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_10; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1403 = 4'hb == io_enq_req_0_bits_sqIdx_value ? 1'h0 : mmio_11; // @[StoreQueue.scala 135:17 226:{19,19}]
  wire  _GEN_1680 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_276 : uop_0_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1681 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_277 : uop_1_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1682 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_278 : uop_2_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1683 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_279 : uop_3_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1684 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_280 : uop_4_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1685 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_281 : uop_5_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1686 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_282 : uop_6_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1687 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_283 : uop_7_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1688 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_284 : uop_8_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1689 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_285 : uop_9_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1690 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_286 : uop_10_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1691 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_287 : uop_11_cf_trigger_backendEn_0; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1860 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_456 : uop_0_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1861 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_457 : uop_1_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1862 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_458 : uop_2_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1863 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_459 : uop_3_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1864 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_460 : uop_4_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1865 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_461 : uop_5_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1866 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_462 : uop_6_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1867 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_463 : uop_7_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1868 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_464 : uop_8_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1869 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_465 : uop_9_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1870 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_466 : uop_10_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_1871 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_467 : uop_11_cf_storeSetHit; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1920 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_516 : uop_0_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1921 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_517 : uop_1_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1922 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_518 : uop_2_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1923 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_519 : uop_3_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1924 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_520 : uop_4_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1925 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_521 : uop_5_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1926 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_522 : uop_6_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1927 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_523 : uop_7_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1928 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_524 : uop_8_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1929 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_525 : uop_9_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1930 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_526 : uop_10_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_1931 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_527 : uop_11_cf_ssid; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2076 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_672 : uop_0_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2077 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_673 : uop_1_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2078 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_674 : uop_2_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2079 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_675 : uop_3_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2080 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_676 : uop_4_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2081 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_677 : uop_5_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2082 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_678 : uop_6_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2083 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_679 : uop_7_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2084 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_680 : uop_8_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2085 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_681 : uop_9_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2086 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_682 : uop_10_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire [6:0] _GEN_2087 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_683 : uop_11_ctrl_fuOpType; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2484 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1080 : uop_0_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2485 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1081 : uop_1_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2486 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1082 : uop_2_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2487 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1083 : uop_3_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2488 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1084 : uop_4_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2489 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1085 : uop_5_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2490 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1086 : uop_6_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2491 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1087 : uop_7_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2492 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1088 : uop_8_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2493 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1089 : uop_9_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2494 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1090 : uop_10_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2495 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1091 : uop_11_robIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2496 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1092 : uop_0_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2497 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1093 : uop_1_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2498 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1094 : uop_2_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2499 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1095 : uop_3_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2500 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1096 : uop_4_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2501 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1097 : uop_5_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2502 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1098 : uop_6_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2503 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1099 : uop_7_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2504 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1100 : uop_8_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2505 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1101 : uop_9_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2506 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1102 : uop_10_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [4:0] _GEN_2507 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1103 : uop_11_robIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2508 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1104 : uop_0_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2509 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1105 : uop_1_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2510 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1106 : uop_2_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2511 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1107 : uop_3_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2512 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1108 : uop_4_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2513 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1109 : uop_5_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2514 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1110 : uop_6_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2515 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1111 : uop_7_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2516 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1112 : uop_8_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2517 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1113 : uop_9_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2518 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1114 : uop_10_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2519 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1115 : uop_11_lqIdx_flag; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2520 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1116 : uop_0_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2521 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1117 : uop_1_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2522 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1118 : uop_2_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2523 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1119 : uop_3_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2524 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1120 : uop_4_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2525 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1121 : uop_5_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2526 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1122 : uop_6_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2527 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1123 : uop_7_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2528 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1124 : uop_8_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2529 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1125 : uop_9_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2530 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1126 : uop_10_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire [3:0] _GEN_2531 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1127 : uop_11_lqIdx_value; // @[StoreQueue.scala 216:43 98:16]
  wire  _GEN_2700 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1320 : allocated_0; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2701 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1321 : allocated_1; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2702 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1322 : allocated_2; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2703 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1323 : allocated_3; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2704 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1324 : allocated_4; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2705 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1325 : allocated_5; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2706 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1326 : allocated_6; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2707 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1327 : allocated_7; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2708 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1328 : allocated_8; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2709 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1329 : allocated_9; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2710 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1330 : allocated_10; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2711 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1331 : allocated_11; // @[StoreQueue.scala 129:26 216:43]
  wire  _GEN_2712 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1332 : datavalid_0; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2713 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1333 : datavalid_1; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2714 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1334 : datavalid_2; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2715 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1335 : datavalid_3; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2716 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1336 : datavalid_4; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2717 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1337 : datavalid_5; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2718 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1338 : datavalid_6; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2719 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1339 : datavalid_7; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2720 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1340 : datavalid_8; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2721 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1341 : datavalid_9; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2722 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1342 : datavalid_10; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2723 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1343 : datavalid_11; // @[StoreQueue.scala 131:26 216:43]
  wire  _GEN_2724 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1344 : addrvalid_0; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2725 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1345 : addrvalid_1; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2726 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1346 : addrvalid_2; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2727 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1347 : addrvalid_3; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2728 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1348 : addrvalid_4; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2729 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1349 : addrvalid_5; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2730 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1350 : addrvalid_6; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2731 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1351 : addrvalid_7; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2732 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1352 : addrvalid_8; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2733 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1353 : addrvalid_9; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2734 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1354 : addrvalid_10; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2735 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1355 : addrvalid_11; // @[StoreQueue.scala 130:26 216:43]
  wire  _GEN_2736 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1356 : committed_0; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2737 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1357 : committed_1; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2738 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1358 : committed_2; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2739 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1359 : committed_3; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2740 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1360 : committed_4; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2741 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1361 : committed_5; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2742 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1362 : committed_6; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2743 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1363 : committed_7; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2744 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1364 : committed_8; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2745 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1365 : committed_9; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2746 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1366 : committed_10; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2747 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1367 : committed_11; // @[StoreQueue.scala 133:22 216:43]
  wire  _GEN_2748 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1368 : pending_0; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2749 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1369 : pending_1; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2750 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1370 : pending_2; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2751 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1371 : pending_3; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2752 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1372 : pending_4; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2753 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1373 : pending_5; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2754 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1374 : pending_6; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2755 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1375 : pending_7; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2756 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1376 : pending_8; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2757 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1377 : pending_9; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2758 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1378 : pending_10; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2759 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1379 : pending_11; // @[StoreQueue.scala 134:20 216:43]
  wire  _GEN_2772 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1392 : mmio_0; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2773 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1393 : mmio_1; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2774 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1394 : mmio_2; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2775 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1395 : mmio_3; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2776 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1396 : mmio_4; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2777 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1397 : mmio_5; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2778 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1398 : mmio_6; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2779 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1399 : mmio_7; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2780 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1400 : mmio_8; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2781 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1401 : mmio_9; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2782 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1402 : mmio_10; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_2783 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1403 : mmio_11; // @[StoreQueue.scala 135:17 216:43]
  wire  _GEN_3060 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1680; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3061 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1681; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3062 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1682; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3063 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1683; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3064 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1684; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3065 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1685; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3066 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1686; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3067 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1687; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3068 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1688; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3069 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1689; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3070 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1690; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3071 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_trigger_backendEn_0 : _GEN_1691; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3240 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1860; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3241 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1861; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3242 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1862; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3243 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1863; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3244 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1864; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3245 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1865; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3246 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1866; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3247 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1867; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3248 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1868; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3249 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1869; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3250 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1870; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3251 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_storeSetHit : _GEN_1871; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3300 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1920; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3301 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1921; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3302 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1922; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3303 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1923; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3304 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1924; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3305 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1925; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3306 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1926; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3307 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1927; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3308 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1928; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3309 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1929; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3310 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1930; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3311 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_cf_ssid : _GEN_1931; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3456 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2076; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3457 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2077; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3458 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2078; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3459 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2079; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3460 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2080; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3461 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2081; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3462 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2082; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3463 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2083; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3464 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2084; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3465 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2085; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3466 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2086; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_3467 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_ctrl_fuOpType : _GEN_2087; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3864 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2484; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3865 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2485; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3866 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2486; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3867 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2487; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3868 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2488; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3869 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2489; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3870 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2490; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3871 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2491; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3872 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2492; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3873 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2493; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3874 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2494; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3875 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_2495; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3876 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2496; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3877 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2497; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3878 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2498; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3879 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2499; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3880 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2500; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3881 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2501; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3882 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2502; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3883 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2503; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3884 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2504; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3885 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2505; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3886 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2506; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_3887 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_2507; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3888 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2508; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3889 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2509; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3890 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2510; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3891 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2511; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3892 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2512; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3893 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2513; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3894 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2514; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3895 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2515; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3896 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2516; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3897 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2517; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3898 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2518; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_3899 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_flag : _GEN_2519; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3900 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2520; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3901 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2521; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3902 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2522; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3903 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2523; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3904 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2524; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3905 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2525; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3906 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2526; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3907 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2527; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3908 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2528; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3909 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2529; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3910 = 4'ha == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2530; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_3911 = 4'hb == io_enq_req_1_bits_sqIdx_value ? io_enq_req_1_bits_lqIdx_value : _GEN_2531; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_4112 = 4'h0 == io_enq_req_1_bits_sqIdx_value | _GEN_2700; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4113 = 4'h1 == io_enq_req_1_bits_sqIdx_value | _GEN_2701; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4114 = 4'h2 == io_enq_req_1_bits_sqIdx_value | _GEN_2702; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4115 = 4'h3 == io_enq_req_1_bits_sqIdx_value | _GEN_2703; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4116 = 4'h4 == io_enq_req_1_bits_sqIdx_value | _GEN_2704; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4117 = 4'h5 == io_enq_req_1_bits_sqIdx_value | _GEN_2705; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4118 = 4'h6 == io_enq_req_1_bits_sqIdx_value | _GEN_2706; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4119 = 4'h7 == io_enq_req_1_bits_sqIdx_value | _GEN_2707; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4120 = 4'h8 == io_enq_req_1_bits_sqIdx_value | _GEN_2708; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4121 = 4'h9 == io_enq_req_1_bits_sqIdx_value | _GEN_2709; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4122 = 4'ha == io_enq_req_1_bits_sqIdx_value | _GEN_2710; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4123 = 4'hb == io_enq_req_1_bits_sqIdx_value | _GEN_2711; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_4124 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2712; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4125 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2713; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4126 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2714; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4127 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2715; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4128 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2716; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4129 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2717; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4130 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2718; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4131 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2719; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4132 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2720; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4133 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2721; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4134 = 4'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2722; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4135 = 4'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2723; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_4136 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2724; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4137 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2725; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4138 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2726; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4139 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2727; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4140 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2728; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4141 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2729; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4142 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2730; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4143 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2731; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4144 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2732; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4145 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2733; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4146 = 4'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2734; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4147 = 4'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2735; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_4148 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2736; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4149 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2737; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4150 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2738; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4151 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2739; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4152 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2740; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4153 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2741; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4154 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2742; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4155 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2743; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4156 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2744; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4157 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2745; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4158 = 4'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2746; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4159 = 4'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2747; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_4160 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2748; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4161 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2749; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4162 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2750; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4163 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2751; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4164 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2752; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4165 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2753; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4166 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2754; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4167 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2755; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4168 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2756; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4169 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2757; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4170 = 4'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2758; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4171 = 4'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2759; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_4184 = 4'h0 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2772; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4185 = 4'h1 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2773; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4186 = 4'h2 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2774; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4187 = 4'h3 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2775; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4188 = 4'h4 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2776; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4189 = 4'h5 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2777; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4190 = 4'h6 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2778; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4191 = 4'h7 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2779; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4192 = 4'h8 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2780; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4193 = 4'h9 == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2781; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4194 = 4'ha == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2782; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4195 = 4'hb == io_enq_req_1_bits_sqIdx_value ? 1'h0 : _GEN_2783; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_4472 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3060 : _GEN_1680; // @[StoreQueue.scala 216:43]
  wire  _GEN_4473 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3061 : _GEN_1681; // @[StoreQueue.scala 216:43]
  wire  _GEN_4474 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3062 : _GEN_1682; // @[StoreQueue.scala 216:43]
  wire  _GEN_4475 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3063 : _GEN_1683; // @[StoreQueue.scala 216:43]
  wire  _GEN_4476 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3064 : _GEN_1684; // @[StoreQueue.scala 216:43]
  wire  _GEN_4477 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3065 : _GEN_1685; // @[StoreQueue.scala 216:43]
  wire  _GEN_4478 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3066 : _GEN_1686; // @[StoreQueue.scala 216:43]
  wire  _GEN_4479 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3067 : _GEN_1687; // @[StoreQueue.scala 216:43]
  wire  _GEN_4480 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3068 : _GEN_1688; // @[StoreQueue.scala 216:43]
  wire  _GEN_4481 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3069 : _GEN_1689; // @[StoreQueue.scala 216:43]
  wire  _GEN_4482 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3070 : _GEN_1690; // @[StoreQueue.scala 216:43]
  wire  _GEN_4483 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3071 : _GEN_1691; // @[StoreQueue.scala 216:43]
  wire  _GEN_4652 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3240 : _GEN_1860; // @[StoreQueue.scala 216:43]
  wire  _GEN_4653 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3241 : _GEN_1861; // @[StoreQueue.scala 216:43]
  wire  _GEN_4654 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3242 : _GEN_1862; // @[StoreQueue.scala 216:43]
  wire  _GEN_4655 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3243 : _GEN_1863; // @[StoreQueue.scala 216:43]
  wire  _GEN_4656 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3244 : _GEN_1864; // @[StoreQueue.scala 216:43]
  wire  _GEN_4657 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3245 : _GEN_1865; // @[StoreQueue.scala 216:43]
  wire  _GEN_4658 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3246 : _GEN_1866; // @[StoreQueue.scala 216:43]
  wire  _GEN_4659 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3247 : _GEN_1867; // @[StoreQueue.scala 216:43]
  wire  _GEN_4660 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3248 : _GEN_1868; // @[StoreQueue.scala 216:43]
  wire  _GEN_4661 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3249 : _GEN_1869; // @[StoreQueue.scala 216:43]
  wire  _GEN_4662 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3250 : _GEN_1870; // @[StoreQueue.scala 216:43]
  wire  _GEN_4663 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3251 : _GEN_1871; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4712 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3300 : _GEN_1920; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4713 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3301 : _GEN_1921; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4714 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3302 : _GEN_1922; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4715 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3303 : _GEN_1923; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4716 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3304 : _GEN_1924; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4717 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3305 : _GEN_1925; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4718 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3306 : _GEN_1926; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4719 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3307 : _GEN_1927; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4720 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3308 : _GEN_1928; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4721 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3309 : _GEN_1929; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4722 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3310 : _GEN_1930; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_4723 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3311 : _GEN_1931; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4868 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3456 : _GEN_2076; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4869 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3457 : _GEN_2077; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4870 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3458 : _GEN_2078; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4871 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3459 : _GEN_2079; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4872 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3460 : _GEN_2080; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4873 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3461 : _GEN_2081; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4874 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3462 : _GEN_2082; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4875 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3463 : _GEN_2083; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4876 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3464 : _GEN_2084; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4877 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3465 : _GEN_2085; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4878 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3466 : _GEN_2086; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_4879 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3467 : _GEN_2087; // @[StoreQueue.scala 216:43]
  wire  _GEN_5276 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3864 : _GEN_2484; // @[StoreQueue.scala 216:43]
  wire  _GEN_5277 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3865 : _GEN_2485; // @[StoreQueue.scala 216:43]
  wire  _GEN_5278 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3866 : _GEN_2486; // @[StoreQueue.scala 216:43]
  wire  _GEN_5279 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3867 : _GEN_2487; // @[StoreQueue.scala 216:43]
  wire  _GEN_5280 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3868 : _GEN_2488; // @[StoreQueue.scala 216:43]
  wire  _GEN_5281 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3869 : _GEN_2489; // @[StoreQueue.scala 216:43]
  wire  _GEN_5282 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3870 : _GEN_2490; // @[StoreQueue.scala 216:43]
  wire  _GEN_5283 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3871 : _GEN_2491; // @[StoreQueue.scala 216:43]
  wire  _GEN_5284 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3872 : _GEN_2492; // @[StoreQueue.scala 216:43]
  wire  _GEN_5285 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3873 : _GEN_2493; // @[StoreQueue.scala 216:43]
  wire  _GEN_5286 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3874 : _GEN_2494; // @[StoreQueue.scala 216:43]
  wire  _GEN_5287 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3875 : _GEN_2495; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5288 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3876 : _GEN_2496; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5289 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3877 : _GEN_2497; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5290 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3878 : _GEN_2498; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5291 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3879 : _GEN_2499; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5292 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3880 : _GEN_2500; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5293 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3881 : _GEN_2501; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5294 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3882 : _GEN_2502; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5295 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3883 : _GEN_2503; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5296 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3884 : _GEN_2504; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5297 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3885 : _GEN_2505; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5298 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3886 : _GEN_2506; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_5299 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3887 : _GEN_2507; // @[StoreQueue.scala 216:43]
  wire  _GEN_5300 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3888 : _GEN_2508; // @[StoreQueue.scala 216:43]
  wire  _GEN_5301 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3889 : _GEN_2509; // @[StoreQueue.scala 216:43]
  wire  _GEN_5302 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3890 : _GEN_2510; // @[StoreQueue.scala 216:43]
  wire  _GEN_5303 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3891 : _GEN_2511; // @[StoreQueue.scala 216:43]
  wire  _GEN_5304 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3892 : _GEN_2512; // @[StoreQueue.scala 216:43]
  wire  _GEN_5305 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3893 : _GEN_2513; // @[StoreQueue.scala 216:43]
  wire  _GEN_5306 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3894 : _GEN_2514; // @[StoreQueue.scala 216:43]
  wire  _GEN_5307 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3895 : _GEN_2515; // @[StoreQueue.scala 216:43]
  wire  _GEN_5308 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3896 : _GEN_2516; // @[StoreQueue.scala 216:43]
  wire  _GEN_5309 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3897 : _GEN_2517; // @[StoreQueue.scala 216:43]
  wire  _GEN_5310 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3898 : _GEN_2518; // @[StoreQueue.scala 216:43]
  wire  _GEN_5311 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3899 : _GEN_2519; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5312 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3900 : _GEN_2520; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5313 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3901 : _GEN_2521; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5314 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3902 : _GEN_2522; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5315 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3903 : _GEN_2523; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5316 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3904 : _GEN_2524; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5317 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3905 : _GEN_2525; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5318 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3906 : _GEN_2526; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5319 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3907 : _GEN_2527; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5320 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3908 : _GEN_2528; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5321 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3909 : _GEN_2529; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5322 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3910 : _GEN_2530; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_5323 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3911 : _GEN_2531; // @[StoreQueue.scala 216:43]
  wire  _GEN_5492 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4112 : _GEN_2700; // @[StoreQueue.scala 216:43]
  wire  _GEN_5493 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4113 : _GEN_2701; // @[StoreQueue.scala 216:43]
  wire  _GEN_5494 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4114 : _GEN_2702; // @[StoreQueue.scala 216:43]
  wire  _GEN_5495 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4115 : _GEN_2703; // @[StoreQueue.scala 216:43]
  wire  _GEN_5496 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4116 : _GEN_2704; // @[StoreQueue.scala 216:43]
  wire  _GEN_5497 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4117 : _GEN_2705; // @[StoreQueue.scala 216:43]
  wire  _GEN_5498 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4118 : _GEN_2706; // @[StoreQueue.scala 216:43]
  wire  _GEN_5499 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4119 : _GEN_2707; // @[StoreQueue.scala 216:43]
  wire  _GEN_5500 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4120 : _GEN_2708; // @[StoreQueue.scala 216:43]
  wire  _GEN_5501 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4121 : _GEN_2709; // @[StoreQueue.scala 216:43]
  wire  _GEN_5502 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4122 : _GEN_2710; // @[StoreQueue.scala 216:43]
  wire  _GEN_5503 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4123 : _GEN_2711; // @[StoreQueue.scala 216:43]
  wire  _GEN_5504 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4124 : _GEN_2712; // @[StoreQueue.scala 216:43]
  wire  _GEN_5505 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4125 : _GEN_2713; // @[StoreQueue.scala 216:43]
  wire  _GEN_5506 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4126 : _GEN_2714; // @[StoreQueue.scala 216:43]
  wire  _GEN_5507 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4127 : _GEN_2715; // @[StoreQueue.scala 216:43]
  wire  _GEN_5508 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4128 : _GEN_2716; // @[StoreQueue.scala 216:43]
  wire  _GEN_5509 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4129 : _GEN_2717; // @[StoreQueue.scala 216:43]
  wire  _GEN_5510 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4130 : _GEN_2718; // @[StoreQueue.scala 216:43]
  wire  _GEN_5511 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4131 : _GEN_2719; // @[StoreQueue.scala 216:43]
  wire  _GEN_5512 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4132 : _GEN_2720; // @[StoreQueue.scala 216:43]
  wire  _GEN_5513 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4133 : _GEN_2721; // @[StoreQueue.scala 216:43]
  wire  _GEN_5514 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4134 : _GEN_2722; // @[StoreQueue.scala 216:43]
  wire  _GEN_5515 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4135 : _GEN_2723; // @[StoreQueue.scala 216:43]
  wire  _GEN_5516 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4136 : _GEN_2724; // @[StoreQueue.scala 216:43]
  wire  _GEN_5517 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4137 : _GEN_2725; // @[StoreQueue.scala 216:43]
  wire  _GEN_5518 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4138 : _GEN_2726; // @[StoreQueue.scala 216:43]
  wire  _GEN_5519 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4139 : _GEN_2727; // @[StoreQueue.scala 216:43]
  wire  _GEN_5520 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4140 : _GEN_2728; // @[StoreQueue.scala 216:43]
  wire  _GEN_5521 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4141 : _GEN_2729; // @[StoreQueue.scala 216:43]
  wire  _GEN_5522 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4142 : _GEN_2730; // @[StoreQueue.scala 216:43]
  wire  _GEN_5523 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4143 : _GEN_2731; // @[StoreQueue.scala 216:43]
  wire  _GEN_5524 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4144 : _GEN_2732; // @[StoreQueue.scala 216:43]
  wire  _GEN_5525 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4145 : _GEN_2733; // @[StoreQueue.scala 216:43]
  wire  _GEN_5526 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4146 : _GEN_2734; // @[StoreQueue.scala 216:43]
  wire  _GEN_5527 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4147 : _GEN_2735; // @[StoreQueue.scala 216:43]
  wire  _GEN_5528 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4148 : _GEN_2736; // @[StoreQueue.scala 216:43]
  wire  _GEN_5529 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4149 : _GEN_2737; // @[StoreQueue.scala 216:43]
  wire  _GEN_5530 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4150 : _GEN_2738; // @[StoreQueue.scala 216:43]
  wire  _GEN_5531 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4151 : _GEN_2739; // @[StoreQueue.scala 216:43]
  wire  _GEN_5532 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4152 : _GEN_2740; // @[StoreQueue.scala 216:43]
  wire  _GEN_5533 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4153 : _GEN_2741; // @[StoreQueue.scala 216:43]
  wire  _GEN_5534 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4154 : _GEN_2742; // @[StoreQueue.scala 216:43]
  wire  _GEN_5535 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4155 : _GEN_2743; // @[StoreQueue.scala 216:43]
  wire  _GEN_5536 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4156 : _GEN_2744; // @[StoreQueue.scala 216:43]
  wire  _GEN_5537 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4157 : _GEN_2745; // @[StoreQueue.scala 216:43]
  wire  _GEN_5538 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4158 : _GEN_2746; // @[StoreQueue.scala 216:43]
  wire  _GEN_5539 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4159 : _GEN_2747; // @[StoreQueue.scala 216:43]
  wire  _GEN_5540 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4160 : _GEN_2748; // @[StoreQueue.scala 216:43]
  wire  _GEN_5541 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4161 : _GEN_2749; // @[StoreQueue.scala 216:43]
  wire  _GEN_5542 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4162 : _GEN_2750; // @[StoreQueue.scala 216:43]
  wire  _GEN_5543 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4163 : _GEN_2751; // @[StoreQueue.scala 216:43]
  wire  _GEN_5544 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4164 : _GEN_2752; // @[StoreQueue.scala 216:43]
  wire  _GEN_5545 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4165 : _GEN_2753; // @[StoreQueue.scala 216:43]
  wire  _GEN_5546 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4166 : _GEN_2754; // @[StoreQueue.scala 216:43]
  wire  _GEN_5547 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4167 : _GEN_2755; // @[StoreQueue.scala 216:43]
  wire  _GEN_5548 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4168 : _GEN_2756; // @[StoreQueue.scala 216:43]
  wire  _GEN_5549 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4169 : _GEN_2757; // @[StoreQueue.scala 216:43]
  wire  _GEN_5550 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4170 : _GEN_2758; // @[StoreQueue.scala 216:43]
  wire  _GEN_5551 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4171 : _GEN_2759; // @[StoreQueue.scala 216:43]
  wire  _GEN_5564 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4184 : _GEN_2772; // @[StoreQueue.scala 216:43]
  wire  _GEN_5565 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4185 : _GEN_2773; // @[StoreQueue.scala 216:43]
  wire  _GEN_5566 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4186 : _GEN_2774; // @[StoreQueue.scala 216:43]
  wire  _GEN_5567 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4187 : _GEN_2775; // @[StoreQueue.scala 216:43]
  wire  _GEN_5568 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4188 : _GEN_2776; // @[StoreQueue.scala 216:43]
  wire  _GEN_5569 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4189 : _GEN_2777; // @[StoreQueue.scala 216:43]
  wire  _GEN_5570 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4190 : _GEN_2778; // @[StoreQueue.scala 216:43]
  wire  _GEN_5571 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4191 : _GEN_2779; // @[StoreQueue.scala 216:43]
  wire  _GEN_5572 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4192 : _GEN_2780; // @[StoreQueue.scala 216:43]
  wire  _GEN_5573 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4193 : _GEN_2781; // @[StoreQueue.scala 216:43]
  wire  _GEN_5574 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4194 : _GEN_2782; // @[StoreQueue.scala 216:43]
  wire  _GEN_5575 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_4195 : _GEN_2783; // @[StoreQueue.scala 216:43]
  wire  _GEN_5852 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4472; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5853 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4473; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5854 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4474; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5855 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4475; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5856 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4476; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5857 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4477; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5858 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4478; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5859 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4479; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5860 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4480; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5861 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4481; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5862 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4482; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_5863 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_trigger_backendEn_0 : _GEN_4483; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6032 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4652; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6033 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4653; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6034 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4654; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6035 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4655; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6036 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4656; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6037 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4657; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6038 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4658; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6039 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4659; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6040 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4660; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6041 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4661; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6042 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4662; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6043 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_storeSetHit : _GEN_4663; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6092 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4712; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6093 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4713; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6094 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4714; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6095 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4715; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6096 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4716; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6097 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4717; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6098 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4718; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6099 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4719; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6100 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4720; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6101 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4721; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6102 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4722; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6103 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_cf_ssid : _GEN_4723; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6248 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4868; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6249 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4869; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6250 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4870; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6251 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4871; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6252 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4872; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6253 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4873; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6254 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4874; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6255 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4875; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6256 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4876; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6257 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4877; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6258 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4878; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_6259 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_ctrl_fuOpType : _GEN_4879; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6656 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5276; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6657 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5277; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6658 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5278; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6659 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5279; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6660 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5280; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6661 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5281; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6662 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5282; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6663 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5283; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6664 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5284; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6665 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5285; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6666 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5286; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6667 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_5287; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6668 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5288; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6669 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5289; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6670 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5290; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6671 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5291; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6672 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5292; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6673 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5293; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6674 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5294; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6675 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5295; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6676 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5296; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6677 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5297; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6678 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5298; // @[StoreQueue.scala 217:{18,18}]
  wire [4:0] _GEN_6679 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_5299; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6680 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5300; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6681 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5301; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6682 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5302; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6683 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5303; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6684 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5304; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6685 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5305; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6686 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5306; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6687 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5307; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6688 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5308; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6689 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5309; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6690 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5310; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6691 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_flag : _GEN_5311; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6692 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5312; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6693 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5313; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6694 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5314; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6695 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5315; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6696 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5316; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6697 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5317; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6698 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5318; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6699 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5319; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6700 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5320; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6701 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5321; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6702 = 4'ha == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5322; // @[StoreQueue.scala 217:{18,18}]
  wire [3:0] _GEN_6703 = 4'hb == io_enq_req_2_bits_sqIdx_value ? io_enq_req_2_bits_lqIdx_value : _GEN_5323; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_6904 = 4'h0 == io_enq_req_2_bits_sqIdx_value | _GEN_5492; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6905 = 4'h1 == io_enq_req_2_bits_sqIdx_value | _GEN_5493; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6906 = 4'h2 == io_enq_req_2_bits_sqIdx_value | _GEN_5494; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6907 = 4'h3 == io_enq_req_2_bits_sqIdx_value | _GEN_5495; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6908 = 4'h4 == io_enq_req_2_bits_sqIdx_value | _GEN_5496; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6909 = 4'h5 == io_enq_req_2_bits_sqIdx_value | _GEN_5497; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6910 = 4'h6 == io_enq_req_2_bits_sqIdx_value | _GEN_5498; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6911 = 4'h7 == io_enq_req_2_bits_sqIdx_value | _GEN_5499; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6912 = 4'h8 == io_enq_req_2_bits_sqIdx_value | _GEN_5500; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6913 = 4'h9 == io_enq_req_2_bits_sqIdx_value | _GEN_5501; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6914 = 4'ha == io_enq_req_2_bits_sqIdx_value | _GEN_5502; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6915 = 4'hb == io_enq_req_2_bits_sqIdx_value | _GEN_5503; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_6916 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5504; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6917 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5505; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6918 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5506; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6919 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5507; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6920 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5508; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6921 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5509; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6922 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5510; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6923 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5511; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6924 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5512; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6925 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5513; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6926 = 4'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5514; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6927 = 4'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5515; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_6928 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5516; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6929 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5517; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6930 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5518; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6931 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5519; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6932 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5520; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6933 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5521; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6934 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5522; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6935 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5523; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6936 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5524; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6937 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5525; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6938 = 4'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5526; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6939 = 4'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5527; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_6940 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5528; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6941 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5529; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6942 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5530; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6943 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5531; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6944 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5532; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6945 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5533; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6946 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5534; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6947 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5535; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6948 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5536; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6949 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5537; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6950 = 4'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5538; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6951 = 4'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5539; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_6952 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5540; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6953 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5541; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6954 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5542; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6955 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5543; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6956 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5544; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6957 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5545; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6958 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5546; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6959 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5547; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6960 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5548; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6961 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5549; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6962 = 4'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5550; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6963 = 4'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5551; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_6976 = 4'h0 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5564; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6977 = 4'h1 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5565; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6978 = 4'h2 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5566; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6979 = 4'h3 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5567; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6980 = 4'h4 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5568; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6981 = 4'h5 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5569; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6982 = 4'h6 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5570; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6983 = 4'h7 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5571; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6984 = 4'h8 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5572; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6985 = 4'h9 == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5573; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6986 = 4'ha == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5574; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_6987 = 4'hb == io_enq_req_2_bits_sqIdx_value ? 1'h0 : _GEN_5575; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_7264 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5852 : _GEN_4472; // @[StoreQueue.scala 216:43]
  wire  _GEN_7265 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5853 : _GEN_4473; // @[StoreQueue.scala 216:43]
  wire  _GEN_7266 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5854 : _GEN_4474; // @[StoreQueue.scala 216:43]
  wire  _GEN_7267 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5855 : _GEN_4475; // @[StoreQueue.scala 216:43]
  wire  _GEN_7268 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5856 : _GEN_4476; // @[StoreQueue.scala 216:43]
  wire  _GEN_7269 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5857 : _GEN_4477; // @[StoreQueue.scala 216:43]
  wire  _GEN_7270 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5858 : _GEN_4478; // @[StoreQueue.scala 216:43]
  wire  _GEN_7271 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5859 : _GEN_4479; // @[StoreQueue.scala 216:43]
  wire  _GEN_7272 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5860 : _GEN_4480; // @[StoreQueue.scala 216:43]
  wire  _GEN_7273 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5861 : _GEN_4481; // @[StoreQueue.scala 216:43]
  wire  _GEN_7274 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5862 : _GEN_4482; // @[StoreQueue.scala 216:43]
  wire  _GEN_7275 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_5863 : _GEN_4483; // @[StoreQueue.scala 216:43]
  wire  _GEN_7444 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6032 : _GEN_4652; // @[StoreQueue.scala 216:43]
  wire  _GEN_7445 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6033 : _GEN_4653; // @[StoreQueue.scala 216:43]
  wire  _GEN_7446 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6034 : _GEN_4654; // @[StoreQueue.scala 216:43]
  wire  _GEN_7447 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6035 : _GEN_4655; // @[StoreQueue.scala 216:43]
  wire  _GEN_7448 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6036 : _GEN_4656; // @[StoreQueue.scala 216:43]
  wire  _GEN_7449 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6037 : _GEN_4657; // @[StoreQueue.scala 216:43]
  wire  _GEN_7450 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6038 : _GEN_4658; // @[StoreQueue.scala 216:43]
  wire  _GEN_7451 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6039 : _GEN_4659; // @[StoreQueue.scala 216:43]
  wire  _GEN_7452 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6040 : _GEN_4660; // @[StoreQueue.scala 216:43]
  wire  _GEN_7453 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6041 : _GEN_4661; // @[StoreQueue.scala 216:43]
  wire  _GEN_7454 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6042 : _GEN_4662; // @[StoreQueue.scala 216:43]
  wire  _GEN_7455 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6043 : _GEN_4663; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7504 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6092 : _GEN_4712; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7505 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6093 : _GEN_4713; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7506 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6094 : _GEN_4714; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7507 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6095 : _GEN_4715; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7508 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6096 : _GEN_4716; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7509 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6097 : _GEN_4717; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7510 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6098 : _GEN_4718; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7511 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6099 : _GEN_4719; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7512 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6100 : _GEN_4720; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7513 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6101 : _GEN_4721; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7514 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6102 : _GEN_4722; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_7515 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6103 : _GEN_4723; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7660 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6248 : _GEN_4868; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7661 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6249 : _GEN_4869; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7662 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6250 : _GEN_4870; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7663 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6251 : _GEN_4871; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7664 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6252 : _GEN_4872; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7665 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6253 : _GEN_4873; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7666 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6254 : _GEN_4874; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7667 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6255 : _GEN_4875; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7668 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6256 : _GEN_4876; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7669 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6257 : _GEN_4877; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7670 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6258 : _GEN_4878; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_7671 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6259 : _GEN_4879; // @[StoreQueue.scala 216:43]
  wire  _GEN_8068 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6656 : _GEN_5276; // @[StoreQueue.scala 216:43]
  wire  _GEN_8069 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6657 : _GEN_5277; // @[StoreQueue.scala 216:43]
  wire  _GEN_8070 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6658 : _GEN_5278; // @[StoreQueue.scala 216:43]
  wire  _GEN_8071 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6659 : _GEN_5279; // @[StoreQueue.scala 216:43]
  wire  _GEN_8072 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6660 : _GEN_5280; // @[StoreQueue.scala 216:43]
  wire  _GEN_8073 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6661 : _GEN_5281; // @[StoreQueue.scala 216:43]
  wire  _GEN_8074 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6662 : _GEN_5282; // @[StoreQueue.scala 216:43]
  wire  _GEN_8075 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6663 : _GEN_5283; // @[StoreQueue.scala 216:43]
  wire  _GEN_8076 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6664 : _GEN_5284; // @[StoreQueue.scala 216:43]
  wire  _GEN_8077 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6665 : _GEN_5285; // @[StoreQueue.scala 216:43]
  wire  _GEN_8078 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6666 : _GEN_5286; // @[StoreQueue.scala 216:43]
  wire  _GEN_8079 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6667 : _GEN_5287; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8080 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6668 : _GEN_5288; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8081 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6669 : _GEN_5289; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8082 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6670 : _GEN_5290; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8083 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6671 : _GEN_5291; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8084 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6672 : _GEN_5292; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8085 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6673 : _GEN_5293; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8086 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6674 : _GEN_5294; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8087 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6675 : _GEN_5295; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8088 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6676 : _GEN_5296; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8089 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6677 : _GEN_5297; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8090 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6678 : _GEN_5298; // @[StoreQueue.scala 216:43]
  wire [4:0] _GEN_8091 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6679 : _GEN_5299; // @[StoreQueue.scala 216:43]
  wire  _GEN_8092 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6680 : _GEN_5300; // @[StoreQueue.scala 216:43]
  wire  _GEN_8093 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6681 : _GEN_5301; // @[StoreQueue.scala 216:43]
  wire  _GEN_8094 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6682 : _GEN_5302; // @[StoreQueue.scala 216:43]
  wire  _GEN_8095 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6683 : _GEN_5303; // @[StoreQueue.scala 216:43]
  wire  _GEN_8096 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6684 : _GEN_5304; // @[StoreQueue.scala 216:43]
  wire  _GEN_8097 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6685 : _GEN_5305; // @[StoreQueue.scala 216:43]
  wire  _GEN_8098 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6686 : _GEN_5306; // @[StoreQueue.scala 216:43]
  wire  _GEN_8099 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6687 : _GEN_5307; // @[StoreQueue.scala 216:43]
  wire  _GEN_8100 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6688 : _GEN_5308; // @[StoreQueue.scala 216:43]
  wire  _GEN_8101 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6689 : _GEN_5309; // @[StoreQueue.scala 216:43]
  wire  _GEN_8102 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6690 : _GEN_5310; // @[StoreQueue.scala 216:43]
  wire  _GEN_8103 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6691 : _GEN_5311; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8104 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6692 : _GEN_5312; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8105 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6693 : _GEN_5313; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8106 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6694 : _GEN_5314; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8107 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6695 : _GEN_5315; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8108 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6696 : _GEN_5316; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8109 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6697 : _GEN_5317; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8110 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6698 : _GEN_5318; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8111 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6699 : _GEN_5319; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8112 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6700 : _GEN_5320; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8113 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6701 : _GEN_5321; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8114 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6702 : _GEN_5322; // @[StoreQueue.scala 216:43]
  wire [3:0] _GEN_8115 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6703 : _GEN_5323; // @[StoreQueue.scala 216:43]
  wire  _GEN_8284 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6904 : _GEN_5492; // @[StoreQueue.scala 216:43]
  wire  _GEN_8285 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6905 : _GEN_5493; // @[StoreQueue.scala 216:43]
  wire  _GEN_8286 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6906 : _GEN_5494; // @[StoreQueue.scala 216:43]
  wire  _GEN_8287 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6907 : _GEN_5495; // @[StoreQueue.scala 216:43]
  wire  _GEN_8288 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6908 : _GEN_5496; // @[StoreQueue.scala 216:43]
  wire  _GEN_8289 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6909 : _GEN_5497; // @[StoreQueue.scala 216:43]
  wire  _GEN_8290 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6910 : _GEN_5498; // @[StoreQueue.scala 216:43]
  wire  _GEN_8291 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6911 : _GEN_5499; // @[StoreQueue.scala 216:43]
  wire  _GEN_8292 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6912 : _GEN_5500; // @[StoreQueue.scala 216:43]
  wire  _GEN_8293 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6913 : _GEN_5501; // @[StoreQueue.scala 216:43]
  wire  _GEN_8294 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6914 : _GEN_5502; // @[StoreQueue.scala 216:43]
  wire  _GEN_8295 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6915 : _GEN_5503; // @[StoreQueue.scala 216:43]
  wire  _GEN_8296 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6916 : _GEN_5504; // @[StoreQueue.scala 216:43]
  wire  _GEN_8297 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6917 : _GEN_5505; // @[StoreQueue.scala 216:43]
  wire  _GEN_8298 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6918 : _GEN_5506; // @[StoreQueue.scala 216:43]
  wire  _GEN_8299 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6919 : _GEN_5507; // @[StoreQueue.scala 216:43]
  wire  _GEN_8300 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6920 : _GEN_5508; // @[StoreQueue.scala 216:43]
  wire  _GEN_8301 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6921 : _GEN_5509; // @[StoreQueue.scala 216:43]
  wire  _GEN_8302 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6922 : _GEN_5510; // @[StoreQueue.scala 216:43]
  wire  _GEN_8303 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6923 : _GEN_5511; // @[StoreQueue.scala 216:43]
  wire  _GEN_8304 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6924 : _GEN_5512; // @[StoreQueue.scala 216:43]
  wire  _GEN_8305 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6925 : _GEN_5513; // @[StoreQueue.scala 216:43]
  wire  _GEN_8306 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6926 : _GEN_5514; // @[StoreQueue.scala 216:43]
  wire  _GEN_8307 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6927 : _GEN_5515; // @[StoreQueue.scala 216:43]
  wire  _GEN_8308 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6928 : _GEN_5516; // @[StoreQueue.scala 216:43]
  wire  _GEN_8309 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6929 : _GEN_5517; // @[StoreQueue.scala 216:43]
  wire  _GEN_8310 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6930 : _GEN_5518; // @[StoreQueue.scala 216:43]
  wire  _GEN_8311 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6931 : _GEN_5519; // @[StoreQueue.scala 216:43]
  wire  _GEN_8312 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6932 : _GEN_5520; // @[StoreQueue.scala 216:43]
  wire  _GEN_8313 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6933 : _GEN_5521; // @[StoreQueue.scala 216:43]
  wire  _GEN_8314 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6934 : _GEN_5522; // @[StoreQueue.scala 216:43]
  wire  _GEN_8315 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6935 : _GEN_5523; // @[StoreQueue.scala 216:43]
  wire  _GEN_8316 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6936 : _GEN_5524; // @[StoreQueue.scala 216:43]
  wire  _GEN_8317 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6937 : _GEN_5525; // @[StoreQueue.scala 216:43]
  wire  _GEN_8318 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6938 : _GEN_5526; // @[StoreQueue.scala 216:43]
  wire  _GEN_8319 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6939 : _GEN_5527; // @[StoreQueue.scala 216:43]
  wire  _GEN_8320 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6940 : _GEN_5528; // @[StoreQueue.scala 216:43]
  wire  _GEN_8321 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6941 : _GEN_5529; // @[StoreQueue.scala 216:43]
  wire  _GEN_8322 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6942 : _GEN_5530; // @[StoreQueue.scala 216:43]
  wire  _GEN_8323 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6943 : _GEN_5531; // @[StoreQueue.scala 216:43]
  wire  _GEN_8324 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6944 : _GEN_5532; // @[StoreQueue.scala 216:43]
  wire  _GEN_8325 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6945 : _GEN_5533; // @[StoreQueue.scala 216:43]
  wire  _GEN_8326 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6946 : _GEN_5534; // @[StoreQueue.scala 216:43]
  wire  _GEN_8327 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6947 : _GEN_5535; // @[StoreQueue.scala 216:43]
  wire  _GEN_8328 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6948 : _GEN_5536; // @[StoreQueue.scala 216:43]
  wire  _GEN_8329 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6949 : _GEN_5537; // @[StoreQueue.scala 216:43]
  wire  _GEN_8330 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6950 : _GEN_5538; // @[StoreQueue.scala 216:43]
  wire  _GEN_8331 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6951 : _GEN_5539; // @[StoreQueue.scala 216:43]
  wire  _GEN_8332 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6952 : _GEN_5540; // @[StoreQueue.scala 216:43]
  wire  _GEN_8333 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6953 : _GEN_5541; // @[StoreQueue.scala 216:43]
  wire  _GEN_8334 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6954 : _GEN_5542; // @[StoreQueue.scala 216:43]
  wire  _GEN_8335 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6955 : _GEN_5543; // @[StoreQueue.scala 216:43]
  wire  _GEN_8336 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6956 : _GEN_5544; // @[StoreQueue.scala 216:43]
  wire  _GEN_8337 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6957 : _GEN_5545; // @[StoreQueue.scala 216:43]
  wire  _GEN_8338 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6958 : _GEN_5546; // @[StoreQueue.scala 216:43]
  wire  _GEN_8339 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6959 : _GEN_5547; // @[StoreQueue.scala 216:43]
  wire  _GEN_8340 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6960 : _GEN_5548; // @[StoreQueue.scala 216:43]
  wire  _GEN_8341 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6961 : _GEN_5549; // @[StoreQueue.scala 216:43]
  wire  _GEN_8342 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6962 : _GEN_5550; // @[StoreQueue.scala 216:43]
  wire  _GEN_8343 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6963 : _GEN_5551; // @[StoreQueue.scala 216:43]
  wire  _GEN_8356 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6976 : _GEN_5564; // @[StoreQueue.scala 216:43]
  wire  _GEN_8357 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6977 : _GEN_5565; // @[StoreQueue.scala 216:43]
  wire  _GEN_8358 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6978 : _GEN_5566; // @[StoreQueue.scala 216:43]
  wire  _GEN_8359 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6979 : _GEN_5567; // @[StoreQueue.scala 216:43]
  wire  _GEN_8360 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6980 : _GEN_5568; // @[StoreQueue.scala 216:43]
  wire  _GEN_8361 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6981 : _GEN_5569; // @[StoreQueue.scala 216:43]
  wire  _GEN_8362 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6982 : _GEN_5570; // @[StoreQueue.scala 216:43]
  wire  _GEN_8363 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6983 : _GEN_5571; // @[StoreQueue.scala 216:43]
  wire  _GEN_8364 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6984 : _GEN_5572; // @[StoreQueue.scala 216:43]
  wire  _GEN_8365 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6985 : _GEN_5573; // @[StoreQueue.scala 216:43]
  wire  _GEN_8366 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6986 : _GEN_5574; // @[StoreQueue.scala 216:43]
  wire  _GEN_8367 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_6987 : _GEN_5575; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_9040 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7660; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9041 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7661; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9042 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7662; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9043 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7663; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9044 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7664; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9045 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7665; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9046 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7666; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9047 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7667; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9048 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7668; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9049 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7669; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9050 = 4'ha == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7670; // @[StoreQueue.scala 217:{18,18}]
  wire [6:0] _GEN_9051 = 4'hb == io_enq_req_3_bits_sqIdx_value ? io_enq_req_3_bits_ctrl_fuOpType : _GEN_7671; // @[StoreQueue.scala 217:{18,18}]
  wire  _GEN_9696 = 4'h0 == io_enq_req_3_bits_sqIdx_value | _GEN_8284; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9697 = 4'h1 == io_enq_req_3_bits_sqIdx_value | _GEN_8285; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9698 = 4'h2 == io_enq_req_3_bits_sqIdx_value | _GEN_8286; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9699 = 4'h3 == io_enq_req_3_bits_sqIdx_value | _GEN_8287; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9700 = 4'h4 == io_enq_req_3_bits_sqIdx_value | _GEN_8288; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9701 = 4'h5 == io_enq_req_3_bits_sqIdx_value | _GEN_8289; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9702 = 4'h6 == io_enq_req_3_bits_sqIdx_value | _GEN_8290; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9703 = 4'h7 == io_enq_req_3_bits_sqIdx_value | _GEN_8291; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9704 = 4'h8 == io_enq_req_3_bits_sqIdx_value | _GEN_8292; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9705 = 4'h9 == io_enq_req_3_bits_sqIdx_value | _GEN_8293; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9706 = 4'ha == io_enq_req_3_bits_sqIdx_value | _GEN_8294; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9707 = 4'hb == io_enq_req_3_bits_sqIdx_value | _GEN_8295; // @[StoreQueue.scala 220:{24,24}]
  wire  _GEN_9708 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8296; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9709 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8297; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9710 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8298; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9711 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8299; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9712 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8300; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9713 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8301; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9714 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8302; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9715 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8303; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9716 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8304; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9717 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8305; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9718 = 4'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8306; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9719 = 4'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8307; // @[StoreQueue.scala 221:{24,24}]
  wire  _GEN_9720 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8308; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9721 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8309; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9722 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8310; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9723 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8311; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9724 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8312; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9725 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8313; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9726 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8314; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9727 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8315; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9728 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8316; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9729 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8317; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9730 = 4'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8318; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9731 = 4'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8319; // @[StoreQueue.scala 222:{24,24}]
  wire  _GEN_9732 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8320; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9733 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8321; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9734 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8322; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9735 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8323; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9736 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8324; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9737 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8325; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9738 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8326; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9739 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8327; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9740 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8328; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9741 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8329; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9742 = 4'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8330; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9743 = 4'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8331; // @[StoreQueue.scala 223:{24,24}]
  wire  _GEN_9744 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8332; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9745 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8333; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9746 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8334; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9747 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8335; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9748 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8336; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9749 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8337; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9750 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8338; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9751 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8339; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9752 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8340; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9753 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8341; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9754 = 4'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8342; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9755 = 4'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8343; // @[StoreQueue.scala 224:{22,22}]
  wire  _GEN_9768 = 4'h0 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8356; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9769 = 4'h1 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8357; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9770 = 4'h2 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8358; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9771 = 4'h3 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8359; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9772 = 4'h4 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8360; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9773 = 4'h5 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8361; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9774 = 4'h6 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8362; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9775 = 4'h7 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8363; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9776 = 4'h8 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8364; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9777 = 4'h9 == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8365; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9778 = 4'ha == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8366; // @[StoreQueue.scala 226:{19,19}]
  wire  _GEN_9779 = 4'hb == io_enq_req_3_bits_sqIdx_value ? 1'h0 : _GEN_8367; // @[StoreQueue.scala 226:{19,19}]
  wire [6:0] _GEN_10452 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9040 : _GEN_7660; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10453 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9041 : _GEN_7661; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10454 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9042 : _GEN_7662; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10455 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9043 : _GEN_7663; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10456 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9044 : _GEN_7664; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10457 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9045 : _GEN_7665; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10458 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9046 : _GEN_7666; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10459 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9047 : _GEN_7667; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10460 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9048 : _GEN_7668; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10461 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9049 : _GEN_7669; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10462 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9050 : _GEN_7670; // @[StoreQueue.scala 216:43]
  wire [6:0] _GEN_10463 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9051 : _GEN_7671; // @[StoreQueue.scala 216:43]
  wire  _GEN_11076 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9696 : _GEN_8284; // @[StoreQueue.scala 216:43]
  wire  _GEN_11077 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9697 : _GEN_8285; // @[StoreQueue.scala 216:43]
  wire  _GEN_11078 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9698 : _GEN_8286; // @[StoreQueue.scala 216:43]
  wire  _GEN_11079 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9699 : _GEN_8287; // @[StoreQueue.scala 216:43]
  wire  _GEN_11080 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9700 : _GEN_8288; // @[StoreQueue.scala 216:43]
  wire  _GEN_11081 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9701 : _GEN_8289; // @[StoreQueue.scala 216:43]
  wire  _GEN_11082 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9702 : _GEN_8290; // @[StoreQueue.scala 216:43]
  wire  _GEN_11083 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9703 : _GEN_8291; // @[StoreQueue.scala 216:43]
  wire  _GEN_11084 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9704 : _GEN_8292; // @[StoreQueue.scala 216:43]
  wire  _GEN_11085 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9705 : _GEN_8293; // @[StoreQueue.scala 216:43]
  wire  _GEN_11086 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9706 : _GEN_8294; // @[StoreQueue.scala 216:43]
  wire  _GEN_11087 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9707 : _GEN_8295; // @[StoreQueue.scala 216:43]
  wire  _GEN_11088 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9708 : _GEN_8296; // @[StoreQueue.scala 216:43]
  wire  _GEN_11089 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9709 : _GEN_8297; // @[StoreQueue.scala 216:43]
  wire  _GEN_11090 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9710 : _GEN_8298; // @[StoreQueue.scala 216:43]
  wire  _GEN_11091 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9711 : _GEN_8299; // @[StoreQueue.scala 216:43]
  wire  _GEN_11092 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9712 : _GEN_8300; // @[StoreQueue.scala 216:43]
  wire  _GEN_11093 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9713 : _GEN_8301; // @[StoreQueue.scala 216:43]
  wire  _GEN_11094 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9714 : _GEN_8302; // @[StoreQueue.scala 216:43]
  wire  _GEN_11095 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9715 : _GEN_8303; // @[StoreQueue.scala 216:43]
  wire  _GEN_11096 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9716 : _GEN_8304; // @[StoreQueue.scala 216:43]
  wire  _GEN_11097 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9717 : _GEN_8305; // @[StoreQueue.scala 216:43]
  wire  _GEN_11098 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9718 : _GEN_8306; // @[StoreQueue.scala 216:43]
  wire  _GEN_11099 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9719 : _GEN_8307; // @[StoreQueue.scala 216:43]
  wire  _GEN_11100 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9720 : _GEN_8308; // @[StoreQueue.scala 216:43]
  wire  _GEN_11101 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9721 : _GEN_8309; // @[StoreQueue.scala 216:43]
  wire  _GEN_11102 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9722 : _GEN_8310; // @[StoreQueue.scala 216:43]
  wire  _GEN_11103 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9723 : _GEN_8311; // @[StoreQueue.scala 216:43]
  wire  _GEN_11104 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9724 : _GEN_8312; // @[StoreQueue.scala 216:43]
  wire  _GEN_11105 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9725 : _GEN_8313; // @[StoreQueue.scala 216:43]
  wire  _GEN_11106 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9726 : _GEN_8314; // @[StoreQueue.scala 216:43]
  wire  _GEN_11107 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9727 : _GEN_8315; // @[StoreQueue.scala 216:43]
  wire  _GEN_11108 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9728 : _GEN_8316; // @[StoreQueue.scala 216:43]
  wire  _GEN_11109 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9729 : _GEN_8317; // @[StoreQueue.scala 216:43]
  wire  _GEN_11110 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9730 : _GEN_8318; // @[StoreQueue.scala 216:43]
  wire  _GEN_11111 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9731 : _GEN_8319; // @[StoreQueue.scala 216:43]
  wire  _GEN_11112 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9732 : _GEN_8320; // @[StoreQueue.scala 216:43]
  wire  _GEN_11113 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9733 : _GEN_8321; // @[StoreQueue.scala 216:43]
  wire  _GEN_11114 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9734 : _GEN_8322; // @[StoreQueue.scala 216:43]
  wire  _GEN_11115 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9735 : _GEN_8323; // @[StoreQueue.scala 216:43]
  wire  _GEN_11116 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9736 : _GEN_8324; // @[StoreQueue.scala 216:43]
  wire  _GEN_11117 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9737 : _GEN_8325; // @[StoreQueue.scala 216:43]
  wire  _GEN_11118 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9738 : _GEN_8326; // @[StoreQueue.scala 216:43]
  wire  _GEN_11119 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9739 : _GEN_8327; // @[StoreQueue.scala 216:43]
  wire  _GEN_11120 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9740 : _GEN_8328; // @[StoreQueue.scala 216:43]
  wire  _GEN_11121 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9741 : _GEN_8329; // @[StoreQueue.scala 216:43]
  wire  _GEN_11122 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9742 : _GEN_8330; // @[StoreQueue.scala 216:43]
  wire  _GEN_11123 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9743 : _GEN_8331; // @[StoreQueue.scala 216:43]
  wire  _GEN_11124 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9744 : _GEN_8332; // @[StoreQueue.scala 216:43]
  wire  _GEN_11125 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9745 : _GEN_8333; // @[StoreQueue.scala 216:43]
  wire  _GEN_11126 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9746 : _GEN_8334; // @[StoreQueue.scala 216:43]
  wire  _GEN_11127 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9747 : _GEN_8335; // @[StoreQueue.scala 216:43]
  wire  _GEN_11128 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9748 : _GEN_8336; // @[StoreQueue.scala 216:43]
  wire  _GEN_11129 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9749 : _GEN_8337; // @[StoreQueue.scala 216:43]
  wire  _GEN_11130 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9750 : _GEN_8338; // @[StoreQueue.scala 216:43]
  wire  _GEN_11131 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9751 : _GEN_8339; // @[StoreQueue.scala 216:43]
  wire  _GEN_11132 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9752 : _GEN_8340; // @[StoreQueue.scala 216:43]
  wire  _GEN_11133 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9753 : _GEN_8341; // @[StoreQueue.scala 216:43]
  wire  _GEN_11134 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9754 : _GEN_8342; // @[StoreQueue.scala 216:43]
  wire  _GEN_11135 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9755 : _GEN_8343; // @[StoreQueue.scala 216:43]
  wire  _GEN_11148 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9768 : _GEN_8356; // @[StoreQueue.scala 216:43]
  wire  _GEN_11149 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9769 : _GEN_8357; // @[StoreQueue.scala 216:43]
  wire  _GEN_11150 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9770 : _GEN_8358; // @[StoreQueue.scala 216:43]
  wire  _GEN_11151 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9771 : _GEN_8359; // @[StoreQueue.scala 216:43]
  wire  _GEN_11152 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9772 : _GEN_8360; // @[StoreQueue.scala 216:43]
  wire  _GEN_11153 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9773 : _GEN_8361; // @[StoreQueue.scala 216:43]
  wire  _GEN_11154 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9774 : _GEN_8362; // @[StoreQueue.scala 216:43]
  wire  _GEN_11155 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9775 : _GEN_8363; // @[StoreQueue.scala 216:43]
  wire  _GEN_11156 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9776 : _GEN_8364; // @[StoreQueue.scala 216:43]
  wire  _GEN_11157 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9777 : _GEN_8365; // @[StoreQueue.scala 216:43]
  wire  _GEN_11158 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9778 : _GEN_8366; // @[StoreQueue.scala 216:43]
  wire  _GEN_11159 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_9779 : _GEN_8367; // @[StoreQueue.scala 216:43]
  wire [4:0] addrReadyLookupVec_new_value = {{1'd0}, addrReadyPtrExt_value}; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _addrReadyLookupVec_diff_T_1 = {1'h0,addrReadyLookupVec_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] addrReadyLookupVec_diff = $signed(_addrReadyLookupVec_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  addrReadyLookupVec_reverse_flag = $signed(addrReadyLookupVec_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  addrReadyLookupVec_0_flag = addrReadyLookupVec_reverse_flag ? ~addrReadyPtrExt_flag : addrReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T = $signed(_addrReadyLookupVec_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_1 = addrReadyLookupVec_reverse_flag ?
    _addrReadyLookupVec_new_ptr_value_T : {{1'd0}, addrReadyLookupVec_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] addrReadyLookupVec_new_value_1 = addrReadyPtrExt_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _addrReadyLookupVec_diff_T_7 = {1'h0,addrReadyLookupVec_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] addrReadyLookupVec_diff_1 = $signed(_addrReadyLookupVec_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  addrReadyLookupVec_reverse_flag_1 = $signed(addrReadyLookupVec_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  addrReadyLookupVec_1_flag = addrReadyLookupVec_reverse_flag_1 ? ~addrReadyPtrExt_flag : addrReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_2 = $signed(_addrReadyLookupVec_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_3 = addrReadyLookupVec_reverse_flag_1 ?
    _addrReadyLookupVec_new_ptr_value_T_2 : {{1'd0}, addrReadyLookupVec_new_value_1}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] addrReadyLookupVec_new_value_2 = addrReadyPtrExt_value + 4'h2; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _addrReadyLookupVec_diff_T_13 = {1'h0,addrReadyLookupVec_new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] addrReadyLookupVec_diff_2 = $signed(_addrReadyLookupVec_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  addrReadyLookupVec_reverse_flag_2 = $signed(addrReadyLookupVec_diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  addrReadyLookupVec_2_flag = addrReadyLookupVec_reverse_flag_2 ? ~addrReadyPtrExt_flag : addrReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_4 = $signed(_addrReadyLookupVec_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_5 = addrReadyLookupVec_reverse_flag_2 ?
    _addrReadyLookupVec_new_ptr_value_T_4 : {{1'd0}, addrReadyLookupVec_new_value_2}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] addrReadyLookupVec_new_value_3 = addrReadyPtrExt_value + 4'h3; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _addrReadyLookupVec_diff_T_19 = {1'h0,addrReadyLookupVec_new_value_3}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] addrReadyLookupVec_diff_3 = $signed(_addrReadyLookupVec_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  addrReadyLookupVec_reverse_flag_3 = $signed(addrReadyLookupVec_diff_3) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  addrReadyLookupVec_3_flag = addrReadyLookupVec_reverse_flag_3 ? ~addrReadyPtrExt_flag : addrReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_6 = $signed(_addrReadyLookupVec_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _addrReadyLookupVec_new_ptr_value_T_7 = addrReadyLookupVec_reverse_flag_3 ?
    _addrReadyLookupVec_new_ptr_value_T_6 : {{1'd0}, addrReadyLookupVec_new_value_3}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] addrReadyLookupVec_0_value = _addrReadyLookupVec_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11161 = 4'h1 == addrReadyLookupVec_0_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11162 = 4'h2 == addrReadyLookupVec_0_value ? mmio_2 : _GEN_11161; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11163 = 4'h3 == addrReadyLookupVec_0_value ? mmio_3 : _GEN_11162; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11164 = 4'h4 == addrReadyLookupVec_0_value ? mmio_4 : _GEN_11163; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11165 = 4'h5 == addrReadyLookupVec_0_value ? mmio_5 : _GEN_11164; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11166 = 4'h6 == addrReadyLookupVec_0_value ? mmio_6 : _GEN_11165; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11167 = 4'h7 == addrReadyLookupVec_0_value ? mmio_7 : _GEN_11166; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11168 = 4'h8 == addrReadyLookupVec_0_value ? mmio_8 : _GEN_11167; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11169 = 4'h9 == addrReadyLookupVec_0_value ? mmio_9 : _GEN_11168; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11170 = 4'ha == addrReadyLookupVec_0_value ? mmio_10 : _GEN_11169; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11171 = 4'hb == addrReadyLookupVec_0_value ? mmio_11 : _GEN_11170; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11173 = 4'h1 == addrReadyLookupVec_0_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11174 = 4'h2 == addrReadyLookupVec_0_value ? addrvalid_2 : _GEN_11173; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11175 = 4'h3 == addrReadyLookupVec_0_value ? addrvalid_3 : _GEN_11174; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11176 = 4'h4 == addrReadyLookupVec_0_value ? addrvalid_4 : _GEN_11175; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11177 = 4'h5 == addrReadyLookupVec_0_value ? addrvalid_5 : _GEN_11176; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11178 = 4'h6 == addrReadyLookupVec_0_value ? addrvalid_6 : _GEN_11177; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11179 = 4'h7 == addrReadyLookupVec_0_value ? addrvalid_7 : _GEN_11178; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11180 = 4'h8 == addrReadyLookupVec_0_value ? addrvalid_8 : _GEN_11179; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11181 = 4'h9 == addrReadyLookupVec_0_value ? addrvalid_9 : _GEN_11180; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11182 = 4'ha == addrReadyLookupVec_0_value ? addrvalid_10 : _GEN_11181; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11183 = 4'hb == addrReadyLookupVec_0_value ? addrvalid_11 : _GEN_11182; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11185 = 4'h1 == addrReadyLookupVec_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11186 = 4'h2 == addrReadyLookupVec_0_value ? allocated_2 : _GEN_11185; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11187 = 4'h3 == addrReadyLookupVec_0_value ? allocated_3 : _GEN_11186; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11188 = 4'h4 == addrReadyLookupVec_0_value ? allocated_4 : _GEN_11187; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11189 = 4'h5 == addrReadyLookupVec_0_value ? allocated_5 : _GEN_11188; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11190 = 4'h6 == addrReadyLookupVec_0_value ? allocated_6 : _GEN_11189; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11191 = 4'h7 == addrReadyLookupVec_0_value ? allocated_7 : _GEN_11190; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11192 = 4'h8 == addrReadyLookupVec_0_value ? allocated_8 : _GEN_11191; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11193 = 4'h9 == addrReadyLookupVec_0_value ? allocated_9 : _GEN_11192; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11194 = 4'ha == addrReadyLookupVec_0_value ? allocated_10 : _GEN_11193; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11195 = 4'hb == addrReadyLookupVec_0_value ? allocated_11 : _GEN_11194; // @[StoreQueue.scala 243:{76,76}]
  wire [4:0] _addrReadyLookup_T_2 = {addrReadyLookupVec_0_flag,addrReadyLookupVec_0_value}; // @[CircularQueuePtr.scala 63:40]
  wire [4:0] _addrReadyLookup_T_3 = {enqPtrExt_0_flag,enqPtrExt_0_value}; // @[CircularQueuePtr.scala 63:56]
  wire  _addrReadyLookup_T_4 = _addrReadyLookup_T_2 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  addrReadyLookup_0 = _GEN_11195 & (_GEN_11171 | _GEN_11183) & _addrReadyLookup_T_4; // @[StoreQueue.scala 243:121]
  wire [3:0] addrReadyLookupVec_1_value = _addrReadyLookupVec_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11197 = 4'h1 == addrReadyLookupVec_1_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11198 = 4'h2 == addrReadyLookupVec_1_value ? mmio_2 : _GEN_11197; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11199 = 4'h3 == addrReadyLookupVec_1_value ? mmio_3 : _GEN_11198; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11200 = 4'h4 == addrReadyLookupVec_1_value ? mmio_4 : _GEN_11199; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11201 = 4'h5 == addrReadyLookupVec_1_value ? mmio_5 : _GEN_11200; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11202 = 4'h6 == addrReadyLookupVec_1_value ? mmio_6 : _GEN_11201; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11203 = 4'h7 == addrReadyLookupVec_1_value ? mmio_7 : _GEN_11202; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11204 = 4'h8 == addrReadyLookupVec_1_value ? mmio_8 : _GEN_11203; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11205 = 4'h9 == addrReadyLookupVec_1_value ? mmio_9 : _GEN_11204; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11206 = 4'ha == addrReadyLookupVec_1_value ? mmio_10 : _GEN_11205; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11207 = 4'hb == addrReadyLookupVec_1_value ? mmio_11 : _GEN_11206; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11209 = 4'h1 == addrReadyLookupVec_1_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11210 = 4'h2 == addrReadyLookupVec_1_value ? addrvalid_2 : _GEN_11209; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11211 = 4'h3 == addrReadyLookupVec_1_value ? addrvalid_3 : _GEN_11210; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11212 = 4'h4 == addrReadyLookupVec_1_value ? addrvalid_4 : _GEN_11211; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11213 = 4'h5 == addrReadyLookupVec_1_value ? addrvalid_5 : _GEN_11212; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11214 = 4'h6 == addrReadyLookupVec_1_value ? addrvalid_6 : _GEN_11213; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11215 = 4'h7 == addrReadyLookupVec_1_value ? addrvalid_7 : _GEN_11214; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11216 = 4'h8 == addrReadyLookupVec_1_value ? addrvalid_8 : _GEN_11215; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11217 = 4'h9 == addrReadyLookupVec_1_value ? addrvalid_9 : _GEN_11216; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11218 = 4'ha == addrReadyLookupVec_1_value ? addrvalid_10 : _GEN_11217; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11219 = 4'hb == addrReadyLookupVec_1_value ? addrvalid_11 : _GEN_11218; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11221 = 4'h1 == addrReadyLookupVec_1_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11222 = 4'h2 == addrReadyLookupVec_1_value ? allocated_2 : _GEN_11221; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11223 = 4'h3 == addrReadyLookupVec_1_value ? allocated_3 : _GEN_11222; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11224 = 4'h4 == addrReadyLookupVec_1_value ? allocated_4 : _GEN_11223; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11225 = 4'h5 == addrReadyLookupVec_1_value ? allocated_5 : _GEN_11224; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11226 = 4'h6 == addrReadyLookupVec_1_value ? allocated_6 : _GEN_11225; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11227 = 4'h7 == addrReadyLookupVec_1_value ? allocated_7 : _GEN_11226; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11228 = 4'h8 == addrReadyLookupVec_1_value ? allocated_8 : _GEN_11227; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11229 = 4'h9 == addrReadyLookupVec_1_value ? allocated_9 : _GEN_11228; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11230 = 4'ha == addrReadyLookupVec_1_value ? allocated_10 : _GEN_11229; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11231 = 4'hb == addrReadyLookupVec_1_value ? allocated_11 : _GEN_11230; // @[StoreQueue.scala 243:{76,76}]
  wire [4:0] _addrReadyLookup_T_7 = {addrReadyLookupVec_1_flag,addrReadyLookupVec_1_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _addrReadyLookup_T_9 = _addrReadyLookup_T_7 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  addrReadyLookup_1 = _GEN_11231 & (_GEN_11207 | _GEN_11219) & _addrReadyLookup_T_9; // @[StoreQueue.scala 243:121]
  wire [3:0] addrReadyLookupVec_2_value = _addrReadyLookupVec_new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11233 = 4'h1 == addrReadyLookupVec_2_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11234 = 4'h2 == addrReadyLookupVec_2_value ? mmio_2 : _GEN_11233; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11235 = 4'h3 == addrReadyLookupVec_2_value ? mmio_3 : _GEN_11234; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11236 = 4'h4 == addrReadyLookupVec_2_value ? mmio_4 : _GEN_11235; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11237 = 4'h5 == addrReadyLookupVec_2_value ? mmio_5 : _GEN_11236; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11238 = 4'h6 == addrReadyLookupVec_2_value ? mmio_6 : _GEN_11237; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11239 = 4'h7 == addrReadyLookupVec_2_value ? mmio_7 : _GEN_11238; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11240 = 4'h8 == addrReadyLookupVec_2_value ? mmio_8 : _GEN_11239; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11241 = 4'h9 == addrReadyLookupVec_2_value ? mmio_9 : _GEN_11240; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11242 = 4'ha == addrReadyLookupVec_2_value ? mmio_10 : _GEN_11241; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11243 = 4'hb == addrReadyLookupVec_2_value ? mmio_11 : _GEN_11242; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11245 = 4'h1 == addrReadyLookupVec_2_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11246 = 4'h2 == addrReadyLookupVec_2_value ? addrvalid_2 : _GEN_11245; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11247 = 4'h3 == addrReadyLookupVec_2_value ? addrvalid_3 : _GEN_11246; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11248 = 4'h4 == addrReadyLookupVec_2_value ? addrvalid_4 : _GEN_11247; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11249 = 4'h5 == addrReadyLookupVec_2_value ? addrvalid_5 : _GEN_11248; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11250 = 4'h6 == addrReadyLookupVec_2_value ? addrvalid_6 : _GEN_11249; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11251 = 4'h7 == addrReadyLookupVec_2_value ? addrvalid_7 : _GEN_11250; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11252 = 4'h8 == addrReadyLookupVec_2_value ? addrvalid_8 : _GEN_11251; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11253 = 4'h9 == addrReadyLookupVec_2_value ? addrvalid_9 : _GEN_11252; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11254 = 4'ha == addrReadyLookupVec_2_value ? addrvalid_10 : _GEN_11253; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11255 = 4'hb == addrReadyLookupVec_2_value ? addrvalid_11 : _GEN_11254; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11257 = 4'h1 == addrReadyLookupVec_2_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11258 = 4'h2 == addrReadyLookupVec_2_value ? allocated_2 : _GEN_11257; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11259 = 4'h3 == addrReadyLookupVec_2_value ? allocated_3 : _GEN_11258; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11260 = 4'h4 == addrReadyLookupVec_2_value ? allocated_4 : _GEN_11259; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11261 = 4'h5 == addrReadyLookupVec_2_value ? allocated_5 : _GEN_11260; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11262 = 4'h6 == addrReadyLookupVec_2_value ? allocated_6 : _GEN_11261; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11263 = 4'h7 == addrReadyLookupVec_2_value ? allocated_7 : _GEN_11262; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11264 = 4'h8 == addrReadyLookupVec_2_value ? allocated_8 : _GEN_11263; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11265 = 4'h9 == addrReadyLookupVec_2_value ? allocated_9 : _GEN_11264; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11266 = 4'ha == addrReadyLookupVec_2_value ? allocated_10 : _GEN_11265; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11267 = 4'hb == addrReadyLookupVec_2_value ? allocated_11 : _GEN_11266; // @[StoreQueue.scala 243:{76,76}]
  wire [4:0] _addrReadyLookup_T_12 = {addrReadyLookupVec_2_flag,addrReadyLookupVec_2_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _addrReadyLookup_T_14 = _addrReadyLookup_T_12 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  addrReadyLookup_2 = _GEN_11267 & (_GEN_11243 | _GEN_11255) & _addrReadyLookup_T_14; // @[StoreQueue.scala 243:121]
  wire [3:0] addrReadyLookupVec_3_value = _addrReadyLookupVec_new_ptr_value_T_7[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11269 = 4'h1 == addrReadyLookupVec_3_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11270 = 4'h2 == addrReadyLookupVec_3_value ? mmio_2 : _GEN_11269; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11271 = 4'h3 == addrReadyLookupVec_3_value ? mmio_3 : _GEN_11270; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11272 = 4'h4 == addrReadyLookupVec_3_value ? mmio_4 : _GEN_11271; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11273 = 4'h5 == addrReadyLookupVec_3_value ? mmio_5 : _GEN_11272; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11274 = 4'h6 == addrReadyLookupVec_3_value ? mmio_6 : _GEN_11273; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11275 = 4'h7 == addrReadyLookupVec_3_value ? mmio_7 : _GEN_11274; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11276 = 4'h8 == addrReadyLookupVec_3_value ? mmio_8 : _GEN_11275; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11277 = 4'h9 == addrReadyLookupVec_3_value ? mmio_9 : _GEN_11276; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11278 = 4'ha == addrReadyLookupVec_3_value ? mmio_10 : _GEN_11277; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11279 = 4'hb == addrReadyLookupVec_3_value ? mmio_11 : _GEN_11278; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11281 = 4'h1 == addrReadyLookupVec_3_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11282 = 4'h2 == addrReadyLookupVec_3_value ? addrvalid_2 : _GEN_11281; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11283 = 4'h3 == addrReadyLookupVec_3_value ? addrvalid_3 : _GEN_11282; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11284 = 4'h4 == addrReadyLookupVec_3_value ? addrvalid_4 : _GEN_11283; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11285 = 4'h5 == addrReadyLookupVec_3_value ? addrvalid_5 : _GEN_11284; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11286 = 4'h6 == addrReadyLookupVec_3_value ? addrvalid_6 : _GEN_11285; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11287 = 4'h7 == addrReadyLookupVec_3_value ? addrvalid_7 : _GEN_11286; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11288 = 4'h8 == addrReadyLookupVec_3_value ? addrvalid_8 : _GEN_11287; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11289 = 4'h9 == addrReadyLookupVec_3_value ? addrvalid_9 : _GEN_11288; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11290 = 4'ha == addrReadyLookupVec_3_value ? addrvalid_10 : _GEN_11289; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11291 = 4'hb == addrReadyLookupVec_3_value ? addrvalid_11 : _GEN_11290; // @[StoreQueue.scala 243:{96,96}]
  wire  _GEN_11293 = 4'h1 == addrReadyLookupVec_3_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11294 = 4'h2 == addrReadyLookupVec_3_value ? allocated_2 : _GEN_11293; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11295 = 4'h3 == addrReadyLookupVec_3_value ? allocated_3 : _GEN_11294; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11296 = 4'h4 == addrReadyLookupVec_3_value ? allocated_4 : _GEN_11295; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11297 = 4'h5 == addrReadyLookupVec_3_value ? allocated_5 : _GEN_11296; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11298 = 4'h6 == addrReadyLookupVec_3_value ? allocated_6 : _GEN_11297; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11299 = 4'h7 == addrReadyLookupVec_3_value ? allocated_7 : _GEN_11298; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11300 = 4'h8 == addrReadyLookupVec_3_value ? allocated_8 : _GEN_11299; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11301 = 4'h9 == addrReadyLookupVec_3_value ? allocated_9 : _GEN_11300; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11302 = 4'ha == addrReadyLookupVec_3_value ? allocated_10 : _GEN_11301; // @[StoreQueue.scala 243:{76,76}]
  wire  _GEN_11303 = 4'hb == addrReadyLookupVec_3_value ? allocated_11 : _GEN_11302; // @[StoreQueue.scala 243:{76,76}]
  wire [4:0] _addrReadyLookup_T_17 = {addrReadyLookupVec_3_flag,addrReadyLookupVec_3_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _addrReadyLookup_T_19 = _addrReadyLookup_T_17 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  addrReadyLookup_3 = _GEN_11303 & (_GEN_11279 | _GEN_11291) & _addrReadyLookup_T_19; // @[StoreQueue.scala 243:121]
  wire  _nextAddrReadyPtr_T = ~addrReadyLookup_0; // @[StoreQueue.scala 244:88]
  wire  _nextAddrReadyPtr_T_1 = ~addrReadyLookup_1; // @[StoreQueue.scala 244:88]
  wire  _nextAddrReadyPtr_T_2 = ~addrReadyLookup_2; // @[StoreQueue.scala 244:88]
  wire  _nextAddrReadyPtr_T_3 = ~addrReadyLookup_3; // @[StoreQueue.scala 244:88]
  wire [2:0] _nextAddrReadyPtr_T_4 = _nextAddrReadyPtr_T_3 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _nextAddrReadyPtr_T_5 = _nextAddrReadyPtr_T_2 ? 3'h2 : _nextAddrReadyPtr_T_4; // @[Mux.scala 47:70]
  wire [2:0] _nextAddrReadyPtr_T_6 = _nextAddrReadyPtr_T_1 ? 3'h1 : _nextAddrReadyPtr_T_5; // @[Mux.scala 47:70]
  wire [2:0] _nextAddrReadyPtr_T_7 = _nextAddrReadyPtr_T ? 3'h0 : _nextAddrReadyPtr_T_6; // @[Mux.scala 47:70]
  wire [3:0] _GEN_15839 = {{1'd0}, _nextAddrReadyPtr_T_7}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] nextAddrReadyPtr_new_value = addrReadyPtrExt_value + _GEN_15839; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _nextAddrReadyPtr_diff_T_1 = {1'h0,nextAddrReadyPtr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] nextAddrReadyPtr_diff = $signed(_nextAddrReadyPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  nextAddrReadyPtr_reverse_flag = $signed(nextAddrReadyPtr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _nextAddrReadyPtr_new_ptr_value_T = $signed(_nextAddrReadyPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _nextAddrReadyPtr_new_ptr_value_T_1 = nextAddrReadyPtr_reverse_flag ? _nextAddrReadyPtr_new_ptr_value_T :
    {{1'd0}, nextAddrReadyPtr_new_value}; // @[CircularQueuePtr.scala 45:27]
  reg  io_stAddrReadyVec_0_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_1_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_2_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_3_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_4_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_5_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_6_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_7_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_8_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_9_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_10_REG; // @[StoreQueue.scala 248:36]
  reg  io_stAddrReadyVec_11_REG; // @[StoreQueue.scala 248:36]
  wire  addrReadyPtrExt_differentFlag = cmtPtrExt_0_flag ^ deqPtrExt_0_flag; // @[CircularQueuePtr.scala 66:35]
  wire  addrReadyPtrExt_compare = cmtPtrExt_0_value > deqPtrExt_0_value; // @[CircularQueuePtr.scala 67:30]
  wire  _addrReadyPtrExt_T = addrReadyPtrExt_differentFlag ^ addrReadyPtrExt_compare; // @[CircularQueuePtr.scala 68:19]
  wire [3:0] nextAddrReadyPtr_value = _nextAddrReadyPtr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [4:0] dataReadyLookupVec_new_value = {{1'd0}, dataReadyPtrExt_value}; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _dataReadyLookupVec_diff_T_1 = {1'h0,dataReadyLookupVec_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] dataReadyLookupVec_diff = $signed(_dataReadyLookupVec_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  dataReadyLookupVec_reverse_flag = $signed(dataReadyLookupVec_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  dataReadyLookupVec_0_flag = dataReadyLookupVec_reverse_flag ? ~dataReadyPtrExt_flag : dataReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T = $signed(_dataReadyLookupVec_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_1 = dataReadyLookupVec_reverse_flag ?
    _dataReadyLookupVec_new_ptr_value_T : {{1'd0}, dataReadyLookupVec_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] dataReadyLookupVec_new_value_1 = dataReadyPtrExt_value + 4'h1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _dataReadyLookupVec_diff_T_7 = {1'h0,dataReadyLookupVec_new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] dataReadyLookupVec_diff_1 = $signed(_dataReadyLookupVec_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  dataReadyLookupVec_reverse_flag_1 = $signed(dataReadyLookupVec_diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  dataReadyLookupVec_1_flag = dataReadyLookupVec_reverse_flag_1 ? ~dataReadyPtrExt_flag : dataReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_2 = $signed(_dataReadyLookupVec_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_3 = dataReadyLookupVec_reverse_flag_1 ?
    _dataReadyLookupVec_new_ptr_value_T_2 : {{1'd0}, dataReadyLookupVec_new_value_1}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] dataReadyLookupVec_new_value_2 = dataReadyPtrExt_value + 4'h2; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _dataReadyLookupVec_diff_T_13 = {1'h0,dataReadyLookupVec_new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] dataReadyLookupVec_diff_2 = $signed(_dataReadyLookupVec_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  dataReadyLookupVec_reverse_flag_2 = $signed(dataReadyLookupVec_diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  dataReadyLookupVec_2_flag = dataReadyLookupVec_reverse_flag_2 ? ~dataReadyPtrExt_flag : dataReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_4 = $signed(_dataReadyLookupVec_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_5 = dataReadyLookupVec_reverse_flag_2 ?
    _dataReadyLookupVec_new_ptr_value_T_4 : {{1'd0}, dataReadyLookupVec_new_value_2}; // @[CircularQueuePtr.scala 45:27]
  wire [4:0] dataReadyLookupVec_new_value_3 = dataReadyPtrExt_value + 4'h3; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _dataReadyLookupVec_diff_T_19 = {1'h0,dataReadyLookupVec_new_value_3}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] dataReadyLookupVec_diff_3 = $signed(_dataReadyLookupVec_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  dataReadyLookupVec_reverse_flag_3 = $signed(dataReadyLookupVec_diff_3) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  dataReadyLookupVec_3_flag = dataReadyLookupVec_reverse_flag_3 ? ~dataReadyPtrExt_flag : dataReadyPtrExt_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_6 = $signed(_dataReadyLookupVec_diff_T_19) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _dataReadyLookupVec_new_ptr_value_T_7 = dataReadyLookupVec_reverse_flag_3 ?
    _dataReadyLookupVec_new_ptr_value_T_6 : {{1'd0}, dataReadyLookupVec_new_value_3}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] dataReadyLookupVec_0_value = _dataReadyLookupVec_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11307 = 4'h1 == dataReadyLookupVec_0_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11308 = 4'h2 == dataReadyLookupVec_0_value ? mmio_2 : _GEN_11307; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11309 = 4'h3 == dataReadyLookupVec_0_value ? mmio_3 : _GEN_11308; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11310 = 4'h4 == dataReadyLookupVec_0_value ? mmio_4 : _GEN_11309; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11311 = 4'h5 == dataReadyLookupVec_0_value ? mmio_5 : _GEN_11310; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11312 = 4'h6 == dataReadyLookupVec_0_value ? mmio_6 : _GEN_11311; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11313 = 4'h7 == dataReadyLookupVec_0_value ? mmio_7 : _GEN_11312; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11314 = 4'h8 == dataReadyLookupVec_0_value ? mmio_8 : _GEN_11313; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11315 = 4'h9 == dataReadyLookupVec_0_value ? mmio_9 : _GEN_11314; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11316 = 4'ha == dataReadyLookupVec_0_value ? mmio_10 : _GEN_11315; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11317 = 4'hb == dataReadyLookupVec_0_value ? mmio_11 : _GEN_11316; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11319 = 4'h1 == dataReadyLookupVec_0_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11320 = 4'h2 == dataReadyLookupVec_0_value ? datavalid_2 : _GEN_11319; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11321 = 4'h3 == dataReadyLookupVec_0_value ? datavalid_3 : _GEN_11320; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11322 = 4'h4 == dataReadyLookupVec_0_value ? datavalid_4 : _GEN_11321; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11323 = 4'h5 == dataReadyLookupVec_0_value ? datavalid_5 : _GEN_11322; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11324 = 4'h6 == dataReadyLookupVec_0_value ? datavalid_6 : _GEN_11323; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11325 = 4'h7 == dataReadyLookupVec_0_value ? datavalid_7 : _GEN_11324; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11326 = 4'h8 == dataReadyLookupVec_0_value ? datavalid_8 : _GEN_11325; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11327 = 4'h9 == dataReadyLookupVec_0_value ? datavalid_9 : _GEN_11326; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11328 = 4'ha == dataReadyLookupVec_0_value ? datavalid_10 : _GEN_11327; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11329 = 4'hb == dataReadyLookupVec_0_value ? datavalid_11 : _GEN_11328; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11331 = 4'h1 == dataReadyLookupVec_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11332 = 4'h2 == dataReadyLookupVec_0_value ? allocated_2 : _GEN_11331; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11333 = 4'h3 == dataReadyLookupVec_0_value ? allocated_3 : _GEN_11332; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11334 = 4'h4 == dataReadyLookupVec_0_value ? allocated_4 : _GEN_11333; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11335 = 4'h5 == dataReadyLookupVec_0_value ? allocated_5 : _GEN_11334; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11336 = 4'h6 == dataReadyLookupVec_0_value ? allocated_6 : _GEN_11335; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11337 = 4'h7 == dataReadyLookupVec_0_value ? allocated_7 : _GEN_11336; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11338 = 4'h8 == dataReadyLookupVec_0_value ? allocated_8 : _GEN_11337; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11339 = 4'h9 == dataReadyLookupVec_0_value ? allocated_9 : _GEN_11338; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11340 = 4'ha == dataReadyLookupVec_0_value ? allocated_10 : _GEN_11339; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11341 = 4'hb == dataReadyLookupVec_0_value ? allocated_11 : _GEN_11340; // @[StoreQueue.scala 263:{76,76}]
  wire [4:0] _dataReadyLookup_T_2 = {dataReadyLookupVec_0_flag,dataReadyLookupVec_0_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _dataReadyLookup_T_4 = _dataReadyLookup_T_2 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  dataReadyLookup_0 = _GEN_11341 & (_GEN_11317 | _GEN_11329) & _dataReadyLookup_T_4; // @[StoreQueue.scala 263:121]
  wire [3:0] dataReadyLookupVec_1_value = _dataReadyLookupVec_new_ptr_value_T_3[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11343 = 4'h1 == dataReadyLookupVec_1_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11344 = 4'h2 == dataReadyLookupVec_1_value ? mmio_2 : _GEN_11343; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11345 = 4'h3 == dataReadyLookupVec_1_value ? mmio_3 : _GEN_11344; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11346 = 4'h4 == dataReadyLookupVec_1_value ? mmio_4 : _GEN_11345; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11347 = 4'h5 == dataReadyLookupVec_1_value ? mmio_5 : _GEN_11346; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11348 = 4'h6 == dataReadyLookupVec_1_value ? mmio_6 : _GEN_11347; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11349 = 4'h7 == dataReadyLookupVec_1_value ? mmio_7 : _GEN_11348; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11350 = 4'h8 == dataReadyLookupVec_1_value ? mmio_8 : _GEN_11349; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11351 = 4'h9 == dataReadyLookupVec_1_value ? mmio_9 : _GEN_11350; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11352 = 4'ha == dataReadyLookupVec_1_value ? mmio_10 : _GEN_11351; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11353 = 4'hb == dataReadyLookupVec_1_value ? mmio_11 : _GEN_11352; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11355 = 4'h1 == dataReadyLookupVec_1_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11356 = 4'h2 == dataReadyLookupVec_1_value ? datavalid_2 : _GEN_11355; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11357 = 4'h3 == dataReadyLookupVec_1_value ? datavalid_3 : _GEN_11356; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11358 = 4'h4 == dataReadyLookupVec_1_value ? datavalid_4 : _GEN_11357; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11359 = 4'h5 == dataReadyLookupVec_1_value ? datavalid_5 : _GEN_11358; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11360 = 4'h6 == dataReadyLookupVec_1_value ? datavalid_6 : _GEN_11359; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11361 = 4'h7 == dataReadyLookupVec_1_value ? datavalid_7 : _GEN_11360; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11362 = 4'h8 == dataReadyLookupVec_1_value ? datavalid_8 : _GEN_11361; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11363 = 4'h9 == dataReadyLookupVec_1_value ? datavalid_9 : _GEN_11362; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11364 = 4'ha == dataReadyLookupVec_1_value ? datavalid_10 : _GEN_11363; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11365 = 4'hb == dataReadyLookupVec_1_value ? datavalid_11 : _GEN_11364; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11367 = 4'h1 == dataReadyLookupVec_1_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11368 = 4'h2 == dataReadyLookupVec_1_value ? allocated_2 : _GEN_11367; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11369 = 4'h3 == dataReadyLookupVec_1_value ? allocated_3 : _GEN_11368; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11370 = 4'h4 == dataReadyLookupVec_1_value ? allocated_4 : _GEN_11369; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11371 = 4'h5 == dataReadyLookupVec_1_value ? allocated_5 : _GEN_11370; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11372 = 4'h6 == dataReadyLookupVec_1_value ? allocated_6 : _GEN_11371; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11373 = 4'h7 == dataReadyLookupVec_1_value ? allocated_7 : _GEN_11372; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11374 = 4'h8 == dataReadyLookupVec_1_value ? allocated_8 : _GEN_11373; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11375 = 4'h9 == dataReadyLookupVec_1_value ? allocated_9 : _GEN_11374; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11376 = 4'ha == dataReadyLookupVec_1_value ? allocated_10 : _GEN_11375; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11377 = 4'hb == dataReadyLookupVec_1_value ? allocated_11 : _GEN_11376; // @[StoreQueue.scala 263:{76,76}]
  wire [4:0] _dataReadyLookup_T_7 = {dataReadyLookupVec_1_flag,dataReadyLookupVec_1_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _dataReadyLookup_T_9 = _dataReadyLookup_T_7 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  dataReadyLookup_1 = _GEN_11377 & (_GEN_11353 | _GEN_11365) & _dataReadyLookup_T_9; // @[StoreQueue.scala 263:121]
  wire [3:0] dataReadyLookupVec_2_value = _dataReadyLookupVec_new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11379 = 4'h1 == dataReadyLookupVec_2_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11380 = 4'h2 == dataReadyLookupVec_2_value ? mmio_2 : _GEN_11379; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11381 = 4'h3 == dataReadyLookupVec_2_value ? mmio_3 : _GEN_11380; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11382 = 4'h4 == dataReadyLookupVec_2_value ? mmio_4 : _GEN_11381; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11383 = 4'h5 == dataReadyLookupVec_2_value ? mmio_5 : _GEN_11382; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11384 = 4'h6 == dataReadyLookupVec_2_value ? mmio_6 : _GEN_11383; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11385 = 4'h7 == dataReadyLookupVec_2_value ? mmio_7 : _GEN_11384; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11386 = 4'h8 == dataReadyLookupVec_2_value ? mmio_8 : _GEN_11385; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11387 = 4'h9 == dataReadyLookupVec_2_value ? mmio_9 : _GEN_11386; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11388 = 4'ha == dataReadyLookupVec_2_value ? mmio_10 : _GEN_11387; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11389 = 4'hb == dataReadyLookupVec_2_value ? mmio_11 : _GEN_11388; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11391 = 4'h1 == dataReadyLookupVec_2_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11392 = 4'h2 == dataReadyLookupVec_2_value ? datavalid_2 : _GEN_11391; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11393 = 4'h3 == dataReadyLookupVec_2_value ? datavalid_3 : _GEN_11392; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11394 = 4'h4 == dataReadyLookupVec_2_value ? datavalid_4 : _GEN_11393; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11395 = 4'h5 == dataReadyLookupVec_2_value ? datavalid_5 : _GEN_11394; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11396 = 4'h6 == dataReadyLookupVec_2_value ? datavalid_6 : _GEN_11395; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11397 = 4'h7 == dataReadyLookupVec_2_value ? datavalid_7 : _GEN_11396; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11398 = 4'h8 == dataReadyLookupVec_2_value ? datavalid_8 : _GEN_11397; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11399 = 4'h9 == dataReadyLookupVec_2_value ? datavalid_9 : _GEN_11398; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11400 = 4'ha == dataReadyLookupVec_2_value ? datavalid_10 : _GEN_11399; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11401 = 4'hb == dataReadyLookupVec_2_value ? datavalid_11 : _GEN_11400; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11403 = 4'h1 == dataReadyLookupVec_2_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11404 = 4'h2 == dataReadyLookupVec_2_value ? allocated_2 : _GEN_11403; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11405 = 4'h3 == dataReadyLookupVec_2_value ? allocated_3 : _GEN_11404; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11406 = 4'h4 == dataReadyLookupVec_2_value ? allocated_4 : _GEN_11405; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11407 = 4'h5 == dataReadyLookupVec_2_value ? allocated_5 : _GEN_11406; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11408 = 4'h6 == dataReadyLookupVec_2_value ? allocated_6 : _GEN_11407; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11409 = 4'h7 == dataReadyLookupVec_2_value ? allocated_7 : _GEN_11408; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11410 = 4'h8 == dataReadyLookupVec_2_value ? allocated_8 : _GEN_11409; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11411 = 4'h9 == dataReadyLookupVec_2_value ? allocated_9 : _GEN_11410; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11412 = 4'ha == dataReadyLookupVec_2_value ? allocated_10 : _GEN_11411; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11413 = 4'hb == dataReadyLookupVec_2_value ? allocated_11 : _GEN_11412; // @[StoreQueue.scala 263:{76,76}]
  wire [4:0] _dataReadyLookup_T_12 = {dataReadyLookupVec_2_flag,dataReadyLookupVec_2_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _dataReadyLookup_T_14 = _dataReadyLookup_T_12 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  dataReadyLookup_2 = _GEN_11413 & (_GEN_11389 | _GEN_11401) & _dataReadyLookup_T_14; // @[StoreQueue.scala 263:121]
  wire [3:0] dataReadyLookupVec_3_value = _dataReadyLookupVec_new_ptr_value_T_7[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  _GEN_11415 = 4'h1 == dataReadyLookupVec_3_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11416 = 4'h2 == dataReadyLookupVec_3_value ? mmio_2 : _GEN_11415; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11417 = 4'h3 == dataReadyLookupVec_3_value ? mmio_3 : _GEN_11416; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11418 = 4'h4 == dataReadyLookupVec_3_value ? mmio_4 : _GEN_11417; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11419 = 4'h5 == dataReadyLookupVec_3_value ? mmio_5 : _GEN_11418; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11420 = 4'h6 == dataReadyLookupVec_3_value ? mmio_6 : _GEN_11419; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11421 = 4'h7 == dataReadyLookupVec_3_value ? mmio_7 : _GEN_11420; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11422 = 4'h8 == dataReadyLookupVec_3_value ? mmio_8 : _GEN_11421; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11423 = 4'h9 == dataReadyLookupVec_3_value ? mmio_9 : _GEN_11422; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11424 = 4'ha == dataReadyLookupVec_3_value ? mmio_10 : _GEN_11423; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11425 = 4'hb == dataReadyLookupVec_3_value ? mmio_11 : _GEN_11424; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11427 = 4'h1 == dataReadyLookupVec_3_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11428 = 4'h2 == dataReadyLookupVec_3_value ? datavalid_2 : _GEN_11427; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11429 = 4'h3 == dataReadyLookupVec_3_value ? datavalid_3 : _GEN_11428; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11430 = 4'h4 == dataReadyLookupVec_3_value ? datavalid_4 : _GEN_11429; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11431 = 4'h5 == dataReadyLookupVec_3_value ? datavalid_5 : _GEN_11430; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11432 = 4'h6 == dataReadyLookupVec_3_value ? datavalid_6 : _GEN_11431; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11433 = 4'h7 == dataReadyLookupVec_3_value ? datavalid_7 : _GEN_11432; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11434 = 4'h8 == dataReadyLookupVec_3_value ? datavalid_8 : _GEN_11433; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11435 = 4'h9 == dataReadyLookupVec_3_value ? datavalid_9 : _GEN_11434; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11436 = 4'ha == dataReadyLookupVec_3_value ? datavalid_10 : _GEN_11435; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11437 = 4'hb == dataReadyLookupVec_3_value ? datavalid_11 : _GEN_11436; // @[StoreQueue.scala 263:{96,96}]
  wire  _GEN_11439 = 4'h1 == dataReadyLookupVec_3_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11440 = 4'h2 == dataReadyLookupVec_3_value ? allocated_2 : _GEN_11439; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11441 = 4'h3 == dataReadyLookupVec_3_value ? allocated_3 : _GEN_11440; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11442 = 4'h4 == dataReadyLookupVec_3_value ? allocated_4 : _GEN_11441; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11443 = 4'h5 == dataReadyLookupVec_3_value ? allocated_5 : _GEN_11442; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11444 = 4'h6 == dataReadyLookupVec_3_value ? allocated_6 : _GEN_11443; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11445 = 4'h7 == dataReadyLookupVec_3_value ? allocated_7 : _GEN_11444; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11446 = 4'h8 == dataReadyLookupVec_3_value ? allocated_8 : _GEN_11445; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11447 = 4'h9 == dataReadyLookupVec_3_value ? allocated_9 : _GEN_11446; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11448 = 4'ha == dataReadyLookupVec_3_value ? allocated_10 : _GEN_11447; // @[StoreQueue.scala 263:{76,76}]
  wire  _GEN_11449 = 4'hb == dataReadyLookupVec_3_value ? allocated_11 : _GEN_11448; // @[StoreQueue.scala 263:{76,76}]
  wire [4:0] _dataReadyLookup_T_17 = {dataReadyLookupVec_3_flag,dataReadyLookupVec_3_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _dataReadyLookup_T_19 = _dataReadyLookup_T_17 != _addrReadyLookup_T_3; // @[CircularQueuePtr.scala 63:47]
  wire  dataReadyLookup_3 = _GEN_11449 & (_GEN_11425 | _GEN_11437) & _dataReadyLookup_T_19; // @[StoreQueue.scala 263:121]
  wire  _nextDataReadyPtr_T = ~dataReadyLookup_0; // @[StoreQueue.scala 264:88]
  wire  _nextDataReadyPtr_T_1 = ~dataReadyLookup_1; // @[StoreQueue.scala 264:88]
  wire  _nextDataReadyPtr_T_2 = ~dataReadyLookup_2; // @[StoreQueue.scala 264:88]
  wire  _nextDataReadyPtr_T_3 = ~dataReadyLookup_3; // @[StoreQueue.scala 264:88]
  wire [2:0] _nextDataReadyPtr_T_4 = _nextDataReadyPtr_T_3 ? 3'h3 : 3'h4; // @[Mux.scala 47:70]
  wire [2:0] _nextDataReadyPtr_T_5 = _nextDataReadyPtr_T_2 ? 3'h2 : _nextDataReadyPtr_T_4; // @[Mux.scala 47:70]
  wire [2:0] _nextDataReadyPtr_T_6 = _nextDataReadyPtr_T_1 ? 3'h1 : _nextDataReadyPtr_T_5; // @[Mux.scala 47:70]
  wire [2:0] _nextDataReadyPtr_T_7 = _nextDataReadyPtr_T ? 3'h0 : _nextDataReadyPtr_T_6; // @[Mux.scala 47:70]
  wire [3:0] _GEN_15840 = {{1'd0}, _nextDataReadyPtr_T_7}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] nextDataReadyPtr_new_value = dataReadyPtrExt_value + _GEN_15840; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _nextDataReadyPtr_diff_T_1 = {1'h0,nextDataReadyPtr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] nextDataReadyPtr_diff = $signed(_nextDataReadyPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  nextDataReadyPtr_reverse_flag = $signed(nextDataReadyPtr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _nextDataReadyPtr_new_ptr_value_T = $signed(_nextDataReadyPtr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _nextDataReadyPtr_new_ptr_value_T_1 = nextDataReadyPtr_reverse_flag ? _nextDataReadyPtr_new_ptr_value_T :
    {{1'd0}, nextDataReadyPtr_new_value}; // @[CircularQueuePtr.scala 45:27]
  reg  io_stDataReadyVec_0_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_1_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_2_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_3_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_4_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_5_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_6_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_7_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_8_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_9_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_10_REG; // @[StoreQueue.scala 268:36]
  reg  io_stDataReadyVec_11_REG; // @[StoreQueue.scala 268:36]
  wire [3:0] nextDataReadyPtr_value = _nextDataReadyPtr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire  addr_valid = ~io_storeAddrIn_0_bits_miss; // @[StoreQueue.scala 304:24]
  wire  _GEN_11452 = 4'h0 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11100; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11453 = 4'h1 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11101; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11454 = 4'h2 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11102; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11455 = 4'h3 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11103; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11456 = 4'h4 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11104; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11457 = 4'h5 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11105; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11458 = 4'h6 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11106; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11459 = 4'h7 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11107; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11460 = 4'h8 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11108; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11461 = 4'h9 == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11109; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11462 = 4'ha == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11110; // @[StoreQueue.scala 305:{28,28}]
  wire  _GEN_11463 = 4'hb == io_storeAddrIn_0_bits_uop_sqIdx_value ? addr_valid : _GEN_11111; // @[StoreQueue.scala 305:{28,28}]
  wire [6:0] _GEN_11584 = 4'h0 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10452; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11585 = 4'h1 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10453; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11586 = 4'h2 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10454; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11587 = 4'h3 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10455; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11588 = 4'h4 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10456; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11589 = 4'h5 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10457; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11590 = 4'h6 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10458; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11591 = 4'h7 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10459; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11592 = 4'h8 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10460; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11593 = 4'h9 == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10461; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11594 = 4'ha == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10462; // @[StoreQueue.scala 324:{27,27}]
  wire [6:0] _GEN_11595 = 4'hb == io_storeAddrIn_0_bits_uop_sqIdx_value ? io_storeAddrIn_0_bits_uop_ctrl_fuOpType :
    _GEN_10463; // @[StoreQueue.scala 324:{27,27}]
  wire  _GEN_12028 = io_storeAddrIn_0_valid ? _GEN_11452 : _GEN_11100; // @[StoreQueue.scala 303:37]
  wire  _GEN_12029 = io_storeAddrIn_0_valid ? _GEN_11453 : _GEN_11101; // @[StoreQueue.scala 303:37]
  wire  _GEN_12030 = io_storeAddrIn_0_valid ? _GEN_11454 : _GEN_11102; // @[StoreQueue.scala 303:37]
  wire  _GEN_12031 = io_storeAddrIn_0_valid ? _GEN_11455 : _GEN_11103; // @[StoreQueue.scala 303:37]
  wire  _GEN_12032 = io_storeAddrIn_0_valid ? _GEN_11456 : _GEN_11104; // @[StoreQueue.scala 303:37]
  wire  _GEN_12033 = io_storeAddrIn_0_valid ? _GEN_11457 : _GEN_11105; // @[StoreQueue.scala 303:37]
  wire  _GEN_12034 = io_storeAddrIn_0_valid ? _GEN_11458 : _GEN_11106; // @[StoreQueue.scala 303:37]
  wire  _GEN_12035 = io_storeAddrIn_0_valid ? _GEN_11459 : _GEN_11107; // @[StoreQueue.scala 303:37]
  wire  _GEN_12036 = io_storeAddrIn_0_valid ? _GEN_11460 : _GEN_11108; // @[StoreQueue.scala 303:37]
  wire  _GEN_12037 = io_storeAddrIn_0_valid ? _GEN_11461 : _GEN_11109; // @[StoreQueue.scala 303:37]
  wire  _GEN_12038 = io_storeAddrIn_0_valid ? _GEN_11462 : _GEN_11110; // @[StoreQueue.scala 303:37]
  wire  _GEN_12039 = io_storeAddrIn_0_valid ? _GEN_11463 : _GEN_11111; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12166 = io_storeAddrIn_0_valid ? _GEN_11584 : _GEN_10452; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12167 = io_storeAddrIn_0_valid ? _GEN_11585 : _GEN_10453; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12168 = io_storeAddrIn_0_valid ? _GEN_11586 : _GEN_10454; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12169 = io_storeAddrIn_0_valid ? _GEN_11587 : _GEN_10455; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12170 = io_storeAddrIn_0_valid ? _GEN_11588 : _GEN_10456; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12171 = io_storeAddrIn_0_valid ? _GEN_11589 : _GEN_10457; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12172 = io_storeAddrIn_0_valid ? _GEN_11590 : _GEN_10458; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12173 = io_storeAddrIn_0_valid ? _GEN_11591 : _GEN_10459; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12174 = io_storeAddrIn_0_valid ? _GEN_11592 : _GEN_10460; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12175 = io_storeAddrIn_0_valid ? _GEN_11593 : _GEN_10461; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12176 = io_storeAddrIn_0_valid ? _GEN_11594 : _GEN_10462; // @[StoreQueue.scala 303:37]
  wire [6:0] _GEN_12177 = io_storeAddrIn_0_valid ? _GEN_11595 : _GEN_10463; // @[StoreQueue.scala 303:37]
  reg  storeAddrInFireReg; // @[StoreQueue.scala 337:37]
  reg [3:0] stWbIndexReg; // @[StoreQueue.scala 338:31]
  wire  _GEN_12610 = 4'h0 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11124; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12611 = 4'h1 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11125; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12612 = 4'h2 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11126; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12613 = 4'h3 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11127; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12614 = 4'h4 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11128; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12615 = 4'h5 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11129; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12616 = 4'h6 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11130; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12617 = 4'h7 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11131; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12618 = 4'h8 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11132; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12619 = 4'h9 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11133; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12620 = 4'ha == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11134; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12621 = 4'hb == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11135; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_12622 = 4'h0 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11148; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12623 = 4'h1 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11149; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12624 = 4'h2 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11150; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12625 = 4'h3 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11151; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12626 = 4'h4 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11152; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12627 = 4'h5 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11153; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12628 = 4'h6 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11154; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12629 = 4'h7 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11155; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12630 = 4'h8 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11156; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12631 = 4'h9 == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11157; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12632 = 4'ha == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11158; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12633 = 4'hb == stWbIndexReg ? io_storeAddrInRe_0_mmio : _GEN_11159; // @[StoreQueue.scala 341:{26,26}]
  wire  _GEN_12634 = 4'h0 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_0; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12635 = 4'h1 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_1; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12636 = 4'h2 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_2; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12637 = 4'h3 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_3; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12638 = 4'h4 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_4; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12639 = 4'h5 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_5; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12640 = 4'h6 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_6; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12641 = 4'h7 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_7; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12642 = 4'h8 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_8; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12643 = 4'h9 == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_9; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12644 = 4'ha == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_10; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12645 = 4'hb == stWbIndexReg ? io_storeAddrInRe_0_atomic : atomic_11; // @[StoreQueue.scala 136:19 342:{28,28}]
  wire  _GEN_12646 = storeAddrInFireReg ? _GEN_12610 : _GEN_11124; // @[StoreQueue.scala 339:31]
  wire  _GEN_12647 = storeAddrInFireReg ? _GEN_12611 : _GEN_11125; // @[StoreQueue.scala 339:31]
  wire  _GEN_12648 = storeAddrInFireReg ? _GEN_12612 : _GEN_11126; // @[StoreQueue.scala 339:31]
  wire  _GEN_12649 = storeAddrInFireReg ? _GEN_12613 : _GEN_11127; // @[StoreQueue.scala 339:31]
  wire  _GEN_12650 = storeAddrInFireReg ? _GEN_12614 : _GEN_11128; // @[StoreQueue.scala 339:31]
  wire  _GEN_12651 = storeAddrInFireReg ? _GEN_12615 : _GEN_11129; // @[StoreQueue.scala 339:31]
  wire  _GEN_12652 = storeAddrInFireReg ? _GEN_12616 : _GEN_11130; // @[StoreQueue.scala 339:31]
  wire  _GEN_12653 = storeAddrInFireReg ? _GEN_12617 : _GEN_11131; // @[StoreQueue.scala 339:31]
  wire  _GEN_12654 = storeAddrInFireReg ? _GEN_12618 : _GEN_11132; // @[StoreQueue.scala 339:31]
  wire  _GEN_12655 = storeAddrInFireReg ? _GEN_12619 : _GEN_11133; // @[StoreQueue.scala 339:31]
  wire  _GEN_12656 = storeAddrInFireReg ? _GEN_12620 : _GEN_11134; // @[StoreQueue.scala 339:31]
  wire  _GEN_12657 = storeAddrInFireReg ? _GEN_12621 : _GEN_11135; // @[StoreQueue.scala 339:31]
  wire  _GEN_12658 = storeAddrInFireReg ? _GEN_12622 : _GEN_11148; // @[StoreQueue.scala 339:31]
  wire  _GEN_12659 = storeAddrInFireReg ? _GEN_12623 : _GEN_11149; // @[StoreQueue.scala 339:31]
  wire  _GEN_12660 = storeAddrInFireReg ? _GEN_12624 : _GEN_11150; // @[StoreQueue.scala 339:31]
  wire  _GEN_12661 = storeAddrInFireReg ? _GEN_12625 : _GEN_11151; // @[StoreQueue.scala 339:31]
  wire  _GEN_12662 = storeAddrInFireReg ? _GEN_12626 : _GEN_11152; // @[StoreQueue.scala 339:31]
  wire  _GEN_12663 = storeAddrInFireReg ? _GEN_12627 : _GEN_11153; // @[StoreQueue.scala 339:31]
  wire  _GEN_12664 = storeAddrInFireReg ? _GEN_12628 : _GEN_11154; // @[StoreQueue.scala 339:31]
  wire  _GEN_12665 = storeAddrInFireReg ? _GEN_12629 : _GEN_11155; // @[StoreQueue.scala 339:31]
  wire  _GEN_12666 = storeAddrInFireReg ? _GEN_12630 : _GEN_11156; // @[StoreQueue.scala 339:31]
  wire  _GEN_12667 = storeAddrInFireReg ? _GEN_12631 : _GEN_11157; // @[StoreQueue.scala 339:31]
  wire  _GEN_12668 = storeAddrInFireReg ? _GEN_12632 : _GEN_11158; // @[StoreQueue.scala 339:31]
  wire  _GEN_12669 = storeAddrInFireReg ? _GEN_12633 : _GEN_11159; // @[StoreQueue.scala 339:31]
  wire  _GEN_12670 = storeAddrInFireReg ? _GEN_12634 : atomic_0; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12671 = storeAddrInFireReg ? _GEN_12635 : atomic_1; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12672 = storeAddrInFireReg ? _GEN_12636 : atomic_2; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12673 = storeAddrInFireReg ? _GEN_12637 : atomic_3; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12674 = storeAddrInFireReg ? _GEN_12638 : atomic_4; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12675 = storeAddrInFireReg ? _GEN_12639 : atomic_5; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12676 = storeAddrInFireReg ? _GEN_12640 : atomic_6; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12677 = storeAddrInFireReg ? _GEN_12641 : atomic_7; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12678 = storeAddrInFireReg ? _GEN_12642 : atomic_8; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12679 = storeAddrInFireReg ? _GEN_12643 : atomic_9; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12680 = storeAddrInFireReg ? _GEN_12644 : atomic_10; // @[StoreQueue.scala 136:19 339:31]
  wire  _GEN_12681 = storeAddrInFireReg ? _GEN_12645 : atomic_11; // @[StoreQueue.scala 136:19 339:31]
  wire  addr_valid_1 = ~io_storeAddrIn_1_bits_miss; // @[StoreQueue.scala 304:24]
  reg  storeAddrInFireReg_1; // @[StoreQueue.scala 337:37]
  reg [3:0] stWbIndexReg_1; // @[StoreQueue.scala 338:31]
  wire  _GEN_13888 = 4'h0 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12646; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13889 = 4'h1 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12647; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13890 = 4'h2 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12648; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13891 = 4'h3 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12649; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13892 = 4'h4 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12650; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13893 = 4'h5 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12651; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13894 = 4'h6 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12652; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13895 = 4'h7 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12653; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13896 = 4'h8 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12654; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13897 = 4'h9 == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12655; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13898 = 4'ha == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12656; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13899 = 4'hb == stWbIndexReg_1 ? io_storeAddrInRe_1_mmio : _GEN_12657; // @[StoreQueue.scala 340:{29,29}]
  wire  _GEN_13924 = storeAddrInFireReg_1 ? _GEN_13888 : _GEN_12646; // @[StoreQueue.scala 339:31]
  wire  _GEN_13925 = storeAddrInFireReg_1 ? _GEN_13889 : _GEN_12647; // @[StoreQueue.scala 339:31]
  wire  _GEN_13926 = storeAddrInFireReg_1 ? _GEN_13890 : _GEN_12648; // @[StoreQueue.scala 339:31]
  wire  _GEN_13927 = storeAddrInFireReg_1 ? _GEN_13891 : _GEN_12649; // @[StoreQueue.scala 339:31]
  wire  _GEN_13928 = storeAddrInFireReg_1 ? _GEN_13892 : _GEN_12650; // @[StoreQueue.scala 339:31]
  wire  _GEN_13929 = storeAddrInFireReg_1 ? _GEN_13893 : _GEN_12651; // @[StoreQueue.scala 339:31]
  wire  _GEN_13930 = storeAddrInFireReg_1 ? _GEN_13894 : _GEN_12652; // @[StoreQueue.scala 339:31]
  wire  _GEN_13931 = storeAddrInFireReg_1 ? _GEN_13895 : _GEN_12653; // @[StoreQueue.scala 339:31]
  wire  _GEN_13932 = storeAddrInFireReg_1 ? _GEN_13896 : _GEN_12654; // @[StoreQueue.scala 339:31]
  wire  _GEN_13933 = storeAddrInFireReg_1 ? _GEN_13897 : _GEN_12655; // @[StoreQueue.scala 339:31]
  wire  _GEN_13934 = storeAddrInFireReg_1 ? _GEN_13898 : _GEN_12656; // @[StoreQueue.scala 339:31]
  wire  _GEN_13935 = storeAddrInFireReg_1 ? _GEN_13899 : _GEN_12657; // @[StoreQueue.scala 339:31]
  wire [63:0] _dataModule_io_data_wdata_0_T_5 = {io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_0_T_6 = {io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],io_storeDataIn_0_bits_data[7:0],
    _dataModule_io_data_wdata_0_T_5}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_0_T_10 = {io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0],
    io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0],
    io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0],io_storeDataIn_0_bits_data[15:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_0_T_13 = {io_storeDataIn_0_bits_data[31:0],io_storeDataIn_0_bits_data[31:0],
    io_storeDataIn_0_bits_data[31:0],io_storeDataIn_0_bits_data[31:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_0_T_15 = {io_storeDataIn_0_bits_data,io_storeDataIn_0_bits_data}; // @[Cat.scala 31:58]
  wire  _dataModule_io_data_wdata_0_T_16 = 2'h0 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_0_T_17 = 2'h1 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_0_T_18 = 2'h2 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_0_T_19 = 2'h3 == io_storeDataIn_0_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [127:0] _dataModule_io_data_wdata_0_T_20 = _dataModule_io_data_wdata_0_T_16 ? _dataModule_io_data_wdata_0_T_6 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_21 = _dataModule_io_data_wdata_0_T_17 ? _dataModule_io_data_wdata_0_T_10 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_22 = _dataModule_io_data_wdata_0_T_18 ? _dataModule_io_data_wdata_0_T_13 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_23 = _dataModule_io_data_wdata_0_T_19 ? _dataModule_io_data_wdata_0_T_15 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_24 = _dataModule_io_data_wdata_0_T_20 | _dataModule_io_data_wdata_0_T_21; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_25 = _dataModule_io_data_wdata_0_T_24 | _dataModule_io_data_wdata_0_T_22; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_0_T_26 = _dataModule_io_data_wdata_0_T_25 | _dataModule_io_data_wdata_0_T_23; // @[Mux.scala 27:73]
  reg  REG_2; // @[StoreQueue.scala 382:14]
  reg [3:0] REG_3; // @[StoreQueue.scala 385:24]
  wire  _GEN_14035 = 4'h0 == REG_3 | _GEN_11088; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14036 = 4'h1 == REG_3 | _GEN_11089; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14037 = 4'h2 == REG_3 | _GEN_11090; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14038 = 4'h3 == REG_3 | _GEN_11091; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14039 = 4'h4 == REG_3 | _GEN_11092; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14040 = 4'h5 == REG_3 | _GEN_11093; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14041 = 4'h6 == REG_3 | _GEN_11094; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14042 = 4'h7 == REG_3 | _GEN_11095; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14043 = 4'h8 == REG_3 | _GEN_11096; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14044 = 4'h9 == REG_3 | _GEN_11097; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14045 = 4'ha == REG_3 | _GEN_11098; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14046 = 4'hb == REG_3 | _GEN_11099; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14047 = REG_2 ? _GEN_14035 : _GEN_11088; // @[StoreQueue.scala 384:7]
  wire  _GEN_14048 = REG_2 ? _GEN_14036 : _GEN_11089; // @[StoreQueue.scala 384:7]
  wire  _GEN_14049 = REG_2 ? _GEN_14037 : _GEN_11090; // @[StoreQueue.scala 384:7]
  wire  _GEN_14050 = REG_2 ? _GEN_14038 : _GEN_11091; // @[StoreQueue.scala 384:7]
  wire  _GEN_14051 = REG_2 ? _GEN_14039 : _GEN_11092; // @[StoreQueue.scala 384:7]
  wire  _GEN_14052 = REG_2 ? _GEN_14040 : _GEN_11093; // @[StoreQueue.scala 384:7]
  wire  _GEN_14053 = REG_2 ? _GEN_14041 : _GEN_11094; // @[StoreQueue.scala 384:7]
  wire  _GEN_14054 = REG_2 ? _GEN_14042 : _GEN_11095; // @[StoreQueue.scala 384:7]
  wire  _GEN_14055 = REG_2 ? _GEN_14043 : _GEN_11096; // @[StoreQueue.scala 384:7]
  wire  _GEN_14056 = REG_2 ? _GEN_14044 : _GEN_11097; // @[StoreQueue.scala 384:7]
  wire  _GEN_14057 = REG_2 ? _GEN_14045 : _GEN_11098; // @[StoreQueue.scala 384:7]
  wire  _GEN_14058 = REG_2 ? _GEN_14046 : _GEN_11099; // @[StoreQueue.scala 384:7]
  wire [63:0] _dataModule_io_data_wdata_1_T_5 = {io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_1_T_6 = {io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],io_storeDataIn_1_bits_data[7:0],
    _dataModule_io_data_wdata_1_T_5}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_1_T_10 = {io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0],
    io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0],
    io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0],io_storeDataIn_1_bits_data[15:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_1_T_13 = {io_storeDataIn_1_bits_data[31:0],io_storeDataIn_1_bits_data[31:0],
    io_storeDataIn_1_bits_data[31:0],io_storeDataIn_1_bits_data[31:0]}; // @[Cat.scala 31:58]
  wire [127:0] _dataModule_io_data_wdata_1_T_15 = {io_storeDataIn_1_bits_data,io_storeDataIn_1_bits_data}; // @[Cat.scala 31:58]
  wire  _dataModule_io_data_wdata_1_T_16 = 2'h0 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_1_T_17 = 2'h1 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_1_T_18 = 2'h2 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _dataModule_io_data_wdata_1_T_19 = 2'h3 == io_storeDataIn_1_bits_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [127:0] _dataModule_io_data_wdata_1_T_20 = _dataModule_io_data_wdata_1_T_16 ? _dataModule_io_data_wdata_1_T_6 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_21 = _dataModule_io_data_wdata_1_T_17 ? _dataModule_io_data_wdata_1_T_10 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_22 = _dataModule_io_data_wdata_1_T_18 ? _dataModule_io_data_wdata_1_T_13 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_23 = _dataModule_io_data_wdata_1_T_19 ? _dataModule_io_data_wdata_1_T_15 : 128'h0
    ; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_24 = _dataModule_io_data_wdata_1_T_20 | _dataModule_io_data_wdata_1_T_21; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_25 = _dataModule_io_data_wdata_1_T_24 | _dataModule_io_data_wdata_1_T_22; // @[Mux.scala 27:73]
  wire [127:0] _dataModule_io_data_wdata_1_T_26 = _dataModule_io_data_wdata_1_T_25 | _dataModule_io_data_wdata_1_T_23; // @[Mux.scala 27:73]
  reg  REG_4; // @[StoreQueue.scala 382:14]
  reg [3:0] REG_5; // @[StoreQueue.scala 385:24]
  wire  _GEN_14086 = 4'h0 == REG_5 | _GEN_14047; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14087 = 4'h1 == REG_5 | _GEN_14048; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14088 = 4'h2 == REG_5 | _GEN_14049; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14089 = 4'h3 == REG_5 | _GEN_14050; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14090 = 4'h4 == REG_5 | _GEN_14051; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14091 = 4'h5 == REG_5 | _GEN_14052; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14092 = 4'h6 == REG_5 | _GEN_14053; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14093 = 4'h7 == REG_5 | _GEN_14054; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14094 = 4'h8 == REG_5 | _GEN_14055; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14095 = 4'h9 == REG_5 | _GEN_14056; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14096 = 4'ha == REG_5 | _GEN_14057; // @[StoreQueue.scala 385:{37,37}]
  wire  _GEN_14097 = 4'hb == REG_5 | _GEN_14058; // @[StoreQueue.scala 385:{37,37}]
  wire  differentFlag = deqPtrExt_0_flag != io_forward_0_sqIdx_flag; // @[StoreQueue.scala 414:43]
  wire  addrValidVec__0 = addrvalid_0 & allocated_0; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__1 = addrvalid_1 & allocated_1; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__2 = addrvalid_2 & allocated_2; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__3 = addrvalid_3 & allocated_3; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__4 = addrvalid_4 & allocated_4; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__5 = addrvalid_5 & allocated_5; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__6 = addrvalid_6 & allocated_6; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__7 = addrvalid_7 & allocated_7; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__8 = addrvalid_8 & allocated_8; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__9 = addrvalid_9 & allocated_9; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__10 = addrvalid_10 & allocated_10; // @[StoreQueue.scala 417:88]
  wire  addrValidVec__11 = addrvalid_11 & allocated_11; // @[StoreQueue.scala 417:88]
  wire  allValidVec__0 = allvalid_0 & allocated_0; // @[StoreQueue.scala 419:104]
  wire  allValidVec__1 = allvalid_1 & allocated_1; // @[StoreQueue.scala 419:104]
  wire  allValidVec__2 = allvalid_2 & allocated_2; // @[StoreQueue.scala 419:104]
  wire  allValidVec__3 = allvalid_3 & allocated_3; // @[StoreQueue.scala 419:104]
  wire  allValidVec__4 = allvalid_4 & allocated_4; // @[StoreQueue.scala 419:104]
  wire  allValidVec__5 = allvalid_5 & allocated_5; // @[StoreQueue.scala 419:104]
  wire  allValidVec__6 = allvalid_6 & allocated_6; // @[StoreQueue.scala 419:104]
  wire  allValidVec__7 = allvalid_7 & allocated_7; // @[StoreQueue.scala 419:104]
  wire  allValidVec__8 = allvalid_8 & allocated_8; // @[StoreQueue.scala 419:104]
  wire  allValidVec__9 = allvalid_9 & allocated_9; // @[StoreQueue.scala 419:104]
  wire  allValidVec__10 = allvalid_10 & allocated_10; // @[StoreQueue.scala 419:104]
  wire  allValidVec__11 = allvalid_11 & allocated_11; // @[StoreQueue.scala 419:104]
  wire  storeSetHitVec__0 = uop_0_cf_storeSetHit & uop_0_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__1 = uop_1_cf_storeSetHit & uop_1_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__2 = uop_2_cf_storeSetHit & uop_2_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__3 = uop_3_cf_storeSetHit & uop_3_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__4 = uop_4_cf_storeSetHit & uop_4_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__5 = uop_5_cf_storeSetHit & uop_5_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__6 = uop_6_cf_storeSetHit & uop_6_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__7 = uop_7_cf_storeSetHit & uop_7_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__8 = uop_8_cf_storeSetHit & uop_8_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__9 = uop_9_cf_storeSetHit & uop_9_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__10 = uop_10_cf_storeSetHit & uop_10_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec__11 = uop_11_cf_storeSetHit & uop_11_cf_ssid == io_forward_0_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire [11:0] _forwardMask1_T = ~deqMask; // @[StoreQueue.scala 428:43]
  wire [11:0] _forwardMask1_T_1 = deqMask ^ io_forward_0_sqIdxMask; // @[StoreQueue.scala 428:61]
  wire [11:0] forwardMask1 = differentFlag ? _forwardMask1_T : _forwardMask1_T_1; // @[StoreQueue.scala 428:27]
  wire [11:0] forwardMask2 = differentFlag ? io_forward_0_sqIdxMask : 12'h0; // @[StoreQueue.scala 429:27]
  wire [5:0] canForward1_lo = {allValidVec__5,allValidVec__4,allValidVec__3,allValidVec__2,allValidVec__1,allValidVec__0
    }; // @[StoreQueue.scala 430:50]
  wire [11:0] _canForward1_T = {allValidVec__11,allValidVec__10,allValidVec__9,allValidVec__8,allValidVec__7,
    allValidVec__6,canForward1_lo}; // @[StoreQueue.scala 430:50]
  wire [11:0] canForward1 = forwardMask1 & _canForward1_T; // @[StoreQueue.scala 430:36]
  wire [11:0] canForward2 = forwardMask2 & _canForward1_T; // @[StoreQueue.scala 431:36]
  wire [11:0] _needForward_T_1 = _forwardMask1_T | io_forward_0_sqIdxMask; // @[StoreQueue.scala 432:51]
  wire [11:0] needForward = differentFlag ? _needForward_T_1 : _forwardMask1_T_1; // @[StoreQueue.scala 432:26]
  wire [5:0] dataModule_io_needForward_0_0_lo = {vaddrModule_io_forwardMmask_0_5,vaddrModule_io_forwardMmask_0_4,
    vaddrModule_io_forwardMmask_0_3,vaddrModule_io_forwardMmask_0_2,vaddrModule_io_forwardMmask_0_1,
    vaddrModule_io_forwardMmask_0_0}; // @[StoreQueue.scala 439:85]
  wire [5:0] dataModule_io_needForward_0_0_hi = {vaddrModule_io_forwardMmask_0_11,vaddrModule_io_forwardMmask_0_10,
    vaddrModule_io_forwardMmask_0_9,vaddrModule_io_forwardMmask_0_8,vaddrModule_io_forwardMmask_0_7,
    vaddrModule_io_forwardMmask_0_6}; // @[StoreQueue.scala 439:85]
  wire [11:0] _dataModule_io_needForward_0_0_T = {vaddrModule_io_forwardMmask_0_11,vaddrModule_io_forwardMmask_0_10,
    vaddrModule_io_forwardMmask_0_9,vaddrModule_io_forwardMmask_0_8,vaddrModule_io_forwardMmask_0_7,
    vaddrModule_io_forwardMmask_0_6,dataModule_io_needForward_0_0_lo}; // @[StoreQueue.scala 439:85]
  wire [5:0] vpmaskNotEqual_lo = {paddrModule_io_forwardMmask_0_5,paddrModule_io_forwardMmask_0_4,
    paddrModule_io_forwardMmask_0_3,paddrModule_io_forwardMmask_0_2,paddrModule_io_forwardMmask_0_1,
    paddrModule_io_forwardMmask_0_0}; // @[StoreQueue.scala 453:47]
  wire [5:0] vpmaskNotEqual_hi = {paddrModule_io_forwardMmask_0_11,paddrModule_io_forwardMmask_0_10,
    paddrModule_io_forwardMmask_0_9,paddrModule_io_forwardMmask_0_8,paddrModule_io_forwardMmask_0_7,
    paddrModule_io_forwardMmask_0_6}; // @[StoreQueue.scala 453:47]
  reg [11:0] vpmaskNotEqual_REG; // @[StoreQueue.scala 453:15]
  reg [11:0] vpmaskNotEqual_REG_1; // @[StoreQueue.scala 453:64]
  wire [11:0] _vpmaskNotEqual_T_2 = vpmaskNotEqual_REG ^ vpmaskNotEqual_REG_1; // @[StoreQueue.scala 453:55]
  reg [11:0] vpmaskNotEqual_REG_2; // @[StoreQueue.scala 454:14]
  wire [11:0] _vpmaskNotEqual_T_3 = _vpmaskNotEqual_T_2 & vpmaskNotEqual_REG_2; // @[StoreQueue.scala 453:105]
  wire [5:0] vpmaskNotEqual_lo_2 = {addrValidVec__5,addrValidVec__4,addrValidVec__3,addrValidVec__2,addrValidVec__1,
    addrValidVec__0}; // @[StoreQueue.scala 455:28]
  wire [5:0] vpmaskNotEqual_hi_2 = {addrValidVec__11,addrValidVec__10,addrValidVec__9,addrValidVec__8,addrValidVec__7,
    addrValidVec__6}; // @[StoreQueue.scala 455:28]
  wire [11:0] _vpmaskNotEqual_T_4 = {addrValidVec__11,addrValidVec__10,addrValidVec__9,addrValidVec__8,addrValidVec__7,
    addrValidVec__6,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 455:28]
  reg [11:0] vpmaskNotEqual_REG_3; // @[StoreQueue.scala 455:14]
  wire [11:0] _vpmaskNotEqual_T_5 = _vpmaskNotEqual_T_3 & vpmaskNotEqual_REG_3; // @[StoreQueue.scala 454:28]
  wire  vpmaskNotEqual = _vpmaskNotEqual_T_5 != 12'h0; // @[StoreQueue.scala 456:7]
  reg  vaddrMatchFailed_REG; // @[StoreQueue.scala 457:53]
  wire [5:0] dataInvalidMask1_lo_1 = {datavalid_5,datavalid_4,datavalid_3,datavalid_2,datavalid_1,datavalid_0}; // @[StoreQueue.scala 476:65]
  wire [11:0] _dataInvalidMask1_T_1 = {datavalid_11,datavalid_10,datavalid_9,datavalid_8,datavalid_7,datavalid_6,
    dataInvalidMask1_lo_1}; // @[StoreQueue.scala 476:65]
  wire [11:0] _dataInvalidMask1_T_2 = ~_dataInvalidMask1_T_1; // @[StoreQueue.scala 476:51]
  wire [11:0] _dataInvalidMask1_T_3 = _vpmaskNotEqual_T_4 & _dataInvalidMask1_T_2; // @[StoreQueue.scala 476:49]
  wire [11:0] _dataInvalidMask1_T_5 = _dataInvalidMask1_T_3 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 476:72]
  wire [11:0] dataInvalidMask1 = _dataInvalidMask1_T_5 & forwardMask1; // @[StoreQueue.scala 476:112]
  wire [11:0] dataInvalidMask2 = _dataInvalidMask1_T_5 & forwardMask2; // @[StoreQueue.scala 477:112]
  wire [11:0] dataInvalidMask = dataInvalidMask1 | dataInvalidMask2; // @[StoreQueue.scala 478:44]
  reg [11:0] dataInvalidMask1Reg_REG; // @[StoreQueue.scala 483:35]
  reg [11:0] dataInvalidMask2Reg_REG; // @[StoreQueue.scala 486:35]
  wire [11:0] dataInvalidMaskReg = dataInvalidMask1Reg_REG | dataInvalidMask2Reg_REG; // @[StoreQueue.scala 487:50]
  wire [11:0] _addrInvalidMask1_T_1 = ~_vpmaskNotEqual_T_4; // @[StoreQueue.scala 491:29]
  wire [5:0] addrInvalidMask1_lo_1 = {storeSetHitVec__5,storeSetHitVec__4,storeSetHitVec__3,storeSetHitVec__2,
    storeSetHitVec__1,storeSetHitVec__0}; // @[StoreQueue.scala 491:67]
  wire [11:0] _addrInvalidMask1_T_2 = {storeSetHitVec__11,storeSetHitVec__10,storeSetHitVec__9,storeSetHitVec__8,
    storeSetHitVec__7,storeSetHitVec__6,addrInvalidMask1_lo_1}; // @[StoreQueue.scala 491:67]
  wire [11:0] _addrInvalidMask1_T_3 = _addrInvalidMask1_T_1 & _addrInvalidMask1_T_2; // @[StoreQueue.scala 491:50]
  reg [11:0] addrInvalidMask1Reg_REG; // @[StoreQueue.scala 495:35]
  reg [11:0] addrInvalidMask2Reg_REG; // @[StoreQueue.scala 498:35]
  wire [11:0] addrInvalidMaskReg = addrInvalidMask1Reg_REG | addrInvalidMask2Reg_REG; // @[StoreQueue.scala 499:50]
  reg  io_forward_0_dataInvalid_REG; // @[StoreQueue.scala 502:41]
  reg  s2_differentFlag; // @[StoreQueue.scala 509:35]
  reg  s2_enqPtrExt_flag; // @[StoreQueue.scala 510:31]
  reg  s2_deqPtrExt_flag; // @[StoreQueue.scala 511:31]
  reg [3:0] s2_deqPtrExt_value; // @[StoreQueue.scala 511:31]
  wire  addrInvalidFlag = |addrInvalidMaskReg; // @[StoreQueue.scala 517:50]
  wire [11:0] _hasInvalidAddr_T_2 = _addrInvalidMask1_T_1 & needForward; // @[StoreQueue.scala 518:48]
  wire [7:0] _GEN_15865 = {{4'd0}, addrInvalidMask1Reg_REG[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_4 = _GEN_15865 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_6 = {addrInvalidMask1Reg_REG[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_8 = _addrInvalidSqIdx1_T_6 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_9 = _addrInvalidSqIdx1_T_4 | _addrInvalidSqIdx1_T_8; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15866 = {{2'd0}, _addrInvalidSqIdx1_T_9[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_14 = _GEN_15866 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_16 = {_addrInvalidSqIdx1_T_9[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_18 = _addrInvalidSqIdx1_T_16 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_19 = _addrInvalidSqIdx1_T_14 | _addrInvalidSqIdx1_T_18; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15867 = {{1'd0}, _addrInvalidSqIdx1_T_19[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_24 = _GEN_15867 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_26 = {_addrInvalidSqIdx1_T_19[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_28 = _addrInvalidSqIdx1_T_26 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_29 = _addrInvalidSqIdx1_T_24 | _addrInvalidSqIdx1_T_28; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx1_T_40 = {_addrInvalidSqIdx1_T_29,addrInvalidMask1Reg_REG[8],addrInvalidMask1Reg_REG[9],
    addrInvalidMask1Reg_REG[10],addrInvalidMask1Reg_REG[11]}; // @[Cat.scala 31:58]
  wire [11:0] _addrInvalidSqIdx1_T_53 = _addrInvalidSqIdx1_T_40[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_54 = _addrInvalidSqIdx1_T_40[10] ? 12'h400 : _addrInvalidSqIdx1_T_53; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_55 = _addrInvalidSqIdx1_T_40[9] ? 12'h200 : _addrInvalidSqIdx1_T_54; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_56 = _addrInvalidSqIdx1_T_40[8] ? 12'h100 : _addrInvalidSqIdx1_T_55; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_57 = _addrInvalidSqIdx1_T_40[7] ? 12'h80 : _addrInvalidSqIdx1_T_56; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_58 = _addrInvalidSqIdx1_T_40[6] ? 12'h40 : _addrInvalidSqIdx1_T_57; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_59 = _addrInvalidSqIdx1_T_40[5] ? 12'h20 : _addrInvalidSqIdx1_T_58; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_60 = _addrInvalidSqIdx1_T_40[4] ? 12'h10 : _addrInvalidSqIdx1_T_59; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_61 = _addrInvalidSqIdx1_T_40[3] ? 12'h8 : _addrInvalidSqIdx1_T_60; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_62 = _addrInvalidSqIdx1_T_40[2] ? 12'h4 : _addrInvalidSqIdx1_T_61; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_63 = _addrInvalidSqIdx1_T_40[1] ? 12'h2 : _addrInvalidSqIdx1_T_62; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_64 = _addrInvalidSqIdx1_T_40[0] ? 12'h1 : _addrInvalidSqIdx1_T_63; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15868 = {{4'd0}, _addrInvalidSqIdx1_T_64[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_69 = _GEN_15868 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_71 = {_addrInvalidSqIdx1_T_64[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_73 = _addrInvalidSqIdx1_T_71 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_74 = _addrInvalidSqIdx1_T_69 | _addrInvalidSqIdx1_T_73; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15869 = {{2'd0}, _addrInvalidSqIdx1_T_74[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_79 = _GEN_15869 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_81 = {_addrInvalidSqIdx1_T_74[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_83 = _addrInvalidSqIdx1_T_81 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_84 = _addrInvalidSqIdx1_T_79 | _addrInvalidSqIdx1_T_83; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15870 = {{1'd0}, _addrInvalidSqIdx1_T_84[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_89 = _GEN_15870 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_91 = {_addrInvalidSqIdx1_T_84[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_93 = _addrInvalidSqIdx1_T_91 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_94 = _addrInvalidSqIdx1_T_89 | _addrInvalidSqIdx1_T_93; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx1_T_105 = {_addrInvalidSqIdx1_T_94,_addrInvalidSqIdx1_T_64[8],_addrInvalidSqIdx1_T_64[9],
    _addrInvalidSqIdx1_T_64[10],_addrInvalidSqIdx1_T_64[11]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx1_hi = _addrInvalidSqIdx1_T_105[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] addrInvalidSqIdx1_lo = _addrInvalidSqIdx1_T_105[7:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_106 = |addrInvalidSqIdx1_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15871 = {{4'd0}, addrInvalidSqIdx1_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _addrInvalidSqIdx1_T_107 = _GEN_15871 | addrInvalidSqIdx1_lo; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx1_hi_1 = _addrInvalidSqIdx1_T_107[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] addrInvalidSqIdx1_lo_1 = _addrInvalidSqIdx1_T_107[3:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_108 = |addrInvalidSqIdx1_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _addrInvalidSqIdx1_T_109 = addrInvalidSqIdx1_hi_1 | addrInvalidSqIdx1_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] addrInvalidSqIdx1_hi_2 = _addrInvalidSqIdx1_T_109[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] addrInvalidSqIdx1_lo_2 = _addrInvalidSqIdx1_T_109[1:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_110 = |addrInvalidSqIdx1_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _addrInvalidSqIdx1_T_111 = addrInvalidSqIdx1_hi_2 | addrInvalidSqIdx1_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx1 = {_addrInvalidSqIdx1_T_106,_addrInvalidSqIdx1_T_108,_addrInvalidSqIdx1_T_110,
    _addrInvalidSqIdx1_T_111[1]}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_15872 = {{4'd0}, addrInvalidMask2Reg_REG[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_4 = _GEN_15872 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_6 = {addrInvalidMask2Reg_REG[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_8 = _addrInvalidSqIdx2_T_6 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_9 = _addrInvalidSqIdx2_T_4 | _addrInvalidSqIdx2_T_8; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15873 = {{2'd0}, _addrInvalidSqIdx2_T_9[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_14 = _GEN_15873 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_16 = {_addrInvalidSqIdx2_T_9[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_18 = _addrInvalidSqIdx2_T_16 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_19 = _addrInvalidSqIdx2_T_14 | _addrInvalidSqIdx2_T_18; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15874 = {{1'd0}, _addrInvalidSqIdx2_T_19[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_24 = _GEN_15874 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_26 = {_addrInvalidSqIdx2_T_19[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_28 = _addrInvalidSqIdx2_T_26 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_29 = _addrInvalidSqIdx2_T_24 | _addrInvalidSqIdx2_T_28; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx2_T_40 = {_addrInvalidSqIdx2_T_29,addrInvalidMask2Reg_REG[8],addrInvalidMask2Reg_REG[9],
    addrInvalidMask2Reg_REG[10],addrInvalidMask2Reg_REG[11]}; // @[Cat.scala 31:58]
  wire [11:0] _addrInvalidSqIdx2_T_53 = _addrInvalidSqIdx2_T_40[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_54 = _addrInvalidSqIdx2_T_40[10] ? 12'h400 : _addrInvalidSqIdx2_T_53; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_55 = _addrInvalidSqIdx2_T_40[9] ? 12'h200 : _addrInvalidSqIdx2_T_54; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_56 = _addrInvalidSqIdx2_T_40[8] ? 12'h100 : _addrInvalidSqIdx2_T_55; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_57 = _addrInvalidSqIdx2_T_40[7] ? 12'h80 : _addrInvalidSqIdx2_T_56; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_58 = _addrInvalidSqIdx2_T_40[6] ? 12'h40 : _addrInvalidSqIdx2_T_57; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_59 = _addrInvalidSqIdx2_T_40[5] ? 12'h20 : _addrInvalidSqIdx2_T_58; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_60 = _addrInvalidSqIdx2_T_40[4] ? 12'h10 : _addrInvalidSqIdx2_T_59; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_61 = _addrInvalidSqIdx2_T_40[3] ? 12'h8 : _addrInvalidSqIdx2_T_60; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_62 = _addrInvalidSqIdx2_T_40[2] ? 12'h4 : _addrInvalidSqIdx2_T_61; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_63 = _addrInvalidSqIdx2_T_40[1] ? 12'h2 : _addrInvalidSqIdx2_T_62; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_64 = _addrInvalidSqIdx2_T_40[0] ? 12'h1 : _addrInvalidSqIdx2_T_63; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15875 = {{4'd0}, _addrInvalidSqIdx2_T_64[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_69 = _GEN_15875 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_71 = {_addrInvalidSqIdx2_T_64[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_73 = _addrInvalidSqIdx2_T_71 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_74 = _addrInvalidSqIdx2_T_69 | _addrInvalidSqIdx2_T_73; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15876 = {{2'd0}, _addrInvalidSqIdx2_T_74[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_79 = _GEN_15876 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_81 = {_addrInvalidSqIdx2_T_74[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_83 = _addrInvalidSqIdx2_T_81 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_84 = _addrInvalidSqIdx2_T_79 | _addrInvalidSqIdx2_T_83; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15877 = {{1'd0}, _addrInvalidSqIdx2_T_84[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_89 = _GEN_15877 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_91 = {_addrInvalidSqIdx2_T_84[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_93 = _addrInvalidSqIdx2_T_91 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_94 = _addrInvalidSqIdx2_T_89 | _addrInvalidSqIdx2_T_93; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx2_T_105 = {_addrInvalidSqIdx2_T_94,_addrInvalidSqIdx2_T_64[8],_addrInvalidSqIdx2_T_64[9],
    _addrInvalidSqIdx2_T_64[10],_addrInvalidSqIdx2_T_64[11]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx2_hi = _addrInvalidSqIdx2_T_105[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] addrInvalidSqIdx2_lo = _addrInvalidSqIdx2_T_105[7:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_106 = |addrInvalidSqIdx2_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15878 = {{4'd0}, addrInvalidSqIdx2_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _addrInvalidSqIdx2_T_107 = _GEN_15878 | addrInvalidSqIdx2_lo; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx2_hi_1 = _addrInvalidSqIdx2_T_107[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] addrInvalidSqIdx2_lo_1 = _addrInvalidSqIdx2_T_107[3:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_108 = |addrInvalidSqIdx2_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _addrInvalidSqIdx2_T_109 = addrInvalidSqIdx2_hi_1 | addrInvalidSqIdx2_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] addrInvalidSqIdx2_hi_2 = _addrInvalidSqIdx2_T_109[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] addrInvalidSqIdx2_lo_2 = _addrInvalidSqIdx2_T_109[1:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_110 = |addrInvalidSqIdx2_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _addrInvalidSqIdx2_T_111 = addrInvalidSqIdx2_hi_2 | addrInvalidSqIdx2_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx2 = {_addrInvalidSqIdx2_T_106,_addrInvalidSqIdx2_T_108,_addrInvalidSqIdx2_T_110,
    _addrInvalidSqIdx2_T_111[1]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx = |addrInvalidMask2Reg_REG ? addrInvalidSqIdx2 : addrInvalidSqIdx1; // @[StoreQueue.scala 522:31]
  reg  REG_9; // @[StoreQueue.scala 546:18]
  wire [3:0] _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_T_1 = 4'hc - 4'h1; // @[CircularQueuePtr.scala 54:50]
  wire [4:0] io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_value = io_forward_0_uop_sqIdx_value +
    _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_diff_T_1 = {1'h0,
    io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_forward_0_addrInvalidSqIdx_flipped_new_ptr_diff = $signed(
    _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_forward_0_addrInvalidSqIdx_flipped_new_ptr_reverse_flag = $signed(
    io_forward_0_addrInvalidSqIdx_flipped_new_ptr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  io_forward_0_addrInvalidSqIdx_flipped_new_ptr_flag = io_forward_0_addrInvalidSqIdx_flipped_new_ptr_reverse_flag
     ? ~io_forward_0_uop_sqIdx_flag : io_forward_0_uop_sqIdx_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T = $signed(
    _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T_1 =
    io_forward_0_addrInvalidSqIdx_flipped_new_ptr_reverse_flag ?
    _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T : {{1'd0},
    io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 45:27]
  reg  io_forward_0_addrInvalidSqIdx_REG_flag; // @[StoreQueue.scala 547:48]
  reg [3:0] io_forward_0_addrInvalidSqIdx_REG_value; // @[StoreQueue.scala 547:48]
  wire  _io_forward_0_addrInvalidSqIdx_flag_T = ~s2_differentFlag; // @[StoreQueue.scala 549:50]
  wire  _io_forward_0_addrInvalidSqIdx_flag_T_3 = ~s2_differentFlag | addrInvalidSqIdx >= s2_deqPtrExt_value ?
    s2_deqPtrExt_flag : s2_enqPtrExt_flag; // @[StoreQueue.scala 549:49]
  reg  io_forward_0_addrInvalidSqIdx_REG_1_flag; // @[StoreQueue.scala 553:48]
  reg [3:0] io_forward_0_addrInvalidSqIdx_REG_1_value; // @[StoreQueue.scala 553:48]
  wire  _GEN_14116 = addrInvalidFlag ? _io_forward_0_addrInvalidSqIdx_flag_T_3 :
    io_forward_0_addrInvalidSqIdx_REG_1_flag; // @[StoreQueue.scala 548:35 549:43 553:38]
  wire [3:0] _GEN_14117 = addrInvalidFlag ? addrInvalidSqIdx : io_forward_0_addrInvalidSqIdx_REG_1_value; // @[StoreQueue.scala 548:35 550:44 553:38]
  reg  io_forward_0_addrInvalid_REG; // @[StoreQueue.scala 555:45]
  reg  io_forward_0_addrInvalid_REG_1; // @[StoreQueue.scala 555:91]
  wire  dataInvalidFlag = |dataInvalidMaskReg; // @[StoreQueue.scala 561:50]
  wire [7:0] _GEN_15879 = {{4'd0}, dataInvalidMask1Reg_REG[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_4 = _GEN_15879 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_6 = {dataInvalidMask1Reg_REG[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_8 = _dataInvalidSqIdx1_T_6 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_9 = _dataInvalidSqIdx1_T_4 | _dataInvalidSqIdx1_T_8; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15880 = {{2'd0}, _dataInvalidSqIdx1_T_9[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_14 = _GEN_15880 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_16 = {_dataInvalidSqIdx1_T_9[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_18 = _dataInvalidSqIdx1_T_16 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_19 = _dataInvalidSqIdx1_T_14 | _dataInvalidSqIdx1_T_18; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15881 = {{1'd0}, _dataInvalidSqIdx1_T_19[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_24 = _GEN_15881 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_26 = {_dataInvalidSqIdx1_T_19[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_28 = _dataInvalidSqIdx1_T_26 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_29 = _dataInvalidSqIdx1_T_24 | _dataInvalidSqIdx1_T_28; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx1_T_40 = {_dataInvalidSqIdx1_T_29,dataInvalidMask1Reg_REG[8],dataInvalidMask1Reg_REG[9],
    dataInvalidMask1Reg_REG[10],dataInvalidMask1Reg_REG[11]}; // @[Cat.scala 31:58]
  wire [11:0] _dataInvalidSqIdx1_T_53 = _dataInvalidSqIdx1_T_40[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_54 = _dataInvalidSqIdx1_T_40[10] ? 12'h400 : _dataInvalidSqIdx1_T_53; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_55 = _dataInvalidSqIdx1_T_40[9] ? 12'h200 : _dataInvalidSqIdx1_T_54; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_56 = _dataInvalidSqIdx1_T_40[8] ? 12'h100 : _dataInvalidSqIdx1_T_55; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_57 = _dataInvalidSqIdx1_T_40[7] ? 12'h80 : _dataInvalidSqIdx1_T_56; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_58 = _dataInvalidSqIdx1_T_40[6] ? 12'h40 : _dataInvalidSqIdx1_T_57; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_59 = _dataInvalidSqIdx1_T_40[5] ? 12'h20 : _dataInvalidSqIdx1_T_58; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_60 = _dataInvalidSqIdx1_T_40[4] ? 12'h10 : _dataInvalidSqIdx1_T_59; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_61 = _dataInvalidSqIdx1_T_40[3] ? 12'h8 : _dataInvalidSqIdx1_T_60; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_62 = _dataInvalidSqIdx1_T_40[2] ? 12'h4 : _dataInvalidSqIdx1_T_61; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_63 = _dataInvalidSqIdx1_T_40[1] ? 12'h2 : _dataInvalidSqIdx1_T_62; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_64 = _dataInvalidSqIdx1_T_40[0] ? 12'h1 : _dataInvalidSqIdx1_T_63; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15882 = {{4'd0}, _dataInvalidSqIdx1_T_64[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_69 = _GEN_15882 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_71 = {_dataInvalidSqIdx1_T_64[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_73 = _dataInvalidSqIdx1_T_71 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_74 = _dataInvalidSqIdx1_T_69 | _dataInvalidSqIdx1_T_73; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15883 = {{2'd0}, _dataInvalidSqIdx1_T_74[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_79 = _GEN_15883 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_81 = {_dataInvalidSqIdx1_T_74[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_83 = _dataInvalidSqIdx1_T_81 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_84 = _dataInvalidSqIdx1_T_79 | _dataInvalidSqIdx1_T_83; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15884 = {{1'd0}, _dataInvalidSqIdx1_T_84[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_89 = _GEN_15884 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_91 = {_dataInvalidSqIdx1_T_84[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_93 = _dataInvalidSqIdx1_T_91 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_94 = _dataInvalidSqIdx1_T_89 | _dataInvalidSqIdx1_T_93; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx1_T_105 = {_dataInvalidSqIdx1_T_94,_dataInvalidSqIdx1_T_64[8],_dataInvalidSqIdx1_T_64[9],
    _dataInvalidSqIdx1_T_64[10],_dataInvalidSqIdx1_T_64[11]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx1_hi = _dataInvalidSqIdx1_T_105[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] dataInvalidSqIdx1_lo = _dataInvalidSqIdx1_T_105[7:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_106 = |dataInvalidSqIdx1_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15885 = {{4'd0}, dataInvalidSqIdx1_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _dataInvalidSqIdx1_T_107 = _GEN_15885 | dataInvalidSqIdx1_lo; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx1_hi_1 = _dataInvalidSqIdx1_T_107[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] dataInvalidSqIdx1_lo_1 = _dataInvalidSqIdx1_T_107[3:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_108 = |dataInvalidSqIdx1_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _dataInvalidSqIdx1_T_109 = dataInvalidSqIdx1_hi_1 | dataInvalidSqIdx1_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] dataInvalidSqIdx1_hi_2 = _dataInvalidSqIdx1_T_109[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] dataInvalidSqIdx1_lo_2 = _dataInvalidSqIdx1_T_109[1:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_110 = |dataInvalidSqIdx1_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _dataInvalidSqIdx1_T_111 = dataInvalidSqIdx1_hi_2 | dataInvalidSqIdx1_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx1 = {_dataInvalidSqIdx1_T_106,_dataInvalidSqIdx1_T_108,_dataInvalidSqIdx1_T_110,
    _dataInvalidSqIdx1_T_111[1]}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_15886 = {{4'd0}, dataInvalidMask2Reg_REG[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_4 = _GEN_15886 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_6 = {dataInvalidMask2Reg_REG[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_8 = _dataInvalidSqIdx2_T_6 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_9 = _dataInvalidSqIdx2_T_4 | _dataInvalidSqIdx2_T_8; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15887 = {{2'd0}, _dataInvalidSqIdx2_T_9[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_14 = _GEN_15887 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_16 = {_dataInvalidSqIdx2_T_9[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_18 = _dataInvalidSqIdx2_T_16 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_19 = _dataInvalidSqIdx2_T_14 | _dataInvalidSqIdx2_T_18; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15888 = {{1'd0}, _dataInvalidSqIdx2_T_19[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_24 = _GEN_15888 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_26 = {_dataInvalidSqIdx2_T_19[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_28 = _dataInvalidSqIdx2_T_26 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_29 = _dataInvalidSqIdx2_T_24 | _dataInvalidSqIdx2_T_28; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx2_T_40 = {_dataInvalidSqIdx2_T_29,dataInvalidMask2Reg_REG[8],dataInvalidMask2Reg_REG[9],
    dataInvalidMask2Reg_REG[10],dataInvalidMask2Reg_REG[11]}; // @[Cat.scala 31:58]
  wire [11:0] _dataInvalidSqIdx2_T_53 = _dataInvalidSqIdx2_T_40[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_54 = _dataInvalidSqIdx2_T_40[10] ? 12'h400 : _dataInvalidSqIdx2_T_53; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_55 = _dataInvalidSqIdx2_T_40[9] ? 12'h200 : _dataInvalidSqIdx2_T_54; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_56 = _dataInvalidSqIdx2_T_40[8] ? 12'h100 : _dataInvalidSqIdx2_T_55; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_57 = _dataInvalidSqIdx2_T_40[7] ? 12'h80 : _dataInvalidSqIdx2_T_56; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_58 = _dataInvalidSqIdx2_T_40[6] ? 12'h40 : _dataInvalidSqIdx2_T_57; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_59 = _dataInvalidSqIdx2_T_40[5] ? 12'h20 : _dataInvalidSqIdx2_T_58; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_60 = _dataInvalidSqIdx2_T_40[4] ? 12'h10 : _dataInvalidSqIdx2_T_59; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_61 = _dataInvalidSqIdx2_T_40[3] ? 12'h8 : _dataInvalidSqIdx2_T_60; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_62 = _dataInvalidSqIdx2_T_40[2] ? 12'h4 : _dataInvalidSqIdx2_T_61; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_63 = _dataInvalidSqIdx2_T_40[1] ? 12'h2 : _dataInvalidSqIdx2_T_62; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_64 = _dataInvalidSqIdx2_T_40[0] ? 12'h1 : _dataInvalidSqIdx2_T_63; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15889 = {{4'd0}, _dataInvalidSqIdx2_T_64[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_69 = _GEN_15889 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_71 = {_dataInvalidSqIdx2_T_64[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_73 = _dataInvalidSqIdx2_T_71 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_74 = _dataInvalidSqIdx2_T_69 | _dataInvalidSqIdx2_T_73; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15890 = {{2'd0}, _dataInvalidSqIdx2_T_74[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_79 = _GEN_15890 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_81 = {_dataInvalidSqIdx2_T_74[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_83 = _dataInvalidSqIdx2_T_81 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_84 = _dataInvalidSqIdx2_T_79 | _dataInvalidSqIdx2_T_83; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15891 = {{1'd0}, _dataInvalidSqIdx2_T_84[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_89 = _GEN_15891 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_91 = {_dataInvalidSqIdx2_T_84[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_93 = _dataInvalidSqIdx2_T_91 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_94 = _dataInvalidSqIdx2_T_89 | _dataInvalidSqIdx2_T_93; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx2_T_105 = {_dataInvalidSqIdx2_T_94,_dataInvalidSqIdx2_T_64[8],_dataInvalidSqIdx2_T_64[9],
    _dataInvalidSqIdx2_T_64[10],_dataInvalidSqIdx2_T_64[11]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx2_hi = _dataInvalidSqIdx2_T_105[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] dataInvalidSqIdx2_lo = _dataInvalidSqIdx2_T_105[7:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_106 = |dataInvalidSqIdx2_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15892 = {{4'd0}, dataInvalidSqIdx2_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _dataInvalidSqIdx2_T_107 = _GEN_15892 | dataInvalidSqIdx2_lo; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx2_hi_1 = _dataInvalidSqIdx2_T_107[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] dataInvalidSqIdx2_lo_1 = _dataInvalidSqIdx2_T_107[3:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_108 = |dataInvalidSqIdx2_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _dataInvalidSqIdx2_T_109 = dataInvalidSqIdx2_hi_1 | dataInvalidSqIdx2_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] dataInvalidSqIdx2_hi_2 = _dataInvalidSqIdx2_T_109[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] dataInvalidSqIdx2_lo_2 = _dataInvalidSqIdx2_T_109[1:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_110 = |dataInvalidSqIdx2_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _dataInvalidSqIdx2_T_111 = dataInvalidSqIdx2_hi_2 | dataInvalidSqIdx2_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx2 = {_dataInvalidSqIdx2_T_106,_dataInvalidSqIdx2_T_108,_dataInvalidSqIdx2_T_110,
    _dataInvalidSqIdx2_T_111[1]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx = |dataInvalidMask2Reg_REG ? dataInvalidSqIdx2 : dataInvalidSqIdx1; // @[StoreQueue.scala 565:31]
  wire  _io_forward_0_dataInvalidSqIdx_flag_T_3 = _io_forward_0_addrInvalidSqIdx_flag_T | dataInvalidSqIdx >=
    s2_deqPtrExt_value ? s2_deqPtrExt_flag : s2_enqPtrExt_flag; // @[StoreQueue.scala 568:49]
  reg  io_forward_0_dataInvalidSqIdx_REG_flag; // @[StoreQueue.scala 572:48]
  reg [3:0] io_forward_0_dataInvalidSqIdx_REG_value; // @[StoreQueue.scala 572:48]
  wire  differentFlag_1 = deqPtrExt_0_flag != io_forward_1_sqIdx_flag; // @[StoreQueue.scala 414:43]
  wire  storeSetHitVec_1_0 = uop_0_cf_storeSetHit & uop_0_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_1 = uop_1_cf_storeSetHit & uop_1_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_2 = uop_2_cf_storeSetHit & uop_2_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_3 = uop_3_cf_storeSetHit & uop_3_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_4 = uop_4_cf_storeSetHit & uop_4_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_5 = uop_5_cf_storeSetHit & uop_5_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_6 = uop_6_cf_storeSetHit & uop_6_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_7 = uop_7_cf_storeSetHit & uop_7_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_8 = uop_8_cf_storeSetHit & uop_8_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_9 = uop_9_cf_storeSetHit & uop_9_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_10 = uop_10_cf_storeSetHit & uop_10_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire  storeSetHitVec_1_11 = uop_11_cf_storeSetHit & uop_11_cf_ssid == io_forward_1_uop_cf_ssid; // @[StoreQueue.scala 425:82]
  wire [11:0] _forwardMask1_T_3 = deqMask ^ io_forward_1_sqIdxMask; // @[StoreQueue.scala 428:61]
  wire [11:0] forwardMask1_1 = differentFlag_1 ? _forwardMask1_T : _forwardMask1_T_3; // @[StoreQueue.scala 428:27]
  wire [11:0] forwardMask2_1 = differentFlag_1 ? io_forward_1_sqIdxMask : 12'h0; // @[StoreQueue.scala 429:27]
  wire [11:0] canForward1_1 = forwardMask1_1 & _canForward1_T; // @[StoreQueue.scala 430:36]
  wire [11:0] canForward2_1 = forwardMask2_1 & _canForward1_T; // @[StoreQueue.scala 431:36]
  wire [11:0] _needForward_T_4 = _forwardMask1_T | io_forward_1_sqIdxMask; // @[StoreQueue.scala 432:51]
  wire [11:0] needForward_1 = differentFlag_1 ? _needForward_T_4 : _forwardMask1_T_3; // @[StoreQueue.scala 432:26]
  wire [5:0] dataModule_io_needForward_1_0_lo = {vaddrModule_io_forwardMmask_1_5,vaddrModule_io_forwardMmask_1_4,
    vaddrModule_io_forwardMmask_1_3,vaddrModule_io_forwardMmask_1_2,vaddrModule_io_forwardMmask_1_1,
    vaddrModule_io_forwardMmask_1_0}; // @[StoreQueue.scala 439:85]
  wire [5:0] dataModule_io_needForward_1_0_hi = {vaddrModule_io_forwardMmask_1_11,vaddrModule_io_forwardMmask_1_10,
    vaddrModule_io_forwardMmask_1_9,vaddrModule_io_forwardMmask_1_8,vaddrModule_io_forwardMmask_1_7,
    vaddrModule_io_forwardMmask_1_6}; // @[StoreQueue.scala 439:85]
  wire [11:0] _dataModule_io_needForward_1_0_T = {vaddrModule_io_forwardMmask_1_11,vaddrModule_io_forwardMmask_1_10,
    vaddrModule_io_forwardMmask_1_9,vaddrModule_io_forwardMmask_1_8,vaddrModule_io_forwardMmask_1_7,
    vaddrModule_io_forwardMmask_1_6,dataModule_io_needForward_1_0_lo}; // @[StoreQueue.scala 439:85]
  wire [5:0] vpmaskNotEqual_lo_3 = {paddrModule_io_forwardMmask_1_5,paddrModule_io_forwardMmask_1_4,
    paddrModule_io_forwardMmask_1_3,paddrModule_io_forwardMmask_1_2,paddrModule_io_forwardMmask_1_1,
    paddrModule_io_forwardMmask_1_0}; // @[StoreQueue.scala 453:47]
  wire [5:0] vpmaskNotEqual_hi_3 = {paddrModule_io_forwardMmask_1_11,paddrModule_io_forwardMmask_1_10,
    paddrModule_io_forwardMmask_1_9,paddrModule_io_forwardMmask_1_8,paddrModule_io_forwardMmask_1_7,
    paddrModule_io_forwardMmask_1_6}; // @[StoreQueue.scala 453:47]
  reg [11:0] vpmaskNotEqual_REG_4; // @[StoreQueue.scala 453:15]
  reg [11:0] vpmaskNotEqual_REG_5; // @[StoreQueue.scala 453:64]
  wire [11:0] _vpmaskNotEqual_T_8 = vpmaskNotEqual_REG_4 ^ vpmaskNotEqual_REG_5; // @[StoreQueue.scala 453:55]
  reg [11:0] vpmaskNotEqual_REG_6; // @[StoreQueue.scala 454:14]
  wire [11:0] _vpmaskNotEqual_T_9 = _vpmaskNotEqual_T_8 & vpmaskNotEqual_REG_6; // @[StoreQueue.scala 453:105]
  reg [11:0] vpmaskNotEqual_REG_7; // @[StoreQueue.scala 455:14]
  wire [11:0] _vpmaskNotEqual_T_11 = _vpmaskNotEqual_T_9 & vpmaskNotEqual_REG_7; // @[StoreQueue.scala 454:28]
  wire  vpmaskNotEqual_1 = _vpmaskNotEqual_T_11 != 12'h0; // @[StoreQueue.scala 456:7]
  reg  vaddrMatchFailed_REG_1; // @[StoreQueue.scala 457:53]
  wire [11:0] _dataInvalidMask1_T_11 = _dataInvalidMask1_T_3 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 476:72]
  wire [11:0] dataInvalidMask1_1 = _dataInvalidMask1_T_11 & forwardMask1_1; // @[StoreQueue.scala 476:112]
  wire [11:0] dataInvalidMask2_1 = _dataInvalidMask1_T_11 & forwardMask2_1; // @[StoreQueue.scala 477:112]
  wire [11:0] dataInvalidMask_1 = dataInvalidMask1_1 | dataInvalidMask2_1; // @[StoreQueue.scala 478:44]
  reg [11:0] dataInvalidMask1Reg_REG_1; // @[StoreQueue.scala 483:35]
  reg [11:0] dataInvalidMask2Reg_REG_1; // @[StoreQueue.scala 486:35]
  wire [11:0] dataInvalidMaskReg_1 = dataInvalidMask1Reg_REG_1 | dataInvalidMask2Reg_REG_1; // @[StoreQueue.scala 487:50]
  wire [5:0] addrInvalidMask1_lo_3 = {storeSetHitVec_1_5,storeSetHitVec_1_4,storeSetHitVec_1_3,storeSetHitVec_1_2,
    storeSetHitVec_1_1,storeSetHitVec_1_0}; // @[StoreQueue.scala 491:67]
  wire [11:0] _addrInvalidMask1_T_6 = {storeSetHitVec_1_11,storeSetHitVec_1_10,storeSetHitVec_1_9,storeSetHitVec_1_8,
    storeSetHitVec_1_7,storeSetHitVec_1_6,addrInvalidMask1_lo_3}; // @[StoreQueue.scala 491:67]
  wire [11:0] _addrInvalidMask1_T_7 = _addrInvalidMask1_T_1 & _addrInvalidMask1_T_6; // @[StoreQueue.scala 491:50]
  reg [11:0] addrInvalidMask1Reg_REG_1; // @[StoreQueue.scala 495:35]
  reg [11:0] addrInvalidMask2Reg_REG_1; // @[StoreQueue.scala 498:35]
  wire [11:0] addrInvalidMaskReg_1 = addrInvalidMask1Reg_REG_1 | addrInvalidMask2Reg_REG_1; // @[StoreQueue.scala 499:50]
  reg  io_forward_1_dataInvalid_REG; // @[StoreQueue.scala 502:41]
  reg  s2_differentFlag_1; // @[StoreQueue.scala 509:35]
  reg  s2_enqPtrExt_1_flag; // @[StoreQueue.scala 510:31]
  reg  s2_deqPtrExt_1_flag; // @[StoreQueue.scala 511:31]
  reg [3:0] s2_deqPtrExt_1_value; // @[StoreQueue.scala 511:31]
  wire  addrInvalidFlag_1 = |addrInvalidMaskReg_1; // @[StoreQueue.scala 517:50]
  wire [11:0] _hasInvalidAddr_T_5 = _addrInvalidMask1_T_1 & needForward_1; // @[StoreQueue.scala 518:48]
  wire [7:0] _GEN_15893 = {{4'd0}, addrInvalidMask1Reg_REG_1[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_119 = _GEN_15893 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_121 = {addrInvalidMask1Reg_REG_1[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_123 = _addrInvalidSqIdx1_T_121 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_124 = _addrInvalidSqIdx1_T_119 | _addrInvalidSqIdx1_T_123; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15894 = {{2'd0}, _addrInvalidSqIdx1_T_124[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_129 = _GEN_15894 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_131 = {_addrInvalidSqIdx1_T_124[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_133 = _addrInvalidSqIdx1_T_131 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_134 = _addrInvalidSqIdx1_T_129 | _addrInvalidSqIdx1_T_133; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15895 = {{1'd0}, _addrInvalidSqIdx1_T_134[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_139 = _GEN_15895 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_141 = {_addrInvalidSqIdx1_T_134[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_143 = _addrInvalidSqIdx1_T_141 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_144 = _addrInvalidSqIdx1_T_139 | _addrInvalidSqIdx1_T_143; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx1_T_155 = {_addrInvalidSqIdx1_T_144,addrInvalidMask1Reg_REG_1[8],
    addrInvalidMask1Reg_REG_1[9],addrInvalidMask1Reg_REG_1[10],addrInvalidMask1Reg_REG_1[11]}; // @[Cat.scala 31:58]
  wire [11:0] _addrInvalidSqIdx1_T_168 = _addrInvalidSqIdx1_T_155[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_169 = _addrInvalidSqIdx1_T_155[10] ? 12'h400 : _addrInvalidSqIdx1_T_168; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_170 = _addrInvalidSqIdx1_T_155[9] ? 12'h200 : _addrInvalidSqIdx1_T_169; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_171 = _addrInvalidSqIdx1_T_155[8] ? 12'h100 : _addrInvalidSqIdx1_T_170; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_172 = _addrInvalidSqIdx1_T_155[7] ? 12'h80 : _addrInvalidSqIdx1_T_171; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_173 = _addrInvalidSqIdx1_T_155[6] ? 12'h40 : _addrInvalidSqIdx1_T_172; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_174 = _addrInvalidSqIdx1_T_155[5] ? 12'h20 : _addrInvalidSqIdx1_T_173; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_175 = _addrInvalidSqIdx1_T_155[4] ? 12'h10 : _addrInvalidSqIdx1_T_174; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_176 = _addrInvalidSqIdx1_T_155[3] ? 12'h8 : _addrInvalidSqIdx1_T_175; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_177 = _addrInvalidSqIdx1_T_155[2] ? 12'h4 : _addrInvalidSqIdx1_T_176; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_178 = _addrInvalidSqIdx1_T_155[1] ? 12'h2 : _addrInvalidSqIdx1_T_177; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx1_T_179 = _addrInvalidSqIdx1_T_155[0] ? 12'h1 : _addrInvalidSqIdx1_T_178; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15896 = {{4'd0}, _addrInvalidSqIdx1_T_179[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_184 = _GEN_15896 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_186 = {_addrInvalidSqIdx1_T_179[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_188 = _addrInvalidSqIdx1_T_186 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_189 = _addrInvalidSqIdx1_T_184 | _addrInvalidSqIdx1_T_188; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15897 = {{2'd0}, _addrInvalidSqIdx1_T_189[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_194 = _GEN_15897 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_196 = {_addrInvalidSqIdx1_T_189[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_198 = _addrInvalidSqIdx1_T_196 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_199 = _addrInvalidSqIdx1_T_194 | _addrInvalidSqIdx1_T_198; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15898 = {{1'd0}, _addrInvalidSqIdx1_T_199[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_204 = _GEN_15898 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx1_T_206 = {_addrInvalidSqIdx1_T_199[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx1_T_208 = _addrInvalidSqIdx1_T_206 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx1_T_209 = _addrInvalidSqIdx1_T_204 | _addrInvalidSqIdx1_T_208; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx1_T_220 = {_addrInvalidSqIdx1_T_209,_addrInvalidSqIdx1_T_179[8],_addrInvalidSqIdx1_T_179[
    9],_addrInvalidSqIdx1_T_179[10],_addrInvalidSqIdx1_T_179[11]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx1_hi_3 = _addrInvalidSqIdx1_T_220[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] addrInvalidSqIdx1_lo_3 = _addrInvalidSqIdx1_T_220[7:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_221 = |addrInvalidSqIdx1_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15899 = {{4'd0}, addrInvalidSqIdx1_hi_3}; // @[OneHot.scala 32:28]
  wire [7:0] _addrInvalidSqIdx1_T_222 = _GEN_15899 | addrInvalidSqIdx1_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx1_hi_4 = _addrInvalidSqIdx1_T_222[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] addrInvalidSqIdx1_lo_4 = _addrInvalidSqIdx1_T_222[3:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_223 = |addrInvalidSqIdx1_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _addrInvalidSqIdx1_T_224 = addrInvalidSqIdx1_hi_4 | addrInvalidSqIdx1_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] addrInvalidSqIdx1_hi_5 = _addrInvalidSqIdx1_T_224[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] addrInvalidSqIdx1_lo_5 = _addrInvalidSqIdx1_T_224[1:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx1_T_225 = |addrInvalidSqIdx1_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _addrInvalidSqIdx1_T_226 = addrInvalidSqIdx1_hi_5 | addrInvalidSqIdx1_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx1_1 = {_addrInvalidSqIdx1_T_221,_addrInvalidSqIdx1_T_223,_addrInvalidSqIdx1_T_225,
    _addrInvalidSqIdx1_T_226[1]}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_15900 = {{4'd0}, addrInvalidMask2Reg_REG_1[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_119 = _GEN_15900 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_121 = {addrInvalidMask2Reg_REG_1[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_123 = _addrInvalidSqIdx2_T_121 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_124 = _addrInvalidSqIdx2_T_119 | _addrInvalidSqIdx2_T_123; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15901 = {{2'd0}, _addrInvalidSqIdx2_T_124[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_129 = _GEN_15901 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_131 = {_addrInvalidSqIdx2_T_124[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_133 = _addrInvalidSqIdx2_T_131 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_134 = _addrInvalidSqIdx2_T_129 | _addrInvalidSqIdx2_T_133; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15902 = {{1'd0}, _addrInvalidSqIdx2_T_134[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_139 = _GEN_15902 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_141 = {_addrInvalidSqIdx2_T_134[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_143 = _addrInvalidSqIdx2_T_141 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_144 = _addrInvalidSqIdx2_T_139 | _addrInvalidSqIdx2_T_143; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx2_T_155 = {_addrInvalidSqIdx2_T_144,addrInvalidMask2Reg_REG_1[8],
    addrInvalidMask2Reg_REG_1[9],addrInvalidMask2Reg_REG_1[10],addrInvalidMask2Reg_REG_1[11]}; // @[Cat.scala 31:58]
  wire [11:0] _addrInvalidSqIdx2_T_168 = _addrInvalidSqIdx2_T_155[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_169 = _addrInvalidSqIdx2_T_155[10] ? 12'h400 : _addrInvalidSqIdx2_T_168; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_170 = _addrInvalidSqIdx2_T_155[9] ? 12'h200 : _addrInvalidSqIdx2_T_169; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_171 = _addrInvalidSqIdx2_T_155[8] ? 12'h100 : _addrInvalidSqIdx2_T_170; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_172 = _addrInvalidSqIdx2_T_155[7] ? 12'h80 : _addrInvalidSqIdx2_T_171; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_173 = _addrInvalidSqIdx2_T_155[6] ? 12'h40 : _addrInvalidSqIdx2_T_172; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_174 = _addrInvalidSqIdx2_T_155[5] ? 12'h20 : _addrInvalidSqIdx2_T_173; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_175 = _addrInvalidSqIdx2_T_155[4] ? 12'h10 : _addrInvalidSqIdx2_T_174; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_176 = _addrInvalidSqIdx2_T_155[3] ? 12'h8 : _addrInvalidSqIdx2_T_175; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_177 = _addrInvalidSqIdx2_T_155[2] ? 12'h4 : _addrInvalidSqIdx2_T_176; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_178 = _addrInvalidSqIdx2_T_155[1] ? 12'h2 : _addrInvalidSqIdx2_T_177; // @[Mux.scala 47:70]
  wire [11:0] _addrInvalidSqIdx2_T_179 = _addrInvalidSqIdx2_T_155[0] ? 12'h1 : _addrInvalidSqIdx2_T_178; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15903 = {{4'd0}, _addrInvalidSqIdx2_T_179[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_184 = _GEN_15903 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_186 = {_addrInvalidSqIdx2_T_179[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_188 = _addrInvalidSqIdx2_T_186 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_189 = _addrInvalidSqIdx2_T_184 | _addrInvalidSqIdx2_T_188; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15904 = {{2'd0}, _addrInvalidSqIdx2_T_189[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_194 = _GEN_15904 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_196 = {_addrInvalidSqIdx2_T_189[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_198 = _addrInvalidSqIdx2_T_196 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_199 = _addrInvalidSqIdx2_T_194 | _addrInvalidSqIdx2_T_198; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15905 = {{1'd0}, _addrInvalidSqIdx2_T_199[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_204 = _GEN_15905 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _addrInvalidSqIdx2_T_206 = {_addrInvalidSqIdx2_T_199[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _addrInvalidSqIdx2_T_208 = _addrInvalidSqIdx2_T_206 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _addrInvalidSqIdx2_T_209 = _addrInvalidSqIdx2_T_204 | _addrInvalidSqIdx2_T_208; // @[Bitwise.scala 105:39]
  wire [11:0] _addrInvalidSqIdx2_T_220 = {_addrInvalidSqIdx2_T_209,_addrInvalidSqIdx2_T_179[8],_addrInvalidSqIdx2_T_179[
    9],_addrInvalidSqIdx2_T_179[10],_addrInvalidSqIdx2_T_179[11]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx2_hi_3 = _addrInvalidSqIdx2_T_220[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] addrInvalidSqIdx2_lo_3 = _addrInvalidSqIdx2_T_220[7:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_221 = |addrInvalidSqIdx2_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15906 = {{4'd0}, addrInvalidSqIdx2_hi_3}; // @[OneHot.scala 32:28]
  wire [7:0] _addrInvalidSqIdx2_T_222 = _GEN_15906 | addrInvalidSqIdx2_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx2_hi_4 = _addrInvalidSqIdx2_T_222[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] addrInvalidSqIdx2_lo_4 = _addrInvalidSqIdx2_T_222[3:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_223 = |addrInvalidSqIdx2_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _addrInvalidSqIdx2_T_224 = addrInvalidSqIdx2_hi_4 | addrInvalidSqIdx2_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] addrInvalidSqIdx2_hi_5 = _addrInvalidSqIdx2_T_224[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] addrInvalidSqIdx2_lo_5 = _addrInvalidSqIdx2_T_224[1:0]; // @[OneHot.scala 31:18]
  wire  _addrInvalidSqIdx2_T_225 = |addrInvalidSqIdx2_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _addrInvalidSqIdx2_T_226 = addrInvalidSqIdx2_hi_5 | addrInvalidSqIdx2_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] addrInvalidSqIdx2_1 = {_addrInvalidSqIdx2_T_221,_addrInvalidSqIdx2_T_223,_addrInvalidSqIdx2_T_225,
    _addrInvalidSqIdx2_T_226[1]}; // @[Cat.scala 31:58]
  wire [3:0] addrInvalidSqIdx_1 = |addrInvalidMask2Reg_REG_1 ? addrInvalidSqIdx2_1 : addrInvalidSqIdx1_1; // @[StoreQueue.scala 522:31]
  reg  REG_13; // @[StoreQueue.scala 546:18]
  wire [4:0] io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_value = io_forward_1_uop_sqIdx_value +
    _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_diff_T_1 = {1'h0,
    io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] io_forward_1_addrInvalidSqIdx_flipped_new_ptr_diff = $signed(
    _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  io_forward_1_addrInvalidSqIdx_flipped_new_ptr_reverse_flag = $signed(
    io_forward_1_addrInvalidSqIdx_flipped_new_ptr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  io_forward_1_addrInvalidSqIdx_flipped_new_ptr_flag = io_forward_1_addrInvalidSqIdx_flipped_new_ptr_reverse_flag
     ? ~io_forward_1_uop_sqIdx_flag : io_forward_1_uop_sqIdx_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T = $signed(
    _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T_1 =
    io_forward_1_addrInvalidSqIdx_flipped_new_ptr_reverse_flag ?
    _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T : {{1'd0},
    io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 45:27]
  reg  io_forward_1_addrInvalidSqIdx_REG_flag; // @[StoreQueue.scala 547:48]
  reg [3:0] io_forward_1_addrInvalidSqIdx_REG_value; // @[StoreQueue.scala 547:48]
  wire  _io_forward_1_addrInvalidSqIdx_flag_T = ~s2_differentFlag_1; // @[StoreQueue.scala 549:50]
  wire  _io_forward_1_addrInvalidSqIdx_flag_T_3 = ~s2_differentFlag_1 | addrInvalidSqIdx_1 >= s2_deqPtrExt_1_value ?
    s2_deqPtrExt_1_flag : s2_enqPtrExt_1_flag; // @[StoreQueue.scala 549:49]
  reg  io_forward_1_addrInvalidSqIdx_REG_1_flag; // @[StoreQueue.scala 553:48]
  reg [3:0] io_forward_1_addrInvalidSqIdx_REG_1_value; // @[StoreQueue.scala 553:48]
  wire  _GEN_14122 = addrInvalidFlag_1 ? _io_forward_1_addrInvalidSqIdx_flag_T_3 :
    io_forward_1_addrInvalidSqIdx_REG_1_flag; // @[StoreQueue.scala 548:35 549:43 553:38]
  wire [3:0] _GEN_14123 = addrInvalidFlag_1 ? addrInvalidSqIdx_1 : io_forward_1_addrInvalidSqIdx_REG_1_value; // @[StoreQueue.scala 548:35 550:44 553:38]
  reg  io_forward_1_addrInvalid_REG; // @[StoreQueue.scala 555:45]
  reg  io_forward_1_addrInvalid_REG_1; // @[StoreQueue.scala 555:91]
  wire  dataInvalidFlag_1 = |dataInvalidMaskReg_1; // @[StoreQueue.scala 561:50]
  wire [7:0] _GEN_15907 = {{4'd0}, dataInvalidMask1Reg_REG_1[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_119 = _GEN_15907 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_121 = {dataInvalidMask1Reg_REG_1[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_123 = _dataInvalidSqIdx1_T_121 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_124 = _dataInvalidSqIdx1_T_119 | _dataInvalidSqIdx1_T_123; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15908 = {{2'd0}, _dataInvalidSqIdx1_T_124[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_129 = _GEN_15908 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_131 = {_dataInvalidSqIdx1_T_124[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_133 = _dataInvalidSqIdx1_T_131 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_134 = _dataInvalidSqIdx1_T_129 | _dataInvalidSqIdx1_T_133; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15909 = {{1'd0}, _dataInvalidSqIdx1_T_134[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_139 = _GEN_15909 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_141 = {_dataInvalidSqIdx1_T_134[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_143 = _dataInvalidSqIdx1_T_141 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_144 = _dataInvalidSqIdx1_T_139 | _dataInvalidSqIdx1_T_143; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx1_T_155 = {_dataInvalidSqIdx1_T_144,dataInvalidMask1Reg_REG_1[8],
    dataInvalidMask1Reg_REG_1[9],dataInvalidMask1Reg_REG_1[10],dataInvalidMask1Reg_REG_1[11]}; // @[Cat.scala 31:58]
  wire [11:0] _dataInvalidSqIdx1_T_168 = _dataInvalidSqIdx1_T_155[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_169 = _dataInvalidSqIdx1_T_155[10] ? 12'h400 : _dataInvalidSqIdx1_T_168; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_170 = _dataInvalidSqIdx1_T_155[9] ? 12'h200 : _dataInvalidSqIdx1_T_169; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_171 = _dataInvalidSqIdx1_T_155[8] ? 12'h100 : _dataInvalidSqIdx1_T_170; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_172 = _dataInvalidSqIdx1_T_155[7] ? 12'h80 : _dataInvalidSqIdx1_T_171; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_173 = _dataInvalidSqIdx1_T_155[6] ? 12'h40 : _dataInvalidSqIdx1_T_172; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_174 = _dataInvalidSqIdx1_T_155[5] ? 12'h20 : _dataInvalidSqIdx1_T_173; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_175 = _dataInvalidSqIdx1_T_155[4] ? 12'h10 : _dataInvalidSqIdx1_T_174; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_176 = _dataInvalidSqIdx1_T_155[3] ? 12'h8 : _dataInvalidSqIdx1_T_175; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_177 = _dataInvalidSqIdx1_T_155[2] ? 12'h4 : _dataInvalidSqIdx1_T_176; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_178 = _dataInvalidSqIdx1_T_155[1] ? 12'h2 : _dataInvalidSqIdx1_T_177; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx1_T_179 = _dataInvalidSqIdx1_T_155[0] ? 12'h1 : _dataInvalidSqIdx1_T_178; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15910 = {{4'd0}, _dataInvalidSqIdx1_T_179[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_184 = _GEN_15910 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_186 = {_dataInvalidSqIdx1_T_179[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_188 = _dataInvalidSqIdx1_T_186 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_189 = _dataInvalidSqIdx1_T_184 | _dataInvalidSqIdx1_T_188; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15911 = {{2'd0}, _dataInvalidSqIdx1_T_189[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_194 = _GEN_15911 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_196 = {_dataInvalidSqIdx1_T_189[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_198 = _dataInvalidSqIdx1_T_196 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_199 = _dataInvalidSqIdx1_T_194 | _dataInvalidSqIdx1_T_198; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15912 = {{1'd0}, _dataInvalidSqIdx1_T_199[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_204 = _GEN_15912 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx1_T_206 = {_dataInvalidSqIdx1_T_199[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx1_T_208 = _dataInvalidSqIdx1_T_206 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx1_T_209 = _dataInvalidSqIdx1_T_204 | _dataInvalidSqIdx1_T_208; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx1_T_220 = {_dataInvalidSqIdx1_T_209,_dataInvalidSqIdx1_T_179[8],_dataInvalidSqIdx1_T_179[
    9],_dataInvalidSqIdx1_T_179[10],_dataInvalidSqIdx1_T_179[11]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx1_hi_3 = _dataInvalidSqIdx1_T_220[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] dataInvalidSqIdx1_lo_3 = _dataInvalidSqIdx1_T_220[7:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_221 = |dataInvalidSqIdx1_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15913 = {{4'd0}, dataInvalidSqIdx1_hi_3}; // @[OneHot.scala 32:28]
  wire [7:0] _dataInvalidSqIdx1_T_222 = _GEN_15913 | dataInvalidSqIdx1_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx1_hi_4 = _dataInvalidSqIdx1_T_222[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] dataInvalidSqIdx1_lo_4 = _dataInvalidSqIdx1_T_222[3:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_223 = |dataInvalidSqIdx1_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _dataInvalidSqIdx1_T_224 = dataInvalidSqIdx1_hi_4 | dataInvalidSqIdx1_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] dataInvalidSqIdx1_hi_5 = _dataInvalidSqIdx1_T_224[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] dataInvalidSqIdx1_lo_5 = _dataInvalidSqIdx1_T_224[1:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx1_T_225 = |dataInvalidSqIdx1_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _dataInvalidSqIdx1_T_226 = dataInvalidSqIdx1_hi_5 | dataInvalidSqIdx1_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx1_1 = {_dataInvalidSqIdx1_T_221,_dataInvalidSqIdx1_T_223,_dataInvalidSqIdx1_T_225,
    _dataInvalidSqIdx1_T_226[1]}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_15914 = {{4'd0}, dataInvalidMask2Reg_REG_1[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_119 = _GEN_15914 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_121 = {dataInvalidMask2Reg_REG_1[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_123 = _dataInvalidSqIdx2_T_121 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_124 = _dataInvalidSqIdx2_T_119 | _dataInvalidSqIdx2_T_123; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15915 = {{2'd0}, _dataInvalidSqIdx2_T_124[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_129 = _GEN_15915 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_131 = {_dataInvalidSqIdx2_T_124[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_133 = _dataInvalidSqIdx2_T_131 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_134 = _dataInvalidSqIdx2_T_129 | _dataInvalidSqIdx2_T_133; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15916 = {{1'd0}, _dataInvalidSqIdx2_T_134[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_139 = _GEN_15916 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_141 = {_dataInvalidSqIdx2_T_134[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_143 = _dataInvalidSqIdx2_T_141 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_144 = _dataInvalidSqIdx2_T_139 | _dataInvalidSqIdx2_T_143; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx2_T_155 = {_dataInvalidSqIdx2_T_144,dataInvalidMask2Reg_REG_1[8],
    dataInvalidMask2Reg_REG_1[9],dataInvalidMask2Reg_REG_1[10],dataInvalidMask2Reg_REG_1[11]}; // @[Cat.scala 31:58]
  wire [11:0] _dataInvalidSqIdx2_T_168 = _dataInvalidSqIdx2_T_155[11] ? 12'h800 : 12'h0; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_169 = _dataInvalidSqIdx2_T_155[10] ? 12'h400 : _dataInvalidSqIdx2_T_168; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_170 = _dataInvalidSqIdx2_T_155[9] ? 12'h200 : _dataInvalidSqIdx2_T_169; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_171 = _dataInvalidSqIdx2_T_155[8] ? 12'h100 : _dataInvalidSqIdx2_T_170; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_172 = _dataInvalidSqIdx2_T_155[7] ? 12'h80 : _dataInvalidSqIdx2_T_171; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_173 = _dataInvalidSqIdx2_T_155[6] ? 12'h40 : _dataInvalidSqIdx2_T_172; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_174 = _dataInvalidSqIdx2_T_155[5] ? 12'h20 : _dataInvalidSqIdx2_T_173; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_175 = _dataInvalidSqIdx2_T_155[4] ? 12'h10 : _dataInvalidSqIdx2_T_174; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_176 = _dataInvalidSqIdx2_T_155[3] ? 12'h8 : _dataInvalidSqIdx2_T_175; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_177 = _dataInvalidSqIdx2_T_155[2] ? 12'h4 : _dataInvalidSqIdx2_T_176; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_178 = _dataInvalidSqIdx2_T_155[1] ? 12'h2 : _dataInvalidSqIdx2_T_177; // @[Mux.scala 47:70]
  wire [11:0] _dataInvalidSqIdx2_T_179 = _dataInvalidSqIdx2_T_155[0] ? 12'h1 : _dataInvalidSqIdx2_T_178; // @[Mux.scala 47:70]
  wire [7:0] _GEN_15917 = {{4'd0}, _dataInvalidSqIdx2_T_179[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_184 = _GEN_15917 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_186 = {_dataInvalidSqIdx2_T_179[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_188 = _dataInvalidSqIdx2_T_186 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_189 = _dataInvalidSqIdx2_T_184 | _dataInvalidSqIdx2_T_188; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15918 = {{2'd0}, _dataInvalidSqIdx2_T_189[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_194 = _GEN_15918 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_196 = {_dataInvalidSqIdx2_T_189[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_198 = _dataInvalidSqIdx2_T_196 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_199 = _dataInvalidSqIdx2_T_194 | _dataInvalidSqIdx2_T_198; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15919 = {{1'd0}, _dataInvalidSqIdx2_T_199[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_204 = _GEN_15919 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _dataInvalidSqIdx2_T_206 = {_dataInvalidSqIdx2_T_199[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _dataInvalidSqIdx2_T_208 = _dataInvalidSqIdx2_T_206 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _dataInvalidSqIdx2_T_209 = _dataInvalidSqIdx2_T_204 | _dataInvalidSqIdx2_T_208; // @[Bitwise.scala 105:39]
  wire [11:0] _dataInvalidSqIdx2_T_220 = {_dataInvalidSqIdx2_T_209,_dataInvalidSqIdx2_T_179[8],_dataInvalidSqIdx2_T_179[
    9],_dataInvalidSqIdx2_T_179[10],_dataInvalidSqIdx2_T_179[11]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx2_hi_3 = _dataInvalidSqIdx2_T_220[11:8]; // @[OneHot.scala 30:18]
  wire [7:0] dataInvalidSqIdx2_lo_3 = _dataInvalidSqIdx2_T_220[7:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_221 = |dataInvalidSqIdx2_hi_3; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_15920 = {{4'd0}, dataInvalidSqIdx2_hi_3}; // @[OneHot.scala 32:28]
  wire [7:0] _dataInvalidSqIdx2_T_222 = _GEN_15920 | dataInvalidSqIdx2_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx2_hi_4 = _dataInvalidSqIdx2_T_222[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] dataInvalidSqIdx2_lo_4 = _dataInvalidSqIdx2_T_222[3:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_223 = |dataInvalidSqIdx2_hi_4; // @[OneHot.scala 32:14]
  wire [3:0] _dataInvalidSqIdx2_T_224 = dataInvalidSqIdx2_hi_4 | dataInvalidSqIdx2_lo_4; // @[OneHot.scala 32:28]
  wire [1:0] dataInvalidSqIdx2_hi_5 = _dataInvalidSqIdx2_T_224[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] dataInvalidSqIdx2_lo_5 = _dataInvalidSqIdx2_T_224[1:0]; // @[OneHot.scala 31:18]
  wire  _dataInvalidSqIdx2_T_225 = |dataInvalidSqIdx2_hi_5; // @[OneHot.scala 32:14]
  wire [1:0] _dataInvalidSqIdx2_T_226 = dataInvalidSqIdx2_hi_5 | dataInvalidSqIdx2_lo_5; // @[OneHot.scala 32:28]
  wire [3:0] dataInvalidSqIdx2_1 = {_dataInvalidSqIdx2_T_221,_dataInvalidSqIdx2_T_223,_dataInvalidSqIdx2_T_225,
    _dataInvalidSqIdx2_T_226[1]}; // @[Cat.scala 31:58]
  wire [3:0] dataInvalidSqIdx_1 = |dataInvalidMask2Reg_REG_1 ? dataInvalidSqIdx2_1 : dataInvalidSqIdx1_1; // @[StoreQueue.scala 565:31]
  wire  _io_forward_1_dataInvalidSqIdx_flag_T_3 = _io_forward_1_addrInvalidSqIdx_flag_T | dataInvalidSqIdx_1 >=
    s2_deqPtrExt_1_value ? s2_deqPtrExt_1_flag : s2_enqPtrExt_1_flag; // @[StoreQueue.scala 568:49]
  reg  io_forward_1_dataInvalidSqIdx_REG_flag; // @[StoreQueue.scala 572:48]
  reg [3:0] io_forward_1_dataInvalidSqIdx_REG_value; // @[StoreQueue.scala 572:48]
  reg [2:0] uncacheState; // @[StoreQueue.scala 588:29]
  wire  _GEN_14129 = 4'h1 == deqPtrExt_0_value ? pending_1 : pending_0; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14130 = 4'h2 == deqPtrExt_0_value ? pending_2 : _GEN_14129; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14131 = 4'h3 == deqPtrExt_0_value ? pending_3 : _GEN_14130; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14132 = 4'h4 == deqPtrExt_0_value ? pending_4 : _GEN_14131; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14133 = 4'h5 == deqPtrExt_0_value ? pending_5 : _GEN_14132; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14134 = 4'h6 == deqPtrExt_0_value ? pending_6 : _GEN_14133; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14135 = 4'h7 == deqPtrExt_0_value ? pending_7 : _GEN_14134; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14136 = 4'h8 == deqPtrExt_0_value ? pending_8 : _GEN_14135; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14137 = 4'h9 == deqPtrExt_0_value ? pending_9 : _GEN_14136; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14138 = 4'ha == deqPtrExt_0_value ? pending_10 : _GEN_14137; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14139 = 4'hb == deqPtrExt_0_value ? pending_11 : _GEN_14138; // @[StoreQueue.scala 591:{37,37}]
  wire  _GEN_14141 = 4'h1 == deqPtrExt_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14142 = 4'h2 == deqPtrExt_0_value ? allocated_2 : _GEN_14141; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14143 = 4'h3 == deqPtrExt_0_value ? allocated_3 : _GEN_14142; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14144 = 4'h4 == deqPtrExt_0_value ? allocated_4 : _GEN_14143; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14145 = 4'h5 == deqPtrExt_0_value ? allocated_5 : _GEN_14144; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14146 = 4'h6 == deqPtrExt_0_value ? allocated_6 : _GEN_14145; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14147 = 4'h7 == deqPtrExt_0_value ? allocated_7 : _GEN_14146; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14148 = 4'h8 == deqPtrExt_0_value ? allocated_8 : _GEN_14147; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14149 = 4'h9 == deqPtrExt_0_value ? allocated_9 : _GEN_14148; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14150 = 4'ha == deqPtrExt_0_value ? allocated_10 : _GEN_14149; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14151 = 4'hb == deqPtrExt_0_value ? allocated_11 : _GEN_14150; // @[StoreQueue.scala 591:{56,56}]
  wire  _GEN_14153 = 4'h1 == deqPtrExt_0_value ? datavalid_1 : datavalid_0; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14154 = 4'h2 == deqPtrExt_0_value ? datavalid_2 : _GEN_14153; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14155 = 4'h3 == deqPtrExt_0_value ? datavalid_3 : _GEN_14154; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14156 = 4'h4 == deqPtrExt_0_value ? datavalid_4 : _GEN_14155; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14157 = 4'h5 == deqPtrExt_0_value ? datavalid_5 : _GEN_14156; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14158 = 4'h6 == deqPtrExt_0_value ? datavalid_6 : _GEN_14157; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14159 = 4'h7 == deqPtrExt_0_value ? datavalid_7 : _GEN_14158; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14160 = 4'h8 == deqPtrExt_0_value ? datavalid_8 : _GEN_14159; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14161 = 4'h9 == deqPtrExt_0_value ? datavalid_9 : _GEN_14160; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14162 = 4'ha == deqPtrExt_0_value ? datavalid_10 : _GEN_14161; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14163 = 4'hb == deqPtrExt_0_value ? datavalid_11 : _GEN_14162; // @[StoreQueue.scala 591:{77,77}]
  wire  _GEN_14165 = 4'h1 == deqPtrExt_0_value ? addrvalid_1 : addrvalid_0; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14166 = 4'h2 == deqPtrExt_0_value ? addrvalid_2 : _GEN_14165; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14167 = 4'h3 == deqPtrExt_0_value ? addrvalid_3 : _GEN_14166; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14168 = 4'h4 == deqPtrExt_0_value ? addrvalid_4 : _GEN_14167; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14169 = 4'h5 == deqPtrExt_0_value ? addrvalid_5 : _GEN_14168; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14170 = 4'h6 == deqPtrExt_0_value ? addrvalid_6 : _GEN_14169; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14171 = 4'h7 == deqPtrExt_0_value ? addrvalid_7 : _GEN_14170; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14172 = 4'h8 == deqPtrExt_0_value ? addrvalid_8 : _GEN_14171; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14173 = 4'h9 == deqPtrExt_0_value ? addrvalid_9 : _GEN_14172; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14174 = 4'ha == deqPtrExt_0_value ? addrvalid_10 : _GEN_14173; // @[StoreQueue.scala 591:{98,98}]
  wire  _GEN_14175 = 4'hb == deqPtrExt_0_value ? addrvalid_11 : _GEN_14174; // @[StoreQueue.scala 591:{98,98}]
  reg  REG_14; // @[StoreQueue.scala 591:19]
  wire  _T_66 = io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_68 = io_uncache_resp_ready & io_uncache_resp_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_14180 = _rdataPtrExtNext_T_2 ? 3'h4 : uncacheState; // @[StoreQueue.scala 610:34 611:22 588:29]
  wire  _T_72 = commitCount > 2'h0; // @[StoreQueue.scala 615:24]
  wire [2:0] _GEN_14181 = commitCount > 2'h0 ? 3'h0 : uncacheState; // @[StoreQueue.scala 615:31 616:22 588:29]
  wire [2:0] _GEN_14182 = 3'h4 == uncacheState ? _GEN_14181 : uncacheState; // @[StoreQueue.scala 589:24 588:29]
  wire [127:0] _io_uncache_req_bits_data_T_2 = paddrModule_io_rdata_0[3] ? {{64'd0}, dataModule_io_rdata_0_data[127:64]}
     : dataModule_io_rdata_0_data; // @[MemCommon.scala 67:8]
  wire [15:0] _io_uncache_req_bits_mask_T_2 = paddrModule_io_rdata_0[3] ? {{8'd0}, dataModule_io_rdata_0_mask[15:8]} :
    dataModule_io_rdata_0_mask; // @[MemCommon.scala 72:8]
  wire [6:0] _GEN_14188 = 4'h1 == deqPtrExt_0_value ? uop_1_ctrl_fuOpType : uop_0_ctrl_fuOpType; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14189 = 4'h2 == deqPtrExt_0_value ? uop_2_ctrl_fuOpType : _GEN_14188; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14190 = 4'h3 == deqPtrExt_0_value ? uop_3_ctrl_fuOpType : _GEN_14189; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14191 = 4'h4 == deqPtrExt_0_value ? uop_4_ctrl_fuOpType : _GEN_14190; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14192 = 4'h5 == deqPtrExt_0_value ? uop_5_ctrl_fuOpType : _GEN_14191; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14193 = 4'h6 == deqPtrExt_0_value ? uop_6_ctrl_fuOpType : _GEN_14192; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14194 = 4'h7 == deqPtrExt_0_value ? uop_7_ctrl_fuOpType : _GEN_14193; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14195 = 4'h8 == deqPtrExt_0_value ? uop_8_ctrl_fuOpType : _GEN_14194; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14196 = 4'h9 == deqPtrExt_0_value ? uop_9_ctrl_fuOpType : _GEN_14195; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14197 = 4'ha == deqPtrExt_0_value ? uop_10_ctrl_fuOpType : _GEN_14196; // @[package.scala 407:{35,35}]
  wire [6:0] _GEN_14198 = 4'hb == deqPtrExt_0_value ? uop_11_ctrl_fuOpType : _GEN_14197; // @[package.scala 407:{35,35}]
  reg  REG_15; // @[StoreQueue.scala 633:15]
  wire [127:0] _GEN_14200 = REG_15 ? {{92'd0}, paddrModule_io_rdata_0} : _io_uncache_req_bits_data_T_2; // @[StoreQueue.scala 625:28 633:60 635:30]
  reg [3:0] io_uncache_req_bits_atomic_REG_value; // @[StoreQueue.scala 639:47]
  wire  _GEN_14203 = 4'h1 == io_uncache_req_bits_atomic_REG_value ? atomic_1 : atomic_0; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14204 = 4'h2 == io_uncache_req_bits_atomic_REG_value ? atomic_2 : _GEN_14203; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14205 = 4'h3 == io_uncache_req_bits_atomic_REG_value ? atomic_3 : _GEN_14204; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14206 = 4'h4 == io_uncache_req_bits_atomic_REG_value ? atomic_4 : _GEN_14205; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14207 = 4'h5 == io_uncache_req_bits_atomic_REG_value ? atomic_5 : _GEN_14206; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14208 = 4'h6 == io_uncache_req_bits_atomic_REG_value ? atomic_6 : _GEN_14207; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14209 = 4'h7 == io_uncache_req_bits_atomic_REG_value ? atomic_7 : _GEN_14208; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14210 = 4'h8 == io_uncache_req_bits_atomic_REG_value ? atomic_8 : _GEN_14209; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14211 = 4'h9 == io_uncache_req_bits_atomic_REG_value ? atomic_9 : _GEN_14210; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14212 = 4'ha == io_uncache_req_bits_atomic_REG_value ? atomic_10 : _GEN_14211; // @[StoreQueue.scala 639:{30,30}]
  wire  _GEN_14515 = 4'h1 == deqPtrExt_0_value ? uop_1_cf_trigger_backendEn_0 : uop_0_cf_trigger_backendEn_0; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14516 = 4'h2 == deqPtrExt_0_value ? uop_2_cf_trigger_backendEn_0 : _GEN_14515; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14517 = 4'h3 == deqPtrExt_0_value ? uop_3_cf_trigger_backendEn_0 : _GEN_14516; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14518 = 4'h4 == deqPtrExt_0_value ? uop_4_cf_trigger_backendEn_0 : _GEN_14517; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14519 = 4'h5 == deqPtrExt_0_value ? uop_5_cf_trigger_backendEn_0 : _GEN_14518; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14520 = 4'h6 == deqPtrExt_0_value ? uop_6_cf_trigger_backendEn_0 : _GEN_14519; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14521 = 4'h7 == deqPtrExt_0_value ? uop_7_cf_trigger_backendEn_0 : _GEN_14520; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14522 = 4'h8 == deqPtrExt_0_value ? uop_8_cf_trigger_backendEn_0 : _GEN_14521; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14523 = 4'h9 == deqPtrExt_0_value ? uop_9_cf_trigger_backendEn_0 : _GEN_14522; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_14524 = 4'ha == deqPtrExt_0_value ? uop_10_cf_trigger_backendEn_0 : _GEN_14523; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15307 = 4'h1 == deqPtrExt_0_value ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15308 = 4'h2 == deqPtrExt_0_value ? uop_2_robIdx_flag : _GEN_15307; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15309 = 4'h3 == deqPtrExt_0_value ? uop_3_robIdx_flag : _GEN_15308; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15310 = 4'h4 == deqPtrExt_0_value ? uop_4_robIdx_flag : _GEN_15309; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15311 = 4'h5 == deqPtrExt_0_value ? uop_5_robIdx_flag : _GEN_15310; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15312 = 4'h6 == deqPtrExt_0_value ? uop_6_robIdx_flag : _GEN_15311; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15313 = 4'h7 == deqPtrExt_0_value ? uop_7_robIdx_flag : _GEN_15312; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15314 = 4'h8 == deqPtrExt_0_value ? uop_8_robIdx_flag : _GEN_15313; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15315 = 4'h9 == deqPtrExt_0_value ? uop_9_robIdx_flag : _GEN_15314; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15316 = 4'ha == deqPtrExt_0_value ? uop_10_robIdx_flag : _GEN_15315; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15319 = 4'h1 == deqPtrExt_0_value ? uop_1_robIdx_value : uop_0_robIdx_value; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15320 = 4'h2 == deqPtrExt_0_value ? uop_2_robIdx_value : _GEN_15319; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15321 = 4'h3 == deqPtrExt_0_value ? uop_3_robIdx_value : _GEN_15320; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15322 = 4'h4 == deqPtrExt_0_value ? uop_4_robIdx_value : _GEN_15321; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15323 = 4'h5 == deqPtrExt_0_value ? uop_5_robIdx_value : _GEN_15322; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15324 = 4'h6 == deqPtrExt_0_value ? uop_6_robIdx_value : _GEN_15323; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15325 = 4'h7 == deqPtrExt_0_value ? uop_7_robIdx_value : _GEN_15324; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15326 = 4'h8 == deqPtrExt_0_value ? uop_8_robIdx_value : _GEN_15325; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15327 = 4'h9 == deqPtrExt_0_value ? uop_9_robIdx_value : _GEN_15326; // @[StoreQueue.scala 659:{25,25}]
  wire [4:0] _GEN_15328 = 4'ha == deqPtrExt_0_value ? uop_10_robIdx_value : _GEN_15327; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15331 = 4'h1 == deqPtrExt_0_value ? uop_1_lqIdx_flag : uop_0_lqIdx_flag; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15332 = 4'h2 == deqPtrExt_0_value ? uop_2_lqIdx_flag : _GEN_15331; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15333 = 4'h3 == deqPtrExt_0_value ? uop_3_lqIdx_flag : _GEN_15332; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15334 = 4'h4 == deqPtrExt_0_value ? uop_4_lqIdx_flag : _GEN_15333; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15335 = 4'h5 == deqPtrExt_0_value ? uop_5_lqIdx_flag : _GEN_15334; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15336 = 4'h6 == deqPtrExt_0_value ? uop_6_lqIdx_flag : _GEN_15335; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15337 = 4'h7 == deqPtrExt_0_value ? uop_7_lqIdx_flag : _GEN_15336; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15338 = 4'h8 == deqPtrExt_0_value ? uop_8_lqIdx_flag : _GEN_15337; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15339 = 4'h9 == deqPtrExt_0_value ? uop_9_lqIdx_flag : _GEN_15338; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15340 = 4'ha == deqPtrExt_0_value ? uop_10_lqIdx_flag : _GEN_15339; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15343 = 4'h1 == deqPtrExt_0_value ? uop_1_lqIdx_value : uop_0_lqIdx_value; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15344 = 4'h2 == deqPtrExt_0_value ? uop_2_lqIdx_value : _GEN_15343; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15345 = 4'h3 == deqPtrExt_0_value ? uop_3_lqIdx_value : _GEN_15344; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15346 = 4'h4 == deqPtrExt_0_value ? uop_4_lqIdx_value : _GEN_15345; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15347 = 4'h5 == deqPtrExt_0_value ? uop_5_lqIdx_value : _GEN_15346; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15348 = 4'h6 == deqPtrExt_0_value ? uop_6_lqIdx_value : _GEN_15347; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15349 = 4'h7 == deqPtrExt_0_value ? uop_7_lqIdx_value : _GEN_15348; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15350 = 4'h8 == deqPtrExt_0_value ? uop_8_lqIdx_value : _GEN_15349; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15351 = 4'h9 == deqPtrExt_0_value ? uop_9_lqIdx_value : _GEN_15350; // @[StoreQueue.scala 659:{25,25}]
  wire [3:0] _GEN_15352 = 4'ha == deqPtrExt_0_value ? uop_10_lqIdx_value : _GEN_15351; // @[StoreQueue.scala 659:{25,25}]
  wire  _GEN_15522 = 4'h0 == deqPtrExt_0_value ? 1'h0 : _GEN_11076; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15523 = 4'h1 == deqPtrExt_0_value ? 1'h0 : _GEN_11077; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15524 = 4'h2 == deqPtrExt_0_value ? 1'h0 : _GEN_11078; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15525 = 4'h3 == deqPtrExt_0_value ? 1'h0 : _GEN_11079; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15526 = 4'h4 == deqPtrExt_0_value ? 1'h0 : _GEN_11080; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15527 = 4'h5 == deqPtrExt_0_value ? 1'h0 : _GEN_11081; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15528 = 4'h6 == deqPtrExt_0_value ? 1'h0 : _GEN_11082; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15529 = 4'h7 == deqPtrExt_0_value ? 1'h0 : _GEN_11083; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15530 = 4'h8 == deqPtrExt_0_value ? 1'h0 : _GEN_11084; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15531 = 4'h9 == deqPtrExt_0_value ? 1'h0 : _GEN_11085; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15532 = 4'ha == deqPtrExt_0_value ? 1'h0 : _GEN_11086; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15533 = 4'hb == deqPtrExt_0_value ? 1'h0 : _GEN_11087; // @[StoreQueue.scala 672:{23,23}]
  wire  _GEN_15534 = _rdataPtrExtNext_T_2 ? _GEN_15522 : _GEN_11076; // @[StoreQueue.scala 671:30]
  wire  _GEN_15535 = _rdataPtrExtNext_T_2 ? _GEN_15523 : _GEN_11077; // @[StoreQueue.scala 671:30]
  wire  _GEN_15536 = _rdataPtrExtNext_T_2 ? _GEN_15524 : _GEN_11078; // @[StoreQueue.scala 671:30]
  wire  _GEN_15537 = _rdataPtrExtNext_T_2 ? _GEN_15525 : _GEN_11079; // @[StoreQueue.scala 671:30]
  wire  _GEN_15538 = _rdataPtrExtNext_T_2 ? _GEN_15526 : _GEN_11080; // @[StoreQueue.scala 671:30]
  wire  _GEN_15539 = _rdataPtrExtNext_T_2 ? _GEN_15527 : _GEN_11081; // @[StoreQueue.scala 671:30]
  wire  _GEN_15540 = _rdataPtrExtNext_T_2 ? _GEN_15528 : _GEN_11082; // @[StoreQueue.scala 671:30]
  wire  _GEN_15541 = _rdataPtrExtNext_T_2 ? _GEN_15529 : _GEN_11083; // @[StoreQueue.scala 671:30]
  wire  _GEN_15542 = _rdataPtrExtNext_T_2 ? _GEN_15530 : _GEN_11084; // @[StoreQueue.scala 671:30]
  wire  _GEN_15543 = _rdataPtrExtNext_T_2 ? _GEN_15531 : _GEN_11085; // @[StoreQueue.scala 671:30]
  wire  _GEN_15544 = _rdataPtrExtNext_T_2 ? _GEN_15532 : _GEN_11086; // @[StoreQueue.scala 671:30]
  wire  _GEN_15545 = _rdataPtrExtNext_T_2 ? _GEN_15533 : _GEN_11087; // @[StoreQueue.scala 671:30]
  wire  _GEN_15546 = 4'h0 == cmtPtrExt_0_value | _GEN_11112; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15547 = 4'h1 == cmtPtrExt_0_value | _GEN_11113; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15548 = 4'h2 == cmtPtrExt_0_value | _GEN_11114; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15549 = 4'h3 == cmtPtrExt_0_value | _GEN_11115; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15550 = 4'h4 == cmtPtrExt_0_value | _GEN_11116; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15551 = 4'h5 == cmtPtrExt_0_value | _GEN_11117; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15552 = 4'h6 == cmtPtrExt_0_value | _GEN_11118; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15553 = 4'h7 == cmtPtrExt_0_value | _GEN_11119; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15554 = 4'h8 == cmtPtrExt_0_value | _GEN_11120; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15555 = 4'h9 == cmtPtrExt_0_value | _GEN_11121; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15556 = 4'ha == cmtPtrExt_0_value | _GEN_11122; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15557 = 4'hb == cmtPtrExt_0_value | _GEN_11123; // @[StoreQueue.scala 689:{41,41}]
  wire  _GEN_15558 = uncacheState == 3'h0 ? _GEN_15546 : _GEN_11112; // @[StoreQueue.scala 688:38]
  wire  _GEN_15559 = uncacheState == 3'h0 ? _GEN_15547 : _GEN_11113; // @[StoreQueue.scala 688:38]
  wire  _GEN_15560 = uncacheState == 3'h0 ? _GEN_15548 : _GEN_11114; // @[StoreQueue.scala 688:38]
  wire  _GEN_15561 = uncacheState == 3'h0 ? _GEN_15549 : _GEN_11115; // @[StoreQueue.scala 688:38]
  wire  _GEN_15562 = uncacheState == 3'h0 ? _GEN_15550 : _GEN_11116; // @[StoreQueue.scala 688:38]
  wire  _GEN_15563 = uncacheState == 3'h0 ? _GEN_15551 : _GEN_11117; // @[StoreQueue.scala 688:38]
  wire  _GEN_15564 = uncacheState == 3'h0 ? _GEN_15552 : _GEN_11118; // @[StoreQueue.scala 688:38]
  wire  _GEN_15565 = uncacheState == 3'h0 ? _GEN_15553 : _GEN_11119; // @[StoreQueue.scala 688:38]
  wire  _GEN_15566 = uncacheState == 3'h0 ? _GEN_15554 : _GEN_11120; // @[StoreQueue.scala 688:38]
  wire  _GEN_15567 = uncacheState == 3'h0 ? _GEN_15555 : _GEN_11121; // @[StoreQueue.scala 688:38]
  wire  _GEN_15568 = uncacheState == 3'h0 ? _GEN_15556 : _GEN_11122; // @[StoreQueue.scala 688:38]
  wire  _GEN_15569 = uncacheState == 3'h0 ? _GEN_15557 : _GEN_11123; // @[StoreQueue.scala 688:38]
  wire  _GEN_15570 = _T_72 ? _GEN_15558 : _GEN_11112; // @[StoreQueue.scala 684:30]
  wire  _GEN_15571 = _T_72 ? _GEN_15559 : _GEN_11113; // @[StoreQueue.scala 684:30]
  wire  _GEN_15572 = _T_72 ? _GEN_15560 : _GEN_11114; // @[StoreQueue.scala 684:30]
  wire  _GEN_15573 = _T_72 ? _GEN_15561 : _GEN_11115; // @[StoreQueue.scala 684:30]
  wire  _GEN_15574 = _T_72 ? _GEN_15562 : _GEN_11116; // @[StoreQueue.scala 684:30]
  wire  _GEN_15575 = _T_72 ? _GEN_15563 : _GEN_11117; // @[StoreQueue.scala 684:30]
  wire  _GEN_15576 = _T_72 ? _GEN_15564 : _GEN_11118; // @[StoreQueue.scala 684:30]
  wire  _GEN_15577 = _T_72 ? _GEN_15565 : _GEN_11119; // @[StoreQueue.scala 684:30]
  wire  _GEN_15578 = _T_72 ? _GEN_15566 : _GEN_11120; // @[StoreQueue.scala 684:30]
  wire  _GEN_15579 = _T_72 ? _GEN_15567 : _GEN_11121; // @[StoreQueue.scala 684:30]
  wire  _GEN_15580 = _T_72 ? _GEN_15568 : _GEN_11122; // @[StoreQueue.scala 684:30]
  wire  _GEN_15581 = _T_72 ? _GEN_15569 : _GEN_11123; // @[StoreQueue.scala 684:30]
  wire  _GEN_15582 = 4'h0 == cmtPtrExt_1_value | _GEN_15570; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15583 = 4'h1 == cmtPtrExt_1_value | _GEN_15571; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15584 = 4'h2 == cmtPtrExt_1_value | _GEN_15572; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15585 = 4'h3 == cmtPtrExt_1_value | _GEN_15573; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15586 = 4'h4 == cmtPtrExt_1_value | _GEN_15574; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15587 = 4'h5 == cmtPtrExt_1_value | _GEN_15575; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15588 = 4'h6 == cmtPtrExt_1_value | _GEN_15576; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15589 = 4'h7 == cmtPtrExt_1_value | _GEN_15577; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15590 = 4'h8 == cmtPtrExt_1_value | _GEN_15578; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15591 = 4'h9 == cmtPtrExt_1_value | _GEN_15579; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15592 = 4'ha == cmtPtrExt_1_value | _GEN_15580; // @[StoreQueue.scala 692:{39,39}]
  wire  _GEN_15593 = 4'hb == cmtPtrExt_1_value | _GEN_15581; // @[StoreQueue.scala 692:{39,39}]
  wire [4:0] new_value_1 = cmtPtrExt_1_value + _GEN_15785; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _diff_T_7 = {1'h0,new_value_1}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] diff_1 = $signed(_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  reverse_flag_1 = $signed(diff_1) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _new_ptr_value_T_2 = $signed(_diff_T_7) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _new_ptr_value_T_3 = reverse_flag_1 ? _new_ptr_value_T_2 : {{1'd0}, new_value_1}; // @[CircularQueuePtr.scala 45:27]
  wire  _GEN_15607 = 4'h1 == rdataPtrExt_0_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15608 = 4'h2 == rdataPtrExt_0_value ? allocated_2 : _GEN_15607; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15609 = 4'h3 == rdataPtrExt_0_value ? allocated_3 : _GEN_15608; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15610 = 4'h4 == rdataPtrExt_0_value ? allocated_4 : _GEN_15609; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15611 = 4'h5 == rdataPtrExt_0_value ? allocated_5 : _GEN_15610; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15612 = 4'h6 == rdataPtrExt_0_value ? allocated_6 : _GEN_15611; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15613 = 4'h7 == rdataPtrExt_0_value ? allocated_7 : _GEN_15612; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15614 = 4'h8 == rdataPtrExt_0_value ? allocated_8 : _GEN_15613; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15615 = 4'h9 == rdataPtrExt_0_value ? allocated_9 : _GEN_15614; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15616 = 4'ha == rdataPtrExt_0_value ? allocated_10 : _GEN_15615; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15617 = 4'hb == rdataPtrExt_0_value ? allocated_11 : _GEN_15616; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15619 = 4'h1 == rdataPtrExt_0_value ? committed_1 : committed_0; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15620 = 4'h2 == rdataPtrExt_0_value ? committed_2 : _GEN_15619; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15621 = 4'h3 == rdataPtrExt_0_value ? committed_3 : _GEN_15620; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15622 = 4'h4 == rdataPtrExt_0_value ? committed_4 : _GEN_15621; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15623 = 4'h5 == rdataPtrExt_0_value ? committed_5 : _GEN_15622; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15624 = 4'h6 == rdataPtrExt_0_value ? committed_6 : _GEN_15623; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15625 = 4'h7 == rdataPtrExt_0_value ? committed_7 : _GEN_15624; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15626 = 4'h8 == rdataPtrExt_0_value ? committed_8 : _GEN_15625; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15627 = 4'h9 == rdataPtrExt_0_value ? committed_9 : _GEN_15626; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15628 = 4'ha == rdataPtrExt_0_value ? committed_10 : _GEN_15627; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15629 = 4'hb == rdataPtrExt_0_value ? committed_11 : _GEN_15628; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15631 = 4'h1 == rdataPtrExt_0_value ? mmio_1 : mmio_0; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15632 = 4'h2 == rdataPtrExt_0_value ? mmio_2 : _GEN_15631; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15633 = 4'h3 == rdataPtrExt_0_value ? mmio_3 : _GEN_15632; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15634 = 4'h4 == rdataPtrExt_0_value ? mmio_4 : _GEN_15633; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15635 = 4'h5 == rdataPtrExt_0_value ? mmio_5 : _GEN_15634; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15636 = 4'h6 == rdataPtrExt_0_value ? mmio_6 : _GEN_15635; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15637 = 4'h7 == rdataPtrExt_0_value ? mmio_7 : _GEN_15636; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15638 = 4'h8 == rdataPtrExt_0_value ? mmio_8 : _GEN_15637; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15639 = 4'h9 == rdataPtrExt_0_value ? mmio_9 : _GEN_15638; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15640 = 4'ha == rdataPtrExt_0_value ? mmio_10 : _GEN_15639; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15641 = 4'hb == rdataPtrExt_0_value ? mmio_11 : _GEN_15640; // @[StoreQueue.scala 708:{71,71}]
  wire  _GEN_15667 = 4'h1 == rdataPtrExt_1_value ? allocated_1 : allocated_0; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15668 = 4'h2 == rdataPtrExt_1_value ? allocated_2 : _GEN_15667; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15669 = 4'h3 == rdataPtrExt_1_value ? allocated_3 : _GEN_15668; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15670 = 4'h4 == rdataPtrExt_1_value ? allocated_4 : _GEN_15669; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15671 = 4'h5 == rdataPtrExt_1_value ? allocated_5 : _GEN_15670; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15672 = 4'h6 == rdataPtrExt_1_value ? allocated_6 : _GEN_15671; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15673 = 4'h7 == rdataPtrExt_1_value ? allocated_7 : _GEN_15672; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15674 = 4'h8 == rdataPtrExt_1_value ? allocated_8 : _GEN_15673; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15675 = 4'h9 == rdataPtrExt_1_value ? allocated_9 : _GEN_15674; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15676 = 4'ha == rdataPtrExt_1_value ? allocated_10 : _GEN_15675; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15677 = 4'hb == rdataPtrExt_1_value ? allocated_11 : _GEN_15676; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15679 = 4'h1 == rdataPtrExt_1_value ? committed_1 : committed_0; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15680 = 4'h2 == rdataPtrExt_1_value ? committed_2 : _GEN_15679; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15681 = 4'h3 == rdataPtrExt_1_value ? committed_3 : _GEN_15680; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15682 = 4'h4 == rdataPtrExt_1_value ? committed_4 : _GEN_15681; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15683 = 4'h5 == rdataPtrExt_1_value ? committed_5 : _GEN_15682; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15684 = 4'h6 == rdataPtrExt_1_value ? committed_6 : _GEN_15683; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15685 = 4'h7 == rdataPtrExt_1_value ? committed_7 : _GEN_15684; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15686 = 4'h8 == rdataPtrExt_1_value ? committed_8 : _GEN_15685; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15687 = 4'h9 == rdataPtrExt_1_value ? committed_9 : _GEN_15686; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15688 = 4'ha == rdataPtrExt_1_value ? committed_10 : _GEN_15687; // @[StoreQueue.scala 708:{50,50}]
  wire  _GEN_15689 = 4'hb == rdataPtrExt_1_value ? committed_11 : _GEN_15688; // @[StoreQueue.scala 708:{50,50}]
  reg  REG_16; // @[StoreQueue.scala 740:18]
  reg [3:0] r; // @[Reg.scala 16:16]
  wire  _GEN_15715 = 4'h0 == r ? 1'h0 : _GEN_15534; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15716 = 4'h1 == r ? 1'h0 : _GEN_15535; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15717 = 4'h2 == r ? 1'h0 : _GEN_15536; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15718 = 4'h3 == r ? 1'h0 : _GEN_15537; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15719 = 4'h4 == r ? 1'h0 : _GEN_15538; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15720 = 4'h5 == r ? 1'h0 : _GEN_15539; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15721 = 4'h6 == r ? 1'h0 : _GEN_15540; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15722 = 4'h7 == r ? 1'h0 : _GEN_15541; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15723 = 4'h8 == r ? 1'h0 : _GEN_15542; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15724 = 4'h9 == r ? 1'h0 : _GEN_15543; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15725 = 4'ha == r ? 1'h0 : _GEN_15544; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15726 = 4'hb == r ? 1'h0 : _GEN_15545; // @[StoreQueue.scala 741:{55,55}]
  wire  _GEN_15727 = REG_16 ? _GEN_15715 : _GEN_15534; // @[StoreQueue.scala 740:42]
  wire  _GEN_15728 = REG_16 ? _GEN_15716 : _GEN_15535; // @[StoreQueue.scala 740:42]
  wire  _GEN_15729 = REG_16 ? _GEN_15717 : _GEN_15536; // @[StoreQueue.scala 740:42]
  wire  _GEN_15730 = REG_16 ? _GEN_15718 : _GEN_15537; // @[StoreQueue.scala 740:42]
  wire  _GEN_15731 = REG_16 ? _GEN_15719 : _GEN_15538; // @[StoreQueue.scala 740:42]
  wire  _GEN_15732 = REG_16 ? _GEN_15720 : _GEN_15539; // @[StoreQueue.scala 740:42]
  wire  _GEN_15733 = REG_16 ? _GEN_15721 : _GEN_15540; // @[StoreQueue.scala 740:42]
  wire  _GEN_15734 = REG_16 ? _GEN_15722 : _GEN_15541; // @[StoreQueue.scala 740:42]
  wire  _GEN_15735 = REG_16 ? _GEN_15723 : _GEN_15542; // @[StoreQueue.scala 740:42]
  wire  _GEN_15736 = REG_16 ? _GEN_15724 : _GEN_15543; // @[StoreQueue.scala 740:42]
  wire  _GEN_15737 = REG_16 ? _GEN_15725 : _GEN_15544; // @[StoreQueue.scala 740:42]
  wire  _GEN_15738 = REG_16 ? _GEN_15726 : _GEN_15545; // @[StoreQueue.scala 740:42]
  reg  REG_17; // @[StoreQueue.scala 740:18]
  reg [3:0] r_1; // @[Reg.scala 16:16]
  wire [5:0] _needCancel_0_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_0_flushItself_T_3 = _needCancel_0_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_0_flushItself = io_brqRedirect_bits_level & _needCancel_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_0_differentFlag = uop_0_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_0_compare = uop_0_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_0_T = needCancel_0_differentFlag ^ needCancel_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_0_T_2 = io_brqRedirect_valid & (needCancel_0_flushItself | _needCancel_0_T); // @[Rob.scala 143:20]
  wire  needCancel_0 = _needCancel_0_T_2 & allocated_0 & ~committed_0; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_1_flushItself_T_1 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_1_flushItself_T_3 = _needCancel_1_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_1_flushItself = io_brqRedirect_bits_level & _needCancel_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_1_differentFlag = uop_1_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_1_compare = uop_1_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_1_T = needCancel_1_differentFlag ^ needCancel_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_1_T_2 = io_brqRedirect_valid & (needCancel_1_flushItself | _needCancel_1_T); // @[Rob.scala 143:20]
  wire  needCancel_1 = _needCancel_1_T_2 & allocated_1 & ~committed_1; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_2_flushItself_T_1 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_2_flushItself_T_3 = _needCancel_2_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_2_flushItself = io_brqRedirect_bits_level & _needCancel_2_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_2_differentFlag = uop_2_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_2_compare = uop_2_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_2_T = needCancel_2_differentFlag ^ needCancel_2_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_2_T_2 = io_brqRedirect_valid & (needCancel_2_flushItself | _needCancel_2_T); // @[Rob.scala 143:20]
  wire  needCancel_2 = _needCancel_2_T_2 & allocated_2 & ~committed_2; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_3_flushItself_T_1 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_3_flushItself_T_3 = _needCancel_3_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_3_flushItself = io_brqRedirect_bits_level & _needCancel_3_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_3_differentFlag = uop_3_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_3_compare = uop_3_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_3_T = needCancel_3_differentFlag ^ needCancel_3_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_3_T_2 = io_brqRedirect_valid & (needCancel_3_flushItself | _needCancel_3_T); // @[Rob.scala 143:20]
  wire  needCancel_3 = _needCancel_3_T_2 & allocated_3 & ~committed_3; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_4_flushItself_T_1 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_4_flushItself_T_3 = _needCancel_4_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_4_flushItself = io_brqRedirect_bits_level & _needCancel_4_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_4_differentFlag = uop_4_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_4_compare = uop_4_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_4_T = needCancel_4_differentFlag ^ needCancel_4_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_4_T_2 = io_brqRedirect_valid & (needCancel_4_flushItself | _needCancel_4_T); // @[Rob.scala 143:20]
  wire  needCancel_4 = _needCancel_4_T_2 & allocated_4 & ~committed_4; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_5_flushItself_T_1 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_5_flushItself_T_3 = _needCancel_5_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_5_flushItself = io_brqRedirect_bits_level & _needCancel_5_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_5_differentFlag = uop_5_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_5_compare = uop_5_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_5_T = needCancel_5_differentFlag ^ needCancel_5_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_5_T_2 = io_brqRedirect_valid & (needCancel_5_flushItself | _needCancel_5_T); // @[Rob.scala 143:20]
  wire  needCancel_5 = _needCancel_5_T_2 & allocated_5 & ~committed_5; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_6_flushItself_T_1 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_6_flushItself_T_3 = _needCancel_6_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_6_flushItself = io_brqRedirect_bits_level & _needCancel_6_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_6_differentFlag = uop_6_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_6_compare = uop_6_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_6_T = needCancel_6_differentFlag ^ needCancel_6_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_6_T_2 = io_brqRedirect_valid & (needCancel_6_flushItself | _needCancel_6_T); // @[Rob.scala 143:20]
  wire  needCancel_6 = _needCancel_6_T_2 & allocated_6 & ~committed_6; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_7_flushItself_T_1 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_7_flushItself_T_3 = _needCancel_7_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_7_flushItself = io_brqRedirect_bits_level & _needCancel_7_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_7_differentFlag = uop_7_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_7_compare = uop_7_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_7_T = needCancel_7_differentFlag ^ needCancel_7_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_7_T_2 = io_brqRedirect_valid & (needCancel_7_flushItself | _needCancel_7_T); // @[Rob.scala 143:20]
  wire  needCancel_7 = _needCancel_7_T_2 & allocated_7 & ~committed_7; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_8_flushItself_T_1 = {uop_8_robIdx_flag,uop_8_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_8_flushItself_T_3 = _needCancel_8_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_8_flushItself = io_brqRedirect_bits_level & _needCancel_8_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_8_differentFlag = uop_8_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_8_compare = uop_8_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_8_T = needCancel_8_differentFlag ^ needCancel_8_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_8_T_2 = io_brqRedirect_valid & (needCancel_8_flushItself | _needCancel_8_T); // @[Rob.scala 143:20]
  wire  needCancel_8 = _needCancel_8_T_2 & allocated_8 & ~committed_8; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_9_flushItself_T_1 = {uop_9_robIdx_flag,uop_9_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_9_flushItself_T_3 = _needCancel_9_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_9_flushItself = io_brqRedirect_bits_level & _needCancel_9_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_9_differentFlag = uop_9_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_9_compare = uop_9_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_9_T = needCancel_9_differentFlag ^ needCancel_9_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_9_T_2 = io_brqRedirect_valid & (needCancel_9_flushItself | _needCancel_9_T); // @[Rob.scala 143:20]
  wire  needCancel_9 = _needCancel_9_T_2 & allocated_9 & ~committed_9; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_10_flushItself_T_1 = {uop_10_robIdx_flag,uop_10_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_10_flushItself_T_3 = _needCancel_10_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_10_flushItself = io_brqRedirect_bits_level & _needCancel_10_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_10_differentFlag = uop_10_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_10_compare = uop_10_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_10_T = needCancel_10_differentFlag ^ needCancel_10_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_10_T_2 = io_brqRedirect_valid & (needCancel_10_flushItself | _needCancel_10_T); // @[Rob.scala 143:20]
  wire  needCancel_10 = _needCancel_10_T_2 & allocated_10 & ~committed_10; // @[StoreQueue.scala 787:78]
  wire [5:0] _needCancel_11_flushItself_T_1 = {uop_11_robIdx_flag,uop_11_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_11_flushItself_T_3 = _needCancel_11_flushItself_T_1 == _enqCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_11_flushItself = io_brqRedirect_bits_level & _needCancel_11_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_11_differentFlag = uop_11_robIdx_flag ^ io_brqRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_11_compare = uop_11_robIdx_value > io_brqRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_11_T = needCancel_11_differentFlag ^ needCancel_11_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_11_T_2 = io_brqRedirect_valid & (needCancel_11_flushItself | _needCancel_11_T); // @[Rob.scala 143:20]
  wire  needCancel_11 = _needCancel_11_T_2 & allocated_11 & ~committed_11; // @[StoreQueue.scala 787:78]
  reg  lastEnqCancel_REG_0; // @[StoreQueue.scala 796:39]
  reg  lastEnqCancel_REG_1; // @[StoreQueue.scala 796:39]
  reg  lastEnqCancel_REG_2; // @[StoreQueue.scala 796:39]
  reg  lastEnqCancel_REG_3; // @[StoreQueue.scala 796:39]
  wire [1:0] _lastEnqCancel_T_4 = lastEnqCancel_REG_0 + lastEnqCancel_REG_1; // @[Bitwise.scala 48:55]
  wire [1:0] _lastEnqCancel_T_6 = lastEnqCancel_REG_2 + lastEnqCancel_REG_3; // @[Bitwise.scala 48:55]
  wire [2:0] lastEnqCancel = _lastEnqCancel_T_4 + _lastEnqCancel_T_6; // @[Bitwise.scala 48:55]
  reg  lastCycleCancelCount_REG_0; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_1; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_2; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_3; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_4; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_5; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_6; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_7; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_8; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_9; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_10; // @[StoreQueue.scala 797:46]
  reg  lastCycleCancelCount_REG_11; // @[StoreQueue.scala 797:46]
  wire [1:0] _lastCycleCancelCount_T = lastCycleCancelCount_REG_1 + lastCycleCancelCount_REG_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15947 = {{1'd0}, lastCycleCancelCount_REG_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_2 = _GEN_15947 + _lastCycleCancelCount_T; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_4 = lastCycleCancelCount_REG_4 + lastCycleCancelCount_REG_5; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15948 = {{1'd0}, lastCycleCancelCount_REG_3}; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_6 = _GEN_15948 + _lastCycleCancelCount_T_4; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_8 = _lastCycleCancelCount_T_2[1:0] + _lastCycleCancelCount_T_6[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_10 = lastCycleCancelCount_REG_7 + lastCycleCancelCount_REG_8; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15949 = {{1'd0}, lastCycleCancelCount_REG_6}; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_12 = _GEN_15949 + _lastCycleCancelCount_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_14 = lastCycleCancelCount_REG_10 + lastCycleCancelCount_REG_11; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15950 = {{1'd0}, lastCycleCancelCount_REG_9}; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_16 = _GEN_15950 + _lastCycleCancelCount_T_14; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_18 = _lastCycleCancelCount_T_12[1:0] + _lastCycleCancelCount_T_16[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] lastCycleCancelCount = _lastCycleCancelCount_T_8 + _lastCycleCancelCount_T_18; // @[Bitwise.scala 48:55]
  reg  lastCycleRedirect; // @[StoreQueue.scala 798:34]
  wire [1:0] _enqNumber_T_3 = io_enq_req_0_valid + io_enq_req_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _enqNumber_T_5 = io_enq_req_2_valid + io_enq_req_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _enqNumber_T_7 = _enqNumber_T_3 + _enqNumber_T_5; // @[Bitwise.scala 48:55]
  wire [2:0] enqNumber = ~lastCycleRedirect & io_enq_canAccept & io_enq_lqCanAccept ? _enqNumber_T_7 : 3'h0; // @[StoreQueue.scala 799:22]
  reg  lastlastCycleRedirect; // @[StoreQueue.scala 801:36]
  wire [3:0] _GEN_15951 = {{1'd0}, lastEnqCancel}; // @[StoreQueue.scala 802:60]
  wire [3:0] _redirectCancelCount_T_1 = lastCycleCancelCount + _GEN_15951; // @[StoreQueue.scala 802:60]
  reg [3:0] redirectCancelCount; // @[Reg.scala 16:16]
  wire [3:0] _flipped_new_ptr_T_1 = 4'hc - redirectCancelCount; // @[CircularQueuePtr.scala 54:50]
  wire [4:0] flipped_new_ptr_new_value = enqPtrExt_0_value + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _flipped_new_ptr_diff_T_1 = {1'h0,flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] flipped_new_ptr_diff = $signed(_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  flipped_new_ptr_reverse_flag = $signed(flipped_new_ptr_diff) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire  flipped_new_ptr_flag = flipped_new_ptr_reverse_flag ? ~enqPtrExt_0_flag : enqPtrExt_0_flag; // @[CircularQueuePtr.scala 44:26]
  wire [5:0] _flipped_new_ptr_new_ptr_value_T = $signed(_flipped_new_ptr_diff_T_1) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _flipped_new_ptr_new_ptr_value_T_1 = flipped_new_ptr_reverse_flag ? _flipped_new_ptr_new_ptr_value_T : {{1
    'd0}, flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 45:27]
  wire  new_ptr_2_flag = ~flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
  wire [3:0] _GEN_15952 = {{1'd0}, enqNumber}; // @[CircularQueuePtr.scala 41:34]
  wire [4:0] new_value_2 = enqPtrExt_0_value + _GEN_15952; // @[CircularQueuePtr.scala 41:34]
  wire [5:0] _diff_T_13 = {1'h0,new_value_2}; // @[CircularQueuePtr.scala 42:43]
  wire [5:0] diff_2 = $signed(_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 42:50]
  wire  reverse_flag_2 = $signed(diff_2) >= 6'sh0; // @[CircularQueuePtr.scala 43:31]
  wire [5:0] _new_ptr_value_T_4 = $signed(_diff_T_13) - 6'shc; // @[CircularQueuePtr.scala 46:14]
  wire [5:0] _new_ptr_value_T_5 = reverse_flag_2 ? _new_ptr_value_T_4 : {{1'd0}, new_value_2}; // @[CircularQueuePtr.scala 45:27]
  wire [3:0] flipped_new_ptr_value = _flipped_new_ptr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [3:0] new_ptr_6_value = _new_ptr_value_T_5[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  wire [1:0] _valid_cnt_T = allocated_1 + allocated_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15956 = {{1'd0}, allocated_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_2 = _GEN_15956 + _valid_cnt_T; // @[Bitwise.scala 48:55]
  wire [1:0] _valid_cnt_T_4 = allocated_4 + allocated_5; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15957 = {{1'd0}, allocated_3}; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_6 = _GEN_15957 + _valid_cnt_T_4; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_8 = _valid_cnt_T_2[1:0] + _valid_cnt_T_6[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _valid_cnt_T_10 = allocated_7 + allocated_8; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15958 = {{1'd0}, allocated_6}; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_12 = _GEN_15958 + _valid_cnt_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _valid_cnt_T_14 = allocated_10 + allocated_11; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15959 = {{1'd0}, allocated_9}; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_16 = _GEN_15959 + _valid_cnt_T_14; // @[Bitwise.scala 48:55]
  wire [2:0] _valid_cnt_T_18 = _valid_cnt_T_12[1:0] + _valid_cnt_T_16[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] valid_cnt = _valid_cnt_T_8 + _valid_cnt_T_18; // @[Bitwise.scala 48:55]
  reg  io_force_write_REG; // @[StoreQueue.scala 827:28]
  reg  io_sqEmpty_REG; // @[StoreQueue.scala 833:24]
  wire  _T_130 = ~io_mmioStout_ready; // @[StoreQueue.scala 843:61]
  wire [3:0] _T_161 = 4'hc / 3'h4; // @[StoreQueue.scala 854:60]
  wire [3:0] _T_165 = 4'hc / 2'h2; // @[StoreQueue.scala 855:105]
  wire [5:0] _T_170 = 4'hc * 2'h3; // @[StoreQueue.scala 856:105]
  wire [5:0] _T_171 = _T_170 / 3'h4; // @[StoreQueue.scala 856:109]
  wire [5:0] _GEN_15960 = {{2'd0}, validCount}; // @[StoreQueue.scala 856:85]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  SQDataModule dataModule ( // @[StoreQueue.scala 100:26]
    .clock(dataModule_clock),
    .io_raddr_0(dataModule_io_raddr_0),
    .io_raddr_1(dataModule_io_raddr_1),
    .io_rdata_0_mask(dataModule_io_rdata_0_mask),
    .io_rdata_0_data(dataModule_io_rdata_0_data),
    .io_rdata_1_mask(dataModule_io_rdata_1_mask),
    .io_rdata_1_data(dataModule_io_rdata_1_data),
    .io_data_wen_0(dataModule_io_data_wen_0),
    .io_data_wen_1(dataModule_io_data_wen_1),
    .io_data_waddr_0(dataModule_io_data_waddr_0),
    .io_data_waddr_1(dataModule_io_data_waddr_1),
    .io_data_wdata_0(dataModule_io_data_wdata_0),
    .io_data_wdata_1(dataModule_io_data_wdata_1),
    .io_mask_wen_0(dataModule_io_mask_wen_0),
    .io_mask_wen_1(dataModule_io_mask_wen_1),
    .io_mask_waddr_0(dataModule_io_mask_waddr_0),
    .io_mask_waddr_1(dataModule_io_mask_waddr_1),
    .io_mask_wdata_0(dataModule_io_mask_wdata_0),
    .io_mask_wdata_1(dataModule_io_mask_wdata_1),
    .io_needForward_0_0(dataModule_io_needForward_0_0),
    .io_needForward_0_1(dataModule_io_needForward_0_1),
    .io_needForward_1_0(dataModule_io_needForward_1_0),
    .io_needForward_1_1(dataModule_io_needForward_1_1),
    .io_forwardMask_0_0(dataModule_io_forwardMask_0_0),
    .io_forwardMask_0_1(dataModule_io_forwardMask_0_1),
    .io_forwardMask_0_2(dataModule_io_forwardMask_0_2),
    .io_forwardMask_0_3(dataModule_io_forwardMask_0_3),
    .io_forwardMask_0_4(dataModule_io_forwardMask_0_4),
    .io_forwardMask_0_5(dataModule_io_forwardMask_0_5),
    .io_forwardMask_0_6(dataModule_io_forwardMask_0_6),
    .io_forwardMask_0_7(dataModule_io_forwardMask_0_7),
    .io_forwardMask_0_8(dataModule_io_forwardMask_0_8),
    .io_forwardMask_0_9(dataModule_io_forwardMask_0_9),
    .io_forwardMask_0_10(dataModule_io_forwardMask_0_10),
    .io_forwardMask_0_11(dataModule_io_forwardMask_0_11),
    .io_forwardMask_0_12(dataModule_io_forwardMask_0_12),
    .io_forwardMask_0_13(dataModule_io_forwardMask_0_13),
    .io_forwardMask_0_14(dataModule_io_forwardMask_0_14),
    .io_forwardMask_0_15(dataModule_io_forwardMask_0_15),
    .io_forwardMask_1_0(dataModule_io_forwardMask_1_0),
    .io_forwardMask_1_1(dataModule_io_forwardMask_1_1),
    .io_forwardMask_1_2(dataModule_io_forwardMask_1_2),
    .io_forwardMask_1_3(dataModule_io_forwardMask_1_3),
    .io_forwardMask_1_4(dataModule_io_forwardMask_1_4),
    .io_forwardMask_1_5(dataModule_io_forwardMask_1_5),
    .io_forwardMask_1_6(dataModule_io_forwardMask_1_6),
    .io_forwardMask_1_7(dataModule_io_forwardMask_1_7),
    .io_forwardMask_1_8(dataModule_io_forwardMask_1_8),
    .io_forwardMask_1_9(dataModule_io_forwardMask_1_9),
    .io_forwardMask_1_10(dataModule_io_forwardMask_1_10),
    .io_forwardMask_1_11(dataModule_io_forwardMask_1_11),
    .io_forwardMask_1_12(dataModule_io_forwardMask_1_12),
    .io_forwardMask_1_13(dataModule_io_forwardMask_1_13),
    .io_forwardMask_1_14(dataModule_io_forwardMask_1_14),
    .io_forwardMask_1_15(dataModule_io_forwardMask_1_15),
    .io_forwardData_0_0(dataModule_io_forwardData_0_0),
    .io_forwardData_0_1(dataModule_io_forwardData_0_1),
    .io_forwardData_0_2(dataModule_io_forwardData_0_2),
    .io_forwardData_0_3(dataModule_io_forwardData_0_3),
    .io_forwardData_0_4(dataModule_io_forwardData_0_4),
    .io_forwardData_0_5(dataModule_io_forwardData_0_5),
    .io_forwardData_0_6(dataModule_io_forwardData_0_6),
    .io_forwardData_0_7(dataModule_io_forwardData_0_7),
    .io_forwardData_0_8(dataModule_io_forwardData_0_8),
    .io_forwardData_0_9(dataModule_io_forwardData_0_9),
    .io_forwardData_0_10(dataModule_io_forwardData_0_10),
    .io_forwardData_0_11(dataModule_io_forwardData_0_11),
    .io_forwardData_0_12(dataModule_io_forwardData_0_12),
    .io_forwardData_0_13(dataModule_io_forwardData_0_13),
    .io_forwardData_0_14(dataModule_io_forwardData_0_14),
    .io_forwardData_0_15(dataModule_io_forwardData_0_15),
    .io_forwardData_1_0(dataModule_io_forwardData_1_0),
    .io_forwardData_1_1(dataModule_io_forwardData_1_1),
    .io_forwardData_1_2(dataModule_io_forwardData_1_2),
    .io_forwardData_1_3(dataModule_io_forwardData_1_3),
    .io_forwardData_1_4(dataModule_io_forwardData_1_4),
    .io_forwardData_1_5(dataModule_io_forwardData_1_5),
    .io_forwardData_1_6(dataModule_io_forwardData_1_6),
    .io_forwardData_1_7(dataModule_io_forwardData_1_7),
    .io_forwardData_1_8(dataModule_io_forwardData_1_8),
    .io_forwardData_1_9(dataModule_io_forwardData_1_9),
    .io_forwardData_1_10(dataModule_io_forwardData_1_10),
    .io_forwardData_1_11(dataModule_io_forwardData_1_11),
    .io_forwardData_1_12(dataModule_io_forwardData_1_12),
    .io_forwardData_1_13(dataModule_io_forwardData_1_13),
    .io_forwardData_1_14(dataModule_io_forwardData_1_14),
    .io_forwardData_1_15(dataModule_io_forwardData_1_15)
  );
  SQAddrModule paddrModule ( // @[StoreQueue.scala 107:27]
    .clock(paddrModule_clock),
    .io_raddr_0(paddrModule_io_raddr_0),
    .io_raddr_1(paddrModule_io_raddr_1),
    .io_rdata_0(paddrModule_io_rdata_0),
    .io_rdata_1(paddrModule_io_rdata_1),
    .io_rlineflag_0(paddrModule_io_rlineflag_0),
    .io_rlineflag_1(paddrModule_io_rlineflag_1),
    .io_wen_0(paddrModule_io_wen_0),
    .io_wen_1(paddrModule_io_wen_1),
    .io_waddr_0(paddrModule_io_waddr_0),
    .io_waddr_1(paddrModule_io_waddr_1),
    .io_wdata_0(paddrModule_io_wdata_0),
    .io_wdata_1(paddrModule_io_wdata_1),
    .io_wmask_0(paddrModule_io_wmask_0),
    .io_wmask_1(paddrModule_io_wmask_1),
    .io_wlineflag_0(paddrModule_io_wlineflag_0),
    .io_wlineflag_1(paddrModule_io_wlineflag_1),
    .io_forwardMdata_0(paddrModule_io_forwardMdata_0),
    .io_forwardMdata_1(paddrModule_io_forwardMdata_1),
    .io_forwardDataMask_0(paddrModule_io_forwardDataMask_0),
    .io_forwardDataMask_1(paddrModule_io_forwardDataMask_1),
    .io_forwardMmask_0_0(paddrModule_io_forwardMmask_0_0),
    .io_forwardMmask_0_1(paddrModule_io_forwardMmask_0_1),
    .io_forwardMmask_0_2(paddrModule_io_forwardMmask_0_2),
    .io_forwardMmask_0_3(paddrModule_io_forwardMmask_0_3),
    .io_forwardMmask_0_4(paddrModule_io_forwardMmask_0_4),
    .io_forwardMmask_0_5(paddrModule_io_forwardMmask_0_5),
    .io_forwardMmask_0_6(paddrModule_io_forwardMmask_0_6),
    .io_forwardMmask_0_7(paddrModule_io_forwardMmask_0_7),
    .io_forwardMmask_0_8(paddrModule_io_forwardMmask_0_8),
    .io_forwardMmask_0_9(paddrModule_io_forwardMmask_0_9),
    .io_forwardMmask_0_10(paddrModule_io_forwardMmask_0_10),
    .io_forwardMmask_0_11(paddrModule_io_forwardMmask_0_11),
    .io_forwardMmask_1_0(paddrModule_io_forwardMmask_1_0),
    .io_forwardMmask_1_1(paddrModule_io_forwardMmask_1_1),
    .io_forwardMmask_1_2(paddrModule_io_forwardMmask_1_2),
    .io_forwardMmask_1_3(paddrModule_io_forwardMmask_1_3),
    .io_forwardMmask_1_4(paddrModule_io_forwardMmask_1_4),
    .io_forwardMmask_1_5(paddrModule_io_forwardMmask_1_5),
    .io_forwardMmask_1_6(paddrModule_io_forwardMmask_1_6),
    .io_forwardMmask_1_7(paddrModule_io_forwardMmask_1_7),
    .io_forwardMmask_1_8(paddrModule_io_forwardMmask_1_8),
    .io_forwardMmask_1_9(paddrModule_io_forwardMmask_1_9),
    .io_forwardMmask_1_10(paddrModule_io_forwardMmask_1_10),
    .io_forwardMmask_1_11(paddrModule_io_forwardMmask_1_11)
  );
  SQAddrModule_1 vaddrModule ( // @[StoreQueue.scala 115:27]
    .clock(vaddrModule_clock),
    .io_raddr_0(vaddrModule_io_raddr_0),
    .io_raddr_1(vaddrModule_io_raddr_1),
    .io_raddr_2(vaddrModule_io_raddr_2),
    .io_rdata_0(vaddrModule_io_rdata_0),
    .io_rdata_1(vaddrModule_io_rdata_1),
    .io_rdata_2(vaddrModule_io_rdata_2),
    .io_wen_0(vaddrModule_io_wen_0),
    .io_wen_1(vaddrModule_io_wen_1),
    .io_waddr_0(vaddrModule_io_waddr_0),
    .io_waddr_1(vaddrModule_io_waddr_1),
    .io_wdata_0(vaddrModule_io_wdata_0),
    .io_wdata_1(vaddrModule_io_wdata_1),
    .io_wmask_0(vaddrModule_io_wmask_0),
    .io_wmask_1(vaddrModule_io_wmask_1),
    .io_wlineflag_0(vaddrModule_io_wlineflag_0),
    .io_wlineflag_1(vaddrModule_io_wlineflag_1),
    .io_forwardMdata_0(vaddrModule_io_forwardMdata_0),
    .io_forwardMdata_1(vaddrModule_io_forwardMdata_1),
    .io_forwardDataMask_0(vaddrModule_io_forwardDataMask_0),
    .io_forwardDataMask_1(vaddrModule_io_forwardDataMask_1),
    .io_forwardMmask_0_0(vaddrModule_io_forwardMmask_0_0),
    .io_forwardMmask_0_1(vaddrModule_io_forwardMmask_0_1),
    .io_forwardMmask_0_2(vaddrModule_io_forwardMmask_0_2),
    .io_forwardMmask_0_3(vaddrModule_io_forwardMmask_0_3),
    .io_forwardMmask_0_4(vaddrModule_io_forwardMmask_0_4),
    .io_forwardMmask_0_5(vaddrModule_io_forwardMmask_0_5),
    .io_forwardMmask_0_6(vaddrModule_io_forwardMmask_0_6),
    .io_forwardMmask_0_7(vaddrModule_io_forwardMmask_0_7),
    .io_forwardMmask_0_8(vaddrModule_io_forwardMmask_0_8),
    .io_forwardMmask_0_9(vaddrModule_io_forwardMmask_0_9),
    .io_forwardMmask_0_10(vaddrModule_io_forwardMmask_0_10),
    .io_forwardMmask_0_11(vaddrModule_io_forwardMmask_0_11),
    .io_forwardMmask_1_0(vaddrModule_io_forwardMmask_1_0),
    .io_forwardMmask_1_1(vaddrModule_io_forwardMmask_1_1),
    .io_forwardMmask_1_2(vaddrModule_io_forwardMmask_1_2),
    .io_forwardMmask_1_3(vaddrModule_io_forwardMmask_1_3),
    .io_forwardMmask_1_4(vaddrModule_io_forwardMmask_1_4),
    .io_forwardMmask_1_5(vaddrModule_io_forwardMmask_1_5),
    .io_forwardMmask_1_6(vaddrModule_io_forwardMmask_1_6),
    .io_forwardMmask_1_7(vaddrModule_io_forwardMmask_1_7),
    .io_forwardMmask_1_8(vaddrModule_io_forwardMmask_1_8),
    .io_forwardMmask_1_9(vaddrModule_io_forwardMmask_1_9),
    .io_forwardMmask_1_10(vaddrModule_io_forwardMmask_1_10),
    .io_forwardMmask_1_11(vaddrModule_io_forwardMmask_1_11)
  );
  DatamoduleResultBuffer dataBuffer ( // @[StoreQueue.scala 123:26]
    .clock(dataBuffer_clock),
    .reset(dataBuffer_reset),
    .io_enq_0_ready(dataBuffer_io_enq_0_ready),
    .io_enq_0_valid(dataBuffer_io_enq_0_valid),
    .io_enq_0_bits_addr(dataBuffer_io_enq_0_bits_addr),
    .io_enq_0_bits_vaddr(dataBuffer_io_enq_0_bits_vaddr),
    .io_enq_0_bits_data(dataBuffer_io_enq_0_bits_data),
    .io_enq_0_bits_mask(dataBuffer_io_enq_0_bits_mask),
    .io_enq_0_bits_wline(dataBuffer_io_enq_0_bits_wline),
    .io_enq_0_bits_sqPtr_value(dataBuffer_io_enq_0_bits_sqPtr_value),
    .io_enq_1_ready(dataBuffer_io_enq_1_ready),
    .io_enq_1_valid(dataBuffer_io_enq_1_valid),
    .io_enq_1_bits_addr(dataBuffer_io_enq_1_bits_addr),
    .io_enq_1_bits_vaddr(dataBuffer_io_enq_1_bits_vaddr),
    .io_enq_1_bits_data(dataBuffer_io_enq_1_bits_data),
    .io_enq_1_bits_mask(dataBuffer_io_enq_1_bits_mask),
    .io_enq_1_bits_wline(dataBuffer_io_enq_1_bits_wline),
    .io_enq_1_bits_sqPtr_value(dataBuffer_io_enq_1_bits_sqPtr_value),
    .io_deq_0_ready(dataBuffer_io_deq_0_ready),
    .io_deq_0_valid(dataBuffer_io_deq_0_valid),
    .io_deq_0_bits_addr(dataBuffer_io_deq_0_bits_addr),
    .io_deq_0_bits_vaddr(dataBuffer_io_deq_0_bits_vaddr),
    .io_deq_0_bits_data(dataBuffer_io_deq_0_bits_data),
    .io_deq_0_bits_mask(dataBuffer_io_deq_0_bits_mask),
    .io_deq_0_bits_wline(dataBuffer_io_deq_0_bits_wline),
    .io_deq_0_bits_sqPtr_value(dataBuffer_io_deq_0_bits_sqPtr_value),
    .io_deq_1_ready(dataBuffer_io_deq_1_ready),
    .io_deq_1_valid(dataBuffer_io_deq_1_valid),
    .io_deq_1_bits_addr(dataBuffer_io_deq_1_bits_addr),
    .io_deq_1_bits_vaddr(dataBuffer_io_deq_1_bits_vaddr),
    .io_deq_1_bits_data(dataBuffer_io_deq_1_bits_data),
    .io_deq_1_bits_mask(dataBuffer_io_deq_1_bits_mask),
    .io_deq_1_bits_wline(dataBuffer_io_deq_1_bits_wline),
    .io_deq_1_bits_sqPtr_value(dataBuffer_io_deq_1_bits_sqPtr_value)
  );
  assign io_enq_canAccept = validCount <= 4'ha; // @[StoreQueue.scala 153:33]
  assign io_sbuffer_0_valid = dataBuffer_io_deq_0_valid; // @[StoreQueue.scala 722:25]
  assign io_sbuffer_0_bits_vaddr = dataBuffer_io_deq_0_bits_vaddr; // @[StoreQueue.scala 729:30]
  assign io_sbuffer_0_bits_data = dataBuffer_io_deq_0_bits_data; // @[StoreQueue.scala 730:30]
  assign io_sbuffer_0_bits_mask = dataBuffer_io_deq_0_bits_mask; // @[StoreQueue.scala 731:30]
  assign io_sbuffer_0_bits_addr = dataBuffer_io_deq_0_bits_addr; // @[StoreQueue.scala 728:30]
  assign io_sbuffer_0_bits_wline = dataBuffer_io_deq_0_bits_wline; // @[StoreQueue.scala 732:30]
  assign io_sbuffer_1_valid = dataBuffer_io_deq_1_valid; // @[StoreQueue.scala 722:25]
  assign io_sbuffer_1_bits_vaddr = dataBuffer_io_deq_1_bits_vaddr; // @[StoreQueue.scala 729:30]
  assign io_sbuffer_1_bits_data = dataBuffer_io_deq_1_bits_data; // @[StoreQueue.scala 730:30]
  assign io_sbuffer_1_bits_mask = dataBuffer_io_deq_1_bits_mask; // @[StoreQueue.scala 731:30]
  assign io_sbuffer_1_bits_addr = dataBuffer_io_deq_1_bits_addr; // @[StoreQueue.scala 728:30]
  assign io_sbuffer_1_bits_wline = dataBuffer_io_deq_1_bits_wline; // @[StoreQueue.scala 732:30]
  assign io_mmioStout_valid = uncacheState == 3'h3; // @[StoreQueue.scala 658:38]
  assign io_mmioStout_bits_uop_cf_trigger_backendEn_0 = 4'hb == deqPtrExt_0_value ? uop_11_cf_trigger_backendEn_0 :
    _GEN_14524; // @[StoreQueue.scala 659:{25,25}]
  assign io_mmioStout_bits_uop_robIdx_flag = 4'hb == deqPtrExt_0_value ? uop_11_robIdx_flag : _GEN_15316; // @[StoreQueue.scala 659:{25,25}]
  assign io_mmioStout_bits_uop_robIdx_value = 4'hb == deqPtrExt_0_value ? uop_11_robIdx_value : _GEN_15328; // @[StoreQueue.scala 659:{25,25}]
  assign io_mmioStout_bits_uop_lqIdx_flag = 4'hb == deqPtrExt_0_value ? uop_11_lqIdx_flag : _GEN_15340; // @[StoreQueue.scala 659:{25,25}]
  assign io_mmioStout_bits_uop_lqIdx_value = 4'hb == deqPtrExt_0_value ? uop_11_lqIdx_value : _GEN_15352; // @[StoreQueue.scala 659:{25,25}]
  assign io_forward_0_forwardMask_0 = dataModule_io_forwardMask_0_0; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_1 = dataModule_io_forwardMask_0_1; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_2 = dataModule_io_forwardMask_0_2; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_3 = dataModule_io_forwardMask_0_3; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_4 = dataModule_io_forwardMask_0_4; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_5 = dataModule_io_forwardMask_0_5; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_6 = dataModule_io_forwardMask_0_6; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_7 = dataModule_io_forwardMask_0_7; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_8 = dataModule_io_forwardMask_0_8; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_9 = dataModule_io_forwardMask_0_9; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_10 = dataModule_io_forwardMask_0_10; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_11 = dataModule_io_forwardMask_0_11; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_12 = dataModule_io_forwardMask_0_12; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_13 = dataModule_io_forwardMask_0_13; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_14 = dataModule_io_forwardMask_0_14; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardMask_15 = dataModule_io_forwardMask_0_15; // @[StoreQueue.scala 472:31]
  assign io_forward_0_forwardData_0 = dataModule_io_forwardData_0_0; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_1 = dataModule_io_forwardData_0_1; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_2 = dataModule_io_forwardData_0_2; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_3 = dataModule_io_forwardData_0_3; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_4 = dataModule_io_forwardData_0_4; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_5 = dataModule_io_forwardData_0_5; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_6 = dataModule_io_forwardData_0_6; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_7 = dataModule_io_forwardData_0_7; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_8 = dataModule_io_forwardData_0_8; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_9 = dataModule_io_forwardData_0_9; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_10 = dataModule_io_forwardData_0_10; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_11 = dataModule_io_forwardData_0_11; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_12 = dataModule_io_forwardData_0_12; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_13 = dataModule_io_forwardData_0_13; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_14 = dataModule_io_forwardData_0_14; // @[StoreQueue.scala 473:31]
  assign io_forward_0_forwardData_15 = dataModule_io_forwardData_0_15; // @[StoreQueue.scala 473:31]
  assign io_forward_0_dataInvalid = io_forward_0_dataInvalid_REG; // @[StoreQueue.scala 502:31]
  assign io_forward_0_matchInvalid = vpmaskNotEqual & vaddrMatchFailed_REG; // @[StoreQueue.scala 457:43]
  assign io_forward_0_addrInvalid = io_forward_0_addrInvalid_REG ? io_forward_0_addrInvalid_REG_1 : addrInvalidFlag; // @[StoreQueue.scala 555:37]
  assign io_forward_0_dataInvalidFast = |dataInvalidMask; // @[StoreQueue.scala 479:54]
  assign io_forward_0_dataInvalidSqIdx_flag = dataInvalidFlag ? _io_forward_0_dataInvalidSqIdx_flag_T_3 :
    io_forward_0_dataInvalidSqIdx_REG_flag; // @[StoreQueue.scala 567:28 568:43 572:38]
  assign io_forward_0_dataInvalidSqIdx_value = dataInvalidFlag ? dataInvalidSqIdx :
    io_forward_0_dataInvalidSqIdx_REG_value; // @[StoreQueue.scala 567:28 569:44 572:38]
  assign io_forward_0_addrInvalidSqIdx_flag = REG_9 ? io_forward_0_addrInvalidSqIdx_REG_flag : _GEN_14116; // @[StoreQueue.scala 546:57 547:38]
  assign io_forward_0_addrInvalidSqIdx_value = REG_9 ? io_forward_0_addrInvalidSqIdx_REG_value : _GEN_14117; // @[StoreQueue.scala 546:57 547:38]
  assign io_forward_1_forwardMask_0 = dataModule_io_forwardMask_1_0; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_1 = dataModule_io_forwardMask_1_1; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_2 = dataModule_io_forwardMask_1_2; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_3 = dataModule_io_forwardMask_1_3; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_4 = dataModule_io_forwardMask_1_4; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_5 = dataModule_io_forwardMask_1_5; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_6 = dataModule_io_forwardMask_1_6; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_7 = dataModule_io_forwardMask_1_7; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_8 = dataModule_io_forwardMask_1_8; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_9 = dataModule_io_forwardMask_1_9; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_10 = dataModule_io_forwardMask_1_10; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_11 = dataModule_io_forwardMask_1_11; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_12 = dataModule_io_forwardMask_1_12; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_13 = dataModule_io_forwardMask_1_13; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_14 = dataModule_io_forwardMask_1_14; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardMask_15 = dataModule_io_forwardMask_1_15; // @[StoreQueue.scala 472:31]
  assign io_forward_1_forwardData_0 = dataModule_io_forwardData_1_0; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_1 = dataModule_io_forwardData_1_1; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_2 = dataModule_io_forwardData_1_2; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_3 = dataModule_io_forwardData_1_3; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_4 = dataModule_io_forwardData_1_4; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_5 = dataModule_io_forwardData_1_5; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_6 = dataModule_io_forwardData_1_6; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_7 = dataModule_io_forwardData_1_7; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_8 = dataModule_io_forwardData_1_8; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_9 = dataModule_io_forwardData_1_9; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_10 = dataModule_io_forwardData_1_10; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_11 = dataModule_io_forwardData_1_11; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_12 = dataModule_io_forwardData_1_12; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_13 = dataModule_io_forwardData_1_13; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_14 = dataModule_io_forwardData_1_14; // @[StoreQueue.scala 473:31]
  assign io_forward_1_forwardData_15 = dataModule_io_forwardData_1_15; // @[StoreQueue.scala 473:31]
  assign io_forward_1_dataInvalid = io_forward_1_dataInvalid_REG; // @[StoreQueue.scala 502:31]
  assign io_forward_1_matchInvalid = vpmaskNotEqual_1 & vaddrMatchFailed_REG_1; // @[StoreQueue.scala 457:43]
  assign io_forward_1_addrInvalid = io_forward_1_addrInvalid_REG ? io_forward_1_addrInvalid_REG_1 : addrInvalidFlag_1; // @[StoreQueue.scala 555:37]
  assign io_forward_1_dataInvalidFast = |dataInvalidMask_1; // @[StoreQueue.scala 479:54]
  assign io_forward_1_dataInvalidSqIdx_flag = dataInvalidFlag_1 ? _io_forward_1_dataInvalidSqIdx_flag_T_3 :
    io_forward_1_dataInvalidSqIdx_REG_flag; // @[StoreQueue.scala 567:28 568:43 572:38]
  assign io_forward_1_dataInvalidSqIdx_value = dataInvalidFlag_1 ? dataInvalidSqIdx_1 :
    io_forward_1_dataInvalidSqIdx_REG_value; // @[StoreQueue.scala 567:28 569:44 572:38]
  assign io_forward_1_addrInvalidSqIdx_flag = REG_13 ? io_forward_1_addrInvalidSqIdx_REG_flag : _GEN_14122; // @[StoreQueue.scala 546:57 547:38]
  assign io_forward_1_addrInvalidSqIdx_value = REG_13 ? io_forward_1_addrInvalidSqIdx_REG_value : _GEN_14123; // @[StoreQueue.scala 546:57 547:38]
  assign io_uncache_req_valid = uncacheState == 3'h1; // @[StoreQueue.scala 620:40]
  assign io_uncache_req_bits_addr = paddrModule_io_rdata_0; // @[StoreQueue.scala 624:28 633:60]
  assign io_uncache_req_bits_data = _GEN_14200[63:0];
  assign io_uncache_req_bits_mask = _io_uncache_req_bits_mask_T_2[7:0];
  assign io_uncache_req_bits_atomic = 4'hb == io_uncache_req_bits_atomic_REG_value ? atomic_11 : _GEN_14212; // @[StoreQueue.scala 639:{30,30}]
  assign io_uncache_resp_ready = 1'h1; // @[StoreQueue.scala 655:25]
  assign io_exceptionAddr_vaddr = vaddrModule_io_rdata_2; // @[StoreQueue.scala 781:26]
  assign io_sqEmpty = io_sqEmpty_REG; // @[StoreQueue.scala 833:14]
  assign io_stAddrReadySqPtr_flag = addrReadyPtrExt_flag; // @[StoreQueue.scala 259:23]
  assign io_stAddrReadySqPtr_value = addrReadyPtrExt_value; // @[StoreQueue.scala 259:23]
  assign io_stAddrReadyVec_0 = io_stAddrReadyVec_0_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_1 = io_stAddrReadyVec_1_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_2 = io_stAddrReadyVec_2_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_3 = io_stAddrReadyVec_3_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_4 = io_stAddrReadyVec_4_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_5 = io_stAddrReadyVec_5_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_6 = io_stAddrReadyVec_6_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_7 = io_stAddrReadyVec_7_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_8 = io_stAddrReadyVec_8_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_9 = io_stAddrReadyVec_9_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_10 = io_stAddrReadyVec_10_REG; // @[StoreQueue.scala 248:26]
  assign io_stAddrReadyVec_11 = io_stAddrReadyVec_11_REG; // @[StoreQueue.scala 248:26]
  assign io_stDataReadySqPtr_flag = dataReadyPtrExt_flag; // @[StoreQueue.scala 279:23]
  assign io_stDataReadySqPtr_value = dataReadyPtrExt_value; // @[StoreQueue.scala 279:23]
  assign io_stDataReadyVec_0 = io_stDataReadyVec_0_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_1 = io_stDataReadyVec_1_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_2 = io_stDataReadyVec_2_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_3 = io_stDataReadyVec_3_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_4 = io_stDataReadyVec_4_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_5 = io_stDataReadyVec_5_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_6 = io_stDataReadyVec_6_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_7 = io_stDataReadyVec_7_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_8 = io_stDataReadyVec_8_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_9 = io_stDataReadyVec_9_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_10 = io_stDataReadyVec_10_REG; // @[StoreQueue.scala 268:26]
  assign io_stDataReadyVec_11 = io_stDataReadyVec_11_REG; // @[StoreQueue.scala 268:26]
  assign io_stIssuePtr_flag = enqPtrExt_0_flag; // @[StoreQueue.scala 280:17]
  assign io_stIssuePtr_value = enqPtrExt_0_value; // @[StoreQueue.scala 280:17]
  assign io_sqCancelCnt = redirectCancelCount; // @[StoreQueue.scala 820:18]
  assign io_sqDeq = io_sqDeq_REG_2; // @[StoreQueue.scala 190:12]
  assign io_force_write = io_force_write_REG; // @[StoreQueue.scala 827:18]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{5'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign dataModule_clock = clock;
  assign dataModule_io_raddr_0 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_value : _rdataPtrExtNext_T_4_0_value; // @[StoreQueue.scala 167:37]
  assign dataModule_io_raddr_1 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_1_value : _rdataPtrExtNext_T_4_1_value; // @[StoreQueue.scala 167:37]
  assign dataModule_io_data_wen_0 = io_storeDataIn_0_valid; // @[StoreQueue.scala 358:31 362:37 369:33]
  assign dataModule_io_data_wen_1 = io_storeDataIn_1_valid; // @[StoreQueue.scala 358:31 362:37 369:33]
  assign dataModule_io_data_waddr_0 = io_storeDataIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 362:37 364:35]
  assign dataModule_io_data_waddr_1 = io_storeDataIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 362:37 364:35]
  assign dataModule_io_data_wdata_0 = io_storeDataIn_0_bits_uop_ctrl_fuOpType == 7'h7 ? 128'h0 :
    _dataModule_io_data_wdata_0_T_26; // @[StoreQueue.scala 365:41]
  assign dataModule_io_data_wdata_1 = io_storeDataIn_1_bits_uop_ctrl_fuOpType == 7'h7 ? 128'h0 :
    _dataModule_io_data_wdata_1_T_26; // @[StoreQueue.scala 365:41]
  assign dataModule_io_mask_wen_0 = io_storeMaskIn_0_valid; // @[StoreQueue.scala 301:31 392:37 396:33]
  assign dataModule_io_mask_wen_1 = io_storeMaskIn_1_valid; // @[StoreQueue.scala 301:31 392:37 396:33]
  assign dataModule_io_mask_waddr_0 = io_storeMaskIn_0_bits_sqIdx_value; // @[StoreQueue.scala 392:37 394:35]
  assign dataModule_io_mask_waddr_1 = io_storeMaskIn_1_bits_sqIdx_value; // @[StoreQueue.scala 392:37 394:35]
  assign dataModule_io_mask_wdata_0 = io_storeMaskIn_0_bits_mask; // @[StoreQueue.scala 392:37 395:35]
  assign dataModule_io_mask_wdata_1 = io_storeMaskIn_1_bits_mask; // @[StoreQueue.scala 392:37 395:35]
  assign dataModule_io_needForward_0_0 = canForward1 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 439:52]
  assign dataModule_io_needForward_0_1 = canForward2 & _dataModule_io_needForward_0_0_T; // @[StoreQueue.scala 440:52]
  assign dataModule_io_needForward_1_0 = canForward1_1 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 439:52]
  assign dataModule_io_needForward_1_1 = canForward2_1 & _dataModule_io_needForward_1_0_T; // @[StoreQueue.scala 440:52]
  assign paddrModule_clock = clock;
  assign paddrModule_io_raddr_0 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_value : _rdataPtrExtNext_T_4_0_value; // @[StoreQueue.scala 167:37]
  assign paddrModule_io_raddr_1 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_1_value : _rdataPtrExtNext_T_4_1_value; // @[StoreQueue.scala 167:37]
  assign paddrModule_io_wen_0 = io_storeAddrIn_0_valid; // @[StoreQueue.scala 299:27 303:37 312:29]
  assign paddrModule_io_wen_1 = io_storeAddrIn_1_valid; // @[StoreQueue.scala 299:27 303:37 312:29]
  assign paddrModule_io_waddr_0 = io_storeAddrIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 303:37 308:31]
  assign paddrModule_io_waddr_1 = io_storeAddrIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 303:37 308:31]
  assign paddrModule_io_wdata_0 = io_storeAddrIn_0_bits_paddr; // @[StoreQueue.scala 303:37 309:31]
  assign paddrModule_io_wdata_1 = io_storeAddrIn_1_bits_paddr; // @[StoreQueue.scala 303:37 309:31]
  assign paddrModule_io_wmask_0 = io_storeAddrIn_0_bits_mask; // @[StoreQueue.scala 303:37 310:31]
  assign paddrModule_io_wmask_1 = io_storeAddrIn_1_bits_mask; // @[StoreQueue.scala 303:37 310:31]
  assign paddrModule_io_wlineflag_0 = io_storeAddrIn_0_bits_wlineflag; // @[StoreQueue.scala 303:37 311:35]
  assign paddrModule_io_wlineflag_1 = io_storeAddrIn_1_bits_wlineflag; // @[StoreQueue.scala 303:37 311:35]
  assign paddrModule_io_forwardMdata_0 = io_forward_0_paddr; // @[StoreQueue.scala 444:36]
  assign paddrModule_io_forwardMdata_1 = io_forward_1_paddr; // @[StoreQueue.scala 444:36]
  assign paddrModule_io_forwardDataMask_0 = io_forward_0_mask; // @[StoreQueue.scala 445:39]
  assign paddrModule_io_forwardDataMask_1 = io_forward_1_mask; // @[StoreQueue.scala 445:39]
  assign vaddrModule_clock = clock;
  assign vaddrModule_io_raddr_0 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_value : _rdataPtrExtNext_T_4_0_value; // @[StoreQueue.scala 167:37]
  assign vaddrModule_io_raddr_1 = _rdataPtrExtNext_T ? rdataPtrExtNext_new_ptr_1_value : _rdataPtrExtNext_T_4_1_value; // @[StoreQueue.scala 167:37]
  assign vaddrModule_io_raddr_2 = _vaddrModule_io_raddr_2_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
  assign vaddrModule_io_wen_0 = io_storeAddrIn_0_valid; // @[StoreQueue.scala 299:27 303:37 312:29]
  assign vaddrModule_io_wen_1 = io_storeAddrIn_1_valid; // @[StoreQueue.scala 299:27 303:37 312:29]
  assign vaddrModule_io_waddr_0 = io_storeAddrIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 303:37 308:31]
  assign vaddrModule_io_waddr_1 = io_storeAddrIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 303:37 308:31]
  assign vaddrModule_io_wdata_0 = io_storeAddrIn_0_bits_vaddr; // @[StoreQueue.scala 303:37 315:31]
  assign vaddrModule_io_wdata_1 = io_storeAddrIn_1_bits_vaddr; // @[StoreQueue.scala 303:37 315:31]
  assign vaddrModule_io_wmask_0 = io_storeAddrIn_0_bits_mask; // @[StoreQueue.scala 303:37 310:31]
  assign vaddrModule_io_wmask_1 = io_storeAddrIn_1_bits_mask; // @[StoreQueue.scala 303:37 310:31]
  assign vaddrModule_io_wlineflag_0 = io_storeAddrIn_0_bits_wlineflag; // @[StoreQueue.scala 303:37 311:35]
  assign vaddrModule_io_wlineflag_1 = io_storeAddrIn_1_bits_wlineflag; // @[StoreQueue.scala 303:37 311:35]
  assign vaddrModule_io_forwardMdata_0 = io_forward_0_vaddr; // @[StoreQueue.scala 442:36]
  assign vaddrModule_io_forwardMdata_1 = io_forward_1_vaddr; // @[StoreQueue.scala 442:36]
  assign vaddrModule_io_forwardDataMask_0 = io_forward_0_mask; // @[StoreQueue.scala 443:39]
  assign vaddrModule_io_forwardDataMask_1 = io_forward_1_mask; // @[StoreQueue.scala 443:39]
  assign dataBuffer_clock = clock;
  assign dataBuffer_reset = reset;
  assign dataBuffer_io_enq_0_valid = _GEN_15617 & _GEN_15629 & ~_GEN_15641; // @[StoreQueue.scala 708:68]
  assign dataBuffer_io_enq_0_bits_addr = paddrModule_io_rdata_0; // @[StoreQueue.scala 711:40]
  assign dataBuffer_io_enq_0_bits_vaddr = vaddrModule_io_rdata_0; // @[StoreQueue.scala 712:40]
  assign dataBuffer_io_enq_0_bits_data = dataModule_io_rdata_0_data; // @[StoreQueue.scala 713:40]
  assign dataBuffer_io_enq_0_bits_mask = dataModule_io_rdata_0_mask; // @[StoreQueue.scala 714:40]
  assign dataBuffer_io_enq_0_bits_wline = paddrModule_io_rlineflag_0; // @[StoreQueue.scala 715:40]
  assign dataBuffer_io_enq_0_bits_sqPtr_value = rdataPtrExt_0_value; // @[StoreQueue.scala 716:40]
  assign dataBuffer_io_enq_1_valid = _GEN_15677 & _GEN_15689 & ~_GEN_15641; // @[StoreQueue.scala 708:68]
  assign dataBuffer_io_enq_1_bits_addr = paddrModule_io_rdata_1; // @[StoreQueue.scala 711:40]
  assign dataBuffer_io_enq_1_bits_vaddr = vaddrModule_io_rdata_1; // @[StoreQueue.scala 712:40]
  assign dataBuffer_io_enq_1_bits_data = dataModule_io_rdata_1_data; // @[StoreQueue.scala 713:40]
  assign dataBuffer_io_enq_1_bits_mask = dataModule_io_rdata_1_mask; // @[StoreQueue.scala 714:40]
  assign dataBuffer_io_enq_1_bits_wline = paddrModule_io_rlineflag_1; // @[StoreQueue.scala 715:40]
  assign dataBuffer_io_enq_1_bits_sqPtr_value = rdataPtrExt_1_value; // @[StoreQueue.scala 716:40]
  assign dataBuffer_io_deq_0_ready = io_sbuffer_0_ready; // @[StoreQueue.scala 723:32]
  assign dataBuffer_io_deq_1_ready = io_sbuffer_1_ready; // @[StoreQueue.scala 723:32]
  always @(posedge clock) begin
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_cf_trigger_backendEn_0 <= _GEN_7264;
      end
    end else begin
      uop_0_cf_trigger_backendEn_0 <= _GEN_7264;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_cf_storeSetHit <= _GEN_7444;
      end
    end else begin
      uop_0_cf_storeSetHit <= _GEN_7444;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_cf_ssid <= _GEN_7504;
      end
    end else begin
      uop_0_cf_ssid <= _GEN_7504;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h0 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_0_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_0_ctrl_fuOpType <= _GEN_12166;
      end
    end else begin
      uop_0_ctrl_fuOpType <= _GEN_12166;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_robIdx_flag <= _GEN_8068;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_8068;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_robIdx_value <= _GEN_8080;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_8080;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_lqIdx_flag <= _GEN_8092;
      end
    end else begin
      uop_0_lqIdx_flag <= _GEN_8092;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_0_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_0_lqIdx_value <= _GEN_8104;
      end
    end else begin
      uop_0_lqIdx_value <= _GEN_8104;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_cf_trigger_backendEn_0 <= _GEN_7265;
      end
    end else begin
      uop_1_cf_trigger_backendEn_0 <= _GEN_7265;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_cf_storeSetHit <= _GEN_7445;
      end
    end else begin
      uop_1_cf_storeSetHit <= _GEN_7445;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_cf_ssid <= _GEN_7505;
      end
    end else begin
      uop_1_cf_ssid <= _GEN_7505;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h1 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_1_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_1_ctrl_fuOpType <= _GEN_12167;
      end
    end else begin
      uop_1_ctrl_fuOpType <= _GEN_12167;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_robIdx_flag <= _GEN_8069;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_8069;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_robIdx_value <= _GEN_8081;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_8081;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_lqIdx_flag <= _GEN_8093;
      end
    end else begin
      uop_1_lqIdx_flag <= _GEN_8093;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_1_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_1_lqIdx_value <= _GEN_8105;
      end
    end else begin
      uop_1_lqIdx_value <= _GEN_8105;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_cf_trigger_backendEn_0 <= _GEN_7266;
      end
    end else begin
      uop_2_cf_trigger_backendEn_0 <= _GEN_7266;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_cf_storeSetHit <= _GEN_7446;
      end
    end else begin
      uop_2_cf_storeSetHit <= _GEN_7446;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_cf_ssid <= _GEN_7506;
      end
    end else begin
      uop_2_cf_ssid <= _GEN_7506;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h2 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_2_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_2_ctrl_fuOpType <= _GEN_12168;
      end
    end else begin
      uop_2_ctrl_fuOpType <= _GEN_12168;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_robIdx_flag <= _GEN_8070;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_8070;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_robIdx_value <= _GEN_8082;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_8082;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_lqIdx_flag <= _GEN_8094;
      end
    end else begin
      uop_2_lqIdx_flag <= _GEN_8094;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_2_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_2_lqIdx_value <= _GEN_8106;
      end
    end else begin
      uop_2_lqIdx_value <= _GEN_8106;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_cf_trigger_backendEn_0 <= _GEN_7267;
      end
    end else begin
      uop_3_cf_trigger_backendEn_0 <= _GEN_7267;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_cf_storeSetHit <= _GEN_7447;
      end
    end else begin
      uop_3_cf_storeSetHit <= _GEN_7447;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_cf_ssid <= _GEN_7507;
      end
    end else begin
      uop_3_cf_ssid <= _GEN_7507;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h3 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_3_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_3_ctrl_fuOpType <= _GEN_12169;
      end
    end else begin
      uop_3_ctrl_fuOpType <= _GEN_12169;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_robIdx_flag <= _GEN_8071;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_8071;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_robIdx_value <= _GEN_8083;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_8083;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_lqIdx_flag <= _GEN_8095;
      end
    end else begin
      uop_3_lqIdx_flag <= _GEN_8095;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_3_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_3_lqIdx_value <= _GEN_8107;
      end
    end else begin
      uop_3_lqIdx_value <= _GEN_8107;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_cf_trigger_backendEn_0 <= _GEN_7268;
      end
    end else begin
      uop_4_cf_trigger_backendEn_0 <= _GEN_7268;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_cf_storeSetHit <= _GEN_7448;
      end
    end else begin
      uop_4_cf_storeSetHit <= _GEN_7448;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_cf_ssid <= _GEN_7508;
      end
    end else begin
      uop_4_cf_ssid <= _GEN_7508;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h4 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_4_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_4_ctrl_fuOpType <= _GEN_12170;
      end
    end else begin
      uop_4_ctrl_fuOpType <= _GEN_12170;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_robIdx_flag <= _GEN_8072;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_8072;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_robIdx_value <= _GEN_8084;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_8084;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_lqIdx_flag <= _GEN_8096;
      end
    end else begin
      uop_4_lqIdx_flag <= _GEN_8096;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_4_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_4_lqIdx_value <= _GEN_8108;
      end
    end else begin
      uop_4_lqIdx_value <= _GEN_8108;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_cf_trigger_backendEn_0 <= _GEN_7269;
      end
    end else begin
      uop_5_cf_trigger_backendEn_0 <= _GEN_7269;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_cf_storeSetHit <= _GEN_7449;
      end
    end else begin
      uop_5_cf_storeSetHit <= _GEN_7449;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_cf_ssid <= _GEN_7509;
      end
    end else begin
      uop_5_cf_ssid <= _GEN_7509;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h5 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_5_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_5_ctrl_fuOpType <= _GEN_12171;
      end
    end else begin
      uop_5_ctrl_fuOpType <= _GEN_12171;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_robIdx_flag <= _GEN_8073;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_8073;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_robIdx_value <= _GEN_8085;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_8085;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_lqIdx_flag <= _GEN_8097;
      end
    end else begin
      uop_5_lqIdx_flag <= _GEN_8097;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_5_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_5_lqIdx_value <= _GEN_8109;
      end
    end else begin
      uop_5_lqIdx_value <= _GEN_8109;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_cf_trigger_backendEn_0 <= _GEN_7270;
      end
    end else begin
      uop_6_cf_trigger_backendEn_0 <= _GEN_7270;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_cf_storeSetHit <= _GEN_7450;
      end
    end else begin
      uop_6_cf_storeSetHit <= _GEN_7450;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_cf_ssid <= _GEN_7510;
      end
    end else begin
      uop_6_cf_ssid <= _GEN_7510;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h6 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_6_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_6_ctrl_fuOpType <= _GEN_12172;
      end
    end else begin
      uop_6_ctrl_fuOpType <= _GEN_12172;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_robIdx_flag <= _GEN_8074;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_8074;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_robIdx_value <= _GEN_8086;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_8086;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_lqIdx_flag <= _GEN_8098;
      end
    end else begin
      uop_6_lqIdx_flag <= _GEN_8098;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_6_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_6_lqIdx_value <= _GEN_8110;
      end
    end else begin
      uop_6_lqIdx_value <= _GEN_8110;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_cf_trigger_backendEn_0 <= _GEN_7271;
      end
    end else begin
      uop_7_cf_trigger_backendEn_0 <= _GEN_7271;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_cf_storeSetHit <= _GEN_7451;
      end
    end else begin
      uop_7_cf_storeSetHit <= _GEN_7451;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_cf_ssid <= _GEN_7511;
      end
    end else begin
      uop_7_cf_ssid <= _GEN_7511;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h7 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_7_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_7_ctrl_fuOpType <= _GEN_12173;
      end
    end else begin
      uop_7_ctrl_fuOpType <= _GEN_12173;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_robIdx_flag <= _GEN_8075;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_8075;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_robIdx_value <= _GEN_8087;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_8087;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_lqIdx_flag <= _GEN_8099;
      end
    end else begin
      uop_7_lqIdx_flag <= _GEN_8099;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_7_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_7_lqIdx_value <= _GEN_8111;
      end
    end else begin
      uop_7_lqIdx_value <= _GEN_8111;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_cf_trigger_backendEn_0 <= _GEN_7272;
      end
    end else begin
      uop_8_cf_trigger_backendEn_0 <= _GEN_7272;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_cf_storeSetHit <= _GEN_7452;
      end
    end else begin
      uop_8_cf_storeSetHit <= _GEN_7452;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_cf_ssid <= _GEN_7512;
      end
    end else begin
      uop_8_cf_ssid <= _GEN_7512;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h8 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_8_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_8_ctrl_fuOpType <= _GEN_12174;
      end
    end else begin
      uop_8_ctrl_fuOpType <= _GEN_12174;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_robIdx_flag <= _GEN_8076;
      end
    end else begin
      uop_8_robIdx_flag <= _GEN_8076;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_robIdx_value <= _GEN_8088;
      end
    end else begin
      uop_8_robIdx_value <= _GEN_8088;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_lqIdx_flag <= _GEN_8100;
      end
    end else begin
      uop_8_lqIdx_flag <= _GEN_8100;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_8_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_8_lqIdx_value <= _GEN_8112;
      end
    end else begin
      uop_8_lqIdx_value <= _GEN_8112;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_cf_trigger_backendEn_0 <= _GEN_7273;
      end
    end else begin
      uop_9_cf_trigger_backendEn_0 <= _GEN_7273;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_cf_storeSetHit <= _GEN_7453;
      end
    end else begin
      uop_9_cf_storeSetHit <= _GEN_7453;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_cf_ssid <= _GEN_7513;
      end
    end else begin
      uop_9_cf_ssid <= _GEN_7513;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'h9 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_9_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_9_ctrl_fuOpType <= _GEN_12175;
      end
    end else begin
      uop_9_ctrl_fuOpType <= _GEN_12175;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_robIdx_flag <= _GEN_8077;
      end
    end else begin
      uop_9_robIdx_flag <= _GEN_8077;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_robIdx_value <= _GEN_8089;
      end
    end else begin
      uop_9_robIdx_value <= _GEN_8089;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_lqIdx_flag <= _GEN_8101;
      end
    end else begin
      uop_9_lqIdx_flag <= _GEN_8101;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_9_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_9_lqIdx_value <= _GEN_8113;
      end
    end else begin
      uop_9_lqIdx_value <= _GEN_8113;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_cf_trigger_backendEn_0 <= _GEN_7274;
      end
    end else begin
      uop_10_cf_trigger_backendEn_0 <= _GEN_7274;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_cf_storeSetHit <= _GEN_7454;
      end
    end else begin
      uop_10_cf_storeSetHit <= _GEN_7454;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_cf_ssid <= _GEN_7514;
      end
    end else begin
      uop_10_cf_ssid <= _GEN_7514;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'ha == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_10_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_10_ctrl_fuOpType <= _GEN_12176;
      end
    end else begin
      uop_10_ctrl_fuOpType <= _GEN_12176;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_robIdx_flag <= _GEN_8078;
      end
    end else begin
      uop_10_robIdx_flag <= _GEN_8078;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_robIdx_value <= _GEN_8090;
      end
    end else begin
      uop_10_robIdx_value <= _GEN_8090;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_lqIdx_flag <= _GEN_8102;
      end
    end else begin
      uop_10_lqIdx_flag <= _GEN_8102;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_10_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_10_lqIdx_value <= _GEN_8114;
      end
    end else begin
      uop_10_lqIdx_value <= _GEN_8114;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_cf_trigger_backendEn_0 <= io_enq_req_3_bits_cf_trigger_backendEn_0; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_cf_trigger_backendEn_0 <= _GEN_7275;
      end
    end else begin
      uop_11_cf_trigger_backendEn_0 <= _GEN_7275;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_cf_storeSetHit <= io_enq_req_3_bits_cf_storeSetHit; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_cf_storeSetHit <= _GEN_7455;
      end
    end else begin
      uop_11_cf_storeSetHit <= _GEN_7455;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_cf_ssid <= io_enq_req_3_bits_cf_ssid; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_cf_ssid <= _GEN_7515;
      end
    end else begin
      uop_11_cf_ssid <= _GEN_7515;
    end
    if (io_storeAddrIn_1_valid) begin // @[StoreQueue.scala 303:37]
      if (4'hb == io_storeAddrIn_1_bits_uop_sqIdx_value) begin // @[StoreQueue.scala 324:27]
        uop_11_ctrl_fuOpType <= io_storeAddrIn_1_bits_uop_ctrl_fuOpType; // @[StoreQueue.scala 324:27]
      end else begin
        uop_11_ctrl_fuOpType <= _GEN_12177;
      end
    end else begin
      uop_11_ctrl_fuOpType <= _GEN_12177;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_robIdx_flag <= _GEN_8079;
      end
    end else begin
      uop_11_robIdx_flag <= _GEN_8079;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_robIdx_value <= _GEN_8091;
      end
    end else begin
      uop_11_robIdx_value <= _GEN_8091;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_lqIdx_flag <= io_enq_req_3_bits_lqIdx_flag; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_lqIdx_flag <= _GEN_8103;
      end
    end else begin
      uop_11_lqIdx_flag <= _GEN_8103;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[StoreQueue.scala 216:43]
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin // @[StoreQueue.scala 217:18]
        uop_11_lqIdx_value <= io_enq_req_3_bits_lqIdx_value; // @[StoreQueue.scala 217:18]
      end else begin
        uop_11_lqIdx_value <= _GEN_8115;
      end
    end else begin
      uop_11_lqIdx_value <= _GEN_8115;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_0 <= _GEN_15582;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_0 <= _GEN_15546;
      end else begin
        committed_0 <= _GEN_11112;
      end
    end else begin
      committed_0 <= _GEN_11112;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_1 <= _GEN_15583;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_1 <= _GEN_15547;
      end else begin
        committed_1 <= _GEN_11113;
      end
    end else begin
      committed_1 <= _GEN_11113;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_2 <= _GEN_15584;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_2 <= _GEN_15548;
      end else begin
        committed_2 <= _GEN_11114;
      end
    end else begin
      committed_2 <= _GEN_11114;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_3 <= _GEN_15585;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_3 <= _GEN_15549;
      end else begin
        committed_3 <= _GEN_11115;
      end
    end else begin
      committed_3 <= _GEN_11115;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_4 <= _GEN_15586;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_4 <= _GEN_15550;
      end else begin
        committed_4 <= _GEN_11116;
      end
    end else begin
      committed_4 <= _GEN_11116;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_5 <= _GEN_15587;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_5 <= _GEN_15551;
      end else begin
        committed_5 <= _GEN_11117;
      end
    end else begin
      committed_5 <= _GEN_11117;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_6 <= _GEN_15588;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_6 <= _GEN_15552;
      end else begin
        committed_6 <= _GEN_11118;
      end
    end else begin
      committed_6 <= _GEN_11118;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_7 <= _GEN_15589;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_7 <= _GEN_15553;
      end else begin
        committed_7 <= _GEN_11119;
      end
    end else begin
      committed_7 <= _GEN_11119;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_8 <= _GEN_15590;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_8 <= _GEN_15554;
      end else begin
        committed_8 <= _GEN_11120;
      end
    end else begin
      committed_8 <= _GEN_11120;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_9 <= _GEN_15591;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_9 <= _GEN_15555;
      end else begin
        committed_9 <= _GEN_11121;
      end
    end else begin
      committed_9 <= _GEN_11121;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_10 <= _GEN_15592;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_10 <= _GEN_15556;
      end else begin
        committed_10 <= _GEN_11122;
      end
    end else begin
      committed_10 <= _GEN_11122;
    end
    if (commitCount > 2'h1) begin // @[StoreQueue.scala 684:30]
      committed_11 <= _GEN_15593;
    end else if (_T_72) begin // @[StoreQueue.scala 684:30]
      if (uncacheState == 3'h0) begin // @[StoreQueue.scala 688:38]
        committed_11 <= _GEN_15557;
      end else begin
        committed_11 <= _GEN_11123;
      end
    end else begin
      committed_11 <= _GEN_11123;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h0 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_0 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_0 <= _GEN_13924;
      end
    end else begin
      pending_0 <= _GEN_13924;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h1 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_1 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_1 <= _GEN_13925;
      end
    end else begin
      pending_1 <= _GEN_13925;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h2 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_2 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_2 <= _GEN_13926;
      end
    end else begin
      pending_2 <= _GEN_13926;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h3 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_3 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_3 <= _GEN_13927;
      end
    end else begin
      pending_3 <= _GEN_13927;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h4 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_4 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_4 <= _GEN_13928;
      end
    end else begin
      pending_4 <= _GEN_13928;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h5 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_5 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_5 <= _GEN_13929;
      end
    end else begin
      pending_5 <= _GEN_13929;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h6 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_6 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_6 <= _GEN_13930;
      end
    end else begin
      pending_6 <= _GEN_13930;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h7 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_7 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_7 <= _GEN_13931;
      end
    end else begin
      pending_7 <= _GEN_13931;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h8 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_8 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_8 <= _GEN_13932;
      end
    end else begin
      pending_8 <= _GEN_13932;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'h9 == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_9 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_9 <= _GEN_13933;
      end
    end else begin
      pending_9 <= _GEN_13933;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'ha == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_10 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_10 <= _GEN_13934;
      end
    end else begin
      pending_10 <= _GEN_13934;
    end
    if (_T_66) begin // @[StoreQueue.scala 641:30]
      if (4'hb == deqPtrExt_0_value) begin // @[StoreQueue.scala 643:21]
        pending_11 <= 1'h0; // @[StoreQueue.scala 643:21]
      end else begin
        pending_11 <= _GEN_13935;
      end
    end else begin
      pending_11 <= _GEN_13935;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h0 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_0 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_0 <= _GEN_12658;
      end
    end else begin
      mmio_0 <= _GEN_12658;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h1 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_1 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_1 <= _GEN_12659;
      end
    end else begin
      mmio_1 <= _GEN_12659;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h2 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_2 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_2 <= _GEN_12660;
      end
    end else begin
      mmio_2 <= _GEN_12660;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h3 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_3 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_3 <= _GEN_12661;
      end
    end else begin
      mmio_3 <= _GEN_12661;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h4 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_4 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_4 <= _GEN_12662;
      end
    end else begin
      mmio_4 <= _GEN_12662;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h5 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_5 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_5 <= _GEN_12663;
      end
    end else begin
      mmio_5 <= _GEN_12663;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h6 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_6 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_6 <= _GEN_12664;
      end
    end else begin
      mmio_6 <= _GEN_12664;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h7 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_7 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_7 <= _GEN_12665;
      end
    end else begin
      mmio_7 <= _GEN_12665;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h8 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_8 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_8 <= _GEN_12666;
      end
    end else begin
      mmio_8 <= _GEN_12666;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h9 == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_9 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_9 <= _GEN_12667;
      end
    end else begin
      mmio_9 <= _GEN_12667;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'ha == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_10 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_10 <= _GEN_12668;
      end
    end else begin
      mmio_10 <= _GEN_12668;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'hb == stWbIndexReg_1) begin // @[StoreQueue.scala 341:26]
        mmio_11 <= io_storeAddrInRe_1_mmio; // @[StoreQueue.scala 341:26]
      end else begin
        mmio_11 <= _GEN_12669;
      end
    end else begin
      mmio_11 <= _GEN_12669;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h0 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_0 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_0 <= _GEN_12670;
      end
    end else begin
      atomic_0 <= _GEN_12670;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h1 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_1 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_1 <= _GEN_12671;
      end
    end else begin
      atomic_1 <= _GEN_12671;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h2 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_2 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_2 <= _GEN_12672;
      end
    end else begin
      atomic_2 <= _GEN_12672;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h3 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_3 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_3 <= _GEN_12673;
      end
    end else begin
      atomic_3 <= _GEN_12673;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h4 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_4 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_4 <= _GEN_12674;
      end
    end else begin
      atomic_4 <= _GEN_12674;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h5 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_5 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_5 <= _GEN_12675;
      end
    end else begin
      atomic_5 <= _GEN_12675;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h6 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_6 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_6 <= _GEN_12676;
      end
    end else begin
      atomic_6 <= _GEN_12676;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h7 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_7 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_7 <= _GEN_12677;
      end
    end else begin
      atomic_7 <= _GEN_12677;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h8 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_8 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_8 <= _GEN_12678;
      end
    end else begin
      atomic_8 <= _GEN_12678;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'h9 == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_9 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_9 <= _GEN_12679;
      end
    end else begin
      atomic_9 <= _GEN_12679;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'ha == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_10 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_10 <= _GEN_12680;
      end
    end else begin
      atomic_10 <= _GEN_12680;
    end
    if (storeAddrInFireReg_1) begin // @[StoreQueue.scala 339:31]
      if (4'hb == stWbIndexReg_1) begin // @[StoreQueue.scala 342:28]
        atomic_11 <= io_storeAddrInRe_1_atomic; // @[StoreQueue.scala 342:28]
      end else begin
        atomic_11 <= _GEN_12681;
      end
    end else begin
      atomic_11 <= _GEN_12681;
    end
    commitCount <= io_rob_scommit; // @[StoreQueue.scala 158:28]
    deqPtrExtNext_REG <= io_sbuffer_1_ready & io_sbuffer_1_valid; // @[Decoupled.scala 50:35]
    deqPtrExtNext_REG_1 <= io_sbuffer_0_ready & io_sbuffer_0_valid; // @[Decoupled.scala 50:35]
    io_sqDeq_REG <= io_sbuffer_1_ready & io_sbuffer_1_valid; // @[Decoupled.scala 50:35]
    io_sqDeq_REG_1 <= io_sbuffer_0_ready & io_sbuffer_0_valid; // @[Decoupled.scala 50:35]
    if (io_sqDeq_REG) begin // @[StoreQueue.scala 190:26]
      io_sqDeq_REG_2 <= 2'h2;
    end else begin
      io_sqDeq_REG_2 <= {{1'd0}, _io_sqDeq_T_3};
    end
    io_stAddrReadyVec_0_REG <= allocated_0 & (mmio_0 | addrvalid_0); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_1_REG <= allocated_1 & (mmio_1 | addrvalid_1); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_2_REG <= allocated_2 & (mmio_2 | addrvalid_2); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_3_REG <= allocated_3 & (mmio_3 | addrvalid_3); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_4_REG <= allocated_4 & (mmio_4 | addrvalid_4); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_5_REG <= allocated_5 & (mmio_5 | addrvalid_5); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_6_REG <= allocated_6 & (mmio_6 | addrvalid_6); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_7_REG <= allocated_7 & (mmio_7 | addrvalid_7); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_8_REG <= allocated_8 & (mmio_8 | addrvalid_8); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_9_REG <= allocated_9 & (mmio_9 | addrvalid_9); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_10_REG <= allocated_10 & (mmio_10 | addrvalid_10); // @[StoreQueue.scala 248:50]
    io_stAddrReadyVec_11_REG <= allocated_11 & (mmio_11 | addrvalid_11); // @[StoreQueue.scala 248:50]
    io_stDataReadyVec_0_REG <= allocated_0 & (mmio_0 | datavalid_0); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_1_REG <= allocated_1 & (mmio_1 | datavalid_1); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_2_REG <= allocated_2 & (mmio_2 | datavalid_2); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_3_REG <= allocated_3 & (mmio_3 | datavalid_3); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_4_REG <= allocated_4 & (mmio_4 | datavalid_4); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_5_REG <= allocated_5 & (mmio_5 | datavalid_5); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_6_REG <= allocated_6 & (mmio_6 | datavalid_6); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_7_REG <= allocated_7 & (mmio_7 | datavalid_7); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_8_REG <= allocated_8 & (mmio_8 | datavalid_8); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_9_REG <= allocated_9 & (mmio_9 | datavalid_9); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_10_REG <= allocated_10 & (mmio_10 | datavalid_10); // @[StoreQueue.scala 268:50]
    io_stDataReadyVec_11_REG <= allocated_11 & (mmio_11 | datavalid_11); // @[StoreQueue.scala 268:50]
    storeAddrInFireReg <= io_storeAddrIn_0_valid & addr_valid; // @[StoreQueue.scala 337:63]
    stWbIndexReg <= io_storeAddrIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 338:31]
    storeAddrInFireReg_1 <= io_storeAddrIn_1_valid & addr_valid_1; // @[StoreQueue.scala 337:63]
    stWbIndexReg_1 <= io_storeAddrIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 338:31]
    REG_2 <= io_storeDataIn_0_valid; // @[StoreQueue.scala 382:14]
    REG_3 <= io_storeDataIn_0_bits_uop_sqIdx_value; // @[StoreQueue.scala 385:24]
    REG_4 <= io_storeDataIn_1_valid; // @[StoreQueue.scala 382:14]
    REG_5 <= io_storeDataIn_1_bits_uop_sqIdx_value; // @[StoreQueue.scala 385:24]
    vpmaskNotEqual_REG <= {vpmaskNotEqual_hi,vpmaskNotEqual_lo}; // @[StoreQueue.scala 453:47]
    vpmaskNotEqual_REG_1 <= {dataModule_io_needForward_0_0_hi,dataModule_io_needForward_0_0_lo}; // @[StoreQueue.scala 453:96]
    if (differentFlag) begin // @[StoreQueue.scala 432:26]
      vpmaskNotEqual_REG_2 <= _needForward_T_1;
    end else begin
      vpmaskNotEqual_REG_2 <= _forwardMask1_T_1;
    end
    vpmaskNotEqual_REG_3 <= {vpmaskNotEqual_hi_2,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 455:28]
    vaddrMatchFailed_REG <= io_forward_0_valid; // @[StoreQueue.scala 457:53]
    dataInvalidMask1Reg_REG <= _dataInvalidMask1_T_5 & forwardMask1; // @[StoreQueue.scala 476:112]
    dataInvalidMask2Reg_REG <= _dataInvalidMask1_T_5 & forwardMask2; // @[StoreQueue.scala 477:112]
    addrInvalidMask1Reg_REG <= _addrInvalidMask1_T_3 & forwardMask1; // @[StoreQueue.scala 491:74]
    addrInvalidMask2Reg_REG <= _addrInvalidMask1_T_3 & forwardMask2; // @[StoreQueue.scala 492:74]
    io_forward_0_dataInvalid_REG <= io_forward_0_dataInvalidFast; // @[StoreQueue.scala 502:41]
    s2_differentFlag <= deqPtrExt_0_flag != io_forward_0_sqIdx_flag; // @[StoreQueue.scala 414:43]
    s2_enqPtrExt_flag <= enqPtrExt_0_flag; // @[StoreQueue.scala 510:31]
    s2_deqPtrExt_flag <= deqPtrExt_0_flag; // @[StoreQueue.scala 511:31]
    s2_deqPtrExt_value <= deqPtrExt_0_value; // @[StoreQueue.scala 511:31]
    REG_9 <= io_forward_0_uop_cf_loadWaitStrict; // @[StoreQueue.scala 546:18]
    io_forward_0_addrInvalidSqIdx_REG_flag <= ~io_forward_0_addrInvalidSqIdx_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
    io_forward_0_addrInvalidSqIdx_REG_value <= _io_forward_0_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
    io_forward_0_addrInvalidSqIdx_REG_1_flag <= io_forward_0_uop_sqIdx_flag; // @[StoreQueue.scala 553:48]
    io_forward_0_addrInvalidSqIdx_REG_1_value <= io_forward_0_uop_sqIdx_value; // @[StoreQueue.scala 553:48]
    io_forward_0_addrInvalid_REG <= io_forward_0_uop_cf_loadWaitStrict; // @[StoreQueue.scala 555:45]
    io_forward_0_addrInvalid_REG_1 <= |_hasInvalidAddr_T_2; // @[StoreQueue.scala 518:63]
    io_forward_0_dataInvalidSqIdx_REG_flag <= io_forward_0_uop_sqIdx_flag; // @[StoreQueue.scala 572:48]
    io_forward_0_dataInvalidSqIdx_REG_value <= io_forward_0_uop_sqIdx_value; // @[StoreQueue.scala 572:48]
    vpmaskNotEqual_REG_4 <= {vpmaskNotEqual_hi_3,vpmaskNotEqual_lo_3}; // @[StoreQueue.scala 453:47]
    vpmaskNotEqual_REG_5 <= {dataModule_io_needForward_1_0_hi,dataModule_io_needForward_1_0_lo}; // @[StoreQueue.scala 453:96]
    if (differentFlag_1) begin // @[StoreQueue.scala 432:26]
      vpmaskNotEqual_REG_6 <= _needForward_T_4;
    end else begin
      vpmaskNotEqual_REG_6 <= _forwardMask1_T_3;
    end
    vpmaskNotEqual_REG_7 <= {vpmaskNotEqual_hi_2,vpmaskNotEqual_lo_2}; // @[StoreQueue.scala 455:28]
    vaddrMatchFailed_REG_1 <= io_forward_1_valid; // @[StoreQueue.scala 457:53]
    dataInvalidMask1Reg_REG_1 <= _dataInvalidMask1_T_11 & forwardMask1_1; // @[StoreQueue.scala 476:112]
    dataInvalidMask2Reg_REG_1 <= _dataInvalidMask1_T_11 & forwardMask2_1; // @[StoreQueue.scala 477:112]
    addrInvalidMask1Reg_REG_1 <= _addrInvalidMask1_T_7 & forwardMask1_1; // @[StoreQueue.scala 491:74]
    addrInvalidMask2Reg_REG_1 <= _addrInvalidMask1_T_7 & forwardMask2_1; // @[StoreQueue.scala 492:74]
    io_forward_1_dataInvalid_REG <= io_forward_1_dataInvalidFast; // @[StoreQueue.scala 502:41]
    s2_differentFlag_1 <= deqPtrExt_0_flag != io_forward_1_sqIdx_flag; // @[StoreQueue.scala 414:43]
    s2_enqPtrExt_1_flag <= enqPtrExt_0_flag; // @[StoreQueue.scala 510:31]
    s2_deqPtrExt_1_flag <= deqPtrExt_0_flag; // @[StoreQueue.scala 511:31]
    s2_deqPtrExt_1_value <= deqPtrExt_0_value; // @[StoreQueue.scala 511:31]
    REG_13 <= io_forward_1_uop_cf_loadWaitStrict; // @[StoreQueue.scala 546:18]
    io_forward_1_addrInvalidSqIdx_REG_flag <= ~io_forward_1_addrInvalidSqIdx_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
    io_forward_1_addrInvalidSqIdx_REG_value <= _io_forward_1_addrInvalidSqIdx_flipped_new_ptr_new_ptr_value_T_1[3:0]; // @[CircularQueuePtr.scala 37:23 45:21]
    io_forward_1_addrInvalidSqIdx_REG_1_flag <= io_forward_1_uop_sqIdx_flag; // @[StoreQueue.scala 553:48]
    io_forward_1_addrInvalidSqIdx_REG_1_value <= io_forward_1_uop_sqIdx_value; // @[StoreQueue.scala 553:48]
    io_forward_1_addrInvalid_REG <= io_forward_1_uop_cf_loadWaitStrict; // @[StoreQueue.scala 555:45]
    io_forward_1_addrInvalid_REG_1 <= |_hasInvalidAddr_T_5; // @[StoreQueue.scala 518:63]
    io_forward_1_dataInvalidSqIdx_REG_flag <= io_forward_1_uop_sqIdx_flag; // @[StoreQueue.scala 572:48]
    io_forward_1_dataInvalidSqIdx_REG_value <= io_forward_1_uop_sqIdx_value; // @[StoreQueue.scala 572:48]
    REG_14 <= io_rob_pendingst & _GEN_14139 & _GEN_14151 & _GEN_14163 & _GEN_14175; // @[StoreQueue.scala 591:98]
    REG_15 <= _GEN_14198[3:2] == 2'h3; // @[package.scala 407:42]
    if (_rdataPtrExtNext_T) begin // @[StoreQueue.scala 167:37]
      io_uncache_req_bits_atomic_REG_value <= rdataPtrExtNext_new_ptr_value;
    end else if (_rdataPtrExtNext_T_1 | _rdataPtrExtNext_T_2) begin // @[StoreQueue.scala 169:8]
      io_uncache_req_bits_atomic_REG_value <= rdataPtrExtNext_new_ptr_2_value;
    end else begin
      io_uncache_req_bits_atomic_REG_value <= rdataPtrExt_0_value;
    end
    REG_16 <= io_sbuffer_0_ready & io_sbuffer_0_valid; // @[Decoupled.scala 50:35]
    if (_deqPtrExtNext_T_1) begin // @[Reg.scala 17:18]
      r <= dataBuffer_io_deq_0_bits_sqPtr_value; // @[Reg.scala 17:22]
    end
    REG_17 <= io_sbuffer_1_ready & io_sbuffer_1_valid; // @[Decoupled.scala 50:35]
    if (_deqPtrExtNext_T) begin // @[Reg.scala 17:18]
      r_1 <= dataBuffer_io_deq_1_bits_sqPtr_value; // @[Reg.scala 17:22]
    end
    lastEnqCancel_REG_0 <= io_enq_req_0_valid & enqCancel_0; // @[StoreQueue.scala 796:88]
    lastEnqCancel_REG_1 <= io_enq_req_1_valid & enqCancel_1; // @[StoreQueue.scala 796:88]
    lastEnqCancel_REG_2 <= io_enq_req_2_valid & enqCancel_2; // @[StoreQueue.scala 796:88]
    lastEnqCancel_REG_3 <= io_enq_req_3_valid & enqCancel_3; // @[StoreQueue.scala 796:88]
    lastCycleCancelCount_REG_0 <= _needCancel_0_T_2 & allocated_0 & ~committed_0; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_1 <= _needCancel_1_T_2 & allocated_1 & ~committed_1; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_2 <= _needCancel_2_T_2 & allocated_2 & ~committed_2; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_3 <= _needCancel_3_T_2 & allocated_3 & ~committed_3; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_4 <= _needCancel_4_T_2 & allocated_4 & ~committed_4; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_5 <= _needCancel_5_T_2 & allocated_5 & ~committed_5; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_6 <= _needCancel_6_T_2 & allocated_6 & ~committed_6; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_7 <= _needCancel_7_T_2 & allocated_7 & ~committed_7; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_8 <= _needCancel_8_T_2 & allocated_8 & ~committed_8; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_9 <= _needCancel_9_T_2 & allocated_9 & ~committed_9; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_10 <= _needCancel_10_T_2 & allocated_10 & ~committed_10; // @[StoreQueue.scala 787:78]
    lastCycleCancelCount_REG_11 <= _needCancel_11_T_2 & allocated_11 & ~committed_11; // @[StoreQueue.scala 787:78]
    lastCycleRedirect <= io_brqRedirect_valid; // @[StoreQueue.scala 798:34]
    lastlastCycleRedirect <= lastCycleRedirect; // @[StoreQueue.scala 801:36]
    if (lastCycleRedirect) begin // @[Reg.scala 17:18]
      redirectCancelCount <= _redirectCancelCount_T_1; // @[Reg.scala 17:22]
    end
    io_sqEmpty_REG <= enqPtrExt_0_value == deqPtrExt_0_value & _validCount_T; // @[StoreQueue.scala 834:47]
    io_perf_0_value_REG <= uncacheState != 3'h0; // @[StoreQueue.scala 850:38]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= io_mmioStout_ready & io_mmioStout_valid; // @[Decoupled.scala 50:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= io_mmioStout_valid & _T_130; // @[StoreQueue.scala 853:44]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= validCount < _T_161; // @[StoreQueue.scala 854:41]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= validCount > _T_161 & validCount <= _T_165; // @[StoreQueue.scala 855:67]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= validCount > _T_165 & _GEN_15960 <= _T_171; // @[StoreQueue.scala 856:67]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= _GEN_15960 > _T_171; // @[StoreQueue.scala 857:41]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_0 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_0) begin // @[StoreQueue.scala 740:42]
      allocated_0 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h0 == r_1) begin
        allocated_0 <= 1'h0;
      end else begin
        allocated_0 <= _GEN_15727;
      end
    end else begin
      allocated_0 <= _GEN_15727;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_1 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_1) begin // @[StoreQueue.scala 740:42]
      allocated_1 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h1 == r_1) begin
        allocated_1 <= 1'h0;
      end else begin
        allocated_1 <= _GEN_15728;
      end
    end else begin
      allocated_1 <= _GEN_15728;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_2 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_2) begin // @[StoreQueue.scala 740:42]
      allocated_2 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h2 == r_1) begin
        allocated_2 <= 1'h0;
      end else begin
        allocated_2 <= _GEN_15729;
      end
    end else begin
      allocated_2 <= _GEN_15729;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_3 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_3) begin // @[StoreQueue.scala 740:42]
      allocated_3 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h3 == r_1) begin
        allocated_3 <= 1'h0;
      end else begin
        allocated_3 <= _GEN_15730;
      end
    end else begin
      allocated_3 <= _GEN_15730;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_4 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_4) begin // @[StoreQueue.scala 740:42]
      allocated_4 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h4 == r_1) begin
        allocated_4 <= 1'h0;
      end else begin
        allocated_4 <= _GEN_15731;
      end
    end else begin
      allocated_4 <= _GEN_15731;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_5 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_5) begin // @[StoreQueue.scala 740:42]
      allocated_5 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h5 == r_1) begin
        allocated_5 <= 1'h0;
      end else begin
        allocated_5 <= _GEN_15732;
      end
    end else begin
      allocated_5 <= _GEN_15732;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_6 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_6) begin // @[StoreQueue.scala 740:42]
      allocated_6 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h6 == r_1) begin
        allocated_6 <= 1'h0;
      end else begin
        allocated_6 <= _GEN_15733;
      end
    end else begin
      allocated_6 <= _GEN_15733;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_7 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_7) begin // @[StoreQueue.scala 740:42]
      allocated_7 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h7 == r_1) begin
        allocated_7 <= 1'h0;
      end else begin
        allocated_7 <= _GEN_15734;
      end
    end else begin
      allocated_7 <= _GEN_15734;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_8 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_8) begin // @[StoreQueue.scala 740:42]
      allocated_8 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h8 == r_1) begin
        allocated_8 <= 1'h0;
      end else begin
        allocated_8 <= _GEN_15735;
      end
    end else begin
      allocated_8 <= _GEN_15735;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_9 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_9) begin // @[StoreQueue.scala 740:42]
      allocated_9 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'h9 == r_1) begin
        allocated_9 <= 1'h0;
      end else begin
        allocated_9 <= _GEN_15736;
      end
    end else begin
      allocated_9 <= _GEN_15736;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_10 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_10) begin // @[StoreQueue.scala 740:42]
      allocated_10 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'ha == r_1) begin
        allocated_10 <= 1'h0;
      end else begin
        allocated_10 <= _GEN_15737;
      end
    end else begin
      allocated_10 <= _GEN_15737;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 788:26]
      allocated_11 <= 1'h0; // @[StoreQueue.scala 789:20]
    end else if (needCancel_11) begin // @[StoreQueue.scala 740:42]
      allocated_11 <= 1'h0; // @[StoreQueue.scala 741:{55,55}]
    end else if (REG_17) begin
      if (4'hb == r_1) begin
        allocated_11 <= 1'h0;
      end else begin
        allocated_11 <= _GEN_15738;
      end
    end else begin
      allocated_11 <= _GEN_15738;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_0 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h0 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_0 <= addr_valid_1;
      end else begin
        addrvalid_0 <= _GEN_12028;
      end
    end else begin
      addrvalid_0 <= _GEN_12028;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_1 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h1 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_1 <= addr_valid_1;
      end else begin
        addrvalid_1 <= _GEN_12029;
      end
    end else begin
      addrvalid_1 <= _GEN_12029;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_2 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h2 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_2 <= addr_valid_1;
      end else begin
        addrvalid_2 <= _GEN_12030;
      end
    end else begin
      addrvalid_2 <= _GEN_12030;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_3 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h3 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_3 <= addr_valid_1;
      end else begin
        addrvalid_3 <= _GEN_12031;
      end
    end else begin
      addrvalid_3 <= _GEN_12031;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_4 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h4 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_4 <= addr_valid_1;
      end else begin
        addrvalid_4 <= _GEN_12032;
      end
    end else begin
      addrvalid_4 <= _GEN_12032;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_5 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h5 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_5 <= addr_valid_1;
      end else begin
        addrvalid_5 <= _GEN_12033;
      end
    end else begin
      addrvalid_5 <= _GEN_12033;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_6 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h6 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_6 <= addr_valid_1;
      end else begin
        addrvalid_6 <= _GEN_12034;
      end
    end else begin
      addrvalid_6 <= _GEN_12034;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_7 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h7 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_7 <= addr_valid_1;
      end else begin
        addrvalid_7 <= _GEN_12035;
      end
    end else begin
      addrvalid_7 <= _GEN_12035;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_8 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h8 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_8 <= addr_valid_1;
      end else begin
        addrvalid_8 <= _GEN_12036;
      end
    end else begin
      addrvalid_8 <= _GEN_12036;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_9 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'h9 == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_9 <= addr_valid_1;
      end else begin
        addrvalid_9 <= _GEN_12037;
      end
    end else begin
      addrvalid_9 <= _GEN_12037;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_10 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'ha == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_10 <= addr_valid_1;
      end else begin
        addrvalid_10 <= _GEN_12038;
      end
    end else begin
      addrvalid_10 <= _GEN_12038;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 303:37]
      addrvalid_11 <= 1'h0; // @[StoreQueue.scala 305:{28,28}]
    end else if (io_storeAddrIn_1_valid) begin
      if (4'hb == io_storeAddrIn_1_bits_uop_sqIdx_value) begin
        addrvalid_11 <= addr_valid_1;
      end else begin
        addrvalid_11 <= _GEN_12039;
      end
    end else begin
      addrvalid_11 <= _GEN_12039;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_0 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_0 <= _GEN_14086;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_0 <= _GEN_14035; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h0 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_0 <= 1'h0;
      end else begin
        datavalid_0 <= _GEN_8296;
      end
    end else begin
      datavalid_0 <= _GEN_8296;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_1 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_1 <= _GEN_14087;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_1 <= _GEN_14036; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h1 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_1 <= 1'h0;
      end else begin
        datavalid_1 <= _GEN_8297;
      end
    end else begin
      datavalid_1 <= _GEN_8297;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_2 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_2 <= _GEN_14088;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_2 <= _GEN_14037; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h2 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_2 <= 1'h0;
      end else begin
        datavalid_2 <= _GEN_8298;
      end
    end else begin
      datavalid_2 <= _GEN_8298;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_3 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_3 <= _GEN_14089;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_3 <= _GEN_14038; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h3 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_3 <= 1'h0;
      end else begin
        datavalid_3 <= _GEN_8299;
      end
    end else begin
      datavalid_3 <= _GEN_8299;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_4 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_4 <= _GEN_14090;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_4 <= _GEN_14039; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h4 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_4 <= 1'h0;
      end else begin
        datavalid_4 <= _GEN_8300;
      end
    end else begin
      datavalid_4 <= _GEN_8300;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_5 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_5 <= _GEN_14091;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_5 <= _GEN_14040; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h5 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_5 <= 1'h0;
      end else begin
        datavalid_5 <= _GEN_8301;
      end
    end else begin
      datavalid_5 <= _GEN_8301;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_6 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_6 <= _GEN_14092;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_6 <= _GEN_14041; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h6 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_6 <= 1'h0;
      end else begin
        datavalid_6 <= _GEN_8302;
      end
    end else begin
      datavalid_6 <= _GEN_8302;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_7 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_7 <= _GEN_14093;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_7 <= _GEN_14042; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h7 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_7 <= 1'h0;
      end else begin
        datavalid_7 <= _GEN_8303;
      end
    end else begin
      datavalid_7 <= _GEN_8303;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_8 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_8 <= _GEN_14094;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_8 <= _GEN_14043; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h8 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_8 <= 1'h0;
      end else begin
        datavalid_8 <= _GEN_8304;
      end
    end else begin
      datavalid_8 <= _GEN_8304;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_9 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_9 <= _GEN_14095;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_9 <= _GEN_14044; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'h9 == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_9 <= 1'h0;
      end else begin
        datavalid_9 <= _GEN_8305;
      end
    end else begin
      datavalid_9 <= _GEN_8305;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_10 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_10 <= _GEN_14096;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_10 <= _GEN_14045; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'ha == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_10 <= 1'h0;
      end else begin
        datavalid_10 <= _GEN_8306;
      end
    end else begin
      datavalid_10 <= _GEN_8306;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 384:7]
      datavalid_11 <= 1'h0;
    end else if (REG_4) begin // @[StoreQueue.scala 384:7]
      datavalid_11 <= _GEN_14097;
    end else if (REG_2) begin // @[StoreQueue.scala 216:43]
      datavalid_11 <= _GEN_14046; // @[StoreQueue.scala 221:{24,24}]
    end else if (io_enq_req_3_valid & ~enqCancel_3) begin
      if (4'hb == io_enq_req_3_bits_sqIdx_value) begin
        datavalid_11 <= 1'h0;
      end else begin
        datavalid_11 <= _GEN_8307;
      end
    end else begin
      datavalid_11 <= _GEN_8307;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 804:32]
      enqPtrExt_0_flag <= 1'h0; // @[StoreQueue.scala 806:15]
    end else if (lastlastCycleRedirect) begin // @[CircularQueuePtr.scala 44:26]
      enqPtrExt_0_flag <= new_ptr_2_flag;
    end else if (reverse_flag_2) begin
      enqPtrExt_0_flag <= ~enqPtrExt_0_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 804:32]
      enqPtrExt_0_value <= 4'h0; // @[StoreQueue.scala 806:15]
    end else if (lastlastCycleRedirect) begin // @[StoreQueue.scala 810:15]
      enqPtrExt_0_value <= flipped_new_ptr_value;
    end else begin
      enqPtrExt_0_value <= new_ptr_6_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 167:37]
      rdataPtrExt_0_value <= 4'h0;
    end else if (_rdataPtrExtNext_T) begin // @[StoreQueue.scala 169:8]
      rdataPtrExt_0_value <= rdataPtrExtNext_new_ptr_value;
    end else if (_rdataPtrExtNext_T_1 | _rdataPtrExtNext_T_2) begin
      rdataPtrExt_0_value <= rdataPtrExtNext_new_ptr_2_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 167:37]
      rdataPtrExt_1_value <= 4'h1;
    end else if (_rdataPtrExtNext_T) begin // @[StoreQueue.scala 169:8]
      rdataPtrExt_1_value <= rdataPtrExtNext_new_ptr_1_value;
    end else if (_rdataPtrExtNext_T_1 | _rdataPtrExtNext_T_2) begin
      rdataPtrExt_1_value <= rdataPtrExtNext_new_ptr_3_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 183:26]
      deqPtrExt_0_flag <= 1'h0; // @[CircularQueuePtr.scala 44:26]
    end else if (deqPtrExtNext_REG) begin // @[StoreQueue.scala 185:8]
      if (deqPtrExtNext_reverse_flag) begin // @[CircularQueuePtr.scala 44:26]
        deqPtrExt_0_flag <= ~deqPtrExt_0_flag;
      end
    end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
      if (deqPtrExtNext_reverse_flag_2) begin
        deqPtrExt_0_flag <= ~deqPtrExt_0_flag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 183:26]
      deqPtrExt_0_value <= 4'h0;
    end else if (deqPtrExtNext_REG) begin // @[StoreQueue.scala 185:8]
      deqPtrExt_0_value <= deqPtrExtNext_new_ptr_value;
    end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
      deqPtrExt_0_value <= deqPtrExtNext_new_ptr_2_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 44:26]
      cmtPtrExt_0_flag <= 1'h0;
    end else if (vaddrModule_io_raddr_2_reverse_flag) begin
      cmtPtrExt_0_flag <= ~cmtPtrExt_0_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 37:23 45:21]
      cmtPtrExt_0_value <= 4'h0;
    end else begin
      cmtPtrExt_0_value <= _vaddrModule_io_raddr_2_new_ptr_value_T_1[3:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CircularQueuePtr.scala 37:23 45:21]
      cmtPtrExt_1_value <= 4'h1;
    end else begin
      cmtPtrExt_1_value <= _new_ptr_value_T_3[3:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 251:31]
      addrReadyPtrExt_flag <= 1'h0; // @[StoreQueue.scala 183:26 252:27 CircularQueuePtr.scala 44:26 StoreQueue.scala 185:8]
    end else if (io_brqRedirect_valid) begin // @[CircularQueuePtr.scala 44:26]
      if (_addrReadyPtrExt_T) begin
        addrReadyPtrExt_flag <= cmtPtrExt_0_flag;
      end else if (deqPtrExtNext_REG) begin
        if (deqPtrExtNext_reverse_flag) begin
          addrReadyPtrExt_flag <= ~deqPtrExt_0_flag;
        end else begin
          addrReadyPtrExt_flag <= deqPtrExt_0_flag;
        end
      end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
        addrReadyPtrExt_flag <= deqPtrExtNext_new_ptr_2_flag;
      end else begin
        addrReadyPtrExt_flag <= deqPtrExt_0_flag;
      end
    end else if (nextAddrReadyPtr_reverse_flag) begin
      addrReadyPtrExt_flag <= ~addrReadyPtrExt_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 251:31]
      addrReadyPtrExt_value <= 4'h0; // @[StoreQueue.scala 183:26 252:27 185:8]
    end else if (io_brqRedirect_valid) begin // @[StoreQueue.scala 245:19]
      if (_addrReadyPtrExt_T) begin
        addrReadyPtrExt_value <= cmtPtrExt_0_value;
      end else if (deqPtrExtNext_REG) begin
        addrReadyPtrExt_value <= deqPtrExtNext_new_ptr_value;
      end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
        addrReadyPtrExt_value <= deqPtrExtNext_new_ptr_2_value;
      end else begin
        addrReadyPtrExt_value <= deqPtrExt_0_value;
      end
    end else begin
      addrReadyPtrExt_value <= nextAddrReadyPtr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 271:31]
      dataReadyPtrExt_flag <= 1'h0; // @[StoreQueue.scala 183:26 252:27 CircularQueuePtr.scala 44:26 StoreQueue.scala 185:8]
    end else if (io_brqRedirect_valid) begin // @[CircularQueuePtr.scala 44:26]
      if (_addrReadyPtrExt_T) begin
        dataReadyPtrExt_flag <= cmtPtrExt_0_flag;
      end else if (deqPtrExtNext_REG) begin
        if (deqPtrExtNext_reverse_flag) begin
          dataReadyPtrExt_flag <= ~deqPtrExt_0_flag;
        end else begin
          dataReadyPtrExt_flag <= deqPtrExt_0_flag;
        end
      end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
        dataReadyPtrExt_flag <= deqPtrExtNext_new_ptr_2_flag;
      end else begin
        dataReadyPtrExt_flag <= deqPtrExt_0_flag;
      end
    end else if (nextDataReadyPtr_reverse_flag) begin
      dataReadyPtrExt_flag <= ~dataReadyPtrExt_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 271:31]
      dataReadyPtrExt_value <= 4'h0; // @[StoreQueue.scala 183:26 252:27 185:8]
    end else if (io_brqRedirect_valid) begin // @[StoreQueue.scala 265:19]
      if (_addrReadyPtrExt_T) begin
        dataReadyPtrExt_value <= cmtPtrExt_0_value;
      end else if (deqPtrExtNext_REG) begin
        dataReadyPtrExt_value <= deqPtrExtNext_new_ptr_value;
      end else if (deqPtrExtNext_REG_1 | _rdataPtrExtNext_T_2) begin
        dataReadyPtrExt_value <= deqPtrExtNext_new_ptr_2_value;
      end else begin
        dataReadyPtrExt_value <= deqPtrExt_0_value;
      end
    end else begin
      dataReadyPtrExt_value <= nextDataReadyPtr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 589:24]
      uncacheState <= 3'h0; // @[StoreQueue.scala 591:121 592:22 588:29]
    end else if (3'h0 == uncacheState) begin // @[StoreQueue.scala 589:24]
      if (REG_14) begin // @[StoreQueue.scala 596:34]
        uncacheState <= 3'h1; // @[StoreQueue.scala 597:38 598:24 600:24]
      end
    end else if (3'h1 == uncacheState) begin // @[StoreQueue.scala 589:24]
      if (_T_66) begin // @[StoreQueue.scala 605:36]
        if (io_uncacheOutstanding) begin // @[StoreQueue.scala 606:22]
          uncacheState <= 3'h3;
        end else begin
          uncacheState <= 3'h2;
        end
      end
    end else if (3'h2 == uncacheState) begin // @[StoreQueue.scala 589:24]
      if (_T_68) begin
        uncacheState <= 3'h3;
      end
    end else if (3'h3 == uncacheState) begin
      uncacheState <= _GEN_14180;
    end else begin
      uncacheState <= _GEN_14182;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreQueue.scala 827:32]
      io_force_write_REG <= 1'h0;
    end else begin
      io_force_write_REG <= valid_cnt >= 4'hc | valid_cnt >= 4'h7 & io_force_write;
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
  uop_0_cf_trigger_backendEn_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  uop_0_cf_storeSetHit = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  uop_0_cf_ssid = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  uop_0_ctrl_fuOpType = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  uop_0_robIdx_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  uop_0_robIdx_value = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  uop_0_lqIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  uop_0_lqIdx_value = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  uop_1_cf_trigger_backendEn_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  uop_1_cf_storeSetHit = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  uop_1_cf_ssid = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  uop_1_ctrl_fuOpType = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  uop_1_robIdx_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  uop_1_lqIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  uop_1_lqIdx_value = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  uop_2_cf_trigger_backendEn_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  uop_2_cf_storeSetHit = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  uop_2_cf_ssid = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  uop_2_ctrl_fuOpType = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  uop_2_lqIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_2_lqIdx_value = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  uop_3_cf_trigger_backendEn_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  uop_3_cf_storeSetHit = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  uop_3_cf_ssid = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  uop_3_ctrl_fuOpType = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  uop_3_lqIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  uop_3_lqIdx_value = _RAND_31[3:0];
  _RAND_32 = {1{`RANDOM}};
  uop_4_cf_trigger_backendEn_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  uop_4_cf_storeSetHit = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  uop_4_cf_ssid = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  uop_4_ctrl_fuOpType = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  uop_4_lqIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  uop_4_lqIdx_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  uop_5_cf_trigger_backendEn_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_5_cf_storeSetHit = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  uop_5_cf_ssid = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  uop_5_ctrl_fuOpType = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  uop_5_lqIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  uop_5_lqIdx_value = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  uop_6_cf_trigger_backendEn_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  uop_6_cf_storeSetHit = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  uop_6_cf_ssid = _RAND_50[4:0];
  _RAND_51 = {1{`RANDOM}};
  uop_6_ctrl_fuOpType = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_53[4:0];
  _RAND_54 = {1{`RANDOM}};
  uop_6_lqIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  uop_6_lqIdx_value = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  uop_7_cf_trigger_backendEn_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  uop_7_cf_storeSetHit = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  uop_7_cf_ssid = _RAND_58[4:0];
  _RAND_59 = {1{`RANDOM}};
  uop_7_ctrl_fuOpType = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_61[4:0];
  _RAND_62 = {1{`RANDOM}};
  uop_7_lqIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  uop_7_lqIdx_value = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  uop_8_cf_trigger_backendEn_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  uop_8_cf_storeSetHit = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  uop_8_cf_ssid = _RAND_66[4:0];
  _RAND_67 = {1{`RANDOM}};
  uop_8_ctrl_fuOpType = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  uop_8_robIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  uop_8_robIdx_value = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  uop_8_lqIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  uop_8_lqIdx_value = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  uop_9_cf_trigger_backendEn_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  uop_9_cf_storeSetHit = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  uop_9_cf_ssid = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  uop_9_ctrl_fuOpType = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  uop_9_robIdx_flag = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  uop_9_robIdx_value = _RAND_77[4:0];
  _RAND_78 = {1{`RANDOM}};
  uop_9_lqIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  uop_9_lqIdx_value = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  uop_10_cf_trigger_backendEn_0 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  uop_10_cf_storeSetHit = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  uop_10_cf_ssid = _RAND_82[4:0];
  _RAND_83 = {1{`RANDOM}};
  uop_10_ctrl_fuOpType = _RAND_83[6:0];
  _RAND_84 = {1{`RANDOM}};
  uop_10_robIdx_flag = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  uop_10_robIdx_value = _RAND_85[4:0];
  _RAND_86 = {1{`RANDOM}};
  uop_10_lqIdx_flag = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  uop_10_lqIdx_value = _RAND_87[3:0];
  _RAND_88 = {1{`RANDOM}};
  uop_11_cf_trigger_backendEn_0 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  uop_11_cf_storeSetHit = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  uop_11_cf_ssid = _RAND_90[4:0];
  _RAND_91 = {1{`RANDOM}};
  uop_11_ctrl_fuOpType = _RAND_91[6:0];
  _RAND_92 = {1{`RANDOM}};
  uop_11_robIdx_flag = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  uop_11_robIdx_value = _RAND_93[4:0];
  _RAND_94 = {1{`RANDOM}};
  uop_11_lqIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  uop_11_lqIdx_value = _RAND_95[3:0];
  _RAND_96 = {1{`RANDOM}};
  allocated_0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  allocated_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  allocated_2 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  allocated_3 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  allocated_4 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  allocated_5 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  allocated_6 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  allocated_7 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  allocated_8 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  allocated_9 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  allocated_10 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  allocated_11 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  addrvalid_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  addrvalid_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  addrvalid_2 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  addrvalid_3 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  addrvalid_4 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  addrvalid_5 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  addrvalid_6 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  addrvalid_7 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  addrvalid_8 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  addrvalid_9 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  addrvalid_10 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  addrvalid_11 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  datavalid_0 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  datavalid_1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  datavalid_2 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  datavalid_3 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  datavalid_4 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  datavalid_5 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  datavalid_6 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  datavalid_7 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  datavalid_8 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  datavalid_9 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  datavalid_10 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  datavalid_11 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  committed_0 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  committed_1 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  committed_2 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  committed_3 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  committed_4 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  committed_5 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  committed_6 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  committed_7 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  committed_8 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  committed_9 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  committed_10 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  committed_11 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  pending_0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  pending_1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  pending_2 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  pending_3 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  pending_4 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  pending_5 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  pending_6 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  pending_7 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  pending_8 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  pending_9 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  pending_10 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  pending_11 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  mmio_0 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  mmio_1 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  mmio_2 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  mmio_3 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  mmio_4 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  mmio_5 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  mmio_6 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  mmio_7 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  mmio_8 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  mmio_9 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  mmio_10 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  mmio_11 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  atomic_0 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  atomic_1 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  atomic_2 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  atomic_3 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  atomic_4 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  atomic_5 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  atomic_6 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  atomic_7 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  atomic_8 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  atomic_9 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  atomic_10 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  atomic_11 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  enqPtrExt_0_flag = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  enqPtrExt_0_value = _RAND_181[3:0];
  _RAND_182 = {1{`RANDOM}};
  rdataPtrExt_0_value = _RAND_182[3:0];
  _RAND_183 = {1{`RANDOM}};
  rdataPtrExt_1_value = _RAND_183[3:0];
  _RAND_184 = {1{`RANDOM}};
  deqPtrExt_0_flag = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  deqPtrExt_0_value = _RAND_185[3:0];
  _RAND_186 = {1{`RANDOM}};
  cmtPtrExt_0_flag = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  cmtPtrExt_0_value = _RAND_187[3:0];
  _RAND_188 = {1{`RANDOM}};
  cmtPtrExt_1_value = _RAND_188[3:0];
  _RAND_189 = {1{`RANDOM}};
  addrReadyPtrExt_flag = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  addrReadyPtrExt_value = _RAND_190[3:0];
  _RAND_191 = {1{`RANDOM}};
  dataReadyPtrExt_flag = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  dataReadyPtrExt_value = _RAND_192[3:0];
  _RAND_193 = {1{`RANDOM}};
  commitCount = _RAND_193[1:0];
  _RAND_194 = {1{`RANDOM}};
  deqPtrExtNext_REG = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  deqPtrExtNext_REG_1 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  io_sqDeq_REG = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  io_sqDeq_REG_1 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  io_sqDeq_REG_2 = _RAND_198[1:0];
  _RAND_199 = {1{`RANDOM}};
  io_stAddrReadyVec_0_REG = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  io_stAddrReadyVec_1_REG = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  io_stAddrReadyVec_2_REG = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  io_stAddrReadyVec_3_REG = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  io_stAddrReadyVec_4_REG = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  io_stAddrReadyVec_5_REG = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  io_stAddrReadyVec_6_REG = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  io_stAddrReadyVec_7_REG = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  io_stAddrReadyVec_8_REG = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  io_stAddrReadyVec_9_REG = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  io_stAddrReadyVec_10_REG = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  io_stAddrReadyVec_11_REG = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  io_stDataReadyVec_0_REG = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  io_stDataReadyVec_1_REG = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  io_stDataReadyVec_2_REG = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  io_stDataReadyVec_3_REG = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  io_stDataReadyVec_4_REG = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  io_stDataReadyVec_5_REG = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  io_stDataReadyVec_6_REG = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  io_stDataReadyVec_7_REG = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  io_stDataReadyVec_8_REG = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  io_stDataReadyVec_9_REG = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  io_stDataReadyVec_10_REG = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  io_stDataReadyVec_11_REG = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  storeAddrInFireReg = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  stWbIndexReg = _RAND_224[3:0];
  _RAND_225 = {1{`RANDOM}};
  storeAddrInFireReg_1 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  stWbIndexReg_1 = _RAND_226[3:0];
  _RAND_227 = {1{`RANDOM}};
  REG_2 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  REG_3 = _RAND_228[3:0];
  _RAND_229 = {1{`RANDOM}};
  REG_4 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  REG_5 = _RAND_230[3:0];
  _RAND_231 = {1{`RANDOM}};
  vpmaskNotEqual_REG = _RAND_231[11:0];
  _RAND_232 = {1{`RANDOM}};
  vpmaskNotEqual_REG_1 = _RAND_232[11:0];
  _RAND_233 = {1{`RANDOM}};
  vpmaskNotEqual_REG_2 = _RAND_233[11:0];
  _RAND_234 = {1{`RANDOM}};
  vpmaskNotEqual_REG_3 = _RAND_234[11:0];
  _RAND_235 = {1{`RANDOM}};
  vaddrMatchFailed_REG = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  dataInvalidMask1Reg_REG = _RAND_236[11:0];
  _RAND_237 = {1{`RANDOM}};
  dataInvalidMask2Reg_REG = _RAND_237[11:0];
  _RAND_238 = {1{`RANDOM}};
  addrInvalidMask1Reg_REG = _RAND_238[11:0];
  _RAND_239 = {1{`RANDOM}};
  addrInvalidMask2Reg_REG = _RAND_239[11:0];
  _RAND_240 = {1{`RANDOM}};
  io_forward_0_dataInvalid_REG = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  s2_differentFlag = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  s2_enqPtrExt_flag = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  s2_deqPtrExt_flag = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  s2_deqPtrExt_value = _RAND_244[3:0];
  _RAND_245 = {1{`RANDOM}};
  REG_9 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  io_forward_0_addrInvalidSqIdx_REG_flag = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  io_forward_0_addrInvalidSqIdx_REG_value = _RAND_247[3:0];
  _RAND_248 = {1{`RANDOM}};
  io_forward_0_addrInvalidSqIdx_REG_1_flag = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  io_forward_0_addrInvalidSqIdx_REG_1_value = _RAND_249[3:0];
  _RAND_250 = {1{`RANDOM}};
  io_forward_0_addrInvalid_REG = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  io_forward_0_addrInvalid_REG_1 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  io_forward_0_dataInvalidSqIdx_REG_flag = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  io_forward_0_dataInvalidSqIdx_REG_value = _RAND_253[3:0];
  _RAND_254 = {1{`RANDOM}};
  vpmaskNotEqual_REG_4 = _RAND_254[11:0];
  _RAND_255 = {1{`RANDOM}};
  vpmaskNotEqual_REG_5 = _RAND_255[11:0];
  _RAND_256 = {1{`RANDOM}};
  vpmaskNotEqual_REG_6 = _RAND_256[11:0];
  _RAND_257 = {1{`RANDOM}};
  vpmaskNotEqual_REG_7 = _RAND_257[11:0];
  _RAND_258 = {1{`RANDOM}};
  vaddrMatchFailed_REG_1 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  dataInvalidMask1Reg_REG_1 = _RAND_259[11:0];
  _RAND_260 = {1{`RANDOM}};
  dataInvalidMask2Reg_REG_1 = _RAND_260[11:0];
  _RAND_261 = {1{`RANDOM}};
  addrInvalidMask1Reg_REG_1 = _RAND_261[11:0];
  _RAND_262 = {1{`RANDOM}};
  addrInvalidMask2Reg_REG_1 = _RAND_262[11:0];
  _RAND_263 = {1{`RANDOM}};
  io_forward_1_dataInvalid_REG = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  s2_differentFlag_1 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  s2_enqPtrExt_1_flag = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  s2_deqPtrExt_1_flag = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  s2_deqPtrExt_1_value = _RAND_267[3:0];
  _RAND_268 = {1{`RANDOM}};
  REG_13 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  io_forward_1_addrInvalidSqIdx_REG_flag = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  io_forward_1_addrInvalidSqIdx_REG_value = _RAND_270[3:0];
  _RAND_271 = {1{`RANDOM}};
  io_forward_1_addrInvalidSqIdx_REG_1_flag = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  io_forward_1_addrInvalidSqIdx_REG_1_value = _RAND_272[3:0];
  _RAND_273 = {1{`RANDOM}};
  io_forward_1_addrInvalid_REG = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  io_forward_1_addrInvalid_REG_1 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  io_forward_1_dataInvalidSqIdx_REG_flag = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  io_forward_1_dataInvalidSqIdx_REG_value = _RAND_276[3:0];
  _RAND_277 = {1{`RANDOM}};
  uncacheState = _RAND_277[2:0];
  _RAND_278 = {1{`RANDOM}};
  REG_14 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  REG_15 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  io_uncache_req_bits_atomic_REG_value = _RAND_280[3:0];
  _RAND_281 = {1{`RANDOM}};
  REG_16 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  r = _RAND_282[3:0];
  _RAND_283 = {1{`RANDOM}};
  REG_17 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  r_1 = _RAND_284[3:0];
  _RAND_285 = {1{`RANDOM}};
  lastEnqCancel_REG_0 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  lastEnqCancel_REG_1 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  lastEnqCancel_REG_2 = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  lastEnqCancel_REG_3 = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  lastCycleCancelCount_REG_0 = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  lastCycleCancelCount_REG_1 = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  lastCycleCancelCount_REG_2 = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  lastCycleCancelCount_REG_3 = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  lastCycleCancelCount_REG_4 = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  lastCycleCancelCount_REG_5 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  lastCycleCancelCount_REG_6 = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  lastCycleCancelCount_REG_7 = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  lastCycleCancelCount_REG_8 = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  lastCycleCancelCount_REG_9 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  lastCycleCancelCount_REG_10 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  lastCycleCancelCount_REG_11 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  lastCycleRedirect = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  lastlastCycleRedirect = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  redirectCancelCount = _RAND_303[3:0];
  _RAND_304 = {1{`RANDOM}};
  io_force_write_REG = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  io_sqEmpty_REG = _RAND_305[0:0];
  _RAND_306 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_321[0:0];
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
    allocated_8 = 1'h0;
  end
  if (reset) begin
    allocated_9 = 1'h0;
  end
  if (reset) begin
    allocated_10 = 1'h0;
  end
  if (reset) begin
    allocated_11 = 1'h0;
  end
  if (reset) begin
    addrvalid_0 = 1'h0;
  end
  if (reset) begin
    addrvalid_1 = 1'h0;
  end
  if (reset) begin
    addrvalid_2 = 1'h0;
  end
  if (reset) begin
    addrvalid_3 = 1'h0;
  end
  if (reset) begin
    addrvalid_4 = 1'h0;
  end
  if (reset) begin
    addrvalid_5 = 1'h0;
  end
  if (reset) begin
    addrvalid_6 = 1'h0;
  end
  if (reset) begin
    addrvalid_7 = 1'h0;
  end
  if (reset) begin
    addrvalid_8 = 1'h0;
  end
  if (reset) begin
    addrvalid_9 = 1'h0;
  end
  if (reset) begin
    addrvalid_10 = 1'h0;
  end
  if (reset) begin
    addrvalid_11 = 1'h0;
  end
  if (reset) begin
    datavalid_0 = 1'h0;
  end
  if (reset) begin
    datavalid_1 = 1'h0;
  end
  if (reset) begin
    datavalid_2 = 1'h0;
  end
  if (reset) begin
    datavalid_3 = 1'h0;
  end
  if (reset) begin
    datavalid_4 = 1'h0;
  end
  if (reset) begin
    datavalid_5 = 1'h0;
  end
  if (reset) begin
    datavalid_6 = 1'h0;
  end
  if (reset) begin
    datavalid_7 = 1'h0;
  end
  if (reset) begin
    datavalid_8 = 1'h0;
  end
  if (reset) begin
    datavalid_9 = 1'h0;
  end
  if (reset) begin
    datavalid_10 = 1'h0;
  end
  if (reset) begin
    datavalid_11 = 1'h0;
  end
  if (reset) begin
    enqPtrExt_0_flag = 1'h0;
  end
  if (reset) begin
    enqPtrExt_0_value = 4'h0;
  end
  if (reset) begin
    rdataPtrExt_0_value = 4'h0;
  end
  if (reset) begin
    rdataPtrExt_1_value = 4'h1;
  end
  if (reset) begin
    deqPtrExt_0_flag = 1'h0;
  end
  if (reset) begin
    deqPtrExt_0_value = 4'h0;
  end
  if (reset) begin
    cmtPtrExt_0_flag = 1'h0;
  end
  if (reset) begin
    cmtPtrExt_0_value = 4'h0;
  end
  if (reset) begin
    cmtPtrExt_1_value = 4'h1;
  end
  if (reset) begin
    addrReadyPtrExt_flag = 1'h0;
  end
  if (reset) begin
    addrReadyPtrExt_value = 4'h0;
  end
  if (reset) begin
    dataReadyPtrExt_flag = 1'h0;
  end
  if (reset) begin
    dataReadyPtrExt_value = 4'h0;
  end
  if (reset) begin
    uncacheState = 3'h0;
  end
  if (reset) begin
    io_force_write_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

