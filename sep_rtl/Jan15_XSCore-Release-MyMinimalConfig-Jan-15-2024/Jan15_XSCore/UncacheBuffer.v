module UncacheBuffer(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_req_0_valid,
  input         io_req_0_bits_uop_cf_exceptionVec_4,
  input         io_req_0_bits_uop_cf_exceptionVec_5,
  input         io_req_0_bits_uop_cf_exceptionVec_13,
  input         io_req_0_bits_uop_cf_trigger_backendEn_1,
  input         io_req_0_bits_uop_cf_trigger_backendHit_0,
  input         io_req_0_bits_uop_cf_trigger_backendHit_1,
  input         io_req_0_bits_uop_cf_trigger_backendHit_4,
  input         io_req_0_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_req_0_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_req_0_bits_uop_cf_ftqOffset,
  input  [6:0]  io_req_0_bits_uop_ctrl_fuOpType,
  input         io_req_0_bits_uop_ctrl_rfWen,
  input         io_req_0_bits_uop_ctrl_fpWen,
  input         io_req_0_bits_uop_ctrl_replayInst,
  input  [5:0]  io_req_0_bits_uop_pdest,
  input         io_req_0_bits_uop_robIdx_flag,
  input  [4:0]  io_req_0_bits_uop_robIdx_value,
  input         io_req_0_bits_uop_lqIdx_flag,
  input  [3:0]  io_req_0_bits_uop_lqIdx_value,
  input  [35:0] io_req_0_bits_paddr,
  input  [15:0] io_req_0_bits_mask,
  input         io_req_0_bits_mmio,
  input         io_req_0_bits_rep_info_cause_0,
  input         io_req_0_bits_rep_info_cause_1,
  input         io_req_0_bits_rep_info_cause_2,
  input         io_req_0_bits_rep_info_cause_3,
  input         io_req_0_bits_rep_info_cause_4,
  input         io_req_0_bits_rep_info_cause_5,
  input         io_req_0_bits_rep_info_cause_6,
  input         io_req_0_bits_rep_info_cause_7,
  input         io_req_0_bits_rep_info_cause_8,
  input         io_req_0_bits_rep_info_cause_9,
  input         io_req_0_bits_data_wen_dup_5,
  input         io_req_1_valid,
  input         io_req_1_bits_uop_cf_exceptionVec_4,
  input         io_req_1_bits_uop_cf_exceptionVec_5,
  input         io_req_1_bits_uop_cf_exceptionVec_13,
  input         io_req_1_bits_uop_cf_trigger_backendEn_1,
  input         io_req_1_bits_uop_cf_trigger_backendHit_0,
  input         io_req_1_bits_uop_cf_trigger_backendHit_1,
  input         io_req_1_bits_uop_cf_trigger_backendHit_4,
  input         io_req_1_bits_uop_cf_ftqPtr_flag,
  input  [2:0]  io_req_1_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_req_1_bits_uop_cf_ftqOffset,
  input  [6:0]  io_req_1_bits_uop_ctrl_fuOpType,
  input         io_req_1_bits_uop_ctrl_rfWen,
  input         io_req_1_bits_uop_ctrl_fpWen,
  input         io_req_1_bits_uop_ctrl_replayInst,
  input  [5:0]  io_req_1_bits_uop_pdest,
  input         io_req_1_bits_uop_robIdx_flag,
  input  [4:0]  io_req_1_bits_uop_robIdx_value,
  input         io_req_1_bits_uop_lqIdx_flag,
  input  [3:0]  io_req_1_bits_uop_lqIdx_value,
  input  [35:0] io_req_1_bits_paddr,
  input  [15:0] io_req_1_bits_mask,
  input         io_req_1_bits_mmio,
  input         io_req_1_bits_rep_info_cause_0,
  input         io_req_1_bits_rep_info_cause_1,
  input         io_req_1_bits_rep_info_cause_2,
  input         io_req_1_bits_rep_info_cause_3,
  input         io_req_1_bits_rep_info_cause_4,
  input         io_req_1_bits_rep_info_cause_5,
  input         io_req_1_bits_rep_info_cause_6,
  input         io_req_1_bits_rep_info_cause_7,
  input         io_req_1_bits_rep_info_cause_8,
  input         io_req_1_bits_rep_info_cause_9,
  input         io_req_1_bits_data_wen_dup_5,
  input         io_ldout_0_ready,
  output        io_ldout_0_valid,
  output        io_ldout_0_bits_uop_cf_exceptionVec_4,
  output        io_ldout_0_bits_uop_cf_exceptionVec_5,
  output        io_ldout_0_bits_uop_cf_exceptionVec_13,
  output        io_ldout_0_bits_uop_cf_trigger_backendEn_1,
  output        io_ldout_0_bits_uop_cf_trigger_backendHit_0,
  output        io_ldout_0_bits_uop_cf_trigger_backendHit_1,
  output        io_ldout_0_bits_uop_cf_trigger_backendHit_4,
  output        io_ldout_0_bits_uop_ctrl_rfWen,
  output        io_ldout_0_bits_uop_ctrl_fpWen,
  output        io_ldout_0_bits_uop_ctrl_replayInst,
  output [5:0]  io_ldout_0_bits_uop_pdest,
  output        io_ldout_0_bits_uop_robIdx_flag,
  output [4:0]  io_ldout_0_bits_uop_robIdx_value,
  output        io_ldout_0_bits_uop_lqIdx_flag,
  output [3:0]  io_ldout_0_bits_uop_lqIdx_value,
  output [63:0] io_ld_raw_data_0_lqData,
  output [6:0]  io_ld_raw_data_0_uop_ctrl_fuOpType,
  output        io_ld_raw_data_0_uop_ctrl_fpWen,
  output [2:0]  io_ld_raw_data_0_addrOffset,
  input         io_rob_pendingld,
  input         io_rob_commit,
  input         io_rob_pendingPtr_flag,
  input  [4:0]  io_rob_pendingPtr_value,
  output        io_rob_mmio_0,
  output        io_rob_mmio_1,
  output [4:0]  io_rob_uop_0_robIdx_value,
  output [4:0]  io_rob_uop_1_robIdx_value,
  input         io_uncache_req_ready,
  output        io_uncache_req_valid,
  output [35:0] io_uncache_req_bits_addr,
  output [7:0]  io_uncache_req_bits_mask,
  output [4:0]  io_uncache_req_bits_id,
  output        io_uncache_resp_ready,
  input         io_uncache_resp_valid,
  input  [63:0] io_uncache_resp_bits_data,
  input  [4:0]  io_uncache_resp_bits_id,
  input         io_trigger_0_hitLoadAddrTriggerHitVec_0,
  input         io_trigger_0_hitLoadAddrTriggerHitVec_1,
  input         io_trigger_0_hitLoadAddrTriggerHitVec_2,
  output        io_trigger_0_lqLoadAddrTriggerHitVec_0,
  output        io_trigger_0_lqLoadAddrTriggerHitVec_1,
  output        io_trigger_0_lqLoadAddrTriggerHitVec_2,
  input         io_trigger_1_hitLoadAddrTriggerHitVec_0,
  input         io_trigger_1_hitLoadAddrTriggerHitVec_1,
  input         io_trigger_1_hitLoadAddrTriggerHitVec_2,
  output        io_rollback_valid,
  output        io_rollback_bits_robIdx_flag,
  output [4:0]  io_rollback_bits_robIdx_value,
  output        io_rollback_bits_ftqIdx_flag,
  output [2:0]  io_rollback_bits_ftqIdx_value,
  output [2:0]  io_rollback_bits_ftqOffset
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
  reg [63:0] _RAND_19;
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
  reg [63:0] _RAND_52;
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
  reg [63:0] _RAND_77;
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
  reg [63:0] _RAND_97;
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
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_reset; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_0_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_0_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_0_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_0_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_0_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_0_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_0_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_0_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_0_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_0_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_0_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_0_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_0_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_0_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_0_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_0_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_0_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_0_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_0_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_reset; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_1_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_1_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_1_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_1_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_1_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_1_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_1_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_1_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_1_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_1_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_1_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_1_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_1_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_1_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_1_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_1_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_1_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_1_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_1_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_reset; // @[UncacheBuffer.scala 244:64]
  wire [1:0] entries_2_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_2_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_2_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_2_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_2_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_2_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_2_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_2_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_2_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_2_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_2_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_2_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_2_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_2_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_2_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_2_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_2_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_2_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_2_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_2_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_reset; // @[UncacheBuffer.scala 244:64]
  wire [1:0] entries_3_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_3_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_3_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_3_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_3_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_3_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_3_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_3_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_3_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_3_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_3_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_3_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_3_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_3_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_3_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_3_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_3_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_3_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_3_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_3_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_reset; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_4_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_4_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_4_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_4_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_4_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_4_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_4_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_4_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_4_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_4_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_4_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_4_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_4_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_4_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_4_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_4_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_4_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_4_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_4_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_4_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_reset; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_5_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_5_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_5_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_5_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_5_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_5_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_5_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_5_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_5_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_5_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_5_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_5_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_5_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_5_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_5_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_5_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_5_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_5_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_5_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_5_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_reset; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_6_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_6_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_6_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_6_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_6_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_6_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_6_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_6_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_6_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_6_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_6_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_6_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_6_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_6_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_6_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_6_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_6_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_6_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_6_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_6_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_clock; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_reset; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_7_io_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_redirect_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_7_io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_redirect_bits_level; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_7_io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_7_io_req_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_7_io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_7_io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_7_io_req_bits_paddr; // @[UncacheBuffer.scala 244:64]
  wire [15:0] entries_7_io_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_req_bits_data_wen_dup_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_valid; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 244:64]
  wire [5:0] entries_7_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_7_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 244:64]
  wire [3:0] entries_7_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_7_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 244:64]
  wire [6:0] entries_7_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 244:64]
  wire [2:0] entries_7_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_rob_pendingld; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_rob_commit; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_7_io_rob_pendingPtr_value; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_uncache_req_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_uncache_req_valid; // @[UncacheBuffer.scala 244:64]
  wire [35:0] entries_7_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 244:64]
  wire [7:0] entries_7_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 244:64]
  wire [4:0] entries_7_io_uncache_req_bits_id; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_uncache_resp_ready; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_uncache_resp_valid; // @[UncacheBuffer.scala 244:64]
  wire [63:0] entries_7_io_uncache_resp_bits_data; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_select; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_flush; // @[UncacheBuffer.scala 244:64]
  wire  entries_7_io_commitFire; // @[UncacheBuffer.scala 244:64]
  wire  freeList_clock; // @[UncacheBuffer.scala 250:24]
  wire  freeList_reset; // @[UncacheBuffer.scala 250:24]
  wire  freeList_io_allocateReq_0; // @[UncacheBuffer.scala 250:24]
  wire [2:0] freeList_io_allocateSlot_0; // @[UncacheBuffer.scala 250:24]
  wire [2:0] freeList_io_allocateSlot_1; // @[UncacheBuffer.scala 250:24]
  wire  freeList_io_canAllocate_0; // @[UncacheBuffer.scala 250:24]
  wire  freeList_io_canAllocate_1; // @[UncacheBuffer.scala 250:24]
  wire  freeList_io_doAllocate_0; // @[UncacheBuffer.scala 250:24]
  wire  freeList_io_doAllocate_1; // @[UncacheBuffer.scala 250:24]
  wire [7:0] freeList_io_free; // @[UncacheBuffer.scala 250:24]
  reg  s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 301:23]
  reg [2:0] s2_req_0_uop_cf_ftqPtr_value; // @[UncacheBuffer.scala 301:23]
  reg [2:0] s2_req_0_uop_cf_ftqOffset; // @[UncacheBuffer.scala 301:23]
  reg [6:0] s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 301:23]
  reg [5:0] s2_req_0_uop_pdest; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 301:23]
  reg [4:0] s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 301:23]
  reg [3:0] s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 301:23]
  reg [35:0] s2_req_0_paddr; // @[UncacheBuffer.scala 301:23]
  reg [15:0] s2_req_0_mask; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_mmio; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_0; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_2; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_3; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_6; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_7; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_8; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_rep_info_cause_9; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 301:23]
  reg [2:0] s2_req_1_uop_cf_ftqPtr_value; // @[UncacheBuffer.scala 301:23]
  reg [2:0] s2_req_1_uop_cf_ftqOffset; // @[UncacheBuffer.scala 301:23]
  reg [6:0] s2_req_1_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_ctrl_rfWen; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_ctrl_fpWen; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_ctrl_replayInst; // @[UncacheBuffer.scala 301:23]
  reg [5:0] s2_req_1_uop_pdest; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_robIdx_flag; // @[UncacheBuffer.scala 301:23]
  reg [4:0] s2_req_1_uop_robIdx_value; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_uop_lqIdx_flag; // @[UncacheBuffer.scala 301:23]
  reg [3:0] s2_req_1_uop_lqIdx_value; // @[UncacheBuffer.scala 301:23]
  reg [35:0] s2_req_1_paddr; // @[UncacheBuffer.scala 301:23]
  reg [15:0] s2_req_1_mask; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_mmio; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_0; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_1; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_2; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_3; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_4; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_6; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_7; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_8; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_rep_info_cause_9; // @[UncacheBuffer.scala 301:23]
  reg  s2_req_1_data_wen_dup_5; // @[UncacheBuffer.scala 301:23]
  reg  s2_valid_REG; // @[UncacheBuffer.scala 303:12]
  reg  s2_valid_REG_1_valid; // @[UncacheBuffer.scala 304:44]
  reg  s2_valid_REG_1_bits_robIdx_flag; // @[UncacheBuffer.scala 304:44]
  reg [4:0] s2_valid_REG_1_bits_robIdx_value; // @[UncacheBuffer.scala 304:44]
  reg  s2_valid_REG_1_bits_level; // @[UncacheBuffer.scala 304:44]
  wire [5:0] _s2_valid_flushItself_T_1 = {s2_req_0_uop_robIdx_flag,s2_req_0_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s2_valid_flushItself_T_2 = {s2_valid_REG_1_bits_robIdx_flag,s2_valid_REG_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_3 = _s2_valid_flushItself_T_1 == _s2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself = s2_valid_REG_1_bits_level & _s2_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag = s2_req_0_uop_robIdx_flag ^ s2_valid_REG_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare = s2_req_0_uop_robIdx_value > s2_valid_REG_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T = s2_valid_differentFlag ^ s2_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_2 = s2_valid_REG_1_valid & (s2_valid_flushItself | _s2_valid_T); // @[Rob.scala 143:20]
  wire  _s2_valid_T_3 = ~_s2_valid_T_2; // @[UncacheBuffer.scala 304:5]
  wire  _s2_valid_T_4 = s2_valid_REG & _s2_valid_T_3; // @[UncacheBuffer.scala 303:26]
  wire [5:0] _s2_valid_flushItself_T_6 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_7 = _s2_valid_flushItself_T_1 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_1 = io_redirect_bits_level & _s2_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_1 = s2_req_0_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_1 = s2_req_0_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_5 = s2_valid_differentFlag_1 ^ s2_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_7 = io_redirect_valid & (s2_valid_flushItself_1 | _s2_valid_T_5); // @[Rob.scala 143:20]
  wire  _s2_valid_T_8 = ~_s2_valid_T_7; // @[UncacheBuffer.scala 305:5]
  wire  s2_valid_0 = _s2_valid_T_4 & _s2_valid_T_8; // @[UncacheBuffer.scala 304:59]
  reg  s2_valid_REG_2; // @[UncacheBuffer.scala 303:12]
  reg  s2_valid_REG_3_valid; // @[UncacheBuffer.scala 304:44]
  reg  s2_valid_REG_3_bits_robIdx_flag; // @[UncacheBuffer.scala 304:44]
  reg [4:0] s2_valid_REG_3_bits_robIdx_value; // @[UncacheBuffer.scala 304:44]
  reg  s2_valid_REG_3_bits_level; // @[UncacheBuffer.scala 304:44]
  wire [5:0] _s2_valid_flushItself_T_9 = {s2_req_1_uop_robIdx_flag,s2_req_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s2_valid_flushItself_T_10 = {s2_valid_REG_3_bits_robIdx_flag,s2_valid_REG_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_11 = _s2_valid_flushItself_T_9 == _s2_valid_flushItself_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_2 = s2_valid_REG_3_bits_level & _s2_valid_flushItself_T_11; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_2 = s2_req_1_uop_robIdx_flag ^ s2_valid_REG_3_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_2 = s2_req_1_uop_robIdx_value > s2_valid_REG_3_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_9 = s2_valid_differentFlag_2 ^ s2_valid_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_11 = s2_valid_REG_3_valid & (s2_valid_flushItself_2 | _s2_valid_T_9); // @[Rob.scala 143:20]
  wire  _s2_valid_T_12 = ~_s2_valid_T_11; // @[UncacheBuffer.scala 304:5]
  wire  _s2_valid_T_13 = s2_valid_REG_2 & _s2_valid_T_12; // @[UncacheBuffer.scala 303:26]
  wire  _s2_valid_flushItself_T_15 = _s2_valid_flushItself_T_9 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_3 = io_redirect_bits_level & _s2_valid_flushItself_T_15; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_3 = s2_req_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_3 = s2_req_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_14 = s2_valid_differentFlag_3 ^ s2_valid_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_16 = io_redirect_valid & (s2_valid_flushItself_3 | _s2_valid_T_14); // @[Rob.scala 143:20]
  wire  _s2_valid_T_17 = ~_s2_valid_T_16; // @[UncacheBuffer.scala 305:5]
  wire  s2_valid_1 = _s2_valid_T_13 & _s2_valid_T_17; // @[UncacheBuffer.scala 304:59]
  wire [15:0] _s2_has_exception_T = {2'h0,s2_req_0_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,s2_req_0_uop_cf_exceptionVec_5,
    s2_req_0_uop_cf_exceptionVec_4,4'h0}; // @[UncacheBuffer.scala 307:96]
  wire  s2_has_exception_0 = |_s2_has_exception_T; // @[UncacheBuffer.scala 307:103]
  wire [15:0] _s2_has_exception_T_1 = {2'h0,s2_req_1_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    s2_req_1_uop_cf_exceptionVec_5,s2_req_1_uop_cf_exceptionVec_4,4'h0}; // @[UncacheBuffer.scala 307:96]
  wire  s2_has_exception_1 = |_s2_has_exception_T_1; // @[UncacheBuffer.scala 307:103]
  wire [9:0] _s2_need_replay_T = {s2_req_0_rep_info_cause_9,s2_req_0_rep_info_cause_8,s2_req_0_rep_info_cause_7,
    s2_req_0_rep_info_cause_6,s2_req_0_rep_info_cause_5,s2_req_0_rep_info_cause_4,s2_req_0_rep_info_cause_3,
    s2_req_0_rep_info_cause_2,s2_req_0_rep_info_cause_1,s2_req_0_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  s2_need_replay_0 = |_s2_need_replay_T; // @[LoadUnit.scala 62:36]
  wire [9:0] _s2_need_replay_T_1 = {s2_req_1_rep_info_cause_9,s2_req_1_rep_info_cause_8,s2_req_1_rep_info_cause_7,
    s2_req_1_rep_info_cause_6,s2_req_1_rep_info_cause_5,s2_req_1_rep_info_cause_4,s2_req_1_rep_info_cause_3,
    s2_req_1_rep_info_cause_2,s2_req_1_rep_info_cause_1,s2_req_1_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  s2_need_replay_1 = |_s2_need_replay_T_1; // @[LoadUnit.scala 62:36]
  wire  s2_enqueue_0 = s2_valid_0 & ~s2_has_exception_0 & ~s2_need_replay_0 & s2_req_0_mmio; // @[UncacheBuffer.scala 312:80]
  wire  s2_enqueue_1 = s2_valid_1 & ~s2_has_exception_1 & ~s2_need_replay_1 & s2_req_1_mmio; // @[UncacheBuffer.scala 312:80]
  wire  enqValidVec_0 = s2_enqueue_0 & freeList_io_canAllocate_0; // @[UncacheBuffer.scala 329:37]
  wire  enqValidVec_1 = s2_enqueue_1 & freeList_io_canAllocate_1; // @[UncacheBuffer.scala 329:37]
  wire [2:0] enqIndexVec_0 = freeList_io_allocateSlot_0; // @[UncacheBuffer.scala 317:25 330:20]
  wire  _GEN_206 = enqValidVec_0 & 3'h0 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_207 = enqValidVec_0 & 3'h0 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_208 = enqValidVec_0 & 3'h0 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire [2:0] enqIndexVec_1 = freeList_io_allocateSlot_1; // @[UncacheBuffer.scala 317:25 330:20]
  wire  _GEN_418 = entries_0_io_select & entries_0_io_uncache_req_valid; // @[UncacheBuffer.scala 341:20 368:26 369:26]
  wire [35:0] _GEN_420 = entries_0_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 368:26 370:25]
  wire [7:0] _GEN_422 = entries_0_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 368:26 370:25]
  wire [4:0] _GEN_423 = entries_0_io_uncache_req_bits_id; // @[UncacheBuffer.scala 368:26 370:25]
  wire [5:0] _GEN_518 = entries_0_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 368:26 372:21]
  wire [4:0] _GEN_520 = entries_0_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 368:26 372:21]
  wire [3:0] _GEN_522 = entries_0_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_624 = entries_0_io_select & entries_0_io_ldout_valid; // @[UncacheBuffer.scala 343:20 368:26 372:21]
  wire [63:0] _GEN_625 = entries_0_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 368:26 373:23]
  wire [6:0] _GEN_682 = entries_0_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 368:26 373:23]
  wire [2:0] _GEN_734 = entries_0_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_735 = entries_0_io_select & entries_0_io_commitFire; // @[UncacheBuffer.scala 347:20 368:26 374:21]
  wire  _GEN_958 = enqValidVec_0 & 3'h1 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_959 = enqValidVec_0 & 3'h1 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_960 = enqValidVec_0 & 3'h1 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_1170 = entries_1_io_select ? entries_1_io_uncache_req_valid : _GEN_418; // @[UncacheBuffer.scala 368:26 369:26]
  wire [35:0] _GEN_1172 = entries_1_io_select ? entries_1_io_uncache_req_bits_addr : _GEN_420; // @[UncacheBuffer.scala 368:26 370:25]
  wire [7:0] _GEN_1174 = entries_1_io_select ? entries_1_io_uncache_req_bits_mask : _GEN_422; // @[UncacheBuffer.scala 368:26 370:25]
  wire [4:0] _GEN_1175 = entries_1_io_select ? entries_1_io_uncache_req_bits_id : _GEN_423; // @[UncacheBuffer.scala 368:26 370:25]
  wire  _GEN_1188 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_exceptionVec_4 :
    entries_0_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1189 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_exceptionVec_5 :
    entries_0_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1197 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_exceptionVec_13 :
    entries_0_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1205 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_trigger_backendEn_1 :
    entries_0_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1206 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_trigger_backendHit_0 :
    entries_0_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1207 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_trigger_backendHit_1 :
    entries_0_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1210 = entries_1_io_select ? entries_1_io_ldout_bits_uop_cf_trigger_backendHit_4 :
    entries_0_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1238 = entries_1_io_select ? entries_1_io_ldout_bits_uop_ctrl_rfWen :
    entries_0_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1239 = entries_1_io_select ? entries_1_io_ldout_bits_uop_ctrl_fpWen :
    entries_0_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1263 = entries_1_io_select ? entries_1_io_ldout_bits_uop_ctrl_replayInst :
    entries_0_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 368:26 372:21]
  wire [5:0] _GEN_1270 = entries_1_io_select ? entries_1_io_ldout_bits_uop_pdest : _GEN_518; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1271 = entries_1_io_select ? entries_1_io_ldout_bits_uop_robIdx_flag :
    entries_0_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 368:26 372:21]
  wire [4:0] _GEN_1272 = entries_1_io_select ? entries_1_io_ldout_bits_uop_robIdx_value : _GEN_520; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1273 = entries_1_io_select ? entries_1_io_ldout_bits_uop_lqIdx_flag :
    entries_0_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 368:26 372:21]
  wire [3:0] _GEN_1274 = entries_1_io_select ? entries_1_io_ldout_bits_uop_lqIdx_value : _GEN_522; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1376 = entries_1_io_select ? entries_1_io_ldout_valid : _GEN_624; // @[UncacheBuffer.scala 368:26 372:21]
  wire [63:0] _GEN_1377 = entries_1_io_select ? entries_1_io_ld_raw_data_lqData : _GEN_625; // @[UncacheBuffer.scala 368:26 373:23]
  wire [6:0] _GEN_1434 = entries_1_io_select ? entries_1_io_ld_raw_data_uop_ctrl_fuOpType : _GEN_682; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_1436 = entries_1_io_select ? entries_1_io_ld_raw_data_uop_ctrl_fpWen :
    entries_0_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 368:26 373:23]
  wire [2:0] _GEN_1486 = entries_1_io_select ? entries_1_io_ld_raw_data_addrOffset : _GEN_734; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_1487 = entries_1_io_select ? entries_1_io_commitFire : _GEN_735; // @[UncacheBuffer.scala 368:26 374:21]
  wire  _GEN_1488 = entries_1_io_select ? entries_1_io_trigger_lqLoadAddrTriggerHitVec_0 :
    entries_0_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_1489 = entries_1_io_select ? entries_1_io_trigger_lqLoadAddrTriggerHitVec_1 :
    entries_0_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_1490 = entries_1_io_select ? entries_1_io_trigger_lqLoadAddrTriggerHitVec_2 :
    entries_0_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_1710 = enqValidVec_0 & 3'h2 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_1711 = enqValidVec_0 & 3'h2 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_1712 = enqValidVec_0 & 3'h2 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_1922 = entries_2_io_select ? entries_2_io_uncache_req_valid : _GEN_1170; // @[UncacheBuffer.scala 368:26 369:26]
  wire [35:0] _GEN_1924 = entries_2_io_select ? entries_2_io_uncache_req_bits_addr : _GEN_1172; // @[UncacheBuffer.scala 368:26 370:25]
  wire [7:0] _GEN_1926 = entries_2_io_select ? entries_2_io_uncache_req_bits_mask : _GEN_1174; // @[UncacheBuffer.scala 368:26 370:25]
  wire [4:0] _GEN_1927 = entries_2_io_select ? entries_2_io_uncache_req_bits_id : _GEN_1175; // @[UncacheBuffer.scala 368:26 370:25]
  wire  _GEN_1940 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_exceptionVec_4 : _GEN_1188; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1941 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_exceptionVec_5 : _GEN_1189; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1949 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_exceptionVec_13 : _GEN_1197; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1957 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_trigger_backendEn_1 : _GEN_1205; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1958 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_trigger_backendHit_0 : _GEN_1206; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1959 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_trigger_backendHit_1 : _GEN_1207; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1962 = entries_2_io_select ? entries_2_io_ldout_bits_uop_cf_trigger_backendHit_4 : _GEN_1210; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1990 = entries_2_io_select ? entries_2_io_ldout_bits_uop_ctrl_rfWen : _GEN_1238; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_1991 = entries_2_io_select ? entries_2_io_ldout_bits_uop_ctrl_fpWen : _GEN_1239; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2015 = entries_2_io_select ? entries_2_io_ldout_bits_uop_ctrl_replayInst : _GEN_1263; // @[UncacheBuffer.scala 368:26 372:21]
  wire [5:0] _GEN_2022 = entries_2_io_select ? entries_2_io_ldout_bits_uop_pdest : _GEN_1270; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2023 = entries_2_io_select ? entries_2_io_ldout_bits_uop_robIdx_flag : _GEN_1271; // @[UncacheBuffer.scala 368:26 372:21]
  wire [4:0] _GEN_2024 = entries_2_io_select ? entries_2_io_ldout_bits_uop_robIdx_value : _GEN_1272; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2025 = entries_2_io_select ? entries_2_io_ldout_bits_uop_lqIdx_flag : _GEN_1273; // @[UncacheBuffer.scala 368:26 372:21]
  wire [3:0] _GEN_2026 = entries_2_io_select ? entries_2_io_ldout_bits_uop_lqIdx_value : _GEN_1274; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2128 = entries_2_io_select ? entries_2_io_ldout_valid : _GEN_1376; // @[UncacheBuffer.scala 368:26 372:21]
  wire [63:0] _GEN_2129 = entries_2_io_select ? entries_2_io_ld_raw_data_lqData : _GEN_1377; // @[UncacheBuffer.scala 368:26 373:23]
  wire [6:0] _GEN_2186 = entries_2_io_select ? entries_2_io_ld_raw_data_uop_ctrl_fuOpType : _GEN_1434; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_2188 = entries_2_io_select ? entries_2_io_ld_raw_data_uop_ctrl_fpWen : _GEN_1436; // @[UncacheBuffer.scala 368:26 373:23]
  wire [2:0] _GEN_2238 = entries_2_io_select ? entries_2_io_ld_raw_data_addrOffset : _GEN_1486; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_2239 = entries_2_io_select ? entries_2_io_commitFire : _GEN_1487; // @[UncacheBuffer.scala 368:26 374:21]
  wire  _GEN_2240 = entries_2_io_select ? entries_2_io_trigger_lqLoadAddrTriggerHitVec_0 : _GEN_1488; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_2241 = entries_2_io_select ? entries_2_io_trigger_lqLoadAddrTriggerHitVec_1 : _GEN_1489; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_2242 = entries_2_io_select ? entries_2_io_trigger_lqLoadAddrTriggerHitVec_2 : _GEN_1490; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_2462 = enqValidVec_0 & 3'h3 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_2463 = enqValidVec_0 & 3'h3 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_2464 = enqValidVec_0 & 3'h3 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_2674 = entries_3_io_select ? entries_3_io_uncache_req_valid : _GEN_1922; // @[UncacheBuffer.scala 368:26 369:26]
  wire [35:0] _GEN_2676 = entries_3_io_select ? entries_3_io_uncache_req_bits_addr : _GEN_1924; // @[UncacheBuffer.scala 368:26 370:25]
  wire [7:0] _GEN_2678 = entries_3_io_select ? entries_3_io_uncache_req_bits_mask : _GEN_1926; // @[UncacheBuffer.scala 368:26 370:25]
  wire [4:0] _GEN_2679 = entries_3_io_select ? entries_3_io_uncache_req_bits_id : _GEN_1927; // @[UncacheBuffer.scala 368:26 370:25]
  wire  _GEN_2692 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_exceptionVec_4 : _GEN_1940; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2693 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_exceptionVec_5 : _GEN_1941; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2701 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_exceptionVec_13 : _GEN_1949; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2709 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_trigger_backendEn_1 : _GEN_1957; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2710 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_trigger_backendHit_0 : _GEN_1958; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2711 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_trigger_backendHit_1 : _GEN_1959; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2714 = entries_3_io_select ? entries_3_io_ldout_bits_uop_cf_trigger_backendHit_4 : _GEN_1962; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2742 = entries_3_io_select ? entries_3_io_ldout_bits_uop_ctrl_rfWen : _GEN_1990; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2743 = entries_3_io_select ? entries_3_io_ldout_bits_uop_ctrl_fpWen : _GEN_1991; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2767 = entries_3_io_select ? entries_3_io_ldout_bits_uop_ctrl_replayInst : _GEN_2015; // @[UncacheBuffer.scala 368:26 372:21]
  wire [5:0] _GEN_2774 = entries_3_io_select ? entries_3_io_ldout_bits_uop_pdest : _GEN_2022; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2775 = entries_3_io_select ? entries_3_io_ldout_bits_uop_robIdx_flag : _GEN_2023; // @[UncacheBuffer.scala 368:26 372:21]
  wire [4:0] _GEN_2776 = entries_3_io_select ? entries_3_io_ldout_bits_uop_robIdx_value : _GEN_2024; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2777 = entries_3_io_select ? entries_3_io_ldout_bits_uop_lqIdx_flag : _GEN_2025; // @[UncacheBuffer.scala 368:26 372:21]
  wire [3:0] _GEN_2778 = entries_3_io_select ? entries_3_io_ldout_bits_uop_lqIdx_value : _GEN_2026; // @[UncacheBuffer.scala 368:26 372:21]
  wire  _GEN_2880 = entries_3_io_select ? entries_3_io_ldout_valid : _GEN_2128; // @[UncacheBuffer.scala 368:26 372:21]
  wire [63:0] _GEN_2881 = entries_3_io_select ? entries_3_io_ld_raw_data_lqData : _GEN_2129; // @[UncacheBuffer.scala 368:26 373:23]
  wire [6:0] _GEN_2938 = entries_3_io_select ? entries_3_io_ld_raw_data_uop_ctrl_fuOpType : _GEN_2186; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_2940 = entries_3_io_select ? entries_3_io_ld_raw_data_uop_ctrl_fpWen : _GEN_2188; // @[UncacheBuffer.scala 368:26 373:23]
  wire [2:0] _GEN_2990 = entries_3_io_select ? entries_3_io_ld_raw_data_addrOffset : _GEN_2238; // @[UncacheBuffer.scala 368:26 373:23]
  wire  _GEN_2991 = entries_3_io_select ? entries_3_io_commitFire : _GEN_2239; // @[UncacheBuffer.scala 368:26 374:21]
  wire  _GEN_2992 = entries_3_io_select ? entries_3_io_trigger_lqLoadAddrTriggerHitVec_0 : _GEN_2240; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_2993 = entries_3_io_select ? entries_3_io_trigger_lqLoadAddrTriggerHitVec_1 : _GEN_2241; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_2994 = entries_3_io_select ? entries_3_io_trigger_lqLoadAddrTriggerHitVec_2 : _GEN_2242; // @[UncacheBuffer.scala 368:26 378:33]
  wire  _GEN_3214 = enqValidVec_0 & 3'h4 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_3215 = enqValidVec_0 & 3'h4 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_3216 = enqValidVec_0 & 3'h4 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_3966 = enqValidVec_0 & 3'h5 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_3967 = enqValidVec_0 & 3'h5 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_3968 = enqValidVec_0 & 3'h5 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_4718 = enqValidVec_0 & 3'h6 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_4719 = enqValidVec_0 & 3'h6 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_4720 = enqValidVec_0 & 3'h6 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_5470 = enqValidVec_0 & 3'h7 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_5471 = enqValidVec_0 & 3'h7 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  wire  _GEN_5472 = enqValidVec_0 & 3'h7 == enqIndexVec_0 & io_trigger_0_hitLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 287:45 356:59 359:49]
  reg  io_uncache_req_valid_REG; // @[UncacheBuffer.scala 386:34]
  reg [35:0] io_uncache_req_bits_REG_addr; // @[UncacheBuffer.scala 387:34]
  reg [7:0] io_uncache_req_bits_REG_mask; // @[UncacheBuffer.scala 387:34]
  reg [4:0] io_uncache_req_bits_REG_id; // @[UncacheBuffer.scala 387:34]
  reg  io_ldout_0_valid_REG; // @[UncacheBuffer.scala 388:34]
  reg  io_ldout_0_valid_REG_1; // @[UncacheBuffer.scala 388:59]
  reg  io_ldout_0_bits_REG_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_ctrl_rfWen; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_ctrl_fpWen; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_ctrl_replayInst; // @[UncacheBuffer.scala 389:34]
  reg [5:0] io_ldout_0_bits_REG_uop_pdest; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_robIdx_flag; // @[UncacheBuffer.scala 389:34]
  reg [4:0] io_ldout_0_bits_REG_uop_robIdx_value; // @[UncacheBuffer.scala 389:34]
  reg  io_ldout_0_bits_REG_uop_lqIdx_flag; // @[UncacheBuffer.scala 389:34]
  reg [3:0] io_ldout_0_bits_REG_uop_lqIdx_value; // @[UncacheBuffer.scala 389:34]
  reg [63:0] io_ld_raw_data_0_REG_lqData; // @[UncacheBuffer.scala 390:36]
  reg [6:0] io_ld_raw_data_0_REG_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 390:36]
  reg  io_ld_raw_data_0_REG_uop_ctrl_fpWen; // @[UncacheBuffer.scala 390:36]
  reg [2:0] io_ld_raw_data_0_REG_addrOffset; // @[UncacheBuffer.scala 390:36]
  reg  REG_0; // @[UncacheBuffer.scala 391:51]
  reg  REG_1; // @[UncacheBuffer.scala 391:51]
  reg  REG_2; // @[UncacheBuffer.scala 391:51]
  reg  io_rob_mmio_0_REG; // @[UncacheBuffer.scala 394:30]
  reg [4:0] io_rob_uop_0_REG_robIdx_value; // @[UncacheBuffer.scala 395:29]
  reg  io_rob_mmio_1_REG; // @[UncacheBuffer.scala 394:30]
  reg [4:0] io_rob_uop_1_REG_robIdx_value; // @[UncacheBuffer.scala 395:29]
  wire  _T_40 = io_ldout_0_ready & io_ldout_0_valid; // @[Decoupled.scala 50:35]
  wire  freeMaskVec_0 = entries_0_io_select & _T_40 | entries_0_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_1 = entries_1_io_select & _T_40 | entries_1_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_2 = entries_2_io_select & _T_40 | entries_2_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_3 = entries_3_io_select & _T_40 | entries_3_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_4 = entries_4_io_select & _T_40 | entries_4_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_5 = entries_5_io_select & _T_40 | entries_5_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_6 = entries_6_io_select & _T_40 | entries_6_io_flush; // @[UncacheBuffer.scala 407:47]
  wire  freeMaskVec_7 = entries_7_io_select & _T_40 | entries_7_io_flush; // @[UncacheBuffer.scala 407:47]
  wire [3:0] freeList_io_free_lo = {freeMaskVec_3,freeMaskVec_2,freeMaskVec_1,freeMaskVec_0}; // @[UncacheBuffer.scala 412:35]
  wire [3:0] freeList_io_free_hi = {freeMaskVec_7,freeMaskVec_6,freeMaskVec_5,freeMaskVec_4}; // @[UncacheBuffer.scala 412:35]
  wire  reqNeedCheck_0 = s2_enqueue_0 & ~enqValidVec_0; // @[UncacheBuffer.scala 456:21]
  wire  reqNeedCheck_1 = s2_enqueue_1 & ~enqValidVec_1; // @[UncacheBuffer.scala 456:21]
  wire  oldest_differentFlag = s2_req_0_uop_robIdx_flag ^ s2_req_1_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare = s2_req_0_uop_robIdx_value > s2_req_1_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_1 = oldest_differentFlag ^ oldest_compare; // @[CircularQueuePtr.scala 68:19]
  reg  rollbackValid; // @[UncacheBuffer.scala 460:13]
  reg  rollbackUop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 460:39]
  reg [2:0] rollbackUop_cf_ftqPtr_value; // @[UncacheBuffer.scala 460:39]
  reg [2:0] rollbackUop_cf_ftqOffset; // @[UncacheBuffer.scala 460:39]
  reg  rollbackUop_robIdx_flag; // @[UncacheBuffer.scala 460:39]
  reg [4:0] rollbackUop_robIdx_value; // @[UncacheBuffer.scala 460:39]
  reg  lastCycleRedirect_valid; // @[UncacheBuffer.scala 472:34]
  reg  lastCycleRedirect_bits_robIdx_flag; // @[UncacheBuffer.scala 472:34]
  reg [4:0] lastCycleRedirect_bits_robIdx_value; // @[UncacheBuffer.scala 472:34]
  reg  lastCycleRedirect_bits_level; // @[UncacheBuffer.scala 472:34]
  reg  lastLastCycleRedirect_valid; // @[UncacheBuffer.scala 473:38]
  reg  lastLastCycleRedirect_bits_robIdx_flag; // @[UncacheBuffer.scala 473:38]
  reg [4:0] lastLastCycleRedirect_bits_robIdx_value; // @[UncacheBuffer.scala 473:38]
  reg  lastLastCycleRedirect_bits_level; // @[UncacheBuffer.scala 473:38]
  wire [5:0] _io_rollback_valid_flushItself_T_1 = {rollbackUop_robIdx_flag,rollbackUop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _io_rollback_valid_flushItself_T_3 = _io_rollback_valid_flushItself_T_1 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  io_rollback_valid_flushItself = io_redirect_bits_level & _io_rollback_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  io_rollback_valid_differentFlag = rollbackUop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_rollback_valid_compare = rollbackUop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_rollback_valid_T = io_rollback_valid_differentFlag ^ io_rollback_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _io_rollback_valid_T_2 = io_redirect_valid & (io_rollback_valid_flushItself | _io_rollback_valid_T); // @[Rob.scala 143:20]
  wire  _io_rollback_valid_T_3 = ~_io_rollback_valid_T_2; // @[UncacheBuffer.scala 475:23]
  wire  _io_rollback_valid_T_4 = rollbackValid & _io_rollback_valid_T_3; // @[UncacheBuffer.scala 474:38]
  wire [5:0] _io_rollback_valid_flushItself_T_6 = {lastCycleRedirect_bits_robIdx_flag,
    lastCycleRedirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_rollback_valid_flushItself_T_7 = _io_rollback_valid_flushItself_T_1 == _io_rollback_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  io_rollback_valid_flushItself_1 = lastCycleRedirect_bits_level & _io_rollback_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  io_rollback_valid_differentFlag_1 = rollbackUop_robIdx_flag ^ lastCycleRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_rollback_valid_compare_1 = rollbackUop_robIdx_value > lastCycleRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_rollback_valid_T_5 = io_rollback_valid_differentFlag_1 ^ io_rollback_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _io_rollback_valid_T_7 = lastCycleRedirect_valid & (io_rollback_valid_flushItself_1 | _io_rollback_valid_T_5); // @[Rob.scala 143:20]
  wire  _io_rollback_valid_T_8 = ~_io_rollback_valid_T_7; // @[UncacheBuffer.scala 476:23]
  wire  _io_rollback_valid_T_9 = _io_rollback_valid_T_4 & _io_rollback_valid_T_8; // @[UncacheBuffer.scala 475:66]
  wire [5:0] _io_rollback_valid_flushItself_T_10 = {lastLastCycleRedirect_bits_robIdx_flag,
    lastLastCycleRedirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _io_rollback_valid_flushItself_T_11 = _io_rollback_valid_flushItself_T_1 == _io_rollback_valid_flushItself_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  io_rollback_valid_flushItself_2 = lastLastCycleRedirect_bits_level & _io_rollback_valid_flushItself_T_11; // @[Rob.scala 142:51]
  wire  io_rollback_valid_differentFlag_2 = rollbackUop_robIdx_flag ^ lastLastCycleRedirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  io_rollback_valid_compare_2 = rollbackUop_robIdx_value > lastLastCycleRedirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _io_rollback_valid_T_10 = io_rollback_valid_differentFlag_2 ^ io_rollback_valid_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _io_rollback_valid_T_12 = lastLastCycleRedirect_valid & (io_rollback_valid_flushItself_2 |
    _io_rollback_valid_T_10); // @[Rob.scala 143:20]
  wire  _io_rollback_valid_T_13 = ~_io_rollback_valid_T_12; // @[UncacheBuffer.scala 477:23]
  UncacheBufferEntry entries_0 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_redirect_valid(entries_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_0_io_redirect_bits_level),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_0_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_0_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_0_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_0_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_0_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_0_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_0_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_0_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_0_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_0_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_0_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_0_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_0_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_0_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_0_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_0_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_0_io_req_bits_paddr),
    .io_req_bits_mask(entries_0_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_0_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_0_io_ldout_ready),
    .io_ldout_valid(entries_0_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_0_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_0_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_0_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_0_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_0_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_0_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_0_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_0_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_0_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_0_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_0_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_0_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_0_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_0_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_0_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_0_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_0_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_0_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_0_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_0_io_rob_pendingld),
    .io_rob_commit(entries_0_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_0_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_0_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_0_io_uncache_req_ready),
    .io_uncache_req_valid(entries_0_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_0_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_0_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_0_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_0_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_0_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_0_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_0_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_0_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_0_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_0_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_0_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_0_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_0_io_select),
    .io_flush(entries_0_io_flush),
    .io_commitFire(entries_0_io_commitFire)
  );
  UncacheBufferEntry entries_1 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_redirect_valid(entries_1_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_1_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_1_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_1_io_redirect_bits_level),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_1_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_1_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_1_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_1_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_1_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_1_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_1_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_1_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_1_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_1_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_1_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_1_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_1_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_1_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_1_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_1_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_1_io_req_bits_paddr),
    .io_req_bits_mask(entries_1_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_1_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_1_io_ldout_ready),
    .io_ldout_valid(entries_1_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_1_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_1_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_1_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_1_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_1_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_1_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_1_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_1_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_1_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_1_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_1_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_1_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_1_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_1_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_1_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_1_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_1_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_1_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_1_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_1_io_rob_pendingld),
    .io_rob_commit(entries_1_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_1_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_1_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_1_io_uncache_req_ready),
    .io_uncache_req_valid(entries_1_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_1_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_1_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_1_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_1_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_1_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_1_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_1_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_1_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_1_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_1_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_1_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_1_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_1_io_select),
    .io_flush(entries_1_io_flush),
    .io_commitFire(entries_1_io_commitFire)
  );
  UncacheBufferEntry_2 entries_2 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_id(entries_2_io_id),
    .io_redirect_valid(entries_2_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_2_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_2_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_2_io_redirect_bits_level),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_2_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_2_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_2_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_2_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_2_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_2_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_2_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_2_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_2_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_2_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_2_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_2_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_2_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_2_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_2_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_2_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_2_io_req_bits_paddr),
    .io_req_bits_mask(entries_2_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_2_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_2_io_ldout_ready),
    .io_ldout_valid(entries_2_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_2_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_2_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_2_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_2_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_2_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_2_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_2_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_2_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_2_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_2_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_2_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_2_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_2_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_2_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_2_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_2_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_2_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_2_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_2_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_2_io_rob_pendingld),
    .io_rob_commit(entries_2_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_2_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_2_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_2_io_uncache_req_ready),
    .io_uncache_req_valid(entries_2_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_2_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_2_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_2_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_2_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_2_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_2_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_2_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_2_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_2_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_2_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_2_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_2_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_2_io_select),
    .io_flush(entries_2_io_flush),
    .io_commitFire(entries_2_io_commitFire)
  );
  UncacheBufferEntry_2 entries_3 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_id(entries_3_io_id),
    .io_redirect_valid(entries_3_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_3_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_3_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_3_io_redirect_bits_level),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_3_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_3_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_3_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_3_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_3_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_3_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_3_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_3_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_3_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_3_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_3_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_3_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_3_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_3_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_3_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_3_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_3_io_req_bits_paddr),
    .io_req_bits_mask(entries_3_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_3_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_3_io_ldout_ready),
    .io_ldout_valid(entries_3_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_3_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_3_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_3_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_3_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_3_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_3_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_3_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_3_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_3_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_3_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_3_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_3_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_3_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_3_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_3_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_3_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_3_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_3_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_3_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_3_io_rob_pendingld),
    .io_rob_commit(entries_3_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_3_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_3_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_3_io_uncache_req_ready),
    .io_uncache_req_valid(entries_3_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_3_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_3_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_3_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_3_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_3_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_3_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_3_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_3_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_3_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_3_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_3_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_3_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_3_io_select),
    .io_flush(entries_3_io_flush),
    .io_commitFire(entries_3_io_commitFire)
  );
  UncacheBufferEntry_4 entries_4 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_4_clock),
    .reset(entries_4_reset),
    .io_id(entries_4_io_id),
    .io_redirect_valid(entries_4_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_4_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_4_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_4_io_redirect_bits_level),
    .io_req_valid(entries_4_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_4_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_4_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_4_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_4_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_4_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_4_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_4_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_4_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_4_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_4_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_4_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_4_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_4_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_4_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_4_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_4_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_4_io_req_bits_paddr),
    .io_req_bits_mask(entries_4_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_4_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_4_io_ldout_ready),
    .io_ldout_valid(entries_4_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_4_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_4_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_4_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_4_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_4_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_4_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_4_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_4_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_4_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_4_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_4_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_4_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_4_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_4_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_4_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_4_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_4_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_4_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_4_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_4_io_rob_pendingld),
    .io_rob_commit(entries_4_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_4_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_4_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_4_io_uncache_req_ready),
    .io_uncache_req_valid(entries_4_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_4_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_4_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_4_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_4_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_4_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_4_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_4_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_4_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_4_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_4_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_4_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_4_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_4_io_select),
    .io_flush(entries_4_io_flush),
    .io_commitFire(entries_4_io_commitFire)
  );
  UncacheBufferEntry_4 entries_5 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_5_clock),
    .reset(entries_5_reset),
    .io_id(entries_5_io_id),
    .io_redirect_valid(entries_5_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_5_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_5_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_5_io_redirect_bits_level),
    .io_req_valid(entries_5_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_5_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_5_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_5_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_5_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_5_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_5_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_5_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_5_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_5_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_5_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_5_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_5_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_5_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_5_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_5_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_5_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_5_io_req_bits_paddr),
    .io_req_bits_mask(entries_5_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_5_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_5_io_ldout_ready),
    .io_ldout_valid(entries_5_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_5_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_5_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_5_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_5_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_5_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_5_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_5_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_5_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_5_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_5_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_5_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_5_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_5_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_5_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_5_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_5_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_5_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_5_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_5_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_5_io_rob_pendingld),
    .io_rob_commit(entries_5_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_5_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_5_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_5_io_uncache_req_ready),
    .io_uncache_req_valid(entries_5_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_5_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_5_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_5_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_5_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_5_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_5_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_5_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_5_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_5_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_5_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_5_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_5_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_5_io_select),
    .io_flush(entries_5_io_flush),
    .io_commitFire(entries_5_io_commitFire)
  );
  UncacheBufferEntry_4 entries_6 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_6_clock),
    .reset(entries_6_reset),
    .io_id(entries_6_io_id),
    .io_redirect_valid(entries_6_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_6_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_6_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_6_io_redirect_bits_level),
    .io_req_valid(entries_6_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_6_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_6_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_6_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_6_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_6_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_6_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_6_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_6_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_6_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_6_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_6_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_6_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_6_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_6_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_6_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_6_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_6_io_req_bits_paddr),
    .io_req_bits_mask(entries_6_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_6_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_6_io_ldout_ready),
    .io_ldout_valid(entries_6_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_6_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_6_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_6_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_6_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_6_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_6_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_6_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_6_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_6_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_6_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_6_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_6_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_6_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_6_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_6_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_6_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_6_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_6_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_6_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_6_io_rob_pendingld),
    .io_rob_commit(entries_6_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_6_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_6_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_6_io_uncache_req_ready),
    .io_uncache_req_valid(entries_6_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_6_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_6_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_6_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_6_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_6_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_6_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_6_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_6_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_6_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_6_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_6_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_6_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_6_io_select),
    .io_flush(entries_6_io_flush),
    .io_commitFire(entries_6_io_commitFire)
  );
  UncacheBufferEntry_4 entries_7 ( // @[UncacheBuffer.scala 244:64]
    .clock(entries_7_clock),
    .reset(entries_7_reset),
    .io_id(entries_7_io_id),
    .io_redirect_valid(entries_7_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(entries_7_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(entries_7_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(entries_7_io_redirect_bits_level),
    .io_req_valid(entries_7_io_req_valid),
    .io_req_bits_uop_cf_exceptionVec_4(entries_7_io_req_bits_uop_cf_exceptionVec_4),
    .io_req_bits_uop_cf_exceptionVec_5(entries_7_io_req_bits_uop_cf_exceptionVec_5),
    .io_req_bits_uop_cf_exceptionVec_13(entries_7_io_req_bits_uop_cf_exceptionVec_13),
    .io_req_bits_uop_cf_trigger_backendEn_1(entries_7_io_req_bits_uop_cf_trigger_backendEn_1),
    .io_req_bits_uop_cf_trigger_backendHit_0(entries_7_io_req_bits_uop_cf_trigger_backendHit_0),
    .io_req_bits_uop_cf_trigger_backendHit_1(entries_7_io_req_bits_uop_cf_trigger_backendHit_1),
    .io_req_bits_uop_cf_trigger_backendHit_4(entries_7_io_req_bits_uop_cf_trigger_backendHit_4),
    .io_req_bits_uop_ctrl_fuOpType(entries_7_io_req_bits_uop_ctrl_fuOpType),
    .io_req_bits_uop_ctrl_rfWen(entries_7_io_req_bits_uop_ctrl_rfWen),
    .io_req_bits_uop_ctrl_fpWen(entries_7_io_req_bits_uop_ctrl_fpWen),
    .io_req_bits_uop_ctrl_replayInst(entries_7_io_req_bits_uop_ctrl_replayInst),
    .io_req_bits_uop_pdest(entries_7_io_req_bits_uop_pdest),
    .io_req_bits_uop_robIdx_flag(entries_7_io_req_bits_uop_robIdx_flag),
    .io_req_bits_uop_robIdx_value(entries_7_io_req_bits_uop_robIdx_value),
    .io_req_bits_uop_lqIdx_flag(entries_7_io_req_bits_uop_lqIdx_flag),
    .io_req_bits_uop_lqIdx_value(entries_7_io_req_bits_uop_lqIdx_value),
    .io_req_bits_paddr(entries_7_io_req_bits_paddr),
    .io_req_bits_mask(entries_7_io_req_bits_mask),
    .io_req_bits_data_wen_dup_5(entries_7_io_req_bits_data_wen_dup_5),
    .io_ldout_ready(entries_7_io_ldout_ready),
    .io_ldout_valid(entries_7_io_ldout_valid),
    .io_ldout_bits_uop_cf_exceptionVec_4(entries_7_io_ldout_bits_uop_cf_exceptionVec_4),
    .io_ldout_bits_uop_cf_exceptionVec_5(entries_7_io_ldout_bits_uop_cf_exceptionVec_5),
    .io_ldout_bits_uop_cf_exceptionVec_13(entries_7_io_ldout_bits_uop_cf_exceptionVec_13),
    .io_ldout_bits_uop_cf_trigger_backendEn_1(entries_7_io_ldout_bits_uop_cf_trigger_backendEn_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_0(entries_7_io_ldout_bits_uop_cf_trigger_backendHit_0),
    .io_ldout_bits_uop_cf_trigger_backendHit_1(entries_7_io_ldout_bits_uop_cf_trigger_backendHit_1),
    .io_ldout_bits_uop_cf_trigger_backendHit_4(entries_7_io_ldout_bits_uop_cf_trigger_backendHit_4),
    .io_ldout_bits_uop_ctrl_rfWen(entries_7_io_ldout_bits_uop_ctrl_rfWen),
    .io_ldout_bits_uop_ctrl_fpWen(entries_7_io_ldout_bits_uop_ctrl_fpWen),
    .io_ldout_bits_uop_ctrl_replayInst(entries_7_io_ldout_bits_uop_ctrl_replayInst),
    .io_ldout_bits_uop_pdest(entries_7_io_ldout_bits_uop_pdest),
    .io_ldout_bits_uop_robIdx_flag(entries_7_io_ldout_bits_uop_robIdx_flag),
    .io_ldout_bits_uop_robIdx_value(entries_7_io_ldout_bits_uop_robIdx_value),
    .io_ldout_bits_uop_lqIdx_flag(entries_7_io_ldout_bits_uop_lqIdx_flag),
    .io_ldout_bits_uop_lqIdx_value(entries_7_io_ldout_bits_uop_lqIdx_value),
    .io_ld_raw_data_lqData(entries_7_io_ld_raw_data_lqData),
    .io_ld_raw_data_uop_ctrl_fuOpType(entries_7_io_ld_raw_data_uop_ctrl_fuOpType),
    .io_ld_raw_data_uop_ctrl_fpWen(entries_7_io_ld_raw_data_uop_ctrl_fpWen),
    .io_ld_raw_data_addrOffset(entries_7_io_ld_raw_data_addrOffset),
    .io_rob_pendingld(entries_7_io_rob_pendingld),
    .io_rob_commit(entries_7_io_rob_commit),
    .io_rob_pendingPtr_flag(entries_7_io_rob_pendingPtr_flag),
    .io_rob_pendingPtr_value(entries_7_io_rob_pendingPtr_value),
    .io_uncache_req_ready(entries_7_io_uncache_req_ready),
    .io_uncache_req_valid(entries_7_io_uncache_req_valid),
    .io_uncache_req_bits_addr(entries_7_io_uncache_req_bits_addr),
    .io_uncache_req_bits_mask(entries_7_io_uncache_req_bits_mask),
    .io_uncache_req_bits_id(entries_7_io_uncache_req_bits_id),
    .io_uncache_resp_ready(entries_7_io_uncache_resp_ready),
    .io_uncache_resp_valid(entries_7_io_uncache_resp_valid),
    .io_uncache_resp_bits_data(entries_7_io_uncache_resp_bits_data),
    .io_trigger_hitLoadAddrTriggerHitVec_0(entries_7_io_trigger_hitLoadAddrTriggerHitVec_0),
    .io_trigger_hitLoadAddrTriggerHitVec_1(entries_7_io_trigger_hitLoadAddrTriggerHitVec_1),
    .io_trigger_hitLoadAddrTriggerHitVec_2(entries_7_io_trigger_hitLoadAddrTriggerHitVec_2),
    .io_trigger_lqLoadAddrTriggerHitVec_0(entries_7_io_trigger_lqLoadAddrTriggerHitVec_0),
    .io_trigger_lqLoadAddrTriggerHitVec_1(entries_7_io_trigger_lqLoadAddrTriggerHitVec_1),
    .io_trigger_lqLoadAddrTriggerHitVec_2(entries_7_io_trigger_lqLoadAddrTriggerHitVec_2),
    .io_select(entries_7_io_select),
    .io_flush(entries_7_io_flush),
    .io_commitFire(entries_7_io_commitFire)
  );
  FreeList_3 freeList ( // @[UncacheBuffer.scala 250:24]
    .clock(freeList_clock),
    .reset(freeList_reset),
    .io_allocateReq_0(freeList_io_allocateReq_0),
    .io_allocateSlot_0(freeList_io_allocateSlot_0),
    .io_allocateSlot_1(freeList_io_allocateSlot_1),
    .io_canAllocate_0(freeList_io_canAllocate_0),
    .io_canAllocate_1(freeList_io_canAllocate_1),
    .io_doAllocate_0(freeList_io_doAllocate_0),
    .io_doAllocate_1(freeList_io_doAllocate_1),
    .io_free(freeList_io_free)
  );
  assign io_ldout_0_valid = io_ldout_0_valid_REG & ~io_ldout_0_valid_REG_1; // @[UncacheBuffer.scala 388:48]
  assign io_ldout_0_bits_uop_cf_exceptionVec_4 = io_ldout_0_bits_REG_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_exceptionVec_5 = io_ldout_0_bits_REG_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_exceptionVec_13 = io_ldout_0_bits_REG_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_trigger_backendEn_1 = io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_0 = io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_1 = io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_cf_trigger_backendHit_4 = io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_ctrl_rfWen = io_ldout_0_bits_REG_uop_ctrl_rfWen; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_ctrl_fpWen = io_ldout_0_bits_REG_uop_ctrl_fpWen; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_ctrl_replayInst = io_ldout_0_bits_REG_uop_ctrl_replayInst; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_pdest = io_ldout_0_bits_REG_uop_pdest; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_robIdx_flag = io_ldout_0_bits_REG_uop_robIdx_flag; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_robIdx_value = io_ldout_0_bits_REG_uop_robIdx_value; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_lqIdx_flag = io_ldout_0_bits_REG_uop_lqIdx_flag; // @[UncacheBuffer.scala 389:24]
  assign io_ldout_0_bits_uop_lqIdx_value = io_ldout_0_bits_REG_uop_lqIdx_value; // @[UncacheBuffer.scala 389:24]
  assign io_ld_raw_data_0_lqData = io_ld_raw_data_0_REG_lqData; // @[UncacheBuffer.scala 390:26]
  assign io_ld_raw_data_0_uop_ctrl_fuOpType = io_ld_raw_data_0_REG_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 390:26]
  assign io_ld_raw_data_0_uop_ctrl_fpWen = io_ld_raw_data_0_REG_uop_ctrl_fpWen; // @[UncacheBuffer.scala 390:26]
  assign io_ld_raw_data_0_addrOffset = io_ld_raw_data_0_REG_addrOffset; // @[UncacheBuffer.scala 390:26]
  assign io_rob_mmio_0 = io_rob_mmio_0_REG; // @[UncacheBuffer.scala 394:20]
  assign io_rob_mmio_1 = io_rob_mmio_1_REG; // @[UncacheBuffer.scala 394:20]
  assign io_rob_uop_0_robIdx_value = io_rob_uop_0_REG_robIdx_value; // @[UncacheBuffer.scala 395:19]
  assign io_rob_uop_1_robIdx_value = io_rob_uop_1_REG_robIdx_value; // @[UncacheBuffer.scala 395:19]
  assign io_uncache_req_valid = io_uncache_req_valid_REG; // @[UncacheBuffer.scala 386:24]
  assign io_uncache_req_bits_addr = io_uncache_req_bits_REG_addr; // @[UncacheBuffer.scala 387:24]
  assign io_uncache_req_bits_mask = io_uncache_req_bits_REG_mask; // @[UncacheBuffer.scala 387:24]
  assign io_uncache_req_bits_id = io_uncache_req_bits_REG_id; // @[UncacheBuffer.scala 387:24]
  assign io_uncache_resp_ready = 5'h7 == io_uncache_resp_bits_id | (5'h6 == io_uncache_resp_bits_id | (5'h5 ==
    io_uncache_resp_bits_id | (5'h4 == io_uncache_resp_bits_id | (5'h3 == io_uncache_resp_bits_id | (5'h2 ==
    io_uncache_resp_bits_id | (5'h1 == io_uncache_resp_bits_id | 5'h0 == io_uncache_resp_bits_id)))))); // @[UncacheBuffer.scala 381:46 382:27]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_0 = REG_0; // @[UncacheBuffer.scala 391:41]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_1 = REG_1; // @[UncacheBuffer.scala 391:41]
  assign io_trigger_0_lqLoadAddrTriggerHitVec_2 = REG_2; // @[UncacheBuffer.scala 391:41]
  assign io_rollback_valid = _io_rollback_valid_T_9 & _io_rollback_valid_T_13; // @[UncacheBuffer.scala 476:72]
  assign io_rollback_bits_robIdx_flag = rollbackUop_robIdx_flag; // @[UncacheBuffer.scala 465:30]
  assign io_rollback_bits_robIdx_value = rollbackUop_robIdx_value; // @[UncacheBuffer.scala 465:30]
  assign io_rollback_bits_ftqIdx_flag = rollbackUop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 466:30]
  assign io_rollback_bits_ftqIdx_value = rollbackUop_cf_ftqPtr_value; // @[UncacheBuffer.scala 466:30]
  assign io_rollback_bits_ftqOffset = rollbackUop_cf_ftqOffset; // @[UncacheBuffer.scala 467:30]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 1'h0; // @[UncacheBuffer.scala 352:15]
  assign entries_0_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_0_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_0_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_0_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_0_io_req_valid = enqValidVec_1 & 3'h0 == enqIndexVec_1 | enqValidVec_0 & 3'h0 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_0_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_pdest = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_paddr = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_mask = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_0_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_0_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_0_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_0_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_0_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_0_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_0_io_uncache_resp_valid = 5'h0 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_0_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_0_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_206; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_0_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_207; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_0_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h0 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_208; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 1'h1; // @[UncacheBuffer.scala 352:15]
  assign entries_1_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_1_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_1_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_1_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_1_io_req_valid = enqValidVec_1 & 3'h1 == enqIndexVec_1 | enqValidVec_0 & 3'h1 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_1_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_pdest = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_paddr = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_mask = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_1_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_1_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_1_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_1_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_1_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_1_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_1_io_uncache_resp_valid = 5'h1 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_1_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_1_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_958; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_1_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_959; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_1_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h1 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_960; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_id = 2'h2; // @[UncacheBuffer.scala 352:15]
  assign entries_2_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_2_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_2_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_2_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_2_io_req_valid = enqValidVec_1 & 3'h2 == enqIndexVec_1 | enqValidVec_0 & 3'h2 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_2_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_pdest = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_paddr = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_mask = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_2_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_2_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_2_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_2_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_2_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_2_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_2_io_uncache_resp_valid = 5'h2 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_2_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_2_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_1710; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_2_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_1711; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_2_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h2 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_1712; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_id = 2'h3; // @[UncacheBuffer.scala 352:15]
  assign entries_3_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_3_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_3_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_3_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_3_io_req_valid = enqValidVec_1 & 3'h3 == enqIndexVec_1 | enqValidVec_0 & 3'h3 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_3_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_pdest = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_paddr = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_mask = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_3_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_3_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_3_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_3_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_3_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_3_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_3_io_uncache_resp_valid = 5'h3 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_3_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_3_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_2462; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_3_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_2463; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_3_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h3 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_2464; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_4_clock = clock;
  assign entries_4_reset = reset;
  assign entries_4_io_id = 3'h4; // @[UncacheBuffer.scala 352:15]
  assign entries_4_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_4_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_4_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_4_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_4_io_req_valid = enqValidVec_1 & 3'h4 == enqIndexVec_1 | enqValidVec_0 & 3'h4 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_4_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_pdest = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_paddr = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_mask = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_4_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_4_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_4_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_4_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_4_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_4_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_4_io_uncache_resp_valid = 5'h4 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_4_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_4_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_3214; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_4_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_3215; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_4_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h4 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_3216; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_5_clock = clock;
  assign entries_5_reset = reset;
  assign entries_5_io_id = 3'h5; // @[UncacheBuffer.scala 352:15]
  assign entries_5_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_5_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_5_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_5_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_5_io_req_valid = enqValidVec_1 & 3'h5 == enqIndexVec_1 | enqValidVec_0 & 3'h5 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_5_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_pdest = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_paddr = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_mask = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_5_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_5_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_5_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_5_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_5_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_5_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_5_io_uncache_resp_valid = 5'h5 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_5_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_5_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_3966; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_5_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_3967; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_5_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h5 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_3968; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_6_clock = clock;
  assign entries_6_reset = reset;
  assign entries_6_io_id = 3'h6; // @[UncacheBuffer.scala 352:15]
  assign entries_6_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_6_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_6_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_6_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_6_io_req_valid = enqValidVec_1 & 3'h6 == enqIndexVec_1 | enqValidVec_0 & 3'h6 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_6_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_pdest = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_paddr = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_mask = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_6_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_6_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_6_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_6_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_6_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_6_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_6_io_uncache_resp_valid = 5'h6 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_6_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_6_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_4718; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_6_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_4719; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_6_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h6 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_4720; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_7_clock = clock;
  assign entries_7_reset = reset;
  assign entries_7_io_id = 3'h7; // @[UncacheBuffer.scala 352:15]
  assign entries_7_io_redirect_valid = io_redirect_valid; // @[UncacheBuffer.scala 351:21]
  assign entries_7_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 351:21]
  assign entries_7_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 351:21]
  assign entries_7_io_redirect_bits_level = io_redirect_bits_level; // @[UncacheBuffer.scala 351:21]
  assign entries_7_io_req_valid = enqValidVec_1 & 3'h7 == enqIndexVec_1 | enqValidVec_0 & 3'h7 == enqIndexVec_0; // @[UncacheBuffer.scala 356:59 357:26]
  assign entries_7_io_req_bits_uop_cf_exceptionVec_4 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_4 : s2_req_0_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_exceptionVec_5 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_5 : s2_req_0_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_exceptionVec_13 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_exceptionVec_13 : s2_req_0_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_trigger_backendEn_1 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendEn_1 : s2_req_0_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_trigger_backendHit_0 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_0 : s2_req_0_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_trigger_backendHit_1 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_1 : s2_req_0_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_cf_trigger_backendHit_4 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_cf_trigger_backendHit_4 : s2_req_0_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_ctrl_fuOpType = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fuOpType :
    s2_req_0_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_ctrl_rfWen = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_ctrl_rfWen :
    s2_req_0_uop_ctrl_rfWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_ctrl_fpWen = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_ctrl_fpWen :
    s2_req_0_uop_ctrl_fpWen; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_ctrl_replayInst = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    s2_req_1_uop_ctrl_replayInst : s2_req_0_uop_ctrl_replayInst; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_pdest = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_pdest :
    s2_req_0_uop_pdest; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_robIdx_flag = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_robIdx_flag :
    s2_req_0_uop_robIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_robIdx_value = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_robIdx_value :
    s2_req_0_uop_robIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_lqIdx_flag = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_flag :
    s2_req_0_uop_lqIdx_flag; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_uop_lqIdx_value = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_uop_lqIdx_value :
    s2_req_0_uop_lqIdx_value; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_paddr = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_paddr : s2_req_0_paddr; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_mask = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_mask : s2_req_0_mask; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_req_bits_data_wen_dup_5 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ? s2_req_1_data_wen_dup_5 :
    s2_req_0_data_wen_dup_5; // @[UncacheBuffer.scala 356:59 358:25]
  assign entries_7_io_ldout_ready = io_ldout_0_ready; // @[UncacheBuffer.scala 366:24]
  assign entries_7_io_rob_pendingld = io_rob_pendingld; // @[UncacheBuffer.scala 364:16]
  assign entries_7_io_rob_commit = io_rob_commit; // @[UncacheBuffer.scala 364:16]
  assign entries_7_io_rob_pendingPtr_flag = io_rob_pendingPtr_flag; // @[UncacheBuffer.scala 364:16]
  assign entries_7_io_rob_pendingPtr_value = io_rob_pendingPtr_value; // @[UncacheBuffer.scala 364:16]
  assign entries_7_io_uncache_req_ready = io_uncache_req_ready; // @[UncacheBuffer.scala 365:30]
  assign entries_7_io_uncache_resp_valid = 5'h7 == io_uncache_resp_bits_id & io_uncache_resp_valid; // @[UncacheBuffer.scala 381:46 382:27 273:31]
  assign entries_7_io_uncache_resp_bits_data = io_uncache_resp_bits_data; // @[UncacheBuffer.scala 381:46 382:27]
  assign entries_7_io_trigger_hitLoadAddrTriggerHitVec_0 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_0 : _GEN_5470; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_7_io_trigger_hitLoadAddrTriggerHitVec_1 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_1 : _GEN_5471; // @[UncacheBuffer.scala 356:59 359:49]
  assign entries_7_io_trigger_hitLoadAddrTriggerHitVec_2 = enqValidVec_1 & 3'h7 == enqIndexVec_1 ?
    io_trigger_1_hitLoadAddrTriggerHitVec_2 : _GEN_5472; // @[UncacheBuffer.scala 356:59 359:49]
  assign freeList_clock = clock;
  assign freeList_reset = reset;
  assign freeList_io_allocateReq_0 = s2_valid_0 & ~s2_has_exception_0 & ~s2_need_replay_0 & s2_req_0_mmio; // @[UncacheBuffer.scala 312:80]
  assign freeList_io_doAllocate_0 = s2_enqueue_0 & freeList_io_canAllocate_0; // @[UncacheBuffer.scala 329:37]
  assign freeList_io_doAllocate_1 = s2_enqueue_1 & freeList_io_canAllocate_1; // @[UncacheBuffer.scala 329:37]
  assign freeList_io_free = {freeList_io_free_hi,freeList_io_free_lo}; // @[UncacheBuffer.scala 412:35]
  always @(posedge clock) begin
    s2_req_0_uop_cf_exceptionVec_4 <= io_req_0_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_exceptionVec_5 <= io_req_0_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_exceptionVec_13 <= io_req_0_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_trigger_backendEn_1 <= io_req_0_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_trigger_backendHit_0 <= io_req_0_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_trigger_backendHit_1 <= io_req_0_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_trigger_backendHit_4 <= io_req_0_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_ftqPtr_flag <= io_req_0_bits_uop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_ftqPtr_value <= io_req_0_bits_uop_cf_ftqPtr_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_cf_ftqOffset <= io_req_0_bits_uop_cf_ftqOffset; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_ctrl_fuOpType <= io_req_0_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_ctrl_rfWen <= io_req_0_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_ctrl_fpWen <= io_req_0_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_ctrl_replayInst <= io_req_0_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_pdest <= io_req_0_bits_uop_pdest; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_robIdx_flag <= io_req_0_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_robIdx_value <= io_req_0_bits_uop_robIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_lqIdx_flag <= io_req_0_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_uop_lqIdx_value <= io_req_0_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_paddr <= io_req_0_bits_paddr; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_mask <= io_req_0_bits_mask; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_mmio <= io_req_0_bits_mmio; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_0 <= io_req_0_bits_rep_info_cause_0; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_1 <= io_req_0_bits_rep_info_cause_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_2 <= io_req_0_bits_rep_info_cause_2; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_3 <= io_req_0_bits_rep_info_cause_3; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_4 <= io_req_0_bits_rep_info_cause_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_5 <= io_req_0_bits_rep_info_cause_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_6 <= io_req_0_bits_rep_info_cause_6; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_7 <= io_req_0_bits_rep_info_cause_7; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_8 <= io_req_0_bits_rep_info_cause_8; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_rep_info_cause_9 <= io_req_0_bits_rep_info_cause_9; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_0_data_wen_dup_5 <= io_req_0_bits_data_wen_dup_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_exceptionVec_4 <= io_req_1_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_exceptionVec_5 <= io_req_1_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_exceptionVec_13 <= io_req_1_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_trigger_backendEn_1 <= io_req_1_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_trigger_backendHit_0 <= io_req_1_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_trigger_backendHit_1 <= io_req_1_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_trigger_backendHit_4 <= io_req_1_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_ftqPtr_flag <= io_req_1_bits_uop_cf_ftqPtr_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_ftqPtr_value <= io_req_1_bits_uop_cf_ftqPtr_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_cf_ftqOffset <= io_req_1_bits_uop_cf_ftqOffset; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_ctrl_fuOpType <= io_req_1_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_ctrl_rfWen <= io_req_1_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_ctrl_fpWen <= io_req_1_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_ctrl_replayInst <= io_req_1_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_pdest <= io_req_1_bits_uop_pdest; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_robIdx_flag <= io_req_1_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_robIdx_value <= io_req_1_bits_uop_robIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_lqIdx_flag <= io_req_1_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_uop_lqIdx_value <= io_req_1_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_paddr <= io_req_1_bits_paddr; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_mask <= io_req_1_bits_mask; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_mmio <= io_req_1_bits_mmio; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_0 <= io_req_1_bits_rep_info_cause_0; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_1 <= io_req_1_bits_rep_info_cause_1; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_2 <= io_req_1_bits_rep_info_cause_2; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_3 <= io_req_1_bits_rep_info_cause_3; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_4 <= io_req_1_bits_rep_info_cause_4; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_5 <= io_req_1_bits_rep_info_cause_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_6 <= io_req_1_bits_rep_info_cause_6; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_7 <= io_req_1_bits_rep_info_cause_7; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_8 <= io_req_1_bits_rep_info_cause_8; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_rep_info_cause_9 <= io_req_1_bits_rep_info_cause_9; // @[UncacheBuffer.scala 297:{23,23}]
    s2_req_1_data_wen_dup_5 <= io_req_1_bits_data_wen_dup_5; // @[UncacheBuffer.scala 297:{23,23}]
    s2_valid_REG <= io_req_0_valid; // @[UncacheBuffer.scala 298:{25,25}]
    s2_valid_REG_1_valid <= io_redirect_valid; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_1_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_1_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_1_bits_level <= io_redirect_bits_level; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_2 <= io_req_1_valid; // @[UncacheBuffer.scala 298:{25,25}]
    s2_valid_REG_3_valid <= io_redirect_valid; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_3_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_3_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 304:44]
    s2_valid_REG_3_bits_level <= io_redirect_bits_level; // @[UncacheBuffer.scala 304:44]
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_valid_REG <= entries_7_io_uncache_req_valid; // @[UncacheBuffer.scala 369:26]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_valid_REG <= entries_6_io_uncache_req_valid; // @[UncacheBuffer.scala 369:26]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_valid_REG <= entries_5_io_uncache_req_valid; // @[UncacheBuffer.scala 369:26]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_valid_REG <= entries_4_io_uncache_req_valid; // @[UncacheBuffer.scala 369:26]
    end else begin
      io_uncache_req_valid_REG <= _GEN_2674;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_addr <= entries_7_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 370:25]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_addr <= entries_6_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 370:25]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_addr <= entries_5_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 370:25]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_addr <= entries_4_io_uncache_req_bits_addr; // @[UncacheBuffer.scala 370:25]
    end else begin
      io_uncache_req_bits_REG_addr <= _GEN_2676;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_mask <= entries_7_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 370:25]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_mask <= entries_6_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 370:25]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_mask <= entries_5_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 370:25]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_mask <= entries_4_io_uncache_req_bits_mask; // @[UncacheBuffer.scala 370:25]
    end else begin
      io_uncache_req_bits_REG_mask <= _GEN_2678;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_id <= entries_7_io_uncache_req_bits_id; // @[UncacheBuffer.scala 370:25]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_id <= entries_6_io_uncache_req_bits_id; // @[UncacheBuffer.scala 370:25]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_id <= entries_5_io_uncache_req_bits_id; // @[UncacheBuffer.scala 370:25]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_uncache_req_bits_REG_id <= entries_4_io_uncache_req_bits_id; // @[UncacheBuffer.scala 370:25]
    end else begin
      io_uncache_req_bits_REG_id <= _GEN_2679;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG <= entries_7_io_ldout_valid; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG <= entries_6_io_ldout_valid; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG <= entries_5_io_ldout_valid; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG <= entries_4_io_ldout_valid; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_valid_REG <= _GEN_2880;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG_1 <= entries_7_io_commitFire; // @[UncacheBuffer.scala 374:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG_1 <= entries_6_io_commitFire; // @[UncacheBuffer.scala 374:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG_1 <= entries_5_io_commitFire; // @[UncacheBuffer.scala 374:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_valid_REG_1 <= entries_4_io_commitFire; // @[UncacheBuffer.scala 374:21]
    end else begin
      io_ldout_0_valid_REG_1 <= _GEN_2991;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_4 <= entries_7_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_4 <= entries_6_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_4 <= entries_5_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_4 <= entries_4_io_ldout_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_exceptionVec_4 <= _GEN_2692;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_5 <= entries_7_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_5 <= entries_6_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_5 <= entries_5_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_5 <= entries_4_io_ldout_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_exceptionVec_5 <= _GEN_2693;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_13 <= entries_7_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_13 <= entries_6_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_13 <= entries_5_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_exceptionVec_13 <= entries_4_io_ldout_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_exceptionVec_13 <= _GEN_2701;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 <= entries_7_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 <= entries_6_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 <= entries_5_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 <= entries_4_io_ldout_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 <= _GEN_2709;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 <= entries_7_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 <= entries_6_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 <= entries_5_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 <= entries_4_io_ldout_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 <= _GEN_2710;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 <= entries_7_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 <= entries_6_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 <= entries_5_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 <= entries_4_io_ldout_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 <= _GEN_2711;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 <= entries_7_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 <= entries_6_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 <= entries_5_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 <= entries_4_io_ldout_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 <= _GEN_2714;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_rfWen <= entries_7_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_rfWen <= entries_6_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_rfWen <= entries_5_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_rfWen <= entries_4_io_ldout_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_ctrl_rfWen <= _GEN_2742;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_fpWen <= entries_7_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_fpWen <= entries_6_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_fpWen <= entries_5_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_fpWen <= entries_4_io_ldout_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_ctrl_fpWen <= _GEN_2743;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_replayInst <= entries_7_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_replayInst <= entries_6_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_replayInst <= entries_5_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_ctrl_replayInst <= entries_4_io_ldout_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_ctrl_replayInst <= _GEN_2767;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_pdest <= entries_7_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_pdest <= entries_6_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_pdest <= entries_5_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_pdest <= entries_4_io_ldout_bits_uop_pdest; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_pdest <= _GEN_2774;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_flag <= entries_7_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_flag <= entries_6_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_flag <= entries_5_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_flag <= entries_4_io_ldout_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_robIdx_flag <= _GEN_2775;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_value <= entries_7_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_value <= entries_6_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_value <= entries_5_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_robIdx_value <= entries_4_io_ldout_bits_uop_robIdx_value; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_robIdx_value <= _GEN_2776;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_flag <= entries_7_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_flag <= entries_6_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_flag <= entries_5_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_flag <= entries_4_io_ldout_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_lqIdx_flag <= _GEN_2777;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_value <= entries_7_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_value <= entries_6_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_value <= entries_5_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 372:21]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ldout_0_bits_REG_uop_lqIdx_value <= entries_4_io_ldout_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 372:21]
    end else begin
      io_ldout_0_bits_REG_uop_lqIdx_value <= _GEN_2778;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_lqData <= entries_7_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 373:23]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_lqData <= entries_6_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 373:23]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_lqData <= entries_5_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 373:23]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_lqData <= entries_4_io_ld_raw_data_lqData; // @[UncacheBuffer.scala 373:23]
    end else begin
      io_ld_raw_data_0_REG_lqData <= _GEN_2881;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fuOpType <= entries_7_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 373:23]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fuOpType <= entries_6_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 373:23]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fuOpType <= entries_5_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 373:23]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fuOpType <= entries_4_io_ld_raw_data_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 373:23]
    end else begin
      io_ld_raw_data_0_REG_uop_ctrl_fuOpType <= _GEN_2938;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fpWen <= entries_7_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 373:23]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fpWen <= entries_6_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 373:23]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fpWen <= entries_5_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 373:23]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_uop_ctrl_fpWen <= entries_4_io_ld_raw_data_uop_ctrl_fpWen; // @[UncacheBuffer.scala 373:23]
    end else begin
      io_ld_raw_data_0_REG_uop_ctrl_fpWen <= _GEN_2940;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_addrOffset <= entries_7_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 373:23]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_addrOffset <= entries_6_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 373:23]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_addrOffset <= entries_5_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 373:23]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      io_ld_raw_data_0_REG_addrOffset <= entries_4_io_ld_raw_data_addrOffset; // @[UncacheBuffer.scala 373:23]
    end else begin
      io_ld_raw_data_0_REG_addrOffset <= _GEN_2990;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_0 <= entries_7_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 378:33]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_0 <= entries_6_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 378:33]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_0 <= entries_5_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 378:33]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_0 <= entries_4_io_trigger_lqLoadAddrTriggerHitVec_0; // @[UncacheBuffer.scala 378:33]
    end else begin
      REG_0 <= _GEN_2992;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_1 <= entries_7_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 378:33]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_1 <= entries_6_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 378:33]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_1 <= entries_5_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 378:33]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_1 <= entries_4_io_trigger_lqLoadAddrTriggerHitVec_1; // @[UncacheBuffer.scala 378:33]
    end else begin
      REG_1 <= _GEN_2993;
    end
    if (entries_7_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_2 <= entries_7_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 378:33]
    end else if (entries_6_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_2 <= entries_6_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 378:33]
    end else if (entries_5_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_2 <= entries_5_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 378:33]
    end else if (entries_4_io_select) begin // @[UncacheBuffer.scala 368:26]
      REG_2 <= entries_4_io_trigger_lqLoadAddrTriggerHitVec_2; // @[UncacheBuffer.scala 378:33]
    end else begin
      REG_2 <= _GEN_2994;
    end
    io_rob_mmio_0_REG <= io_req_0_valid & io_req_0_bits_mmio; // @[UncacheBuffer.scala 394:43]
    io_rob_uop_0_REG_robIdx_value <= io_req_0_bits_uop_robIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    io_rob_mmio_1_REG <= io_req_1_valid & io_req_1_bits_mmio; // @[UncacheBuffer.scala 394:43]
    io_rob_uop_1_REG_robIdx_value <= io_req_1_bits_uop_robIdx_value; // @[UncacheBuffer.scala 297:{23,23}]
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackValid <= reqNeedCheck_1;
      end else begin
        rollbackValid <= reqNeedCheck_0;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackValid <= reqNeedCheck_0;
    end else begin
      rollbackValid <= reqNeedCheck_1;
    end
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackUop_cf_ftqPtr_flag <= s2_req_1_uop_cf_ftqPtr_flag;
      end else begin
        rollbackUop_cf_ftqPtr_flag <= s2_req_0_uop_cf_ftqPtr_flag;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackUop_cf_ftqPtr_flag <= s2_req_0_uop_cf_ftqPtr_flag;
    end else begin
      rollbackUop_cf_ftqPtr_flag <= s2_req_1_uop_cf_ftqPtr_flag;
    end
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackUop_cf_ftqPtr_value <= s2_req_1_uop_cf_ftqPtr_value;
      end else begin
        rollbackUop_cf_ftqPtr_value <= s2_req_0_uop_cf_ftqPtr_value;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackUop_cf_ftqPtr_value <= s2_req_0_uop_cf_ftqPtr_value;
    end else begin
      rollbackUop_cf_ftqPtr_value <= s2_req_1_uop_cf_ftqPtr_value;
    end
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackUop_cf_ftqOffset <= s2_req_1_uop_cf_ftqOffset;
      end else begin
        rollbackUop_cf_ftqOffset <= s2_req_0_uop_cf_ftqOffset;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackUop_cf_ftqOffset <= s2_req_0_uop_cf_ftqOffset;
    end else begin
      rollbackUop_cf_ftqOffset <= s2_req_1_uop_cf_ftqOffset;
    end
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackUop_robIdx_flag <= s2_req_1_uop_robIdx_flag;
      end else begin
        rollbackUop_robIdx_flag <= s2_req_0_uop_robIdx_flag;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackUop_robIdx_flag <= s2_req_0_uop_robIdx_flag;
    end else begin
      rollbackUop_robIdx_flag <= s2_req_1_uop_robIdx_flag;
    end
    if (reqNeedCheck_0 & reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:23]
      if (_oldest_T_1) begin // @[UncacheBuffer.scala 446:49]
        rollbackUop_robIdx_value <= s2_req_1_uop_robIdx_value;
      end else begin
        rollbackUop_robIdx_value <= s2_req_0_uop_robIdx_value;
      end
    end else if (reqNeedCheck_0 & ~reqNeedCheck_1) begin // @[UncacheBuffer.scala 446:111]
      rollbackUop_robIdx_value <= s2_req_0_uop_robIdx_value;
    end else begin
      rollbackUop_robIdx_value <= s2_req_1_uop_robIdx_value;
    end
    lastCycleRedirect_valid <= io_redirect_valid; // @[UncacheBuffer.scala 472:34]
    lastCycleRedirect_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[UncacheBuffer.scala 472:34]
    lastCycleRedirect_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[UncacheBuffer.scala 472:34]
    lastCycleRedirect_bits_level <= io_redirect_bits_level; // @[UncacheBuffer.scala 472:34]
    lastLastCycleRedirect_valid <= lastCycleRedirect_valid; // @[UncacheBuffer.scala 473:38]
    lastLastCycleRedirect_bits_robIdx_flag <= lastCycleRedirect_bits_robIdx_flag; // @[UncacheBuffer.scala 473:38]
    lastLastCycleRedirect_bits_robIdx_value <= lastCycleRedirect_bits_robIdx_value; // @[UncacheBuffer.scala 473:38]
    lastLastCycleRedirect_bits_level <= lastCycleRedirect_bits_level; // @[UncacheBuffer.scala 473:38]
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
  s2_req_0_uop_cf_exceptionVec_4 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s2_req_0_uop_cf_exceptionVec_5 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s2_req_0_uop_cf_exceptionVec_13 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s2_req_0_uop_cf_trigger_backendEn_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s2_req_0_uop_cf_trigger_backendHit_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s2_req_0_uop_cf_trigger_backendHit_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_req_0_uop_cf_trigger_backendHit_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_req_0_uop_cf_ftqPtr_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_req_0_uop_cf_ftqPtr_value = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  s2_req_0_uop_cf_ftqOffset = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  s2_req_0_uop_ctrl_fuOpType = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  s2_req_0_uop_ctrl_rfWen = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_req_0_uop_ctrl_fpWen = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_req_0_uop_ctrl_replayInst = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_req_0_uop_pdest = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  s2_req_0_uop_robIdx_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s2_req_0_uop_robIdx_value = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  s2_req_0_uop_lqIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s2_req_0_uop_lqIdx_value = _RAND_18[3:0];
  _RAND_19 = {2{`RANDOM}};
  s2_req_0_paddr = _RAND_19[35:0];
  _RAND_20 = {1{`RANDOM}};
  s2_req_0_mask = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  s2_req_0_mmio = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_3 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_6 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_8 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s2_req_0_rep_info_cause_9 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s2_req_0_data_wen_dup_5 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_4 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_5 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_13 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s2_req_1_uop_cf_trigger_backendEn_1 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s2_req_1_uop_cf_trigger_backendHit_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s2_req_1_uop_cf_trigger_backendHit_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s2_req_1_uop_cf_trigger_backendHit_4 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s2_req_1_uop_cf_ftqPtr_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s2_req_1_uop_cf_ftqPtr_value = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  s2_req_1_uop_cf_ftqOffset = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  s2_req_1_uop_ctrl_fuOpType = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  s2_req_1_uop_ctrl_rfWen = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s2_req_1_uop_ctrl_fpWen = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s2_req_1_uop_ctrl_replayInst = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s2_req_1_uop_pdest = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  s2_req_1_uop_robIdx_flag = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s2_req_1_uop_robIdx_value = _RAND_49[4:0];
  _RAND_50 = {1{`RANDOM}};
  s2_req_1_uop_lqIdx_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s2_req_1_uop_lqIdx_value = _RAND_51[3:0];
  _RAND_52 = {2{`RANDOM}};
  s2_req_1_paddr = _RAND_52[35:0];
  _RAND_53 = {1{`RANDOM}};
  s2_req_1_mask = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  s2_req_1_mmio = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_2 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_3 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_4 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_5 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_6 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_7 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_8 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s2_req_1_rep_info_cause_9 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s2_req_1_data_wen_dup_5 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s2_valid_REG = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s2_valid_REG_1_valid = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  s2_valid_REG_1_bits_robIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s2_valid_REG_1_bits_robIdx_value = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  s2_valid_REG_1_bits_level = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s2_valid_REG_2 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  s2_valid_REG_3_valid = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s2_valid_REG_3_bits_robIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  s2_valid_REG_3_bits_robIdx_value = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  s2_valid_REG_3_bits_level = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_uncache_req_valid_REG = _RAND_76[0:0];
  _RAND_77 = {2{`RANDOM}};
  io_uncache_req_bits_REG_addr = _RAND_77[35:0];
  _RAND_78 = {1{`RANDOM}};
  io_uncache_req_bits_REG_mask = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  io_uncache_req_bits_REG_id = _RAND_79[4:0];
  _RAND_80 = {1{`RANDOM}};
  io_ldout_0_valid_REG = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  io_ldout_0_valid_REG_1 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_exceptionVec_4 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_exceptionVec_5 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_exceptionVec_13 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_trigger_backendEn_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_0 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_1 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_cf_trigger_backendHit_4 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_ctrl_rfWen = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_ctrl_fpWen = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_ctrl_replayInst = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_pdest = _RAND_92[5:0];
  _RAND_93 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_robIdx_flag = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_robIdx_value = _RAND_94[4:0];
  _RAND_95 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_lqIdx_flag = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  io_ldout_0_bits_REG_uop_lqIdx_value = _RAND_96[3:0];
  _RAND_97 = {2{`RANDOM}};
  io_ld_raw_data_0_REG_lqData = _RAND_97[63:0];
  _RAND_98 = {1{`RANDOM}};
  io_ld_raw_data_0_REG_uop_ctrl_fuOpType = _RAND_98[6:0];
  _RAND_99 = {1{`RANDOM}};
  io_ld_raw_data_0_REG_uop_ctrl_fpWen = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  io_ld_raw_data_0_REG_addrOffset = _RAND_100[2:0];
  _RAND_101 = {1{`RANDOM}};
  REG_0 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  REG_1 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  REG_2 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  io_rob_mmio_0_REG = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  io_rob_uop_0_REG_robIdx_value = _RAND_105[4:0];
  _RAND_106 = {1{`RANDOM}};
  io_rob_mmio_1_REG = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  io_rob_uop_1_REG_robIdx_value = _RAND_107[4:0];
  _RAND_108 = {1{`RANDOM}};
  rollbackValid = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  rollbackUop_cf_ftqPtr_flag = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  rollbackUop_cf_ftqPtr_value = _RAND_110[2:0];
  _RAND_111 = {1{`RANDOM}};
  rollbackUop_cf_ftqOffset = _RAND_111[2:0];
  _RAND_112 = {1{`RANDOM}};
  rollbackUop_robIdx_flag = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  rollbackUop_robIdx_value = _RAND_113[4:0];
  _RAND_114 = {1{`RANDOM}};
  lastCycleRedirect_valid = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  lastCycleRedirect_bits_robIdx_flag = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  lastCycleRedirect_bits_robIdx_value = _RAND_116[4:0];
  _RAND_117 = {1{`RANDOM}};
  lastCycleRedirect_bits_level = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  lastLastCycleRedirect_valid = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  lastLastCycleRedirect_bits_robIdx_flag = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  lastLastCycleRedirect_bits_robIdx_value = _RAND_120[4:0];
  _RAND_121 = {1{`RANDOM}};
  lastLastCycleRedirect_bits_level = _RAND_121[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

