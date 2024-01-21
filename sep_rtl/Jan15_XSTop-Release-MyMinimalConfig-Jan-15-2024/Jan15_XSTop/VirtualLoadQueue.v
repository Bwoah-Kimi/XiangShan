module VirtualLoadQueue(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  output       io_enq_canAccept,
  input        io_enq_sqCanAccept,
  input        io_enq_needAlloc_0,
  input        io_enq_needAlloc_1,
  input        io_enq_needAlloc_2,
  input        io_enq_req_0_valid,
  input        io_enq_req_0_bits_robIdx_flag,
  input  [4:0] io_enq_req_0_bits_robIdx_value,
  input  [3:0] io_enq_req_0_bits_lqIdx_value,
  input        io_enq_req_1_valid,
  input        io_enq_req_1_bits_robIdx_flag,
  input  [4:0] io_enq_req_1_bits_robIdx_value,
  input  [3:0] io_enq_req_1_bits_lqIdx_value,
  input        io_enq_req_2_valid,
  input        io_enq_req_2_bits_robIdx_flag,
  input  [4:0] io_enq_req_2_bits_robIdx_value,
  input  [3:0] io_enq_req_2_bits_lqIdx_value,
  input        io_enq_req_3_valid,
  input        io_enq_req_3_bits_robIdx_flag,
  input  [4:0] io_enq_req_3_bits_robIdx_value,
  input  [3:0] io_enq_req_3_bits_lqIdx_value,
  output       io_enq_resp_0_flag,
  output [3:0] io_enq_resp_0_value,
  output       io_enq_resp_1_flag,
  output [3:0] io_enq_resp_1_value,
  output       io_enq_resp_2_flag,
  output [3:0] io_enq_resp_2_value,
  output       io_enq_resp_3_flag,
  output [3:0] io_enq_resp_3_value,
  input        io_ldin_0_valid,
  input        io_ldin_0_bits_uop_cf_exceptionVec_4,
  input        io_ldin_0_bits_uop_cf_exceptionVec_5,
  input        io_ldin_0_bits_uop_cf_exceptionVec_13,
  input  [3:0] io_ldin_0_bits_uop_lqIdx_value,
  input        io_ldin_0_bits_miss,
  input        io_ldin_0_bits_tlbMiss,
  input        io_ldin_0_bits_mmio,
  input        io_ldin_0_bits_dcacheRequireReplay,
  input        io_ldin_0_bits_rep_info_cause_0,
  input        io_ldin_0_bits_rep_info_cause_1,
  input        io_ldin_0_bits_rep_info_cause_2,
  input        io_ldin_0_bits_rep_info_cause_3,
  input        io_ldin_0_bits_rep_info_cause_4,
  input        io_ldin_0_bits_rep_info_cause_5,
  input        io_ldin_0_bits_rep_info_cause_6,
  input        io_ldin_0_bits_rep_info_cause_7,
  input        io_ldin_0_bits_rep_info_cause_8,
  input        io_ldin_0_bits_rep_info_cause_9,
  input        io_ldin_1_valid,
  input        io_ldin_1_bits_uop_cf_exceptionVec_4,
  input        io_ldin_1_bits_uop_cf_exceptionVec_5,
  input        io_ldin_1_bits_uop_cf_exceptionVec_13,
  input  [3:0] io_ldin_1_bits_uop_lqIdx_value,
  input        io_ldin_1_bits_miss,
  input        io_ldin_1_bits_tlbMiss,
  input        io_ldin_1_bits_mmio,
  input        io_ldin_1_bits_dcacheRequireReplay,
  input        io_ldin_1_bits_rep_info_cause_0,
  input        io_ldin_1_bits_rep_info_cause_1,
  input        io_ldin_1_bits_rep_info_cause_2,
  input        io_ldin_1_bits_rep_info_cause_3,
  input        io_ldin_1_bits_rep_info_cause_4,
  input        io_ldin_1_bits_rep_info_cause_5,
  input        io_ldin_1_bits_rep_info_cause_6,
  input        io_ldin_1_bits_rep_info_cause_7,
  input        io_ldin_1_bits_rep_info_cause_8,
  input        io_ldin_1_bits_rep_info_cause_9,
  output       io_ldWbPtr_flag,
  output [3:0] io_ldWbPtr_value,
  output       io_lqEmpty,
  output [1:0] io_lqDeq,
  output [4:0] io_lqCancelCnt
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
`endif // RANDOMIZE_REG_INIT
  reg  allocated_0; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_1; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_2; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_3; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_4; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_5; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_6; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_7; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_8; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_9; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_10; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_11; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_12; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_13; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_14; // @[VirtualLoadQueue.scala 59:26]
  reg  allocated_15; // @[VirtualLoadQueue.scala 59:26]
  reg  uop_0_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_0_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_1_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_1_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_2_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_2_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_3_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_3_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_4_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_4_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_5_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_5_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_6_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_6_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_7_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_7_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_8_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_8_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_9_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_9_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_10_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_10_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_11_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_11_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_12_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_12_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_13_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_13_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_14_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_14_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  uop_15_robIdx_flag; // @[VirtualLoadQueue.scala 60:16]
  reg [4:0] uop_15_robIdx_value; // @[VirtualLoadQueue.scala 60:16]
  reg  addrvalid_0; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_1; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_2; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_3; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_4; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_5; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_6; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_7; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_8; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_9; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_10; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_11; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_12; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_13; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_14; // @[VirtualLoadQueue.scala 61:26]
  reg  addrvalid_15; // @[VirtualLoadQueue.scala 61:26]
  reg  datavalid_0; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_1; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_2; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_3; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_4; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_5; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_6; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_7; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_8; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_9; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_10; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_11; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_12; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_13; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_14; // @[VirtualLoadQueue.scala 62:26]
  reg  datavalid_15; // @[VirtualLoadQueue.scala 62:26]
  reg  enqPtrExt_0_flag; // @[VirtualLoadQueue.scala 71:26]
  reg [3:0] enqPtrExt_0_value; // @[VirtualLoadQueue.scala 71:26]
  reg  enqPtrExt_1_flag; // @[VirtualLoadQueue.scala 71:26]
  reg [3:0] enqPtrExt_1_value; // @[VirtualLoadQueue.scala 71:26]
  reg  enqPtrExt_2_flag; // @[VirtualLoadQueue.scala 71:26]
  reg [3:0] enqPtrExt_2_value; // @[VirtualLoadQueue.scala 71:26]
  reg  enqPtrExt_3_flag; // @[VirtualLoadQueue.scala 71:26]
  reg [3:0] enqPtrExt_3_value; // @[VirtualLoadQueue.scala 71:26]
  reg  lastCycleRedirect_valid; // @[VirtualLoadQueue.scala 79:34]
  reg  lastLastCycleRedirect_valid; // @[VirtualLoadQueue.scala 80:38]
  reg  deqPtr_rflag; // @[Reg.scala 28:20]
  reg [3:0] deqPtr_rvalue; // @[Reg.scala 28:20]
  wire [3:0] _validCount_T_2 = enqPtrExt_0_value - deqPtr_rvalue; // @[CircularQueuePtr.scala 105:21]
  wire [4:0] _GEN_27611 = {{1'd0}, enqPtrExt_0_value}; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _validCount_T_4 = 5'h10 + _GEN_27611; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _GEN_27612 = {{1'd0}, deqPtr_rvalue}; // @[CircularQueuePtr.scala 106:41]
  wire [4:0] _validCount_T_6 = _validCount_T_4 - _GEN_27612; // @[CircularQueuePtr.scala 106:41]
  wire [4:0] validCount = enqPtrExt_0_flag == deqPtr_rflag ? {{1'd0}, _validCount_T_2} : _validCount_T_6; // @[CircularQueuePtr.scala 104:8]
  wire [5:0] _needCancel_flushItself_T_1 = {uop_0_robIdx_flag,uop_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _needCancel_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _needCancel_flushItself_T_3 = _needCancel_flushItself_T_1 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself = io_redirect_bits_level & _needCancel_flushItself_T_3; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag = uop_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare = uop_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T = needCancel_differentFlag ^ needCancel_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_2 = io_redirect_valid & (needCancel_flushItself | _needCancel_T); // @[Rob.scala 143:20]
  wire  needCancel_0 = _needCancel_T_2 & allocated_0; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_5 = {uop_1_robIdx_flag,uop_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_7 = _needCancel_flushItself_T_5 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_1 = io_redirect_bits_level & _needCancel_flushItself_T_7; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_1 = uop_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_1 = uop_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_4 = needCancel_differentFlag_1 ^ needCancel_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_6 = io_redirect_valid & (needCancel_flushItself_1 | _needCancel_T_4); // @[Rob.scala 143:20]
  wire  needCancel_1 = _needCancel_T_6 & allocated_1; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_9 = {uop_2_robIdx_flag,uop_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_11 = _needCancel_flushItself_T_9 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_2 = io_redirect_bits_level & _needCancel_flushItself_T_11; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_2 = uop_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_2 = uop_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_8 = needCancel_differentFlag_2 ^ needCancel_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_10 = io_redirect_valid & (needCancel_flushItself_2 | _needCancel_T_8); // @[Rob.scala 143:20]
  wire  needCancel_2 = _needCancel_T_10 & allocated_2; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_13 = {uop_3_robIdx_flag,uop_3_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_15 = _needCancel_flushItself_T_13 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_3 = io_redirect_bits_level & _needCancel_flushItself_T_15; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_3 = uop_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_3 = uop_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_12 = needCancel_differentFlag_3 ^ needCancel_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_14 = io_redirect_valid & (needCancel_flushItself_3 | _needCancel_T_12); // @[Rob.scala 143:20]
  wire  needCancel_3 = _needCancel_T_14 & allocated_3; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_17 = {uop_4_robIdx_flag,uop_4_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_19 = _needCancel_flushItself_T_17 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_4 = io_redirect_bits_level & _needCancel_flushItself_T_19; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_4 = uop_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_4 = uop_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_16 = needCancel_differentFlag_4 ^ needCancel_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_18 = io_redirect_valid & (needCancel_flushItself_4 | _needCancel_T_16); // @[Rob.scala 143:20]
  wire  needCancel_4 = _needCancel_T_18 & allocated_4; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_21 = {uop_5_robIdx_flag,uop_5_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_23 = _needCancel_flushItself_T_21 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_5 = io_redirect_bits_level & _needCancel_flushItself_T_23; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_5 = uop_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_5 = uop_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_20 = needCancel_differentFlag_5 ^ needCancel_compare_5; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_22 = io_redirect_valid & (needCancel_flushItself_5 | _needCancel_T_20); // @[Rob.scala 143:20]
  wire  needCancel_5 = _needCancel_T_22 & allocated_5; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_25 = {uop_6_robIdx_flag,uop_6_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_27 = _needCancel_flushItself_T_25 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_6 = io_redirect_bits_level & _needCancel_flushItself_T_27; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_6 = uop_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_6 = uop_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_24 = needCancel_differentFlag_6 ^ needCancel_compare_6; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_26 = io_redirect_valid & (needCancel_flushItself_6 | _needCancel_T_24); // @[Rob.scala 143:20]
  wire  needCancel_6 = _needCancel_T_26 & allocated_6; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_29 = {uop_7_robIdx_flag,uop_7_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_31 = _needCancel_flushItself_T_29 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_7 = io_redirect_bits_level & _needCancel_flushItself_T_31; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_7 = uop_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_7 = uop_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_28 = needCancel_differentFlag_7 ^ needCancel_compare_7; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_30 = io_redirect_valid & (needCancel_flushItself_7 | _needCancel_T_28); // @[Rob.scala 143:20]
  wire  needCancel_7 = _needCancel_T_30 & allocated_7; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_33 = {uop_8_robIdx_flag,uop_8_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_35 = _needCancel_flushItself_T_33 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_8 = io_redirect_bits_level & _needCancel_flushItself_T_35; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_8 = uop_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_8 = uop_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_32 = needCancel_differentFlag_8 ^ needCancel_compare_8; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_34 = io_redirect_valid & (needCancel_flushItself_8 | _needCancel_T_32); // @[Rob.scala 143:20]
  wire  needCancel_8 = _needCancel_T_34 & allocated_8; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_37 = {uop_9_robIdx_flag,uop_9_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_39 = _needCancel_flushItself_T_37 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_9 = io_redirect_bits_level & _needCancel_flushItself_T_39; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_9 = uop_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_9 = uop_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_36 = needCancel_differentFlag_9 ^ needCancel_compare_9; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_38 = io_redirect_valid & (needCancel_flushItself_9 | _needCancel_T_36); // @[Rob.scala 143:20]
  wire  needCancel_9 = _needCancel_T_38 & allocated_9; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_41 = {uop_10_robIdx_flag,uop_10_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_43 = _needCancel_flushItself_T_41 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_10 = io_redirect_bits_level & _needCancel_flushItself_T_43; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_10 = uop_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_10 = uop_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_40 = needCancel_differentFlag_10 ^ needCancel_compare_10; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_42 = io_redirect_valid & (needCancel_flushItself_10 | _needCancel_T_40); // @[Rob.scala 143:20]
  wire  needCancel_10 = _needCancel_T_42 & allocated_10; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_45 = {uop_11_robIdx_flag,uop_11_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_47 = _needCancel_flushItself_T_45 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_11 = io_redirect_bits_level & _needCancel_flushItself_T_47; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_11 = uop_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_11 = uop_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_44 = needCancel_differentFlag_11 ^ needCancel_compare_11; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_46 = io_redirect_valid & (needCancel_flushItself_11 | _needCancel_T_44); // @[Rob.scala 143:20]
  wire  needCancel_11 = _needCancel_T_46 & allocated_11; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_49 = {uop_12_robIdx_flag,uop_12_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_51 = _needCancel_flushItself_T_49 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_12 = io_redirect_bits_level & _needCancel_flushItself_T_51; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_12 = uop_12_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_12 = uop_12_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_48 = needCancel_differentFlag_12 ^ needCancel_compare_12; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_50 = io_redirect_valid & (needCancel_flushItself_12 | _needCancel_T_48); // @[Rob.scala 143:20]
  wire  needCancel_12 = _needCancel_T_50 & allocated_12; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_53 = {uop_13_robIdx_flag,uop_13_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_55 = _needCancel_flushItself_T_53 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_13 = io_redirect_bits_level & _needCancel_flushItself_T_55; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_13 = uop_13_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_13 = uop_13_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_52 = needCancel_differentFlag_13 ^ needCancel_compare_13; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_54 = io_redirect_valid & (needCancel_flushItself_13 | _needCancel_T_52); // @[Rob.scala 143:20]
  wire  needCancel_13 = _needCancel_T_54 & allocated_13; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_57 = {uop_14_robIdx_flag,uop_14_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_59 = _needCancel_flushItself_T_57 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_14 = io_redirect_bits_level & _needCancel_flushItself_T_59; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_14 = uop_14_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_14 = uop_14_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_56 = needCancel_differentFlag_14 ^ needCancel_compare_14; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_58 = io_redirect_valid & (needCancel_flushItself_14 | _needCancel_T_56); // @[Rob.scala 143:20]
  wire  needCancel_14 = _needCancel_T_58 & allocated_14; // @[VirtualLoadQueue.scala 86:42]
  wire [5:0] _needCancel_flushItself_T_61 = {uop_15_robIdx_flag,uop_15_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _needCancel_flushItself_T_63 = _needCancel_flushItself_T_61 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  needCancel_flushItself_15 = io_redirect_bits_level & _needCancel_flushItself_T_63; // @[Rob.scala 142:51]
  wire  needCancel_differentFlag_15 = uop_15_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  needCancel_compare_15 = uop_15_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _needCancel_T_60 = needCancel_differentFlag_15 ^ needCancel_compare_15; // @[CircularQueuePtr.scala 68:19]
  wire  _needCancel_T_62 = io_redirect_valid & (needCancel_flushItself_15 | _needCancel_T_60); // @[Rob.scala 143:20]
  wire  needCancel_15 = _needCancel_T_62 & allocated_15; // @[VirtualLoadQueue.scala 86:42]
  reg  lastNeedCancel_0; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_1; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_2; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_3; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_4; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_5; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_6; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_7; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_8; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_9; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_10; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_11; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_12; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_13; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_14; // @[VirtualLoadQueue.scala 88:31]
  reg  lastNeedCancel_15; // @[VirtualLoadQueue.scala 88:31]
  wire [5:0] _enqCancel_flushItself_T_1 = {io_enq_req_0_bits_robIdx_flag,io_enq_req_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_3 = _enqCancel_flushItself_T_1 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself = io_redirect_bits_level & _enqCancel_flushItself_T_3; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag = io_enq_req_0_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare = io_enq_req_0_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T = enqCancel_differentFlag ^ enqCancel_compare; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_0 = io_redirect_valid & (enqCancel_flushItself | _enqCancel_T); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_5 = {io_enq_req_1_bits_robIdx_flag,io_enq_req_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_7 = _enqCancel_flushItself_T_5 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_1 = io_redirect_bits_level & _enqCancel_flushItself_T_7; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_1 = io_enq_req_1_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_1 = io_enq_req_1_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_2 = enqCancel_differentFlag_1 ^ enqCancel_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_1 = io_redirect_valid & (enqCancel_flushItself_1 | _enqCancel_T_2); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_9 = {io_enq_req_2_bits_robIdx_flag,io_enq_req_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_11 = _enqCancel_flushItself_T_9 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_2 = io_redirect_bits_level & _enqCancel_flushItself_T_11; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_2 = io_enq_req_2_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_2 = io_enq_req_2_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_4 = enqCancel_differentFlag_2 ^ enqCancel_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_2 = io_redirect_valid & (enqCancel_flushItself_2 | _enqCancel_T_4); // @[Rob.scala 143:20]
  wire [5:0] _enqCancel_flushItself_T_13 = {io_enq_req_3_bits_robIdx_flag,io_enq_req_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _enqCancel_flushItself_T_15 = _enqCancel_flushItself_T_13 == _needCancel_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  enqCancel_flushItself_3 = io_redirect_bits_level & _enqCancel_flushItself_T_15; // @[Rob.scala 142:51]
  wire  enqCancel_differentFlag_3 = io_enq_req_3_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  enqCancel_compare_3 = io_enq_req_3_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _enqCancel_T_6 = enqCancel_differentFlag_3 ^ enqCancel_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  enqCancel_3 = io_redirect_valid & (enqCancel_flushItself_3 | _enqCancel_T_6); // @[Rob.scala 143:20]
  reg  lastEnqCancel_REG_0; // @[VirtualLoadQueue.scala 90:39]
  reg  lastEnqCancel_REG_1; // @[VirtualLoadQueue.scala 90:39]
  reg  lastEnqCancel_REG_2; // @[VirtualLoadQueue.scala 90:39]
  reg  lastEnqCancel_REG_3; // @[VirtualLoadQueue.scala 90:39]
  wire [1:0] _lastEnqCancel_T_4 = lastEnqCancel_REG_0 + lastEnqCancel_REG_1; // @[Bitwise.scala 48:55]
  wire [1:0] _lastEnqCancel_T_6 = lastEnqCancel_REG_2 + lastEnqCancel_REG_3; // @[Bitwise.scala 48:55]
  wire [2:0] lastEnqCancel = _lastEnqCancel_T_4 + _lastEnqCancel_T_6; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T = lastNeedCancel_0 + lastNeedCancel_1; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_2 = lastNeedCancel_2 + lastNeedCancel_3; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_4 = _lastCycleCancelCount_T + _lastCycleCancelCount_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_6 = lastNeedCancel_4 + lastNeedCancel_5; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_8 = lastNeedCancel_6 + lastNeedCancel_7; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_10 = _lastCycleCancelCount_T_6 + _lastCycleCancelCount_T_8; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_12 = _lastCycleCancelCount_T_4 + _lastCycleCancelCount_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_14 = lastNeedCancel_8 + lastNeedCancel_9; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_16 = lastNeedCancel_10 + lastNeedCancel_11; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_18 = _lastCycleCancelCount_T_14 + _lastCycleCancelCount_T_16; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_20 = lastNeedCancel_12 + lastNeedCancel_13; // @[Bitwise.scala 48:55]
  wire [1:0] _lastCycleCancelCount_T_22 = lastNeedCancel_14 + lastNeedCancel_15; // @[Bitwise.scala 48:55]
  wire [2:0] _lastCycleCancelCount_T_24 = _lastCycleCancelCount_T_20 + _lastCycleCancelCount_T_22; // @[Bitwise.scala 48:55]
  wire [3:0] _lastCycleCancelCount_T_26 = _lastCycleCancelCount_T_18 + _lastCycleCancelCount_T_24; // @[Bitwise.scala 48:55]
  wire [4:0] lastCycleCancelCount = _lastCycleCancelCount_T_12 + _lastCycleCancelCount_T_26; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_27613 = {{2'd0}, lastEnqCancel}; // @[VirtualLoadQueue.scala 92:67]
  wire [4:0] _redirectCancelCount_T_1 = lastCycleCancelCount + _GEN_27613; // @[VirtualLoadQueue.scala 92:67]
  reg [4:0] redirectCancelCount; // @[Reg.scala 28:20]
  wire [1:0] _enqNumber_T_1 = io_enq_req_0_valid + io_enq_req_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _enqNumber_T_3 = io_enq_req_2_valid + io_enq_req_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _enqNumber_T_5 = _enqNumber_T_1 + _enqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [2:0] enqNumber = io_enq_canAccept & io_enq_sqCanAccept ? _enqNumber_T_5 : 3'h0; // @[VirtualLoadQueue.scala 95:22]
  wire [4:0] _flipped_new_ptr_T_1 = 5'h10 - redirectCancelCount; // @[CircularQueuePtr.scala 54:50]
  wire [4:0] _flipped_new_ptr_new_ptr_T = {enqPtrExt_0_flag,enqPtrExt_0_value}; // @[Cat.scala 31:58]
  wire [4:0] _flipped_new_ptr_new_ptr_T_2 = _flipped_new_ptr_new_ptr_T + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] flipped_new_ptr_value = _flipped_new_ptr_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  flipped_new_ptr_flag = _flipped_new_ptr_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_flag = ~flipped_new_ptr_flag; // @[CircularQueuePtr.scala 56:21]
  wire [4:0] _flipped_new_ptr_new_ptr_T_5 = {enqPtrExt_1_flag,enqPtrExt_1_value}; // @[Cat.scala 31:58]
  wire [4:0] _flipped_new_ptr_new_ptr_T_7 = _flipped_new_ptr_new_ptr_T_5 + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] flipped_new_ptr_1_value = _flipped_new_ptr_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  flipped_new_ptr_1_flag = _flipped_new_ptr_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_1_flag = ~flipped_new_ptr_1_flag; // @[CircularQueuePtr.scala 56:21]
  wire [4:0] _flipped_new_ptr_new_ptr_T_10 = {enqPtrExt_2_flag,enqPtrExt_2_value}; // @[Cat.scala 31:58]
  wire [4:0] _flipped_new_ptr_new_ptr_T_12 = _flipped_new_ptr_new_ptr_T_10 + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] flipped_new_ptr_2_value = _flipped_new_ptr_new_ptr_T_12[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  flipped_new_ptr_2_flag = _flipped_new_ptr_new_ptr_T_12[4]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_2_flag = ~flipped_new_ptr_2_flag; // @[CircularQueuePtr.scala 56:21]
  wire [4:0] _flipped_new_ptr_new_ptr_T_15 = {enqPtrExt_3_flag,enqPtrExt_3_value}; // @[Cat.scala 31:58]
  wire [4:0] _flipped_new_ptr_new_ptr_T_17 = _flipped_new_ptr_new_ptr_T_15 + _flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] flipped_new_ptr_3_value = _flipped_new_ptr_new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  flipped_new_ptr_3_flag = _flipped_new_ptr_new_ptr_T_17[4]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_3_flag = ~flipped_new_ptr_3_flag; // @[CircularQueuePtr.scala 56:21]
  wire [4:0] _GEN_27614 = {{2'd0}, enqNumber}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _new_ptr_T_2 = _flipped_new_ptr_new_ptr_T + _GEN_27614; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_4_value = _new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_4_flag = _new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_7 = _flipped_new_ptr_new_ptr_T_5 + _GEN_27614; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_5_value = _new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_5_flag = _new_ptr_T_7[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_12 = _flipped_new_ptr_new_ptr_T_10 + _GEN_27614; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_6_value = _new_ptr_T_12[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_6_flag = _new_ptr_T_12[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_17 = _flipped_new_ptr_new_ptr_T_15 + _GEN_27614; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_7_value = _new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_7_flag = _new_ptr_T_17[4]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrExtNextVec_0_flag = lastLastCycleRedirect_valid ? new_ptr_flag : new_ptr_4_flag; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
  wire [3:0] enqPtrExtNextVec_0_value = lastLastCycleRedirect_valid ? flipped_new_ptr_value : new_ptr_4_value; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
  wire [4:0] _deqPtrNext_new_ptr_T = {deqPtr_rflag,deqPtr_rvalue}; // @[Cat.scala 31:58]
  reg [1:0] lastCommitCount; // @[VirtualLoadQueue.scala 123:32]
  wire [4:0] _GEN_27618 = {{3'd0}, lastCommitCount}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _deqPtrNext_new_ptr_T_2 = _deqPtrNext_new_ptr_T + _GEN_27618; // @[CircularQueuePtr.scala 39:46]
  wire  deqPtrNext_new_ptr_flag = _deqPtrNext_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire  differentFlag = enqPtrExtNextVec_0_flag ^ deqPtrNext_new_ptr_flag; // @[CircularQueuePtr.scala 66:35]
  wire [3:0] deqPtrNext_new_ptr_value = _deqPtrNext_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  compare = enqPtrExtNextVec_0_value > deqPtrNext_new_ptr_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_6 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire [4:0] _new_ptr_T_20 = {deqPtrNext_new_ptr_flag,deqPtrNext_new_ptr_value}; // @[Cat.scala 31:58]
  wire [5:0] _new_ptr_T_21 = {{1'd0}, _new_ptr_T_20}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_8_value = _new_ptr_T_21[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_8_flag = _new_ptr_T_21[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_27 = _new_ptr_T_20 + 5'h1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_9_value = _new_ptr_T_27[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_9_flag = _new_ptr_T_27[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_32 = _new_ptr_T_20 + 5'h2; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_10_value = _new_ptr_T_32[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_10_flag = _new_ptr_T_32[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_37 = _new_ptr_T_20 + 5'h3; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_11_value = _new_ptr_T_37[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_11_flag = _new_ptr_T_37[4]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _deqLookupVec_new_ptr_T_1 = {{1'd0}, _deqPtrNext_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] deqLookupVec_new_ptr_value = _deqLookupVec_new_ptr_T_1[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqLookupVec_new_ptr_flag = _deqLookupVec_new_ptr_T_1[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _deqLookupVec_new_ptr_T_7 = _deqPtrNext_new_ptr_T + 5'h1; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] deqLookupVec_new_ptr_1_value = _deqLookupVec_new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqLookupVec_new_ptr_1_flag = _deqLookupVec_new_ptr_T_7[4]; // @[CircularQueuePtr.scala 39:59]
  wire  _GEN_18 = 4'h1 == deqLookupVec_new_ptr_value ? allocated_1 : allocated_0; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_19 = 4'h2 == deqLookupVec_new_ptr_value ? allocated_2 : _GEN_18; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_20 = 4'h3 == deqLookupVec_new_ptr_value ? allocated_3 : _GEN_19; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_21 = 4'h4 == deqLookupVec_new_ptr_value ? allocated_4 : _GEN_20; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_22 = 4'h5 == deqLookupVec_new_ptr_value ? allocated_5 : _GEN_21; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_23 = 4'h6 == deqLookupVec_new_ptr_value ? allocated_6 : _GEN_22; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_24 = 4'h7 == deqLookupVec_new_ptr_value ? allocated_7 : _GEN_23; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_25 = 4'h8 == deqLookupVec_new_ptr_value ? allocated_8 : _GEN_24; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_26 = 4'h9 == deqLookupVec_new_ptr_value ? allocated_9 : _GEN_25; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_27 = 4'ha == deqLookupVec_new_ptr_value ? allocated_10 : _GEN_26; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_28 = 4'hb == deqLookupVec_new_ptr_value ? allocated_11 : _GEN_27; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_29 = 4'hc == deqLookupVec_new_ptr_value ? allocated_12 : _GEN_28; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_30 = 4'hd == deqLookupVec_new_ptr_value ? allocated_13 : _GEN_29; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_31 = 4'he == deqLookupVec_new_ptr_value ? allocated_14 : _GEN_30; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_32 = 4'hf == deqLookupVec_new_ptr_value ? allocated_15 : _GEN_31; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_34 = 4'h1 == deqLookupVec_new_ptr_value ? datavalid_1 : datavalid_0; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_35 = 4'h2 == deqLookupVec_new_ptr_value ? datavalid_2 : _GEN_34; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_36 = 4'h3 == deqLookupVec_new_ptr_value ? datavalid_3 : _GEN_35; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_37 = 4'h4 == deqLookupVec_new_ptr_value ? datavalid_4 : _GEN_36; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_38 = 4'h5 == deqLookupVec_new_ptr_value ? datavalid_5 : _GEN_37; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_39 = 4'h6 == deqLookupVec_new_ptr_value ? datavalid_6 : _GEN_38; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_40 = 4'h7 == deqLookupVec_new_ptr_value ? datavalid_7 : _GEN_39; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_41 = 4'h8 == deqLookupVec_new_ptr_value ? datavalid_8 : _GEN_40; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_42 = 4'h9 == deqLookupVec_new_ptr_value ? datavalid_9 : _GEN_41; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_43 = 4'ha == deqLookupVec_new_ptr_value ? datavalid_10 : _GEN_42; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_44 = 4'hb == deqLookupVec_new_ptr_value ? datavalid_11 : _GEN_43; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_45 = 4'hc == deqLookupVec_new_ptr_value ? datavalid_12 : _GEN_44; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_46 = 4'hd == deqLookupVec_new_ptr_value ? datavalid_13 : _GEN_45; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_47 = 4'he == deqLookupVec_new_ptr_value ? datavalid_14 : _GEN_46; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_48 = 4'hf == deqLookupVec_new_ptr_value ? datavalid_15 : _GEN_47; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_50 = 4'h1 == deqLookupVec_new_ptr_value ? addrvalid_1 : addrvalid_0; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_51 = 4'h2 == deqLookupVec_new_ptr_value ? addrvalid_2 : _GEN_50; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_52 = 4'h3 == deqLookupVec_new_ptr_value ? addrvalid_3 : _GEN_51; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_53 = 4'h4 == deqLookupVec_new_ptr_value ? addrvalid_4 : _GEN_52; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_54 = 4'h5 == deqLookupVec_new_ptr_value ? addrvalid_5 : _GEN_53; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_55 = 4'h6 == deqLookupVec_new_ptr_value ? addrvalid_6 : _GEN_54; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_56 = 4'h7 == deqLookupVec_new_ptr_value ? addrvalid_7 : _GEN_55; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_57 = 4'h8 == deqLookupVec_new_ptr_value ? addrvalid_8 : _GEN_56; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_58 = 4'h9 == deqLookupVec_new_ptr_value ? addrvalid_9 : _GEN_57; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_59 = 4'ha == deqLookupVec_new_ptr_value ? addrvalid_10 : _GEN_58; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_60 = 4'hb == deqLookupVec_new_ptr_value ? addrvalid_11 : _GEN_59; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_61 = 4'hc == deqLookupVec_new_ptr_value ? addrvalid_12 : _GEN_60; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_62 = 4'hd == deqLookupVec_new_ptr_value ? addrvalid_13 : _GEN_61; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_63 = 4'he == deqLookupVec_new_ptr_value ? addrvalid_14 : _GEN_62; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_64 = 4'hf == deqLookupVec_new_ptr_value ? addrvalid_15 : _GEN_63; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire [4:0] _deqLookup_T_2 = {deqLookupVec_new_ptr_flag,deqLookupVec_new_ptr_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _deqLookup_T_4 = _deqLookup_T_2 != _flipped_new_ptr_new_ptr_T; // @[CircularQueuePtr.scala 63:47]
  wire  deqLookup_0 = _GEN_32 & _GEN_48 & _GEN_64 & _deqLookup_T_4; // @[VirtualLoadQueue.scala 117:120]
  wire  _GEN_66 = 4'h1 == deqLookupVec_new_ptr_1_value ? allocated_1 : allocated_0; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_67 = 4'h2 == deqLookupVec_new_ptr_1_value ? allocated_2 : _GEN_66; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_68 = 4'h3 == deqLookupVec_new_ptr_1_value ? allocated_3 : _GEN_67; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_69 = 4'h4 == deqLookupVec_new_ptr_1_value ? allocated_4 : _GEN_68; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_70 = 4'h5 == deqLookupVec_new_ptr_1_value ? allocated_5 : _GEN_69; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_71 = 4'h6 == deqLookupVec_new_ptr_1_value ? allocated_6 : _GEN_70; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_72 = 4'h7 == deqLookupVec_new_ptr_1_value ? allocated_7 : _GEN_71; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_73 = 4'h8 == deqLookupVec_new_ptr_1_value ? allocated_8 : _GEN_72; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_74 = 4'h9 == deqLookupVec_new_ptr_1_value ? allocated_9 : _GEN_73; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_75 = 4'ha == deqLookupVec_new_ptr_1_value ? allocated_10 : _GEN_74; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_76 = 4'hb == deqLookupVec_new_ptr_1_value ? allocated_11 : _GEN_75; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_77 = 4'hc == deqLookupVec_new_ptr_1_value ? allocated_12 : _GEN_76; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_78 = 4'hd == deqLookupVec_new_ptr_1_value ? allocated_13 : _GEN_77; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_79 = 4'he == deqLookupVec_new_ptr_1_value ? allocated_14 : _GEN_78; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_80 = 4'hf == deqLookupVec_new_ptr_1_value ? allocated_15 : _GEN_79; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_82 = 4'h1 == deqLookupVec_new_ptr_1_value ? datavalid_1 : datavalid_0; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_83 = 4'h2 == deqLookupVec_new_ptr_1_value ? datavalid_2 : _GEN_82; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_84 = 4'h3 == deqLookupVec_new_ptr_1_value ? datavalid_3 : _GEN_83; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_85 = 4'h4 == deqLookupVec_new_ptr_1_value ? datavalid_4 : _GEN_84; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_86 = 4'h5 == deqLookupVec_new_ptr_1_value ? datavalid_5 : _GEN_85; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_87 = 4'h6 == deqLookupVec_new_ptr_1_value ? datavalid_6 : _GEN_86; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_88 = 4'h7 == deqLookupVec_new_ptr_1_value ? datavalid_7 : _GEN_87; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_89 = 4'h8 == deqLookupVec_new_ptr_1_value ? datavalid_8 : _GEN_88; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_90 = 4'h9 == deqLookupVec_new_ptr_1_value ? datavalid_9 : _GEN_89; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_91 = 4'ha == deqLookupVec_new_ptr_1_value ? datavalid_10 : _GEN_90; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_92 = 4'hb == deqLookupVec_new_ptr_1_value ? datavalid_11 : _GEN_91; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_93 = 4'hc == deqLookupVec_new_ptr_1_value ? datavalid_12 : _GEN_92; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_94 = 4'hd == deqLookupVec_new_ptr_1_value ? datavalid_13 : _GEN_93; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_95 = 4'he == deqLookupVec_new_ptr_1_value ? datavalid_14 : _GEN_94; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_96 = 4'hf == deqLookupVec_new_ptr_1_value ? datavalid_15 : _GEN_95; // @[VirtualLoadQueue.scala 117:{72,72}]
  wire  _GEN_98 = 4'h1 == deqLookupVec_new_ptr_1_value ? addrvalid_1 : addrvalid_0; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_99 = 4'h2 == deqLookupVec_new_ptr_1_value ? addrvalid_2 : _GEN_98; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_100 = 4'h3 == deqLookupVec_new_ptr_1_value ? addrvalid_3 : _GEN_99; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_101 = 4'h4 == deqLookupVec_new_ptr_1_value ? addrvalid_4 : _GEN_100; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_102 = 4'h5 == deqLookupVec_new_ptr_1_value ? addrvalid_5 : _GEN_101; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_103 = 4'h6 == deqLookupVec_new_ptr_1_value ? addrvalid_6 : _GEN_102; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_104 = 4'h7 == deqLookupVec_new_ptr_1_value ? addrvalid_7 : _GEN_103; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_105 = 4'h8 == deqLookupVec_new_ptr_1_value ? addrvalid_8 : _GEN_104; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_106 = 4'h9 == deqLookupVec_new_ptr_1_value ? addrvalid_9 : _GEN_105; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_107 = 4'ha == deqLookupVec_new_ptr_1_value ? addrvalid_10 : _GEN_106; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_108 = 4'hb == deqLookupVec_new_ptr_1_value ? addrvalid_11 : _GEN_107; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_109 = 4'hc == deqLookupVec_new_ptr_1_value ? addrvalid_12 : _GEN_108; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_110 = 4'hd == deqLookupVec_new_ptr_1_value ? addrvalid_13 : _GEN_109; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_111 = 4'he == deqLookupVec_new_ptr_1_value ? addrvalid_14 : _GEN_110; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire  _GEN_112 = 4'hf == deqLookupVec_new_ptr_1_value ? addrvalid_15 : _GEN_111; // @[VirtualLoadQueue.scala 117:{96,96}]
  wire [4:0] _deqLookup_T_8 = {deqLookupVec_new_ptr_1_flag,deqLookupVec_new_ptr_1_value}; // @[CircularQueuePtr.scala 63:40]
  wire  _deqLookup_T_10 = _deqLookup_T_8 != _flipped_new_ptr_new_ptr_T; // @[CircularQueuePtr.scala 63:47]
  wire  deqLookup_1 = _GEN_80 & _GEN_96 & _GEN_112 & _deqLookup_T_10; // @[VirtualLoadQueue.scala 117:120]
  wire  _GEN_114 = 4'h1 == deqLookupVec_new_ptr_value ? needCancel_1 : needCancel_0; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_115 = 4'h2 == deqLookupVec_new_ptr_value ? needCancel_2 : _GEN_114; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_116 = 4'h3 == deqLookupVec_new_ptr_value ? needCancel_3 : _GEN_115; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_117 = 4'h4 == deqLookupVec_new_ptr_value ? needCancel_4 : _GEN_116; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_118 = 4'h5 == deqLookupVec_new_ptr_value ? needCancel_5 : _GEN_117; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_119 = 4'h6 == deqLookupVec_new_ptr_value ? needCancel_6 : _GEN_118; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_120 = 4'h7 == deqLookupVec_new_ptr_value ? needCancel_7 : _GEN_119; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_121 = 4'h8 == deqLookupVec_new_ptr_value ? needCancel_8 : _GEN_120; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_122 = 4'h9 == deqLookupVec_new_ptr_value ? needCancel_9 : _GEN_121; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_123 = 4'ha == deqLookupVec_new_ptr_value ? needCancel_10 : _GEN_122; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_124 = 4'hb == deqLookupVec_new_ptr_value ? needCancel_11 : _GEN_123; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_125 = 4'hc == deqLookupVec_new_ptr_value ? needCancel_12 : _GEN_124; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_126 = 4'hd == deqLookupVec_new_ptr_value ? needCancel_13 : _GEN_125; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_127 = 4'he == deqLookupVec_new_ptr_value ? needCancel_14 : _GEN_126; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  deqInSameRedirectCycle_0 = 4'hf == deqLookupVec_new_ptr_value ? needCancel_15 : _GEN_127; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_130 = 4'h1 == deqLookupVec_new_ptr_1_value ? needCancel_1 : needCancel_0; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_131 = 4'h2 == deqLookupVec_new_ptr_1_value ? needCancel_2 : _GEN_130; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_132 = 4'h3 == deqLookupVec_new_ptr_1_value ? needCancel_3 : _GEN_131; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_133 = 4'h4 == deqLookupVec_new_ptr_1_value ? needCancel_4 : _GEN_132; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_134 = 4'h5 == deqLookupVec_new_ptr_1_value ? needCancel_5 : _GEN_133; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_135 = 4'h6 == deqLookupVec_new_ptr_1_value ? needCancel_6 : _GEN_134; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_136 = 4'h7 == deqLookupVec_new_ptr_1_value ? needCancel_7 : _GEN_135; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_137 = 4'h8 == deqLookupVec_new_ptr_1_value ? needCancel_8 : _GEN_136; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_138 = 4'h9 == deqLookupVec_new_ptr_1_value ? needCancel_9 : _GEN_137; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_139 = 4'ha == deqLookupVec_new_ptr_1_value ? needCancel_10 : _GEN_138; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_140 = 4'hb == deqLookupVec_new_ptr_1_value ? needCancel_11 : _GEN_139; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_141 = 4'hc == deqLookupVec_new_ptr_1_value ? needCancel_12 : _GEN_140; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_142 = 4'hd == deqLookupVec_new_ptr_1_value ? needCancel_13 : _GEN_141; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  _GEN_143 = 4'he == deqLookupVec_new_ptr_1_value ? needCancel_14 : _GEN_142; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire  deqInSameRedirectCycle_1 = 4'hf == deqLookupVec_new_ptr_1_value ? needCancel_15 : _GEN_143; // @[VirtualLoadQueue.scala 118:{39,39}]
  wire [1:0] _deqCountMask_T = {deqLookup_1,deqLookup_0}; // @[VirtualLoadQueue.scala 121:29]
  wire [1:0] _deqCountMask_T_1 = {deqInSameRedirectCycle_1,deqInSameRedirectCycle_0}; // @[VirtualLoadQueue.scala 121:62]
  wire [1:0] _deqCountMask_T_2 = ~_deqCountMask_T_1; // @[VirtualLoadQueue.scala 121:38]
  wire [1:0] deqCountMask = _deqCountMask_T & _deqCountMask_T_2; // @[VirtualLoadQueue.scala 121:36]
  wire [1:0] _commitCount_T = ~deqCountMask; // @[VirtualLoadQueue.scala 122:48]
  wire [1:0] _commitCount_T_3 = _commitCount_T[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] _commitCount_T_4 = _commitCount_T[0] ? 2'h1 : _commitCount_T_3; // @[Mux.scala 47:70]
  wire [1:0] _commitCount_T_6 = _commitCount_T_4 - 2'h1; // @[VirtualLoadQueue.scala 122:63]
  wire [1:0] commitCount = _commitCount_T_6[0] + _commitCount_T_6[1]; // @[Bitwise.scala 48:55]
  wire  deqPtrUpdateEna = lastCommitCount != 2'h0; // @[VirtualLoadQueue.scala 128:41]
  reg [1:0] io_lqDeq_REG; // @[VirtualLoadQueue.scala 132:22]
  reg  io_lqEmpty_REG; // @[VirtualLoadQueue.scala 135:24]
  wire  _GEN_147 = 4'h0 == io_enq_req_0_bits_lqIdx_value | allocated_0; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_148 = 4'h1 == io_enq_req_0_bits_lqIdx_value | allocated_1; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_149 = 4'h2 == io_enq_req_0_bits_lqIdx_value | allocated_2; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_150 = 4'h3 == io_enq_req_0_bits_lqIdx_value | allocated_3; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_151 = 4'h4 == io_enq_req_0_bits_lqIdx_value | allocated_4; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_152 = 4'h5 == io_enq_req_0_bits_lqIdx_value | allocated_5; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_153 = 4'h6 == io_enq_req_0_bits_lqIdx_value | allocated_6; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_154 = 4'h7 == io_enq_req_0_bits_lqIdx_value | allocated_7; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_155 = 4'h8 == io_enq_req_0_bits_lqIdx_value | allocated_8; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_156 = 4'h9 == io_enq_req_0_bits_lqIdx_value | allocated_9; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_157 = 4'ha == io_enq_req_0_bits_lqIdx_value | allocated_10; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_158 = 4'hb == io_enq_req_0_bits_lqIdx_value | allocated_11; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_159 = 4'hc == io_enq_req_0_bits_lqIdx_value | allocated_12; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_160 = 4'hd == io_enq_req_0_bits_lqIdx_value | allocated_13; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_161 = 4'he == io_enq_req_0_bits_lqIdx_value | allocated_14; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_162 = 4'hf == io_enq_req_0_bits_lqIdx_value | allocated_15; // @[VirtualLoadQueue.scala 148:{24,24} 59:26]
  wire  _GEN_1603 = 4'h0 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_0_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1604 = 4'h1 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_1_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1605 = 4'h2 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_2_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1606 = 4'h3 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_3_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1607 = 4'h4 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_4_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1608 = 4'h5 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_5_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1609 = 4'h6 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_6_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1610 = 4'h7 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_7_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1611 = 4'h8 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_8_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1612 = 4'h9 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_9_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1613 = 4'ha == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_10_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1614 = 4'hb == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_11_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1615 = 4'hc == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_12_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1616 = 4'hd == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_13_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1617 = 4'he == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_14_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1618 = 4'hf == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_flag : uop_15_robIdx_flag; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1619 = 4'h0 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_0_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1620 = 4'h1 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_1_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1621 = 4'h2 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_2_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1622 = 4'h3 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_3_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1623 = 4'h4 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_4_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1624 = 4'h5 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_5_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1625 = 4'h6 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_6_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1626 = 4'h7 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_7_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1627 = 4'h8 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_8_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1628 = 4'h9 == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_9_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1629 = 4'ha == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_10_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1630 = 4'hb == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_11_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1631 = 4'hc == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_12_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1632 = 4'hd == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_13_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1633 = 4'he == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_14_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire [4:0] _GEN_1634 = 4'hf == io_enq_req_0_bits_lqIdx_value ? io_enq_req_0_bits_robIdx_value : uop_15_robIdx_value; // @[VirtualLoadQueue.scala 149:{18,18} 60:16]
  wire  _GEN_1923 = 4'h0 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_0; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1924 = 4'h1 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_1; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1925 = 4'h2 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_2; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1926 = 4'h3 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_3; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1927 = 4'h4 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_4; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1928 = 4'h5 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_5; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1929 = 4'h6 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_6; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1930 = 4'h7 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_7; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1931 = 4'h8 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_8; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1932 = 4'h9 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_9; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1933 = 4'ha == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_10; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1934 = 4'hb == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_11; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1935 = 4'hc == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_12; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1936 = 4'hd == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_13; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1937 = 4'he == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_14; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1938 = 4'hf == io_enq_req_0_bits_lqIdx_value ? 1'h0 : addrvalid_15; // @[VirtualLoadQueue.scala 153:{24,24} 61:26]
  wire  _GEN_1939 = 4'h0 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_0; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1940 = 4'h1 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_1; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1941 = 4'h2 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_2; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1942 = 4'h3 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_3; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1943 = 4'h4 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_4; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1944 = 4'h5 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_5; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1945 = 4'h6 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_6; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1946 = 4'h7 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_7; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1947 = 4'h8 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_8; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1948 = 4'h9 == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_9; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1949 = 4'ha == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_10; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1950 = 4'hb == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_11; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1951 = 4'hc == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_12; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1952 = 4'hd == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_13; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1953 = 4'he == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_14; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1954 = 4'hf == io_enq_req_0_bits_lqIdx_value ? 1'h0 : datavalid_15; // @[VirtualLoadQueue.scala 154:{24,24} 62:26]
  wire  _GEN_1987 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_147 : allocated_0; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1988 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_148 : allocated_1; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1989 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_149 : allocated_2; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1990 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_150 : allocated_3; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1991 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_151 : allocated_4; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1992 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_152 : allocated_5; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1993 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_153 : allocated_6; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1994 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_154 : allocated_7; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1995 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_155 : allocated_8; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1996 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_156 : allocated_9; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1997 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_157 : allocated_10; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1998 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_158 : allocated_11; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_1999 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_159 : allocated_12; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_2000 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_160 : allocated_13; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_2001 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_161 : allocated_14; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_2002 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_162 : allocated_15; // @[VirtualLoadQueue.scala 147:43 59:26]
  wire  _GEN_3443 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1603 : uop_0_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3444 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1604 : uop_1_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3445 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1605 : uop_2_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3446 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1606 : uop_3_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3447 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1607 : uop_4_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3448 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1608 : uop_5_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3449 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1609 : uop_6_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3450 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1610 : uop_7_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3451 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1611 : uop_8_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3452 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1612 : uop_9_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3453 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1613 : uop_10_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3454 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1614 : uop_11_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3455 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1615 : uop_12_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3456 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1616 : uop_13_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3457 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1617 : uop_14_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3458 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1618 : uop_15_robIdx_flag; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3459 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1619 : uop_0_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3460 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1620 : uop_1_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3461 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1621 : uop_2_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3462 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1622 : uop_3_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3463 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1623 : uop_4_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3464 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1624 : uop_5_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3465 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1625 : uop_6_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3466 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1626 : uop_7_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3467 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1627 : uop_8_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3468 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1628 : uop_9_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3469 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1629 : uop_10_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3470 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1630 : uop_11_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3471 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1631 : uop_12_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3472 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1632 : uop_13_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3473 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1633 : uop_14_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire [4:0] _GEN_3474 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1634 : uop_15_robIdx_value; // @[VirtualLoadQueue.scala 147:43 60:16]
  wire  _GEN_3731 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1923 : addrvalid_0; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3732 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1924 : addrvalid_1; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3733 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1925 : addrvalid_2; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3734 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1926 : addrvalid_3; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3735 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1927 : addrvalid_4; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3736 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1928 : addrvalid_5; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3737 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1929 : addrvalid_6; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3738 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1930 : addrvalid_7; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3739 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1931 : addrvalid_8; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3740 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1932 : addrvalid_9; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3741 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1933 : addrvalid_10; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3742 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1934 : addrvalid_11; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3743 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1935 : addrvalid_12; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3744 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1936 : addrvalid_13; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3745 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1937 : addrvalid_14; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3746 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1938 : addrvalid_15; // @[VirtualLoadQueue.scala 147:43 61:26]
  wire  _GEN_3747 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1939 : datavalid_0; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3748 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1940 : datavalid_1; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3749 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1941 : datavalid_2; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3750 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1942 : datavalid_3; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3751 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1943 : datavalid_4; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3752 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1944 : datavalid_5; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3753 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1945 : datavalid_6; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3754 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1946 : datavalid_7; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3755 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1947 : datavalid_8; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3756 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1948 : datavalid_9; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3757 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1949 : datavalid_10; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3758 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1950 : datavalid_11; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3759 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1951 : datavalid_12; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3760 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1952 : datavalid_13; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3761 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1953 : datavalid_14; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3762 = io_enq_req_0_valid & ~enqCancel_0 ? _GEN_1954 : datavalid_15; // @[VirtualLoadQueue.scala 147:43 62:26]
  wire  _GEN_3795 = 4'h0 == io_enq_req_1_bits_lqIdx_value | _GEN_1987; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3796 = 4'h1 == io_enq_req_1_bits_lqIdx_value | _GEN_1988; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3797 = 4'h2 == io_enq_req_1_bits_lqIdx_value | _GEN_1989; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3798 = 4'h3 == io_enq_req_1_bits_lqIdx_value | _GEN_1990; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3799 = 4'h4 == io_enq_req_1_bits_lqIdx_value | _GEN_1991; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3800 = 4'h5 == io_enq_req_1_bits_lqIdx_value | _GEN_1992; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3801 = 4'h6 == io_enq_req_1_bits_lqIdx_value | _GEN_1993; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3802 = 4'h7 == io_enq_req_1_bits_lqIdx_value | _GEN_1994; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3803 = 4'h8 == io_enq_req_1_bits_lqIdx_value | _GEN_1995; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3804 = 4'h9 == io_enq_req_1_bits_lqIdx_value | _GEN_1996; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3805 = 4'ha == io_enq_req_1_bits_lqIdx_value | _GEN_1997; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3806 = 4'hb == io_enq_req_1_bits_lqIdx_value | _GEN_1998; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3807 = 4'hc == io_enq_req_1_bits_lqIdx_value | _GEN_1999; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3808 = 4'hd == io_enq_req_1_bits_lqIdx_value | _GEN_2000; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3809 = 4'he == io_enq_req_1_bits_lqIdx_value | _GEN_2001; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_3810 = 4'hf == io_enq_req_1_bits_lqIdx_value | _GEN_2002; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_5251 = 4'h0 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3443; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5252 = 4'h1 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3444; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5253 = 4'h2 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3445; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5254 = 4'h3 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3446; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5255 = 4'h4 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3447; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5256 = 4'h5 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3448; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5257 = 4'h6 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3449; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5258 = 4'h7 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3450; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5259 = 4'h8 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3451; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5260 = 4'h9 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3452; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5261 = 4'ha == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3453; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5262 = 4'hb == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3454; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5263 = 4'hc == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3455; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5264 = 4'hd == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3456; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5265 = 4'he == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3457; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5266 = 4'hf == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_flag : _GEN_3458; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5267 = 4'h0 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3459; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5268 = 4'h1 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3460; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5269 = 4'h2 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3461; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5270 = 4'h3 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3462; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5271 = 4'h4 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3463; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5272 = 4'h5 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3464; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5273 = 4'h6 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3465; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5274 = 4'h7 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3466; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5275 = 4'h8 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3467; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5276 = 4'h9 == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3468; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5277 = 4'ha == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3469; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5278 = 4'hb == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3470; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5279 = 4'hc == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3471; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5280 = 4'hd == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3472; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5281 = 4'he == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3473; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_5282 = 4'hf == io_enq_req_1_bits_lqIdx_value ? io_enq_req_1_bits_robIdx_value : _GEN_3474; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_5556 = io_enq_needAlloc_0 ? enqPtrExt_1_flag : enqPtrExt_0_flag; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [1:0] _GEN_27651 = {{1'd0}, io_enq_needAlloc_0}; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_5557 = 2'h2 == _GEN_27651 ? enqPtrExt_2_flag : _GEN_5556; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_5576 = io_enq_needAlloc_0 ? enqPtrExt_1_value : enqPtrExt_0_value; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_5577 = 2'h2 == _GEN_27651 ? enqPtrExt_2_value : _GEN_5576; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_5579 = 4'h0 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3731; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5580 = 4'h1 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3732; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5581 = 4'h2 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3733; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5582 = 4'h3 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3734; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5583 = 4'h4 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3735; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5584 = 4'h5 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3736; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5585 = 4'h6 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3737; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5586 = 4'h7 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3738; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5587 = 4'h8 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3739; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5588 = 4'h9 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3740; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5589 = 4'ha == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3741; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5590 = 4'hb == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3742; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5591 = 4'hc == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3743; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5592 = 4'hd == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3744; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5593 = 4'he == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3745; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5594 = 4'hf == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3746; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_5595 = 4'h0 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3747; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5596 = 4'h1 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3748; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5597 = 4'h2 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3749; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5598 = 4'h3 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3750; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5599 = 4'h4 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3751; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5600 = 4'h5 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3752; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5601 = 4'h6 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3753; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5602 = 4'h7 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3754; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5603 = 4'h8 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3755; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5604 = 4'h9 == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3756; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5605 = 4'ha == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3757; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5606 = 4'hb == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3758; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5607 = 4'hc == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3759; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5608 = 4'hd == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3760; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5609 = 4'he == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3761; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5610 = 4'hf == io_enq_req_1_bits_lqIdx_value ? 1'h0 : _GEN_3762; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_5643 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3795 : _GEN_1987; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5644 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3796 : _GEN_1988; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5645 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3797 : _GEN_1989; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5646 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3798 : _GEN_1990; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5647 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3799 : _GEN_1991; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5648 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3800 : _GEN_1992; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5649 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3801 : _GEN_1993; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5650 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3802 : _GEN_1994; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5651 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3803 : _GEN_1995; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5652 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3804 : _GEN_1996; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5653 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3805 : _GEN_1997; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5654 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3806 : _GEN_1998; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5655 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3807 : _GEN_1999; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5656 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3808 : _GEN_2000; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5657 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3809 : _GEN_2001; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_5658 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_3810 : _GEN_2002; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7099 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5251 : _GEN_3443; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7100 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5252 : _GEN_3444; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7101 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5253 : _GEN_3445; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7102 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5254 : _GEN_3446; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7103 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5255 : _GEN_3447; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7104 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5256 : _GEN_3448; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7105 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5257 : _GEN_3449; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7106 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5258 : _GEN_3450; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7107 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5259 : _GEN_3451; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7108 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5260 : _GEN_3452; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7109 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5261 : _GEN_3453; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7110 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5262 : _GEN_3454; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7111 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5263 : _GEN_3455; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7112 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5264 : _GEN_3456; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7113 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5265 : _GEN_3457; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7114 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5266 : _GEN_3458; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7115 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5267 : _GEN_3459; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7116 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5268 : _GEN_3460; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7117 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5269 : _GEN_3461; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7118 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5270 : _GEN_3462; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7119 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5271 : _GEN_3463; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7120 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5272 : _GEN_3464; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7121 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5273 : _GEN_3465; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7122 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5274 : _GEN_3466; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7123 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5275 : _GEN_3467; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7124 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5276 : _GEN_3468; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7125 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5277 : _GEN_3469; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7126 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5278 : _GEN_3470; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7127 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5279 : _GEN_3471; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7128 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5280 : _GEN_3472; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7129 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5281 : _GEN_3473; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_7130 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5282 : _GEN_3474; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7387 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5579 : _GEN_3731; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7388 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5580 : _GEN_3732; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7389 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5581 : _GEN_3733; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7390 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5582 : _GEN_3734; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7391 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5583 : _GEN_3735; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7392 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5584 : _GEN_3736; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7393 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5585 : _GEN_3737; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7394 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5586 : _GEN_3738; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7395 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5587 : _GEN_3739; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7396 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5588 : _GEN_3740; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7397 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5589 : _GEN_3741; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7398 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5590 : _GEN_3742; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7399 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5591 : _GEN_3743; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7400 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5592 : _GEN_3744; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7401 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5593 : _GEN_3745; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7402 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5594 : _GEN_3746; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7403 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5595 : _GEN_3747; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7404 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5596 : _GEN_3748; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7405 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5597 : _GEN_3749; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7406 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5598 : _GEN_3750; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7407 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5599 : _GEN_3751; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7408 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5600 : _GEN_3752; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7409 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5601 : _GEN_3753; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7410 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5602 : _GEN_3754; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7411 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5603 : _GEN_3755; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7412 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5604 : _GEN_3756; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7413 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5605 : _GEN_3757; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7414 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5606 : _GEN_3758; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7415 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5607 : _GEN_3759; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7416 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5608 : _GEN_3760; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7417 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5609 : _GEN_3761; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_7418 = io_enq_req_1_valid & ~enqCancel_1 ? _GEN_5610 : _GEN_3762; // @[VirtualLoadQueue.scala 147:43]
  wire [1:0] offset = io_enq_needAlloc_0 + io_enq_needAlloc_1; // @[Bitwise.scala 48:55]
  wire  _GEN_7451 = 4'h0 == io_enq_req_2_bits_lqIdx_value | _GEN_5643; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7452 = 4'h1 == io_enq_req_2_bits_lqIdx_value | _GEN_5644; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7453 = 4'h2 == io_enq_req_2_bits_lqIdx_value | _GEN_5645; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7454 = 4'h3 == io_enq_req_2_bits_lqIdx_value | _GEN_5646; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7455 = 4'h4 == io_enq_req_2_bits_lqIdx_value | _GEN_5647; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7456 = 4'h5 == io_enq_req_2_bits_lqIdx_value | _GEN_5648; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7457 = 4'h6 == io_enq_req_2_bits_lqIdx_value | _GEN_5649; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7458 = 4'h7 == io_enq_req_2_bits_lqIdx_value | _GEN_5650; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7459 = 4'h8 == io_enq_req_2_bits_lqIdx_value | _GEN_5651; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7460 = 4'h9 == io_enq_req_2_bits_lqIdx_value | _GEN_5652; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7461 = 4'ha == io_enq_req_2_bits_lqIdx_value | _GEN_5653; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7462 = 4'hb == io_enq_req_2_bits_lqIdx_value | _GEN_5654; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7463 = 4'hc == io_enq_req_2_bits_lqIdx_value | _GEN_5655; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7464 = 4'hd == io_enq_req_2_bits_lqIdx_value | _GEN_5656; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7465 = 4'he == io_enq_req_2_bits_lqIdx_value | _GEN_5657; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_7466 = 4'hf == io_enq_req_2_bits_lqIdx_value | _GEN_5658; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_8907 = 4'h0 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7099; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8908 = 4'h1 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7100; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8909 = 4'h2 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7101; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8910 = 4'h3 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7102; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8911 = 4'h4 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7103; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8912 = 4'h5 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7104; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8913 = 4'h6 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7105; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8914 = 4'h7 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7106; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8915 = 4'h8 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7107; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8916 = 4'h9 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7108; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8917 = 4'ha == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7109; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8918 = 4'hb == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7110; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8919 = 4'hc == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7111; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8920 = 4'hd == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7112; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8921 = 4'he == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7113; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_8922 = 4'hf == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_flag : _GEN_7114; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8923 = 4'h0 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7115; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8924 = 4'h1 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7116; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8925 = 4'h2 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7117; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8926 = 4'h3 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7118; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8927 = 4'h4 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7119; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8928 = 4'h5 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7120; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8929 = 4'h6 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7121; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8930 = 4'h7 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7122; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8931 = 4'h8 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7123; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8932 = 4'h9 == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7124; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8933 = 4'ha == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7125; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8934 = 4'hb == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7126; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8935 = 4'hc == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7127; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8936 = 4'hd == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7128; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8937 = 4'he == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7129; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire [4:0] _GEN_8938 = 4'hf == io_enq_req_2_bits_lqIdx_value ? io_enq_req_2_bits_robIdx_value : _GEN_7130; // @[VirtualLoadQueue.scala 149:{18,18}]
  wire  _GEN_9212 = 2'h1 == offset ? enqPtrExt_1_flag : enqPtrExt_0_flag; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_9213 = 2'h2 == offset ? enqPtrExt_2_flag : _GEN_9212; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_9232 = 2'h1 == offset ? enqPtrExt_1_value : enqPtrExt_0_value; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_9233 = 2'h2 == offset ? enqPtrExt_2_value : _GEN_9232; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_9235 = 4'h0 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7387; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9236 = 4'h1 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7388; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9237 = 4'h2 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7389; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9238 = 4'h3 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7390; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9239 = 4'h4 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7391; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9240 = 4'h5 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7392; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9241 = 4'h6 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7393; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9242 = 4'h7 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7394; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9243 = 4'h8 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7395; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9244 = 4'h9 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7396; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9245 = 4'ha == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7397; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9246 = 4'hb == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7398; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9247 = 4'hc == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7399; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9248 = 4'hd == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7400; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9249 = 4'he == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7401; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9250 = 4'hf == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7402; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_9251 = 4'h0 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7403; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9252 = 4'h1 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7404; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9253 = 4'h2 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7405; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9254 = 4'h3 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7406; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9255 = 4'h4 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7407; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9256 = 4'h5 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7408; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9257 = 4'h6 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7409; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9258 = 4'h7 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7410; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9259 = 4'h8 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7411; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9260 = 4'h9 == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7412; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9261 = 4'ha == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7413; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9262 = 4'hb == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7414; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9263 = 4'hc == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7415; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9264 = 4'hd == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7416; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9265 = 4'he == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7417; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9266 = 4'hf == io_enq_req_2_bits_lqIdx_value ? 1'h0 : _GEN_7418; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_9299 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7451 : _GEN_5643; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9300 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7452 : _GEN_5644; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9301 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7453 : _GEN_5645; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9302 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7454 : _GEN_5646; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9303 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7455 : _GEN_5647; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9304 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7456 : _GEN_5648; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9305 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7457 : _GEN_5649; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9306 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7458 : _GEN_5650; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9307 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7459 : _GEN_5651; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9308 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7460 : _GEN_5652; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9309 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7461 : _GEN_5653; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9310 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7462 : _GEN_5654; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9311 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7463 : _GEN_5655; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9312 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7464 : _GEN_5656; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9313 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7465 : _GEN_5657; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_9314 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_7466 : _GEN_5658; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10755 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8907 : _GEN_7099; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10756 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8908 : _GEN_7100; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10757 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8909 : _GEN_7101; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10758 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8910 : _GEN_7102; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10759 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8911 : _GEN_7103; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10760 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8912 : _GEN_7104; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10761 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8913 : _GEN_7105; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10762 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8914 : _GEN_7106; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10763 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8915 : _GEN_7107; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10764 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8916 : _GEN_7108; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10765 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8917 : _GEN_7109; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10766 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8918 : _GEN_7110; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10767 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8919 : _GEN_7111; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10768 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8920 : _GEN_7112; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10769 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8921 : _GEN_7113; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_10770 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8922 : _GEN_7114; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10771 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8923 : _GEN_7115; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10772 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8924 : _GEN_7116; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10773 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8925 : _GEN_7117; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10774 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8926 : _GEN_7118; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10775 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8927 : _GEN_7119; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10776 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8928 : _GEN_7120; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10777 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8929 : _GEN_7121; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10778 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8930 : _GEN_7122; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10779 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8931 : _GEN_7123; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10780 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8932 : _GEN_7124; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10781 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8933 : _GEN_7125; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10782 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8934 : _GEN_7126; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10783 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8935 : _GEN_7127; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10784 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8936 : _GEN_7128; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10785 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8937 : _GEN_7129; // @[VirtualLoadQueue.scala 147:43]
  wire [4:0] _GEN_10786 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_8938 : _GEN_7130; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11043 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9235 : _GEN_7387; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11044 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9236 : _GEN_7388; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11045 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9237 : _GEN_7389; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11046 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9238 : _GEN_7390; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11047 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9239 : _GEN_7391; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11048 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9240 : _GEN_7392; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11049 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9241 : _GEN_7393; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11050 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9242 : _GEN_7394; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11051 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9243 : _GEN_7395; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11052 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9244 : _GEN_7396; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11053 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9245 : _GEN_7397; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11054 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9246 : _GEN_7398; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11055 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9247 : _GEN_7399; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11056 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9248 : _GEN_7400; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11057 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9249 : _GEN_7401; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11058 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9250 : _GEN_7402; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11059 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9251 : _GEN_7403; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11060 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9252 : _GEN_7404; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11061 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9253 : _GEN_7405; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11062 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9254 : _GEN_7406; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11063 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9255 : _GEN_7407; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11064 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9256 : _GEN_7408; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11065 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9257 : _GEN_7409; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11066 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9258 : _GEN_7410; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11067 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9259 : _GEN_7411; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11068 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9260 : _GEN_7412; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11069 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9261 : _GEN_7413; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11070 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9262 : _GEN_7414; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11071 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9263 : _GEN_7415; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11072 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9264 : _GEN_7416; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11073 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9265 : _GEN_7417; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_11074 = io_enq_req_2_valid & ~enqCancel_2 ? _GEN_9266 : _GEN_7418; // @[VirtualLoadQueue.scala 147:43]
  wire [1:0] _offset_T_1 = io_enq_needAlloc_1 + io_enq_needAlloc_2; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_T_3 = _GEN_27651 + _offset_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] offset_1 = _offset_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire  _GEN_11107 = 4'h0 == io_enq_req_3_bits_lqIdx_value | _GEN_9299; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11108 = 4'h1 == io_enq_req_3_bits_lqIdx_value | _GEN_9300; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11109 = 4'h2 == io_enq_req_3_bits_lqIdx_value | _GEN_9301; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11110 = 4'h3 == io_enq_req_3_bits_lqIdx_value | _GEN_9302; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11111 = 4'h4 == io_enq_req_3_bits_lqIdx_value | _GEN_9303; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11112 = 4'h5 == io_enq_req_3_bits_lqIdx_value | _GEN_9304; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11113 = 4'h6 == io_enq_req_3_bits_lqIdx_value | _GEN_9305; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11114 = 4'h7 == io_enq_req_3_bits_lqIdx_value | _GEN_9306; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11115 = 4'h8 == io_enq_req_3_bits_lqIdx_value | _GEN_9307; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11116 = 4'h9 == io_enq_req_3_bits_lqIdx_value | _GEN_9308; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11117 = 4'ha == io_enq_req_3_bits_lqIdx_value | _GEN_9309; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11118 = 4'hb == io_enq_req_3_bits_lqIdx_value | _GEN_9310; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11119 = 4'hc == io_enq_req_3_bits_lqIdx_value | _GEN_9311; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11120 = 4'hd == io_enq_req_3_bits_lqIdx_value | _GEN_9312; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11121 = 4'he == io_enq_req_3_bits_lqIdx_value | _GEN_9313; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_11122 = 4'hf == io_enq_req_3_bits_lqIdx_value | _GEN_9314; // @[VirtualLoadQueue.scala 148:{24,24}]
  wire  _GEN_12868 = 2'h1 == offset_1 ? enqPtrExt_1_flag : enqPtrExt_0_flag; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_12869 = 2'h2 == offset_1 ? enqPtrExt_2_flag : _GEN_12868; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_12888 = 2'h1 == offset_1 ? enqPtrExt_1_value : enqPtrExt_0_value; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire [3:0] _GEN_12889 = 2'h2 == offset_1 ? enqPtrExt_2_value : _GEN_12888; // @[VirtualLoadQueue.scala 150:{24,24}]
  wire  _GEN_12891 = 4'h0 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11043; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12892 = 4'h1 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11044; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12893 = 4'h2 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11045; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12894 = 4'h3 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11046; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12895 = 4'h4 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11047; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12896 = 4'h5 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11048; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12897 = 4'h6 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11049; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12898 = 4'h7 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11050; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12899 = 4'h8 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11051; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12900 = 4'h9 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11052; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12901 = 4'ha == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11053; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12902 = 4'hb == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11054; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12903 = 4'hc == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11055; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12904 = 4'hd == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11056; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12905 = 4'he == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11057; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12906 = 4'hf == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11058; // @[VirtualLoadQueue.scala 153:{24,24}]
  wire  _GEN_12907 = 4'h0 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11059; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12908 = 4'h1 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11060; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12909 = 4'h2 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11061; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12910 = 4'h3 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11062; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12911 = 4'h4 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11063; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12912 = 4'h5 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11064; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12913 = 4'h6 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11065; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12914 = 4'h7 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11066; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12915 = 4'h8 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11067; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12916 = 4'h9 == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11068; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12917 = 4'ha == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11069; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12918 = 4'hb == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11070; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12919 = 4'hc == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11071; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12920 = 4'hd == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11072; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12921 = 4'he == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11073; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12922 = 4'hf == io_enq_req_3_bits_lqIdx_value ? 1'h0 : _GEN_11074; // @[VirtualLoadQueue.scala 154:{24,24}]
  wire  _GEN_12955 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11107 : _GEN_9299; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12956 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11108 : _GEN_9300; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12957 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11109 : _GEN_9301; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12958 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11110 : _GEN_9302; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12959 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11111 : _GEN_9303; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12960 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11112 : _GEN_9304; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12961 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11113 : _GEN_9305; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12962 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11114 : _GEN_9306; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12963 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11115 : _GEN_9307; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12964 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11116 : _GEN_9308; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12965 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11117 : _GEN_9309; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12966 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11118 : _GEN_9310; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12967 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11119 : _GEN_9311; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12968 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11120 : _GEN_9312; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12969 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11121 : _GEN_9313; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_12970 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_11122 : _GEN_9314; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14699 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12891 : _GEN_11043; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14700 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12892 : _GEN_11044; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14701 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12893 : _GEN_11045; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14702 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12894 : _GEN_11046; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14703 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12895 : _GEN_11047; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14704 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12896 : _GEN_11048; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14705 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12897 : _GEN_11049; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14706 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12898 : _GEN_11050; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14707 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12899 : _GEN_11051; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14708 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12900 : _GEN_11052; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14709 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12901 : _GEN_11053; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14710 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12902 : _GEN_11054; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14711 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12903 : _GEN_11055; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14712 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12904 : _GEN_11056; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14713 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12905 : _GEN_11057; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14714 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12906 : _GEN_11058; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14715 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12907 : _GEN_11059; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14716 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12908 : _GEN_11060; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14717 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12909 : _GEN_11061; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14718 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12910 : _GEN_11062; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14719 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12911 : _GEN_11063; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14720 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12912 : _GEN_11064; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14721 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12913 : _GEN_11065; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14722 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12914 : _GEN_11066; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14723 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12915 : _GEN_11067; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14724 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12916 : _GEN_11068; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14725 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12917 : _GEN_11069; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14726 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12918 : _GEN_11070; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14727 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12919 : _GEN_11071; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14728 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12920 : _GEN_11072; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14729 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12921 : _GEN_11073; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14730 = io_enq_req_3_valid & ~enqCancel_3 ? _GEN_12922 : _GEN_11074; // @[VirtualLoadQueue.scala 147:43]
  wire  _GEN_14763 = 4'h0 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12955; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14764 = 4'h1 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12956; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14765 = 4'h2 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12957; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14766 = 4'h3 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12958; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14767 = 4'h4 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12959; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14768 = 4'h5 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12960; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14769 = 4'h6 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12961; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14770 = 4'h7 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12962; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14771 = 4'h8 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12963; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14772 = 4'h9 == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12964; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14773 = 4'ha == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12965; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14774 = 4'hb == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12966; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14775 = 4'hc == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12967; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14776 = 4'hd == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12968; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14777 = 4'he == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12969; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14778 = 4'hf == deqLookupVec_new_ptr_value ? 1'h0 : _GEN_12970; // @[VirtualLoadQueue.scala 172:{37,37}]
  wire  _GEN_14795 = commitCount > 2'h0 ? _GEN_14763 : _GEN_12955; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14796 = commitCount > 2'h0 ? _GEN_14764 : _GEN_12956; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14797 = commitCount > 2'h0 ? _GEN_14765 : _GEN_12957; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14798 = commitCount > 2'h0 ? _GEN_14766 : _GEN_12958; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14799 = commitCount > 2'h0 ? _GEN_14767 : _GEN_12959; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14800 = commitCount > 2'h0 ? _GEN_14768 : _GEN_12960; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14801 = commitCount > 2'h0 ? _GEN_14769 : _GEN_12961; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14802 = commitCount > 2'h0 ? _GEN_14770 : _GEN_12962; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14803 = commitCount > 2'h0 ? _GEN_14771 : _GEN_12963; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14804 = commitCount > 2'h0 ? _GEN_14772 : _GEN_12964; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14805 = commitCount > 2'h0 ? _GEN_14773 : _GEN_12965; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14806 = commitCount > 2'h0 ? _GEN_14774 : _GEN_12966; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14807 = commitCount > 2'h0 ? _GEN_14775 : _GEN_12967; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14808 = commitCount > 2'h0 ? _GEN_14776 : _GEN_12968; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14809 = commitCount > 2'h0 ? _GEN_14777 : _GEN_12969; // @[VirtualLoadQueue.scala 171:30]
  wire  _GEN_14810 = commitCount > 2'h0 ? _GEN_14778 : _GEN_12970; // @[VirtualLoadQueue.scala 171:30]
  wire [15:0] _hasExceptions_T = {2'h0,io_ldin_0_bits_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    io_ldin_0_bits_uop_cf_exceptionVec_5,io_ldin_0_bits_uop_cf_exceptionVec_4,4'h0}; // @[VirtualLoadQueue.scala 201:95]
  wire  hasExceptions = |_hasExceptions_T; // @[VirtualLoadQueue.scala 201:102]
  wire [9:0] _need_rep_T = {io_ldin_0_bits_rep_info_cause_9,io_ldin_0_bits_rep_info_cause_8,
    io_ldin_0_bits_rep_info_cause_7,io_ldin_0_bits_rep_info_cause_6,io_ldin_0_bits_rep_info_cause_5,
    io_ldin_0_bits_rep_info_cause_4,io_ldin_0_bits_rep_info_cause_3,io_ldin_0_bits_rep_info_cause_2,
    io_ldin_0_bits_rep_info_cause_1,io_ldin_0_bits_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  need_rep = |_need_rep_T; // @[LoadUnit.scala 62:36]
  wire  _GEN_14875 = 4'h0 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14699; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14876 = 4'h1 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14700; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14877 = 4'h2 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14701; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14878 = 4'h3 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14702; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14879 = 4'h4 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14703; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14880 = 4'h5 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14704; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14881 = 4'h6 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14705; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14882 = 4'h7 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14706; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14883 = 4'h8 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14707; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14884 = 4'h9 == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14708; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14885 = 4'ha == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14709; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14886 = 4'hb == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14710; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14887 = 4'hc == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14711; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14888 = 4'hd == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14712; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14889 = 4'he == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14713; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _GEN_14890 = 4'hf == io_ldin_0_bits_uop_lqIdx_value ? hasExceptions | ~io_ldin_0_bits_tlbMiss : _GEN_14714; // @[VirtualLoadQueue.scala 206:{32,32}]
  wire  _datavalid_T = hasExceptions | io_ldin_0_bits_mmio; // @[VirtualLoadQueue.scala 209:29]
  wire  _datavalid_T_2 = ~io_ldin_0_bits_dcacheRequireReplay; // @[VirtualLoadQueue.scala 212:14]
  wire  _datavalid_T_3 = ~io_ldin_0_bits_miss & _datavalid_T_2; // @[VirtualLoadQueue.scala 211:36]
  wire  _datavalid_T_4 = _datavalid_T | _datavalid_T_3; // @[VirtualLoadQueue.scala 210:36]
  wire  _GEN_14891 = 4'h0 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14715; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14892 = 4'h1 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14716; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14893 = 4'h2 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14717; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14894 = 4'h3 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14718; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14895 = 4'h4 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14719; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14896 = 4'h5 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14720; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14897 = 4'h6 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14721; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14898 = 4'h7 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14722; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14899 = 4'h8 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14723; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14900 = 4'h9 == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14724; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14901 = 4'ha == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14725; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14902 = 4'hb == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14726; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14903 = 4'hc == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14727; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14904 = 4'hd == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14728; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14905 = 4'he == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14729; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_14906 = 4'hf == io_ldin_0_bits_uop_lqIdx_value ? _datavalid_T_4 : _GEN_14730; // @[VirtualLoadQueue.scala 207:{32,32}]
  wire  _GEN_18107 = ~need_rep ? _GEN_14875 : _GEN_14699; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18108 = ~need_rep ? _GEN_14876 : _GEN_14700; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18109 = ~need_rep ? _GEN_14877 : _GEN_14701; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18110 = ~need_rep ? _GEN_14878 : _GEN_14702; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18111 = ~need_rep ? _GEN_14879 : _GEN_14703; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18112 = ~need_rep ? _GEN_14880 : _GEN_14704; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18113 = ~need_rep ? _GEN_14881 : _GEN_14705; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18114 = ~need_rep ? _GEN_14882 : _GEN_14706; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18115 = ~need_rep ? _GEN_14883 : _GEN_14707; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18116 = ~need_rep ? _GEN_14884 : _GEN_14708; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18117 = ~need_rep ? _GEN_14885 : _GEN_14709; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18118 = ~need_rep ? _GEN_14886 : _GEN_14710; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18119 = ~need_rep ? _GEN_14887 : _GEN_14711; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18120 = ~need_rep ? _GEN_14888 : _GEN_14712; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18121 = ~need_rep ? _GEN_14889 : _GEN_14713; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18122 = ~need_rep ? _GEN_14890 : _GEN_14714; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18123 = ~need_rep ? _GEN_14891 : _GEN_14715; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18124 = ~need_rep ? _GEN_14892 : _GEN_14716; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18125 = ~need_rep ? _GEN_14893 : _GEN_14717; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18126 = ~need_rep ? _GEN_14894 : _GEN_14718; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18127 = ~need_rep ? _GEN_14895 : _GEN_14719; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18128 = ~need_rep ? _GEN_14896 : _GEN_14720; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18129 = ~need_rep ? _GEN_14897 : _GEN_14721; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18130 = ~need_rep ? _GEN_14898 : _GEN_14722; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18131 = ~need_rep ? _GEN_14899 : _GEN_14723; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18132 = ~need_rep ? _GEN_14900 : _GEN_14724; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18133 = ~need_rep ? _GEN_14901 : _GEN_14725; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18134 = ~need_rep ? _GEN_14902 : _GEN_14726; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18135 = ~need_rep ? _GEN_14903 : _GEN_14727; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18136 = ~need_rep ? _GEN_14904 : _GEN_14728; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18137 = ~need_rep ? _GEN_14905 : _GEN_14729; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_18138 = ~need_rep ? _GEN_14906 : _GEN_14730; // @[VirtualLoadQueue.scala 204:24]
  wire  _GEN_19675 = io_ldin_0_valid ? _GEN_18107 : _GEN_14699; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19676 = io_ldin_0_valid ? _GEN_18108 : _GEN_14700; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19677 = io_ldin_0_valid ? _GEN_18109 : _GEN_14701; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19678 = io_ldin_0_valid ? _GEN_18110 : _GEN_14702; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19679 = io_ldin_0_valid ? _GEN_18111 : _GEN_14703; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19680 = io_ldin_0_valid ? _GEN_18112 : _GEN_14704; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19681 = io_ldin_0_valid ? _GEN_18113 : _GEN_14705; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19682 = io_ldin_0_valid ? _GEN_18114 : _GEN_14706; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19683 = io_ldin_0_valid ? _GEN_18115 : _GEN_14707; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19684 = io_ldin_0_valid ? _GEN_18116 : _GEN_14708; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19685 = io_ldin_0_valid ? _GEN_18117 : _GEN_14709; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19686 = io_ldin_0_valid ? _GEN_18118 : _GEN_14710; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19687 = io_ldin_0_valid ? _GEN_18119 : _GEN_14711; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19688 = io_ldin_0_valid ? _GEN_18120 : _GEN_14712; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19689 = io_ldin_0_valid ? _GEN_18121 : _GEN_14713; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19690 = io_ldin_0_valid ? _GEN_18122 : _GEN_14714; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19691 = io_ldin_0_valid ? _GEN_18123 : _GEN_14715; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19692 = io_ldin_0_valid ? _GEN_18124 : _GEN_14716; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19693 = io_ldin_0_valid ? _GEN_18125 : _GEN_14717; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19694 = io_ldin_0_valid ? _GEN_18126 : _GEN_14718; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19695 = io_ldin_0_valid ? _GEN_18127 : _GEN_14719; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19696 = io_ldin_0_valid ? _GEN_18128 : _GEN_14720; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19697 = io_ldin_0_valid ? _GEN_18129 : _GEN_14721; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19698 = io_ldin_0_valid ? _GEN_18130 : _GEN_14722; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19699 = io_ldin_0_valid ? _GEN_18131 : _GEN_14723; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19700 = io_ldin_0_valid ? _GEN_18132 : _GEN_14724; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19701 = io_ldin_0_valid ? _GEN_18133 : _GEN_14725; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19702 = io_ldin_0_valid ? _GEN_18134 : _GEN_14726; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19703 = io_ldin_0_valid ? _GEN_18135 : _GEN_14727; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19704 = io_ldin_0_valid ? _GEN_18136 : _GEN_14728; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19705 = io_ldin_0_valid ? _GEN_18137 : _GEN_14729; // @[VirtualLoadQueue.scala 200:29]
  wire  _GEN_19706 = io_ldin_0_valid ? _GEN_18138 : _GEN_14730; // @[VirtualLoadQueue.scala 200:29]
  wire [15:0] _hasExceptions_T_1 = {2'h0,io_ldin_1_bits_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    io_ldin_1_bits_uop_cf_exceptionVec_5,io_ldin_1_bits_uop_cf_exceptionVec_4,4'h0}; // @[VirtualLoadQueue.scala 201:95]
  wire  hasExceptions_1 = |_hasExceptions_T_1; // @[VirtualLoadQueue.scala 201:102]
  wire [9:0] _need_rep_T_1 = {io_ldin_1_bits_rep_info_cause_9,io_ldin_1_bits_rep_info_cause_8,
    io_ldin_1_bits_rep_info_cause_7,io_ldin_1_bits_rep_info_cause_6,io_ldin_1_bits_rep_info_cause_5,
    io_ldin_1_bits_rep_info_cause_4,io_ldin_1_bits_rep_info_cause_3,io_ldin_1_bits_rep_info_cause_2,
    io_ldin_1_bits_rep_info_cause_1,io_ldin_1_bits_rep_info_cause_0}; // @[LoadUnit.scala 62:29]
  wire  need_rep_1 = |_need_rep_T_1; // @[LoadUnit.scala 62:36]
  wire  _datavalid_T_5 = hasExceptions_1 | io_ldin_1_bits_mmio; // @[VirtualLoadQueue.scala 209:29]
  wire  _datavalid_T_7 = ~io_ldin_1_bits_dcacheRequireReplay; // @[VirtualLoadQueue.scala 212:14]
  wire  _datavalid_T_8 = ~io_ldin_1_bits_miss & _datavalid_T_7; // @[VirtualLoadQueue.scala 211:36]
  wire  _datavalid_T_9 = _datavalid_T_5 | _datavalid_T_8; // @[VirtualLoadQueue.scala 210:36]
  assign io_enq_canAccept = validCount <= 5'he; // @[VirtualLoadQueue.scala 83:33]
  assign io_enq_resp_0_flag = enqPtrExt_0_flag; // @[VirtualLoadQueue.scala 162:20]
  assign io_enq_resp_0_value = enqPtrExt_0_value; // @[VirtualLoadQueue.scala 162:20]
  assign io_enq_resp_1_flag = 2'h3 == _GEN_27651 ? enqPtrExt_3_flag : _GEN_5557; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_enq_resp_1_value = 2'h3 == _GEN_27651 ? enqPtrExt_3_value : _GEN_5577; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_enq_resp_2_flag = 2'h3 == offset ? enqPtrExt_3_flag : _GEN_9213; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_enq_resp_2_value = 2'h3 == offset ? enqPtrExt_3_value : _GEN_9233; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_enq_resp_3_flag = 2'h3 == offset_1 ? enqPtrExt_3_flag : _GEN_12869; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_enq_resp_3_value = 2'h3 == offset_1 ? enqPtrExt_3_value : _GEN_12889; // @[VirtualLoadQueue.scala 150:{24,24}]
  assign io_ldWbPtr_flag = deqPtr_rflag; // @[VirtualLoadQueue.scala 130:10 73:20]
  assign io_ldWbPtr_value = deqPtr_rvalue; // @[VirtualLoadQueue.scala 130:10 73:20]
  assign io_lqEmpty = io_lqEmpty_REG; // @[VirtualLoadQueue.scala 135:14]
  assign io_lqDeq = io_lqDeq_REG; // @[VirtualLoadQueue.scala 132:12]
  assign io_lqCancelCnt = redirectCancelCount; // @[VirtualLoadQueue.scala 133:18]
  always @(posedge clock) begin
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h0 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_0_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_0_robIdx_flag <= _GEN_10755;
      end
    end else begin
      uop_0_robIdx_flag <= _GEN_10755;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h0 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_0_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_0_robIdx_value <= _GEN_10771;
      end
    end else begin
      uop_0_robIdx_value <= _GEN_10771;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h1 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_1_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_1_robIdx_flag <= _GEN_10756;
      end
    end else begin
      uop_1_robIdx_flag <= _GEN_10756;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h1 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_1_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_1_robIdx_value <= _GEN_10772;
      end
    end else begin
      uop_1_robIdx_value <= _GEN_10772;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h2 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_2_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_2_robIdx_flag <= _GEN_10757;
      end
    end else begin
      uop_2_robIdx_flag <= _GEN_10757;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h2 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_2_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_2_robIdx_value <= _GEN_10773;
      end
    end else begin
      uop_2_robIdx_value <= _GEN_10773;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h3 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_3_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_3_robIdx_flag <= _GEN_10758;
      end
    end else begin
      uop_3_robIdx_flag <= _GEN_10758;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h3 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_3_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_3_robIdx_value <= _GEN_10774;
      end
    end else begin
      uop_3_robIdx_value <= _GEN_10774;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h4 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_4_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_4_robIdx_flag <= _GEN_10759;
      end
    end else begin
      uop_4_robIdx_flag <= _GEN_10759;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h4 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_4_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_4_robIdx_value <= _GEN_10775;
      end
    end else begin
      uop_4_robIdx_value <= _GEN_10775;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h5 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_5_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_5_robIdx_flag <= _GEN_10760;
      end
    end else begin
      uop_5_robIdx_flag <= _GEN_10760;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h5 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_5_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_5_robIdx_value <= _GEN_10776;
      end
    end else begin
      uop_5_robIdx_value <= _GEN_10776;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h6 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_6_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_6_robIdx_flag <= _GEN_10761;
      end
    end else begin
      uop_6_robIdx_flag <= _GEN_10761;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h6 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_6_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_6_robIdx_value <= _GEN_10777;
      end
    end else begin
      uop_6_robIdx_value <= _GEN_10777;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h7 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_7_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_7_robIdx_flag <= _GEN_10762;
      end
    end else begin
      uop_7_robIdx_flag <= _GEN_10762;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h7 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_7_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_7_robIdx_value <= _GEN_10778;
      end
    end else begin
      uop_7_robIdx_value <= _GEN_10778;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h8 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_8_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_8_robIdx_flag <= _GEN_10763;
      end
    end else begin
      uop_8_robIdx_flag <= _GEN_10763;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h8 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_8_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_8_robIdx_value <= _GEN_10779;
      end
    end else begin
      uop_8_robIdx_value <= _GEN_10779;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h9 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_9_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_9_robIdx_flag <= _GEN_10764;
      end
    end else begin
      uop_9_robIdx_flag <= _GEN_10764;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'h9 == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_9_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_9_robIdx_value <= _GEN_10780;
      end
    end else begin
      uop_9_robIdx_value <= _GEN_10780;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'ha == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_10_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_10_robIdx_flag <= _GEN_10765;
      end
    end else begin
      uop_10_robIdx_flag <= _GEN_10765;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'ha == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_10_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_10_robIdx_value <= _GEN_10781;
      end
    end else begin
      uop_10_robIdx_value <= _GEN_10781;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hb == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_11_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_11_robIdx_flag <= _GEN_10766;
      end
    end else begin
      uop_11_robIdx_flag <= _GEN_10766;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hb == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_11_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_11_robIdx_value <= _GEN_10782;
      end
    end else begin
      uop_11_robIdx_value <= _GEN_10782;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hc == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_12_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_12_robIdx_flag <= _GEN_10767;
      end
    end else begin
      uop_12_robIdx_flag <= _GEN_10767;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hc == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_12_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_12_robIdx_value <= _GEN_10783;
      end
    end else begin
      uop_12_robIdx_value <= _GEN_10783;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hd == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_13_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_13_robIdx_flag <= _GEN_10768;
      end
    end else begin
      uop_13_robIdx_flag <= _GEN_10768;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hd == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_13_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_13_robIdx_value <= _GEN_10784;
      end
    end else begin
      uop_13_robIdx_value <= _GEN_10784;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'he == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_14_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_14_robIdx_flag <= _GEN_10769;
      end
    end else begin
      uop_14_robIdx_flag <= _GEN_10769;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'he == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_14_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_14_robIdx_value <= _GEN_10785;
      end
    end else begin
      uop_14_robIdx_value <= _GEN_10785;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hf == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_15_robIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_15_robIdx_flag <= _GEN_10770;
      end
    end else begin
      uop_15_robIdx_flag <= _GEN_10770;
    end
    if (io_enq_req_3_valid & ~enqCancel_3) begin // @[VirtualLoadQueue.scala 147:43]
      if (4'hf == io_enq_req_3_bits_lqIdx_value) begin // @[VirtualLoadQueue.scala 149:18]
        uop_15_robIdx_value <= io_enq_req_3_bits_robIdx_value; // @[VirtualLoadQueue.scala 149:18]
      end else begin
        uop_15_robIdx_value <= _GEN_10786;
      end
    end else begin
      uop_15_robIdx_value <= _GEN_10786;
    end
    lastCycleRedirect_valid <= io_redirect_valid; // @[VirtualLoadQueue.scala 79:34]
    lastLastCycleRedirect_valid <= lastCycleRedirect_valid; // @[VirtualLoadQueue.scala 80:38]
    lastNeedCancel_0 <= _needCancel_T_2 & allocated_0; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_1 <= _needCancel_T_6 & allocated_1; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_2 <= _needCancel_T_10 & allocated_2; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_3 <= _needCancel_T_14 & allocated_3; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_4 <= _needCancel_T_18 & allocated_4; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_5 <= _needCancel_T_22 & allocated_5; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_6 <= _needCancel_T_26 & allocated_6; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_7 <= _needCancel_T_30 & allocated_7; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_8 <= _needCancel_T_34 & allocated_8; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_9 <= _needCancel_T_38 & allocated_9; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_10 <= _needCancel_T_42 & allocated_10; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_11 <= _needCancel_T_46 & allocated_11; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_12 <= _needCancel_T_50 & allocated_12; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_13 <= _needCancel_T_54 & allocated_13; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_14 <= _needCancel_T_58 & allocated_14; // @[VirtualLoadQueue.scala 86:42]
    lastNeedCancel_15 <= _needCancel_T_62 & allocated_15; // @[VirtualLoadQueue.scala 86:42]
    lastEnqCancel_REG_0 <= io_enq_req_0_valid & enqCancel_0; // @[VirtualLoadQueue.scala 90:88]
    lastEnqCancel_REG_1 <= io_enq_req_1_valid & enqCancel_1; // @[VirtualLoadQueue.scala 90:88]
    lastEnqCancel_REG_2 <= io_enq_req_2_valid & enqCancel_2; // @[VirtualLoadQueue.scala 90:88]
    lastEnqCancel_REG_3 <= io_enq_req_3_valid & enqCancel_3; // @[VirtualLoadQueue.scala 90:88]
    lastCommitCount <= _commitCount_T_6[0] + _commitCount_T_6[1]; // @[Bitwise.scala 48:55]
    io_lqDeq_REG <= lastCommitCount; // @[VirtualLoadQueue.scala 132:22]
    io_lqEmpty_REG <= validCount == 5'h0; // @[VirtualLoadQueue.scala 135:36]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_0 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_0) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_0 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h0 == deqLookupVec_new_ptr_1_value) begin
        allocated_0 <= 1'h0;
      end else begin
        allocated_0 <= _GEN_14795;
      end
    end else begin
      allocated_0 <= _GEN_14795;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_1 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_1) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_1 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h1 == deqLookupVec_new_ptr_1_value) begin
        allocated_1 <= 1'h0;
      end else begin
        allocated_1 <= _GEN_14796;
      end
    end else begin
      allocated_1 <= _GEN_14796;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_2 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_2) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_2 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h2 == deqLookupVec_new_ptr_1_value) begin
        allocated_2 <= 1'h0;
      end else begin
        allocated_2 <= _GEN_14797;
      end
    end else begin
      allocated_2 <= _GEN_14797;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_3 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_3) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_3 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h3 == deqLookupVec_new_ptr_1_value) begin
        allocated_3 <= 1'h0;
      end else begin
        allocated_3 <= _GEN_14798;
      end
    end else begin
      allocated_3 <= _GEN_14798;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_4 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_4) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_4 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h4 == deqLookupVec_new_ptr_1_value) begin
        allocated_4 <= 1'h0;
      end else begin
        allocated_4 <= _GEN_14799;
      end
    end else begin
      allocated_4 <= _GEN_14799;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_5 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_5) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_5 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h5 == deqLookupVec_new_ptr_1_value) begin
        allocated_5 <= 1'h0;
      end else begin
        allocated_5 <= _GEN_14800;
      end
    end else begin
      allocated_5 <= _GEN_14800;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_6 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_6) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_6 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h6 == deqLookupVec_new_ptr_1_value) begin
        allocated_6 <= 1'h0;
      end else begin
        allocated_6 <= _GEN_14801;
      end
    end else begin
      allocated_6 <= _GEN_14801;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_7 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_7) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_7 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h7 == deqLookupVec_new_ptr_1_value) begin
        allocated_7 <= 1'h0;
      end else begin
        allocated_7 <= _GEN_14802;
      end
    end else begin
      allocated_7 <= _GEN_14802;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_8 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_8) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_8 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h8 == deqLookupVec_new_ptr_1_value) begin
        allocated_8 <= 1'h0;
      end else begin
        allocated_8 <= _GEN_14803;
      end
    end else begin
      allocated_8 <= _GEN_14803;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_9 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_9) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_9 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'h9 == deqLookupVec_new_ptr_1_value) begin
        allocated_9 <= 1'h0;
      end else begin
        allocated_9 <= _GEN_14804;
      end
    end else begin
      allocated_9 <= _GEN_14804;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_10 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_10) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_10 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'ha == deqLookupVec_new_ptr_1_value) begin
        allocated_10 <= 1'h0;
      end else begin
        allocated_10 <= _GEN_14805;
      end
    end else begin
      allocated_10 <= _GEN_14805;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_11 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_11) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_11 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'hb == deqLookupVec_new_ptr_1_value) begin
        allocated_11 <= 1'h0;
      end else begin
        allocated_11 <= _GEN_14806;
      end
    end else begin
      allocated_11 <= _GEN_14806;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_12 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_12) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_12 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'hc == deqLookupVec_new_ptr_1_value) begin
        allocated_12 <= 1'h0;
      end else begin
        allocated_12 <= _GEN_14807;
      end
    end else begin
      allocated_12 <= _GEN_14807;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_13 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_13) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_13 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'hd == deqLookupVec_new_ptr_1_value) begin
        allocated_13 <= 1'h0;
      end else begin
        allocated_13 <= _GEN_14808;
      end
    end else begin
      allocated_13 <= _GEN_14808;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_14 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_14) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_14 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'he == deqLookupVec_new_ptr_1_value) begin
        allocated_14 <= 1'h0;
      end else begin
        allocated_14 <= _GEN_14809;
      end
    end else begin
      allocated_14 <= _GEN_14809;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 180:26]
      allocated_15 <= 1'h0; // @[VirtualLoadQueue.scala 181:20]
    end else if (needCancel_15) begin // @[VirtualLoadQueue.scala 171:30]
      allocated_15 <= 1'h0; // @[VirtualLoadQueue.scala 172:{37,37}]
    end else if (commitCount > 2'h1) begin
      if (4'hf == deqLookupVec_new_ptr_1_value) begin
        allocated_15 <= 1'h0;
      end else begin
        allocated_15 <= _GEN_14810;
      end
    end else begin
      allocated_15 <= _GEN_14810;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_0 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h0 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_0 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_0 <= _GEN_19675;
        end
      end else begin
        addrvalid_0 <= _GEN_19675;
      end
    end else begin
      addrvalid_0 <= _GEN_19675;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_1 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h1 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_1 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_1 <= _GEN_19676;
        end
      end else begin
        addrvalid_1 <= _GEN_19676;
      end
    end else begin
      addrvalid_1 <= _GEN_19676;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_2 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h2 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_2 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_2 <= _GEN_19677;
        end
      end else begin
        addrvalid_2 <= _GEN_19677;
      end
    end else begin
      addrvalid_2 <= _GEN_19677;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_3 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h3 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_3 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_3 <= _GEN_19678;
        end
      end else begin
        addrvalid_3 <= _GEN_19678;
      end
    end else begin
      addrvalid_3 <= _GEN_19678;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_4 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h4 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_4 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_4 <= _GEN_19679;
        end
      end else begin
        addrvalid_4 <= _GEN_19679;
      end
    end else begin
      addrvalid_4 <= _GEN_19679;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_5 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h5 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_5 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_5 <= _GEN_19680;
        end
      end else begin
        addrvalid_5 <= _GEN_19680;
      end
    end else begin
      addrvalid_5 <= _GEN_19680;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_6 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h6 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_6 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_6 <= _GEN_19681;
        end
      end else begin
        addrvalid_6 <= _GEN_19681;
      end
    end else begin
      addrvalid_6 <= _GEN_19681;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_7 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h7 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_7 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_7 <= _GEN_19682;
        end
      end else begin
        addrvalid_7 <= _GEN_19682;
      end
    end else begin
      addrvalid_7 <= _GEN_19682;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_8 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h8 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_8 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_8 <= _GEN_19683;
        end
      end else begin
        addrvalid_8 <= _GEN_19683;
      end
    end else begin
      addrvalid_8 <= _GEN_19683;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_9 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h9 == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_9 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_9 <= _GEN_19684;
        end
      end else begin
        addrvalid_9 <= _GEN_19684;
      end
    end else begin
      addrvalid_9 <= _GEN_19684;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_10 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'ha == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_10 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_10 <= _GEN_19685;
        end
      end else begin
        addrvalid_10 <= _GEN_19685;
      end
    end else begin
      addrvalid_10 <= _GEN_19685;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_11 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hb == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_11 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_11 <= _GEN_19686;
        end
      end else begin
        addrvalid_11 <= _GEN_19686;
      end
    end else begin
      addrvalid_11 <= _GEN_19686;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_12 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hc == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_12 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_12 <= _GEN_19687;
        end
      end else begin
        addrvalid_12 <= _GEN_19687;
      end
    end else begin
      addrvalid_12 <= _GEN_19687;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_13 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hd == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_13 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_13 <= _GEN_19688;
        end
      end else begin
        addrvalid_13 <= _GEN_19688;
      end
    end else begin
      addrvalid_13 <= _GEN_19688;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_14 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'he == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_14 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_14 <= _GEN_19689;
        end
      end else begin
        addrvalid_14 <= _GEN_19689;
      end
    end else begin
      addrvalid_14 <= _GEN_19689;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      addrvalid_15 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 206:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hf == io_ldin_1_bits_uop_lqIdx_value) begin
          addrvalid_15 <= hasExceptions_1 | ~io_ldin_1_bits_tlbMiss;
        end else begin
          addrvalid_15 <= _GEN_19690;
        end
      end else begin
        addrvalid_15 <= _GEN_19690;
      end
    end else begin
      addrvalid_15 <= _GEN_19690;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_0 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h0 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_0 <= _datavalid_T_9;
        end else begin
          datavalid_0 <= _GEN_19691;
        end
      end else begin
        datavalid_0 <= _GEN_19691;
      end
    end else begin
      datavalid_0 <= _GEN_19691;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_1 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h1 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_1 <= _datavalid_T_9;
        end else begin
          datavalid_1 <= _GEN_19692;
        end
      end else begin
        datavalid_1 <= _GEN_19692;
      end
    end else begin
      datavalid_1 <= _GEN_19692;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_2 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h2 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_2 <= _datavalid_T_9;
        end else begin
          datavalid_2 <= _GEN_19693;
        end
      end else begin
        datavalid_2 <= _GEN_19693;
      end
    end else begin
      datavalid_2 <= _GEN_19693;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_3 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h3 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_3 <= _datavalid_T_9;
        end else begin
          datavalid_3 <= _GEN_19694;
        end
      end else begin
        datavalid_3 <= _GEN_19694;
      end
    end else begin
      datavalid_3 <= _GEN_19694;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_4 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h4 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_4 <= _datavalid_T_9;
        end else begin
          datavalid_4 <= _GEN_19695;
        end
      end else begin
        datavalid_4 <= _GEN_19695;
      end
    end else begin
      datavalid_4 <= _GEN_19695;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_5 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h5 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_5 <= _datavalid_T_9;
        end else begin
          datavalid_5 <= _GEN_19696;
        end
      end else begin
        datavalid_5 <= _GEN_19696;
      end
    end else begin
      datavalid_5 <= _GEN_19696;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_6 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h6 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_6 <= _datavalid_T_9;
        end else begin
          datavalid_6 <= _GEN_19697;
        end
      end else begin
        datavalid_6 <= _GEN_19697;
      end
    end else begin
      datavalid_6 <= _GEN_19697;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_7 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h7 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_7 <= _datavalid_T_9;
        end else begin
          datavalid_7 <= _GEN_19698;
        end
      end else begin
        datavalid_7 <= _GEN_19698;
      end
    end else begin
      datavalid_7 <= _GEN_19698;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_8 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h8 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_8 <= _datavalid_T_9;
        end else begin
          datavalid_8 <= _GEN_19699;
        end
      end else begin
        datavalid_8 <= _GEN_19699;
      end
    end else begin
      datavalid_8 <= _GEN_19699;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_9 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'h9 == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_9 <= _datavalid_T_9;
        end else begin
          datavalid_9 <= _GEN_19700;
        end
      end else begin
        datavalid_9 <= _GEN_19700;
      end
    end else begin
      datavalid_9 <= _GEN_19700;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_10 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'ha == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_10 <= _datavalid_T_9;
        end else begin
          datavalid_10 <= _GEN_19701;
        end
      end else begin
        datavalid_10 <= _GEN_19701;
      end
    end else begin
      datavalid_10 <= _GEN_19701;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_11 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hb == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_11 <= _datavalid_T_9;
        end else begin
          datavalid_11 <= _GEN_19702;
        end
      end else begin
        datavalid_11 <= _GEN_19702;
      end
    end else begin
      datavalid_11 <= _GEN_19702;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_12 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hc == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_12 <= _datavalid_T_9;
        end else begin
          datavalid_12 <= _GEN_19703;
        end
      end else begin
        datavalid_12 <= _GEN_19703;
      end
    end else begin
      datavalid_12 <= _GEN_19703;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_13 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hd == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_13 <= _datavalid_T_9;
        end else begin
          datavalid_13 <= _GEN_19704;
        end
      end else begin
        datavalid_13 <= _GEN_19704;
      end
    end else begin
      datavalid_13 <= _GEN_19704;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_14 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'he == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_14 <= _datavalid_T_9;
        end else begin
          datavalid_14 <= _GEN_19705;
        end
      end else begin
        datavalid_14 <= _GEN_19705;
      end
    end else begin
      datavalid_14 <= _GEN_19705;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 200:29]
      datavalid_15 <= 1'h0; // @[VirtualLoadQueue.scala 204:24 207:{32,32}]
    end else if (io_ldin_1_valid) begin
      if (~need_rep_1) begin
        if (4'hf == io_ldin_1_bits_uop_lqIdx_value) begin
          datavalid_15 <= _datavalid_T_9;
        end else begin
          datavalid_15 <= _GEN_19706;
        end
      end else begin
        datavalid_15 <= _GEN_19706;
      end
    end else begin
      datavalid_15 <= _GEN_19706;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_0_flag <= 1'h0; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_0_flag <= new_ptr_flag;
      end else begin
        enqPtrExt_0_flag <= new_ptr_4_flag;
      end
    end else begin
      enqPtrExt_0_flag <= new_ptr_8_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_0_value <= 4'h0; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_0_value <= flipped_new_ptr_value;
      end else begin
        enqPtrExt_0_value <= new_ptr_4_value;
      end
    end else begin
      enqPtrExt_0_value <= new_ptr_8_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_1_flag <= 1'h0; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_1_flag <= new_ptr_1_flag;
      end else begin
        enqPtrExt_1_flag <= new_ptr_5_flag;
      end
    end else begin
      enqPtrExt_1_flag <= new_ptr_9_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_1_value <= 4'h1; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_1_value <= flipped_new_ptr_1_value;
      end else begin
        enqPtrExt_1_value <= new_ptr_5_value;
      end
    end else begin
      enqPtrExt_1_value <= new_ptr_9_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_2_flag <= 1'h0; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_2_flag <= new_ptr_2_flag;
      end else begin
        enqPtrExt_2_flag <= new_ptr_6_flag;
      end
    end else begin
      enqPtrExt_2_flag <= new_ptr_10_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_2_value <= 4'h2; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_2_value <= flipped_new_ptr_2_value;
      end else begin
        enqPtrExt_2_value <= new_ptr_6_value;
      end
    end else begin
      enqPtrExt_2_value <= new_ptr_10_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_3_flag <= 1'h0; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_3_flag <= new_ptr_3_flag;
      end else begin
        enqPtrExt_3_flag <= new_ptr_7_flag;
      end
    end else begin
      enqPtrExt_3_flag <= new_ptr_11_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[VirtualLoadQueue.scala 106:51]
      enqPtrExt_3_value <= 4'h3; // @[VirtualLoadQueue.scala 100:22 102:22 98:38]
    end else if (_T_6) begin // @[VirtualLoadQueue.scala 109:19]
      if (lastLastCycleRedirect_valid) begin
        enqPtrExt_3_value <= flipped_new_ptr_3_value;
      end else begin
        enqPtrExt_3_value <= new_ptr_7_value;
      end
    end else begin
      enqPtrExt_3_value <= new_ptr_11_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      deqPtr_rflag <= 1'h0; // @[Reg.scala 29:22]
    end else if (deqPtrUpdateEna) begin // @[Reg.scala 28:20]
      deqPtr_rflag <= deqPtrNext_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      deqPtr_rvalue <= 4'h0; // @[Reg.scala 29:22]
    end else if (deqPtrUpdateEna) begin // @[Reg.scala 28:20]
      deqPtr_rvalue <= deqPtrNext_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      redirectCancelCount <= 5'h0; // @[Reg.scala 29:22]
    end else if (lastCycleRedirect_valid) begin // @[Reg.scala 28:20]
      redirectCancelCount <= _redirectCancelCount_T_1;
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
  uop_1_robIdx_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  uop_1_robIdx_value = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  uop_2_robIdx_flag = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  uop_2_robIdx_value = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  uop_3_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  uop_3_robIdx_value = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  uop_4_robIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  uop_4_robIdx_value = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  uop_5_robIdx_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  uop_5_robIdx_value = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  uop_6_robIdx_flag = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  uop_6_robIdx_value = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  uop_7_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  uop_7_robIdx_value = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  uop_8_robIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  uop_8_robIdx_value = _RAND_33[4:0];
  _RAND_34 = {1{`RANDOM}};
  uop_9_robIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  uop_9_robIdx_value = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  uop_10_robIdx_flag = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  uop_10_robIdx_value = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  uop_11_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  uop_11_robIdx_value = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  uop_12_robIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  uop_12_robIdx_value = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  uop_13_robIdx_flag = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  uop_13_robIdx_value = _RAND_43[4:0];
  _RAND_44 = {1{`RANDOM}};
  uop_14_robIdx_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  uop_14_robIdx_value = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  uop_15_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  uop_15_robIdx_value = _RAND_47[4:0];
  _RAND_48 = {1{`RANDOM}};
  addrvalid_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  addrvalid_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  addrvalid_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  addrvalid_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  addrvalid_4 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  addrvalid_5 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  addrvalid_6 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  addrvalid_7 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  addrvalid_8 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  addrvalid_9 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  addrvalid_10 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  addrvalid_11 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  addrvalid_12 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  addrvalid_13 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  addrvalid_14 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  addrvalid_15 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  datavalid_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  datavalid_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  datavalid_2 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  datavalid_3 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  datavalid_4 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  datavalid_5 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  datavalid_6 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  datavalid_7 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  datavalid_8 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  datavalid_9 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  datavalid_10 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  datavalid_11 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  datavalid_12 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  datavalid_13 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  datavalid_14 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  datavalid_15 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  enqPtrExt_0_flag = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  enqPtrExt_0_value = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  enqPtrExt_1_flag = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  enqPtrExt_1_value = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  enqPtrExt_2_flag = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  enqPtrExt_2_value = _RAND_85[3:0];
  _RAND_86 = {1{`RANDOM}};
  enqPtrExt_3_flag = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  enqPtrExt_3_value = _RAND_87[3:0];
  _RAND_88 = {1{`RANDOM}};
  lastCycleRedirect_valid = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  lastLastCycleRedirect_valid = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  deqPtr_rflag = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  deqPtr_rvalue = _RAND_91[3:0];
  _RAND_92 = {1{`RANDOM}};
  lastNeedCancel_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  lastNeedCancel_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  lastNeedCancel_2 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  lastNeedCancel_3 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  lastNeedCancel_4 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  lastNeedCancel_5 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  lastNeedCancel_6 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  lastNeedCancel_7 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  lastNeedCancel_8 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  lastNeedCancel_9 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  lastNeedCancel_10 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  lastNeedCancel_11 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  lastNeedCancel_12 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  lastNeedCancel_13 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  lastNeedCancel_14 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  lastNeedCancel_15 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  lastEnqCancel_REG_0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  lastEnqCancel_REG_1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  lastEnqCancel_REG_2 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  lastEnqCancel_REG_3 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  redirectCancelCount = _RAND_112[4:0];
  _RAND_113 = {1{`RANDOM}};
  lastCommitCount = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  io_lqDeq_REG = _RAND_114[1:0];
  _RAND_115 = {1{`RANDOM}};
  io_lqEmpty_REG = _RAND_115[0:0];
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
    addrvalid_12 = 1'h0;
  end
  if (reset) begin
    addrvalid_13 = 1'h0;
  end
  if (reset) begin
    addrvalid_14 = 1'h0;
  end
  if (reset) begin
    addrvalid_15 = 1'h0;
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
    datavalid_12 = 1'h0;
  end
  if (reset) begin
    datavalid_13 = 1'h0;
  end
  if (reset) begin
    datavalid_14 = 1'h0;
  end
  if (reset) begin
    datavalid_15 = 1'h0;
  end
  if (reset) begin
    enqPtrExt_0_flag = 1'h0;
  end
  if (reset) begin
    enqPtrExt_0_value = 4'h0;
  end
  if (reset) begin
    enqPtrExt_1_flag = 1'h0;
  end
  if (reset) begin
    enqPtrExt_1_value = 4'h1;
  end
  if (reset) begin
    enqPtrExt_2_flag = 1'h0;
  end
  if (reset) begin
    enqPtrExt_2_value = 4'h2;
  end
  if (reset) begin
    enqPtrExt_3_flag = 1'h0;
  end
  if (reset) begin
    enqPtrExt_3_value = 4'h3;
  end
  if (reset) begin
    deqPtr_rflag = 1'h0;
  end
  if (reset) begin
    deqPtr_rvalue = 4'h0;
  end
  if (reset) begin
    redirectCancelCount = 5'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

