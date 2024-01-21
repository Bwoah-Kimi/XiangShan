module LoadQueueRAW(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_query_0_req_ready,
  input         io_query_0_req_valid,
  input         io_query_0_req_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_query_0_req_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_query_0_req_bits_uop_cf_ftqOffset,
  input         io_query_0_req_bits_uop_robIdx_flag,
  input  [4:0]  io_query_0_req_bits_uop_robIdx_value,
  input         io_query_0_req_bits_uop_sqIdx_flag,
  input  [3:0]  io_query_0_req_bits_uop_sqIdx_value,
  input  [15:0] io_query_0_req_bits_mask,
  input  [35:0] io_query_0_req_bits_paddr,
  input         io_query_0_req_bits_data_valid,
  input         io_query_0_revoke,
  output        io_query_1_req_ready,
  input         io_query_1_req_valid,
  input         io_query_1_req_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_query_1_req_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_query_1_req_bits_uop_cf_ftqOffset,
  input         io_query_1_req_bits_uop_robIdx_flag,
  input  [4:0]  io_query_1_req_bits_uop_robIdx_value,
  input         io_query_1_req_bits_uop_sqIdx_flag,
  input  [3:0]  io_query_1_req_bits_uop_sqIdx_value,
  input  [15:0] io_query_1_req_bits_mask,
  input  [35:0] io_query_1_req_bits_paddr,
  input         io_query_1_req_bits_data_valid,
  input         io_query_1_revoke,
  input         io_storeIn_0_valid,
  input  [2:0]  io_storeIn_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_storeIn_0_bits_uop_cf_ftqOffset,
  input         io_storeIn_0_bits_uop_robIdx_flag,
  input  [4:0]  io_storeIn_0_bits_uop_robIdx_value,
  input  [35:0] io_storeIn_0_bits_paddr,
  input  [15:0] io_storeIn_0_bits_mask,
  input         io_storeIn_0_bits_miss,
  input         io_storeIn_1_valid,
  input  [2:0]  io_storeIn_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_storeIn_1_bits_uop_cf_ftqOffset,
  input         io_storeIn_1_bits_uop_robIdx_flag,
  input  [4:0]  io_storeIn_1_bits_uop_robIdx_value,
  input  [35:0] io_storeIn_1_bits_paddr,
  input  [15:0] io_storeIn_1_bits_mask,
  input         io_storeIn_1_bits_miss,
  output        io_rollback_valid,
  output        io_rollback_bits_robIdx_flag,
  output [4:0]  io_rollback_bits_robIdx_value,
  output        io_rollback_bits_ftqIdx_flag,
  output [2:0]  io_rollback_bits_ftqIdx_value,
  output [2:0]  io_rollback_bits_ftqOffset,
  output [2:0]  io_rollback_bits_stFtqIdx_value,
  output [2:0]  io_rollback_bits_stFtqOffset,
  input         io_stAddrReadySqPtr_flag,
  input  [3:0]  io_stAddrReadySqPtr_value,
  input         io_stIssuePtr_flag,
  input  [3:0]  io_stIssuePtr_value,
  output        io_lqFull,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value
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
  reg [63:0] _RAND_108;
  reg [63:0] _RAND_109;
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
`endif // RANDOMIZE_REG_INIT
  wire  paddrModule_clock; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_wen_0; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_wen_1; // @[LoadQueueRAW.scala 70:27]
  wire [3:0] paddrModule_io_waddr_0; // @[LoadQueueRAW.scala 70:27]
  wire [3:0] paddrModule_io_waddr_1; // @[LoadQueueRAW.scala 70:27]
  wire [35:0] paddrModule_io_wdata_0; // @[LoadQueueRAW.scala 70:27]
  wire [35:0] paddrModule_io_wdata_1; // @[LoadQueueRAW.scala 70:27]
  wire [35:0] paddrModule_io_violationMdata_0; // @[LoadQueueRAW.scala 70:27]
  wire [35:0] paddrModule_io_violationMdata_1; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_0; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_1; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_2; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_3; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_4; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_5; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_6; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_7; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_8; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_9; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_10; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_0_11; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_0; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_1; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_2; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_3; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_4; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_5; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_6; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_7; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_8; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_9; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_10; // @[LoadQueueRAW.scala 70:27]
  wire  paddrModule_io_violationMmask_1_11; // @[LoadQueueRAW.scala 70:27]
  wire  maskModule_clock; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_wen_0; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_wen_1; // @[LoadQueueRAW.scala 80:26]
  wire [3:0] maskModule_io_waddr_0; // @[LoadQueueRAW.scala 80:26]
  wire [3:0] maskModule_io_waddr_1; // @[LoadQueueRAW.scala 80:26]
  wire [15:0] maskModule_io_wdata_0; // @[LoadQueueRAW.scala 80:26]
  wire [15:0] maskModule_io_wdata_1; // @[LoadQueueRAW.scala 80:26]
  wire [15:0] maskModule_io_violationMdata_0; // @[LoadQueueRAW.scala 80:26]
  wire [15:0] maskModule_io_violationMdata_1; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_0; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_1; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_2; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_3; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_4; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_5; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_6; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_7; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_8; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_9; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_10; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_0_11; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_0; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_1; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_2; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_3; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_4; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_5; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_6; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_7; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_8; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_9; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_10; // @[LoadQueueRAW.scala 80:26]
  wire  maskModule_io_violationMmask_1_11; // @[LoadQueueRAW.scala 80:26]
  wire  freeList_clock; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_reset; // @[LoadQueueRAW.scala 96:24]
  wire [3:0] freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 96:24]
  wire [3:0] freeList_io_allocateSlot_1; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_io_canAllocate_0; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_io_canAllocate_1; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_io_doAllocate_0; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_io_doAllocate_1; // @[LoadQueueRAW.scala 96:24]
  wire [11:0] freeList_io_free; // @[LoadQueueRAW.scala 96:24]
  wire  freeList_io_empty; // @[LoadQueueRAW.scala 96:24]
  wire  rollbackLqWb_0_valid_delay_clock; // @[Hold.scala 97:23]
  wire  rollbackLqWb_0_valid_delay_io_in; // @[Hold.scala 97:23]
  wire  rollbackLqWb_0_valid_delay_io_out; // @[Hold.scala 97:23]
  wire  stFtqIdx_0_delay_clock; // @[Hold.scala 97:23]
  wire [2:0] stFtqIdx_0_delay_io_in_value; // @[Hold.scala 97:23]
  wire [2:0] stFtqIdx_0_delay_io_out_value; // @[Hold.scala 97:23]
  wire  stFtqOffset_0_delay_clock; // @[Hold.scala 97:23]
  wire [2:0] stFtqOffset_0_delay_io_in; // @[Hold.scala 97:23]
  wire [2:0] stFtqOffset_0_delay_io_out; // @[Hold.scala 97:23]
  wire  rollbackLqWb_1_valid_delay_clock; // @[Hold.scala 97:23]
  wire  rollbackLqWb_1_valid_delay_io_in; // @[Hold.scala 97:23]
  wire  rollbackLqWb_1_valid_delay_io_out; // @[Hold.scala 97:23]
  wire  stFtqIdx_1_delay_clock; // @[Hold.scala 97:23]
  wire [2:0] stFtqIdx_1_delay_io_in_value; // @[Hold.scala 97:23]
  wire [2:0] stFtqIdx_1_delay_io_out_value; // @[Hold.scala 97:23]
  wire  stFtqOffset_1_delay_clock; // @[Hold.scala 97:23]
  wire [2:0] stFtqOffset_1_delay_io_in; // @[Hold.scala 97:23]
  wire [2:0] stFtqOffset_1_delay_io_out; // @[Hold.scala 97:23]
  reg  allocated_0; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_1; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_2; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_3; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_4; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_5; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_6; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_7; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_8; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_9; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_10; // @[LoadQueueRAW.scala 68:26]
  reg  allocated_11; // @[LoadQueueRAW.scala 68:26]
  reg  uop_0_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_0_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_0_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_0_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_0_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_0_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_0_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_1_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_1_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_1_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_1_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_1_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_1_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_1_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_2_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_2_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_2_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_2_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_2_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_2_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_2_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_3_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_3_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_3_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_3_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_3_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_3_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_3_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_4_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_4_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_4_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_4_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_4_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_4_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_4_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_5_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_5_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_5_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_5_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_5_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_5_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_5_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_6_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_6_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_6_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_6_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_6_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_6_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_6_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_7_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_7_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_7_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_7_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_7_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_7_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_7_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_8_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_8_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_8_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_8_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_8_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_8_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_8_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_9_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_9_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_9_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_9_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_9_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_9_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_9_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_10_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_10_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_10_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_10_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_10_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_10_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_10_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_11_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_11_cf_ftqPtr_value; // @[LoadQueueRAW.scala 69:16]
  reg [2:0] uop_11_cf_ftqOffset; // @[LoadQueueRAW.scala 69:16]
  reg  uop_11_robIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [4:0] uop_11_robIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  uop_11_sqIdx_flag; // @[LoadQueueRAW.scala 69:16]
  reg [3:0] uop_11_sqIdx_value; // @[LoadQueueRAW.scala 69:16]
  reg  datavalid_0; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_1; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_2; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_3; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_4; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_5; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_6; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_7; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_8; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_9; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_10; // @[LoadQueueRAW.scala 90:26]
  reg  datavalid_11; // @[LoadQueueRAW.scala 90:26]
  wire [5:0] _cancelEnqueue_flushItself_T_1 = {io_query_0_req_bits_uop_robIdx_flag,io_query_0_req_bits_uop_robIdx_value}
    ; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _cancelEnqueue_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _cancelEnqueue_flushItself_T_3 = _cancelEnqueue_flushItself_T_1 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  cancelEnqueue_flushItself = io_redirect_bits_level & _cancelEnqueue_flushItself_T_3; // @[Rob.scala 142:51]
  wire  cancelEnqueue_differentFlag = io_query_0_req_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  cancelEnqueue_compare = io_query_0_req_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _cancelEnqueue_T = cancelEnqueue_differentFlag ^ cancelEnqueue_compare; // @[CircularQueuePtr.scala 68:19]
  wire  cancelEnqueue_0 = io_redirect_valid & (cancelEnqueue_flushItself | _cancelEnqueue_T); // @[Rob.scala 143:20]
  wire [5:0] _cancelEnqueue_flushItself_T_5 = {io_query_1_req_bits_uop_robIdx_flag,io_query_1_req_bits_uop_robIdx_value}
    ; // @[CircularQueuePtr.scala 61:40]
  wire  _cancelEnqueue_flushItself_T_7 = _cancelEnqueue_flushItself_T_5 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  cancelEnqueue_flushItself_1 = io_redirect_bits_level & _cancelEnqueue_flushItself_T_7; // @[Rob.scala 142:51]
  wire  cancelEnqueue_differentFlag_1 = io_query_1_req_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  cancelEnqueue_compare_1 = io_query_1_req_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _cancelEnqueue_T_2 = cancelEnqueue_differentFlag_1 ^ cancelEnqueue_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  cancelEnqueue_1 = io_redirect_valid & (cancelEnqueue_flushItself_1 | _cancelEnqueue_T_2); // @[Rob.scala 143:20]
  wire [4:0] _allAddrCheck_T = {io_stIssuePtr_flag,io_stIssuePtr_value}; // @[CircularQueuePtr.scala 61:40]
  wire [4:0] _allAddrCheck_T_1 = {io_stAddrReadySqPtr_flag,io_stAddrReadySqPtr_value}; // @[CircularQueuePtr.scala 61:56]
  wire  allAddrCheck = _allAddrCheck_T == _allAddrCheck_T_1; // @[CircularQueuePtr.scala 61:47]
  wire  _hasAddrInvalidStore_T = ~allAddrCheck; // @[LoadQueueRAW.scala 110:9]
  wire  hasAddrInvalidStore_differentFlag = io_stAddrReadySqPtr_flag ^ io_query_0_req_bits_uop_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  hasAddrInvalidStore_compare = io_stAddrReadySqPtr_value < io_query_0_req_bits_uop_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _hasAddrInvalidStore_T_1 = hasAddrInvalidStore_differentFlag ^ hasAddrInvalidStore_compare; // @[CircularQueuePtr.scala 74:19]
  wire  hasAddrInvalidStore_0 = ~allAddrCheck & _hasAddrInvalidStore_T_1; // @[LoadQueueRAW.scala 110:8]
  wire  hasAddrInvalidStore_differentFlag_1 = io_stAddrReadySqPtr_flag ^ io_query_1_req_bits_uop_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  hasAddrInvalidStore_compare_1 = io_stAddrReadySqPtr_value < io_query_1_req_bits_uop_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _hasAddrInvalidStore_T_3 = hasAddrInvalidStore_differentFlag_1 ^ hasAddrInvalidStore_compare_1; // @[CircularQueuePtr.scala 74:19]
  wire  hasAddrInvalidStore_1 = ~allAddrCheck & _hasAddrInvalidStore_T_3; // @[LoadQueueRAW.scala 110:8]
  wire  needEnqueue_0 = io_query_0_req_valid & hasAddrInvalidStore_0 & ~cancelEnqueue_0; // @[LoadQueueRAW.scala 112:109]
  wire  needEnqueue_1 = io_query_1_req_valid & hasAddrInvalidStore_1 & ~cancelEnqueue_1; // @[LoadQueueRAW.scala 112:109]
  reg [35:0] bypassPAddr_0; // @[LoadQueueRAW.scala 113:24]
  reg [35:0] bypassPAddr_1; // @[LoadQueueRAW.scala 113:24]
  reg [15:0] bypassMask_0; // @[LoadQueueRAW.scala 114:23]
  reg [15:0] bypassMask_1; // @[LoadQueueRAW.scala 114:23]
  wire  acceptedVec_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAW.scala 136:26]
  wire [3:0] _T_1 = freeList_io_allocateSlot_0;
  wire  _GEN_0 = 4'h0 == _T_1 | allocated_0; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_1 = 4'h1 == _T_1 | allocated_1; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_2 = 4'h2 == _T_1 | allocated_2; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_3 = 4'h3 == _T_1 | allocated_3; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_4 = 4'h4 == _T_1 | allocated_4; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_5 = 4'h5 == _T_1 | allocated_5; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_6 = 4'h6 == _T_1 | allocated_6; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_7 = 4'h7 == _T_1 | allocated_7; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_8 = 4'h8 == _T_1 | allocated_8; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_9 = 4'h9 == _T_1 | allocated_9; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_10 = 4'ha == _T_1 | allocated_10; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_11 = 4'hb == _T_1 | allocated_11; // @[LoadQueueRAW.scala 145:{27,27} 68:26]
  wire  _GEN_540 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_0_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_541 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_1_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_542 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_2_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_543 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_3_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_544 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_4_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_545 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_5_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_546 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_6_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_547 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_7_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_548 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_8_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_549 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_9_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_550 = 4'ha == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_10_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_551 = 4'hb == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_flag : uop_11_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_552 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_0_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_553 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_1_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_554 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_2_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_555 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_3_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_556 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_4_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_557 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_5_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_558 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_6_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_559 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_7_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_560 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_8_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_561 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_9_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_562 = 4'ha == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_10_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_563 = 4'hb == _T_1 ? io_query_0_req_bits_uop_cf_ftqPtr_value : uop_11_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_564 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_0_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_565 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_1_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_566 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_2_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_567 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_3_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_568 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_4_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_569 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_5_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_570 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_6_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_571 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_7_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_572 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_8_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_573 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_9_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_574 = 4'ha == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_10_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [2:0] _GEN_575 = 4'hb == _T_1 ? io_query_0_req_bits_uop_cf_ftqOffset : uop_11_cf_ftqOffset; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1092 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1093 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_1_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1094 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1095 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_3_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1096 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1097 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_5_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1098 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1099 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_7_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1100 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_8_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1101 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_9_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1102 = 4'ha == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_10_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1103 = 4'hb == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_11_robIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1104 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_0_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1105 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_1_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1106 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_2_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1107 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_3_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1108 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_4_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1109 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_5_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1110 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_6_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1111 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_7_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1112 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_8_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1113 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_9_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1114 = 4'ha == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_10_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [4:0] _GEN_1115 = 4'hb == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_11_robIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1140 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_0_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1141 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_1_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1142 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_2_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1143 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_3_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1144 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_4_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1145 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_5_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1146 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_6_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1147 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_7_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1148 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_8_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1149 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_9_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1150 = 4'ha == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_10_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1151 = 4'hb == _T_1 ? io_query_0_req_bits_uop_sqIdx_flag : uop_11_sqIdx_flag; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1152 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_0_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1153 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_1_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1154 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_2_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1155 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_3_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1156 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_4_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1157 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_5_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1158 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_6_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1159 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_7_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1160 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_8_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1161 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_9_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1162 = 4'ha == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_10_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire [3:0] _GEN_1163 = 4'hb == _T_1 ? io_query_0_req_bits_uop_sqIdx_value : uop_11_sqIdx_value; // @[LoadQueueRAW.scala 160:{21,21} 69:16]
  wire  _GEN_1308 = 4'h0 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_0; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1309 = 4'h1 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_1; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1310 = 4'h2 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_2; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1311 = 4'h3 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_3; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1312 = 4'h4 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_4; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1313 = 4'h5 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_5; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1314 = 4'h6 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_6; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1315 = 4'h7 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_7; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1316 = 4'h8 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_8; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1317 = 4'h9 == _T_1 ? io_query_0_req_bits_data_valid : datavalid_9; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1318 = 4'ha == _T_1 ? io_query_0_req_bits_data_valid : datavalid_10; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1319 = 4'hb == _T_1 ? io_query_0_req_bits_data_valid : datavalid_11; // @[LoadQueueRAW.scala 161:{27,27} 90:26]
  wire  _GEN_1321 = acceptedVec_0 ? _GEN_0 : allocated_0; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1322 = acceptedVec_0 ? _GEN_1 : allocated_1; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1323 = acceptedVec_0 ? _GEN_2 : allocated_2; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1324 = acceptedVec_0 ? _GEN_3 : allocated_3; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1325 = acceptedVec_0 ? _GEN_4 : allocated_4; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1326 = acceptedVec_0 ? _GEN_5 : allocated_5; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1327 = acceptedVec_0 ? _GEN_6 : allocated_6; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1328 = acceptedVec_0 ? _GEN_7 : allocated_7; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1329 = acceptedVec_0 ? _GEN_8 : allocated_8; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1330 = acceptedVec_0 ? _GEN_9 : allocated_9; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1331 = acceptedVec_0 ? _GEN_10 : allocated_10; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1332 = acceptedVec_0 ? _GEN_11 : allocated_11; // @[LoadQueueRAW.scala 136:40 68:26]
  wire  _GEN_1866 = acceptedVec_0 ? _GEN_540 : uop_0_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1867 = acceptedVec_0 ? _GEN_541 : uop_1_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1868 = acceptedVec_0 ? _GEN_542 : uop_2_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1869 = acceptedVec_0 ? _GEN_543 : uop_3_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1870 = acceptedVec_0 ? _GEN_544 : uop_4_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1871 = acceptedVec_0 ? _GEN_545 : uop_5_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1872 = acceptedVec_0 ? _GEN_546 : uop_6_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1873 = acceptedVec_0 ? _GEN_547 : uop_7_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1874 = acceptedVec_0 ? _GEN_548 : uop_8_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1875 = acceptedVec_0 ? _GEN_549 : uop_9_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1876 = acceptedVec_0 ? _GEN_550 : uop_10_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_1877 = acceptedVec_0 ? _GEN_551 : uop_11_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1878 = acceptedVec_0 ? _GEN_552 : uop_0_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1879 = acceptedVec_0 ? _GEN_553 : uop_1_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1880 = acceptedVec_0 ? _GEN_554 : uop_2_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1881 = acceptedVec_0 ? _GEN_555 : uop_3_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1882 = acceptedVec_0 ? _GEN_556 : uop_4_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1883 = acceptedVec_0 ? _GEN_557 : uop_5_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1884 = acceptedVec_0 ? _GEN_558 : uop_6_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1885 = acceptedVec_0 ? _GEN_559 : uop_7_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1886 = acceptedVec_0 ? _GEN_560 : uop_8_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1887 = acceptedVec_0 ? _GEN_561 : uop_9_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1888 = acceptedVec_0 ? _GEN_562 : uop_10_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1889 = acceptedVec_0 ? _GEN_563 : uop_11_cf_ftqPtr_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1890 = acceptedVec_0 ? _GEN_564 : uop_0_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1891 = acceptedVec_0 ? _GEN_565 : uop_1_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1892 = acceptedVec_0 ? _GEN_566 : uop_2_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1893 = acceptedVec_0 ? _GEN_567 : uop_3_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1894 = acceptedVec_0 ? _GEN_568 : uop_4_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1895 = acceptedVec_0 ? _GEN_569 : uop_5_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1896 = acceptedVec_0 ? _GEN_570 : uop_6_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1897 = acceptedVec_0 ? _GEN_571 : uop_7_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1898 = acceptedVec_0 ? _GEN_572 : uop_8_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1899 = acceptedVec_0 ? _GEN_573 : uop_9_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1900 = acceptedVec_0 ? _GEN_574 : uop_10_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [2:0] _GEN_1901 = acceptedVec_0 ? _GEN_575 : uop_11_cf_ftqOffset; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2418 = acceptedVec_0 ? _GEN_1092 : uop_0_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2419 = acceptedVec_0 ? _GEN_1093 : uop_1_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2420 = acceptedVec_0 ? _GEN_1094 : uop_2_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2421 = acceptedVec_0 ? _GEN_1095 : uop_3_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2422 = acceptedVec_0 ? _GEN_1096 : uop_4_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2423 = acceptedVec_0 ? _GEN_1097 : uop_5_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2424 = acceptedVec_0 ? _GEN_1098 : uop_6_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2425 = acceptedVec_0 ? _GEN_1099 : uop_7_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2426 = acceptedVec_0 ? _GEN_1100 : uop_8_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2427 = acceptedVec_0 ? _GEN_1101 : uop_9_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2428 = acceptedVec_0 ? _GEN_1102 : uop_10_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2429 = acceptedVec_0 ? _GEN_1103 : uop_11_robIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2430 = acceptedVec_0 ? _GEN_1104 : uop_0_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2431 = acceptedVec_0 ? _GEN_1105 : uop_1_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2432 = acceptedVec_0 ? _GEN_1106 : uop_2_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2433 = acceptedVec_0 ? _GEN_1107 : uop_3_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2434 = acceptedVec_0 ? _GEN_1108 : uop_4_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2435 = acceptedVec_0 ? _GEN_1109 : uop_5_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2436 = acceptedVec_0 ? _GEN_1110 : uop_6_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2437 = acceptedVec_0 ? _GEN_1111 : uop_7_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2438 = acceptedVec_0 ? _GEN_1112 : uop_8_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2439 = acceptedVec_0 ? _GEN_1113 : uop_9_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2440 = acceptedVec_0 ? _GEN_1114 : uop_10_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [4:0] _GEN_2441 = acceptedVec_0 ? _GEN_1115 : uop_11_robIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2466 = acceptedVec_0 ? _GEN_1140 : uop_0_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2467 = acceptedVec_0 ? _GEN_1141 : uop_1_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2468 = acceptedVec_0 ? _GEN_1142 : uop_2_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2469 = acceptedVec_0 ? _GEN_1143 : uop_3_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2470 = acceptedVec_0 ? _GEN_1144 : uop_4_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2471 = acceptedVec_0 ? _GEN_1145 : uop_5_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2472 = acceptedVec_0 ? _GEN_1146 : uop_6_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2473 = acceptedVec_0 ? _GEN_1147 : uop_7_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2474 = acceptedVec_0 ? _GEN_1148 : uop_8_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2475 = acceptedVec_0 ? _GEN_1149 : uop_9_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2476 = acceptedVec_0 ? _GEN_1150 : uop_10_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2477 = acceptedVec_0 ? _GEN_1151 : uop_11_sqIdx_flag; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2478 = acceptedVec_0 ? _GEN_1152 : uop_0_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2479 = acceptedVec_0 ? _GEN_1153 : uop_1_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2480 = acceptedVec_0 ? _GEN_1154 : uop_2_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2481 = acceptedVec_0 ? _GEN_1155 : uop_3_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2482 = acceptedVec_0 ? _GEN_1156 : uop_4_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2483 = acceptedVec_0 ? _GEN_1157 : uop_5_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2484 = acceptedVec_0 ? _GEN_1158 : uop_6_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2485 = acceptedVec_0 ? _GEN_1159 : uop_7_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2486 = acceptedVec_0 ? _GEN_1160 : uop_8_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2487 = acceptedVec_0 ? _GEN_1161 : uop_9_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2488 = acceptedVec_0 ? _GEN_1162 : uop_10_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire [3:0] _GEN_2489 = acceptedVec_0 ? _GEN_1163 : uop_11_sqIdx_value; // @[LoadQueueRAW.scala 136:40 69:16]
  wire  _GEN_2634 = acceptedVec_0 ? _GEN_1308 : datavalid_0; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2635 = acceptedVec_0 ? _GEN_1309 : datavalid_1; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2636 = acceptedVec_0 ? _GEN_1310 : datavalid_2; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2637 = acceptedVec_0 ? _GEN_1311 : datavalid_3; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2638 = acceptedVec_0 ? _GEN_1312 : datavalid_4; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2639 = acceptedVec_0 ? _GEN_1313 : datavalid_5; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2640 = acceptedVec_0 ? _GEN_1314 : datavalid_6; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2641 = acceptedVec_0 ? _GEN_1315 : datavalid_7; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2642 = acceptedVec_0 ? _GEN_1316 : datavalid_8; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2643 = acceptedVec_0 ? _GEN_1317 : datavalid_9; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2644 = acceptedVec_0 ? _GEN_1318 : datavalid_10; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2645 = acceptedVec_0 ? _GEN_1319 : datavalid_11; // @[LoadQueueRAW.scala 136:40 90:26]
  wire  _GEN_2647 = needEnqueue_0 ? freeList_io_canAllocate_1 : freeList_io_canAllocate_0; // @[LoadQueueRAW.scala 133:{21,21}]
  wire [3:0] enqIndexVec_1 = needEnqueue_0 ? freeList_io_allocateSlot_1 : _T_1; // @[LoadQueueRAW.scala 135:{20,20}]
  wire  acceptedVec_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAW.scala 136:26]
  wire  _GEN_2650 = 4'h0 == enqIndexVec_1 | _GEN_1321; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2651 = 4'h1 == enqIndexVec_1 | _GEN_1322; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2652 = 4'h2 == enqIndexVec_1 | _GEN_1323; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2653 = 4'h3 == enqIndexVec_1 | _GEN_1324; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2654 = 4'h4 == enqIndexVec_1 | _GEN_1325; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2655 = 4'h5 == enqIndexVec_1 | _GEN_1326; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2656 = 4'h6 == enqIndexVec_1 | _GEN_1327; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2657 = 4'h7 == enqIndexVec_1 | _GEN_1328; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2658 = 4'h8 == enqIndexVec_1 | _GEN_1329; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2659 = 4'h9 == enqIndexVec_1 | _GEN_1330; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2660 = 4'ha == enqIndexVec_1 | _GEN_1331; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_2661 = 4'hb == enqIndexVec_1 | _GEN_1332; // @[LoadQueueRAW.scala 145:{27,27}]
  wire  _GEN_3971 = acceptedVec_1 ? _GEN_2650 : _GEN_1321; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3972 = acceptedVec_1 ? _GEN_2651 : _GEN_1322; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3973 = acceptedVec_1 ? _GEN_2652 : _GEN_1323; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3974 = acceptedVec_1 ? _GEN_2653 : _GEN_1324; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3975 = acceptedVec_1 ? _GEN_2654 : _GEN_1325; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3976 = acceptedVec_1 ? _GEN_2655 : _GEN_1326; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3977 = acceptedVec_1 ? _GEN_2656 : _GEN_1327; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3978 = acceptedVec_1 ? _GEN_2657 : _GEN_1328; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3979 = acceptedVec_1 ? _GEN_2658 : _GEN_1329; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3980 = acceptedVec_1 ? _GEN_2659 : _GEN_1330; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3981 = acceptedVec_1 ? _GEN_2660 : _GEN_1331; // @[LoadQueueRAW.scala 136:40]
  wire  _GEN_3982 = acceptedVec_1 ? _GEN_2661 : _GEN_1332; // @[LoadQueueRAW.scala 136:40]
  wire  deqNotBlock_differentFlag = io_stAddrReadySqPtr_flag ^ uop_0_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare = io_stAddrReadySqPtr_value < uop_0_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_1 = deqNotBlock_differentFlag ^ deqNotBlock_compare; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_1 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_3 = _needCancel_flushItself_T_1 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself = io_redirect_bits_level & _needCancel_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag = uop_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare = uop_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T = needCancel_differentFlag ^ needCancel_compare; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel = io_redirect_valid & (needCancel_flushItself | _needCancel_T); // @[Rob.scala 143:20]
  wire  _T_19 = allocated_0 & (deqNotBlock | needCancel); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5297 = allocated_0 & (deqNotBlock | needCancel) ? 1'h0 : _GEN_3971; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_1 = io_stAddrReadySqPtr_flag ^ uop_1_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_1 = io_stAddrReadySqPtr_value < uop_1_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_4 = deqNotBlock_differentFlag_1 ^ deqNotBlock_compare_1; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_1 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_4 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_5 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_7 = _needCancel_flushItself_T_5 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_1 = io_redirect_bits_level & _needCancel_flushItself_T_7; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_1 = uop_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_1 = uop_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_2 = needCancel_differentFlag_1 ^ needCancel_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_1 = io_redirect_valid & (needCancel_flushItself_1 | _needCancel_T_2); // @[Rob.scala 143:20]
  wire  _T_21 = allocated_1 & (deqNotBlock_1 | needCancel_1); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5299 = allocated_1 & (deqNotBlock_1 | needCancel_1) ? 1'h0 : _GEN_3972; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_2 = io_stAddrReadySqPtr_flag ^ uop_2_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_2 = io_stAddrReadySqPtr_value < uop_2_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_7 = deqNotBlock_differentFlag_2 ^ deqNotBlock_compare_2; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_2 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_7 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_9 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_11 = _needCancel_flushItself_T_9 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_2 = io_redirect_bits_level & _needCancel_flushItself_T_11; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_2 = uop_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_2 = uop_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_4 = needCancel_differentFlag_2 ^ needCancel_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_2 = io_redirect_valid & (needCancel_flushItself_2 | _needCancel_T_4); // @[Rob.scala 143:20]
  wire  _T_23 = allocated_2 & (deqNotBlock_2 | needCancel_2); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5301 = allocated_2 & (deqNotBlock_2 | needCancel_2) ? 1'h0 : _GEN_3973; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_3 = io_stAddrReadySqPtr_flag ^ uop_3_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_3 = io_stAddrReadySqPtr_value < uop_3_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_10 = deqNotBlock_differentFlag_3 ^ deqNotBlock_compare_3; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_3 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_10 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_13 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_15 = _needCancel_flushItself_T_13 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_3 = io_redirect_bits_level & _needCancel_flushItself_T_15; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_3 = uop_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_3 = uop_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_6 = needCancel_differentFlag_3 ^ needCancel_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_3 = io_redirect_valid & (needCancel_flushItself_3 | _needCancel_T_6); // @[Rob.scala 143:20]
  wire  _T_25 = allocated_3 & (deqNotBlock_3 | needCancel_3); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5303 = allocated_3 & (deqNotBlock_3 | needCancel_3) ? 1'h0 : _GEN_3974; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_4 = io_stAddrReadySqPtr_flag ^ uop_4_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_4 = io_stAddrReadySqPtr_value < uop_4_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_13 = deqNotBlock_differentFlag_4 ^ deqNotBlock_compare_4; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_4 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_13 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_17 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_19 = _needCancel_flushItself_T_17 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_4 = io_redirect_bits_level & _needCancel_flushItself_T_19; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_4 = uop_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_4 = uop_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_8 = needCancel_differentFlag_4 ^ needCancel_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_4 = io_redirect_valid & (needCancel_flushItself_4 | _needCancel_T_8); // @[Rob.scala 143:20]
  wire  _T_27 = allocated_4 & (deqNotBlock_4 | needCancel_4); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5305 = allocated_4 & (deqNotBlock_4 | needCancel_4) ? 1'h0 : _GEN_3975; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_5 = io_stAddrReadySqPtr_flag ^ uop_5_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_5 = io_stAddrReadySqPtr_value < uop_5_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_16 = deqNotBlock_differentFlag_5 ^ deqNotBlock_compare_5; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_5 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_16 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_21 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_23 = _needCancel_flushItself_T_21 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_5 = io_redirect_bits_level & _needCancel_flushItself_T_23; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_5 = uop_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_5 = uop_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_10 = needCancel_differentFlag_5 ^ needCancel_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_5 = io_redirect_valid & (needCancel_flushItself_5 | _needCancel_T_10); // @[Rob.scala 143:20]
  wire  _T_29 = allocated_5 & (deqNotBlock_5 | needCancel_5); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5307 = allocated_5 & (deqNotBlock_5 | needCancel_5) ? 1'h0 : _GEN_3976; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_6 = io_stAddrReadySqPtr_flag ^ uop_6_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_6 = io_stAddrReadySqPtr_value < uop_6_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_19 = deqNotBlock_differentFlag_6 ^ deqNotBlock_compare_6; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_6 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_19 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_25 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_27 = _needCancel_flushItself_T_25 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_6 = io_redirect_bits_level & _needCancel_flushItself_T_27; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_6 = uop_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_6 = uop_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_12 = needCancel_differentFlag_6 ^ needCancel_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_6 = io_redirect_valid & (needCancel_flushItself_6 | _needCancel_T_12); // @[Rob.scala 143:20]
  wire  _T_31 = allocated_6 & (deqNotBlock_6 | needCancel_6); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5309 = allocated_6 & (deqNotBlock_6 | needCancel_6) ? 1'h0 : _GEN_3977; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_7 = io_stAddrReadySqPtr_flag ^ uop_7_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_7 = io_stAddrReadySqPtr_value < uop_7_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_22 = deqNotBlock_differentFlag_7 ^ deqNotBlock_compare_7; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_7 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_22 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_29 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_31 = _needCancel_flushItself_T_29 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_7 = io_redirect_bits_level & _needCancel_flushItself_T_31; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_7 = uop_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_7 = uop_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_14 = needCancel_differentFlag_7 ^ needCancel_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_7 = io_redirect_valid & (needCancel_flushItself_7 | _needCancel_T_14); // @[Rob.scala 143:20]
  wire  _T_33 = allocated_7 & (deqNotBlock_7 | needCancel_7); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5311 = allocated_7 & (deqNotBlock_7 | needCancel_7) ? 1'h0 : _GEN_3978; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_8 = io_stAddrReadySqPtr_flag ^ uop_8_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_8 = io_stAddrReadySqPtr_value < uop_8_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_25 = deqNotBlock_differentFlag_8 ^ deqNotBlock_compare_8; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_8 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_25 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_33 = {uop_8_robIdx_flag,uop_8_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_35 = _needCancel_flushItself_T_33 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_8 = io_redirect_bits_level & _needCancel_flushItself_T_35; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_8 = uop_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_8 = uop_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_16 = needCancel_differentFlag_8 ^ needCancel_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_8 = io_redirect_valid & (needCancel_flushItself_8 | _needCancel_T_16); // @[Rob.scala 143:20]
  wire  _T_35 = allocated_8 & (deqNotBlock_8 | needCancel_8); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5313 = allocated_8 & (deqNotBlock_8 | needCancel_8) ? 1'h0 : _GEN_3979; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_9 = io_stAddrReadySqPtr_flag ^ uop_9_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_9 = io_stAddrReadySqPtr_value < uop_9_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_28 = deqNotBlock_differentFlag_9 ^ deqNotBlock_compare_9; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_9 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_28 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_37 = {uop_9_robIdx_flag,uop_9_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_39 = _needCancel_flushItself_T_37 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_9 = io_redirect_bits_level & _needCancel_flushItself_T_39; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_9 = uop_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_9 = uop_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_18 = needCancel_differentFlag_9 ^ needCancel_compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_9 = io_redirect_valid & (needCancel_flushItself_9 | _needCancel_T_18); // @[Rob.scala 143:20]
  wire  _T_37 = allocated_9 & (deqNotBlock_9 | needCancel_9); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5315 = allocated_9 & (deqNotBlock_9 | needCancel_9) ? 1'h0 : _GEN_3980; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_10 = io_stAddrReadySqPtr_flag ^ uop_10_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_10 = io_stAddrReadySqPtr_value < uop_10_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_31 = deqNotBlock_differentFlag_10 ^ deqNotBlock_compare_10; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_10 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_31 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_41 = {uop_10_robIdx_flag,uop_10_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_43 = _needCancel_flushItself_T_41 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_10 = io_redirect_bits_level & _needCancel_flushItself_T_43; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_10 = uop_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_10 = uop_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_20 = needCancel_differentFlag_10 ^ needCancel_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_10 = io_redirect_valid & (needCancel_flushItself_10 | _needCancel_T_20); // @[Rob.scala 143:20]
  wire  _T_39 = allocated_10 & (deqNotBlock_10 | needCancel_10); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5317 = allocated_10 & (deqNotBlock_10 | needCancel_10) ? 1'h0 : _GEN_3981; // @[LoadQueueRAW.scala 182:56 183:20]
  wire  deqNotBlock_differentFlag_11 = io_stAddrReadySqPtr_flag ^ uop_11_sqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_11 = io_stAddrReadySqPtr_value < uop_11_sqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_34 = deqNotBlock_differentFlag_11 ^ deqNotBlock_compare_11; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_11 = _hasAddrInvalidStore_T ? ~_deqNotBlock_T_34 : 1'h1; // @[LoadQueueRAW.scala 179:26]
  wire [5:0] _needCancel_flushItself_T_45 = {uop_11_robIdx_flag,uop_11_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_47 = _needCancel_flushItself_T_45 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_11 = io_redirect_bits_level & _needCancel_flushItself_T_47; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_11 = uop_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_11 = uop_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_22 = needCancel_differentFlag_11 ^ needCancel_compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  needCancel_11 = io_redirect_valid & (needCancel_flushItself_11 | _needCancel_T_22); // @[Rob.scala 143:20]
  wire  _T_41 = allocated_11 & (deqNotBlock_11 | needCancel_11); // @[LoadQueueRAW.scala 182:24]
  wire  _GEN_5319 = allocated_11 & (deqNotBlock_11 | needCancel_11) ? 1'h0 : _GEN_3982; // @[LoadQueueRAW.scala 182:56 183:20]
  reg  lastCanAccept_0; // @[LoadQueueRAW.scala 189:30]
  reg  lastCanAccept_1; // @[LoadQueueRAW.scala 189:30]
  reg [3:0] lastAllocIndex_0; // @[LoadQueueRAW.scala 190:31]
  reg [3:0] lastAllocIndex_1; // @[LoadQueueRAW.scala 190:31]
  wire  revokeValid = io_query_0_revoke & lastCanAccept_0; // @[LoadQueueRAW.scala 193:30]
  wire  _GEN_5322 = 4'h1 == lastAllocIndex_0 ? allocated_1 : allocated_0; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5323 = 4'h2 == lastAllocIndex_0 ? allocated_2 : _GEN_5322; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5324 = 4'h3 == lastAllocIndex_0 ? allocated_3 : _GEN_5323; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5325 = 4'h4 == lastAllocIndex_0 ? allocated_4 : _GEN_5324; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5326 = 4'h5 == lastAllocIndex_0 ? allocated_5 : _GEN_5325; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5327 = 4'h6 == lastAllocIndex_0 ? allocated_6 : _GEN_5326; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5328 = 4'h7 == lastAllocIndex_0 ? allocated_7 : _GEN_5327; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5329 = 4'h8 == lastAllocIndex_0 ? allocated_8 : _GEN_5328; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5330 = 4'h9 == lastAllocIndex_0 ? allocated_9 : _GEN_5329; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5331 = 4'ha == lastAllocIndex_0 ? allocated_10 : _GEN_5330; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5332 = 4'hb == lastAllocIndex_0 ? allocated_11 : _GEN_5331; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5333 = 4'h0 == lastAllocIndex_0 ? 1'h0 : _GEN_5297; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5334 = 4'h1 == lastAllocIndex_0 ? 1'h0 : _GEN_5299; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5335 = 4'h2 == lastAllocIndex_0 ? 1'h0 : _GEN_5301; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5336 = 4'h3 == lastAllocIndex_0 ? 1'h0 : _GEN_5303; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5337 = 4'h4 == lastAllocIndex_0 ? 1'h0 : _GEN_5305; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5338 = 4'h5 == lastAllocIndex_0 ? 1'h0 : _GEN_5307; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5339 = 4'h6 == lastAllocIndex_0 ? 1'h0 : _GEN_5309; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5340 = 4'h7 == lastAllocIndex_0 ? 1'h0 : _GEN_5311; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5341 = 4'h8 == lastAllocIndex_0 ? 1'h0 : _GEN_5313; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5342 = 4'h9 == lastAllocIndex_0 ? 1'h0 : _GEN_5315; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5343 = 4'ha == lastAllocIndex_0 ? 1'h0 : _GEN_5317; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5344 = 4'hb == lastAllocIndex_0 ? 1'h0 : _GEN_5319; // @[LoadQueueRAW.scala 197:{30,30}]
  wire  _GEN_5345 = 4'h0 == lastAllocIndex_0 | _T_19; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5346 = 4'h1 == lastAllocIndex_0 | _T_21; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5347 = 4'h2 == lastAllocIndex_0 | _T_23; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5348 = 4'h3 == lastAllocIndex_0 | _T_25; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5349 = 4'h4 == lastAllocIndex_0 | _T_27; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5350 = 4'h5 == lastAllocIndex_0 | _T_29; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5351 = 4'h6 == lastAllocIndex_0 | _T_31; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5352 = 4'h7 == lastAllocIndex_0 | _T_33; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5353 = 4'h8 == lastAllocIndex_0 | _T_35; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5354 = 4'h9 == lastAllocIndex_0 | _T_37; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5355 = 4'ha == lastAllocIndex_0 | _T_39; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5356 = 4'hb == lastAllocIndex_0 | _T_41; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5357 = _GEN_5332 & revokeValid ? _GEN_5333 : _GEN_5297; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5358 = _GEN_5332 & revokeValid ? _GEN_5334 : _GEN_5299; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5359 = _GEN_5332 & revokeValid ? _GEN_5335 : _GEN_5301; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5360 = _GEN_5332 & revokeValid ? _GEN_5336 : _GEN_5303; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5361 = _GEN_5332 & revokeValid ? _GEN_5337 : _GEN_5305; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5362 = _GEN_5332 & revokeValid ? _GEN_5338 : _GEN_5307; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5363 = _GEN_5332 & revokeValid ? _GEN_5339 : _GEN_5309; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5364 = _GEN_5332 & revokeValid ? _GEN_5340 : _GEN_5311; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5365 = _GEN_5332 & revokeValid ? _GEN_5341 : _GEN_5313; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5366 = _GEN_5332 & revokeValid ? _GEN_5342 : _GEN_5315; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5367 = _GEN_5332 & revokeValid ? _GEN_5343 : _GEN_5317; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5368 = _GEN_5332 & revokeValid ? _GEN_5344 : _GEN_5319; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5369 = _GEN_5332 & revokeValid ? _GEN_5345 : _T_19; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5370 = _GEN_5332 & revokeValid ? _GEN_5346 : _T_21; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5371 = _GEN_5332 & revokeValid ? _GEN_5347 : _T_23; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5372 = _GEN_5332 & revokeValid ? _GEN_5348 : _T_25; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5373 = _GEN_5332 & revokeValid ? _GEN_5349 : _T_27; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5374 = _GEN_5332 & revokeValid ? _GEN_5350 : _T_29; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5375 = _GEN_5332 & revokeValid ? _GEN_5351 : _T_31; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5376 = _GEN_5332 & revokeValid ? _GEN_5352 : _T_33; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5377 = _GEN_5332 & revokeValid ? _GEN_5353 : _T_35; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5378 = _GEN_5332 & revokeValid ? _GEN_5354 : _T_37; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5379 = _GEN_5332 & revokeValid ? _GEN_5355 : _T_39; // @[LoadQueueRAW.scala 196:50]
  wire  _GEN_5380 = _GEN_5332 & revokeValid ? _GEN_5356 : _T_41; // @[LoadQueueRAW.scala 196:50]
  wire  revokeValid_1 = io_query_1_revoke & lastCanAccept_1; // @[LoadQueueRAW.scala 193:30]
  wire  _GEN_5382 = 4'h1 == lastAllocIndex_1 ? allocated_1 : allocated_0; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5383 = 4'h2 == lastAllocIndex_1 ? allocated_2 : _GEN_5382; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5384 = 4'h3 == lastAllocIndex_1 ? allocated_3 : _GEN_5383; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5385 = 4'h4 == lastAllocIndex_1 ? allocated_4 : _GEN_5384; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5386 = 4'h5 == lastAllocIndex_1 ? allocated_5 : _GEN_5385; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5387 = 4'h6 == lastAllocIndex_1 ? allocated_6 : _GEN_5386; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5388 = 4'h7 == lastAllocIndex_1 ? allocated_7 : _GEN_5387; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5389 = 4'h8 == lastAllocIndex_1 ? allocated_8 : _GEN_5388; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5390 = 4'h9 == lastAllocIndex_1 ? allocated_9 : _GEN_5389; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5391 = 4'ha == lastAllocIndex_1 ? allocated_10 : _GEN_5390; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5392 = 4'hb == lastAllocIndex_1 ? allocated_11 : _GEN_5391; // @[LoadQueueRAW.scala 196:{34,34}]
  wire  _GEN_5405 = 4'h0 == lastAllocIndex_1 | _GEN_5369; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5406 = 4'h1 == lastAllocIndex_1 | _GEN_5370; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5407 = 4'h2 == lastAllocIndex_1 | _GEN_5371; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5408 = 4'h3 == lastAllocIndex_1 | _GEN_5372; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5409 = 4'h4 == lastAllocIndex_1 | _GEN_5373; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5410 = 4'h5 == lastAllocIndex_1 | _GEN_5374; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5411 = 4'h6 == lastAllocIndex_1 | _GEN_5375; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5412 = 4'h7 == lastAllocIndex_1 | _GEN_5376; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5413 = 4'h8 == lastAllocIndex_1 | _GEN_5377; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5414 = 4'h9 == lastAllocIndex_1 | _GEN_5378; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5415 = 4'ha == lastAllocIndex_1 | _GEN_5379; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  _GEN_5416 = 4'hb == lastAllocIndex_1 | _GEN_5380; // @[LoadQueueRAW.scala 198:{32,32}]
  wire  freeMaskVec_0 = _GEN_5392 & revokeValid_1 ? _GEN_5405 : _GEN_5369; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_1 = _GEN_5392 & revokeValid_1 ? _GEN_5406 : _GEN_5370; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_2 = _GEN_5392 & revokeValid_1 ? _GEN_5407 : _GEN_5371; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_3 = _GEN_5392 & revokeValid_1 ? _GEN_5408 : _GEN_5372; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_4 = _GEN_5392 & revokeValid_1 ? _GEN_5409 : _GEN_5373; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_5 = _GEN_5392 & revokeValid_1 ? _GEN_5410 : _GEN_5374; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_6 = _GEN_5392 & revokeValid_1 ? _GEN_5411 : _GEN_5375; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_7 = _GEN_5392 & revokeValid_1 ? _GEN_5412 : _GEN_5376; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_8 = _GEN_5392 & revokeValid_1 ? _GEN_5413 : _GEN_5377; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_9 = _GEN_5392 & revokeValid_1 ? _GEN_5414 : _GEN_5378; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_10 = _GEN_5392 & revokeValid_1 ? _GEN_5415 : _GEN_5379; // @[LoadQueueRAW.scala 196:50]
  wire  freeMaskVec_11 = _GEN_5392 & revokeValid_1 ? _GEN_5416 : _GEN_5380; // @[LoadQueueRAW.scala 196:50]
  wire [5:0] freeList_io_free_lo = {freeMaskVec_5,freeMaskVec_4,freeMaskVec_3,freeMaskVec_2,freeMaskVec_1,freeMaskVec_0}
    ; // @[LoadQueueRAW.scala 201:35]
  wire [5:0] freeList_io_free_hi = {freeMaskVec_11,freeMaskVec_10,freeMaskVec_9,freeMaskVec_8,freeMaskVec_7,
    freeMaskVec_6}; // @[LoadQueueRAW.scala 201:35]
  reg  bypassPaddrMask__0; // @[LoadQueueRAW.scala 311:34]
  reg  bypassPaddrMask__1; // @[LoadQueueRAW.scala 311:34]
  wire [15:0] _bypassMMask_T = bypassMask_0 & io_storeIn_0_bits_mask; // @[LoadQueueRAW.scala 312:91]
  wire [15:0] _bypassMMask_T_2 = bypassMask_1 & io_storeIn_0_bits_mask; // @[LoadQueueRAW.scala 312:91]
  reg  bypassMMask__0; // @[LoadQueueRAW.scala 312:30]
  reg  bypassMMask__1; // @[LoadQueueRAW.scala 312:30]
  wire  _bypassMaskUInt_T = io_query_0_req_ready & io_query_0_req_valid; // @[Decoupled.scala 50:35]
  reg  bypassMaskUInt_REG; // @[LoadQueueRAW.scala 314:45]
  reg  bypassMaskUInt_REG_1; // @[LoadQueueRAW.scala 314:37]
  wire [11:0] _bypassMaskUInt_T_2 = bypassMaskUInt_REG_1 ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  reg [3:0] bypassMaskUInt_REG_2; // @[LoadQueueRAW.scala 314:138]
  reg [3:0] bypassMaskUInt_REG_3; // @[LoadQueueRAW.scala 314:130]
  wire [15:0] _bypassMaskUInt_T_4 = 16'h1 << bypassMaskUInt_REG_3; // @[OneHot.scala 57:35]
  wire [15:0] _bypassMaskUInt_T_5 = bypassPaddrMask__0 & bypassMMask__0 ? _bypassMaskUInt_T_4 : 16'h0; // @[LoadQueueRAW.scala 314:75]
  wire [15:0] _GEN_5495 = {{4'd0}, _bypassMaskUInt_T_2}; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] _bypassMaskUInt_T_6 = _GEN_5495 & _bypassMaskUInt_T_5; // @[LoadQueueRAW.scala 314:70]
  wire  _bypassMaskUInt_T_7 = io_query_1_req_ready & io_query_1_req_valid; // @[Decoupled.scala 50:35]
  reg  bypassMaskUInt_REG_4; // @[LoadQueueRAW.scala 314:45]
  reg  bypassMaskUInt_REG_5; // @[LoadQueueRAW.scala 314:37]
  wire [11:0] _bypassMaskUInt_T_9 = bypassMaskUInt_REG_5 ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  reg [3:0] bypassMaskUInt_REG_6; // @[LoadQueueRAW.scala 314:138]
  reg [3:0] bypassMaskUInt_REG_7; // @[LoadQueueRAW.scala 314:130]
  wire [15:0] _bypassMaskUInt_T_11 = 16'h1 << bypassMaskUInt_REG_7; // @[OneHot.scala 57:35]
  wire [15:0] _bypassMaskUInt_T_12 = bypassPaddrMask__1 & bypassMMask__1 ? _bypassMaskUInt_T_11 : 16'h0; // @[LoadQueueRAW.scala 314:75]
  wire [15:0] _GEN_5496 = {{4'd0}, _bypassMaskUInt_T_9}; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] _bypassMaskUInt_T_13 = _GEN_5496 & _bypassMaskUInt_T_12; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] bypassMaskUInt = _bypassMaskUInt_T_6 | _bypassMaskUInt_T_13; // @[LoadQueueRAW.scala 315:15]
  wire [5:0] addrMaskMatch_lo = {paddrModule_io_violationMmask_0_5,paddrModule_io_violationMmask_0_4,
    paddrModule_io_violationMmask_0_3,paddrModule_io_violationMmask_0_2,paddrModule_io_violationMmask_0_1,
    paddrModule_io_violationMmask_0_0}; // @[LoadQueueRAW.scala 317:66]
  wire [11:0] _addrMaskMatch_T = {paddrModule_io_violationMmask_0_11,paddrModule_io_violationMmask_0_10,
    paddrModule_io_violationMmask_0_9,paddrModule_io_violationMmask_0_8,paddrModule_io_violationMmask_0_7,
    paddrModule_io_violationMmask_0_6,addrMaskMatch_lo}; // @[LoadQueueRAW.scala 317:66]
  wire [5:0] addrMaskMatch_lo_1 = {maskModule_io_violationMmask_0_5,maskModule_io_violationMmask_0_4,
    maskModule_io_violationMmask_0_3,maskModule_io_violationMmask_0_2,maskModule_io_violationMmask_0_1,
    maskModule_io_violationMmask_0_0}; // @[LoadQueueRAW.scala 317:107]
  wire [11:0] _addrMaskMatch_T_1 = {maskModule_io_violationMmask_0_11,maskModule_io_violationMmask_0_10,
    maskModule_io_violationMmask_0_9,maskModule_io_violationMmask_0_8,maskModule_io_violationMmask_0_7,
    maskModule_io_violationMmask_0_6,addrMaskMatch_lo_1}; // @[LoadQueueRAW.scala 317:107]
  reg [11:0] addrMaskMatch_REG; // @[LoadQueueRAW.scala 317:32]
  wire [15:0] _GEN_5497 = {{4'd0}, addrMaskMatch_REG}; // @[LoadQueueRAW.scala 317:115]
  wire [15:0] addrMaskMatch = _GEN_5497 | bypassMaskUInt; // @[LoadQueueRAW.scala 317:115]
  wire  entryNeedCheck_differentFlag = uop_0_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare = uop_0_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T = entryNeedCheck_differentFlag ^ entryNeedCheck_compare; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_2 = uop_1_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_2 = uop_1_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_8 = entryNeedCheck_differentFlag_2 ^ entryNeedCheck_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_4 = uop_2_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_4 = uop_2_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_16 = entryNeedCheck_differentFlag_4 ^ entryNeedCheck_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_6 = uop_3_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_6 = uop_3_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_24 = entryNeedCheck_differentFlag_6 ^ entryNeedCheck_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_8 = uop_4_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_8 = uop_4_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_32 = entryNeedCheck_differentFlag_8 ^ entryNeedCheck_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_10 = uop_5_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_10 = uop_5_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_40 = entryNeedCheck_differentFlag_10 ^ entryNeedCheck_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_12 = uop_6_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_12 = uop_6_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_48 = entryNeedCheck_differentFlag_12 ^ entryNeedCheck_compare_12; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_14 = uop_7_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_14 = uop_7_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_56 = entryNeedCheck_differentFlag_14 ^ entryNeedCheck_compare_14; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_16 = uop_8_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_16 = uop_8_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_64 = entryNeedCheck_differentFlag_16 ^ entryNeedCheck_compare_16; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_18 = uop_9_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_18 = uop_9_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_72 = entryNeedCheck_differentFlag_18 ^ entryNeedCheck_compare_18; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_20 = uop_10_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_20 = uop_10_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_80 = entryNeedCheck_differentFlag_20 ^ entryNeedCheck_compare_20; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_22 = uop_11_robIdx_flag ^ io_storeIn_0_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_22 = uop_11_robIdx_value > io_storeIn_0_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_88 = entryNeedCheck_differentFlag_22 ^ entryNeedCheck_compare_22; // @[CircularQueuePtr.scala 68:19]
  reg  entryNeedCheck__0; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__1; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__2; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__3; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__4; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__5; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__6; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__7; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__8; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__9; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__10; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck__11; // @[LoadQueueRAW.scala 318:33]
  wire  lqViolationSelVec__0 = addrMaskMatch[0] & entryNeedCheck__0; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__1 = addrMaskMatch[1] & entryNeedCheck__1; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__2 = addrMaskMatch[2] & entryNeedCheck__2; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__3 = addrMaskMatch[3] & entryNeedCheck__3; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__4 = addrMaskMatch[4] & entryNeedCheck__4; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__5 = addrMaskMatch[5] & entryNeedCheck__5; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__6 = addrMaskMatch[6] & entryNeedCheck__6; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__7 = addrMaskMatch[7] & entryNeedCheck__7; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__8 = addrMaskMatch[8] & entryNeedCheck__8; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__9 = addrMaskMatch[9] & entryNeedCheck__9; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__10 = addrMaskMatch[10] & entryNeedCheck__10; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec__11 = addrMaskMatch[11] & entryNeedCheck__11; // @[LoadQueueRAW.scala 322:24]
  wire  oldest_differentFlag = uop_0_robIdx_flag ^ uop_1_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare = uop_0_robIdx_value > uop_1_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_1 = oldest_differentFlag ^ oldest_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_2_valid = _oldest_T_1 ? lqViolationSelVec__1 : lqViolationSelVec__0; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_2_bits_uop_cf_ftqPtr_flag = _oldest_T_1 ? uop_1_cf_ftqPtr_flag : uop_0_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_2_bits_uop_cf_ftqPtr_value = _oldest_T_1 ? uop_1_cf_ftqPtr_value : uop_0_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_2_bits_uop_cf_ftqOffset = _oldest_T_1 ? uop_1_cf_ftqOffset : uop_0_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_2_bits_uop_robIdx_flag = _oldest_T_1 ? uop_1_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_2_bits_uop_robIdx_value = _oldest_T_1 ? uop_1_robIdx_value : uop_0_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_5_valid = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? lqViolationSelVec__0 : lqViolationSelVec__1; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_5_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? uop_0_cf_ftqPtr_flag :
    uop_1_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_5_bits_uop_cf_ftqPtr_value = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? uop_0_cf_ftqPtr_value
     : uop_1_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_5_bits_uop_cf_ftqOffset = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? uop_0_cf_ftqOffset :
    uop_1_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_5_bits_uop_robIdx_flag = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? uop_0_robIdx_flag :
    uop_1_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_5_bits_uop_robIdx_value = lqViolationSelVec__0 & ~lqViolationSelVec__1 ? uop_0_robIdx_value :
    uop_1_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_valid = lqViolationSelVec__0 & lqViolationSelVec__1 ? _oldest_T_2_valid : _oldest_T_5_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__0 & lqViolationSelVec__1 ?
    _oldest_T_2_bits_uop_cf_ftqPtr_flag : _oldest_T_5_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_bits_uop_cf_ftqPtr_value = lqViolationSelVec__0 & lqViolationSelVec__1 ?
    _oldest_T_2_bits_uop_cf_ftqPtr_value : _oldest_T_5_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_bits_uop_cf_ftqOffset = lqViolationSelVec__0 & lqViolationSelVec__1 ?
    _oldest_T_2_bits_uop_cf_ftqOffset : _oldest_T_5_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_bits_uop_robIdx_flag = lqViolationSelVec__0 & lqViolationSelVec__1 ? _oldest_T_2_bits_uop_robIdx_flag :
    _oldest_T_5_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_bits_uop_robIdx_value = lqViolationSelVec__0 & lqViolationSelVec__1 ?
    _oldest_T_2_bits_uop_robIdx_value : _oldest_T_5_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_1 = uop_2_robIdx_flag ^ uop_3_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_1 = uop_2_robIdx_value > uop_3_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_7 = oldest_differentFlag_1 ^ oldest_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_8_valid = _oldest_T_7 ? lqViolationSelVec__3 : lqViolationSelVec__2; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_8_bits_uop_cf_ftqPtr_flag = _oldest_T_7 ? uop_3_cf_ftqPtr_flag : uop_2_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_8_bits_uop_cf_ftqPtr_value = _oldest_T_7 ? uop_3_cf_ftqPtr_value : uop_2_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_8_bits_uop_cf_ftqOffset = _oldest_T_7 ? uop_3_cf_ftqOffset : uop_2_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_8_bits_uop_robIdx_flag = _oldest_T_7 ? uop_3_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_8_bits_uop_robIdx_value = _oldest_T_7 ? uop_3_robIdx_value : uop_2_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_11_valid = lqViolationSelVec__2 & ~lqViolationSelVec__3 ? lqViolationSelVec__2 : lqViolationSelVec__3; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_11_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__2 & ~lqViolationSelVec__3 ? uop_2_cf_ftqPtr_flag :
    uop_3_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_11_bits_uop_cf_ftqPtr_value = lqViolationSelVec__2 & ~lqViolationSelVec__3 ?
    uop_2_cf_ftqPtr_value : uop_3_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_11_bits_uop_cf_ftqOffset = lqViolationSelVec__2 & ~lqViolationSelVec__3 ? uop_2_cf_ftqOffset :
    uop_3_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_11_bits_uop_robIdx_flag = lqViolationSelVec__2 & ~lqViolationSelVec__3 ? uop_2_robIdx_flag :
    uop_3_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_11_bits_uop_robIdx_value = lqViolationSelVec__2 & ~lqViolationSelVec__3 ? uop_2_robIdx_value :
    uop_3_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_1_valid = lqViolationSelVec__2 & lqViolationSelVec__3 ? _oldest_T_8_valid : _oldest_T_11_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_1_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__2 & lqViolationSelVec__3 ?
    _oldest_T_8_bits_uop_cf_ftqPtr_flag : _oldest_T_11_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_1_bits_uop_cf_ftqPtr_value = lqViolationSelVec__2 & lqViolationSelVec__3 ?
    _oldest_T_8_bits_uop_cf_ftqPtr_value : _oldest_T_11_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_1_bits_uop_cf_ftqOffset = lqViolationSelVec__2 & lqViolationSelVec__3 ?
    _oldest_T_8_bits_uop_cf_ftqOffset : _oldest_T_11_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_1_bits_uop_robIdx_flag = lqViolationSelVec__2 & lqViolationSelVec__3 ? _oldest_T_8_bits_uop_robIdx_flag
     : _oldest_T_11_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_1_bits_uop_robIdx_value = lqViolationSelVec__2 & lqViolationSelVec__3 ?
    _oldest_T_8_bits_uop_robIdx_value : _oldest_T_11_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_2 = oldest_bits_uop_robIdx_flag ^ oldest_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_2 = oldest_bits_uop_robIdx_value > oldest_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_13 = oldest_differentFlag_2 ^ oldest_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_14_valid = _oldest_T_13 ? oldest_1_valid : oldest_valid; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_14_bits_uop_cf_ftqPtr_flag = _oldest_T_13 ? oldest_1_bits_uop_cf_ftqPtr_flag :
    oldest_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_14_bits_uop_cf_ftqPtr_value = _oldest_T_13 ? oldest_1_bits_uop_cf_ftqPtr_value :
    oldest_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_14_bits_uop_cf_ftqOffset = _oldest_T_13 ? oldest_1_bits_uop_cf_ftqOffset :
    oldest_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_14_bits_uop_robIdx_flag = _oldest_T_13 ? oldest_1_bits_uop_robIdx_flag : oldest_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_14_bits_uop_robIdx_value = _oldest_T_13 ? oldest_1_bits_uop_robIdx_value :
    oldest_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_17_valid = oldest_valid & ~oldest_1_valid ? oldest_valid : oldest_1_valid; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_17_bits_uop_cf_ftqPtr_flag = oldest_valid & ~oldest_1_valid ? oldest_bits_uop_cf_ftqPtr_flag :
    oldest_1_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_17_bits_uop_cf_ftqPtr_value = oldest_valid & ~oldest_1_valid ? oldest_bits_uop_cf_ftqPtr_value :
    oldest_1_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_17_bits_uop_cf_ftqOffset = oldest_valid & ~oldest_1_valid ? oldest_bits_uop_cf_ftqOffset :
    oldest_1_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_17_bits_uop_robIdx_flag = oldest_valid & ~oldest_1_valid ? oldest_bits_uop_robIdx_flag :
    oldest_1_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_17_bits_uop_robIdx_value = oldest_valid & ~oldest_1_valid ? oldest_bits_uop_robIdx_value :
    oldest_1_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_2_valid = oldest_valid & oldest_1_valid ? _oldest_T_14_valid : _oldest_T_17_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_2_bits_uop_cf_ftqPtr_flag = oldest_valid & oldest_1_valid ? _oldest_T_14_bits_uop_cf_ftqPtr_flag :
    _oldest_T_17_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_2_bits_uop_cf_ftqPtr_value = oldest_valid & oldest_1_valid ? _oldest_T_14_bits_uop_cf_ftqPtr_value
     : _oldest_T_17_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_2_bits_uop_cf_ftqOffset = oldest_valid & oldest_1_valid ? _oldest_T_14_bits_uop_cf_ftqOffset :
    _oldest_T_17_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_2_bits_uop_robIdx_flag = oldest_valid & oldest_1_valid ? _oldest_T_14_bits_uop_robIdx_flag :
    _oldest_T_17_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_2_bits_uop_robIdx_value = oldest_valid & oldest_1_valid ? _oldest_T_14_bits_uop_robIdx_value :
    _oldest_T_17_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_3 = uop_4_robIdx_flag ^ uop_5_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_3 = uop_4_robIdx_value > uop_5_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_19 = oldest_differentFlag_3 ^ oldest_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_20_valid = _oldest_T_19 ? lqViolationSelVec__5 : lqViolationSelVec__4; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_20_bits_uop_cf_ftqPtr_flag = _oldest_T_19 ? uop_5_cf_ftqPtr_flag : uop_4_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_20_bits_uop_cf_ftqPtr_value = _oldest_T_19 ? uop_5_cf_ftqPtr_value : uop_4_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_20_bits_uop_cf_ftqOffset = _oldest_T_19 ? uop_5_cf_ftqOffset : uop_4_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_20_bits_uop_robIdx_flag = _oldest_T_19 ? uop_5_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_20_bits_uop_robIdx_value = _oldest_T_19 ? uop_5_robIdx_value : uop_4_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_23_valid = lqViolationSelVec__4 & ~lqViolationSelVec__5 ? lqViolationSelVec__4 : lqViolationSelVec__5; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_23_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__4 & ~lqViolationSelVec__5 ? uop_4_cf_ftqPtr_flag :
    uop_5_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_23_bits_uop_cf_ftqPtr_value = lqViolationSelVec__4 & ~lqViolationSelVec__5 ?
    uop_4_cf_ftqPtr_value : uop_5_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_23_bits_uop_cf_ftqOffset = lqViolationSelVec__4 & ~lqViolationSelVec__5 ? uop_4_cf_ftqOffset :
    uop_5_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_23_bits_uop_robIdx_flag = lqViolationSelVec__4 & ~lqViolationSelVec__5 ? uop_4_robIdx_flag :
    uop_5_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_23_bits_uop_robIdx_value = lqViolationSelVec__4 & ~lqViolationSelVec__5 ? uop_4_robIdx_value :
    uop_5_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_3_valid = lqViolationSelVec__4 & lqViolationSelVec__5 ? _oldest_T_20_valid : _oldest_T_23_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_3_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__4 & lqViolationSelVec__5 ?
    _oldest_T_20_bits_uop_cf_ftqPtr_flag : _oldest_T_23_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_3_bits_uop_cf_ftqPtr_value = lqViolationSelVec__4 & lqViolationSelVec__5 ?
    _oldest_T_20_bits_uop_cf_ftqPtr_value : _oldest_T_23_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_3_bits_uop_cf_ftqOffset = lqViolationSelVec__4 & lqViolationSelVec__5 ?
    _oldest_T_20_bits_uop_cf_ftqOffset : _oldest_T_23_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_3_bits_uop_robIdx_flag = lqViolationSelVec__4 & lqViolationSelVec__5 ? _oldest_T_20_bits_uop_robIdx_flag
     : _oldest_T_23_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_3_bits_uop_robIdx_value = lqViolationSelVec__4 & lqViolationSelVec__5 ?
    _oldest_T_20_bits_uop_robIdx_value : _oldest_T_23_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_4 = uop_6_robIdx_flag ^ uop_7_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_4 = uop_6_robIdx_value > uop_7_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_25 = oldest_differentFlag_4 ^ oldest_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_26_valid = _oldest_T_25 ? lqViolationSelVec__7 : lqViolationSelVec__6; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_26_bits_uop_cf_ftqPtr_flag = _oldest_T_25 ? uop_7_cf_ftqPtr_flag : uop_6_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_26_bits_uop_cf_ftqPtr_value = _oldest_T_25 ? uop_7_cf_ftqPtr_value : uop_6_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_26_bits_uop_cf_ftqOffset = _oldest_T_25 ? uop_7_cf_ftqOffset : uop_6_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_26_bits_uop_robIdx_flag = _oldest_T_25 ? uop_7_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_26_bits_uop_robIdx_value = _oldest_T_25 ? uop_7_robIdx_value : uop_6_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_29_valid = lqViolationSelVec__6 & ~lqViolationSelVec__7 ? lqViolationSelVec__6 : lqViolationSelVec__7; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_29_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__6 & ~lqViolationSelVec__7 ? uop_6_cf_ftqPtr_flag :
    uop_7_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_29_bits_uop_cf_ftqPtr_value = lqViolationSelVec__6 & ~lqViolationSelVec__7 ?
    uop_6_cf_ftqPtr_value : uop_7_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_29_bits_uop_cf_ftqOffset = lqViolationSelVec__6 & ~lqViolationSelVec__7 ? uop_6_cf_ftqOffset :
    uop_7_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_29_bits_uop_robIdx_flag = lqViolationSelVec__6 & ~lqViolationSelVec__7 ? uop_6_robIdx_flag :
    uop_7_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_29_bits_uop_robIdx_value = lqViolationSelVec__6 & ~lqViolationSelVec__7 ? uop_6_robIdx_value :
    uop_7_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_4_valid = lqViolationSelVec__6 & lqViolationSelVec__7 ? _oldest_T_26_valid : _oldest_T_29_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_4_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__6 & lqViolationSelVec__7 ?
    _oldest_T_26_bits_uop_cf_ftqPtr_flag : _oldest_T_29_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_4_bits_uop_cf_ftqPtr_value = lqViolationSelVec__6 & lqViolationSelVec__7 ?
    _oldest_T_26_bits_uop_cf_ftqPtr_value : _oldest_T_29_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_4_bits_uop_cf_ftqOffset = lqViolationSelVec__6 & lqViolationSelVec__7 ?
    _oldest_T_26_bits_uop_cf_ftqOffset : _oldest_T_29_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_4_bits_uop_robIdx_flag = lqViolationSelVec__6 & lqViolationSelVec__7 ? _oldest_T_26_bits_uop_robIdx_flag
     : _oldest_T_29_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_4_bits_uop_robIdx_value = lqViolationSelVec__6 & lqViolationSelVec__7 ?
    _oldest_T_26_bits_uop_robIdx_value : _oldest_T_29_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_5 = oldest_3_bits_uop_robIdx_flag ^ oldest_4_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_5 = oldest_3_bits_uop_robIdx_value > oldest_4_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_31 = oldest_differentFlag_5 ^ oldest_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_32_valid = _oldest_T_31 ? oldest_4_valid : oldest_3_valid; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_32_bits_uop_cf_ftqPtr_flag = _oldest_T_31 ? oldest_4_bits_uop_cf_ftqPtr_flag :
    oldest_3_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_32_bits_uop_cf_ftqPtr_value = _oldest_T_31 ? oldest_4_bits_uop_cf_ftqPtr_value :
    oldest_3_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_32_bits_uop_cf_ftqOffset = _oldest_T_31 ? oldest_4_bits_uop_cf_ftqOffset :
    oldest_3_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_32_bits_uop_robIdx_flag = _oldest_T_31 ? oldest_4_bits_uop_robIdx_flag : oldest_3_bits_uop_robIdx_flag
    ; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_32_bits_uop_robIdx_value = _oldest_T_31 ? oldest_4_bits_uop_robIdx_value :
    oldest_3_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_35_valid = oldest_3_valid & ~oldest_4_valid ? oldest_3_valid : oldest_4_valid; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_35_bits_uop_cf_ftqPtr_flag = oldest_3_valid & ~oldest_4_valid ? oldest_3_bits_uop_cf_ftqPtr_flag :
    oldest_4_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_35_bits_uop_cf_ftqPtr_value = oldest_3_valid & ~oldest_4_valid ?
    oldest_3_bits_uop_cf_ftqPtr_value : oldest_4_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_35_bits_uop_cf_ftqOffset = oldest_3_valid & ~oldest_4_valid ? oldest_3_bits_uop_cf_ftqOffset :
    oldest_4_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_35_bits_uop_robIdx_flag = oldest_3_valid & ~oldest_4_valid ? oldest_3_bits_uop_robIdx_flag :
    oldest_4_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_35_bits_uop_robIdx_value = oldest_3_valid & ~oldest_4_valid ? oldest_3_bits_uop_robIdx_value :
    oldest_4_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_5_valid = oldest_3_valid & oldest_4_valid ? _oldest_T_32_valid : _oldest_T_35_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_5_bits_uop_cf_ftqPtr_flag = oldest_3_valid & oldest_4_valid ? _oldest_T_32_bits_uop_cf_ftqPtr_flag :
    _oldest_T_35_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_5_bits_uop_cf_ftqPtr_value = oldest_3_valid & oldest_4_valid ? _oldest_T_32_bits_uop_cf_ftqPtr_value
     : _oldest_T_35_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_5_bits_uop_cf_ftqOffset = oldest_3_valid & oldest_4_valid ? _oldest_T_32_bits_uop_cf_ftqOffset :
    _oldest_T_35_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_5_bits_uop_robIdx_flag = oldest_3_valid & oldest_4_valid ? _oldest_T_32_bits_uop_robIdx_flag :
    _oldest_T_35_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_5_bits_uop_robIdx_value = oldest_3_valid & oldest_4_valid ? _oldest_T_32_bits_uop_robIdx_value :
    _oldest_T_35_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_6 = oldest_2_bits_uop_robIdx_flag ^ oldest_5_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_6 = oldest_2_bits_uop_robIdx_value > oldest_5_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_37 = oldest_differentFlag_6 ^ oldest_compare_6; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext; // @[LoadQueueRAW.scala 299:35]
  reg  selBitsNext_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 300:34]
  reg  selBitsNext_uop_robIdx_flag; // @[LoadQueueRAW.scala 300:34]
  reg [4:0] selBitsNext_uop_robIdx_value; // @[LoadQueueRAW.scala 300:34]
  wire [5:0] _flushItself_T_1 = {selBitsNext_uop_robIdx_flag,selBitsNext_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_3 = _flushItself_T_1 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = selBitsNext_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = selBitsNext_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_56 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_58 = io_redirect_valid & (flushItself | _T_56); // @[Rob.scala 143:20]
  reg  REG_valid; // @[LoadQueueRAW.scala 301:117]
  reg  REG_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
  reg [4:0] REG_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
  reg  REG_bits_level; // @[LoadQueueRAW.scala 301:117]
  wire [5:0] _flushItself_T_6 = {REG_bits_robIdx_flag,REG_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_7 = _flushItself_T_1 == _flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_1 = REG_bits_level & _flushItself_T_7; // @[Rob.scala 142:51]
  wire  differentFlag_1 = selBitsNext_uop_robIdx_flag ^ REG_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_1 = selBitsNext_uop_robIdx_value > REG_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_61 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _T_63 = REG_valid & (flushItself_1 | _T_61); // @[Rob.scala 143:20]
  wire  res_0_10_valid = selValidNext & ~_T_58 & ~_T_63; // @[LoadQueueRAW.scala 301:73]
  wire  oldest_differentFlag_7 = uop_8_robIdx_flag ^ uop_9_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_7 = uop_8_robIdx_value > uop_9_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_43 = oldest_differentFlag_7 ^ oldest_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_44_valid = _oldest_T_43 ? lqViolationSelVec__9 : lqViolationSelVec__8; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_44_bits_uop_cf_ftqPtr_flag = _oldest_T_43 ? uop_9_cf_ftqPtr_flag : uop_8_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_44_bits_uop_cf_ftqPtr_value = _oldest_T_43 ? uop_9_cf_ftqPtr_value : uop_8_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_44_bits_uop_cf_ftqOffset = _oldest_T_43 ? uop_9_cf_ftqOffset : uop_8_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_44_bits_uop_robIdx_flag = _oldest_T_43 ? uop_9_robIdx_flag : uop_8_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_44_bits_uop_robIdx_value = _oldest_T_43 ? uop_9_robIdx_value : uop_8_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_47_valid = lqViolationSelVec__8 & ~lqViolationSelVec__9 ? lqViolationSelVec__8 : lqViolationSelVec__9; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_47_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__8 & ~lqViolationSelVec__9 ? uop_8_cf_ftqPtr_flag :
    uop_9_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_47_bits_uop_cf_ftqPtr_value = lqViolationSelVec__8 & ~lqViolationSelVec__9 ?
    uop_8_cf_ftqPtr_value : uop_9_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_47_bits_uop_cf_ftqOffset = lqViolationSelVec__8 & ~lqViolationSelVec__9 ? uop_8_cf_ftqOffset :
    uop_9_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_47_bits_uop_robIdx_flag = lqViolationSelVec__8 & ~lqViolationSelVec__9 ? uop_8_robIdx_flag :
    uop_9_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_47_bits_uop_robIdx_value = lqViolationSelVec__8 & ~lqViolationSelVec__9 ? uop_8_robIdx_value :
    uop_9_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_7_valid = lqViolationSelVec__8 & lqViolationSelVec__9 ? _oldest_T_44_valid : _oldest_T_47_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_7_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__8 & lqViolationSelVec__9 ?
    _oldest_T_44_bits_uop_cf_ftqPtr_flag : _oldest_T_47_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_7_bits_uop_cf_ftqPtr_value = lqViolationSelVec__8 & lqViolationSelVec__9 ?
    _oldest_T_44_bits_uop_cf_ftqPtr_value : _oldest_T_47_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_7_bits_uop_cf_ftqOffset = lqViolationSelVec__8 & lqViolationSelVec__9 ?
    _oldest_T_44_bits_uop_cf_ftqOffset : _oldest_T_47_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_7_bits_uop_robIdx_flag = lqViolationSelVec__8 & lqViolationSelVec__9 ? _oldest_T_44_bits_uop_robIdx_flag
     : _oldest_T_47_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_7_bits_uop_robIdx_value = lqViolationSelVec__8 & lqViolationSelVec__9 ?
    _oldest_T_44_bits_uop_robIdx_value : _oldest_T_47_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_8 = uop_10_robIdx_flag ^ uop_11_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_8 = uop_10_robIdx_value > uop_11_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_49 = oldest_differentFlag_8 ^ oldest_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_50_valid = _oldest_T_49 ? lqViolationSelVec__11 : lqViolationSelVec__10; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_50_bits_uop_cf_ftqPtr_flag = _oldest_T_49 ? uop_11_cf_ftqPtr_flag : uop_10_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_50_bits_uop_cf_ftqPtr_value = _oldest_T_49 ? uop_11_cf_ftqPtr_value : uop_10_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_50_bits_uop_cf_ftqOffset = _oldest_T_49 ? uop_11_cf_ftqOffset : uop_10_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_50_bits_uop_robIdx_flag = _oldest_T_49 ? uop_11_robIdx_flag : uop_10_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_50_bits_uop_robIdx_value = _oldest_T_49 ? uop_11_robIdx_value : uop_10_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_53_valid = lqViolationSelVec__10 & ~lqViolationSelVec__11 ? lqViolationSelVec__10 :
    lqViolationSelVec__11; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_53_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__10 & ~lqViolationSelVec__11 ? uop_10_cf_ftqPtr_flag :
    uop_11_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_53_bits_uop_cf_ftqPtr_value = lqViolationSelVec__10 & ~lqViolationSelVec__11 ?
    uop_10_cf_ftqPtr_value : uop_11_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_53_bits_uop_cf_ftqOffset = lqViolationSelVec__10 & ~lqViolationSelVec__11 ? uop_10_cf_ftqOffset
     : uop_11_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_53_bits_uop_robIdx_flag = lqViolationSelVec__10 & ~lqViolationSelVec__11 ? uop_10_robIdx_flag :
    uop_11_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_53_bits_uop_robIdx_value = lqViolationSelVec__10 & ~lqViolationSelVec__11 ? uop_10_robIdx_value
     : uop_11_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_8_valid = lqViolationSelVec__10 & lqViolationSelVec__11 ? _oldest_T_50_valid : _oldest_T_53_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_8_bits_uop_cf_ftqPtr_flag = lqViolationSelVec__10 & lqViolationSelVec__11 ?
    _oldest_T_50_bits_uop_cf_ftqPtr_flag : _oldest_T_53_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_8_bits_uop_cf_ftqPtr_value = lqViolationSelVec__10 & lqViolationSelVec__11 ?
    _oldest_T_50_bits_uop_cf_ftqPtr_value : _oldest_T_53_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_8_bits_uop_cf_ftqOffset = lqViolationSelVec__10 & lqViolationSelVec__11 ?
    _oldest_T_50_bits_uop_cf_ftqOffset : _oldest_T_53_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_8_bits_uop_robIdx_flag = lqViolationSelVec__10 & lqViolationSelVec__11 ?
    _oldest_T_50_bits_uop_robIdx_flag : _oldest_T_53_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_8_bits_uop_robIdx_value = lqViolationSelVec__10 & lqViolationSelVec__11 ?
    _oldest_T_50_bits_uop_robIdx_value : _oldest_T_53_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_9 = oldest_7_bits_uop_robIdx_flag ^ oldest_8_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_9 = oldest_7_bits_uop_robIdx_value > oldest_8_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_55 = oldest_differentFlag_9 ^ oldest_compare_9; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext_1; // @[LoadQueueRAW.scala 299:35]
  reg  selBitsNext_1_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_1_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_1_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 300:34]
  reg  selBitsNext_1_uop_robIdx_flag; // @[LoadQueueRAW.scala 300:34]
  reg [4:0] selBitsNext_1_uop_robIdx_value; // @[LoadQueueRAW.scala 300:34]
  wire [5:0] _flushItself_T_9 = {selBitsNext_1_uop_robIdx_flag,selBitsNext_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_11 = _flushItself_T_9 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_2 = io_redirect_bits_level & _flushItself_T_11; // @[Rob.scala 142:51]
  wire  differentFlag_2 = selBitsNext_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_2 = selBitsNext_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_66 = differentFlag_2 ^ compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _T_68 = io_redirect_valid & (flushItself_2 | _T_66); // @[Rob.scala 143:20]
  reg  REG_1_valid; // @[LoadQueueRAW.scala 301:117]
  reg  REG_1_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
  reg [4:0] REG_1_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
  reg  REG_1_bits_level; // @[LoadQueueRAW.scala 301:117]
  wire [5:0] _flushItself_T_14 = {REG_1_bits_robIdx_flag,REG_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_15 = _flushItself_T_9 == _flushItself_T_14; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_3 = REG_1_bits_level & _flushItself_T_15; // @[Rob.scala 142:51]
  wire  differentFlag_3 = selBitsNext_1_uop_robIdx_flag ^ REG_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_3 = selBitsNext_1_uop_robIdx_value > REG_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_71 = differentFlag_3 ^ compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _T_73 = REG_1_valid & (flushItself_3 | _T_71); // @[Rob.scala 143:20]
  wire  res_1_10_valid = selValidNext_1 & ~_T_68 & ~_T_73; // @[LoadQueueRAW.scala 301:73]
  wire  oldest_differentFlag_10 = selBitsNext_uop_robIdx_flag ^ selBitsNext_1_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_10 = selBitsNext_uop_robIdx_value > selBitsNext_1_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_61 = oldest_differentFlag_10 ^ oldest_compare_10; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext_2; // @[LoadQueueRAW.scala 293:33]
  reg  selBitsNext_2_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 294:32]
  reg [2:0] selBitsNext_2_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 294:32]
  reg [2:0] selBitsNext_2_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 294:32]
  reg  selBitsNext_2_uop_robIdx_flag; // @[LoadQueueRAW.scala 294:32]
  reg [4:0] selBitsNext_2_uop_robIdx_value; // @[LoadQueueRAW.scala 294:32]
  wire [5:0] _flushItself_T_17 = {selBitsNext_2_uop_robIdx_flag,selBitsNext_2_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_19 = _flushItself_T_17 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_4 = io_redirect_bits_level & _flushItself_T_19; // @[Rob.scala 142:51]
  wire  differentFlag_4 = selBitsNext_2_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_4 = selBitsNext_2_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_76 = differentFlag_4 ^ compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  _T_78 = io_redirect_valid & (flushItself_4 | _T_76); // @[Rob.scala 143:20]
  wire  _T_79 = ~_T_78; // @[LoadQueueRAW.scala 295:28]
  reg  REG_2_valid; // @[LoadQueueRAW.scala 295:119]
  reg  REG_2_bits_robIdx_flag; // @[LoadQueueRAW.scala 295:119]
  reg [4:0] REG_2_bits_robIdx_value; // @[LoadQueueRAW.scala 295:119]
  reg  REG_2_bits_level; // @[LoadQueueRAW.scala 295:119]
  wire [5:0] _flushItself_T_22 = {REG_2_bits_robIdx_flag,REG_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_23 = _flushItself_T_17 == _flushItself_T_22; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_5 = REG_2_bits_level & _flushItself_T_23; // @[Rob.scala 142:51]
  wire  differentFlag_5 = selBitsNext_2_uop_robIdx_flag ^ REG_2_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_5 = selBitsNext_2_uop_robIdx_value > REG_2_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_81 = differentFlag_5 ^ compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  _T_83 = REG_2_valid & (flushItself_5 | _T_81); // @[Rob.scala 143:20]
  wire  _T_85 = selValidNext_2 & ~_T_78 & ~_T_83; // @[LoadQueueRAW.scala 295:75]
  wire  rollbackLqWb_0_valid = _T_85 & rollbackLqWb_0_valid_delay_io_out; // @[LoadQueueRAW.scala 355:54]
  reg  bypassPaddrMask_1_0; // @[LoadQueueRAW.scala 311:34]
  reg  bypassPaddrMask_1_1; // @[LoadQueueRAW.scala 311:34]
  wire [15:0] _bypassMMask_T_4 = bypassMask_0 & io_storeIn_1_bits_mask; // @[LoadQueueRAW.scala 312:91]
  wire [15:0] _bypassMMask_T_6 = bypassMask_1 & io_storeIn_1_bits_mask; // @[LoadQueueRAW.scala 312:91]
  reg  bypassMMask_1_0; // @[LoadQueueRAW.scala 312:30]
  reg  bypassMMask_1_1; // @[LoadQueueRAW.scala 312:30]
  reg  bypassMaskUInt_REG_8; // @[LoadQueueRAW.scala 314:45]
  reg  bypassMaskUInt_REG_9; // @[LoadQueueRAW.scala 314:37]
  wire [11:0] _bypassMaskUInt_T_16 = bypassMaskUInt_REG_9 ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  reg [3:0] bypassMaskUInt_REG_10; // @[LoadQueueRAW.scala 314:138]
  reg [3:0] bypassMaskUInt_REG_11; // @[LoadQueueRAW.scala 314:130]
  wire [15:0] _bypassMaskUInt_T_18 = 16'h1 << bypassMaskUInt_REG_11; // @[OneHot.scala 57:35]
  wire [15:0] _bypassMaskUInt_T_19 = bypassPaddrMask_1_0 & bypassMMask_1_0 ? _bypassMaskUInt_T_18 : 16'h0; // @[LoadQueueRAW.scala 314:75]
  wire [15:0] _GEN_5498 = {{4'd0}, _bypassMaskUInt_T_16}; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] _bypassMaskUInt_T_20 = _GEN_5498 & _bypassMaskUInt_T_19; // @[LoadQueueRAW.scala 314:70]
  reg  bypassMaskUInt_REG_12; // @[LoadQueueRAW.scala 314:45]
  reg  bypassMaskUInt_REG_13; // @[LoadQueueRAW.scala 314:37]
  wire [11:0] _bypassMaskUInt_T_23 = bypassMaskUInt_REG_13 ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  reg [3:0] bypassMaskUInt_REG_14; // @[LoadQueueRAW.scala 314:138]
  reg [3:0] bypassMaskUInt_REG_15; // @[LoadQueueRAW.scala 314:130]
  wire [15:0] _bypassMaskUInt_T_25 = 16'h1 << bypassMaskUInt_REG_15; // @[OneHot.scala 57:35]
  wire [15:0] _bypassMaskUInt_T_26 = bypassPaddrMask_1_1 & bypassMMask_1_1 ? _bypassMaskUInt_T_25 : 16'h0; // @[LoadQueueRAW.scala 314:75]
  wire [15:0] _GEN_5499 = {{4'd0}, _bypassMaskUInt_T_23}; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] _bypassMaskUInt_T_27 = _GEN_5499 & _bypassMaskUInt_T_26; // @[LoadQueueRAW.scala 314:70]
  wire [15:0] bypassMaskUInt_1 = _bypassMaskUInt_T_20 | _bypassMaskUInt_T_27; // @[LoadQueueRAW.scala 315:15]
  wire [5:0] addrMaskMatch_lo_2 = {paddrModule_io_violationMmask_1_5,paddrModule_io_violationMmask_1_4,
    paddrModule_io_violationMmask_1_3,paddrModule_io_violationMmask_1_2,paddrModule_io_violationMmask_1_1,
    paddrModule_io_violationMmask_1_0}; // @[LoadQueueRAW.scala 317:66]
  wire [11:0] _addrMaskMatch_T_3 = {paddrModule_io_violationMmask_1_11,paddrModule_io_violationMmask_1_10,
    paddrModule_io_violationMmask_1_9,paddrModule_io_violationMmask_1_8,paddrModule_io_violationMmask_1_7,
    paddrModule_io_violationMmask_1_6,addrMaskMatch_lo_2}; // @[LoadQueueRAW.scala 317:66]
  wire [5:0] addrMaskMatch_lo_3 = {maskModule_io_violationMmask_1_5,maskModule_io_violationMmask_1_4,
    maskModule_io_violationMmask_1_3,maskModule_io_violationMmask_1_2,maskModule_io_violationMmask_1_1,
    maskModule_io_violationMmask_1_0}; // @[LoadQueueRAW.scala 317:107]
  wire [11:0] _addrMaskMatch_T_4 = {maskModule_io_violationMmask_1_11,maskModule_io_violationMmask_1_10,
    maskModule_io_violationMmask_1_9,maskModule_io_violationMmask_1_8,maskModule_io_violationMmask_1_7,
    maskModule_io_violationMmask_1_6,addrMaskMatch_lo_3}; // @[LoadQueueRAW.scala 317:107]
  reg [11:0] addrMaskMatch_REG_1; // @[LoadQueueRAW.scala 317:32]
  wire [15:0] _GEN_5500 = {{4'd0}, addrMaskMatch_REG_1}; // @[LoadQueueRAW.scala 317:115]
  wire [15:0] addrMaskMatch_1 = _GEN_5500 | bypassMaskUInt_1; // @[LoadQueueRAW.scala 317:115]
  wire  entryNeedCheck_differentFlag_24 = uop_0_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_24 = uop_0_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_96 = entryNeedCheck_differentFlag_24 ^ entryNeedCheck_compare_24; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_26 = uop_1_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_26 = uop_1_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_104 = entryNeedCheck_differentFlag_26 ^ entryNeedCheck_compare_26; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_28 = uop_2_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_28 = uop_2_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_112 = entryNeedCheck_differentFlag_28 ^ entryNeedCheck_compare_28; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_30 = uop_3_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_30 = uop_3_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_120 = entryNeedCheck_differentFlag_30 ^ entryNeedCheck_compare_30; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_32 = uop_4_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_32 = uop_4_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_128 = entryNeedCheck_differentFlag_32 ^ entryNeedCheck_compare_32; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_34 = uop_5_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_34 = uop_5_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_136 = entryNeedCheck_differentFlag_34 ^ entryNeedCheck_compare_34; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_36 = uop_6_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_36 = uop_6_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_144 = entryNeedCheck_differentFlag_36 ^ entryNeedCheck_compare_36; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_38 = uop_7_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_38 = uop_7_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_152 = entryNeedCheck_differentFlag_38 ^ entryNeedCheck_compare_38; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_40 = uop_8_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_40 = uop_8_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_160 = entryNeedCheck_differentFlag_40 ^ entryNeedCheck_compare_40; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_42 = uop_9_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_42 = uop_9_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_168 = entryNeedCheck_differentFlag_42 ^ entryNeedCheck_compare_42; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_44 = uop_10_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_44 = uop_10_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_176 = entryNeedCheck_differentFlag_44 ^ entryNeedCheck_compare_44; // @[CircularQueuePtr.scala 68:19]
  wire  entryNeedCheck_differentFlag_46 = uop_11_robIdx_flag ^ io_storeIn_1_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  entryNeedCheck_compare_46 = uop_11_robIdx_value > io_storeIn_1_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _entryNeedCheck_T_184 = entryNeedCheck_differentFlag_46 ^ entryNeedCheck_compare_46; // @[CircularQueuePtr.scala 68:19]
  reg  entryNeedCheck_1_0; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_1; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_2; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_3; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_4; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_5; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_6; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_7; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_8; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_9; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_10; // @[LoadQueueRAW.scala 318:33]
  reg  entryNeedCheck_1_11; // @[LoadQueueRAW.scala 318:33]
  wire  lqViolationSelVec_1_0 = addrMaskMatch_1[0] & entryNeedCheck_1_0; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_1 = addrMaskMatch_1[1] & entryNeedCheck_1_1; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_2 = addrMaskMatch_1[2] & entryNeedCheck_1_2; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_3 = addrMaskMatch_1[3] & entryNeedCheck_1_3; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_4 = addrMaskMatch_1[4] & entryNeedCheck_1_4; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_5 = addrMaskMatch_1[5] & entryNeedCheck_1_5; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_6 = addrMaskMatch_1[6] & entryNeedCheck_1_6; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_7 = addrMaskMatch_1[7] & entryNeedCheck_1_7; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_8 = addrMaskMatch_1[8] & entryNeedCheck_1_8; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_9 = addrMaskMatch_1[9] & entryNeedCheck_1_9; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_10 = addrMaskMatch_1[10] & entryNeedCheck_1_10; // @[LoadQueueRAW.scala 322:24]
  wire  lqViolationSelVec_1_11 = addrMaskMatch_1[11] & entryNeedCheck_1_11; // @[LoadQueueRAW.scala 322:24]
  wire  _oldest_T_68_valid = _oldest_T_1 ? lqViolationSelVec_1_1 : lqViolationSelVec_1_0; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_71_valid = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ? lqViolationSelVec_1_0 :
    lqViolationSelVec_1_1; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_71_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ? uop_0_cf_ftqPtr_flag :
    uop_1_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_71_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ?
    uop_0_cf_ftqPtr_value : uop_1_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_71_bits_uop_cf_ftqOffset = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ? uop_0_cf_ftqOffset :
    uop_1_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_71_bits_uop_robIdx_flag = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ? uop_0_robIdx_flag :
    uop_1_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_71_bits_uop_robIdx_value = lqViolationSelVec_1_0 & ~lqViolationSelVec_1_1 ? uop_0_robIdx_value :
    uop_1_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_11_valid = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ? _oldest_T_68_valid : _oldest_T_71_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_11_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ?
    _oldest_T_2_bits_uop_cf_ftqPtr_flag : _oldest_T_71_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_11_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ?
    _oldest_T_2_bits_uop_cf_ftqPtr_value : _oldest_T_71_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_11_bits_uop_cf_ftqOffset = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ?
    _oldest_T_2_bits_uop_cf_ftqOffset : _oldest_T_71_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_11_bits_uop_robIdx_flag = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ?
    _oldest_T_2_bits_uop_robIdx_flag : _oldest_T_71_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_11_bits_uop_robIdx_value = lqViolationSelVec_1_0 & lqViolationSelVec_1_1 ?
    _oldest_T_2_bits_uop_robIdx_value : _oldest_T_71_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  _oldest_T_74_valid = _oldest_T_7 ? lqViolationSelVec_1_3 : lqViolationSelVec_1_2; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_77_valid = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ? lqViolationSelVec_1_2 :
    lqViolationSelVec_1_3; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_77_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ? uop_2_cf_ftqPtr_flag :
    uop_3_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_77_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ?
    uop_2_cf_ftqPtr_value : uop_3_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_77_bits_uop_cf_ftqOffset = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ? uop_2_cf_ftqOffset :
    uop_3_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_77_bits_uop_robIdx_flag = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ? uop_2_robIdx_flag :
    uop_3_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_77_bits_uop_robIdx_value = lqViolationSelVec_1_2 & ~lqViolationSelVec_1_3 ? uop_2_robIdx_value :
    uop_3_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_12_valid = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ? _oldest_T_74_valid : _oldest_T_77_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_12_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ?
    _oldest_T_8_bits_uop_cf_ftqPtr_flag : _oldest_T_77_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_12_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ?
    _oldest_T_8_bits_uop_cf_ftqPtr_value : _oldest_T_77_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_12_bits_uop_cf_ftqOffset = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ?
    _oldest_T_8_bits_uop_cf_ftqOffset : _oldest_T_77_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_12_bits_uop_robIdx_flag = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ?
    _oldest_T_8_bits_uop_robIdx_flag : _oldest_T_77_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_12_bits_uop_robIdx_value = lqViolationSelVec_1_2 & lqViolationSelVec_1_3 ?
    _oldest_T_8_bits_uop_robIdx_value : _oldest_T_77_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_13 = oldest_11_bits_uop_robIdx_flag ^ oldest_12_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_13 = oldest_11_bits_uop_robIdx_value > oldest_12_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_79 = oldest_differentFlag_13 ^ oldest_compare_13; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_80_valid = _oldest_T_79 ? oldest_12_valid : oldest_11_valid; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_80_bits_uop_cf_ftqPtr_flag = _oldest_T_79 ? oldest_12_bits_uop_cf_ftqPtr_flag :
    oldest_11_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_80_bits_uop_cf_ftqPtr_value = _oldest_T_79 ? oldest_12_bits_uop_cf_ftqPtr_value :
    oldest_11_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_80_bits_uop_cf_ftqOffset = _oldest_T_79 ? oldest_12_bits_uop_cf_ftqOffset :
    oldest_11_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_80_bits_uop_robIdx_flag = _oldest_T_79 ? oldest_12_bits_uop_robIdx_flag :
    oldest_11_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_80_bits_uop_robIdx_value = _oldest_T_79 ? oldest_12_bits_uop_robIdx_value :
    oldest_11_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_83_valid = oldest_11_valid & ~oldest_12_valid ? oldest_11_valid : oldest_12_valid; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_83_bits_uop_cf_ftqPtr_flag = oldest_11_valid & ~oldest_12_valid ? oldest_11_bits_uop_cf_ftqPtr_flag :
    oldest_12_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_83_bits_uop_cf_ftqPtr_value = oldest_11_valid & ~oldest_12_valid ?
    oldest_11_bits_uop_cf_ftqPtr_value : oldest_12_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_83_bits_uop_cf_ftqOffset = oldest_11_valid & ~oldest_12_valid ? oldest_11_bits_uop_cf_ftqOffset
     : oldest_12_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_83_bits_uop_robIdx_flag = oldest_11_valid & ~oldest_12_valid ? oldest_11_bits_uop_robIdx_flag :
    oldest_12_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_83_bits_uop_robIdx_value = oldest_11_valid & ~oldest_12_valid ? oldest_11_bits_uop_robIdx_value
     : oldest_12_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_13_valid = oldest_11_valid & oldest_12_valid ? _oldest_T_80_valid : _oldest_T_83_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_13_bits_uop_cf_ftqPtr_flag = oldest_11_valid & oldest_12_valid ? _oldest_T_80_bits_uop_cf_ftqPtr_flag :
    _oldest_T_83_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_13_bits_uop_cf_ftqPtr_value = oldest_11_valid & oldest_12_valid ?
    _oldest_T_80_bits_uop_cf_ftqPtr_value : _oldest_T_83_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_13_bits_uop_cf_ftqOffset = oldest_11_valid & oldest_12_valid ? _oldest_T_80_bits_uop_cf_ftqOffset :
    _oldest_T_83_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_13_bits_uop_robIdx_flag = oldest_11_valid & oldest_12_valid ? _oldest_T_80_bits_uop_robIdx_flag :
    _oldest_T_83_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_13_bits_uop_robIdx_value = oldest_11_valid & oldest_12_valid ? _oldest_T_80_bits_uop_robIdx_value :
    _oldest_T_83_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  _oldest_T_86_valid = _oldest_T_19 ? lqViolationSelVec_1_5 : lqViolationSelVec_1_4; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_89_valid = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ? lqViolationSelVec_1_4 :
    lqViolationSelVec_1_5; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_89_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ? uop_4_cf_ftqPtr_flag :
    uop_5_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_89_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ?
    uop_4_cf_ftqPtr_value : uop_5_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_89_bits_uop_cf_ftqOffset = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ? uop_4_cf_ftqOffset :
    uop_5_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_89_bits_uop_robIdx_flag = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ? uop_4_robIdx_flag :
    uop_5_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_89_bits_uop_robIdx_value = lqViolationSelVec_1_4 & ~lqViolationSelVec_1_5 ? uop_4_robIdx_value :
    uop_5_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_14_valid = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ? _oldest_T_86_valid : _oldest_T_89_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_14_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ?
    _oldest_T_20_bits_uop_cf_ftqPtr_flag : _oldest_T_89_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_14_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ?
    _oldest_T_20_bits_uop_cf_ftqPtr_value : _oldest_T_89_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_14_bits_uop_cf_ftqOffset = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ?
    _oldest_T_20_bits_uop_cf_ftqOffset : _oldest_T_89_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_14_bits_uop_robIdx_flag = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ?
    _oldest_T_20_bits_uop_robIdx_flag : _oldest_T_89_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_14_bits_uop_robIdx_value = lqViolationSelVec_1_4 & lqViolationSelVec_1_5 ?
    _oldest_T_20_bits_uop_robIdx_value : _oldest_T_89_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  _oldest_T_92_valid = _oldest_T_25 ? lqViolationSelVec_1_7 : lqViolationSelVec_1_6; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_95_valid = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ? lqViolationSelVec_1_6 :
    lqViolationSelVec_1_7; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_95_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ? uop_6_cf_ftqPtr_flag :
    uop_7_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_95_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ?
    uop_6_cf_ftqPtr_value : uop_7_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_95_bits_uop_cf_ftqOffset = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ? uop_6_cf_ftqOffset :
    uop_7_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_95_bits_uop_robIdx_flag = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ? uop_6_robIdx_flag :
    uop_7_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_95_bits_uop_robIdx_value = lqViolationSelVec_1_6 & ~lqViolationSelVec_1_7 ? uop_6_robIdx_value :
    uop_7_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_15_valid = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ? _oldest_T_92_valid : _oldest_T_95_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_15_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ?
    _oldest_T_26_bits_uop_cf_ftqPtr_flag : _oldest_T_95_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_15_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ?
    _oldest_T_26_bits_uop_cf_ftqPtr_value : _oldest_T_95_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_15_bits_uop_cf_ftqOffset = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ?
    _oldest_T_26_bits_uop_cf_ftqOffset : _oldest_T_95_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_15_bits_uop_robIdx_flag = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ?
    _oldest_T_26_bits_uop_robIdx_flag : _oldest_T_95_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_15_bits_uop_robIdx_value = lqViolationSelVec_1_6 & lqViolationSelVec_1_7 ?
    _oldest_T_26_bits_uop_robIdx_value : _oldest_T_95_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_16 = oldest_14_bits_uop_robIdx_flag ^ oldest_15_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_16 = oldest_14_bits_uop_robIdx_value > oldest_15_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_97 = oldest_differentFlag_16 ^ oldest_compare_16; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_98_valid = _oldest_T_97 ? oldest_15_valid : oldest_14_valid; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_98_bits_uop_cf_ftqPtr_flag = _oldest_T_97 ? oldest_15_bits_uop_cf_ftqPtr_flag :
    oldest_14_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_98_bits_uop_cf_ftqPtr_value = _oldest_T_97 ? oldest_15_bits_uop_cf_ftqPtr_value :
    oldest_14_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_98_bits_uop_cf_ftqOffset = _oldest_T_97 ? oldest_15_bits_uop_cf_ftqOffset :
    oldest_14_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_98_bits_uop_robIdx_flag = _oldest_T_97 ? oldest_15_bits_uop_robIdx_flag :
    oldest_14_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_98_bits_uop_robIdx_value = _oldest_T_97 ? oldest_15_bits_uop_robIdx_value :
    oldest_14_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_101_valid = oldest_14_valid & ~oldest_15_valid ? oldest_14_valid : oldest_15_valid; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_101_bits_uop_cf_ftqPtr_flag = oldest_14_valid & ~oldest_15_valid ? oldest_14_bits_uop_cf_ftqPtr_flag
     : oldest_15_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_101_bits_uop_cf_ftqPtr_value = oldest_14_valid & ~oldest_15_valid ?
    oldest_14_bits_uop_cf_ftqPtr_value : oldest_15_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_101_bits_uop_cf_ftqOffset = oldest_14_valid & ~oldest_15_valid ? oldest_14_bits_uop_cf_ftqOffset
     : oldest_15_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_101_bits_uop_robIdx_flag = oldest_14_valid & ~oldest_15_valid ? oldest_14_bits_uop_robIdx_flag :
    oldest_15_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_101_bits_uop_robIdx_value = oldest_14_valid & ~oldest_15_valid ? oldest_14_bits_uop_robIdx_value
     : oldest_15_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_16_valid = oldest_14_valid & oldest_15_valid ? _oldest_T_98_valid : _oldest_T_101_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_16_bits_uop_cf_ftqPtr_flag = oldest_14_valid & oldest_15_valid ? _oldest_T_98_bits_uop_cf_ftqPtr_flag :
    _oldest_T_101_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_16_bits_uop_cf_ftqPtr_value = oldest_14_valid & oldest_15_valid ?
    _oldest_T_98_bits_uop_cf_ftqPtr_value : _oldest_T_101_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_16_bits_uop_cf_ftqOffset = oldest_14_valid & oldest_15_valid ? _oldest_T_98_bits_uop_cf_ftqOffset :
    _oldest_T_101_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_16_bits_uop_robIdx_flag = oldest_14_valid & oldest_15_valid ? _oldest_T_98_bits_uop_robIdx_flag :
    _oldest_T_101_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_16_bits_uop_robIdx_value = oldest_14_valid & oldest_15_valid ? _oldest_T_98_bits_uop_robIdx_value :
    _oldest_T_101_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_17 = oldest_13_bits_uop_robIdx_flag ^ oldest_16_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_17 = oldest_13_bits_uop_robIdx_value > oldest_16_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_103 = oldest_differentFlag_17 ^ oldest_compare_17; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext_3; // @[LoadQueueRAW.scala 299:35]
  reg  selBitsNext_3_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_3_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_3_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 300:34]
  reg  selBitsNext_3_uop_robIdx_flag; // @[LoadQueueRAW.scala 300:34]
  reg [4:0] selBitsNext_3_uop_robIdx_value; // @[LoadQueueRAW.scala 300:34]
  wire [5:0] _flushItself_T_25 = {selBitsNext_3_uop_robIdx_flag,selBitsNext_3_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_27 = _flushItself_T_25 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_6 = io_redirect_bits_level & _flushItself_T_27; // @[Rob.scala 142:51]
  wire  differentFlag_6 = selBitsNext_3_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_6 = selBitsNext_3_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_88 = differentFlag_6 ^ compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  _T_90 = io_redirect_valid & (flushItself_6 | _T_88); // @[Rob.scala 143:20]
  reg  REG_3_valid; // @[LoadQueueRAW.scala 301:117]
  reg  REG_3_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
  reg [4:0] REG_3_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
  reg  REG_3_bits_level; // @[LoadQueueRAW.scala 301:117]
  wire [5:0] _flushItself_T_30 = {REG_3_bits_robIdx_flag,REG_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_31 = _flushItself_T_25 == _flushItself_T_30; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_7 = REG_3_bits_level & _flushItself_T_31; // @[Rob.scala 142:51]
  wire  differentFlag_7 = selBitsNext_3_uop_robIdx_flag ^ REG_3_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_7 = selBitsNext_3_uop_robIdx_value > REG_3_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_93 = differentFlag_7 ^ compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  _T_95 = REG_3_valid & (flushItself_7 | _T_93); // @[Rob.scala 143:20]
  wire  res_0_21_valid = selValidNext_3 & ~_T_90 & ~_T_95; // @[LoadQueueRAW.scala 301:73]
  wire  _oldest_T_110_valid = _oldest_T_43 ? lqViolationSelVec_1_9 : lqViolationSelVec_1_8; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_113_valid = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ? lqViolationSelVec_1_8 :
    lqViolationSelVec_1_9; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_113_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ? uop_8_cf_ftqPtr_flag :
    uop_9_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_113_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ?
    uop_8_cf_ftqPtr_value : uop_9_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_113_bits_uop_cf_ftqOffset = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ? uop_8_cf_ftqOffset
     : uop_9_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_113_bits_uop_robIdx_flag = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ? uop_8_robIdx_flag :
    uop_9_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_113_bits_uop_robIdx_value = lqViolationSelVec_1_8 & ~lqViolationSelVec_1_9 ? uop_8_robIdx_value
     : uop_9_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_18_valid = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ? _oldest_T_110_valid : _oldest_T_113_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_18_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ?
    _oldest_T_44_bits_uop_cf_ftqPtr_flag : _oldest_T_113_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_18_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ?
    _oldest_T_44_bits_uop_cf_ftqPtr_value : _oldest_T_113_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_18_bits_uop_cf_ftqOffset = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ?
    _oldest_T_44_bits_uop_cf_ftqOffset : _oldest_T_113_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_18_bits_uop_robIdx_flag = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ?
    _oldest_T_44_bits_uop_robIdx_flag : _oldest_T_113_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_18_bits_uop_robIdx_value = lqViolationSelVec_1_8 & lqViolationSelVec_1_9 ?
    _oldest_T_44_bits_uop_robIdx_value : _oldest_T_113_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  _oldest_T_116_valid = _oldest_T_49 ? lqViolationSelVec_1_11 : lqViolationSelVec_1_10; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_119_valid = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ? lqViolationSelVec_1_10 :
    lqViolationSelVec_1_11; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_119_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ? uop_10_cf_ftqPtr_flag
     : uop_11_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_119_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ?
    uop_10_cf_ftqPtr_value : uop_11_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_119_bits_uop_cf_ftqOffset = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ?
    uop_10_cf_ftqOffset : uop_11_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_119_bits_uop_robIdx_flag = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ? uop_10_robIdx_flag :
    uop_11_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_119_bits_uop_robIdx_value = lqViolationSelVec_1_10 & ~lqViolationSelVec_1_11 ?
    uop_10_robIdx_value : uop_11_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_19_valid = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ? _oldest_T_116_valid : _oldest_T_119_valid; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_19_bits_uop_cf_ftqPtr_flag = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ?
    _oldest_T_50_bits_uop_cf_ftqPtr_flag : _oldest_T_119_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_19_bits_uop_cf_ftqPtr_value = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ?
    _oldest_T_50_bits_uop_cf_ftqPtr_value : _oldest_T_119_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] oldest_19_bits_uop_cf_ftqOffset = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ?
    _oldest_T_50_bits_uop_cf_ftqOffset : _oldest_T_119_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_19_bits_uop_robIdx_flag = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ?
    _oldest_T_50_bits_uop_robIdx_flag : _oldest_T_119_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  wire [4:0] oldest_19_bits_uop_robIdx_value = lqViolationSelVec_1_10 & lqViolationSelVec_1_11 ?
    _oldest_T_50_bits_uop_robIdx_value : _oldest_T_119_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  wire  oldest_differentFlag_20 = oldest_18_bits_uop_robIdx_flag ^ oldest_19_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_20 = oldest_18_bits_uop_robIdx_value > oldest_19_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_121 = oldest_differentFlag_20 ^ oldest_compare_20; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext_4; // @[LoadQueueRAW.scala 299:35]
  reg  selBitsNext_4_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_4_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 300:34]
  reg [2:0] selBitsNext_4_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 300:34]
  reg  selBitsNext_4_uop_robIdx_flag; // @[LoadQueueRAW.scala 300:34]
  reg [4:0] selBitsNext_4_uop_robIdx_value; // @[LoadQueueRAW.scala 300:34]
  wire [5:0] _flushItself_T_33 = {selBitsNext_4_uop_robIdx_flag,selBitsNext_4_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_35 = _flushItself_T_33 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_8 = io_redirect_bits_level & _flushItself_T_35; // @[Rob.scala 142:51]
  wire  differentFlag_8 = selBitsNext_4_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_8 = selBitsNext_4_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_98 = differentFlag_8 ^ compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  _T_100 = io_redirect_valid & (flushItself_8 | _T_98); // @[Rob.scala 143:20]
  reg  REG_4_valid; // @[LoadQueueRAW.scala 301:117]
  reg  REG_4_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
  reg [4:0] REG_4_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
  reg  REG_4_bits_level; // @[LoadQueueRAW.scala 301:117]
  wire [5:0] _flushItself_T_38 = {REG_4_bits_robIdx_flag,REG_4_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_39 = _flushItself_T_33 == _flushItself_T_38; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_9 = REG_4_bits_level & _flushItself_T_39; // @[Rob.scala 142:51]
  wire  differentFlag_9 = selBitsNext_4_uop_robIdx_flag ^ REG_4_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_9 = selBitsNext_4_uop_robIdx_value > REG_4_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_103 = differentFlag_9 ^ compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  _T_105 = REG_4_valid & (flushItself_9 | _T_103); // @[Rob.scala 143:20]
  wire  res_1_21_valid = selValidNext_4 & ~_T_100 & ~_T_105; // @[LoadQueueRAW.scala 301:73]
  wire  oldest_differentFlag_21 = selBitsNext_3_uop_robIdx_flag ^ selBitsNext_4_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_21 = selBitsNext_3_uop_robIdx_value > selBitsNext_4_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_127 = oldest_differentFlag_21 ^ oldest_compare_21; // @[CircularQueuePtr.scala 68:19]
  reg  selValidNext_5; // @[LoadQueueRAW.scala 293:33]
  reg  selBitsNext_5_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 294:32]
  reg [2:0] selBitsNext_5_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 294:32]
  reg [2:0] selBitsNext_5_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 294:32]
  reg  selBitsNext_5_uop_robIdx_flag; // @[LoadQueueRAW.scala 294:32]
  reg [4:0] selBitsNext_5_uop_robIdx_value; // @[LoadQueueRAW.scala 294:32]
  wire [5:0] _flushItself_T_41 = {selBitsNext_5_uop_robIdx_flag,selBitsNext_5_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_43 = _flushItself_T_41 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_10 = io_redirect_bits_level & _flushItself_T_43; // @[Rob.scala 142:51]
  wire  differentFlag_10 = selBitsNext_5_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_10 = selBitsNext_5_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_108 = differentFlag_10 ^ compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  _T_110 = io_redirect_valid & (flushItself_10 | _T_108); // @[Rob.scala 143:20]
  wire  _T_111 = ~_T_110; // @[LoadQueueRAW.scala 295:28]
  reg  REG_5_valid; // @[LoadQueueRAW.scala 295:119]
  reg  REG_5_bits_robIdx_flag; // @[LoadQueueRAW.scala 295:119]
  reg [4:0] REG_5_bits_robIdx_value; // @[LoadQueueRAW.scala 295:119]
  reg  REG_5_bits_level; // @[LoadQueueRAW.scala 295:119]
  wire [5:0] _flushItself_T_46 = {REG_5_bits_robIdx_flag,REG_5_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_47 = _flushItself_T_41 == _flushItself_T_46; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_11 = REG_5_bits_level & _flushItself_T_47; // @[Rob.scala 142:51]
  wire  differentFlag_11 = selBitsNext_5_uop_robIdx_flag ^ REG_5_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_11 = selBitsNext_5_uop_robIdx_value > REG_5_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_113 = differentFlag_11 ^ compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  _T_115 = REG_5_valid & (flushItself_11 | _T_113); // @[Rob.scala 143:20]
  wire  _T_117 = selValidNext_5 & ~_T_110 & ~_T_115; // @[LoadQueueRAW.scala 295:75]
  wire  rollbackLqWb_1_valid = _T_117 & rollbackLqWb_1_valid_delay_io_out; // @[LoadQueueRAW.scala 355:54]
  wire  rollbackLqWbValid_0 = rollbackLqWb_0_valid & _T_79; // @[LoadQueueRAW.scala 362:57]
  wire  rollbackLqWbValid_1 = rollbackLqWb_1_valid & _T_111; // @[LoadQueueRAW.scala 362:57]
  wire  oldest_differentFlag_22 = selBitsNext_2_uop_robIdx_flag ^ selBitsNext_5_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare_22 = selBitsNext_2_uop_robIdx_value > selBitsNext_5_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_133 = oldest_differentFlag_22 ^ oldest_compare_22; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_134_bits_uop_cf_ftqPtr_flag = _oldest_T_133 ? selBitsNext_5_uop_cf_ftqPtr_flag :
    selBitsNext_2_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_134_bits_uop_cf_ftqPtr_value = _oldest_T_133 ? selBitsNext_5_uop_cf_ftqPtr_value :
    selBitsNext_2_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:49]
  wire [2:0] _oldest_T_134_bits_uop_cf_ftqOffset = _oldest_T_133 ? selBitsNext_5_uop_cf_ftqOffset :
    selBitsNext_2_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_134_bits_uop_robIdx_flag = _oldest_T_133 ? selBitsNext_5_uop_robIdx_flag :
    selBitsNext_2_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:49]
  wire [4:0] _oldest_T_134_bits_uop_robIdx_value = _oldest_T_133 ? selBitsNext_5_uop_robIdx_value :
    selBitsNext_2_uop_robIdx_value; // @[LoadQueueRAW.scala 251:49]
  wire  _oldest_T_137_bits_uop_cf_ftqPtr_flag = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ?
    selBitsNext_2_uop_cf_ftqPtr_flag : selBitsNext_5_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_137_bits_uop_cf_ftqPtr_value = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ?
    selBitsNext_2_uop_cf_ftqPtr_value : selBitsNext_5_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:119]
  wire [2:0] _oldest_T_137_bits_uop_cf_ftqOffset = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ?
    selBitsNext_2_uop_cf_ftqOffset : selBitsNext_5_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_137_bits_uop_robIdx_flag = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ? selBitsNext_2_uop_robIdx_flag
     : selBitsNext_5_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:119]
  wire [4:0] _oldest_T_137_bits_uop_robIdx_value = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ?
    selBitsNext_2_uop_robIdx_value : selBitsNext_5_uop_robIdx_value; // @[LoadQueueRAW.scala 251:119]
  wire  _oldest_T_137_bits_flag = rollbackLqWbValid_0 & ~rollbackLqWbValid_1 ? 1'h0 : 1'h1; // @[LoadQueueRAW.scala 251:119]
  wire  oldest_22_bits_flag = rollbackLqWbValid_0 & rollbackLqWbValid_1 ? _oldest_T_133 : _oldest_T_137_bits_flag; // @[LoadQueueRAW.scala 251:23]
  wire [2:0] stFtqIdx_0_value = stFtqIdx_0_delay_io_out_value; // @[LoadQueueRAW.scala 351:22 358:17]
  wire [2:0] stFtqIdx_1_value = stFtqIdx_1_delay_io_out_value; // @[LoadQueueRAW.scala 351:22 358:17]
  wire [2:0] stFtqOffset_0 = stFtqOffset_0_delay_io_out; // @[LoadQueueRAW.scala 352:25 359:20]
  wire [2:0] stFtqOffset_1 = stFtqOffset_1_delay_io_out; // @[LoadQueueRAW.scala 352:25 359:20]
  wire [1:0] _io_rollback_valid_T = {rollbackLqWbValid_1,rollbackLqWbValid_0}; // @[LoadQueueRAW.scala 390:51]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  LqPAddrModule_1 paddrModule ( // @[LoadQueueRAW.scala 70:27]
    .clock(paddrModule_clock),
    .io_wen_0(paddrModule_io_wen_0),
    .io_wen_1(paddrModule_io_wen_1),
    .io_waddr_0(paddrModule_io_waddr_0),
    .io_waddr_1(paddrModule_io_waddr_1),
    .io_wdata_0(paddrModule_io_wdata_0),
    .io_wdata_1(paddrModule_io_wdata_1),
    .io_violationMdata_0(paddrModule_io_violationMdata_0),
    .io_violationMdata_1(paddrModule_io_violationMdata_1),
    .io_violationMmask_0_0(paddrModule_io_violationMmask_0_0),
    .io_violationMmask_0_1(paddrModule_io_violationMmask_0_1),
    .io_violationMmask_0_2(paddrModule_io_violationMmask_0_2),
    .io_violationMmask_0_3(paddrModule_io_violationMmask_0_3),
    .io_violationMmask_0_4(paddrModule_io_violationMmask_0_4),
    .io_violationMmask_0_5(paddrModule_io_violationMmask_0_5),
    .io_violationMmask_0_6(paddrModule_io_violationMmask_0_6),
    .io_violationMmask_0_7(paddrModule_io_violationMmask_0_7),
    .io_violationMmask_0_8(paddrModule_io_violationMmask_0_8),
    .io_violationMmask_0_9(paddrModule_io_violationMmask_0_9),
    .io_violationMmask_0_10(paddrModule_io_violationMmask_0_10),
    .io_violationMmask_0_11(paddrModule_io_violationMmask_0_11),
    .io_violationMmask_1_0(paddrModule_io_violationMmask_1_0),
    .io_violationMmask_1_1(paddrModule_io_violationMmask_1_1),
    .io_violationMmask_1_2(paddrModule_io_violationMmask_1_2),
    .io_violationMmask_1_3(paddrModule_io_violationMmask_1_3),
    .io_violationMmask_1_4(paddrModule_io_violationMmask_1_4),
    .io_violationMmask_1_5(paddrModule_io_violationMmask_1_5),
    .io_violationMmask_1_6(paddrModule_io_violationMmask_1_6),
    .io_violationMmask_1_7(paddrModule_io_violationMmask_1_7),
    .io_violationMmask_1_8(paddrModule_io_violationMmask_1_8),
    .io_violationMmask_1_9(paddrModule_io_violationMmask_1_9),
    .io_violationMmask_1_10(paddrModule_io_violationMmask_1_10),
    .io_violationMmask_1_11(paddrModule_io_violationMmask_1_11)
  );
  LqMaskModule maskModule ( // @[LoadQueueRAW.scala 80:26]
    .clock(maskModule_clock),
    .io_wen_0(maskModule_io_wen_0),
    .io_wen_1(maskModule_io_wen_1),
    .io_waddr_0(maskModule_io_waddr_0),
    .io_waddr_1(maskModule_io_waddr_1),
    .io_wdata_0(maskModule_io_wdata_0),
    .io_wdata_1(maskModule_io_wdata_1),
    .io_violationMdata_0(maskModule_io_violationMdata_0),
    .io_violationMdata_1(maskModule_io_violationMdata_1),
    .io_violationMmask_0_0(maskModule_io_violationMmask_0_0),
    .io_violationMmask_0_1(maskModule_io_violationMmask_0_1),
    .io_violationMmask_0_2(maskModule_io_violationMmask_0_2),
    .io_violationMmask_0_3(maskModule_io_violationMmask_0_3),
    .io_violationMmask_0_4(maskModule_io_violationMmask_0_4),
    .io_violationMmask_0_5(maskModule_io_violationMmask_0_5),
    .io_violationMmask_0_6(maskModule_io_violationMmask_0_6),
    .io_violationMmask_0_7(maskModule_io_violationMmask_0_7),
    .io_violationMmask_0_8(maskModule_io_violationMmask_0_8),
    .io_violationMmask_0_9(maskModule_io_violationMmask_0_9),
    .io_violationMmask_0_10(maskModule_io_violationMmask_0_10),
    .io_violationMmask_0_11(maskModule_io_violationMmask_0_11),
    .io_violationMmask_1_0(maskModule_io_violationMmask_1_0),
    .io_violationMmask_1_1(maskModule_io_violationMmask_1_1),
    .io_violationMmask_1_2(maskModule_io_violationMmask_1_2),
    .io_violationMmask_1_3(maskModule_io_violationMmask_1_3),
    .io_violationMmask_1_4(maskModule_io_violationMmask_1_4),
    .io_violationMmask_1_5(maskModule_io_violationMmask_1_5),
    .io_violationMmask_1_6(maskModule_io_violationMmask_1_6),
    .io_violationMmask_1_7(maskModule_io_violationMmask_1_7),
    .io_violationMmask_1_8(maskModule_io_violationMmask_1_8),
    .io_violationMmask_1_9(maskModule_io_violationMmask_1_9),
    .io_violationMmask_1_10(maskModule_io_violationMmask_1_10),
    .io_violationMmask_1_11(maskModule_io_violationMmask_1_11)
  );
  FreeList_1 freeList ( // @[LoadQueueRAW.scala 96:24]
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
  DelayN_107 rollbackLqWb_0_valid_delay ( // @[Hold.scala 97:23]
    .clock(rollbackLqWb_0_valid_delay_clock),
    .io_in(rollbackLqWb_0_valid_delay_io_in),
    .io_out(rollbackLqWb_0_valid_delay_io_out)
  );
  DelayN_108 stFtqIdx_0_delay ( // @[Hold.scala 97:23]
    .clock(stFtqIdx_0_delay_clock),
    .io_in_value(stFtqIdx_0_delay_io_in_value),
    .io_out_value(stFtqIdx_0_delay_io_out_value)
  );
  DelayN_109 stFtqOffset_0_delay ( // @[Hold.scala 97:23]
    .clock(stFtqOffset_0_delay_clock),
    .io_in(stFtqOffset_0_delay_io_in),
    .io_out(stFtqOffset_0_delay_io_out)
  );
  DelayN_107 rollbackLqWb_1_valid_delay ( // @[Hold.scala 97:23]
    .clock(rollbackLqWb_1_valid_delay_clock),
    .io_in(rollbackLqWb_1_valid_delay_io_in),
    .io_out(rollbackLqWb_1_valid_delay_io_out)
  );
  DelayN_108 stFtqIdx_1_delay ( // @[Hold.scala 97:23]
    .clock(stFtqIdx_1_delay_clock),
    .io_in_value(stFtqIdx_1_delay_io_in_value),
    .io_out_value(stFtqIdx_1_delay_io_out_value)
  );
  DelayN_109 stFtqOffset_1_delay ( // @[Hold.scala 97:23]
    .clock(stFtqOffset_1_delay_clock),
    .io_in(stFtqOffset_1_delay_io_in),
    .io_out(stFtqOffset_1_delay_io_out)
  );
  assign io_query_0_req_ready = needEnqueue_0 ? freeList_io_canAllocate_0 : 1'h1; // @[LoadQueueRAW.scala 133:21]
  assign io_query_1_req_ready = needEnqueue_1 ? _GEN_2647 : 1'h1; // @[LoadQueueRAW.scala 133:21]
  assign io_rollback_valid = |_io_rollback_valid_T; // @[LoadQueueRAW.scala 390:58]
  assign io_rollback_bits_robIdx_flag = rollbackLqWbValid_0 & rollbackLqWbValid_1 ? _oldest_T_134_bits_uop_robIdx_flag
     : _oldest_T_137_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 251:23]
  assign io_rollback_bits_robIdx_value = rollbackLqWbValid_0 & rollbackLqWbValid_1 ? _oldest_T_134_bits_uop_robIdx_value
     : _oldest_T_137_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 251:23]
  assign io_rollback_bits_ftqIdx_flag = rollbackLqWbValid_0 & rollbackLqWbValid_1 ?
    _oldest_T_134_bits_uop_cf_ftqPtr_flag : _oldest_T_137_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 251:23]
  assign io_rollback_bits_ftqIdx_value = rollbackLqWbValid_0 & rollbackLqWbValid_1 ?
    _oldest_T_134_bits_uop_cf_ftqPtr_value : _oldest_T_137_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 251:23]
  assign io_rollback_bits_ftqOffset = rollbackLqWbValid_0 & rollbackLqWbValid_1 ? _oldest_T_134_bits_uop_cf_ftqOffset :
    _oldest_T_137_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 251:23]
  assign io_rollback_bits_stFtqIdx_value = oldest_22_bits_flag ? stFtqIdx_1_value : stFtqIdx_0_value; // @[LoadQueueRAW.scala 380:{32,32}]
  assign io_rollback_bits_stFtqOffset = oldest_22_bits_flag ? stFtqOffset_1 : stFtqOffset_0; // @[LoadQueueRAW.scala 382:{32,32}]
  assign io_lqFull = freeList_io_empty; // @[LoadQueueRAW.scala 203:13]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign paddrModule_clock = clock;
  assign paddrModule_io_wen_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign paddrModule_io_wen_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign paddrModule_io_waddr_0 = freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 136:40 149:31]
  assign paddrModule_io_waddr_1 = needEnqueue_0 ? freeList_io_allocateSlot_1 : _T_1; // @[LoadQueueRAW.scala 135:{20,20}]
  assign paddrModule_io_wdata_0 = io_query_0_req_bits_paddr; // @[LoadQueueRAW.scala 136:40 150:31]
  assign paddrModule_io_wdata_1 = io_query_1_req_bits_paddr; // @[LoadQueueRAW.scala 136:40 150:31]
  assign paddrModule_io_violationMdata_0 = io_storeIn_0_bits_paddr; // @[LoadQueueRAW.scala 308:38]
  assign paddrModule_io_violationMdata_1 = io_storeIn_1_bits_paddr; // @[LoadQueueRAW.scala 308:38]
  assign maskModule_clock = clock;
  assign maskModule_io_wen_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign maskModule_io_wen_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign maskModule_io_waddr_0 = freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 136:40 149:31]
  assign maskModule_io_waddr_1 = needEnqueue_0 ? freeList_io_allocateSlot_1 : _T_1; // @[LoadQueueRAW.scala 135:{20,20}]
  assign maskModule_io_wdata_0 = io_query_0_req_bits_mask; // @[LoadQueueRAW.scala 136:40 156:30]
  assign maskModule_io_wdata_1 = io_query_1_req_bits_mask; // @[LoadQueueRAW.scala 136:40 156:30]
  assign maskModule_io_violationMdata_0 = io_storeIn_0_bits_mask; // @[LoadQueueRAW.scala 309:37]
  assign maskModule_io_violationMdata_1 = io_storeIn_1_bits_mask; // @[LoadQueueRAW.scala 309:37]
  assign freeList_clock = clock;
  assign freeList_reset = reset;
  assign freeList_io_doAllocate_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign freeList_io_doAllocate_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAW.scala 136:26]
  assign freeList_io_free = {freeList_io_free_hi,freeList_io_free_lo}; // @[LoadQueueRAW.scala 201:35]
  assign rollbackLqWb_0_valid_delay_clock = clock;
  assign rollbackLqWb_0_valid_delay_io_in = io_storeIn_0_valid & ~io_storeIn_0_bits_miss; // @[LoadQueueRAW.scala 355:84]
  assign stFtqIdx_0_delay_clock = clock;
  assign stFtqIdx_0_delay_io_in_value = io_storeIn_0_bits_uop_cf_ftqPtr_value; // @[Hold.scala 98:17]
  assign stFtqOffset_0_delay_clock = clock;
  assign stFtqOffset_0_delay_io_in = io_storeIn_0_bits_uop_cf_ftqOffset; // @[Hold.scala 98:17]
  assign rollbackLqWb_1_valid_delay_clock = clock;
  assign rollbackLqWb_1_valid_delay_io_in = io_storeIn_1_valid & ~io_storeIn_1_bits_miss; // @[LoadQueueRAW.scala 355:84]
  assign stFtqIdx_1_delay_clock = clock;
  assign stFtqIdx_1_delay_io_in_value = io_storeIn_1_bits_uop_cf_ftqPtr_value; // @[Hold.scala 98:17]
  assign stFtqOffset_1_delay_clock = clock;
  assign stFtqOffset_1_delay_io_in = io_storeIn_1_bits_uop_cf_ftqOffset; // @[Hold.scala 98:17]
  always @(posedge clock) begin
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_cf_ftqPtr_flag <= _GEN_1866;
      end
    end else begin
      uop_0_cf_ftqPtr_flag <= _GEN_1866;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_cf_ftqPtr_value <= _GEN_1878;
      end
    end else begin
      uop_0_cf_ftqPtr_value <= _GEN_1878;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_cf_ftqOffset <= _GEN_1890;
      end
    end else begin
      uop_0_cf_ftqOffset <= _GEN_1890;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_robIdx_flag <= _GEN_2418;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_2418;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_robIdx_value <= _GEN_2430;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_2430;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_sqIdx_flag <= _GEN_2466;
      end
    end else begin
      uop_0_sqIdx_flag <= _GEN_2466;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_0_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_0_sqIdx_value <= _GEN_2478;
      end
    end else begin
      uop_0_sqIdx_value <= _GEN_2478;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_cf_ftqPtr_flag <= _GEN_1867;
      end
    end else begin
      uop_1_cf_ftqPtr_flag <= _GEN_1867;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_cf_ftqPtr_value <= _GEN_1879;
      end
    end else begin
      uop_1_cf_ftqPtr_value <= _GEN_1879;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_cf_ftqOffset <= _GEN_1891;
      end
    end else begin
      uop_1_cf_ftqOffset <= _GEN_1891;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_robIdx_flag <= _GEN_2419;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_2419;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_robIdx_value <= _GEN_2431;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_2431;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_sqIdx_flag <= _GEN_2467;
      end
    end else begin
      uop_1_sqIdx_flag <= _GEN_2467;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_1_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_1_sqIdx_value <= _GEN_2479;
      end
    end else begin
      uop_1_sqIdx_value <= _GEN_2479;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_cf_ftqPtr_flag <= _GEN_1868;
      end
    end else begin
      uop_2_cf_ftqPtr_flag <= _GEN_1868;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_cf_ftqPtr_value <= _GEN_1880;
      end
    end else begin
      uop_2_cf_ftqPtr_value <= _GEN_1880;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_cf_ftqOffset <= _GEN_1892;
      end
    end else begin
      uop_2_cf_ftqOffset <= _GEN_1892;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_robIdx_flag <= _GEN_2420;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_2420;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_robIdx_value <= _GEN_2432;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_2432;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_sqIdx_flag <= _GEN_2468;
      end
    end else begin
      uop_2_sqIdx_flag <= _GEN_2468;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_2_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_2_sqIdx_value <= _GEN_2480;
      end
    end else begin
      uop_2_sqIdx_value <= _GEN_2480;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_cf_ftqPtr_flag <= _GEN_1869;
      end
    end else begin
      uop_3_cf_ftqPtr_flag <= _GEN_1869;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_cf_ftqPtr_value <= _GEN_1881;
      end
    end else begin
      uop_3_cf_ftqPtr_value <= _GEN_1881;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_cf_ftqOffset <= _GEN_1893;
      end
    end else begin
      uop_3_cf_ftqOffset <= _GEN_1893;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_robIdx_flag <= _GEN_2421;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_2421;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_robIdx_value <= _GEN_2433;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_2433;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_sqIdx_flag <= _GEN_2469;
      end
    end else begin
      uop_3_sqIdx_flag <= _GEN_2469;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_3_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_3_sqIdx_value <= _GEN_2481;
      end
    end else begin
      uop_3_sqIdx_value <= _GEN_2481;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_cf_ftqPtr_flag <= _GEN_1870;
      end
    end else begin
      uop_4_cf_ftqPtr_flag <= _GEN_1870;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_cf_ftqPtr_value <= _GEN_1882;
      end
    end else begin
      uop_4_cf_ftqPtr_value <= _GEN_1882;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_cf_ftqOffset <= _GEN_1894;
      end
    end else begin
      uop_4_cf_ftqOffset <= _GEN_1894;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_robIdx_flag <= _GEN_2422;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_2422;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_robIdx_value <= _GEN_2434;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_2434;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_sqIdx_flag <= _GEN_2470;
      end
    end else begin
      uop_4_sqIdx_flag <= _GEN_2470;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_4_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_4_sqIdx_value <= _GEN_2482;
      end
    end else begin
      uop_4_sqIdx_value <= _GEN_2482;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_cf_ftqPtr_flag <= _GEN_1871;
      end
    end else begin
      uop_5_cf_ftqPtr_flag <= _GEN_1871;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_cf_ftqPtr_value <= _GEN_1883;
      end
    end else begin
      uop_5_cf_ftqPtr_value <= _GEN_1883;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_cf_ftqOffset <= _GEN_1895;
      end
    end else begin
      uop_5_cf_ftqOffset <= _GEN_1895;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_robIdx_flag <= _GEN_2423;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_2423;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_robIdx_value <= _GEN_2435;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_2435;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_sqIdx_flag <= _GEN_2471;
      end
    end else begin
      uop_5_sqIdx_flag <= _GEN_2471;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_5_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_5_sqIdx_value <= _GEN_2483;
      end
    end else begin
      uop_5_sqIdx_value <= _GEN_2483;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_cf_ftqPtr_flag <= _GEN_1872;
      end
    end else begin
      uop_6_cf_ftqPtr_flag <= _GEN_1872;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_cf_ftqPtr_value <= _GEN_1884;
      end
    end else begin
      uop_6_cf_ftqPtr_value <= _GEN_1884;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_cf_ftqOffset <= _GEN_1896;
      end
    end else begin
      uop_6_cf_ftqOffset <= _GEN_1896;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_robIdx_flag <= _GEN_2424;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_2424;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_robIdx_value <= _GEN_2436;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_2436;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_sqIdx_flag <= _GEN_2472;
      end
    end else begin
      uop_6_sqIdx_flag <= _GEN_2472;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_6_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_6_sqIdx_value <= _GEN_2484;
      end
    end else begin
      uop_6_sqIdx_value <= _GEN_2484;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_cf_ftqPtr_flag <= _GEN_1873;
      end
    end else begin
      uop_7_cf_ftqPtr_flag <= _GEN_1873;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_cf_ftqPtr_value <= _GEN_1885;
      end
    end else begin
      uop_7_cf_ftqPtr_value <= _GEN_1885;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_cf_ftqOffset <= _GEN_1897;
      end
    end else begin
      uop_7_cf_ftqOffset <= _GEN_1897;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_robIdx_flag <= _GEN_2425;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_2425;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_robIdx_value <= _GEN_2437;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_2437;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_sqIdx_flag <= _GEN_2473;
      end
    end else begin
      uop_7_sqIdx_flag <= _GEN_2473;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_7_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_7_sqIdx_value <= _GEN_2485;
      end
    end else begin
      uop_7_sqIdx_value <= _GEN_2485;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_cf_ftqPtr_flag <= _GEN_1874;
      end
    end else begin
      uop_8_cf_ftqPtr_flag <= _GEN_1874;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_cf_ftqPtr_value <= _GEN_1886;
      end
    end else begin
      uop_8_cf_ftqPtr_value <= _GEN_1886;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_cf_ftqOffset <= _GEN_1898;
      end
    end else begin
      uop_8_cf_ftqOffset <= _GEN_1898;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_robIdx_flag <= _GEN_2426;
      end
    end else begin
      uop_8_robIdx_flag <= _GEN_2426;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_robIdx_value <= _GEN_2438;
      end
    end else begin
      uop_8_robIdx_value <= _GEN_2438;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_sqIdx_flag <= _GEN_2474;
      end
    end else begin
      uop_8_sqIdx_flag <= _GEN_2474;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_8_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_8_sqIdx_value <= _GEN_2486;
      end
    end else begin
      uop_8_sqIdx_value <= _GEN_2486;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_cf_ftqPtr_flag <= _GEN_1875;
      end
    end else begin
      uop_9_cf_ftqPtr_flag <= _GEN_1875;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_cf_ftqPtr_value <= _GEN_1887;
      end
    end else begin
      uop_9_cf_ftqPtr_value <= _GEN_1887;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_cf_ftqOffset <= _GEN_1899;
      end
    end else begin
      uop_9_cf_ftqOffset <= _GEN_1899;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_robIdx_flag <= _GEN_2427;
      end
    end else begin
      uop_9_robIdx_flag <= _GEN_2427;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_robIdx_value <= _GEN_2439;
      end
    end else begin
      uop_9_robIdx_value <= _GEN_2439;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_sqIdx_flag <= _GEN_2475;
      end
    end else begin
      uop_9_sqIdx_flag <= _GEN_2475;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_9_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_9_sqIdx_value <= _GEN_2487;
      end
    end else begin
      uop_9_sqIdx_value <= _GEN_2487;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_cf_ftqPtr_flag <= _GEN_1876;
      end
    end else begin
      uop_10_cf_ftqPtr_flag <= _GEN_1876;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_cf_ftqPtr_value <= _GEN_1888;
      end
    end else begin
      uop_10_cf_ftqPtr_value <= _GEN_1888;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_cf_ftqOffset <= _GEN_1900;
      end
    end else begin
      uop_10_cf_ftqOffset <= _GEN_1900;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_robIdx_flag <= _GEN_2428;
      end
    end else begin
      uop_10_robIdx_flag <= _GEN_2428;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_robIdx_value <= _GEN_2440;
      end
    end else begin
      uop_10_robIdx_value <= _GEN_2440;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_sqIdx_flag <= _GEN_2476;
      end
    end else begin
      uop_10_sqIdx_flag <= _GEN_2476;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_10_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_10_sqIdx_value <= _GEN_2488;
      end
    end else begin
      uop_10_sqIdx_value <= _GEN_2488;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_cf_ftqPtr_flag <= io_query_1_req_bits_uop_cf_ftqPtr_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_cf_ftqPtr_flag <= _GEN_1877;
      end
    end else begin
      uop_11_cf_ftqPtr_flag <= _GEN_1877;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_cf_ftqPtr_value <= io_query_1_req_bits_uop_cf_ftqPtr_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_cf_ftqPtr_value <= _GEN_1889;
      end
    end else begin
      uop_11_cf_ftqPtr_value <= _GEN_1889;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_cf_ftqOffset <= io_query_1_req_bits_uop_cf_ftqOffset; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_cf_ftqOffset <= _GEN_1901;
      end
    end else begin
      uop_11_cf_ftqOffset <= _GEN_1901;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_robIdx_flag <= _GEN_2429;
      end
    end else begin
      uop_11_robIdx_flag <= _GEN_2429;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_robIdx_value <= _GEN_2441;
      end
    end else begin
      uop_11_robIdx_value <= _GEN_2441;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_sqIdx_flag <= io_query_1_req_bits_uop_sqIdx_flag; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_sqIdx_flag <= _GEN_2477;
      end
    end else begin
      uop_11_sqIdx_flag <= _GEN_2477;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAW.scala 160:21]
        uop_11_sqIdx_value <= io_query_1_req_bits_uop_sqIdx_value; // @[LoadQueueRAW.scala 160:21]
      end else begin
        uop_11_sqIdx_value <= _GEN_2489;
      end
    end else begin
      uop_11_sqIdx_value <= _GEN_2489;
    end
    if (acceptedVec_0) begin // @[LoadQueueRAW.scala 136:40]
      bypassPAddr_0 <= io_query_0_req_bits_paddr; // @[LoadQueueRAW.scala 151:22]
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      bypassPAddr_1 <= io_query_1_req_bits_paddr; // @[LoadQueueRAW.scala 151:22]
    end
    if (acceptedVec_0) begin // @[LoadQueueRAW.scala 136:40]
      bypassMask_0 <= io_query_0_req_bits_mask; // @[LoadQueueRAW.scala 157:21]
    end
    if (acceptedVec_1) begin // @[LoadQueueRAW.scala 136:40]
      bypassMask_1 <= io_query_1_req_bits_mask; // @[LoadQueueRAW.scala 157:21]
    end
    lastCanAccept_0 <= needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAW.scala 136:26]
    lastCanAccept_1 <= needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAW.scala 136:26]
    lastAllocIndex_0 <= freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 118:25 135:20]
    if (needEnqueue_0) begin // @[LoadQueueRAW.scala 135:20]
      lastAllocIndex_1 <= freeList_io_allocateSlot_1; // @[LoadQueueRAW.scala 135:20]
    end else begin
      lastAllocIndex_1 <= _T_1;
    end
    bypassPaddrMask__0 <= bypassPAddr_0[35:4] == io_storeIn_0_bits_paddr[35:4]; // @[LoadQueueRAW.scala 311:127]
    bypassPaddrMask__1 <= bypassPAddr_1[35:4] == io_storeIn_0_bits_paddr[35:4]; // @[LoadQueueRAW.scala 311:127]
    bypassMMask__0 <= |_bypassMMask_T; // @[LoadQueueRAW.scala 312:118]
    bypassMMask__1 <= |_bypassMMask_T_2; // @[LoadQueueRAW.scala 312:118]
    bypassMaskUInt_REG <= io_query_0_req_ready & io_query_0_req_valid; // @[Decoupled.scala 50:35]
    bypassMaskUInt_REG_1 <= bypassMaskUInt_REG; // @[LoadQueueRAW.scala 314:37]
    bypassMaskUInt_REG_2 <= freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 118:25 135:20]
    bypassMaskUInt_REG_3 <= bypassMaskUInt_REG_2; // @[LoadQueueRAW.scala 314:130]
    bypassMaskUInt_REG_4 <= io_query_1_req_ready & io_query_1_req_valid; // @[Decoupled.scala 50:35]
    bypassMaskUInt_REG_5 <= bypassMaskUInt_REG_4; // @[LoadQueueRAW.scala 314:37]
    if (needEnqueue_0) begin // @[LoadQueueRAW.scala 135:20]
      bypassMaskUInt_REG_6 <= freeList_io_allocateSlot_1; // @[LoadQueueRAW.scala 135:20]
    end else begin
      bypassMaskUInt_REG_6 <= _T_1;
    end
    bypassMaskUInt_REG_7 <= bypassMaskUInt_REG_6; // @[LoadQueueRAW.scala 314:130]
    addrMaskMatch_REG <= _addrMaskMatch_T & _addrMaskMatch_T_1; // @[LoadQueueRAW.scala 317:73]
    entryNeedCheck__0 <= allocated_0 & _entryNeedCheck_T & datavalid_0 & ~needCancel; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__1 <= allocated_1 & _entryNeedCheck_T_8 & datavalid_1 & ~needCancel_1; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__2 <= allocated_2 & _entryNeedCheck_T_16 & datavalid_2 & ~needCancel_2; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__3 <= allocated_3 & _entryNeedCheck_T_24 & datavalid_3 & ~needCancel_3; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__4 <= allocated_4 & _entryNeedCheck_T_32 & datavalid_4 & ~needCancel_4; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__5 <= allocated_5 & _entryNeedCheck_T_40 & datavalid_5 & ~needCancel_5; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__6 <= allocated_6 & _entryNeedCheck_T_48 & datavalid_6 & ~needCancel_6; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__7 <= allocated_7 & _entryNeedCheck_T_56 & datavalid_7 & ~needCancel_7; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__8 <= allocated_8 & _entryNeedCheck_T_64 & datavalid_8 & ~needCancel_8; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__9 <= allocated_9 & _entryNeedCheck_T_72 & datavalid_9 & ~needCancel_9; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__10 <= allocated_10 & _entryNeedCheck_T_80 & datavalid_10 & ~needCancel_10; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck__11 <= allocated_11 & _entryNeedCheck_T_88 & datavalid_11 & ~needCancel_11; // @[LoadQueueRAW.scala 319:93]
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext <= oldest_5_valid;
      end else begin
        selValidNext <= oldest_2_valid;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext <= oldest_2_valid;
    end else begin
      selValidNext <= oldest_5_valid;
    end
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_uop_cf_ftqPtr_flag <= oldest_5_bits_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_uop_cf_ftqPtr_flag <= oldest_2_bits_uop_cf_ftqPtr_flag;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_uop_cf_ftqPtr_flag <= oldest_2_bits_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_uop_cf_ftqPtr_flag <= oldest_5_bits_uop_cf_ftqPtr_flag;
    end
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_uop_cf_ftqPtr_value <= oldest_5_bits_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_uop_cf_ftqPtr_value <= oldest_2_bits_uop_cf_ftqPtr_value;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_uop_cf_ftqPtr_value <= oldest_2_bits_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_uop_cf_ftqPtr_value <= oldest_5_bits_uop_cf_ftqPtr_value;
    end
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_uop_cf_ftqOffset <= oldest_5_bits_uop_cf_ftqOffset;
      end else begin
        selBitsNext_uop_cf_ftqOffset <= oldest_2_bits_uop_cf_ftqOffset;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_uop_cf_ftqOffset <= oldest_2_bits_uop_cf_ftqOffset;
    end else begin
      selBitsNext_uop_cf_ftqOffset <= oldest_5_bits_uop_cf_ftqOffset;
    end
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_uop_robIdx_flag <= oldest_5_bits_uop_robIdx_flag;
      end else begin
        selBitsNext_uop_robIdx_flag <= oldest_2_bits_uop_robIdx_flag;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_uop_robIdx_flag <= oldest_2_bits_uop_robIdx_flag;
    end else begin
      selBitsNext_uop_robIdx_flag <= oldest_5_bits_uop_robIdx_flag;
    end
    if (oldest_2_valid & oldest_5_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_37) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_uop_robIdx_value <= oldest_5_bits_uop_robIdx_value;
      end else begin
        selBitsNext_uop_robIdx_value <= oldest_2_bits_uop_robIdx_value;
      end
    end else if (oldest_2_valid & ~oldest_5_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_uop_robIdx_value <= oldest_2_bits_uop_robIdx_value;
    end else begin
      selBitsNext_uop_robIdx_value <= oldest_5_bits_uop_robIdx_value;
    end
    REG_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 301:117]
    REG_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
    REG_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
    REG_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 301:117]
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext_1 <= oldest_8_valid;
      end else begin
        selValidNext_1 <= oldest_7_valid;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext_1 <= oldest_7_valid;
    end else begin
      selValidNext_1 <= oldest_8_valid;
    end
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_1_uop_cf_ftqPtr_flag <= oldest_8_bits_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_1_uop_cf_ftqPtr_flag <= oldest_7_bits_uop_cf_ftqPtr_flag;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_1_uop_cf_ftqPtr_flag <= oldest_7_bits_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_1_uop_cf_ftqPtr_flag <= oldest_8_bits_uop_cf_ftqPtr_flag;
    end
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_1_uop_cf_ftqPtr_value <= oldest_8_bits_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_1_uop_cf_ftqPtr_value <= oldest_7_bits_uop_cf_ftqPtr_value;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_1_uop_cf_ftqPtr_value <= oldest_7_bits_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_1_uop_cf_ftqPtr_value <= oldest_8_bits_uop_cf_ftqPtr_value;
    end
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_1_uop_cf_ftqOffset <= oldest_8_bits_uop_cf_ftqOffset;
      end else begin
        selBitsNext_1_uop_cf_ftqOffset <= oldest_7_bits_uop_cf_ftqOffset;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_1_uop_cf_ftqOffset <= oldest_7_bits_uop_cf_ftqOffset;
    end else begin
      selBitsNext_1_uop_cf_ftqOffset <= oldest_8_bits_uop_cf_ftqOffset;
    end
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_1_uop_robIdx_flag <= oldest_8_bits_uop_robIdx_flag;
      end else begin
        selBitsNext_1_uop_robIdx_flag <= oldest_7_bits_uop_robIdx_flag;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_1_uop_robIdx_flag <= oldest_7_bits_uop_robIdx_flag;
    end else begin
      selBitsNext_1_uop_robIdx_flag <= oldest_8_bits_uop_robIdx_flag;
    end
    if (oldest_7_valid & oldest_8_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_55) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_1_uop_robIdx_value <= oldest_8_bits_uop_robIdx_value;
      end else begin
        selBitsNext_1_uop_robIdx_value <= oldest_7_bits_uop_robIdx_value;
      end
    end else if (oldest_7_valid & ~oldest_8_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_1_uop_robIdx_value <= oldest_7_bits_uop_robIdx_value;
    end else begin
      selBitsNext_1_uop_robIdx_value <= oldest_8_bits_uop_robIdx_value;
    end
    REG_1_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 301:117]
    REG_1_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
    REG_1_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
    REG_1_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 301:117]
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext_2 <= res_1_10_valid;
      end else begin
        selValidNext_2 <= res_0_10_valid;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext_2 <= res_0_10_valid;
    end else begin
      selValidNext_2 <= res_1_10_valid;
    end
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_2_uop_cf_ftqPtr_flag <= selBitsNext_1_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_2_uop_cf_ftqPtr_flag <= selBitsNext_uop_cf_ftqPtr_flag;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_2_uop_cf_ftqPtr_flag <= selBitsNext_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_2_uop_cf_ftqPtr_flag <= selBitsNext_1_uop_cf_ftqPtr_flag;
    end
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_2_uop_cf_ftqPtr_value <= selBitsNext_1_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_2_uop_cf_ftqPtr_value <= selBitsNext_uop_cf_ftqPtr_value;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_2_uop_cf_ftqPtr_value <= selBitsNext_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_2_uop_cf_ftqPtr_value <= selBitsNext_1_uop_cf_ftqPtr_value;
    end
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_2_uop_cf_ftqOffset <= selBitsNext_1_uop_cf_ftqOffset;
      end else begin
        selBitsNext_2_uop_cf_ftqOffset <= selBitsNext_uop_cf_ftqOffset;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_2_uop_cf_ftqOffset <= selBitsNext_uop_cf_ftqOffset;
    end else begin
      selBitsNext_2_uop_cf_ftqOffset <= selBitsNext_1_uop_cf_ftqOffset;
    end
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_2_uop_robIdx_flag <= selBitsNext_1_uop_robIdx_flag;
      end else begin
        selBitsNext_2_uop_robIdx_flag <= selBitsNext_uop_robIdx_flag;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_2_uop_robIdx_flag <= selBitsNext_uop_robIdx_flag;
    end else begin
      selBitsNext_2_uop_robIdx_flag <= selBitsNext_1_uop_robIdx_flag;
    end
    if (res_0_10_valid & res_1_10_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_61) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_2_uop_robIdx_value <= selBitsNext_1_uop_robIdx_value;
      end else begin
        selBitsNext_2_uop_robIdx_value <= selBitsNext_uop_robIdx_value;
      end
    end else if (res_0_10_valid & ~res_1_10_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_2_uop_robIdx_value <= selBitsNext_uop_robIdx_value;
    end else begin
      selBitsNext_2_uop_robIdx_value <= selBitsNext_1_uop_robIdx_value;
    end
    REG_2_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 295:119]
    REG_2_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 295:119]
    REG_2_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 295:119]
    REG_2_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 295:119]
    bypassPaddrMask_1_0 <= bypassPAddr_0[35:4] == io_storeIn_1_bits_paddr[35:4]; // @[LoadQueueRAW.scala 311:127]
    bypassPaddrMask_1_1 <= bypassPAddr_1[35:4] == io_storeIn_1_bits_paddr[35:4]; // @[LoadQueueRAW.scala 311:127]
    bypassMMask_1_0 <= |_bypassMMask_T_4; // @[LoadQueueRAW.scala 312:118]
    bypassMMask_1_1 <= |_bypassMMask_T_6; // @[LoadQueueRAW.scala 312:118]
    bypassMaskUInt_REG_8 <= io_query_0_req_ready & io_query_0_req_valid; // @[Decoupled.scala 50:35]
    bypassMaskUInt_REG_9 <= bypassMaskUInt_REG_8; // @[LoadQueueRAW.scala 314:37]
    bypassMaskUInt_REG_10 <= freeList_io_allocateSlot_0; // @[LoadQueueRAW.scala 118:25 135:20]
    bypassMaskUInt_REG_11 <= bypassMaskUInt_REG_10; // @[LoadQueueRAW.scala 314:130]
    bypassMaskUInt_REG_12 <= io_query_1_req_ready & io_query_1_req_valid; // @[Decoupled.scala 50:35]
    bypassMaskUInt_REG_13 <= bypassMaskUInt_REG_12; // @[LoadQueueRAW.scala 314:37]
    if (needEnqueue_0) begin // @[LoadQueueRAW.scala 135:20]
      bypassMaskUInt_REG_14 <= freeList_io_allocateSlot_1; // @[LoadQueueRAW.scala 135:20]
    end else begin
      bypassMaskUInt_REG_14 <= _T_1;
    end
    bypassMaskUInt_REG_15 <= bypassMaskUInt_REG_14; // @[LoadQueueRAW.scala 314:130]
    addrMaskMatch_REG_1 <= _addrMaskMatch_T_3 & _addrMaskMatch_T_4; // @[LoadQueueRAW.scala 317:73]
    entryNeedCheck_1_0 <= allocated_0 & _entryNeedCheck_T_96 & datavalid_0 & ~needCancel; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_1 <= allocated_1 & _entryNeedCheck_T_104 & datavalid_1 & ~needCancel_1; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_2 <= allocated_2 & _entryNeedCheck_T_112 & datavalid_2 & ~needCancel_2; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_3 <= allocated_3 & _entryNeedCheck_T_120 & datavalid_3 & ~needCancel_3; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_4 <= allocated_4 & _entryNeedCheck_T_128 & datavalid_4 & ~needCancel_4; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_5 <= allocated_5 & _entryNeedCheck_T_136 & datavalid_5 & ~needCancel_5; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_6 <= allocated_6 & _entryNeedCheck_T_144 & datavalid_6 & ~needCancel_6; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_7 <= allocated_7 & _entryNeedCheck_T_152 & datavalid_7 & ~needCancel_7; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_8 <= allocated_8 & _entryNeedCheck_T_160 & datavalid_8 & ~needCancel_8; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_9 <= allocated_9 & _entryNeedCheck_T_168 & datavalid_9 & ~needCancel_9; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_10 <= allocated_10 & _entryNeedCheck_T_176 & datavalid_10 & ~needCancel_10; // @[LoadQueueRAW.scala 319:93]
    entryNeedCheck_1_11 <= allocated_11 & _entryNeedCheck_T_184 & datavalid_11 & ~needCancel_11; // @[LoadQueueRAW.scala 319:93]
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext_3 <= oldest_16_valid;
      end else begin
        selValidNext_3 <= oldest_13_valid;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext_3 <= oldest_13_valid;
    end else begin
      selValidNext_3 <= oldest_16_valid;
    end
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_3_uop_cf_ftqPtr_flag <= oldest_16_bits_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_3_uop_cf_ftqPtr_flag <= oldest_13_bits_uop_cf_ftqPtr_flag;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_3_uop_cf_ftqPtr_flag <= oldest_13_bits_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_3_uop_cf_ftqPtr_flag <= oldest_16_bits_uop_cf_ftqPtr_flag;
    end
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_3_uop_cf_ftqPtr_value <= oldest_16_bits_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_3_uop_cf_ftqPtr_value <= oldest_13_bits_uop_cf_ftqPtr_value;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_3_uop_cf_ftqPtr_value <= oldest_13_bits_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_3_uop_cf_ftqPtr_value <= oldest_16_bits_uop_cf_ftqPtr_value;
    end
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_3_uop_cf_ftqOffset <= oldest_16_bits_uop_cf_ftqOffset;
      end else begin
        selBitsNext_3_uop_cf_ftqOffset <= oldest_13_bits_uop_cf_ftqOffset;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_3_uop_cf_ftqOffset <= oldest_13_bits_uop_cf_ftqOffset;
    end else begin
      selBitsNext_3_uop_cf_ftqOffset <= oldest_16_bits_uop_cf_ftqOffset;
    end
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_3_uop_robIdx_flag <= oldest_16_bits_uop_robIdx_flag;
      end else begin
        selBitsNext_3_uop_robIdx_flag <= oldest_13_bits_uop_robIdx_flag;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_3_uop_robIdx_flag <= oldest_13_bits_uop_robIdx_flag;
    end else begin
      selBitsNext_3_uop_robIdx_flag <= oldest_16_bits_uop_robIdx_flag;
    end
    if (oldest_13_valid & oldest_16_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_103) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_3_uop_robIdx_value <= oldest_16_bits_uop_robIdx_value;
      end else begin
        selBitsNext_3_uop_robIdx_value <= oldest_13_bits_uop_robIdx_value;
      end
    end else if (oldest_13_valid & ~oldest_16_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_3_uop_robIdx_value <= oldest_13_bits_uop_robIdx_value;
    end else begin
      selBitsNext_3_uop_robIdx_value <= oldest_16_bits_uop_robIdx_value;
    end
    REG_3_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 301:117]
    REG_3_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
    REG_3_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
    REG_3_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 301:117]
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext_4 <= oldest_19_valid;
      end else begin
        selValidNext_4 <= oldest_18_valid;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext_4 <= oldest_18_valid;
    end else begin
      selValidNext_4 <= oldest_19_valid;
    end
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_4_uop_cf_ftqPtr_flag <= oldest_19_bits_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_4_uop_cf_ftqPtr_flag <= oldest_18_bits_uop_cf_ftqPtr_flag;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_4_uop_cf_ftqPtr_flag <= oldest_18_bits_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_4_uop_cf_ftqPtr_flag <= oldest_19_bits_uop_cf_ftqPtr_flag;
    end
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_4_uop_cf_ftqPtr_value <= oldest_19_bits_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_4_uop_cf_ftqPtr_value <= oldest_18_bits_uop_cf_ftqPtr_value;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_4_uop_cf_ftqPtr_value <= oldest_18_bits_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_4_uop_cf_ftqPtr_value <= oldest_19_bits_uop_cf_ftqPtr_value;
    end
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_4_uop_cf_ftqOffset <= oldest_19_bits_uop_cf_ftqOffset;
      end else begin
        selBitsNext_4_uop_cf_ftqOffset <= oldest_18_bits_uop_cf_ftqOffset;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_4_uop_cf_ftqOffset <= oldest_18_bits_uop_cf_ftqOffset;
    end else begin
      selBitsNext_4_uop_cf_ftqOffset <= oldest_19_bits_uop_cf_ftqOffset;
    end
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_4_uop_robIdx_flag <= oldest_19_bits_uop_robIdx_flag;
      end else begin
        selBitsNext_4_uop_robIdx_flag <= oldest_18_bits_uop_robIdx_flag;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_4_uop_robIdx_flag <= oldest_18_bits_uop_robIdx_flag;
    end else begin
      selBitsNext_4_uop_robIdx_flag <= oldest_19_bits_uop_robIdx_flag;
    end
    if (oldest_18_valid & oldest_19_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_121) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_4_uop_robIdx_value <= oldest_19_bits_uop_robIdx_value;
      end else begin
        selBitsNext_4_uop_robIdx_value <= oldest_18_bits_uop_robIdx_value;
      end
    end else if (oldest_18_valid & ~oldest_19_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_4_uop_robIdx_value <= oldest_18_bits_uop_robIdx_value;
    end else begin
      selBitsNext_4_uop_robIdx_value <= oldest_19_bits_uop_robIdx_value;
    end
    REG_4_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 301:117]
    REG_4_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 301:117]
    REG_4_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 301:117]
    REG_4_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 301:117]
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selValidNext_5 <= res_1_21_valid;
      end else begin
        selValidNext_5 <= res_0_21_valid;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selValidNext_5 <= res_0_21_valid;
    end else begin
      selValidNext_5 <= res_1_21_valid;
    end
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_5_uop_cf_ftqPtr_flag <= selBitsNext_4_uop_cf_ftqPtr_flag;
      end else begin
        selBitsNext_5_uop_cf_ftqPtr_flag <= selBitsNext_3_uop_cf_ftqPtr_flag;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_5_uop_cf_ftqPtr_flag <= selBitsNext_3_uop_cf_ftqPtr_flag;
    end else begin
      selBitsNext_5_uop_cf_ftqPtr_flag <= selBitsNext_4_uop_cf_ftqPtr_flag;
    end
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_5_uop_cf_ftqPtr_value <= selBitsNext_4_uop_cf_ftqPtr_value;
      end else begin
        selBitsNext_5_uop_cf_ftqPtr_value <= selBitsNext_3_uop_cf_ftqPtr_value;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_5_uop_cf_ftqPtr_value <= selBitsNext_3_uop_cf_ftqPtr_value;
    end else begin
      selBitsNext_5_uop_cf_ftqPtr_value <= selBitsNext_4_uop_cf_ftqPtr_value;
    end
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_5_uop_cf_ftqOffset <= selBitsNext_4_uop_cf_ftqOffset;
      end else begin
        selBitsNext_5_uop_cf_ftqOffset <= selBitsNext_3_uop_cf_ftqOffset;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_5_uop_cf_ftqOffset <= selBitsNext_3_uop_cf_ftqOffset;
    end else begin
      selBitsNext_5_uop_cf_ftqOffset <= selBitsNext_4_uop_cf_ftqOffset;
    end
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_5_uop_robIdx_flag <= selBitsNext_4_uop_robIdx_flag;
      end else begin
        selBitsNext_5_uop_robIdx_flag <= selBitsNext_3_uop_robIdx_flag;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_5_uop_robIdx_flag <= selBitsNext_3_uop_robIdx_flag;
    end else begin
      selBitsNext_5_uop_robIdx_flag <= selBitsNext_4_uop_robIdx_flag;
    end
    if (res_0_21_valid & res_1_21_valid) begin // @[LoadQueueRAW.scala 251:23]
      if (_oldest_T_127) begin // @[LoadQueueRAW.scala 251:49]
        selBitsNext_5_uop_robIdx_value <= selBitsNext_4_uop_robIdx_value;
      end else begin
        selBitsNext_5_uop_robIdx_value <= selBitsNext_3_uop_robIdx_value;
      end
    end else if (res_0_21_valid & ~res_1_21_valid) begin // @[LoadQueueRAW.scala 251:119]
      selBitsNext_5_uop_robIdx_value <= selBitsNext_3_uop_robIdx_value;
    end else begin
      selBitsNext_5_uop_robIdx_value <= selBitsNext_4_uop_robIdx_value;
    end
    REG_5_valid <= io_redirect_valid; // @[LoadQueueRAW.scala 295:119]
    REG_5_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadQueueRAW.scala 295:119]
    REG_5_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadQueueRAW.scala 295:119]
    REG_5_bits_level <= io_redirect_bits_level; // @[LoadQueueRAW.scala 295:119]
    io_perf_0_value_REG <= _bypassMaskUInt_T + _bypassMaskUInt_T_7; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_rollback_valid; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_0 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h0 == lastAllocIndex_1) begin
        allocated_0 <= 1'h0;
      end else begin
        allocated_0 <= _GEN_5357;
      end
    end else begin
      allocated_0 <= _GEN_5357;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_1 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h1 == lastAllocIndex_1) begin
        allocated_1 <= 1'h0;
      end else begin
        allocated_1 <= _GEN_5358;
      end
    end else begin
      allocated_1 <= _GEN_5358;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_2 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h2 == lastAllocIndex_1) begin
        allocated_2 <= 1'h0;
      end else begin
        allocated_2 <= _GEN_5359;
      end
    end else begin
      allocated_2 <= _GEN_5359;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_3 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h3 == lastAllocIndex_1) begin
        allocated_3 <= 1'h0;
      end else begin
        allocated_3 <= _GEN_5360;
      end
    end else begin
      allocated_3 <= _GEN_5360;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_4 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h4 == lastAllocIndex_1) begin
        allocated_4 <= 1'h0;
      end else begin
        allocated_4 <= _GEN_5361;
      end
    end else begin
      allocated_4 <= _GEN_5361;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_5 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h5 == lastAllocIndex_1) begin
        allocated_5 <= 1'h0;
      end else begin
        allocated_5 <= _GEN_5362;
      end
    end else begin
      allocated_5 <= _GEN_5362;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_6 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h6 == lastAllocIndex_1) begin
        allocated_6 <= 1'h0;
      end else begin
        allocated_6 <= _GEN_5363;
      end
    end else begin
      allocated_6 <= _GEN_5363;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_7 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h7 == lastAllocIndex_1) begin
        allocated_7 <= 1'h0;
      end else begin
        allocated_7 <= _GEN_5364;
      end
    end else begin
      allocated_7 <= _GEN_5364;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_8 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h8 == lastAllocIndex_1) begin
        allocated_8 <= 1'h0;
      end else begin
        allocated_8 <= _GEN_5365;
      end
    end else begin
      allocated_8 <= _GEN_5365;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_9 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'h9 == lastAllocIndex_1) begin
        allocated_9 <= 1'h0;
      end else begin
        allocated_9 <= _GEN_5366;
      end
    end else begin
      allocated_9 <= _GEN_5366;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_10 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'ha == lastAllocIndex_1) begin
        allocated_10 <= 1'h0;
      end else begin
        allocated_10 <= _GEN_5367;
      end
    end else begin
      allocated_10 <= _GEN_5367;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 196:50]
      allocated_11 <= 1'h0; // @[LoadQueueRAW.scala 197:{30,30}]
    end else if (_GEN_5392 & revokeValid_1) begin
      if (4'hb == lastAllocIndex_1) begin
        allocated_11 <= 1'h0;
      end else begin
        allocated_11 <= _GEN_5368;
      end
    end else begin
      allocated_11 <= _GEN_5368;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_0 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h0 == enqIndexVec_1) begin
        datavalid_0 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_0 <= _GEN_2634;
      end
    end else begin
      datavalid_0 <= _GEN_2634;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_1 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h1 == enqIndexVec_1) begin
        datavalid_1 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_1 <= _GEN_2635;
      end
    end else begin
      datavalid_1 <= _GEN_2635;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_2 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h2 == enqIndexVec_1) begin
        datavalid_2 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_2 <= _GEN_2636;
      end
    end else begin
      datavalid_2 <= _GEN_2636;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_3 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h3 == enqIndexVec_1) begin
        datavalid_3 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_3 <= _GEN_2637;
      end
    end else begin
      datavalid_3 <= _GEN_2637;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_4 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h4 == enqIndexVec_1) begin
        datavalid_4 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_4 <= _GEN_2638;
      end
    end else begin
      datavalid_4 <= _GEN_2638;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_5 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h5 == enqIndexVec_1) begin
        datavalid_5 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_5 <= _GEN_2639;
      end
    end else begin
      datavalid_5 <= _GEN_2639;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_6 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h6 == enqIndexVec_1) begin
        datavalid_6 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_6 <= _GEN_2640;
      end
    end else begin
      datavalid_6 <= _GEN_2640;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_7 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h7 == enqIndexVec_1) begin
        datavalid_7 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_7 <= _GEN_2641;
      end
    end else begin
      datavalid_7 <= _GEN_2641;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_8 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h8 == enqIndexVec_1) begin
        datavalid_8 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_8 <= _GEN_2642;
      end
    end else begin
      datavalid_8 <= _GEN_2642;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_9 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'h9 == enqIndexVec_1) begin
        datavalid_9 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_9 <= _GEN_2643;
      end
    end else begin
      datavalid_9 <= _GEN_2643;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_10 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'ha == enqIndexVec_1) begin
        datavalid_10 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_10 <= _GEN_2644;
      end
    end else begin
      datavalid_10 <= _GEN_2644;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAW.scala 136:40]
      datavalid_11 <= 1'h0; // @[LoadQueueRAW.scala 161:{27,27}]
    end else if (acceptedVec_1) begin
      if (4'hb == enqIndexVec_1) begin
        datavalid_11 <= io_query_1_req_bits_data_valid;
      end else begin
        datavalid_11 <= _GEN_2645;
      end
    end else begin
      datavalid_11 <= _GEN_2645;
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
  allocated_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  allocated_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  allocated_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  allocated_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  uop_0_cf_ftqPtr_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  uop_0_cf_ftqPtr_value = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  uop_0_cf_ftqOffset = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  uop_0_robIdx_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  uop_0_robIdx_value = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  uop_0_sqIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  uop_0_sqIdx_value = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  uop_1_cf_ftqPtr_flag = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  uop_1_cf_ftqPtr_value = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  uop_1_cf_ftqOffset = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  uop_1_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  uop_1_sqIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  uop_1_sqIdx_value = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  uop_2_cf_ftqPtr_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  uop_2_cf_ftqPtr_value = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  uop_2_cf_ftqOffset = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  uop_2_sqIdx_flag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  uop_2_sqIdx_value = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  uop_3_cf_ftqPtr_flag = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  uop_3_cf_ftqPtr_value = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  uop_3_cf_ftqOffset = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  uop_3_sqIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  uop_3_sqIdx_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  uop_4_cf_ftqPtr_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_4_cf_ftqPtr_value = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  uop_4_cf_ftqOffset = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_44[4:0];
  _RAND_45 = {1{`RANDOM}};
  uop_4_sqIdx_flag = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  uop_4_sqIdx_value = _RAND_46[3:0];
  _RAND_47 = {1{`RANDOM}};
  uop_5_cf_ftqPtr_flag = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  uop_5_cf_ftqPtr_value = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  uop_5_cf_ftqOffset = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_51[4:0];
  _RAND_52 = {1{`RANDOM}};
  uop_5_sqIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  uop_5_sqIdx_value = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  uop_6_cf_ftqPtr_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  uop_6_cf_ftqPtr_value = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  uop_6_cf_ftqOffset = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_58[4:0];
  _RAND_59 = {1{`RANDOM}};
  uop_6_sqIdx_flag = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  uop_6_sqIdx_value = _RAND_60[3:0];
  _RAND_61 = {1{`RANDOM}};
  uop_7_cf_ftqPtr_flag = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  uop_7_cf_ftqPtr_value = _RAND_62[2:0];
  _RAND_63 = {1{`RANDOM}};
  uop_7_cf_ftqOffset = _RAND_63[2:0];
  _RAND_64 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  uop_7_sqIdx_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  uop_7_sqIdx_value = _RAND_67[3:0];
  _RAND_68 = {1{`RANDOM}};
  uop_8_cf_ftqPtr_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  uop_8_cf_ftqPtr_value = _RAND_69[2:0];
  _RAND_70 = {1{`RANDOM}};
  uop_8_cf_ftqOffset = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  uop_8_robIdx_flag = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  uop_8_robIdx_value = _RAND_72[4:0];
  _RAND_73 = {1{`RANDOM}};
  uop_8_sqIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  uop_8_sqIdx_value = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  uop_9_cf_ftqPtr_flag = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  uop_9_cf_ftqPtr_value = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  uop_9_cf_ftqOffset = _RAND_77[2:0];
  _RAND_78 = {1{`RANDOM}};
  uop_9_robIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  uop_9_robIdx_value = _RAND_79[4:0];
  _RAND_80 = {1{`RANDOM}};
  uop_9_sqIdx_flag = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  uop_9_sqIdx_value = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  uop_10_cf_ftqPtr_flag = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  uop_10_cf_ftqPtr_value = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  uop_10_cf_ftqOffset = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  uop_10_robIdx_flag = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  uop_10_robIdx_value = _RAND_86[4:0];
  _RAND_87 = {1{`RANDOM}};
  uop_10_sqIdx_flag = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  uop_10_sqIdx_value = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  uop_11_cf_ftqPtr_flag = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  uop_11_cf_ftqPtr_value = _RAND_90[2:0];
  _RAND_91 = {1{`RANDOM}};
  uop_11_cf_ftqOffset = _RAND_91[2:0];
  _RAND_92 = {1{`RANDOM}};
  uop_11_robIdx_flag = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  uop_11_robIdx_value = _RAND_93[4:0];
  _RAND_94 = {1{`RANDOM}};
  uop_11_sqIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  uop_11_sqIdx_value = _RAND_95[3:0];
  _RAND_96 = {1{`RANDOM}};
  datavalid_0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  datavalid_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  datavalid_2 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  datavalid_3 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  datavalid_4 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  datavalid_5 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  datavalid_6 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  datavalid_7 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  datavalid_8 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  datavalid_9 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  datavalid_10 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  datavalid_11 = _RAND_107[0:0];
  _RAND_108 = {2{`RANDOM}};
  bypassPAddr_0 = _RAND_108[35:0];
  _RAND_109 = {2{`RANDOM}};
  bypassPAddr_1 = _RAND_109[35:0];
  _RAND_110 = {1{`RANDOM}};
  bypassMask_0 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  bypassMask_1 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  lastCanAccept_0 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  lastCanAccept_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  lastAllocIndex_0 = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  lastAllocIndex_1 = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  bypassPaddrMask__0 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  bypassPaddrMask__1 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  bypassMMask__0 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  bypassMMask__1 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  bypassMaskUInt_REG = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  bypassMaskUInt_REG_1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  bypassMaskUInt_REG_2 = _RAND_122[3:0];
  _RAND_123 = {1{`RANDOM}};
  bypassMaskUInt_REG_3 = _RAND_123[3:0];
  _RAND_124 = {1{`RANDOM}};
  bypassMaskUInt_REG_4 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  bypassMaskUInt_REG_5 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  bypassMaskUInt_REG_6 = _RAND_126[3:0];
  _RAND_127 = {1{`RANDOM}};
  bypassMaskUInt_REG_7 = _RAND_127[3:0];
  _RAND_128 = {1{`RANDOM}};
  addrMaskMatch_REG = _RAND_128[11:0];
  _RAND_129 = {1{`RANDOM}};
  entryNeedCheck__0 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  entryNeedCheck__1 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  entryNeedCheck__2 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  entryNeedCheck__3 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  entryNeedCheck__4 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  entryNeedCheck__5 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  entryNeedCheck__6 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  entryNeedCheck__7 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  entryNeedCheck__8 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  entryNeedCheck__9 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  entryNeedCheck__10 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  entryNeedCheck__11 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  selValidNext = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  selBitsNext_uop_cf_ftqPtr_flag = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  selBitsNext_uop_cf_ftqPtr_value = _RAND_143[2:0];
  _RAND_144 = {1{`RANDOM}};
  selBitsNext_uop_cf_ftqOffset = _RAND_144[2:0];
  _RAND_145 = {1{`RANDOM}};
  selBitsNext_uop_robIdx_flag = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  selBitsNext_uop_robIdx_value = _RAND_146[4:0];
  _RAND_147 = {1{`RANDOM}};
  REG_valid = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  REG_bits_robIdx_flag = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  REG_bits_robIdx_value = _RAND_149[4:0];
  _RAND_150 = {1{`RANDOM}};
  REG_bits_level = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  selValidNext_1 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  selBitsNext_1_uop_cf_ftqPtr_flag = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  selBitsNext_1_uop_cf_ftqPtr_value = _RAND_153[2:0];
  _RAND_154 = {1{`RANDOM}};
  selBitsNext_1_uop_cf_ftqOffset = _RAND_154[2:0];
  _RAND_155 = {1{`RANDOM}};
  selBitsNext_1_uop_robIdx_flag = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  selBitsNext_1_uop_robIdx_value = _RAND_156[4:0];
  _RAND_157 = {1{`RANDOM}};
  REG_1_valid = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  REG_1_bits_robIdx_flag = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  REG_1_bits_robIdx_value = _RAND_159[4:0];
  _RAND_160 = {1{`RANDOM}};
  REG_1_bits_level = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  selValidNext_2 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  selBitsNext_2_uop_cf_ftqPtr_flag = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  selBitsNext_2_uop_cf_ftqPtr_value = _RAND_163[2:0];
  _RAND_164 = {1{`RANDOM}};
  selBitsNext_2_uop_cf_ftqOffset = _RAND_164[2:0];
  _RAND_165 = {1{`RANDOM}};
  selBitsNext_2_uop_robIdx_flag = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  selBitsNext_2_uop_robIdx_value = _RAND_166[4:0];
  _RAND_167 = {1{`RANDOM}};
  REG_2_valid = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  REG_2_bits_robIdx_flag = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  REG_2_bits_robIdx_value = _RAND_169[4:0];
  _RAND_170 = {1{`RANDOM}};
  REG_2_bits_level = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  bypassPaddrMask_1_0 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  bypassPaddrMask_1_1 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  bypassMMask_1_0 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  bypassMMask_1_1 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  bypassMaskUInt_REG_8 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  bypassMaskUInt_REG_9 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  bypassMaskUInt_REG_10 = _RAND_177[3:0];
  _RAND_178 = {1{`RANDOM}};
  bypassMaskUInt_REG_11 = _RAND_178[3:0];
  _RAND_179 = {1{`RANDOM}};
  bypassMaskUInt_REG_12 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  bypassMaskUInt_REG_13 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  bypassMaskUInt_REG_14 = _RAND_181[3:0];
  _RAND_182 = {1{`RANDOM}};
  bypassMaskUInt_REG_15 = _RAND_182[3:0];
  _RAND_183 = {1{`RANDOM}};
  addrMaskMatch_REG_1 = _RAND_183[11:0];
  _RAND_184 = {1{`RANDOM}};
  entryNeedCheck_1_0 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  entryNeedCheck_1_1 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  entryNeedCheck_1_2 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  entryNeedCheck_1_3 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  entryNeedCheck_1_4 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  entryNeedCheck_1_5 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  entryNeedCheck_1_6 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  entryNeedCheck_1_7 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  entryNeedCheck_1_8 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  entryNeedCheck_1_9 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  entryNeedCheck_1_10 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  entryNeedCheck_1_11 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  selValidNext_3 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  selBitsNext_3_uop_cf_ftqPtr_flag = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  selBitsNext_3_uop_cf_ftqPtr_value = _RAND_198[2:0];
  _RAND_199 = {1{`RANDOM}};
  selBitsNext_3_uop_cf_ftqOffset = _RAND_199[2:0];
  _RAND_200 = {1{`RANDOM}};
  selBitsNext_3_uop_robIdx_flag = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  selBitsNext_3_uop_robIdx_value = _RAND_201[4:0];
  _RAND_202 = {1{`RANDOM}};
  REG_3_valid = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  REG_3_bits_robIdx_flag = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  REG_3_bits_robIdx_value = _RAND_204[4:0];
  _RAND_205 = {1{`RANDOM}};
  REG_3_bits_level = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  selValidNext_4 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  selBitsNext_4_uop_cf_ftqPtr_flag = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  selBitsNext_4_uop_cf_ftqPtr_value = _RAND_208[2:0];
  _RAND_209 = {1{`RANDOM}};
  selBitsNext_4_uop_cf_ftqOffset = _RAND_209[2:0];
  _RAND_210 = {1{`RANDOM}};
  selBitsNext_4_uop_robIdx_flag = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  selBitsNext_4_uop_robIdx_value = _RAND_211[4:0];
  _RAND_212 = {1{`RANDOM}};
  REG_4_valid = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  REG_4_bits_robIdx_flag = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  REG_4_bits_robIdx_value = _RAND_214[4:0];
  _RAND_215 = {1{`RANDOM}};
  REG_4_bits_level = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  selValidNext_5 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  selBitsNext_5_uop_cf_ftqPtr_flag = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  selBitsNext_5_uop_cf_ftqPtr_value = _RAND_218[2:0];
  _RAND_219 = {1{`RANDOM}};
  selBitsNext_5_uop_cf_ftqOffset = _RAND_219[2:0];
  _RAND_220 = {1{`RANDOM}};
  selBitsNext_5_uop_robIdx_flag = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  selBitsNext_5_uop_robIdx_value = _RAND_221[4:0];
  _RAND_222 = {1{`RANDOM}};
  REG_5_valid = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  REG_5_bits_robIdx_flag = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  REG_5_bits_robIdx_value = _RAND_224[4:0];
  _RAND_225 = {1{`RANDOM}};
  REG_5_bits_level = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_226[1:0];
  _RAND_227 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_227[1:0];
  _RAND_228 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_229[0:0];
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
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

