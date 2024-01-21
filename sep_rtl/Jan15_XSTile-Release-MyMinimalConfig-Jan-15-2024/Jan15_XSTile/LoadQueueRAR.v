module LoadQueueRAR(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_query_0_req_ready,
  input         io_query_0_req_valid,
  input         io_query_0_req_bits_uop_robIdx_flag,
  input  [4:0]  io_query_0_req_bits_uop_robIdx_value,
  input         io_query_0_req_bits_uop_lqIdx_flag,
  input  [3:0]  io_query_0_req_bits_uop_lqIdx_value,
  input  [35:0] io_query_0_req_bits_paddr,
  input         io_query_0_req_bits_data_valid,
  output        io_query_0_resp_valid,
  output        io_query_0_resp_bits_rep_frm_fetch,
  input         io_query_0_revoke,
  output        io_query_1_req_ready,
  input         io_query_1_req_valid,
  input         io_query_1_req_bits_uop_robIdx_flag,
  input  [4:0]  io_query_1_req_bits_uop_robIdx_value,
  input         io_query_1_req_bits_uop_lqIdx_flag,
  input  [3:0]  io_query_1_req_bits_uop_lqIdx_value,
  input  [35:0] io_query_1_req_bits_paddr,
  input         io_query_1_req_bits_data_valid,
  output        io_query_1_resp_valid,
  output        io_query_1_resp_bits_rep_frm_fetch,
  input         io_query_1_revoke,
  input         io_release_valid,
  input  [35:0] io_release_bits_paddr,
  input         io_ldWbPtr_flag,
  input  [3:0]  io_ldWbPtr_value,
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
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
`endif // RANDOMIZE_REG_INIT
  wire  paddrModule_clock; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_wen_0; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_wen_1; // @[LoadQueueRAR.scala 64:27]
  wire [3:0] paddrModule_io_waddr_0; // @[LoadQueueRAR.scala 64:27]
  wire [3:0] paddrModule_io_waddr_1; // @[LoadQueueRAR.scala 64:27]
  wire [35:0] paddrModule_io_wdata_0; // @[LoadQueueRAR.scala 64:27]
  wire [35:0] paddrModule_io_wdata_1; // @[LoadQueueRAR.scala 64:27]
  wire [35:0] paddrModule_io_releaseMdata_1; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_0; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_1; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_2; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_3; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_4; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_5; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_6; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_7; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_8; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_9; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_10; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_11; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_12; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_13; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_14; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseMmask_1_15; // @[LoadQueueRAR.scala 64:27]
  wire [35:0] paddrModule_io_releaseViolationMdata_0; // @[LoadQueueRAR.scala 64:27]
  wire [35:0] paddrModule_io_releaseViolationMdata_1; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_0; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_1; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_2; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_3; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_4; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_5; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_6; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_7; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_8; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_9; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_10; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_11; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_12; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_13; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_14; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_0_15; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_0; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_1; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_2; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_3; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_4; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_5; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_6; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_7; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_8; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_9; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_10; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_11; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_12; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_13; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_14; // @[LoadQueueRAR.scala 64:27]
  wire  paddrModule_io_releaseViolationMmask_1_15; // @[LoadQueueRAR.scala 64:27]
  wire  freeList_clock; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_reset; // @[LoadQueueRAR.scala 80:24]
  wire [3:0] freeList_io_allocateSlot_0; // @[LoadQueueRAR.scala 80:24]
  wire [3:0] freeList_io_allocateSlot_1; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_io_canAllocate_0; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_io_canAllocate_1; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_io_doAllocate_0; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_io_doAllocate_1; // @[LoadQueueRAR.scala 80:24]
  wire [15:0] freeList_io_free; // @[LoadQueueRAR.scala 80:24]
  wire  freeList_io_empty; // @[LoadQueueRAR.scala 80:24]
  reg  allocated_0; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_1; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_2; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_3; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_4; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_5; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_6; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_7; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_8; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_9; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_10; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_11; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_12; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_13; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_14; // @[LoadQueueRAR.scala 62:26]
  reg  allocated_15; // @[LoadQueueRAR.scala 62:26]
  reg  uop_0_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_0_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_0_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_0_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_1_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_1_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_1_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_1_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_2_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_2_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_2_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_2_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_3_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_3_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_3_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_3_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_4_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_4_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_4_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_4_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_5_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_5_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_5_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_5_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_6_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_6_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_6_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_6_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_7_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_7_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_7_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_7_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_8_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_8_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_8_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_8_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_9_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_9_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_9_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_9_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_10_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_10_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_10_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_10_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_11_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_11_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_11_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_11_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_12_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_12_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_12_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_12_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_13_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_13_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_13_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_13_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_14_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_14_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_14_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_14_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_15_robIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [4:0] uop_15_robIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  uop_15_lqIdx_flag; // @[LoadQueueRAR.scala 63:16]
  reg [3:0] uop_15_lqIdx_value; // @[LoadQueueRAR.scala 63:16]
  reg  released_0; // @[LoadQueueRAR.scala 74:25]
  reg  released_1; // @[LoadQueueRAR.scala 74:25]
  reg  released_2; // @[LoadQueueRAR.scala 74:25]
  reg  released_3; // @[LoadQueueRAR.scala 74:25]
  reg  released_4; // @[LoadQueueRAR.scala 74:25]
  reg  released_5; // @[LoadQueueRAR.scala 74:25]
  reg  released_6; // @[LoadQueueRAR.scala 74:25]
  reg  released_7; // @[LoadQueueRAR.scala 74:25]
  reg  released_8; // @[LoadQueueRAR.scala 74:25]
  reg  released_9; // @[LoadQueueRAR.scala 74:25]
  reg  released_10; // @[LoadQueueRAR.scala 74:25]
  reg  released_11; // @[LoadQueueRAR.scala 74:25]
  reg  released_12; // @[LoadQueueRAR.scala 74:25]
  reg  released_13; // @[LoadQueueRAR.scala 74:25]
  reg  released_14; // @[LoadQueueRAR.scala 74:25]
  reg  released_15; // @[LoadQueueRAR.scala 74:25]
  reg  release2Cycle_valid; // @[LoadQueueRAR.scala 93:30]
  reg [35:0] release2Cycle_bits_paddr; // @[LoadQueueRAR.scala 93:30]
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
  wire  hasNotWritebackedLoad_differentFlag = io_query_0_req_bits_uop_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  hasNotWritebackedLoad_compare = io_query_0_req_bits_uop_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  hasNotWritebackedLoad_0 = hasNotWritebackedLoad_differentFlag ^ hasNotWritebackedLoad_compare; // @[CircularQueuePtr.scala 68:19]
  wire  hasNotWritebackedLoad_differentFlag_1 = io_query_1_req_bits_uop_lqIdx_flag ^ io_ldWbPtr_flag; // @[CircularQueuePtr.scala 66:35]
  wire  hasNotWritebackedLoad_compare_1 = io_query_1_req_bits_uop_lqIdx_value > io_ldWbPtr_value; // @[CircularQueuePtr.scala 67:30]
  wire  hasNotWritebackedLoad_1 = hasNotWritebackedLoad_differentFlag_1 ^ hasNotWritebackedLoad_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  needEnqueue_0 = io_query_0_req_valid & hasNotWritebackedLoad_0 & ~cancelEnqueue_0; // @[LoadQueueRAR.scala 102:111]
  wire  needEnqueue_1 = io_query_1_req_valid & hasNotWritebackedLoad_1 & ~cancelEnqueue_1; // @[LoadQueueRAR.scala 102:111]
  wire  acceptedVec_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAR.scala 122:26]
  wire [3:0] _T_1 = freeList_io_allocateSlot_0;
  wire  _GEN_0 = 4'h0 == _T_1 | allocated_0; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_1 = 4'h1 == _T_1 | allocated_1; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_2 = 4'h2 == _T_1 | allocated_2; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_3 = 4'h3 == _T_1 | allocated_3; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_4 = 4'h4 == _T_1 | allocated_4; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_5 = 4'h5 == _T_1 | allocated_5; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_6 = 4'h6 == _T_1 | allocated_6; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_7 = 4'h7 == _T_1 | allocated_7; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_8 = 4'h8 == _T_1 | allocated_8; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_9 = 4'h9 == _T_1 | allocated_9; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_10 = 4'ha == _T_1 | allocated_10; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_11 = 4'hb == _T_1 | allocated_11; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_12 = 4'hc == _T_1 | allocated_12; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_13 = 4'hd == _T_1 | allocated_13; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_14 = 4'he == _T_1 | allocated_14; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_15 = 4'hf == _T_1 | allocated_15; // @[LoadQueueRAR.scala 131:{27,27} 62:26]
  wire  _GEN_1456 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_0_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1457 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_1_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1458 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_2_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1459 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_3_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1460 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_4_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1461 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_5_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1462 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_6_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1463 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_7_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1464 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_8_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1465 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_9_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1466 = 4'ha == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_10_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1467 = 4'hb == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_11_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1468 = 4'hc == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_12_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1469 = 4'hd == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_13_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1470 = 4'he == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_14_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1471 = 4'hf == _T_1 ? io_query_0_req_bits_uop_robIdx_flag : uop_15_robIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1472 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_0_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1473 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_1_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1474 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_2_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1475 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_3_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1476 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_4_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1477 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_5_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1478 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_6_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1479 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_7_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1480 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_8_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1481 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_9_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1482 = 4'ha == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_10_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1483 = 4'hb == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_11_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1484 = 4'hc == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_12_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1485 = 4'hd == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_13_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1486 = 4'he == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_14_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [4:0] _GEN_1487 = 4'hf == _T_1 ? io_query_0_req_bits_uop_robIdx_value : uop_15_robIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1488 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_0_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1489 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_1_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1490 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_2_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1491 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_3_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1492 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_4_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1493 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_5_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1494 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_6_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1495 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_7_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1496 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_8_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1497 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_9_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1498 = 4'ha == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_10_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1499 = 4'hb == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_11_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1500 = 4'hc == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_12_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1501 = 4'hd == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_13_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1502 = 4'he == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_14_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _GEN_1503 = 4'hf == _T_1 ? io_query_0_req_bits_uop_lqIdx_flag : uop_15_lqIdx_flag; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1504 = 4'h0 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_0_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1505 = 4'h1 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_1_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1506 = 4'h2 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_2_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1507 = 4'h3 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_3_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1508 = 4'h4 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_4_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1509 = 4'h5 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_5_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1510 = 4'h6 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_6_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1511 = 4'h7 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_7_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1512 = 4'h8 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_8_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1513 = 4'h9 == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_9_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1514 = 4'ha == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_10_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1515 = 4'hb == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_11_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1516 = 4'hc == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_12_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1517 = 4'hd == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_13_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1518 = 4'he == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_14_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire [3:0] _GEN_1519 = 4'hf == _T_1 ? io_query_0_req_bits_uop_lqIdx_value : uop_15_lqIdx_value; // @[LoadQueueRAR.scala 139:{21,21} 63:16]
  wire  _released_T_2 = io_query_0_req_bits_paddr[35:6] == release2Cycle_bits_paddr[35:6]; // @[LoadQueueRAR.scala 143:55]
  wire  _released_T_3 = release2Cycle_valid & _released_T_2; // @[LoadQueueRAR.scala 142:30]
  wire  _released_T_6 = io_query_0_req_bits_paddr[35:6] == io_release_bits_paddr[35:6]; // @[LoadQueueRAR.scala 145:55]
  wire  _released_T_7 = io_release_valid & _released_T_6; // @[LoadQueueRAR.scala 144:29]
  wire  _released_T_8 = _released_T_3 | _released_T_7; // @[LoadQueueRAR.scala 143:115]
  wire  _released_T_9 = io_query_0_req_bits_data_valid & _released_T_8; // @[LoadQueueRAR.scala 141:29]
  wire  _GEN_1744 = 4'h0 == _T_1 ? _released_T_9 : released_0; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1745 = 4'h1 == _T_1 ? _released_T_9 : released_1; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1746 = 4'h2 == _T_1 ? _released_T_9 : released_2; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1747 = 4'h3 == _T_1 ? _released_T_9 : released_3; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1748 = 4'h4 == _T_1 ? _released_T_9 : released_4; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1749 = 4'h5 == _T_1 ? _released_T_9 : released_5; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1750 = 4'h6 == _T_1 ? _released_T_9 : released_6; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1751 = 4'h7 == _T_1 ? _released_T_9 : released_7; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1752 = 4'h8 == _T_1 ? _released_T_9 : released_8; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1753 = 4'h9 == _T_1 ? _released_T_9 : released_9; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1754 = 4'ha == _T_1 ? _released_T_9 : released_10; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1755 = 4'hb == _T_1 ? _released_T_9 : released_11; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1756 = 4'hc == _T_1 ? _released_T_9 : released_12; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1757 = 4'hd == _T_1 ? _released_T_9 : released_13; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1758 = 4'he == _T_1 ? _released_T_9 : released_14; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1759 = 4'hf == _T_1 ? _released_T_9 : released_15; // @[LoadQueueRAR.scala 140:{26,26} 74:25]
  wire  _GEN_1761 = acceptedVec_0 ? _GEN_0 : allocated_0; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1762 = acceptedVec_0 ? _GEN_1 : allocated_1; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1763 = acceptedVec_0 ? _GEN_2 : allocated_2; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1764 = acceptedVec_0 ? _GEN_3 : allocated_3; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1765 = acceptedVec_0 ? _GEN_4 : allocated_4; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1766 = acceptedVec_0 ? _GEN_5 : allocated_5; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1767 = acceptedVec_0 ? _GEN_6 : allocated_6; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1768 = acceptedVec_0 ? _GEN_7 : allocated_7; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1769 = acceptedVec_0 ? _GEN_8 : allocated_8; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1770 = acceptedVec_0 ? _GEN_9 : allocated_9; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1771 = acceptedVec_0 ? _GEN_10 : allocated_10; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1772 = acceptedVec_0 ? _GEN_11 : allocated_11; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1773 = acceptedVec_0 ? _GEN_12 : allocated_12; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1774 = acceptedVec_0 ? _GEN_13 : allocated_13; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1775 = acceptedVec_0 ? _GEN_14 : allocated_14; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_1776 = acceptedVec_0 ? _GEN_15 : allocated_15; // @[LoadQueueRAR.scala 122:40 62:26]
  wire  _GEN_3219 = acceptedVec_0 ? _GEN_1456 : uop_0_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3220 = acceptedVec_0 ? _GEN_1457 : uop_1_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3221 = acceptedVec_0 ? _GEN_1458 : uop_2_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3222 = acceptedVec_0 ? _GEN_1459 : uop_3_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3223 = acceptedVec_0 ? _GEN_1460 : uop_4_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3224 = acceptedVec_0 ? _GEN_1461 : uop_5_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3225 = acceptedVec_0 ? _GEN_1462 : uop_6_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3226 = acceptedVec_0 ? _GEN_1463 : uop_7_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3227 = acceptedVec_0 ? _GEN_1464 : uop_8_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3228 = acceptedVec_0 ? _GEN_1465 : uop_9_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3229 = acceptedVec_0 ? _GEN_1466 : uop_10_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3230 = acceptedVec_0 ? _GEN_1467 : uop_11_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3231 = acceptedVec_0 ? _GEN_1468 : uop_12_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3232 = acceptedVec_0 ? _GEN_1469 : uop_13_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3233 = acceptedVec_0 ? _GEN_1470 : uop_14_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3234 = acceptedVec_0 ? _GEN_1471 : uop_15_robIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3235 = acceptedVec_0 ? _GEN_1472 : uop_0_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3236 = acceptedVec_0 ? _GEN_1473 : uop_1_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3237 = acceptedVec_0 ? _GEN_1474 : uop_2_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3238 = acceptedVec_0 ? _GEN_1475 : uop_3_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3239 = acceptedVec_0 ? _GEN_1476 : uop_4_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3240 = acceptedVec_0 ? _GEN_1477 : uop_5_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3241 = acceptedVec_0 ? _GEN_1478 : uop_6_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3242 = acceptedVec_0 ? _GEN_1479 : uop_7_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3243 = acceptedVec_0 ? _GEN_1480 : uop_8_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3244 = acceptedVec_0 ? _GEN_1481 : uop_9_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3245 = acceptedVec_0 ? _GEN_1482 : uop_10_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3246 = acceptedVec_0 ? _GEN_1483 : uop_11_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3247 = acceptedVec_0 ? _GEN_1484 : uop_12_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3248 = acceptedVec_0 ? _GEN_1485 : uop_13_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3249 = acceptedVec_0 ? _GEN_1486 : uop_14_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [4:0] _GEN_3250 = acceptedVec_0 ? _GEN_1487 : uop_15_robIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3251 = acceptedVec_0 ? _GEN_1488 : uop_0_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3252 = acceptedVec_0 ? _GEN_1489 : uop_1_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3253 = acceptedVec_0 ? _GEN_1490 : uop_2_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3254 = acceptedVec_0 ? _GEN_1491 : uop_3_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3255 = acceptedVec_0 ? _GEN_1492 : uop_4_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3256 = acceptedVec_0 ? _GEN_1493 : uop_5_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3257 = acceptedVec_0 ? _GEN_1494 : uop_6_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3258 = acceptedVec_0 ? _GEN_1495 : uop_7_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3259 = acceptedVec_0 ? _GEN_1496 : uop_8_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3260 = acceptedVec_0 ? _GEN_1497 : uop_9_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3261 = acceptedVec_0 ? _GEN_1498 : uop_10_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3262 = acceptedVec_0 ? _GEN_1499 : uop_11_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3263 = acceptedVec_0 ? _GEN_1500 : uop_12_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3264 = acceptedVec_0 ? _GEN_1501 : uop_13_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3265 = acceptedVec_0 ? _GEN_1502 : uop_14_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3266 = acceptedVec_0 ? _GEN_1503 : uop_15_lqIdx_flag; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3267 = acceptedVec_0 ? _GEN_1504 : uop_0_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3268 = acceptedVec_0 ? _GEN_1505 : uop_1_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3269 = acceptedVec_0 ? _GEN_1506 : uop_2_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3270 = acceptedVec_0 ? _GEN_1507 : uop_3_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3271 = acceptedVec_0 ? _GEN_1508 : uop_4_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3272 = acceptedVec_0 ? _GEN_1509 : uop_5_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3273 = acceptedVec_0 ? _GEN_1510 : uop_6_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3274 = acceptedVec_0 ? _GEN_1511 : uop_7_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3275 = acceptedVec_0 ? _GEN_1512 : uop_8_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3276 = acceptedVec_0 ? _GEN_1513 : uop_9_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3277 = acceptedVec_0 ? _GEN_1514 : uop_10_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3278 = acceptedVec_0 ? _GEN_1515 : uop_11_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3279 = acceptedVec_0 ? _GEN_1516 : uop_12_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3280 = acceptedVec_0 ? _GEN_1517 : uop_13_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3281 = acceptedVec_0 ? _GEN_1518 : uop_14_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire [3:0] _GEN_3282 = acceptedVec_0 ? _GEN_1519 : uop_15_lqIdx_value; // @[LoadQueueRAR.scala 122:40 63:16]
  wire  _GEN_3507 = acceptedVec_0 ? _GEN_1744 : released_0; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3508 = acceptedVec_0 ? _GEN_1745 : released_1; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3509 = acceptedVec_0 ? _GEN_1746 : released_2; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3510 = acceptedVec_0 ? _GEN_1747 : released_3; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3511 = acceptedVec_0 ? _GEN_1748 : released_4; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3512 = acceptedVec_0 ? _GEN_1749 : released_5; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3513 = acceptedVec_0 ? _GEN_1750 : released_6; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3514 = acceptedVec_0 ? _GEN_1751 : released_7; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3515 = acceptedVec_0 ? _GEN_1752 : released_8; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3516 = acceptedVec_0 ? _GEN_1753 : released_9; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3517 = acceptedVec_0 ? _GEN_1754 : released_10; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3518 = acceptedVec_0 ? _GEN_1755 : released_11; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3519 = acceptedVec_0 ? _GEN_1756 : released_12; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3520 = acceptedVec_0 ? _GEN_1757 : released_13; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3521 = acceptedVec_0 ? _GEN_1758 : released_14; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3522 = acceptedVec_0 ? _GEN_1759 : released_15; // @[LoadQueueRAR.scala 122:40 74:25]
  wire  _GEN_3524 = needEnqueue_0 ? freeList_io_canAllocate_1 : freeList_io_canAllocate_0; // @[LoadQueueRAR.scala 119:{21,21}]
  wire [3:0] enqIndexVec_1 = needEnqueue_0 ? freeList_io_allocateSlot_1 : _T_1; // @[LoadQueueRAR.scala 121:{20,20}]
  wire  acceptedVec_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAR.scala 122:26]
  wire  _GEN_3527 = 4'h0 == enqIndexVec_1 | _GEN_1761; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3528 = 4'h1 == enqIndexVec_1 | _GEN_1762; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3529 = 4'h2 == enqIndexVec_1 | _GEN_1763; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3530 = 4'h3 == enqIndexVec_1 | _GEN_1764; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3531 = 4'h4 == enqIndexVec_1 | _GEN_1765; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3532 = 4'h5 == enqIndexVec_1 | _GEN_1766; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3533 = 4'h6 == enqIndexVec_1 | _GEN_1767; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3534 = 4'h7 == enqIndexVec_1 | _GEN_1768; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3535 = 4'h8 == enqIndexVec_1 | _GEN_1769; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3536 = 4'h9 == enqIndexVec_1 | _GEN_1770; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3537 = 4'ha == enqIndexVec_1 | _GEN_1771; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3538 = 4'hb == enqIndexVec_1 | _GEN_1772; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3539 = 4'hc == enqIndexVec_1 | _GEN_1773; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3540 = 4'hd == enqIndexVec_1 | _GEN_1774; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3541 = 4'he == enqIndexVec_1 | _GEN_1775; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _GEN_3542 = 4'hf == enqIndexVec_1 | _GEN_1776; // @[LoadQueueRAR.scala 131:{27,27}]
  wire  _released_T_12 = io_query_1_req_bits_paddr[35:6] == release2Cycle_bits_paddr[35:6]; // @[LoadQueueRAR.scala 143:55]
  wire  _released_T_13 = release2Cycle_valid & _released_T_12; // @[LoadQueueRAR.scala 142:30]
  wire  _released_T_16 = io_query_1_req_bits_paddr[35:6] == io_release_bits_paddr[35:6]; // @[LoadQueueRAR.scala 145:55]
  wire  _released_T_17 = io_release_valid & _released_T_16; // @[LoadQueueRAR.scala 144:29]
  wire  _released_T_18 = _released_T_13 | _released_T_17; // @[LoadQueueRAR.scala 143:115]
  wire  _released_T_19 = io_query_1_req_bits_data_valid & _released_T_18; // @[LoadQueueRAR.scala 141:29]
  wire  _GEN_5271 = 4'h0 == enqIndexVec_1 ? _released_T_19 : _GEN_3507; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5272 = 4'h1 == enqIndexVec_1 ? _released_T_19 : _GEN_3508; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5273 = 4'h2 == enqIndexVec_1 ? _released_T_19 : _GEN_3509; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5274 = 4'h3 == enqIndexVec_1 ? _released_T_19 : _GEN_3510; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5275 = 4'h4 == enqIndexVec_1 ? _released_T_19 : _GEN_3511; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5276 = 4'h5 == enqIndexVec_1 ? _released_T_19 : _GEN_3512; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5277 = 4'h6 == enqIndexVec_1 ? _released_T_19 : _GEN_3513; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5278 = 4'h7 == enqIndexVec_1 ? _released_T_19 : _GEN_3514; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5279 = 4'h8 == enqIndexVec_1 ? _released_T_19 : _GEN_3515; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5280 = 4'h9 == enqIndexVec_1 ? _released_T_19 : _GEN_3516; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5281 = 4'ha == enqIndexVec_1 ? _released_T_19 : _GEN_3517; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5282 = 4'hb == enqIndexVec_1 ? _released_T_19 : _GEN_3518; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5283 = 4'hc == enqIndexVec_1 ? _released_T_19 : _GEN_3519; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5284 = 4'hd == enqIndexVec_1 ? _released_T_19 : _GEN_3520; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5285 = 4'he == enqIndexVec_1 ? _released_T_19 : _GEN_3521; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5286 = 4'hf == enqIndexVec_1 ? _released_T_19 : _GEN_3522; // @[LoadQueueRAR.scala 140:{26,26}]
  wire  _GEN_5288 = acceptedVec_1 ? _GEN_3527 : _GEN_1761; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5289 = acceptedVec_1 ? _GEN_3528 : _GEN_1762; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5290 = acceptedVec_1 ? _GEN_3529 : _GEN_1763; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5291 = acceptedVec_1 ? _GEN_3530 : _GEN_1764; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5292 = acceptedVec_1 ? _GEN_3531 : _GEN_1765; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5293 = acceptedVec_1 ? _GEN_3532 : _GEN_1766; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5294 = acceptedVec_1 ? _GEN_3533 : _GEN_1767; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5295 = acceptedVec_1 ? _GEN_3534 : _GEN_1768; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5296 = acceptedVec_1 ? _GEN_3535 : _GEN_1769; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5297 = acceptedVec_1 ? _GEN_3536 : _GEN_1770; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5298 = acceptedVec_1 ? _GEN_3537 : _GEN_1771; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5299 = acceptedVec_1 ? _GEN_3538 : _GEN_1772; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5300 = acceptedVec_1 ? _GEN_3539 : _GEN_1773; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5301 = acceptedVec_1 ? _GEN_3540 : _GEN_1774; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5302 = acceptedVec_1 ? _GEN_3541 : _GEN_1775; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_5303 = acceptedVec_1 ? _GEN_3542 : _GEN_1776; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7034 = acceptedVec_1 ? _GEN_5271 : _GEN_3507; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7035 = acceptedVec_1 ? _GEN_5272 : _GEN_3508; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7036 = acceptedVec_1 ? _GEN_5273 : _GEN_3509; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7037 = acceptedVec_1 ? _GEN_5274 : _GEN_3510; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7038 = acceptedVec_1 ? _GEN_5275 : _GEN_3511; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7039 = acceptedVec_1 ? _GEN_5276 : _GEN_3512; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7040 = acceptedVec_1 ? _GEN_5277 : _GEN_3513; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7041 = acceptedVec_1 ? _GEN_5278 : _GEN_3514; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7042 = acceptedVec_1 ? _GEN_5279 : _GEN_3515; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7043 = acceptedVec_1 ? _GEN_5280 : _GEN_3516; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7044 = acceptedVec_1 ? _GEN_5281 : _GEN_3517; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7045 = acceptedVec_1 ? _GEN_5282 : _GEN_3518; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7046 = acceptedVec_1 ? _GEN_5283 : _GEN_3519; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7047 = acceptedVec_1 ? _GEN_5284 : _GEN_3520; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7048 = acceptedVec_1 ? _GEN_5285 : _GEN_3521; // @[LoadQueueRAR.scala 122:40]
  wire  _GEN_7049 = acceptedVec_1 ? _GEN_5286 : _GEN_3522; // @[LoadQueueRAR.scala 122:40]
  wire  deqNotBlock_differentFlag = io_ldWbPtr_flag ^ uop_0_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare = io_ldWbPtr_value < uop_0_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T = deqNotBlock_differentFlag ^ deqNotBlock_compare; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock = ~_deqNotBlock_T; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_3 = _needFlush_flushItself_T_1 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself = io_redirect_bits_level & _needFlush_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag = uop_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare = uop_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T = needFlush_differentFlag ^ needFlush_compare; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush = io_redirect_valid & (needFlush_flushItself | _needFlush_T); // @[Rob.scala 143:20]
  wire  _T_19 = allocated_0 & (deqNotBlock | needFlush); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7050 = allocated_0 & (deqNotBlock | needFlush) ? 1'h0 : _GEN_5288; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_1 = io_ldWbPtr_flag ^ uop_1_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_1 = io_ldWbPtr_value < uop_1_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_1 = deqNotBlock_differentFlag_1 ^ deqNotBlock_compare_1; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_1 = ~_deqNotBlock_T_1; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_5 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_7 = _needFlush_flushItself_T_5 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_1 = io_redirect_bits_level & _needFlush_flushItself_T_7; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_1 = uop_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_1 = uop_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_2 = needFlush_differentFlag_1 ^ needFlush_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_1 = io_redirect_valid & (needFlush_flushItself_1 | _needFlush_T_2); // @[Rob.scala 143:20]
  wire  _T_21 = allocated_1 & (deqNotBlock_1 | needFlush_1); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7052 = allocated_1 & (deqNotBlock_1 | needFlush_1) ? 1'h0 : _GEN_5289; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_2 = io_ldWbPtr_flag ^ uop_2_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_2 = io_ldWbPtr_value < uop_2_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_2 = deqNotBlock_differentFlag_2 ^ deqNotBlock_compare_2; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_2 = ~_deqNotBlock_T_2; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_9 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_11 = _needFlush_flushItself_T_9 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_2 = io_redirect_bits_level & _needFlush_flushItself_T_11; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_2 = uop_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_2 = uop_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_4 = needFlush_differentFlag_2 ^ needFlush_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_2 = io_redirect_valid & (needFlush_flushItself_2 | _needFlush_T_4); // @[Rob.scala 143:20]
  wire  _T_23 = allocated_2 & (deqNotBlock_2 | needFlush_2); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7054 = allocated_2 & (deqNotBlock_2 | needFlush_2) ? 1'h0 : _GEN_5290; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_3 = io_ldWbPtr_flag ^ uop_3_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_3 = io_ldWbPtr_value < uop_3_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_3 = deqNotBlock_differentFlag_3 ^ deqNotBlock_compare_3; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_3 = ~_deqNotBlock_T_3; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_13 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_15 = _needFlush_flushItself_T_13 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_3 = io_redirect_bits_level & _needFlush_flushItself_T_15; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_3 = uop_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_3 = uop_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_6 = needFlush_differentFlag_3 ^ needFlush_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_3 = io_redirect_valid & (needFlush_flushItself_3 | _needFlush_T_6); // @[Rob.scala 143:20]
  wire  _T_25 = allocated_3 & (deqNotBlock_3 | needFlush_3); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7056 = allocated_3 & (deqNotBlock_3 | needFlush_3) ? 1'h0 : _GEN_5291; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_4 = io_ldWbPtr_flag ^ uop_4_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_4 = io_ldWbPtr_value < uop_4_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_4 = deqNotBlock_differentFlag_4 ^ deqNotBlock_compare_4; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_4 = ~_deqNotBlock_T_4; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_17 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_19 = _needFlush_flushItself_T_17 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_4 = io_redirect_bits_level & _needFlush_flushItself_T_19; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_4 = uop_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_4 = uop_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_8 = needFlush_differentFlag_4 ^ needFlush_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_4 = io_redirect_valid & (needFlush_flushItself_4 | _needFlush_T_8); // @[Rob.scala 143:20]
  wire  _T_27 = allocated_4 & (deqNotBlock_4 | needFlush_4); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7058 = allocated_4 & (deqNotBlock_4 | needFlush_4) ? 1'h0 : _GEN_5292; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_5 = io_ldWbPtr_flag ^ uop_5_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_5 = io_ldWbPtr_value < uop_5_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_5 = deqNotBlock_differentFlag_5 ^ deqNotBlock_compare_5; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_5 = ~_deqNotBlock_T_5; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_21 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_23 = _needFlush_flushItself_T_21 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_5 = io_redirect_bits_level & _needFlush_flushItself_T_23; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_5 = uop_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_5 = uop_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_10 = needFlush_differentFlag_5 ^ needFlush_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_5 = io_redirect_valid & (needFlush_flushItself_5 | _needFlush_T_10); // @[Rob.scala 143:20]
  wire  _T_29 = allocated_5 & (deqNotBlock_5 | needFlush_5); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7060 = allocated_5 & (deqNotBlock_5 | needFlush_5) ? 1'h0 : _GEN_5293; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_6 = io_ldWbPtr_flag ^ uop_6_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_6 = io_ldWbPtr_value < uop_6_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_6 = deqNotBlock_differentFlag_6 ^ deqNotBlock_compare_6; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_6 = ~_deqNotBlock_T_6; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_25 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_27 = _needFlush_flushItself_T_25 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_6 = io_redirect_bits_level & _needFlush_flushItself_T_27; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_6 = uop_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_6 = uop_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_12 = needFlush_differentFlag_6 ^ needFlush_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_6 = io_redirect_valid & (needFlush_flushItself_6 | _needFlush_T_12); // @[Rob.scala 143:20]
  wire  _T_31 = allocated_6 & (deqNotBlock_6 | needFlush_6); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7062 = allocated_6 & (deqNotBlock_6 | needFlush_6) ? 1'h0 : _GEN_5294; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_7 = io_ldWbPtr_flag ^ uop_7_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_7 = io_ldWbPtr_value < uop_7_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_7 = deqNotBlock_differentFlag_7 ^ deqNotBlock_compare_7; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_7 = ~_deqNotBlock_T_7; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_29 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_31 = _needFlush_flushItself_T_29 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_7 = io_redirect_bits_level & _needFlush_flushItself_T_31; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_7 = uop_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_7 = uop_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_14 = needFlush_differentFlag_7 ^ needFlush_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_7 = io_redirect_valid & (needFlush_flushItself_7 | _needFlush_T_14); // @[Rob.scala 143:20]
  wire  _T_33 = allocated_7 & (deqNotBlock_7 | needFlush_7); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7064 = allocated_7 & (deqNotBlock_7 | needFlush_7) ? 1'h0 : _GEN_5295; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_8 = io_ldWbPtr_flag ^ uop_8_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_8 = io_ldWbPtr_value < uop_8_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_8 = deqNotBlock_differentFlag_8 ^ deqNotBlock_compare_8; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_8 = ~_deqNotBlock_T_8; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_33 = {uop_8_robIdx_flag,uop_8_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_35 = _needFlush_flushItself_T_33 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_8 = io_redirect_bits_level & _needFlush_flushItself_T_35; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_8 = uop_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_8 = uop_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_16 = needFlush_differentFlag_8 ^ needFlush_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_8 = io_redirect_valid & (needFlush_flushItself_8 | _needFlush_T_16); // @[Rob.scala 143:20]
  wire  _T_35 = allocated_8 & (deqNotBlock_8 | needFlush_8); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7066 = allocated_8 & (deqNotBlock_8 | needFlush_8) ? 1'h0 : _GEN_5296; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_9 = io_ldWbPtr_flag ^ uop_9_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_9 = io_ldWbPtr_value < uop_9_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_9 = deqNotBlock_differentFlag_9 ^ deqNotBlock_compare_9; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_9 = ~_deqNotBlock_T_9; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_37 = {uop_9_robIdx_flag,uop_9_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_39 = _needFlush_flushItself_T_37 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_9 = io_redirect_bits_level & _needFlush_flushItself_T_39; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_9 = uop_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_9 = uop_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_18 = needFlush_differentFlag_9 ^ needFlush_compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_9 = io_redirect_valid & (needFlush_flushItself_9 | _needFlush_T_18); // @[Rob.scala 143:20]
  wire  _T_37 = allocated_9 & (deqNotBlock_9 | needFlush_9); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7068 = allocated_9 & (deqNotBlock_9 | needFlush_9) ? 1'h0 : _GEN_5297; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_10 = io_ldWbPtr_flag ^ uop_10_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_10 = io_ldWbPtr_value < uop_10_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_10 = deqNotBlock_differentFlag_10 ^ deqNotBlock_compare_10; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_10 = ~_deqNotBlock_T_10; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_41 = {uop_10_robIdx_flag,uop_10_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_43 = _needFlush_flushItself_T_41 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_10 = io_redirect_bits_level & _needFlush_flushItself_T_43; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_10 = uop_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_10 = uop_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_20 = needFlush_differentFlag_10 ^ needFlush_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_10 = io_redirect_valid & (needFlush_flushItself_10 | _needFlush_T_20); // @[Rob.scala 143:20]
  wire  _T_39 = allocated_10 & (deqNotBlock_10 | needFlush_10); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7070 = allocated_10 & (deqNotBlock_10 | needFlush_10) ? 1'h0 : _GEN_5298; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_11 = io_ldWbPtr_flag ^ uop_11_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_11 = io_ldWbPtr_value < uop_11_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_11 = deqNotBlock_differentFlag_11 ^ deqNotBlock_compare_11; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_11 = ~_deqNotBlock_T_11; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_45 = {uop_11_robIdx_flag,uop_11_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_47 = _needFlush_flushItself_T_45 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_11 = io_redirect_bits_level & _needFlush_flushItself_T_47; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_11 = uop_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_11 = uop_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_22 = needFlush_differentFlag_11 ^ needFlush_compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_11 = io_redirect_valid & (needFlush_flushItself_11 | _needFlush_T_22); // @[Rob.scala 143:20]
  wire  _T_41 = allocated_11 & (deqNotBlock_11 | needFlush_11); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7072 = allocated_11 & (deqNotBlock_11 | needFlush_11) ? 1'h0 : _GEN_5299; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_12 = io_ldWbPtr_flag ^ uop_12_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_12 = io_ldWbPtr_value < uop_12_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_12 = deqNotBlock_differentFlag_12 ^ deqNotBlock_compare_12; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_12 = ~_deqNotBlock_T_12; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_49 = {uop_12_robIdx_flag,uop_12_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_51 = _needFlush_flushItself_T_49 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_12 = io_redirect_bits_level & _needFlush_flushItself_T_51; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_12 = uop_12_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_12 = uop_12_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_24 = needFlush_differentFlag_12 ^ needFlush_compare_12; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_12 = io_redirect_valid & (needFlush_flushItself_12 | _needFlush_T_24); // @[Rob.scala 143:20]
  wire  _T_43 = allocated_12 & (deqNotBlock_12 | needFlush_12); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7074 = allocated_12 & (deqNotBlock_12 | needFlush_12) ? 1'h0 : _GEN_5300; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_13 = io_ldWbPtr_flag ^ uop_13_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_13 = io_ldWbPtr_value < uop_13_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_13 = deqNotBlock_differentFlag_13 ^ deqNotBlock_compare_13; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_13 = ~_deqNotBlock_T_13; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_53 = {uop_13_robIdx_flag,uop_13_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_55 = _needFlush_flushItself_T_53 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_13 = io_redirect_bits_level & _needFlush_flushItself_T_55; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_13 = uop_13_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_13 = uop_13_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_26 = needFlush_differentFlag_13 ^ needFlush_compare_13; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_13 = io_redirect_valid & (needFlush_flushItself_13 | _needFlush_T_26); // @[Rob.scala 143:20]
  wire  _T_45 = allocated_13 & (deqNotBlock_13 | needFlush_13); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7076 = allocated_13 & (deqNotBlock_13 | needFlush_13) ? 1'h0 : _GEN_5301; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_14 = io_ldWbPtr_flag ^ uop_14_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_14 = io_ldWbPtr_value < uop_14_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_14 = deqNotBlock_differentFlag_14 ^ deqNotBlock_compare_14; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_14 = ~_deqNotBlock_T_14; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_57 = {uop_14_robIdx_flag,uop_14_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_59 = _needFlush_flushItself_T_57 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_14 = io_redirect_bits_level & _needFlush_flushItself_T_59; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_14 = uop_14_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_14 = uop_14_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_28 = needFlush_differentFlag_14 ^ needFlush_compare_14; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_14 = io_redirect_valid & (needFlush_flushItself_14 | _needFlush_T_28); // @[Rob.scala 143:20]
  wire  _T_47 = allocated_14 & (deqNotBlock_14 | needFlush_14); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7078 = allocated_14 & (deqNotBlock_14 | needFlush_14) ? 1'h0 : _GEN_5302; // @[LoadQueueRAR.scala 161:55 162:20]
  wire  deqNotBlock_differentFlag_15 = io_ldWbPtr_flag ^ uop_15_lqIdx_flag; // @[CircularQueuePtr.scala 72:35]
  wire  deqNotBlock_compare_15 = io_ldWbPtr_value < uop_15_lqIdx_value; // @[CircularQueuePtr.scala 73:30]
  wire  _deqNotBlock_T_15 = deqNotBlock_differentFlag_15 ^ deqNotBlock_compare_15; // @[CircularQueuePtr.scala 74:19]
  wire  deqNotBlock_15 = ~_deqNotBlock_T_15; // @[LoadQueueRAR.scala 158:23]
  wire [5:0] _needFlush_flushItself_T_61 = {uop_15_robIdx_flag,uop_15_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needFlush_flushItself_T_63 = _needFlush_flushItself_T_61 == _cancelEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needFlush_flushItself_15 = io_redirect_bits_level & _needFlush_flushItself_T_63; // @[Rob.scala 142:51]
  wire  needFlush_differentFlag_15 = uop_15_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needFlush_compare_15 = uop_15_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needFlush_T_30 = needFlush_differentFlag_15 ^ needFlush_compare_15; // @[CircularQueuePtr.scala 68:19]
  wire  needFlush_15 = io_redirect_valid & (needFlush_flushItself_15 | _needFlush_T_30); // @[Rob.scala 143:20]
  wire  _T_49 = allocated_15 & (deqNotBlock_15 | needFlush_15); // @[LoadQueueRAR.scala 161:24]
  wire  _GEN_7080 = allocated_15 & (deqNotBlock_15 | needFlush_15) ? 1'h0 : _GEN_5303; // @[LoadQueueRAR.scala 161:55 162:20]
  reg  lastCanAccept_0; // @[LoadQueueRAR.scala 168:30]
  reg  lastCanAccept_1; // @[LoadQueueRAR.scala 168:30]
  reg [3:0] lastAllocIndex_0; // @[LoadQueueRAR.scala 169:31]
  reg [3:0] lastAllocIndex_1; // @[LoadQueueRAR.scala 169:31]
  wire  revokeValid = io_query_0_revoke & lastCanAccept_0; // @[LoadQueueRAR.scala 172:30]
  wire  _GEN_7083 = 4'h1 == lastAllocIndex_0 ? allocated_1 : allocated_0; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7084 = 4'h2 == lastAllocIndex_0 ? allocated_2 : _GEN_7083; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7085 = 4'h3 == lastAllocIndex_0 ? allocated_3 : _GEN_7084; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7086 = 4'h4 == lastAllocIndex_0 ? allocated_4 : _GEN_7085; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7087 = 4'h5 == lastAllocIndex_0 ? allocated_5 : _GEN_7086; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7088 = 4'h6 == lastAllocIndex_0 ? allocated_6 : _GEN_7087; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7089 = 4'h7 == lastAllocIndex_0 ? allocated_7 : _GEN_7088; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7090 = 4'h8 == lastAllocIndex_0 ? allocated_8 : _GEN_7089; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7091 = 4'h9 == lastAllocIndex_0 ? allocated_9 : _GEN_7090; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7092 = 4'ha == lastAllocIndex_0 ? allocated_10 : _GEN_7091; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7093 = 4'hb == lastAllocIndex_0 ? allocated_11 : _GEN_7092; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7094 = 4'hc == lastAllocIndex_0 ? allocated_12 : _GEN_7093; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7095 = 4'hd == lastAllocIndex_0 ? allocated_13 : _GEN_7094; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7096 = 4'he == lastAllocIndex_0 ? allocated_14 : _GEN_7095; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7097 = 4'hf == lastAllocIndex_0 ? allocated_15 : _GEN_7096; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7098 = 4'h0 == lastAllocIndex_0 ? 1'h0 : _GEN_7050; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7099 = 4'h1 == lastAllocIndex_0 ? 1'h0 : _GEN_7052; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7100 = 4'h2 == lastAllocIndex_0 ? 1'h0 : _GEN_7054; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7101 = 4'h3 == lastAllocIndex_0 ? 1'h0 : _GEN_7056; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7102 = 4'h4 == lastAllocIndex_0 ? 1'h0 : _GEN_7058; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7103 = 4'h5 == lastAllocIndex_0 ? 1'h0 : _GEN_7060; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7104 = 4'h6 == lastAllocIndex_0 ? 1'h0 : _GEN_7062; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7105 = 4'h7 == lastAllocIndex_0 ? 1'h0 : _GEN_7064; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7106 = 4'h8 == lastAllocIndex_0 ? 1'h0 : _GEN_7066; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7107 = 4'h9 == lastAllocIndex_0 ? 1'h0 : _GEN_7068; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7108 = 4'ha == lastAllocIndex_0 ? 1'h0 : _GEN_7070; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7109 = 4'hb == lastAllocIndex_0 ? 1'h0 : _GEN_7072; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7110 = 4'hc == lastAllocIndex_0 ? 1'h0 : _GEN_7074; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7111 = 4'hd == lastAllocIndex_0 ? 1'h0 : _GEN_7076; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7112 = 4'he == lastAllocIndex_0 ? 1'h0 : _GEN_7078; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7113 = 4'hf == lastAllocIndex_0 ? 1'h0 : _GEN_7080; // @[LoadQueueRAR.scala 176:{30,30}]
  wire  _GEN_7114 = 4'h0 == lastAllocIndex_0 | _T_19; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7115 = 4'h1 == lastAllocIndex_0 | _T_21; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7116 = 4'h2 == lastAllocIndex_0 | _T_23; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7117 = 4'h3 == lastAllocIndex_0 | _T_25; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7118 = 4'h4 == lastAllocIndex_0 | _T_27; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7119 = 4'h5 == lastAllocIndex_0 | _T_29; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7120 = 4'h6 == lastAllocIndex_0 | _T_31; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7121 = 4'h7 == lastAllocIndex_0 | _T_33; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7122 = 4'h8 == lastAllocIndex_0 | _T_35; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7123 = 4'h9 == lastAllocIndex_0 | _T_37; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7124 = 4'ha == lastAllocIndex_0 | _T_39; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7125 = 4'hb == lastAllocIndex_0 | _T_41; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7126 = 4'hc == lastAllocIndex_0 | _T_43; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7127 = 4'hd == lastAllocIndex_0 | _T_45; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7128 = 4'he == lastAllocIndex_0 | _T_47; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7129 = 4'hf == lastAllocIndex_0 | _T_49; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7130 = _GEN_7097 & revokeValid ? _GEN_7098 : _GEN_7050; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7131 = _GEN_7097 & revokeValid ? _GEN_7099 : _GEN_7052; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7132 = _GEN_7097 & revokeValid ? _GEN_7100 : _GEN_7054; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7133 = _GEN_7097 & revokeValid ? _GEN_7101 : _GEN_7056; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7134 = _GEN_7097 & revokeValid ? _GEN_7102 : _GEN_7058; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7135 = _GEN_7097 & revokeValid ? _GEN_7103 : _GEN_7060; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7136 = _GEN_7097 & revokeValid ? _GEN_7104 : _GEN_7062; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7137 = _GEN_7097 & revokeValid ? _GEN_7105 : _GEN_7064; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7138 = _GEN_7097 & revokeValid ? _GEN_7106 : _GEN_7066; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7139 = _GEN_7097 & revokeValid ? _GEN_7107 : _GEN_7068; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7140 = _GEN_7097 & revokeValid ? _GEN_7108 : _GEN_7070; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7141 = _GEN_7097 & revokeValid ? _GEN_7109 : _GEN_7072; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7142 = _GEN_7097 & revokeValid ? _GEN_7110 : _GEN_7074; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7143 = _GEN_7097 & revokeValid ? _GEN_7111 : _GEN_7076; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7144 = _GEN_7097 & revokeValid ? _GEN_7112 : _GEN_7078; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7145 = _GEN_7097 & revokeValid ? _GEN_7113 : _GEN_7080; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7146 = _GEN_7097 & revokeValid ? _GEN_7114 : _T_19; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7147 = _GEN_7097 & revokeValid ? _GEN_7115 : _T_21; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7148 = _GEN_7097 & revokeValid ? _GEN_7116 : _T_23; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7149 = _GEN_7097 & revokeValid ? _GEN_7117 : _T_25; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7150 = _GEN_7097 & revokeValid ? _GEN_7118 : _T_27; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7151 = _GEN_7097 & revokeValid ? _GEN_7119 : _T_29; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7152 = _GEN_7097 & revokeValid ? _GEN_7120 : _T_31; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7153 = _GEN_7097 & revokeValid ? _GEN_7121 : _T_33; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7154 = _GEN_7097 & revokeValid ? _GEN_7122 : _T_35; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7155 = _GEN_7097 & revokeValid ? _GEN_7123 : _T_37; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7156 = _GEN_7097 & revokeValid ? _GEN_7124 : _T_39; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7157 = _GEN_7097 & revokeValid ? _GEN_7125 : _T_41; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7158 = _GEN_7097 & revokeValid ? _GEN_7126 : _T_43; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7159 = _GEN_7097 & revokeValid ? _GEN_7127 : _T_45; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7160 = _GEN_7097 & revokeValid ? _GEN_7128 : _T_47; // @[LoadQueueRAR.scala 175:50]
  wire  _GEN_7161 = _GEN_7097 & revokeValid ? _GEN_7129 : _T_49; // @[LoadQueueRAR.scala 175:50]
  wire  revokeValid_1 = io_query_1_revoke & lastCanAccept_1; // @[LoadQueueRAR.scala 172:30]
  wire  _GEN_7163 = 4'h1 == lastAllocIndex_1 ? allocated_1 : allocated_0; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7164 = 4'h2 == lastAllocIndex_1 ? allocated_2 : _GEN_7163; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7165 = 4'h3 == lastAllocIndex_1 ? allocated_3 : _GEN_7164; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7166 = 4'h4 == lastAllocIndex_1 ? allocated_4 : _GEN_7165; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7167 = 4'h5 == lastAllocIndex_1 ? allocated_5 : _GEN_7166; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7168 = 4'h6 == lastAllocIndex_1 ? allocated_6 : _GEN_7167; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7169 = 4'h7 == lastAllocIndex_1 ? allocated_7 : _GEN_7168; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7170 = 4'h8 == lastAllocIndex_1 ? allocated_8 : _GEN_7169; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7171 = 4'h9 == lastAllocIndex_1 ? allocated_9 : _GEN_7170; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7172 = 4'ha == lastAllocIndex_1 ? allocated_10 : _GEN_7171; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7173 = 4'hb == lastAllocIndex_1 ? allocated_11 : _GEN_7172; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7174 = 4'hc == lastAllocIndex_1 ? allocated_12 : _GEN_7173; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7175 = 4'hd == lastAllocIndex_1 ? allocated_13 : _GEN_7174; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7176 = 4'he == lastAllocIndex_1 ? allocated_14 : _GEN_7175; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7177 = 4'hf == lastAllocIndex_1 ? allocated_15 : _GEN_7176; // @[LoadQueueRAR.scala 175:{34,34}]
  wire  _GEN_7194 = 4'h0 == lastAllocIndex_1 | _GEN_7146; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7195 = 4'h1 == lastAllocIndex_1 | _GEN_7147; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7196 = 4'h2 == lastAllocIndex_1 | _GEN_7148; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7197 = 4'h3 == lastAllocIndex_1 | _GEN_7149; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7198 = 4'h4 == lastAllocIndex_1 | _GEN_7150; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7199 = 4'h5 == lastAllocIndex_1 | _GEN_7151; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7200 = 4'h6 == lastAllocIndex_1 | _GEN_7152; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7201 = 4'h7 == lastAllocIndex_1 | _GEN_7153; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7202 = 4'h8 == lastAllocIndex_1 | _GEN_7154; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7203 = 4'h9 == lastAllocIndex_1 | _GEN_7155; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7204 = 4'ha == lastAllocIndex_1 | _GEN_7156; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7205 = 4'hb == lastAllocIndex_1 | _GEN_7157; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7206 = 4'hc == lastAllocIndex_1 | _GEN_7158; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7207 = 4'hd == lastAllocIndex_1 | _GEN_7159; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7208 = 4'he == lastAllocIndex_1 | _GEN_7160; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  _GEN_7209 = 4'hf == lastAllocIndex_1 | _GEN_7161; // @[LoadQueueRAR.scala 177:{32,32}]
  wire  freeMaskVec_0 = _GEN_7177 & revokeValid_1 ? _GEN_7194 : _GEN_7146; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_1 = _GEN_7177 & revokeValid_1 ? _GEN_7195 : _GEN_7147; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_2 = _GEN_7177 & revokeValid_1 ? _GEN_7196 : _GEN_7148; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_3 = _GEN_7177 & revokeValid_1 ? _GEN_7197 : _GEN_7149; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_4 = _GEN_7177 & revokeValid_1 ? _GEN_7198 : _GEN_7150; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_5 = _GEN_7177 & revokeValid_1 ? _GEN_7199 : _GEN_7151; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_6 = _GEN_7177 & revokeValid_1 ? _GEN_7200 : _GEN_7152; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_7 = _GEN_7177 & revokeValid_1 ? _GEN_7201 : _GEN_7153; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_8 = _GEN_7177 & revokeValid_1 ? _GEN_7202 : _GEN_7154; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_9 = _GEN_7177 & revokeValid_1 ? _GEN_7203 : _GEN_7155; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_10 = _GEN_7177 & revokeValid_1 ? _GEN_7204 : _GEN_7156; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_11 = _GEN_7177 & revokeValid_1 ? _GEN_7205 : _GEN_7157; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_12 = _GEN_7177 & revokeValid_1 ? _GEN_7206 : _GEN_7158; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_13 = _GEN_7177 & revokeValid_1 ? _GEN_7207 : _GEN_7159; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_14 = _GEN_7177 & revokeValid_1 ? _GEN_7208 : _GEN_7160; // @[LoadQueueRAR.scala 175:50]
  wire  freeMaskVec_15 = _GEN_7177 & revokeValid_1 ? _GEN_7209 : _GEN_7161; // @[LoadQueueRAR.scala 175:50]
  wire [7:0] freeList_io_free_lo = {freeMaskVec_7,freeMaskVec_6,freeMaskVec_5,freeMaskVec_4,freeMaskVec_3,freeMaskVec_2,
    freeMaskVec_1,freeMaskVec_0}; // @[LoadQueueRAR.scala 181:35]
  wire [7:0] freeList_io_free_hi = {freeMaskVec_15,freeMaskVec_14,freeMaskVec_13,freeMaskVec_12,freeMaskVec_11,
    freeMaskVec_10,freeMaskVec_9,freeMaskVec_8}; // @[LoadQueueRAR.scala 181:35]
  wire [7:0] allocatedUInt_lo = {allocated_7,allocated_6,allocated_5,allocated_4,allocated_3,allocated_2,allocated_1,
    allocated_0}; // @[LoadQueueRAR.scala 189:41]
  wire [7:0] allocatedUInt_hi = {allocated_15,allocated_14,allocated_13,allocated_12,allocated_11,allocated_10,
    allocated_9,allocated_8}; // @[LoadQueueRAR.scala 189:41]
  reg [15:0] allocatedUInt; // @[LoadQueueRAR.scala 189:30]
  reg  io_query_0_resp_valid_REG; // @[LoadQueueRAR.scala 194:32]
  wire  robIdxMask_differentFlag = uop_0_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare = uop_0_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__0 = robIdxMask_differentFlag ^ robIdxMask_compare; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_1 = uop_1_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_1 = uop_1_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__1 = robIdxMask_differentFlag_1 ^ robIdxMask_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_2 = uop_2_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_2 = uop_2_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__2 = robIdxMask_differentFlag_2 ^ robIdxMask_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_3 = uop_3_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_3 = uop_3_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__3 = robIdxMask_differentFlag_3 ^ robIdxMask_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_4 = uop_4_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_4 = uop_4_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__4 = robIdxMask_differentFlag_4 ^ robIdxMask_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_5 = uop_5_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_5 = uop_5_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__5 = robIdxMask_differentFlag_5 ^ robIdxMask_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_6 = uop_6_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_6 = uop_6_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__6 = robIdxMask_differentFlag_6 ^ robIdxMask_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_7 = uop_7_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_7 = uop_7_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__7 = robIdxMask_differentFlag_7 ^ robIdxMask_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_8 = uop_8_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_8 = uop_8_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__8 = robIdxMask_differentFlag_8 ^ robIdxMask_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_9 = uop_9_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_9 = uop_9_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__9 = robIdxMask_differentFlag_9 ^ robIdxMask_compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_10 = uop_10_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_10 = uop_10_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__10 = robIdxMask_differentFlag_10 ^ robIdxMask_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_11 = uop_11_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_11 = uop_11_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__11 = robIdxMask_differentFlag_11 ^ robIdxMask_compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_12 = uop_12_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_12 = uop_12_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__12 = robIdxMask_differentFlag_12 ^ robIdxMask_compare_12; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_13 = uop_13_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_13 = uop_13_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__13 = robIdxMask_differentFlag_13 ^ robIdxMask_compare_13; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_14 = uop_14_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_14 = uop_14_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__14 = robIdxMask_differentFlag_14 ^ robIdxMask_compare_14; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_15 = uop_15_robIdx_flag ^ io_query_0_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_15 = uop_15_robIdx_value > io_query_0_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask__15 = robIdxMask_differentFlag_15 ^ robIdxMask_compare_15; // @[CircularQueuePtr.scala 68:19]
  wire [7:0] matchMask_lo = {paddrModule_io_releaseViolationMmask_0_7,paddrModule_io_releaseViolationMmask_0_6,
    paddrModule_io_releaseViolationMmask_0_5,paddrModule_io_releaseViolationMmask_0_4,
    paddrModule_io_releaseViolationMmask_0_3,paddrModule_io_releaseViolationMmask_0_2,
    paddrModule_io_releaseViolationMmask_0_1,paddrModule_io_releaseViolationMmask_0_0}; // @[LoadQueueRAR.scala 198:69]
  wire [7:0] matchMask_hi = {paddrModule_io_releaseViolationMmask_0_15,paddrModule_io_releaseViolationMmask_0_14,
    paddrModule_io_releaseViolationMmask_0_13,paddrModule_io_releaseViolationMmask_0_12,
    paddrModule_io_releaseViolationMmask_0_11,paddrModule_io_releaseViolationMmask_0_10,
    paddrModule_io_releaseViolationMmask_0_9,paddrModule_io_releaseViolationMmask_0_8}; // @[LoadQueueRAR.scala 198:69]
  reg [15:0] matchMask_REG; // @[LoadQueueRAR.scala 198:28]
  wire [15:0] _matchMask_T_1 = allocatedUInt & matchMask_REG; // @[LoadQueueRAR.scala 197:35]
  wire [7:0] matchMask_lo_1 = {robIdxMask__7,robIdxMask__6,robIdxMask__5,robIdxMask__4,robIdxMask__3,robIdxMask__2,
    robIdxMask__1,robIdxMask__0}; // @[LoadQueueRAR.scala 199:40]
  wire [7:0] matchMask_hi_1 = {robIdxMask__15,robIdxMask__14,robIdxMask__13,robIdxMask__12,robIdxMask__11,robIdxMask__10
    ,robIdxMask__9,robIdxMask__8}; // @[LoadQueueRAR.scala 199:40]
  reg [15:0] matchMask_REG_1; // @[LoadQueueRAR.scala 199:28]
  wire [15:0] matchMask = _matchMask_T_1 & matchMask_REG_1; // @[LoadQueueRAR.scala 198:77]
  wire [7:0] ldLdViolationMask_lo = {released_7,released_6,released_5,released_4,released_3,released_2,released_1,
    released_0}; // @[LoadQueueRAR.scala 201:67]
  wire [7:0] ldLdViolationMask_hi = {released_15,released_14,released_13,released_12,released_11,released_10,released_9,
    released_8}; // @[LoadQueueRAR.scala 201:67]
  reg [15:0] ldLdViolationMask_REG; // @[LoadQueueRAR.scala 201:57]
  wire [15:0] ldLdViolationMask_0 = matchMask & ldLdViolationMask_REG; // @[LoadQueueRAR.scala 201:48]
  reg  io_query_1_resp_valid_REG; // @[LoadQueueRAR.scala 194:32]
  wire  robIdxMask_differentFlag_16 = uop_0_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_16 = uop_0_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_0 = robIdxMask_differentFlag_16 ^ robIdxMask_compare_16; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_17 = uop_1_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_17 = uop_1_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_1 = robIdxMask_differentFlag_17 ^ robIdxMask_compare_17; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_18 = uop_2_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_18 = uop_2_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_2 = robIdxMask_differentFlag_18 ^ robIdxMask_compare_18; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_19 = uop_3_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_19 = uop_3_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_3 = robIdxMask_differentFlag_19 ^ robIdxMask_compare_19; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_20 = uop_4_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_20 = uop_4_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_4 = robIdxMask_differentFlag_20 ^ robIdxMask_compare_20; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_21 = uop_5_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_21 = uop_5_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_5 = robIdxMask_differentFlag_21 ^ robIdxMask_compare_21; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_22 = uop_6_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_22 = uop_6_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_6 = robIdxMask_differentFlag_22 ^ robIdxMask_compare_22; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_23 = uop_7_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_23 = uop_7_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_7 = robIdxMask_differentFlag_23 ^ robIdxMask_compare_23; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_24 = uop_8_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_24 = uop_8_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_8 = robIdxMask_differentFlag_24 ^ robIdxMask_compare_24; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_25 = uop_9_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_25 = uop_9_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_9 = robIdxMask_differentFlag_25 ^ robIdxMask_compare_25; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_26 = uop_10_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_26 = uop_10_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_10 = robIdxMask_differentFlag_26 ^ robIdxMask_compare_26; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_27 = uop_11_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_27 = uop_11_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_11 = robIdxMask_differentFlag_27 ^ robIdxMask_compare_27; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_28 = uop_12_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_28 = uop_12_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_12 = robIdxMask_differentFlag_28 ^ robIdxMask_compare_28; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_29 = uop_13_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_29 = uop_13_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_13 = robIdxMask_differentFlag_29 ^ robIdxMask_compare_29; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_30 = uop_14_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_30 = uop_14_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_14 = robIdxMask_differentFlag_30 ^ robIdxMask_compare_30; // @[CircularQueuePtr.scala 68:19]
  wire  robIdxMask_differentFlag_31 = uop_15_robIdx_flag ^ io_query_1_req_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  robIdxMask_compare_31 = uop_15_robIdx_value > io_query_1_req_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  robIdxMask_1_15 = robIdxMask_differentFlag_31 ^ robIdxMask_compare_31; // @[CircularQueuePtr.scala 68:19]
  wire [7:0] matchMask_lo_2 = {paddrModule_io_releaseViolationMmask_1_7,paddrModule_io_releaseViolationMmask_1_6,
    paddrModule_io_releaseViolationMmask_1_5,paddrModule_io_releaseViolationMmask_1_4,
    paddrModule_io_releaseViolationMmask_1_3,paddrModule_io_releaseViolationMmask_1_2,
    paddrModule_io_releaseViolationMmask_1_1,paddrModule_io_releaseViolationMmask_1_0}; // @[LoadQueueRAR.scala 198:69]
  wire [7:0] matchMask_hi_2 = {paddrModule_io_releaseViolationMmask_1_15,paddrModule_io_releaseViolationMmask_1_14,
    paddrModule_io_releaseViolationMmask_1_13,paddrModule_io_releaseViolationMmask_1_12,
    paddrModule_io_releaseViolationMmask_1_11,paddrModule_io_releaseViolationMmask_1_10,
    paddrModule_io_releaseViolationMmask_1_9,paddrModule_io_releaseViolationMmask_1_8}; // @[LoadQueueRAR.scala 198:69]
  reg [15:0] matchMask_REG_2; // @[LoadQueueRAR.scala 198:28]
  wire [15:0] _matchMask_T_4 = allocatedUInt & matchMask_REG_2; // @[LoadQueueRAR.scala 197:35]
  wire [7:0] matchMask_lo_3 = {robIdxMask_1_7,robIdxMask_1_6,robIdxMask_1_5,robIdxMask_1_4,robIdxMask_1_3,robIdxMask_1_2
    ,robIdxMask_1_1,robIdxMask_1_0}; // @[LoadQueueRAR.scala 199:40]
  wire [7:0] matchMask_hi_3 = {robIdxMask_1_15,robIdxMask_1_14,robIdxMask_1_13,robIdxMask_1_12,robIdxMask_1_11,
    robIdxMask_1_10,robIdxMask_1_9,robIdxMask_1_8}; // @[LoadQueueRAR.scala 199:40]
  reg [15:0] matchMask_REG_3; // @[LoadQueueRAR.scala 199:28]
  wire [15:0] matchMask_1 = _matchMask_T_4 & matchMask_REG_3; // @[LoadQueueRAR.scala 198:77]
  reg [15:0] ldLdViolationMask_REG_1; // @[LoadQueueRAR.scala 201:57]
  wire [15:0] ldLdViolationMask_1 = matchMask_1 & ldLdViolationMask_REG_1; // @[LoadQueueRAR.scala 201:48]
  reg  REG; // @[LoadQueueRAR.scala 215:18]
  reg  REG_1; // @[LoadQueueRAR.scala 215:18]
  reg  REG_2; // @[LoadQueueRAR.scala 215:18]
  reg  REG_3; // @[LoadQueueRAR.scala 215:18]
  reg  REG_4; // @[LoadQueueRAR.scala 215:18]
  reg  REG_5; // @[LoadQueueRAR.scala 215:18]
  reg  REG_6; // @[LoadQueueRAR.scala 215:18]
  reg  REG_7; // @[LoadQueueRAR.scala 215:18]
  reg  REG_8; // @[LoadQueueRAR.scala 215:18]
  reg  REG_9; // @[LoadQueueRAR.scala 215:18]
  reg  REG_10; // @[LoadQueueRAR.scala 215:18]
  reg  REG_11; // @[LoadQueueRAR.scala 215:18]
  reg  REG_12; // @[LoadQueueRAR.scala 215:18]
  reg  REG_13; // @[LoadQueueRAR.scala 215:18]
  reg  REG_14; // @[LoadQueueRAR.scala 215:18]
  reg  REG_15; // @[LoadQueueRAR.scala 215:18]
  wire  _canEnqCount_T = io_query_0_req_ready & io_query_0_req_valid; // @[Decoupled.scala 50:35]
  wire  _canEnqCount_T_1 = io_query_1_req_ready & io_query_1_req_valid; // @[Decoupled.scala 50:35]
  wire  _ldLdViolationCount_T = io_query_0_resp_valid & io_query_0_resp_bits_rep_frm_fetch; // @[LoadQueueRAR.scala 228:81]
  wire  _ldLdViolationCount_T_1 = io_query_1_resp_valid & io_query_1_resp_bits_rep_frm_fetch; // @[LoadQueueRAR.scala 228:81]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  LqPAddrModule paddrModule ( // @[LoadQueueRAR.scala 64:27]
    .clock(paddrModule_clock),
    .io_wen_0(paddrModule_io_wen_0),
    .io_wen_1(paddrModule_io_wen_1),
    .io_waddr_0(paddrModule_io_waddr_0),
    .io_waddr_1(paddrModule_io_waddr_1),
    .io_wdata_0(paddrModule_io_wdata_0),
    .io_wdata_1(paddrModule_io_wdata_1),
    .io_releaseMdata_1(paddrModule_io_releaseMdata_1),
    .io_releaseMmask_1_0(paddrModule_io_releaseMmask_1_0),
    .io_releaseMmask_1_1(paddrModule_io_releaseMmask_1_1),
    .io_releaseMmask_1_2(paddrModule_io_releaseMmask_1_2),
    .io_releaseMmask_1_3(paddrModule_io_releaseMmask_1_3),
    .io_releaseMmask_1_4(paddrModule_io_releaseMmask_1_4),
    .io_releaseMmask_1_5(paddrModule_io_releaseMmask_1_5),
    .io_releaseMmask_1_6(paddrModule_io_releaseMmask_1_6),
    .io_releaseMmask_1_7(paddrModule_io_releaseMmask_1_7),
    .io_releaseMmask_1_8(paddrModule_io_releaseMmask_1_8),
    .io_releaseMmask_1_9(paddrModule_io_releaseMmask_1_9),
    .io_releaseMmask_1_10(paddrModule_io_releaseMmask_1_10),
    .io_releaseMmask_1_11(paddrModule_io_releaseMmask_1_11),
    .io_releaseMmask_1_12(paddrModule_io_releaseMmask_1_12),
    .io_releaseMmask_1_13(paddrModule_io_releaseMmask_1_13),
    .io_releaseMmask_1_14(paddrModule_io_releaseMmask_1_14),
    .io_releaseMmask_1_15(paddrModule_io_releaseMmask_1_15),
    .io_releaseViolationMdata_0(paddrModule_io_releaseViolationMdata_0),
    .io_releaseViolationMdata_1(paddrModule_io_releaseViolationMdata_1),
    .io_releaseViolationMmask_0_0(paddrModule_io_releaseViolationMmask_0_0),
    .io_releaseViolationMmask_0_1(paddrModule_io_releaseViolationMmask_0_1),
    .io_releaseViolationMmask_0_2(paddrModule_io_releaseViolationMmask_0_2),
    .io_releaseViolationMmask_0_3(paddrModule_io_releaseViolationMmask_0_3),
    .io_releaseViolationMmask_0_4(paddrModule_io_releaseViolationMmask_0_4),
    .io_releaseViolationMmask_0_5(paddrModule_io_releaseViolationMmask_0_5),
    .io_releaseViolationMmask_0_6(paddrModule_io_releaseViolationMmask_0_6),
    .io_releaseViolationMmask_0_7(paddrModule_io_releaseViolationMmask_0_7),
    .io_releaseViolationMmask_0_8(paddrModule_io_releaseViolationMmask_0_8),
    .io_releaseViolationMmask_0_9(paddrModule_io_releaseViolationMmask_0_9),
    .io_releaseViolationMmask_0_10(paddrModule_io_releaseViolationMmask_0_10),
    .io_releaseViolationMmask_0_11(paddrModule_io_releaseViolationMmask_0_11),
    .io_releaseViolationMmask_0_12(paddrModule_io_releaseViolationMmask_0_12),
    .io_releaseViolationMmask_0_13(paddrModule_io_releaseViolationMmask_0_13),
    .io_releaseViolationMmask_0_14(paddrModule_io_releaseViolationMmask_0_14),
    .io_releaseViolationMmask_0_15(paddrModule_io_releaseViolationMmask_0_15),
    .io_releaseViolationMmask_1_0(paddrModule_io_releaseViolationMmask_1_0),
    .io_releaseViolationMmask_1_1(paddrModule_io_releaseViolationMmask_1_1),
    .io_releaseViolationMmask_1_2(paddrModule_io_releaseViolationMmask_1_2),
    .io_releaseViolationMmask_1_3(paddrModule_io_releaseViolationMmask_1_3),
    .io_releaseViolationMmask_1_4(paddrModule_io_releaseViolationMmask_1_4),
    .io_releaseViolationMmask_1_5(paddrModule_io_releaseViolationMmask_1_5),
    .io_releaseViolationMmask_1_6(paddrModule_io_releaseViolationMmask_1_6),
    .io_releaseViolationMmask_1_7(paddrModule_io_releaseViolationMmask_1_7),
    .io_releaseViolationMmask_1_8(paddrModule_io_releaseViolationMmask_1_8),
    .io_releaseViolationMmask_1_9(paddrModule_io_releaseViolationMmask_1_9),
    .io_releaseViolationMmask_1_10(paddrModule_io_releaseViolationMmask_1_10),
    .io_releaseViolationMmask_1_11(paddrModule_io_releaseViolationMmask_1_11),
    .io_releaseViolationMmask_1_12(paddrModule_io_releaseViolationMmask_1_12),
    .io_releaseViolationMmask_1_13(paddrModule_io_releaseViolationMmask_1_13),
    .io_releaseViolationMmask_1_14(paddrModule_io_releaseViolationMmask_1_14),
    .io_releaseViolationMmask_1_15(paddrModule_io_releaseViolationMmask_1_15)
  );
  FreeList freeList ( // @[LoadQueueRAR.scala 80:24]
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
  assign io_query_0_req_ready = needEnqueue_0 ? freeList_io_canAllocate_0 : 1'h1; // @[LoadQueueRAR.scala 119:21]
  assign io_query_0_resp_valid = io_query_0_resp_valid_REG; // @[LoadQueueRAR.scala 194:22]
  assign io_query_0_resp_bits_rep_frm_fetch = |ldLdViolationMask_0; // @[LoadQueueRAR.scala 203:56]
  assign io_query_1_req_ready = needEnqueue_1 ? _GEN_3524 : 1'h1; // @[LoadQueueRAR.scala 119:21]
  assign io_query_1_resp_valid = io_query_1_resp_valid_REG; // @[LoadQueueRAR.scala 194:22]
  assign io_query_1_resp_bits_rep_frm_fetch = |ldLdViolationMask_1; // @[LoadQueueRAR.scala 203:56]
  assign io_lqFull = freeList_io_empty; // @[LoadQueueRAR.scala 222:13]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{4'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign paddrModule_clock = clock;
  assign paddrModule_io_wen_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAR.scala 122:26]
  assign paddrModule_io_wen_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAR.scala 122:26]
  assign paddrModule_io_waddr_0 = freeList_io_allocateSlot_0; // @[LoadQueueRAR.scala 122:40 135:31]
  assign paddrModule_io_waddr_1 = needEnqueue_0 ? freeList_io_allocateSlot_1 : _T_1; // @[LoadQueueRAR.scala 121:{20,20}]
  assign paddrModule_io_wdata_0 = io_query_0_req_bits_paddr; // @[LoadQueueRAR.scala 122:40 136:31]
  assign paddrModule_io_wdata_1 = io_query_1_req_bits_paddr; // @[LoadQueueRAR.scala 122:40 136:31]
  assign paddrModule_io_releaseMdata_1 = io_release_bits_paddr; // @[LoadQueueRAR.scala 210:30 211:49]
  assign paddrModule_io_releaseViolationMdata_0 = io_query_0_req_bits_paddr; // @[LoadQueueRAR.scala 192:45]
  assign paddrModule_io_releaseViolationMdata_1 = io_query_1_req_bits_paddr; // @[LoadQueueRAR.scala 192:45]
  assign freeList_clock = clock;
  assign freeList_reset = reset;
  assign freeList_io_doAllocate_0 = needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAR.scala 122:26]
  assign freeList_io_doAllocate_1 = needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAR.scala 122:26]
  assign freeList_io_free = {freeList_io_free_hi,freeList_io_free_lo}; // @[LoadQueueRAR.scala 181:35]
  always @(posedge clock) begin
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_0_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_0_robIdx_flag <= _GEN_3219;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_3219;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_0_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_0_robIdx_value <= _GEN_3235;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_3235;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_0_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_0_lqIdx_flag <= _GEN_3251;
      end
    end else begin
      uop_0_lqIdx_flag <= _GEN_3251;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h0 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_0_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_0_lqIdx_value <= _GEN_3267;
      end
    end else begin
      uop_0_lqIdx_value <= _GEN_3267;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_1_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_1_robIdx_flag <= _GEN_3220;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_3220;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_1_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_1_robIdx_value <= _GEN_3236;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_3236;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_1_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_1_lqIdx_flag <= _GEN_3252;
      end
    end else begin
      uop_1_lqIdx_flag <= _GEN_3252;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h1 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_1_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_1_lqIdx_value <= _GEN_3268;
      end
    end else begin
      uop_1_lqIdx_value <= _GEN_3268;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_2_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_2_robIdx_flag <= _GEN_3221;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_3221;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_2_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_2_robIdx_value <= _GEN_3237;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_3237;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_2_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_2_lqIdx_flag <= _GEN_3253;
      end
    end else begin
      uop_2_lqIdx_flag <= _GEN_3253;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h2 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_2_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_2_lqIdx_value <= _GEN_3269;
      end
    end else begin
      uop_2_lqIdx_value <= _GEN_3269;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_3_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_3_robIdx_flag <= _GEN_3222;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_3222;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_3_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_3_robIdx_value <= _GEN_3238;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_3238;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_3_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_3_lqIdx_flag <= _GEN_3254;
      end
    end else begin
      uop_3_lqIdx_flag <= _GEN_3254;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h3 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_3_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_3_lqIdx_value <= _GEN_3270;
      end
    end else begin
      uop_3_lqIdx_value <= _GEN_3270;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_4_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_4_robIdx_flag <= _GEN_3223;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_3223;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_4_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_4_robIdx_value <= _GEN_3239;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_3239;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_4_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_4_lqIdx_flag <= _GEN_3255;
      end
    end else begin
      uop_4_lqIdx_flag <= _GEN_3255;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h4 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_4_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_4_lqIdx_value <= _GEN_3271;
      end
    end else begin
      uop_4_lqIdx_value <= _GEN_3271;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_5_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_5_robIdx_flag <= _GEN_3224;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_3224;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_5_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_5_robIdx_value <= _GEN_3240;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_3240;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_5_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_5_lqIdx_flag <= _GEN_3256;
      end
    end else begin
      uop_5_lqIdx_flag <= _GEN_3256;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h5 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_5_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_5_lqIdx_value <= _GEN_3272;
      end
    end else begin
      uop_5_lqIdx_value <= _GEN_3272;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_6_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_6_robIdx_flag <= _GEN_3225;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_3225;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_6_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_6_robIdx_value <= _GEN_3241;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_3241;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_6_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_6_lqIdx_flag <= _GEN_3257;
      end
    end else begin
      uop_6_lqIdx_flag <= _GEN_3257;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h6 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_6_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_6_lqIdx_value <= _GEN_3273;
      end
    end else begin
      uop_6_lqIdx_value <= _GEN_3273;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_7_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_7_robIdx_flag <= _GEN_3226;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_3226;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_7_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_7_robIdx_value <= _GEN_3242;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_3242;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_7_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_7_lqIdx_flag <= _GEN_3258;
      end
    end else begin
      uop_7_lqIdx_flag <= _GEN_3258;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h7 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_7_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_7_lqIdx_value <= _GEN_3274;
      end
    end else begin
      uop_7_lqIdx_value <= _GEN_3274;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_8_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_8_robIdx_flag <= _GEN_3227;
      end
    end else begin
      uop_8_robIdx_flag <= _GEN_3227;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_8_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_8_robIdx_value <= _GEN_3243;
      end
    end else begin
      uop_8_robIdx_value <= _GEN_3243;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_8_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_8_lqIdx_flag <= _GEN_3259;
      end
    end else begin
      uop_8_lqIdx_flag <= _GEN_3259;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h8 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_8_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_8_lqIdx_value <= _GEN_3275;
      end
    end else begin
      uop_8_lqIdx_value <= _GEN_3275;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_9_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_9_robIdx_flag <= _GEN_3228;
      end
    end else begin
      uop_9_robIdx_flag <= _GEN_3228;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_9_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_9_robIdx_value <= _GEN_3244;
      end
    end else begin
      uop_9_robIdx_value <= _GEN_3244;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_9_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_9_lqIdx_flag <= _GEN_3260;
      end
    end else begin
      uop_9_lqIdx_flag <= _GEN_3260;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'h9 == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_9_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_9_lqIdx_value <= _GEN_3276;
      end
    end else begin
      uop_9_lqIdx_value <= _GEN_3276;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_10_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_10_robIdx_flag <= _GEN_3229;
      end
    end else begin
      uop_10_robIdx_flag <= _GEN_3229;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_10_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_10_robIdx_value <= _GEN_3245;
      end
    end else begin
      uop_10_robIdx_value <= _GEN_3245;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_10_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_10_lqIdx_flag <= _GEN_3261;
      end
    end else begin
      uop_10_lqIdx_flag <= _GEN_3261;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'ha == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_10_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_10_lqIdx_value <= _GEN_3277;
      end
    end else begin
      uop_10_lqIdx_value <= _GEN_3277;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_11_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_11_robIdx_flag <= _GEN_3230;
      end
    end else begin
      uop_11_robIdx_flag <= _GEN_3230;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_11_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_11_robIdx_value <= _GEN_3246;
      end
    end else begin
      uop_11_robIdx_value <= _GEN_3246;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_11_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_11_lqIdx_flag <= _GEN_3262;
      end
    end else begin
      uop_11_lqIdx_flag <= _GEN_3262;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hb == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_11_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_11_lqIdx_value <= _GEN_3278;
      end
    end else begin
      uop_11_lqIdx_value <= _GEN_3278;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hc == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_12_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_12_robIdx_flag <= _GEN_3231;
      end
    end else begin
      uop_12_robIdx_flag <= _GEN_3231;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hc == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_12_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_12_robIdx_value <= _GEN_3247;
      end
    end else begin
      uop_12_robIdx_value <= _GEN_3247;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hc == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_12_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_12_lqIdx_flag <= _GEN_3263;
      end
    end else begin
      uop_12_lqIdx_flag <= _GEN_3263;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hc == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_12_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_12_lqIdx_value <= _GEN_3279;
      end
    end else begin
      uop_12_lqIdx_value <= _GEN_3279;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hd == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_13_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_13_robIdx_flag <= _GEN_3232;
      end
    end else begin
      uop_13_robIdx_flag <= _GEN_3232;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hd == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_13_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_13_robIdx_value <= _GEN_3248;
      end
    end else begin
      uop_13_robIdx_value <= _GEN_3248;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hd == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_13_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_13_lqIdx_flag <= _GEN_3264;
      end
    end else begin
      uop_13_lqIdx_flag <= _GEN_3264;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hd == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_13_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_13_lqIdx_value <= _GEN_3280;
      end
    end else begin
      uop_13_lqIdx_value <= _GEN_3280;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'he == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_14_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_14_robIdx_flag <= _GEN_3233;
      end
    end else begin
      uop_14_robIdx_flag <= _GEN_3233;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'he == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_14_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_14_robIdx_value <= _GEN_3249;
      end
    end else begin
      uop_14_robIdx_value <= _GEN_3249;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'he == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_14_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_14_lqIdx_flag <= _GEN_3265;
      end
    end else begin
      uop_14_lqIdx_flag <= _GEN_3265;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'he == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_14_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_14_lqIdx_value <= _GEN_3281;
      end
    end else begin
      uop_14_lqIdx_value <= _GEN_3281;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hf == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_15_robIdx_flag <= io_query_1_req_bits_uop_robIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_15_robIdx_flag <= _GEN_3234;
      end
    end else begin
      uop_15_robIdx_flag <= _GEN_3234;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hf == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_15_robIdx_value <= io_query_1_req_bits_uop_robIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_15_robIdx_value <= _GEN_3250;
      end
    end else begin
      uop_15_robIdx_value <= _GEN_3250;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hf == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_15_lqIdx_flag <= io_query_1_req_bits_uop_lqIdx_flag; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_15_lqIdx_flag <= _GEN_3266;
      end
    end else begin
      uop_15_lqIdx_flag <= _GEN_3266;
    end
    if (acceptedVec_1) begin // @[LoadQueueRAR.scala 122:40]
      if (4'hf == enqIndexVec_1) begin // @[LoadQueueRAR.scala 139:21]
        uop_15_lqIdx_value <= io_query_1_req_bits_uop_lqIdx_value; // @[LoadQueueRAR.scala 139:21]
      end else begin
        uop_15_lqIdx_value <= _GEN_3282;
      end
    end else begin
      uop_15_lqIdx_value <= _GEN_3282;
    end
    release2Cycle_valid <= io_release_valid; // @[LoadQueueRAR.scala 93:30]
    release2Cycle_bits_paddr <= io_release_bits_paddr; // @[LoadQueueRAR.scala 93:30]
    lastCanAccept_0 <= needEnqueue_0 & io_query_0_req_ready; // @[LoadQueueRAR.scala 122:26]
    lastCanAccept_1 <= needEnqueue_1 & io_query_1_req_ready; // @[LoadQueueRAR.scala 122:26]
    lastAllocIndex_0 <= freeList_io_allocateSlot_0; // @[LoadQueueRAR.scala 106:25 121:20]
    if (needEnqueue_0) begin // @[LoadQueueRAR.scala 121:20]
      lastAllocIndex_1 <= freeList_io_allocateSlot_1; // @[LoadQueueRAR.scala 121:20]
    end else begin
      lastAllocIndex_1 <= _T_1;
    end
    allocatedUInt <= {allocatedUInt_hi,allocatedUInt_lo}; // @[LoadQueueRAR.scala 189:41]
    io_query_0_resp_valid_REG <= io_query_0_req_valid; // @[LoadQueueRAR.scala 194:32]
    matchMask_REG <= {matchMask_hi,matchMask_lo}; // @[LoadQueueRAR.scala 198:69]
    matchMask_REG_1 <= {matchMask_hi_1,matchMask_lo_1}; // @[LoadQueueRAR.scala 199:40]
    ldLdViolationMask_REG <= {ldLdViolationMask_hi,ldLdViolationMask_lo}; // @[LoadQueueRAR.scala 201:67]
    io_query_1_resp_valid_REG <= io_query_1_req_valid; // @[LoadQueueRAR.scala 194:32]
    matchMask_REG_2 <= {matchMask_hi_2,matchMask_lo_2}; // @[LoadQueueRAR.scala 198:69]
    matchMask_REG_3 <= {matchMask_hi_3,matchMask_lo_3}; // @[LoadQueueRAR.scala 199:40]
    ldLdViolationMask_REG_1 <= {ldLdViolationMask_hi,ldLdViolationMask_lo}; // @[LoadQueueRAR.scala 201:67]
    REG <= paddrModule_io_releaseMmask_1_0 & allocated_0 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_1 <= paddrModule_io_releaseMmask_1_1 & allocated_1 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_2 <= paddrModule_io_releaseMmask_1_2 & allocated_2 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_3 <= paddrModule_io_releaseMmask_1_3 & allocated_3 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_4 <= paddrModule_io_releaseMmask_1_4 & allocated_4 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_5 <= paddrModule_io_releaseMmask_1_5 & allocated_5 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_6 <= paddrModule_io_releaseMmask_1_6 & allocated_6 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_7 <= paddrModule_io_releaseMmask_1_7 & allocated_7 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_8 <= paddrModule_io_releaseMmask_1_8 & allocated_8 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_9 <= paddrModule_io_releaseMmask_1_9 & allocated_9 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_10 <= paddrModule_io_releaseMmask_1_10 & allocated_10 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_11 <= paddrModule_io_releaseMmask_1_11 & allocated_11 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_12 <= paddrModule_io_releaseMmask_1_12 & allocated_12 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_13 <= paddrModule_io_releaseMmask_1_13 & allocated_13 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_14 <= paddrModule_io_releaseMmask_1_14 & allocated_14 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    REG_15 <= paddrModule_io_releaseMmask_1_15 & allocated_15 & io_release_valid; // @[LoadQueueRAR.scala 215:82]
    io_perf_0_value_REG <= _canEnqCount_T + _canEnqCount_T_1; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _ldLdViolationCount_T + _ldLdViolationCount_T_1; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_0 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h0 == lastAllocIndex_1) begin
        allocated_0 <= 1'h0;
      end else begin
        allocated_0 <= _GEN_7130;
      end
    end else begin
      allocated_0 <= _GEN_7130;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_1 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h1 == lastAllocIndex_1) begin
        allocated_1 <= 1'h0;
      end else begin
        allocated_1 <= _GEN_7131;
      end
    end else begin
      allocated_1 <= _GEN_7131;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_2 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h2 == lastAllocIndex_1) begin
        allocated_2 <= 1'h0;
      end else begin
        allocated_2 <= _GEN_7132;
      end
    end else begin
      allocated_2 <= _GEN_7132;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_3 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h3 == lastAllocIndex_1) begin
        allocated_3 <= 1'h0;
      end else begin
        allocated_3 <= _GEN_7133;
      end
    end else begin
      allocated_3 <= _GEN_7133;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_4 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h4 == lastAllocIndex_1) begin
        allocated_4 <= 1'h0;
      end else begin
        allocated_4 <= _GEN_7134;
      end
    end else begin
      allocated_4 <= _GEN_7134;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_5 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h5 == lastAllocIndex_1) begin
        allocated_5 <= 1'h0;
      end else begin
        allocated_5 <= _GEN_7135;
      end
    end else begin
      allocated_5 <= _GEN_7135;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_6 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h6 == lastAllocIndex_1) begin
        allocated_6 <= 1'h0;
      end else begin
        allocated_6 <= _GEN_7136;
      end
    end else begin
      allocated_6 <= _GEN_7136;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_7 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h7 == lastAllocIndex_1) begin
        allocated_7 <= 1'h0;
      end else begin
        allocated_7 <= _GEN_7137;
      end
    end else begin
      allocated_7 <= _GEN_7137;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_8 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h8 == lastAllocIndex_1) begin
        allocated_8 <= 1'h0;
      end else begin
        allocated_8 <= _GEN_7138;
      end
    end else begin
      allocated_8 <= _GEN_7138;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_9 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'h9 == lastAllocIndex_1) begin
        allocated_9 <= 1'h0;
      end else begin
        allocated_9 <= _GEN_7139;
      end
    end else begin
      allocated_9 <= _GEN_7139;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_10 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'ha == lastAllocIndex_1) begin
        allocated_10 <= 1'h0;
      end else begin
        allocated_10 <= _GEN_7140;
      end
    end else begin
      allocated_10 <= _GEN_7140;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_11 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'hb == lastAllocIndex_1) begin
        allocated_11 <= 1'h0;
      end else begin
        allocated_11 <= _GEN_7141;
      end
    end else begin
      allocated_11 <= _GEN_7141;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_12 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'hc == lastAllocIndex_1) begin
        allocated_12 <= 1'h0;
      end else begin
        allocated_12 <= _GEN_7142;
      end
    end else begin
      allocated_12 <= _GEN_7142;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_13 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'hd == lastAllocIndex_1) begin
        allocated_13 <= 1'h0;
      end else begin
        allocated_13 <= _GEN_7143;
      end
    end else begin
      allocated_13 <= _GEN_7143;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_14 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'he == lastAllocIndex_1) begin
        allocated_14 <= 1'h0;
      end else begin
        allocated_14 <= _GEN_7144;
      end
    end else begin
      allocated_14 <= _GEN_7144;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 175:50]
      allocated_15 <= 1'h0; // @[LoadQueueRAR.scala 176:{30,30}]
    end else if (_GEN_7177 & revokeValid_1) begin
      if (4'hf == lastAllocIndex_1) begin
        allocated_15 <= 1'h0;
      end else begin
        allocated_15 <= _GEN_7145;
      end
    end else begin
      allocated_15 <= _GEN_7145;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_0 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_0 <= REG | _GEN_7034;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_1 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_1 <= REG_1 | _GEN_7035;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_2 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_2 <= REG_2 | _GEN_7036;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_3 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_3 <= REG_3 | _GEN_7037;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_4 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_4 <= REG_4 | _GEN_7038;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_5 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_5 <= REG_5 | _GEN_7039;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_6 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_6 <= REG_6 | _GEN_7040;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_7 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_7 <= REG_7 | _GEN_7041;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_8 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_8 <= REG_8 | _GEN_7042;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_9 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_9 <= REG_9 | _GEN_7043;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_10 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_10 <= REG_10 | _GEN_7044;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_11 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_11 <= REG_11 | _GEN_7045;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_12 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_12 <= REG_12 | _GEN_7046;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_13 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_13 <= REG_13 | _GEN_7047;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_14 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_14 <= REG_14 | _GEN_7048;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueRAR.scala 215:107]
      released_15 <= 1'h0; // @[LoadQueueRAR.scala 218:19]
    end else begin
      released_15 <= REG_15 | _GEN_7049;
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
  allocated_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  allocated_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  allocated_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  allocated_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  uop_0_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  uop_0_robIdx_value = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  uop_0_lqIdx_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  uop_0_lqIdx_value = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  uop_1_robIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  uop_1_lqIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_1_lqIdx_value = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  uop_2_lqIdx_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  uop_2_lqIdx_value = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  uop_3_lqIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  uop_3_lqIdx_value = _RAND_31[3:0];
  _RAND_32 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_33[4:0];
  _RAND_34 = {1{`RANDOM}};
  uop_4_lqIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  uop_4_lqIdx_value = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  uop_5_lqIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  uop_5_lqIdx_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  uop_6_lqIdx_flag = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  uop_6_lqIdx_value = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  uop_7_lqIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  uop_7_lqIdx_value = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  uop_8_robIdx_flag = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  uop_8_robIdx_value = _RAND_49[4:0];
  _RAND_50 = {1{`RANDOM}};
  uop_8_lqIdx_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  uop_8_lqIdx_value = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  uop_9_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  uop_9_robIdx_value = _RAND_53[4:0];
  _RAND_54 = {1{`RANDOM}};
  uop_9_lqIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  uop_9_lqIdx_value = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  uop_10_robIdx_flag = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  uop_10_robIdx_value = _RAND_57[4:0];
  _RAND_58 = {1{`RANDOM}};
  uop_10_lqIdx_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  uop_10_lqIdx_value = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  uop_11_robIdx_flag = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  uop_11_robIdx_value = _RAND_61[4:0];
  _RAND_62 = {1{`RANDOM}};
  uop_11_lqIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  uop_11_lqIdx_value = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  uop_12_robIdx_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  uop_12_robIdx_value = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  uop_12_lqIdx_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  uop_12_lqIdx_value = _RAND_67[3:0];
  _RAND_68 = {1{`RANDOM}};
  uop_13_robIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  uop_13_robIdx_value = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  uop_13_lqIdx_flag = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  uop_13_lqIdx_value = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  uop_14_robIdx_flag = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  uop_14_robIdx_value = _RAND_73[4:0];
  _RAND_74 = {1{`RANDOM}};
  uop_14_lqIdx_flag = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  uop_14_lqIdx_value = _RAND_75[3:0];
  _RAND_76 = {1{`RANDOM}};
  uop_15_robIdx_flag = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  uop_15_robIdx_value = _RAND_77[4:0];
  _RAND_78 = {1{`RANDOM}};
  uop_15_lqIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  uop_15_lqIdx_value = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  released_0 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  released_1 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  released_2 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  released_3 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  released_4 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  released_5 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  released_6 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  released_7 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  released_8 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  released_9 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  released_10 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  released_11 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  released_12 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  released_13 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  released_14 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  released_15 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  release2Cycle_valid = _RAND_96[0:0];
  _RAND_97 = {2{`RANDOM}};
  release2Cycle_bits_paddr = _RAND_97[35:0];
  _RAND_98 = {1{`RANDOM}};
  lastCanAccept_0 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  lastCanAccept_1 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  lastAllocIndex_0 = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  lastAllocIndex_1 = _RAND_101[3:0];
  _RAND_102 = {1{`RANDOM}};
  allocatedUInt = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  io_query_0_resp_valid_REG = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  matchMask_REG = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  matchMask_REG_1 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  ldLdViolationMask_REG = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  io_query_1_resp_valid_REG = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  matchMask_REG_2 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  matchMask_REG_3 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  ldLdViolationMask_REG_1 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  REG = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  REG_1 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  REG_2 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  REG_3 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  REG_4 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  REG_5 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  REG_6 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  REG_7 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  REG_8 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  REG_9 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  REG_10 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  REG_11 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  REG_12 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  REG_13 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  REG_14 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  REG_15 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_130[1:0];
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
    allocated_12 = 1'h0;
  end
  if (reset) begin
    allocated_13 = 1'h0;
  end
  if (reset) begin
    allocated_14 = 1'h0;
  end
  if (reset) begin
    allocated_15 = 1'h0;
  end
  if (reset) begin
    released_0 = 1'h0;
  end
  if (reset) begin
    released_1 = 1'h0;
  end
  if (reset) begin
    released_2 = 1'h0;
  end
  if (reset) begin
    released_3 = 1'h0;
  end
  if (reset) begin
    released_4 = 1'h0;
  end
  if (reset) begin
    released_5 = 1'h0;
  end
  if (reset) begin
    released_6 = 1'h0;
  end
  if (reset) begin
    released_7 = 1'h0;
  end
  if (reset) begin
    released_8 = 1'h0;
  end
  if (reset) begin
    released_9 = 1'h0;
  end
  if (reset) begin
    released_10 = 1'h0;
  end
  if (reset) begin
    released_11 = 1'h0;
  end
  if (reset) begin
    released_12 = 1'h0;
  end
  if (reset) begin
    released_13 = 1'h0;
  end
  if (reset) begin
    released_14 = 1'h0;
  end
  if (reset) begin
    released_15 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

